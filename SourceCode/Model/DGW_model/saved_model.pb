/
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
«
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
num_elementsintÿÿÿÿÿÿÿÿÿ
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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ô-
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:
*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
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

lstm_45/lstm_cell_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_45/lstm_cell_45/kernel

/lstm_45/lstm_cell_45/kernel/Read/ReadVariableOpReadVariableOplstm_45/lstm_cell_45/kernel*
_output_shapes
:	*
dtype0
§
%lstm_45/lstm_cell_45/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_45/lstm_cell_45/recurrent_kernel
 
9lstm_45/lstm_cell_45/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_45/lstm_cell_45/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_45/lstm_cell_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_45/lstm_cell_45/bias

-lstm_45/lstm_cell_45/bias/Read/ReadVariableOpReadVariableOplstm_45/lstm_cell_45/bias*
_output_shapes	
:*
dtype0

lstm_46/lstm_cell_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*,
shared_namelstm_46/lstm_cell_46/kernel

/lstm_46/lstm_cell_46/kernel/Read/ReadVariableOpReadVariableOplstm_46/lstm_cell_46/kernel*
_output_shapes
:	dÈ*
dtype0
§
%lstm_46/lstm_cell_46/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*6
shared_name'%lstm_46/lstm_cell_46/recurrent_kernel
 
9lstm_46/lstm_cell_46/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_46/lstm_cell_46/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_46/lstm_cell_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È**
shared_namelstm_46/lstm_cell_46/bias

-lstm_46/lstm_cell_46/bias/Read/ReadVariableOpReadVariableOplstm_46/lstm_cell_46/bias*
_output_shapes	
:È*
dtype0

lstm_47/lstm_cell_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_47/lstm_cell_47/kernel

/lstm_47/lstm_cell_47/kernel/Read/ReadVariableOpReadVariableOplstm_47/lstm_cell_47/kernel*
_output_shapes

:2(*
dtype0
¦
%lstm_47/lstm_cell_47/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_47/lstm_cell_47/recurrent_kernel

9lstm_47/lstm_cell_47/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_47/lstm_cell_47/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_47/lstm_cell_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_47/lstm_cell_47/bias

-lstm_47/lstm_cell_47/bias/Read/ReadVariableOpReadVariableOplstm_47/lstm_cell_47/bias*
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
Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_15/kernel/m

*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_45/lstm_cell_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_45/lstm_cell_45/kernel/m

6Adam/lstm_45/lstm_cell_45/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_45/lstm_cell_45/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_45/lstm_cell_45/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_45/lstm_cell_45/recurrent_kernel/m
®
@Adam/lstm_45/lstm_cell_45/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_45/lstm_cell_45/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

 Adam/lstm_45/lstm_cell_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_45/lstm_cell_45/bias/m

4Adam/lstm_45/lstm_cell_45/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_45/lstm_cell_45/bias/m*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_46/lstm_cell_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_46/lstm_cell_46/kernel/m

6Adam/lstm_46/lstm_cell_46/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_46/lstm_cell_46/kernel/m*
_output_shapes
:	dÈ*
dtype0
µ
,Adam/lstm_46/lstm_cell_46/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m
®
@Adam/lstm_46/lstm_cell_46/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

 Adam/lstm_46/lstm_cell_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_46/lstm_cell_46/bias/m

4Adam/lstm_46/lstm_cell_46/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_46/lstm_cell_46/bias/m*
_output_shapes	
:È*
dtype0
 
"Adam/lstm_47/lstm_cell_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_47/lstm_cell_47/kernel/m

6Adam/lstm_47/lstm_cell_47/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_47/lstm_cell_47/kernel/m*
_output_shapes

:2(*
dtype0
´
,Adam/lstm_47/lstm_cell_47/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m
­
@Adam/lstm_47/lstm_cell_47/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

 Adam/lstm_47/lstm_cell_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_47/lstm_cell_47/bias/m

4Adam/lstm_47/lstm_cell_47/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_47/lstm_cell_47/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_15/kernel/v

*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_45/lstm_cell_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_45/lstm_cell_45/kernel/v

6Adam/lstm_45/lstm_cell_45/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_45/lstm_cell_45/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_45/lstm_cell_45/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_45/lstm_cell_45/recurrent_kernel/v
®
@Adam/lstm_45/lstm_cell_45/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_45/lstm_cell_45/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

 Adam/lstm_45/lstm_cell_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_45/lstm_cell_45/bias/v

4Adam/lstm_45/lstm_cell_45/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_45/lstm_cell_45/bias/v*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_46/lstm_cell_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_46/lstm_cell_46/kernel/v

6Adam/lstm_46/lstm_cell_46/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_46/lstm_cell_46/kernel/v*
_output_shapes
:	dÈ*
dtype0
µ
,Adam/lstm_46/lstm_cell_46/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v
®
@Adam/lstm_46/lstm_cell_46/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

 Adam/lstm_46/lstm_cell_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_46/lstm_cell_46/bias/v

4Adam/lstm_46/lstm_cell_46/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_46/lstm_cell_46/bias/v*
_output_shapes	
:È*
dtype0
 
"Adam/lstm_47/lstm_cell_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_47/lstm_cell_47/kernel/v

6Adam/lstm_47/lstm_cell_47/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_47/lstm_cell_47/kernel/v*
_output_shapes

:2(*
dtype0
´
,Adam/lstm_47/lstm_cell_47/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v
­
@Adam/lstm_47/lstm_cell_47/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

 Adam/lstm_47/lstm_cell_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_47/lstm_cell_47/bias/v

4Adam/lstm_47/lstm_cell_47/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_47/lstm_cell_47/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
©A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ä@
valueÚ@B×@ BÐ@
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
¹

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
¹

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
¹

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
VARIABLE_VALUEdense_15/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_15/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
WU
VARIABLE_VALUElstm_45/lstm_cell_45/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_45/lstm_cell_45/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_45/lstm_cell_45/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_46/lstm_cell_46/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_46/lstm_cell_46/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_46/lstm_cell_46/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_47/lstm_cell_47/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_47/lstm_cell_47/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_47/lstm_cell_47/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_45/lstm_cell_45/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_45/lstm_cell_45/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_45/lstm_cell_45/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_46/lstm_cell_46/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_46/lstm_cell_46/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_46/lstm_cell_46/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_47/lstm_cell_47/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_47/lstm_cell_47/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_47/lstm_cell_47/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_45/lstm_cell_45/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_45/lstm_cell_45/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_45/lstm_cell_45/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_46/lstm_cell_46/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_46/lstm_cell_46/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_46/lstm_cell_46/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_47/lstm_cell_47/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_47/lstm_cell_47/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_47/lstm_cell_47/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_45_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_45_inputlstm_45/lstm_cell_45/kernel%lstm_45/lstm_cell_45/recurrent_kernellstm_45/lstm_cell_45/biaslstm_46/lstm_cell_46/kernel%lstm_46/lstm_cell_46/recurrent_kernellstm_46/lstm_cell_46/biaslstm_47/lstm_cell_47/kernel%lstm_47/lstm_cell_47/recurrent_kernellstm_47/lstm_cell_47/biasdense_15/kerneldense_15/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1975025
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_45/lstm_cell_45/kernel/Read/ReadVariableOp9lstm_45/lstm_cell_45/recurrent_kernel/Read/ReadVariableOp-lstm_45/lstm_cell_45/bias/Read/ReadVariableOp/lstm_46/lstm_cell_46/kernel/Read/ReadVariableOp9lstm_46/lstm_cell_46/recurrent_kernel/Read/ReadVariableOp-lstm_46/lstm_cell_46/bias/Read/ReadVariableOp/lstm_47/lstm_cell_47/kernel/Read/ReadVariableOp9lstm_47/lstm_cell_47/recurrent_kernel/Read/ReadVariableOp-lstm_47/lstm_cell_47/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp6Adam/lstm_45/lstm_cell_45/kernel/m/Read/ReadVariableOp@Adam/lstm_45/lstm_cell_45/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_45/lstm_cell_45/bias/m/Read/ReadVariableOp6Adam/lstm_46/lstm_cell_46/kernel/m/Read/ReadVariableOp@Adam/lstm_46/lstm_cell_46/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_46/lstm_cell_46/bias/m/Read/ReadVariableOp6Adam/lstm_47/lstm_cell_47/kernel/m/Read/ReadVariableOp@Adam/lstm_47/lstm_cell_47/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_47/lstm_cell_47/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOp6Adam/lstm_45/lstm_cell_45/kernel/v/Read/ReadVariableOp@Adam/lstm_45/lstm_cell_45/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_45/lstm_cell_45/bias/v/Read/ReadVariableOp6Adam/lstm_46/lstm_cell_46/kernel/v/Read/ReadVariableOp@Adam/lstm_46/lstm_cell_46/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_46/lstm_cell_46/bias/v/Read/ReadVariableOp6Adam/lstm_47/lstm_cell_47/kernel/v/Read/ReadVariableOp@Adam/lstm_47/lstm_cell_47/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_47/lstm_cell_47/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_1978237
ã
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_15/kerneldense_15/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_45/lstm_cell_45/kernel%lstm_45/lstm_cell_45/recurrent_kernellstm_45/lstm_cell_45/biaslstm_46/lstm_cell_46/kernel%lstm_46/lstm_cell_46/recurrent_kernellstm_46/lstm_cell_46/biaslstm_47/lstm_cell_47/kernel%lstm_47/lstm_cell_47/recurrent_kernellstm_47/lstm_cell_47/biastotalcountAdam/dense_15/kernel/mAdam/dense_15/bias/m"Adam/lstm_45/lstm_cell_45/kernel/m,Adam/lstm_45/lstm_cell_45/recurrent_kernel/m Adam/lstm_45/lstm_cell_45/bias/m"Adam/lstm_46/lstm_cell_46/kernel/m,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m Adam/lstm_46/lstm_cell_46/bias/m"Adam/lstm_47/lstm_cell_47/kernel/m,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m Adam/lstm_47/lstm_cell_47/bias/mAdam/dense_15/kernel/vAdam/dense_15/bias/v"Adam/lstm_45/lstm_cell_45/kernel/v,Adam/lstm_45/lstm_cell_45/recurrent_kernel/v Adam/lstm_45/lstm_cell_45/bias/v"Adam/lstm_46/lstm_cell_46/kernel/v,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v Adam/lstm_46/lstm_cell_46/bias/v"Adam/lstm_47/lstm_cell_47/kernel/v,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v Adam/lstm_47/lstm_cell_47/bias/v*4
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_1978367Ú+
®8

D__inference_lstm_45_layer_call_and_return_conditional_losses_1973106

inputs(
lstm_cell_324_1973024:	(
lstm_cell_324_1973026:	d$
lstm_cell_324_1973028:	
identity¢%lstm_cell_324/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskþ
%lstm_cell_324/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_324_1973024lstm_cell_324_1973026lstm_cell_324_1973028*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1972978n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_324_1973024lstm_cell_324_1973026lstm_cell_324_1973028*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1973037*
condR
while_cond_1973036*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdv
NoOpNoOp&^lstm_cell_324/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_324/StatefulPartitionedCall%lstm_cell_324/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×

J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1972978

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates

¶
)__inference_lstm_45_layer_call_fn_1975966

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_1973964s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_1976178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1976178___redundant_placeholder05
1while_while_cond_1976178___redundant_placeholder15
1while_while_cond_1976178___redundant_placeholder25
1while_while_cond_1976178___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_1976651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1976651___redundant_placeholder05
1while_while_cond_1976651___redundant_placeholder15
1while_while_cond_1976651___redundant_placeholder25
1while_while_cond_1976651___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
Ñ8
Ú
while_body_1977081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_325_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_325_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_325_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_325_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_325_biasadd_readvariableop_resource:	È¢*while/lstm_cell_325/BiasAdd/ReadVariableOp¢)while/lstm_cell_325/MatMul/ReadVariableOp¢+while/lstm_cell_325/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_325/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_325_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_325/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_325_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_325/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_325/addAddV2$while/lstm_cell_325/MatMul:product:0&while/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_325_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_325/BiasAddBiasAddwhile/lstm_cell_325/add:z:02while/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_325/splitSplit,while/lstm_cell_325/split/split_dim:output:0$while/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_325/SigmoidSigmoid"while/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_1Sigmoid"while/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mulMul!while/lstm_cell_325/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_325/ReluRelu"while/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_1Mulwhile/lstm_cell_325/Sigmoid:y:0&while/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/add_1AddV2while/lstm_cell_325/mul:z:0while/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_2Sigmoid"while/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_325/Relu_1Reluwhile/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_2Mul!while/lstm_cell_325/Sigmoid_2:y:0(while/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_325/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_325/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_325/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_325/BiasAdd/ReadVariableOp*^while/lstm_cell_325/MatMul/ReadVariableOp,^while/lstm_cell_325/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_325_biasadd_readvariableop_resource5while_lstm_cell_325_biasadd_readvariableop_resource_0"n
4while_lstm_cell_325_matmul_1_readvariableop_resource6while_lstm_cell_325_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_325_matmul_readvariableop_resource4while_lstm_cell_325_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_325/BiasAdd/ReadVariableOp*while/lstm_cell_325/BiasAdd/ReadVariableOp2V
)while/lstm_cell_325/MatMul/ReadVariableOp)while/lstm_cell_325/MatMul/ReadVariableOp2Z
+while/lstm_cell_325/MatMul_1/ReadVariableOp+while/lstm_cell_325/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
Ä8
Ô
while_body_1974180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_326_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_326_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_326_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_326_matmul_readvariableop_resource:2(F
4while_lstm_cell_326_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_326_biasadd_readvariableop_resource:(¢*while/lstm_cell_326/BiasAdd/ReadVariableOp¢)while/lstm_cell_326/MatMul/ReadVariableOp¢+while/lstm_cell_326/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_326/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_326_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_326/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_326_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_326/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_326/addAddV2$while/lstm_cell_326/MatMul:product:0&while/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_326_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_326/BiasAddBiasAddwhile/lstm_cell_326/add:z:02while/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_326/splitSplit,while/lstm_cell_326/split/split_dim:output:0$while/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_326/SigmoidSigmoid"while/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_1Sigmoid"while/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mulMul!while/lstm_cell_326/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_326/ReluRelu"while/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_1Mulwhile/lstm_cell_326/Sigmoid:y:0&while/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/add_1AddV2while/lstm_cell_326/mul:z:0while/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_2Sigmoid"while/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_326/Relu_1Reluwhile/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_2Mul!while/lstm_cell_326/Sigmoid_2:y:0(while/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_326/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_326/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_326/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_326/BiasAdd/ReadVariableOp*^while/lstm_cell_326/MatMul/ReadVariableOp,^while/lstm_cell_326/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_326_biasadd_readvariableop_resource5while_lstm_cell_326_biasadd_readvariableop_resource_0"n
4while_lstm_cell_326_matmul_1_readvariableop_resource6while_lstm_cell_326_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_326_matmul_readvariableop_resource4while_lstm_cell_326_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_326/BiasAdd/ReadVariableOp*while/lstm_cell_326/BiasAdd/ReadVariableOp2V
)while/lstm_cell_326/MatMul/ReadVariableOp)while/lstm_cell_326/MatMul/ReadVariableOp2Z
+while/lstm_cell_326/MatMul_1/ReadVariableOp+while/lstm_cell_326/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 

ë
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974878

inputs"
lstm_45_1974851:	"
lstm_45_1974853:	d
lstm_45_1974855:	"
lstm_46_1974858:	dÈ"
lstm_46_1974860:	2È
lstm_46_1974862:	È!
lstm_47_1974865:2(!
lstm_47_1974867:
(
lstm_47_1974869:("
dense_15_1974872:

dense_15_1974874:
identity¢ dense_15/StatefulPartitionedCall¢lstm_45/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall
lstm_45/StatefulPartitionedCallStatefulPartitionedCallinputslstm_45_1974851lstm_45_1974853lstm_45_1974855*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_1974810¨
lstm_46/StatefulPartitionedCallStatefulPartitionedCall(lstm_45/StatefulPartitionedCall:output:0lstm_46_1974858lstm_46_1974860lstm_46_1974862*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_46_layer_call_and_return_conditional_losses_1974645¤
lstm_47/StatefulPartitionedCallStatefulPartitionedCall(lstm_46/StatefulPartitionedCall:output:0lstm_47_1974865lstm_47_1974867lstm_47_1974869*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_47_layer_call_and_return_conditional_losses_1974480
 dense_15/StatefulPartitionedCallStatefulPartitionedCall(lstm_47/StatefulPartitionedCall:output:0dense_15_1974872dense_15_1974874*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_1974282x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_15/StatefulPartitionedCall ^lstm_45/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2B
lstm_45/StatefulPartitionedCalllstm_45/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

(sequential_15_lstm_45_while_cond_1972396H
Dsequential_15_lstm_45_while_sequential_15_lstm_45_while_loop_counterN
Jsequential_15_lstm_45_while_sequential_15_lstm_45_while_maximum_iterations+
'sequential_15_lstm_45_while_placeholder-
)sequential_15_lstm_45_while_placeholder_1-
)sequential_15_lstm_45_while_placeholder_2-
)sequential_15_lstm_45_while_placeholder_3J
Fsequential_15_lstm_45_while_less_sequential_15_lstm_45_strided_slice_1a
]sequential_15_lstm_45_while_sequential_15_lstm_45_while_cond_1972396___redundant_placeholder0a
]sequential_15_lstm_45_while_sequential_15_lstm_45_while_cond_1972396___redundant_placeholder1a
]sequential_15_lstm_45_while_sequential_15_lstm_45_while_cond_1972396___redundant_placeholder2a
]sequential_15_lstm_45_while_sequential_15_lstm_45_while_cond_1972396___redundant_placeholder3(
$sequential_15_lstm_45_while_identity
º
 sequential_15/lstm_45/while/LessLess'sequential_15_lstm_45_while_placeholderFsequential_15_lstm_45_while_less_sequential_15_lstm_45_strided_slice_1*
T0*
_output_shapes
: w
$sequential_15/lstm_45/while/IdentityIdentity$sequential_15/lstm_45/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_15_lstm_45_while_identity-sequential_15/lstm_45/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
Ñ8
Ú
while_body_1974030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_325_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_325_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_325_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_325_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_325_biasadd_readvariableop_resource:	È¢*while/lstm_cell_325/BiasAdd/ReadVariableOp¢)while/lstm_cell_325/MatMul/ReadVariableOp¢+while/lstm_cell_325/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_325/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_325_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_325/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_325_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_325/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_325/addAddV2$while/lstm_cell_325/MatMul:product:0&while/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_325_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_325/BiasAddBiasAddwhile/lstm_cell_325/add:z:02while/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_325/splitSplit,while/lstm_cell_325/split/split_dim:output:0$while/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_325/SigmoidSigmoid"while/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_1Sigmoid"while/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mulMul!while/lstm_cell_325/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_325/ReluRelu"while/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_1Mulwhile/lstm_cell_325/Sigmoid:y:0&while/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/add_1AddV2while/lstm_cell_325/mul:z:0while/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_2Sigmoid"while/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_325/Relu_1Reluwhile/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_2Mul!while/lstm_cell_325/Sigmoid_2:y:0(while/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_325/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_325/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_325/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_325/BiasAdd/ReadVariableOp*^while/lstm_cell_325/MatMul/ReadVariableOp,^while/lstm_cell_325/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_325_biasadd_readvariableop_resource5while_lstm_cell_325_biasadd_readvariableop_resource_0"n
4while_lstm_cell_325_matmul_1_readvariableop_resource6while_lstm_cell_325_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_325_matmul_readvariableop_resource4while_lstm_cell_325_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_325/BiasAdd/ReadVariableOp*while/lstm_cell_325/BiasAdd/ReadVariableOp2V
)while/lstm_cell_325/MatMul/ReadVariableOp)while/lstm_cell_325/MatMul/ReadVariableOp2Z
+while/lstm_cell_325/MatMul_1/ReadVariableOp+while/lstm_cell_325/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_1976321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1976321___redundant_placeholder05
1while_while_cond_1976321___redundant_placeholder15
1while_while_cond_1976321___redundant_placeholder25
1while_while_cond_1976321___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:


è
lstm_47_while_cond_1975842,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3.
*lstm_47_while_less_lstm_47_strided_slice_1E
Alstm_47_while_lstm_47_while_cond_1975842___redundant_placeholder0E
Alstm_47_while_lstm_47_while_cond_1975842___redundant_placeholder1E
Alstm_47_while_lstm_47_while_cond_1975842___redundant_placeholder2E
Alstm_47_while_lstm_47_while_cond_1975842___redundant_placeholder3
lstm_47_while_identity

lstm_47/while/LessLesslstm_47_while_placeholder*lstm_47_while_less_lstm_47_strided_slice_1*
T0*
_output_shapes
: [
lstm_47/while/IdentityIdentitylstm_47/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_47_while_identitylstm_47/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
Õ

J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1978094

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
º
È
while_cond_1974179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1974179___redundant_placeholder05
1while_while_cond_1974179___redundant_placeholder15
1while_while_cond_1974179___redundant_placeholder25
1while_while_cond_1974179___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_1977410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1977410___redundant_placeholder05
1while_while_cond_1977410___redundant_placeholder15
1while_while_cond_1977410___redundant_placeholder25
1while_while_cond_1977410___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
þ

J__inference_sequential_15_layer_call_and_return_conditional_losses_1975933

inputsG
4lstm_45_lstm_cell_324_matmul_readvariableop_resource:	I
6lstm_45_lstm_cell_324_matmul_1_readvariableop_resource:	dD
5lstm_45_lstm_cell_324_biasadd_readvariableop_resource:	G
4lstm_46_lstm_cell_325_matmul_readvariableop_resource:	dÈI
6lstm_46_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈD
5lstm_46_lstm_cell_325_biasadd_readvariableop_resource:	ÈF
4lstm_47_lstm_cell_326_matmul_readvariableop_resource:2(H
6lstm_47_lstm_cell_326_matmul_1_readvariableop_resource:
(C
5lstm_47_lstm_cell_326_biasadd_readvariableop_resource:(9
'dense_15_matmul_readvariableop_resource:
6
(dense_15_biasadd_readvariableop_resource:
identity¢dense_15/BiasAdd/ReadVariableOp¢dense_15/MatMul/ReadVariableOp¢,lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp¢+lstm_45/lstm_cell_324/MatMul/ReadVariableOp¢-lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp¢lstm_45/while¢,lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp¢+lstm_46/lstm_cell_325/MatMul/ReadVariableOp¢-lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp¢lstm_46/while¢,lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp¢+lstm_47/lstm_cell_326/MatMul/ReadVariableOp¢-lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp¢lstm_47/whileC
lstm_45/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_45/strided_sliceStridedSlicelstm_45/Shape:output:0$lstm_45/strided_slice/stack:output:0&lstm_45/strided_slice/stack_1:output:0&lstm_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_45/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_45/zeros/packedPacklstm_45/strided_slice:output:0lstm_45/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_45/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_45/zerosFilllstm_45/zeros/packed:output:0lstm_45/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_45/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_45/zeros_1/packedPacklstm_45/strided_slice:output:0!lstm_45/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_45/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_45/zeros_1Filllstm_45/zeros_1/packed:output:0lstm_45/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_45/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_45/transpose	Transposeinputslstm_45/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_45/Shape_1Shapelstm_45/transpose:y:0*
T0*
_output_shapes
:g
lstm_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_45/strided_slice_1StridedSlicelstm_45/Shape_1:output:0&lstm_45/strided_slice_1/stack:output:0(lstm_45/strided_slice_1/stack_1:output:0(lstm_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_45/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_45/TensorArrayV2TensorListReserve,lstm_45/TensorArrayV2/element_shape:output:0 lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_45/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_45/transpose:y:0Flstm_45/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_45/strided_slice_2StridedSlicelstm_45/transpose:y:0&lstm_45/strided_slice_2/stack:output:0(lstm_45/strided_slice_2/stack_1:output:0(lstm_45/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¡
+lstm_45/lstm_cell_324/MatMul/ReadVariableOpReadVariableOp4lstm_45_lstm_cell_324_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
lstm_45/lstm_cell_324/MatMulMatMul lstm_45/strided_slice_2:output:03lstm_45/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-lstm_45/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp6lstm_45_lstm_cell_324_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0ª
lstm_45/lstm_cell_324/MatMul_1MatMullstm_45/zeros:output:05lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
lstm_45/lstm_cell_324/addAddV2&lstm_45/lstm_cell_324/MatMul:product:0(lstm_45/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,lstm_45/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp5lstm_45_lstm_cell_324_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_45/lstm_cell_324/BiasAddBiasAddlstm_45/lstm_cell_324/add:z:04lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%lstm_45/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_45/lstm_cell_324/splitSplit.lstm_45/lstm_cell_324/split/split_dim:output:0&lstm_45/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
lstm_45/lstm_cell_324/SigmoidSigmoid$lstm_45/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_45/lstm_cell_324/Sigmoid_1Sigmoid$lstm_45/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_45/lstm_cell_324/mulMul#lstm_45/lstm_cell_324/Sigmoid_1:y:0lstm_45/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
lstm_45/lstm_cell_324/ReluRelu$lstm_45/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
lstm_45/lstm_cell_324/mul_1Mul!lstm_45/lstm_cell_324/Sigmoid:y:0(lstm_45/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_45/lstm_cell_324/add_1AddV2lstm_45/lstm_cell_324/mul:z:0lstm_45/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_45/lstm_cell_324/Sigmoid_2Sigmoid$lstm_45/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_45/lstm_cell_324/Relu_1Relulstm_45/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
lstm_45/lstm_cell_324/mul_2Mul#lstm_45/lstm_cell_324/Sigmoid_2:y:0*lstm_45/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_45/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ð
lstm_45/TensorArrayV2_1TensorListReserve.lstm_45/TensorArrayV2_1/element_shape:output:0 lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_45/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_45/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_45/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_45/whileWhile#lstm_45/while/loop_counter:output:0)lstm_45/while/maximum_iterations:output:0lstm_45/time:output:0 lstm_45/TensorArrayV2_1:handle:0lstm_45/zeros:output:0lstm_45/zeros_1:output:0 lstm_45/strided_slice_1:output:0?lstm_45/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_45_lstm_cell_324_matmul_readvariableop_resource6lstm_45_lstm_cell_324_matmul_1_readvariableop_resource5lstm_45_lstm_cell_324_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_45_while_body_1975565*&
condR
lstm_45_while_cond_1975564*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_45/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ú
*lstm_45/TensorArrayV2Stack/TensorListStackTensorListStacklstm_45/while:output:3Alstm_45/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0p
lstm_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_45/strided_slice_3StridedSlice3lstm_45/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_45/strided_slice_3/stack:output:0(lstm_45/strided_slice_3/stack_1:output:0(lstm_45/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_45/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_45/transpose_1	Transpose3lstm_45/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_45/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_45/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_46/ShapeShapelstm_45/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_46/strided_sliceStridedSlicelstm_46/Shape:output:0$lstm_46/strided_slice/stack:output:0&lstm_46/strided_slice/stack_1:output:0&lstm_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_46/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros/packedPacklstm_46/strided_slice:output:0lstm_46/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_46/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_46/zerosFilllstm_46/zeros/packed:output:0lstm_46/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_46/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros_1/packedPacklstm_46/strided_slice:output:0!lstm_46/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_46/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_46/zeros_1Filllstm_46/zeros_1/packed:output:0lstm_46/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_46/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_46/transpose	Transposelstm_45/transpose_1:y:0lstm_46/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_46/Shape_1Shapelstm_46/transpose:y:0*
T0*
_output_shapes
:g
lstm_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_46/strided_slice_1StridedSlicelstm_46/Shape_1:output:0&lstm_46/strided_slice_1/stack:output:0(lstm_46/strided_slice_1/stack_1:output:0(lstm_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_46/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_46/TensorArrayV2TensorListReserve,lstm_46/TensorArrayV2/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_46/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_46/transpose:y:0Flstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_46/strided_slice_2StridedSlicelstm_46/transpose:y:0&lstm_46/strided_slice_2/stack:output:0(lstm_46/strided_slice_2/stack_1:output:0(lstm_46/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask¡
+lstm_46/lstm_cell_325/MatMul/ReadVariableOpReadVariableOp4lstm_46_lstm_cell_325_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0°
lstm_46/lstm_cell_325/MatMulMatMul lstm_46/strided_slice_2:output:03lstm_46/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¥
-lstm_46/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp6lstm_46_lstm_cell_325_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0ª
lstm_46/lstm_cell_325/MatMul_1MatMullstm_46/zeros:output:05lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ§
lstm_46/lstm_cell_325/addAddV2&lstm_46/lstm_cell_325/MatMul:product:0(lstm_46/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,lstm_46/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp5lstm_46_lstm_cell_325_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_46/lstm_cell_325/BiasAddBiasAddlstm_46/lstm_cell_325/add:z:04lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈg
%lstm_46/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_46/lstm_cell_325/splitSplit.lstm_46/lstm_cell_325/split/split_dim:output:0&lstm_46/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
lstm_46/lstm_cell_325/SigmoidSigmoid$lstm_46/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_325/Sigmoid_1Sigmoid$lstm_46/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_325/mulMul#lstm_46/lstm_cell_325/Sigmoid_1:y:0lstm_46/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
lstm_46/lstm_cell_325/ReluRelu$lstm_46/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
lstm_46/lstm_cell_325/mul_1Mul!lstm_46/lstm_cell_325/Sigmoid:y:0(lstm_46/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_325/add_1AddV2lstm_46/lstm_cell_325/mul:z:0lstm_46/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_325/Sigmoid_2Sigmoid$lstm_46/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_46/lstm_cell_325/Relu_1Relulstm_46/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
lstm_46/lstm_cell_325/mul_2Mul#lstm_46/lstm_cell_325/Sigmoid_2:y:0*lstm_46/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_46/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_46/TensorArrayV2_1TensorListReserve.lstm_46/TensorArrayV2_1/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_46/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_46/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_46/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_46/whileWhile#lstm_46/while/loop_counter:output:0)lstm_46/while/maximum_iterations:output:0lstm_46/time:output:0 lstm_46/TensorArrayV2_1:handle:0lstm_46/zeros:output:0lstm_46/zeros_1:output:0 lstm_46/strided_slice_1:output:0?lstm_46/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_46_lstm_cell_325_matmul_readvariableop_resource6lstm_46_lstm_cell_325_matmul_1_readvariableop_resource5lstm_46_lstm_cell_325_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_46_while_body_1975704*&
condR
lstm_46_while_cond_1975703*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_46/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_46/TensorArrayV2Stack/TensorListStackTensorListStacklstm_46/while:output:3Alstm_46/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_46/strided_slice_3StridedSlice3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_46/strided_slice_3/stack:output:0(lstm_46/strided_slice_3/stack_1:output:0(lstm_46/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_46/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_46/transpose_1	Transpose3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_46/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_46/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_47/ShapeShapelstm_46/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_47/strided_sliceStridedSlicelstm_47/Shape:output:0$lstm_47/strided_slice/stack:output:0&lstm_47/strided_slice/stack_1:output:0&lstm_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_47/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_47/zeros/packedPacklstm_47/strided_slice:output:0lstm_47/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_47/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_47/zerosFilllstm_47/zeros/packed:output:0lstm_47/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
lstm_47/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_47/zeros_1/packedPacklstm_47/strided_slice:output:0!lstm_47/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_47/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_47/zeros_1Filllstm_47/zeros_1/packed:output:0lstm_47/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_47/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_47/transpose	Transposelstm_46/transpose_1:y:0lstm_47/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
lstm_47/Shape_1Shapelstm_47/transpose:y:0*
T0*
_output_shapes
:g
lstm_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_47/strided_slice_1StridedSlicelstm_47/Shape_1:output:0&lstm_47/strided_slice_1/stack:output:0(lstm_47/strided_slice_1/stack_1:output:0(lstm_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_47/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_47/TensorArrayV2TensorListReserve,lstm_47/TensorArrayV2/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ø
/lstm_47/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_47/transpose:y:0Flstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_47/strided_slice_2StridedSlicelstm_47/transpose:y:0&lstm_47/strided_slice_2/stack:output:0(lstm_47/strided_slice_2/stack_1:output:0(lstm_47/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask 
+lstm_47/lstm_cell_326/MatMul/ReadVariableOpReadVariableOp4lstm_47_lstm_cell_326_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¯
lstm_47/lstm_cell_326/MatMulMatMul lstm_47/strided_slice_2:output:03lstm_47/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
-lstm_47/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp6lstm_47_lstm_cell_326_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0©
lstm_47/lstm_cell_326/MatMul_1MatMullstm_47/zeros:output:05lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
lstm_47/lstm_cell_326/addAddV2&lstm_47/lstm_cell_326/MatMul:product:0(lstm_47/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,lstm_47/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp5lstm_47_lstm_cell_326_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¯
lstm_47/lstm_cell_326/BiasAddBiasAddlstm_47/lstm_cell_326/add:z:04lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(g
%lstm_47/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_47/lstm_cell_326/splitSplit.lstm_47/lstm_cell_326/split/split_dim:output:0&lstm_47/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
lstm_47/lstm_cell_326/SigmoidSigmoid$lstm_47/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_47/lstm_cell_326/Sigmoid_1Sigmoid$lstm_47/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_47/lstm_cell_326/mulMul#lstm_47/lstm_cell_326/Sigmoid_1:y:0lstm_47/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
lstm_47/lstm_cell_326/ReluRelu$lstm_47/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
lstm_47/lstm_cell_326/mul_1Mul!lstm_47/lstm_cell_326/Sigmoid:y:0(lstm_47/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_47/lstm_cell_326/add_1AddV2lstm_47/lstm_cell_326/mul:z:0lstm_47/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_47/lstm_cell_326/Sigmoid_2Sigmoid$lstm_47/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_47/lstm_cell_326/Relu_1Relulstm_47/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
lstm_47/lstm_cell_326/mul_2Mul#lstm_47/lstm_cell_326/Sigmoid_2:y:0*lstm_47/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
%lstm_47/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ð
lstm_47/TensorArrayV2_1TensorListReserve.lstm_47/TensorArrayV2_1/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_47/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_47/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_47/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_47/whileWhile#lstm_47/while/loop_counter:output:0)lstm_47/while/maximum_iterations:output:0lstm_47/time:output:0 lstm_47/TensorArrayV2_1:handle:0lstm_47/zeros:output:0lstm_47/zeros_1:output:0 lstm_47/strided_slice_1:output:0?lstm_47/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_47_lstm_cell_326_matmul_readvariableop_resource6lstm_47_lstm_cell_326_matmul_1_readvariableop_resource5lstm_47_lstm_cell_326_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_47_while_body_1975843*&
condR
lstm_47_while_cond_1975842*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
8lstm_47/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
*lstm_47/TensorArrayV2Stack/TensorListStackTensorListStacklstm_47/while:output:3Alstm_47/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0p
lstm_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_47/strided_slice_3StridedSlice3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_47/strided_slice_3/stack:output:0(lstm_47/strided_slice_3/stack_1:output:0(lstm_47/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskm
lstm_47/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_47/transpose_1	Transpose3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_47/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
lstm_47/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_15/MatMulMatMul lstm_47/strided_slice_3:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_15/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp-^lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp,^lstm_45/lstm_cell_324/MatMul/ReadVariableOp.^lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp^lstm_45/while-^lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp,^lstm_46/lstm_cell_325/MatMul/ReadVariableOp.^lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp^lstm_46/while-^lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp,^lstm_47/lstm_cell_326/MatMul/ReadVariableOp.^lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp^lstm_47/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2\
,lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp,lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp2Z
+lstm_45/lstm_cell_324/MatMul/ReadVariableOp+lstm_45/lstm_cell_324/MatMul/ReadVariableOp2^
-lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp-lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp2
lstm_45/whilelstm_45/while2\
,lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp,lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp2Z
+lstm_46/lstm_cell_325/MatMul/ReadVariableOp+lstm_46/lstm_cell_325/MatMul/ReadVariableOp2^
-lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp-lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp2
lstm_46/whilelstm_46/while2\
,lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp,lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp2Z
+lstm_47/lstm_cell_326/MatMul/ReadVariableOp+lstm_47/lstm_cell_326/MatMul/ReadVariableOp2^
-lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp-lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp2
lstm_47/whilelstm_47/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
¸
)__inference_lstm_46_layer_call_fn_1976560
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_46_layer_call_and_return_conditional_losses_1973265|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
º
È
while_cond_1974029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1974029___redundant_placeholder05
1while_while_cond_1974029___redundant_placeholder15
1while_while_cond_1974029___redundant_placeholder25
1while_while_cond_1974029___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_1977080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1977080___redundant_placeholder05
1while_while_cond_1977080___redundant_placeholder15
1while_while_cond_1977080___redundant_placeholder25
1while_while_cond_1977080___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
Ä8
Ô
while_body_1974396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_326_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_326_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_326_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_326_matmul_readvariableop_resource:2(F
4while_lstm_cell_326_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_326_biasadd_readvariableop_resource:(¢*while/lstm_cell_326/BiasAdd/ReadVariableOp¢)while/lstm_cell_326/MatMul/ReadVariableOp¢+while/lstm_cell_326/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_326/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_326_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_326/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_326_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_326/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_326/addAddV2$while/lstm_cell_326/MatMul:product:0&while/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_326_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_326/BiasAddBiasAddwhile/lstm_cell_326/add:z:02while/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_326/splitSplit,while/lstm_cell_326/split/split_dim:output:0$while/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_326/SigmoidSigmoid"while/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_1Sigmoid"while/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mulMul!while/lstm_cell_326/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_326/ReluRelu"while/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_1Mulwhile/lstm_cell_326/Sigmoid:y:0&while/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/add_1AddV2while/lstm_cell_326/mul:z:0while/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_2Sigmoid"while/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_326/Relu_1Reluwhile/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_2Mul!while/lstm_cell_326/Sigmoid_2:y:0(while/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_326/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_326/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_326/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_326/BiasAdd/ReadVariableOp*^while/lstm_cell_326/MatMul/ReadVariableOp,^while/lstm_cell_326/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_326_biasadd_readvariableop_resource5while_lstm_cell_326_biasadd_readvariableop_resource_0"n
4while_lstm_cell_326_matmul_1_readvariableop_resource6while_lstm_cell_326_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_326_matmul_readvariableop_resource4while_lstm_cell_326_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_326/BiasAdd/ReadVariableOp*while/lstm_cell_326/BiasAdd/ReadVariableOp2V
)while/lstm_cell_326/MatMul/ReadVariableOp)while/lstm_cell_326/MatMul/ReadVariableOp2Z
+while/lstm_cell_326/MatMul_1/ReadVariableOp+while/lstm_cell_326/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 


è
lstm_47_while_cond_1975415,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3.
*lstm_47_while_less_lstm_47_strided_slice_1E
Alstm_47_while_lstm_47_while_cond_1975415___redundant_placeholder0E
Alstm_47_while_lstm_47_while_cond_1975415___redundant_placeholder1E
Alstm_47_while_lstm_47_while_cond_1975415___redundant_placeholder2E
Alstm_47_while_lstm_47_while_cond_1975415___redundant_placeholder3
lstm_47_while_identity

lstm_47/while/LessLesslstm_47_while_placeholder*lstm_47_while_less_lstm_47_strided_slice_1*
T0*
_output_shapes
: [
lstm_47/while/IdentityIdentitylstm_47/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_47_while_identitylstm_47/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
Ä8
Ô
while_body_1977697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_326_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_326_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_326_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_326_matmul_readvariableop_resource:2(F
4while_lstm_cell_326_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_326_biasadd_readvariableop_resource:(¢*while/lstm_cell_326/BiasAdd/ReadVariableOp¢)while/lstm_cell_326/MatMul/ReadVariableOp¢+while/lstm_cell_326/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_326/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_326_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_326/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_326_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_326/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_326/addAddV2$while/lstm_cell_326/MatMul:product:0&while/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_326_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_326/BiasAddBiasAddwhile/lstm_cell_326/add:z:02while/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_326/splitSplit,while/lstm_cell_326/split/split_dim:output:0$while/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_326/SigmoidSigmoid"while/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_1Sigmoid"while/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mulMul!while/lstm_cell_326/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_326/ReluRelu"while/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_1Mulwhile/lstm_cell_326/Sigmoid:y:0&while/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/add_1AddV2while/lstm_cell_326/mul:z:0while/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_2Sigmoid"while/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_326/Relu_1Reluwhile/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_2Mul!while/lstm_cell_326/Sigmoid_2:y:0(while/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_326/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_326/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_326/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_326/BiasAdd/ReadVariableOp*^while/lstm_cell_326/MatMul/ReadVariableOp,^while/lstm_cell_326/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_326_biasadd_readvariableop_resource5while_lstm_cell_326_biasadd_readvariableop_resource_0"n
4while_lstm_cell_326_matmul_1_readvariableop_resource6while_lstm_cell_326_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_326_matmul_readvariableop_resource4while_lstm_cell_326_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_326/BiasAdd/ReadVariableOp*while/lstm_cell_326/BiasAdd/ReadVariableOp2V
)while/lstm_cell_326/MatMul/ReadVariableOp)while/lstm_cell_326/MatMul/ReadVariableOp2Z
+while/lstm_cell_326/MatMul_1/ReadVariableOp+while/lstm_cell_326/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
K
¤
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976263
inputs_0?
,lstm_cell_324_matmul_readvariableop_resource:	A
.lstm_cell_324_matmul_1_readvariableop_resource:	d<
-lstm_cell_324_biasadd_readvariableop_resource:	
identity¢$lstm_cell_324/BiasAdd/ReadVariableOp¢#lstm_cell_324/MatMul/ReadVariableOp¢%lstm_cell_324/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_324/MatMul/ReadVariableOpReadVariableOp,lstm_cell_324_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_324/MatMulMatMulstrided_slice_2:output:0+lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_324_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_324/MatMul_1MatMulzeros:output:0-lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_324/addAddV2lstm_cell_324/MatMul:product:0 lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_324_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_324/BiasAddBiasAddlstm_cell_324/add:z:0,lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_324/splitSplit&lstm_cell_324/split/split_dim:output:0lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_324/SigmoidSigmoidlstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_1Sigmoidlstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_324/mulMullstm_cell_324/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_324/ReluRelulstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_1Mullstm_cell_324/Sigmoid:y:0 lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_324/add_1AddV2lstm_cell_324/mul:z:0lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_2Sigmoidlstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_324/Relu_1Relulstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_2Mullstm_cell_324/Sigmoid_2:y:0"lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_324_matmul_readvariableop_resource.lstm_cell_324_matmul_1_readvariableop_resource-lstm_cell_324_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1976179*
condR
while_cond_1976178*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_324/BiasAdd/ReadVariableOp$^lstm_cell_324/MatMul/ReadVariableOp&^lstm_cell_324/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_324/BiasAdd/ReadVariableOp$lstm_cell_324/BiasAdd/ReadVariableOp2J
#lstm_cell_324/MatMul/ReadVariableOp#lstm_cell_324/MatMul/ReadVariableOp2N
%lstm_cell_324/MatMul_1/ReadVariableOp%lstm_cell_324/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ü


/__inference_sequential_15_layer_call_fn_1975052

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
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
áJ
¢
D__inference_lstm_45_layer_call_and_return_conditional_losses_1973964

inputs?
,lstm_cell_324_matmul_readvariableop_resource:	A
.lstm_cell_324_matmul_1_readvariableop_resource:	d<
-lstm_cell_324_biasadd_readvariableop_resource:	
identity¢$lstm_cell_324/BiasAdd/ReadVariableOp¢#lstm_cell_324/MatMul/ReadVariableOp¢%lstm_cell_324/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_324/MatMul/ReadVariableOpReadVariableOp,lstm_cell_324_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_324/MatMulMatMulstrided_slice_2:output:0+lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_324_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_324/MatMul_1MatMulzeros:output:0-lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_324/addAddV2lstm_cell_324/MatMul:product:0 lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_324_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_324/BiasAddBiasAddlstm_cell_324/add:z:0,lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_324/splitSplit&lstm_cell_324/split/split_dim:output:0lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_324/SigmoidSigmoidlstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_1Sigmoidlstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_324/mulMullstm_cell_324/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_324/ReluRelulstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_1Mullstm_cell_324/Sigmoid:y:0 lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_324/add_1AddV2lstm_cell_324/mul:z:0lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_2Sigmoidlstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_324/Relu_1Relulstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_2Mullstm_cell_324/Sigmoid_2:y:0"lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_324_matmul_readvariableop_resource.lstm_cell_324_matmul_1_readvariableop_resource-lstm_cell_324_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1973880*
condR
while_cond_1973879*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_324/BiasAdd/ReadVariableOp$^lstm_cell_324/MatMul/ReadVariableOp&^lstm_cell_324/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_324/BiasAdd/ReadVariableOp$lstm_cell_324/BiasAdd/ReadVariableOp2J
#lstm_cell_324/MatMul/ReadVariableOp#lstm_cell_324/MatMul/ReadVariableOp2N
%lstm_cell_324/MatMul_1/ReadVariableOp%lstm_cell_324/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

¢
/__inference_sequential_15_layer_call_fn_1974314
lstm_45_input
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
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCalllstm_45_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_45_input
#
ñ
while_body_1973196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_325_1973220_0:	dÈ0
while_lstm_cell_325_1973222_0:	2È,
while_lstm_cell_325_1973224_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_325_1973220:	dÈ.
while_lstm_cell_325_1973222:	2È*
while_lstm_cell_325_1973224:	È¢+while/lstm_cell_325/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¼
+while/lstm_cell_325/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_325_1973220_0while_lstm_cell_325_1973222_0while_lstm_cell_325_1973224_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1973182Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_325/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_325/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity4while/lstm_cell_325/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z

while/NoOpNoOp,^while/lstm_cell_325/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_325_1973220while_lstm_cell_325_1973220_0"<
while_lstm_cell_325_1973222while_lstm_cell_325_1973222_0"<
while_lstm_cell_325_1973224while_lstm_cell_325_1973224_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2Z
+while/lstm_cell_325/StatefulPartitionedCall+while/lstm_cell_325/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
ÜJ

D__inference_lstm_47_layer_call_and_return_conditional_losses_1977638

inputs>
,lstm_cell_326_matmul_readvariableop_resource:2(@
.lstm_cell_326_matmul_1_readvariableop_resource:
(;
-lstm_cell_326_biasadd_readvariableop_resource:(
identity¢$lstm_cell_326/BiasAdd/ReadVariableOp¢#lstm_cell_326/MatMul/ReadVariableOp¢%lstm_cell_326/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_326/MatMul/ReadVariableOpReadVariableOp,lstm_cell_326_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_326/MatMulMatMulstrided_slice_2:output:0+lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_326_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_326/MatMul_1MatMulzeros:output:0-lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_326/addAddV2lstm_cell_326/MatMul:product:0 lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_326_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_326/BiasAddBiasAddlstm_cell_326/add:z:0,lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_326/splitSplit&lstm_cell_326/split/split_dim:output:0lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_326/SigmoidSigmoidlstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_1Sigmoidlstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_326/mulMullstm_cell_326/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_326/ReluRelulstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_1Mullstm_cell_326/Sigmoid:y:0 lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_326/add_1AddV2lstm_cell_326/mul:z:0lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_2Sigmoidlstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_326/Relu_1Relulstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_2Mullstm_cell_326/Sigmoid_2:y:0"lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_326_matmul_readvariableop_resource.lstm_cell_326_matmul_1_readvariableop_resource-lstm_cell_326_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1977554*
condR
while_cond_1977553*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_326/BiasAdd/ReadVariableOp$^lstm_cell_326/MatMul/ReadVariableOp&^lstm_cell_326/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_326/BiasAdd/ReadVariableOp$lstm_cell_326/BiasAdd/ReadVariableOp2J
#lstm_cell_326/MatMul/ReadVariableOp#lstm_cell_326/MatMul/ReadVariableOp2N
%lstm_cell_326/MatMul_1/ReadVariableOp%lstm_cell_326/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
È
while_cond_1974725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1974725___redundant_placeholder05
1while_while_cond_1974725___redundant_placeholder15
1while_while_cond_1974725___redundant_placeholder25
1while_while_cond_1974725___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_1974560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1974560___redundant_placeholder05
1while_while_cond_1974560___redundant_placeholder15
1while_while_cond_1974560___redundant_placeholder25
1while_while_cond_1974560___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ÊR

(sequential_15_lstm_45_while_body_1972397H
Dsequential_15_lstm_45_while_sequential_15_lstm_45_while_loop_counterN
Jsequential_15_lstm_45_while_sequential_15_lstm_45_while_maximum_iterations+
'sequential_15_lstm_45_while_placeholder-
)sequential_15_lstm_45_while_placeholder_1-
)sequential_15_lstm_45_while_placeholder_2-
)sequential_15_lstm_45_while_placeholder_3G
Csequential_15_lstm_45_while_sequential_15_lstm_45_strided_slice_1_0
sequential_15_lstm_45_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_45_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_15_lstm_45_while_lstm_cell_324_matmul_readvariableop_resource_0:	_
Lsequential_15_lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource_0:	dZ
Ksequential_15_lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource_0:	(
$sequential_15_lstm_45_while_identity*
&sequential_15_lstm_45_while_identity_1*
&sequential_15_lstm_45_while_identity_2*
&sequential_15_lstm_45_while_identity_3*
&sequential_15_lstm_45_while_identity_4*
&sequential_15_lstm_45_while_identity_5E
Asequential_15_lstm_45_while_sequential_15_lstm_45_strided_slice_1
}sequential_15_lstm_45_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_45_tensorarrayunstack_tensorlistfromtensor[
Hsequential_15_lstm_45_while_lstm_cell_324_matmul_readvariableop_resource:	]
Jsequential_15_lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource:	dX
Isequential_15_lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource:	¢@sequential_15/lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp¢?sequential_15/lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp¢Asequential_15/lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp
Msequential_15/lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_15/lstm_45/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_15_lstm_45_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_45_tensorarrayunstack_tensorlistfromtensor_0'sequential_15_lstm_45_while_placeholderVsequential_15/lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ë
?sequential_15/lstm_45/while/lstm_cell_324/MatMul/ReadVariableOpReadVariableOpJsequential_15_lstm_45_while_lstm_cell_324_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0þ
0sequential_15/lstm_45/while/lstm_cell_324/MatMulMatMulFsequential_15/lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_15/lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
Asequential_15/lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOpLsequential_15_lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0å
2sequential_15/lstm_45/while/lstm_cell_324/MatMul_1MatMul)sequential_15_lstm_45_while_placeholder_2Isequential_15/lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
-sequential_15/lstm_45/while/lstm_cell_324/addAddV2:sequential_15/lstm_45/while/lstm_cell_324/MatMul:product:0<sequential_15/lstm_45/while/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
@sequential_15/lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOpKsequential_15_lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_15/lstm_45/while/lstm_cell_324/BiasAddBiasAdd1sequential_15/lstm_45/while/lstm_cell_324/add:z:0Hsequential_15/lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9sequential_15/lstm_45/while/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_15/lstm_45/while/lstm_cell_324/splitSplitBsequential_15/lstm_45/while/lstm_cell_324/split/split_dim:output:0:sequential_15/lstm_45/while/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split¨
1sequential_15/lstm_45/while/lstm_cell_324/SigmoidSigmoid8sequential_15/lstm_45/while/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdª
3sequential_15/lstm_45/while/lstm_cell_324/Sigmoid_1Sigmoid8sequential_15/lstm_45/while/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÊ
-sequential_15/lstm_45/while/lstm_cell_324/mulMul7sequential_15/lstm_45/while/lstm_cell_324/Sigmoid_1:y:0)sequential_15_lstm_45_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
.sequential_15/lstm_45/while/lstm_cell_324/ReluRelu8sequential_15/lstm_45/while/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÝ
/sequential_15/lstm_45/while/lstm_cell_324/mul_1Mul5sequential_15/lstm_45/while/lstm_cell_324/Sigmoid:y:0<sequential_15/lstm_45/while/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÒ
/sequential_15/lstm_45/while/lstm_cell_324/add_1AddV21sequential_15/lstm_45/while/lstm_cell_324/mul:z:03sequential_15/lstm_45/while/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdª
3sequential_15/lstm_45/while/lstm_cell_324/Sigmoid_2Sigmoid8sequential_15/lstm_45/while/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
0sequential_15/lstm_45/while/lstm_cell_324/Relu_1Relu3sequential_15/lstm_45/while/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdá
/sequential_15/lstm_45/while/lstm_cell_324/mul_2Mul7sequential_15/lstm_45/while/lstm_cell_324/Sigmoid_2:y:0>sequential_15/lstm_45/while/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
@sequential_15/lstm_45/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_15_lstm_45_while_placeholder_1'sequential_15_lstm_45_while_placeholder3sequential_15/lstm_45/while/lstm_cell_324/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_15/lstm_45/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_15/lstm_45/while/addAddV2'sequential_15_lstm_45_while_placeholder*sequential_15/lstm_45/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_15/lstm_45/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_15/lstm_45/while/add_1AddV2Dsequential_15_lstm_45_while_sequential_15_lstm_45_while_loop_counter,sequential_15/lstm_45/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_15/lstm_45/while/IdentityIdentity%sequential_15/lstm_45/while/add_1:z:0!^sequential_15/lstm_45/while/NoOp*
T0*
_output_shapes
: Â
&sequential_15/lstm_45/while/Identity_1IdentityJsequential_15_lstm_45_while_sequential_15_lstm_45_while_maximum_iterations!^sequential_15/lstm_45/while/NoOp*
T0*
_output_shapes
: 
&sequential_15/lstm_45/while/Identity_2Identity#sequential_15/lstm_45/while/add:z:0!^sequential_15/lstm_45/while/NoOp*
T0*
_output_shapes
: È
&sequential_15/lstm_45/while/Identity_3IdentityPsequential_15/lstm_45/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_15/lstm_45/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_15/lstm_45/while/Identity_4Identity3sequential_15/lstm_45/while/lstm_cell_324/mul_2:z:0!^sequential_15/lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¼
&sequential_15/lstm_45/while/Identity_5Identity3sequential_15/lstm_45/while/lstm_cell_324/add_1:z:0!^sequential_15/lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd«
 sequential_15/lstm_45/while/NoOpNoOpA^sequential_15/lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp@^sequential_15/lstm_45/while/lstm_cell_324/MatMul/ReadVariableOpB^sequential_15/lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_15_lstm_45_while_identity-sequential_15/lstm_45/while/Identity:output:0"Y
&sequential_15_lstm_45_while_identity_1/sequential_15/lstm_45/while/Identity_1:output:0"Y
&sequential_15_lstm_45_while_identity_2/sequential_15/lstm_45/while/Identity_2:output:0"Y
&sequential_15_lstm_45_while_identity_3/sequential_15/lstm_45/while/Identity_3:output:0"Y
&sequential_15_lstm_45_while_identity_4/sequential_15/lstm_45/while/Identity_4:output:0"Y
&sequential_15_lstm_45_while_identity_5/sequential_15/lstm_45/while/Identity_5:output:0"
Isequential_15_lstm_45_while_lstm_cell_324_biasadd_readvariableop_resourceKsequential_15_lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource_0"
Jsequential_15_lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resourceLsequential_15_lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource_0"
Hsequential_15_lstm_45_while_lstm_cell_324_matmul_readvariableop_resourceJsequential_15_lstm_45_while_lstm_cell_324_matmul_readvariableop_resource_0"
Asequential_15_lstm_45_while_sequential_15_lstm_45_strided_slice_1Csequential_15_lstm_45_while_sequential_15_lstm_45_strided_slice_1_0"
}sequential_15_lstm_45_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_45_tensorarrayunstack_tensorlistfromtensorsequential_15_lstm_45_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_45_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2
@sequential_15/lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp@sequential_15/lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp2
?sequential_15/lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp?sequential_15/lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp2
Asequential_15/lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOpAsequential_15/lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_1974395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1974395___redundant_placeholder05
1while_while_cond_1974395___redundant_placeholder15
1while_while_cond_1974395___redundant_placeholder25
1while_while_cond_1974395___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_1973386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1973386___redundant_placeholder05
1while_while_cond_1973386___redundant_placeholder15
1while_while_cond_1973386___redundant_placeholder25
1while_while_cond_1973386___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_1973036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1973036___redundant_placeholder05
1while_while_cond_1973036___redundant_placeholder15
1while_while_cond_1973036___redundant_placeholder25
1while_while_cond_1973036___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
È	
ö
E__inference_dense_15_layer_call_and_return_conditional_losses_1977800

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ñ8
Ú
while_body_1976938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_325_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_325_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_325_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_325_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_325_biasadd_readvariableop_resource:	È¢*while/lstm_cell_325/BiasAdd/ReadVariableOp¢)while/lstm_cell_325/MatMul/ReadVariableOp¢+while/lstm_cell_325/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_325/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_325_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_325/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_325_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_325/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_325/addAddV2$while/lstm_cell_325/MatMul:product:0&while/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_325_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_325/BiasAddBiasAddwhile/lstm_cell_325/add:z:02while/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_325/splitSplit,while/lstm_cell_325/split/split_dim:output:0$while/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_325/SigmoidSigmoid"while/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_1Sigmoid"while/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mulMul!while/lstm_cell_325/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_325/ReluRelu"while/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_1Mulwhile/lstm_cell_325/Sigmoid:y:0&while/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/add_1AddV2while/lstm_cell_325/mul:z:0while/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_2Sigmoid"while/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_325/Relu_1Reluwhile/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_2Mul!while/lstm_cell_325/Sigmoid_2:y:0(while/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_325/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_325/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_325/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_325/BiasAdd/ReadVariableOp*^while/lstm_cell_325/MatMul/ReadVariableOp,^while/lstm_cell_325/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_325_biasadd_readvariableop_resource5while_lstm_cell_325_biasadd_readvariableop_resource_0"n
4while_lstm_cell_325_matmul_1_readvariableop_resource6while_lstm_cell_325_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_325_matmul_readvariableop_resource4while_lstm_cell_325_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_325/BiasAdd/ReadVariableOp*while/lstm_cell_325/BiasAdd/ReadVariableOp2V
)while/lstm_cell_325/MatMul/ReadVariableOp)while/lstm_cell_325/MatMul/ReadVariableOp2Z
+while/lstm_cell_325/MatMul_1/ReadVariableOp+while/lstm_cell_325/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
Ñ8
Ú
while_body_1974726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_324_matmul_readvariableop_resource_0:	I
6while_lstm_cell_324_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_324_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_324_matmul_readvariableop_resource:	G
4while_lstm_cell_324_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_324_biasadd_readvariableop_resource:	¢*while/lstm_cell_324/BiasAdd/ReadVariableOp¢)while/lstm_cell_324/MatMul/ReadVariableOp¢+while/lstm_cell_324/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_324/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_324_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_324/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_324_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_324/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_324/addAddV2$while/lstm_cell_324/MatMul:product:0&while/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_324_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_324/BiasAddBiasAddwhile/lstm_cell_324/add:z:02while/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_324/splitSplit,while/lstm_cell_324/split/split_dim:output:0$while/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_324/SigmoidSigmoid"while/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_1Sigmoid"while/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mulMul!while/lstm_cell_324/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_324/ReluRelu"while/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_1Mulwhile/lstm_cell_324/Sigmoid:y:0&while/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/add_1AddV2while/lstm_cell_324/mul:z:0while/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_2Sigmoid"while/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_324/Relu_1Reluwhile/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_2Mul!while/lstm_cell_324/Sigmoid_2:y:0(while/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_324/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_324/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_324/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_324/BiasAdd/ReadVariableOp*^while/lstm_cell_324/MatMul/ReadVariableOp,^while/lstm_cell_324/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_324_biasadd_readvariableop_resource5while_lstm_cell_324_biasadd_readvariableop_resource_0"n
4while_lstm_cell_324_matmul_1_readvariableop_resource6while_lstm_cell_324_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_324_matmul_readvariableop_resource4while_lstm_cell_324_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_324/BiasAdd/ReadVariableOp*while/lstm_cell_324/BiasAdd/ReadVariableOp2V
)while/lstm_cell_324/MatMul/ReadVariableOp)while/lstm_cell_324/MatMul/ReadVariableOp2Z
+while/lstm_cell_324/MatMul_1/ReadVariableOp+while/lstm_cell_324/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
¿


%__inference_signature_wrapper_1975025
lstm_45_input
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
identity¢StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCalllstm_45_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_1972765o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_45_input

¶
)__inference_lstm_46_layer_call_fn_1976582

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_46_layer_call_and_return_conditional_losses_1974114s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
B
Ú

lstm_46_while_body_1975704,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3+
'lstm_46_while_lstm_46_strided_slice_1_0g
clstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_46_while_lstm_cell_325_matmul_readvariableop_resource_0:	dÈQ
>lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource_0:	È
lstm_46_while_identity
lstm_46_while_identity_1
lstm_46_while_identity_2
lstm_46_while_identity_3
lstm_46_while_identity_4
lstm_46_while_identity_5)
%lstm_46_while_lstm_46_strided_slice_1e
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorM
:lstm_46_while_lstm_cell_325_matmul_readvariableop_resource:	dÈO
<lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈJ
;lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource:	È¢2lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp¢1lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp¢3lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp
?lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_46/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0lstm_46_while_placeholderHlstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¯
1lstm_46/while/lstm_cell_325/MatMul/ReadVariableOpReadVariableOp<lstm_46_while_lstm_cell_325_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ô
"lstm_46/while/lstm_cell_325/MatMulMatMul8lstm_46/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ³
3lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp>lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0»
$lstm_46/while/lstm_cell_325/MatMul_1MatMullstm_46_while_placeholder_2;lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
lstm_46/while/lstm_cell_325/addAddV2,lstm_46/while/lstm_cell_325/MatMul:product:0.lstm_46/while/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ­
2lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp=lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_46/while/lstm_cell_325/BiasAddBiasAdd#lstm_46/while/lstm_cell_325/add:z:0:lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈm
+lstm_46/while/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_46/while/lstm_cell_325/splitSplit4lstm_46/while/lstm_cell_325/split/split_dim:output:0,lstm_46/while/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
#lstm_46/while/lstm_cell_325/SigmoidSigmoid*lstm_46/while/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_46/while/lstm_cell_325/Sigmoid_1Sigmoid*lstm_46/while/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_46/while/lstm_cell_325/mulMul)lstm_46/while/lstm_cell_325/Sigmoid_1:y:0lstm_46_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 lstm_46/while/lstm_cell_325/ReluRelu*lstm_46/while/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2³
!lstm_46/while/lstm_cell_325/mul_1Mul'lstm_46/while/lstm_cell_325/Sigmoid:y:0.lstm_46/while/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
!lstm_46/while/lstm_cell_325/add_1AddV2#lstm_46/while/lstm_cell_325/mul:z:0%lstm_46/while/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_46/while/lstm_cell_325/Sigmoid_2Sigmoid*lstm_46/while/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"lstm_46/while/lstm_cell_325/Relu_1Relu%lstm_46/while/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2·
!lstm_46/while/lstm_cell_325/mul_2Mul)lstm_46/while/lstm_cell_325/Sigmoid_2:y:00lstm_46/while/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
2lstm_46/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_46_while_placeholder_1lstm_46_while_placeholder%lstm_46/while/lstm_cell_325/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_46/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_46/while/addAddV2lstm_46_while_placeholderlstm_46/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_46/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_46/while/add_1AddV2(lstm_46_while_lstm_46_while_loop_counterlstm_46/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_46/while/IdentityIdentitylstm_46/while/add_1:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 
lstm_46/while/Identity_1Identity.lstm_46_while_lstm_46_while_maximum_iterations^lstm_46/while/NoOp*
T0*
_output_shapes
: q
lstm_46/while/Identity_2Identitylstm_46/while/add:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 
lstm_46/while/Identity_3IdentityBlstm_46/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 
lstm_46/while/Identity_4Identity%lstm_46/while/lstm_cell_325/mul_2:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/while/Identity_5Identity%lstm_46/while/lstm_cell_325/add_1:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ó
lstm_46/while/NoOpNoOp3^lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp2^lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp4^lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_46_while_identitylstm_46/while/Identity:output:0"=
lstm_46_while_identity_1!lstm_46/while/Identity_1:output:0"=
lstm_46_while_identity_2!lstm_46/while/Identity_2:output:0"=
lstm_46_while_identity_3!lstm_46/while/Identity_3:output:0"=
lstm_46_while_identity_4!lstm_46/while/Identity_4:output:0"=
lstm_46_while_identity_5!lstm_46/while/Identity_5:output:0"P
%lstm_46_while_lstm_46_strided_slice_1'lstm_46_while_lstm_46_strided_slice_1_0"|
;lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource=lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource_0"~
<lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource>lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource_0"z
:lstm_46_while_lstm_cell_325_matmul_readvariableop_resource<lstm_46_while_lstm_cell_325_matmul_readvariableop_resource_0"È
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2h
2lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp2lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp2f
1lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp1lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp2j
3lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp3lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
Ñ8
Ú
while_body_1976036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_324_matmul_readvariableop_resource_0:	I
6while_lstm_cell_324_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_324_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_324_matmul_readvariableop_resource:	G
4while_lstm_cell_324_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_324_biasadd_readvariableop_resource:	¢*while/lstm_cell_324/BiasAdd/ReadVariableOp¢)while/lstm_cell_324/MatMul/ReadVariableOp¢+while/lstm_cell_324/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_324/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_324_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_324/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_324_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_324/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_324/addAddV2$while/lstm_cell_324/MatMul:product:0&while/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_324_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_324/BiasAddBiasAddwhile/lstm_cell_324/add:z:02while/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_324/splitSplit,while/lstm_cell_324/split/split_dim:output:0$while/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_324/SigmoidSigmoid"while/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_1Sigmoid"while/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mulMul!while/lstm_cell_324/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_324/ReluRelu"while/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_1Mulwhile/lstm_cell_324/Sigmoid:y:0&while/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/add_1AddV2while/lstm_cell_324/mul:z:0while/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_2Sigmoid"while/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_324/Relu_1Reluwhile/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_2Mul!while/lstm_cell_324/Sigmoid_2:y:0(while/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_324/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_324/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_324/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_324/BiasAdd/ReadVariableOp*^while/lstm_cell_324/MatMul/ReadVariableOp,^while/lstm_cell_324/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_324_biasadd_readvariableop_resource5while_lstm_cell_324_biasadd_readvariableop_resource_0"n
4while_lstm_cell_324_matmul_1_readvariableop_resource6while_lstm_cell_324_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_324_matmul_readvariableop_resource4while_lstm_cell_324_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_324/BiasAdd/ReadVariableOp*while/lstm_cell_324/BiasAdd/ReadVariableOp2V
)while/lstm_cell_324/MatMul/ReadVariableOp)while/lstm_cell_324/MatMul/ReadVariableOp2Z
+while/lstm_cell_324/MatMul_1/ReadVariableOp+while/lstm_cell_324/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
×

J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1973328

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates
#
ñ
while_body_1972846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_324_1972870_0:	0
while_lstm_cell_324_1972872_0:	d,
while_lstm_cell_324_1972874_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_324_1972870:	.
while_lstm_cell_324_1972872:	d*
while_lstm_cell_324_1972874:	¢+while/lstm_cell_324/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¼
+while/lstm_cell_324/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_324_1972870_0while_lstm_cell_324_1972872_0while_lstm_cell_324_1972874_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1972832Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_324/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_324/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity4while/lstm_cell_324/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz

while/NoOpNoOp,^while/lstm_cell_324/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_324_1972870while_lstm_cell_324_1972870_0"<
while_lstm_cell_324_1972872while_lstm_cell_324_1972872_0"<
while_lstm_cell_324_1972874while_lstm_cell_324_1972874_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2Z
+while/lstm_cell_324/StatefulPartitionedCall+while/lstm_cell_324/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
áJ
¢
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976406

inputs?
,lstm_cell_324_matmul_readvariableop_resource:	A
.lstm_cell_324_matmul_1_readvariableop_resource:	d<
-lstm_cell_324_biasadd_readvariableop_resource:	
identity¢$lstm_cell_324/BiasAdd/ReadVariableOp¢#lstm_cell_324/MatMul/ReadVariableOp¢%lstm_cell_324/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_324/MatMul/ReadVariableOpReadVariableOp,lstm_cell_324_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_324/MatMulMatMulstrided_slice_2:output:0+lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_324_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_324/MatMul_1MatMulzeros:output:0-lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_324/addAddV2lstm_cell_324/MatMul:product:0 lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_324_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_324/BiasAddBiasAddlstm_cell_324/add:z:0,lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_324/splitSplit&lstm_cell_324/split/split_dim:output:0lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_324/SigmoidSigmoidlstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_1Sigmoidlstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_324/mulMullstm_cell_324/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_324/ReluRelulstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_1Mullstm_cell_324/Sigmoid:y:0 lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_324/add_1AddV2lstm_cell_324/mul:z:0lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_2Sigmoidlstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_324/Relu_1Relulstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_2Mullstm_cell_324/Sigmoid_2:y:0"lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_324_matmul_readvariableop_resource.lstm_cell_324_matmul_1_readvariableop_resource-lstm_cell_324_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1976322*
condR
while_cond_1976321*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_324/BiasAdd/ReadVariableOp$^lstm_cell_324/MatMul/ReadVariableOp&^lstm_cell_324/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_324/BiasAdd/ReadVariableOp$lstm_cell_324/BiasAdd/ReadVariableOp2J
#lstm_cell_324/MatMul/ReadVariableOp#lstm_cell_324/MatMul/ReadVariableOp2N
%lstm_cell_324/MatMul_1/ReadVariableOp%lstm_cell_324/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
B
Ú

lstm_45_while_body_1975565,
(lstm_45_while_lstm_45_while_loop_counter2
.lstm_45_while_lstm_45_while_maximum_iterations
lstm_45_while_placeholder
lstm_45_while_placeholder_1
lstm_45_while_placeholder_2
lstm_45_while_placeholder_3+
'lstm_45_while_lstm_45_strided_slice_1_0g
clstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_45_while_lstm_cell_324_matmul_readvariableop_resource_0:	Q
>lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource_0:	dL
=lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource_0:	
lstm_45_while_identity
lstm_45_while_identity_1
lstm_45_while_identity_2
lstm_45_while_identity_3
lstm_45_while_identity_4
lstm_45_while_identity_5)
%lstm_45_while_lstm_45_strided_slice_1e
alstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensorM
:lstm_45_while_lstm_cell_324_matmul_readvariableop_resource:	O
<lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource:	dJ
;lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource:	¢2lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp¢1lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp¢3lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp
?lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_45/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0lstm_45_while_placeholderHlstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
1lstm_45/while/lstm_cell_324/MatMul/ReadVariableOpReadVariableOp<lstm_45_while_lstm_cell_324_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ô
"lstm_45/while/lstm_cell_324/MatMulMatMul8lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
3lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp>lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0»
$lstm_45/while/lstm_cell_324/MatMul_1MatMullstm_45_while_placeholder_2;lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
lstm_45/while/lstm_cell_324/addAddV2,lstm_45/while/lstm_cell_324/MatMul:product:0.lstm_45/while/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
2lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp=lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_45/while/lstm_cell_324/BiasAddBiasAdd#lstm_45/while/lstm_cell_324/add:z:0:lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+lstm_45/while/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_45/while/lstm_cell_324/splitSplit4lstm_45/while/lstm_cell_324/split/split_dim:output:0,lstm_45/while/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
#lstm_45/while/lstm_cell_324/SigmoidSigmoid*lstm_45/while/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_45/while/lstm_cell_324/Sigmoid_1Sigmoid*lstm_45/while/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
lstm_45/while/lstm_cell_324/mulMul)lstm_45/while/lstm_cell_324/Sigmoid_1:y:0lstm_45_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 lstm_45/while/lstm_cell_324/ReluRelu*lstm_45/while/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
!lstm_45/while/lstm_cell_324/mul_1Mul'lstm_45/while/lstm_cell_324/Sigmoid:y:0.lstm_45/while/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
!lstm_45/while/lstm_cell_324/add_1AddV2#lstm_45/while/lstm_cell_324/mul:z:0%lstm_45/while/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_45/while/lstm_cell_324/Sigmoid_2Sigmoid*lstm_45/while/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_45/while/lstm_cell_324/Relu_1Relu%lstm_45/while/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
!lstm_45/while/lstm_cell_324/mul_2Mul)lstm_45/while/lstm_cell_324/Sigmoid_2:y:00lstm_45/while/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdæ
2lstm_45/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_45_while_placeholder_1lstm_45_while_placeholder%lstm_45/while/lstm_cell_324/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_45/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_45/while/addAddV2lstm_45_while_placeholderlstm_45/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_45/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_45/while/add_1AddV2(lstm_45_while_lstm_45_while_loop_counterlstm_45/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_45/while/IdentityIdentitylstm_45/while/add_1:z:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 
lstm_45/while/Identity_1Identity.lstm_45_while_lstm_45_while_maximum_iterations^lstm_45/while/NoOp*
T0*
_output_shapes
: q
lstm_45/while/Identity_2Identitylstm_45/while/add:z:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 
lstm_45/while/Identity_3IdentityBlstm_45/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 
lstm_45/while/Identity_4Identity%lstm_45/while/lstm_cell_324/mul_2:z:0^lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_45/while/Identity_5Identity%lstm_45/while/lstm_cell_324/add_1:z:0^lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdó
lstm_45/while/NoOpNoOp3^lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp2^lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp4^lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_45_while_identitylstm_45/while/Identity:output:0"=
lstm_45_while_identity_1!lstm_45/while/Identity_1:output:0"=
lstm_45_while_identity_2!lstm_45/while/Identity_2:output:0"=
lstm_45_while_identity_3!lstm_45/while/Identity_3:output:0"=
lstm_45_while_identity_4!lstm_45/while/Identity_4:output:0"=
lstm_45_while_identity_5!lstm_45/while/Identity_5:output:0"P
%lstm_45_while_lstm_45_strided_slice_1'lstm_45_while_lstm_45_strided_slice_1_0"|
;lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource=lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource_0"~
<lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource>lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource_0"z
:lstm_45_while_lstm_cell_324_matmul_readvariableop_resource<lstm_45_while_lstm_cell_324_matmul_readvariableop_resource_0"È
alstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensorclstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2h
2lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp2lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp2f
1lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp1lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp2j
3lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp3lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 


è
lstm_45_while_cond_1975137,
(lstm_45_while_lstm_45_while_loop_counter2
.lstm_45_while_lstm_45_while_maximum_iterations
lstm_45_while_placeholder
lstm_45_while_placeholder_1
lstm_45_while_placeholder_2
lstm_45_while_placeholder_3.
*lstm_45_while_less_lstm_45_strided_slice_1E
Alstm_45_while_lstm_45_while_cond_1975137___redundant_placeholder0E
Alstm_45_while_lstm_45_while_cond_1975137___redundant_placeholder1E
Alstm_45_while_lstm_45_while_cond_1975137___redundant_placeholder2E
Alstm_45_while_lstm_45_while_cond_1975137___redundant_placeholder3
lstm_45_while_identity

lstm_45/while/LessLesslstm_45_while_placeholder*lstm_45_while_less_lstm_45_strided_slice_1*
T0*
_output_shapes
: [
lstm_45/while/IdentityIdentitylstm_45/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_45_while_identitylstm_45/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_1976794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1976794___redundant_placeholder05
1while_while_cond_1976794___redundant_placeholder15
1while_while_cond_1976794___redundant_placeholder25
1while_while_cond_1976794___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:

¶
)__inference_lstm_46_layer_call_fn_1976593

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_46_layer_call_and_return_conditional_losses_1974645s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ä

*__inference_dense_15_layer_call_fn_1977790

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_1974282o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
º
È
while_cond_1977553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1977553___redundant_placeholder05
1while_while_cond_1977553___redundant_placeholder15
1while_while_cond_1977553___redundant_placeholder25
1while_while_cond_1977553___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:

µ
)__inference_lstm_47_layer_call_fn_1977176
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_47_layer_call_and_return_conditional_losses_1973615o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
º
È
while_cond_1976937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1976937___redundant_placeholder05
1while_while_cond_1976937___redundant_placeholder15
1while_while_cond_1976937___redundant_placeholder25
1while_while_cond_1976937___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
Í

J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1973532

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates
£

(sequential_15_lstm_47_while_cond_1972674H
Dsequential_15_lstm_47_while_sequential_15_lstm_47_while_loop_counterN
Jsequential_15_lstm_47_while_sequential_15_lstm_47_while_maximum_iterations+
'sequential_15_lstm_47_while_placeholder-
)sequential_15_lstm_47_while_placeholder_1-
)sequential_15_lstm_47_while_placeholder_2-
)sequential_15_lstm_47_while_placeholder_3J
Fsequential_15_lstm_47_while_less_sequential_15_lstm_47_strided_slice_1a
]sequential_15_lstm_47_while_sequential_15_lstm_47_while_cond_1972674___redundant_placeholder0a
]sequential_15_lstm_47_while_sequential_15_lstm_47_while_cond_1972674___redundant_placeholder1a
]sequential_15_lstm_47_while_sequential_15_lstm_47_while_cond_1972674___redundant_placeholder2a
]sequential_15_lstm_47_while_sequential_15_lstm_47_while_cond_1972674___redundant_placeholder3(
$sequential_15_lstm_47_while_identity
º
 sequential_15/lstm_47/while/LessLess'sequential_15_lstm_47_while_placeholderFsequential_15_lstm_47_while_less_sequential_15_lstm_47_strided_slice_1*
T0*
_output_shapes
: w
$sequential_15/lstm_47/while/IdentityIdentity$sequential_15/lstm_47/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_15_lstm_47_while_identity-sequential_15/lstm_47/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
Ñ8
Ú
while_body_1973880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_324_matmul_readvariableop_resource_0:	I
6while_lstm_cell_324_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_324_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_324_matmul_readvariableop_resource:	G
4while_lstm_cell_324_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_324_biasadd_readvariableop_resource:	¢*while/lstm_cell_324/BiasAdd/ReadVariableOp¢)while/lstm_cell_324/MatMul/ReadVariableOp¢+while/lstm_cell_324/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_324/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_324_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_324/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_324_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_324/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_324/addAddV2$while/lstm_cell_324/MatMul:product:0&while/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_324_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_324/BiasAddBiasAddwhile/lstm_cell_324/add:z:02while/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_324/splitSplit,while/lstm_cell_324/split/split_dim:output:0$while/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_324/SigmoidSigmoid"while/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_1Sigmoid"while/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mulMul!while/lstm_cell_324/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_324/ReluRelu"while/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_1Mulwhile/lstm_cell_324/Sigmoid:y:0&while/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/add_1AddV2while/lstm_cell_324/mul:z:0while/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_2Sigmoid"while/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_324/Relu_1Reluwhile/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_2Mul!while/lstm_cell_324/Sigmoid_2:y:0(while/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_324/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_324/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_324/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_324/BiasAdd/ReadVariableOp*^while/lstm_cell_324/MatMul/ReadVariableOp,^while/lstm_cell_324/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_324_biasadd_readvariableop_resource5while_lstm_cell_324_biasadd_readvariableop_resource_0"n
4while_lstm_cell_324_matmul_1_readvariableop_resource6while_lstm_cell_324_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_324_matmul_readvariableop_resource4while_lstm_cell_324_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_324/BiasAdd/ReadVariableOp*while/lstm_cell_324/BiasAdd/ReadVariableOp2V
)while/lstm_cell_324/MatMul/ReadVariableOp)while/lstm_cell_324/MatMul/ReadVariableOp2Z
+while/lstm_cell_324/MatMul_1/ReadVariableOp+while/lstm_cell_324/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
áJ
¢
D__inference_lstm_46_layer_call_and_return_conditional_losses_1977022

inputs?
,lstm_cell_325_matmul_readvariableop_resource:	dÈA
.lstm_cell_325_matmul_1_readvariableop_resource:	2È<
-lstm_cell_325_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_325/BiasAdd/ReadVariableOp¢#lstm_cell_325/MatMul/ReadVariableOp¢%lstm_cell_325/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_325/MatMul/ReadVariableOpReadVariableOp,lstm_cell_325_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_325/MatMulMatMulstrided_slice_2:output:0+lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_325_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_325/MatMul_1MatMulzeros:output:0-lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_325/addAddV2lstm_cell_325/MatMul:product:0 lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_325_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_325/BiasAddBiasAddlstm_cell_325/add:z:0,lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_325/splitSplit&lstm_cell_325/split/split_dim:output:0lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_325/SigmoidSigmoidlstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_1Sigmoidlstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_325/mulMullstm_cell_325/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_325/ReluRelulstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_1Mullstm_cell_325/Sigmoid:y:0 lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_325/add_1AddV2lstm_cell_325/mul:z:0lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_2Sigmoidlstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_325/Relu_1Relulstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_2Mullstm_cell_325/Sigmoid_2:y:0"lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_325_matmul_readvariableop_resource.lstm_cell_325_matmul_1_readvariableop_resource-lstm_cell_325_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1976938*
condR
while_cond_1976937*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_325/BiasAdd/ReadVariableOp$^lstm_cell_325/MatMul/ReadVariableOp&^lstm_cell_325/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_325/BiasAdd/ReadVariableOp$lstm_cell_325/BiasAdd/ReadVariableOp2J
#lstm_cell_325/MatMul/ReadVariableOp#lstm_cell_325/MatMul/ReadVariableOp2N
%lstm_cell_325/MatMul_1/ReadVariableOp%lstm_cell_325/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
B
Ú

lstm_46_while_body_1975277,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3+
'lstm_46_while_lstm_46_strided_slice_1_0g
clstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_46_while_lstm_cell_325_matmul_readvariableop_resource_0:	dÈQ
>lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource_0:	È
lstm_46_while_identity
lstm_46_while_identity_1
lstm_46_while_identity_2
lstm_46_while_identity_3
lstm_46_while_identity_4
lstm_46_while_identity_5)
%lstm_46_while_lstm_46_strided_slice_1e
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorM
:lstm_46_while_lstm_cell_325_matmul_readvariableop_resource:	dÈO
<lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈJ
;lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource:	È¢2lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp¢1lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp¢3lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp
?lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_46/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0lstm_46_while_placeholderHlstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¯
1lstm_46/while/lstm_cell_325/MatMul/ReadVariableOpReadVariableOp<lstm_46_while_lstm_cell_325_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ô
"lstm_46/while/lstm_cell_325/MatMulMatMul8lstm_46/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ³
3lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp>lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0»
$lstm_46/while/lstm_cell_325/MatMul_1MatMullstm_46_while_placeholder_2;lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
lstm_46/while/lstm_cell_325/addAddV2,lstm_46/while/lstm_cell_325/MatMul:product:0.lstm_46/while/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ­
2lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp=lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_46/while/lstm_cell_325/BiasAddBiasAdd#lstm_46/while/lstm_cell_325/add:z:0:lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈm
+lstm_46/while/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_46/while/lstm_cell_325/splitSplit4lstm_46/while/lstm_cell_325/split/split_dim:output:0,lstm_46/while/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
#lstm_46/while/lstm_cell_325/SigmoidSigmoid*lstm_46/while/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_46/while/lstm_cell_325/Sigmoid_1Sigmoid*lstm_46/while/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_46/while/lstm_cell_325/mulMul)lstm_46/while/lstm_cell_325/Sigmoid_1:y:0lstm_46_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 lstm_46/while/lstm_cell_325/ReluRelu*lstm_46/while/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2³
!lstm_46/while/lstm_cell_325/mul_1Mul'lstm_46/while/lstm_cell_325/Sigmoid:y:0.lstm_46/while/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
!lstm_46/while/lstm_cell_325/add_1AddV2#lstm_46/while/lstm_cell_325/mul:z:0%lstm_46/while/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%lstm_46/while/lstm_cell_325/Sigmoid_2Sigmoid*lstm_46/while/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"lstm_46/while/lstm_cell_325/Relu_1Relu%lstm_46/while/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2·
!lstm_46/while/lstm_cell_325/mul_2Mul)lstm_46/while/lstm_cell_325/Sigmoid_2:y:00lstm_46/while/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
2lstm_46/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_46_while_placeholder_1lstm_46_while_placeholder%lstm_46/while/lstm_cell_325/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_46/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_46/while/addAddV2lstm_46_while_placeholderlstm_46/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_46/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_46/while/add_1AddV2(lstm_46_while_lstm_46_while_loop_counterlstm_46/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_46/while/IdentityIdentitylstm_46/while/add_1:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 
lstm_46/while/Identity_1Identity.lstm_46_while_lstm_46_while_maximum_iterations^lstm_46/while/NoOp*
T0*
_output_shapes
: q
lstm_46/while/Identity_2Identitylstm_46/while/add:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 
lstm_46/while/Identity_3IdentityBlstm_46/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 
lstm_46/while/Identity_4Identity%lstm_46/while/lstm_cell_325/mul_2:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/while/Identity_5Identity%lstm_46/while/lstm_cell_325/add_1:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ó
lstm_46/while/NoOpNoOp3^lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp2^lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp4^lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_46_while_identitylstm_46/while/Identity:output:0"=
lstm_46_while_identity_1!lstm_46/while/Identity_1:output:0"=
lstm_46_while_identity_2!lstm_46/while/Identity_2:output:0"=
lstm_46_while_identity_3!lstm_46/while/Identity_3:output:0"=
lstm_46_while_identity_4!lstm_46/while/Identity_4:output:0"=
lstm_46_while_identity_5!lstm_46/while/Identity_5:output:0"P
%lstm_46_while_lstm_46_strided_slice_1'lstm_46_while_lstm_46_strided_slice_1_0"|
;lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource=lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource_0"~
<lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource>lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource_0"z
:lstm_46_while_lstm_cell_325_matmul_readvariableop_resource<lstm_46_while_lstm_cell_325_matmul_readvariableop_resource_0"È
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2h
2lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp2lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp2f
1lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp1lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp2j
3lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp3lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
B
Ú

lstm_45_while_body_1975138,
(lstm_45_while_lstm_45_while_loop_counter2
.lstm_45_while_lstm_45_while_maximum_iterations
lstm_45_while_placeholder
lstm_45_while_placeholder_1
lstm_45_while_placeholder_2
lstm_45_while_placeholder_3+
'lstm_45_while_lstm_45_strided_slice_1_0g
clstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_45_while_lstm_cell_324_matmul_readvariableop_resource_0:	Q
>lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource_0:	dL
=lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource_0:	
lstm_45_while_identity
lstm_45_while_identity_1
lstm_45_while_identity_2
lstm_45_while_identity_3
lstm_45_while_identity_4
lstm_45_while_identity_5)
%lstm_45_while_lstm_45_strided_slice_1e
alstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensorM
:lstm_45_while_lstm_cell_324_matmul_readvariableop_resource:	O
<lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource:	dJ
;lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource:	¢2lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp¢1lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp¢3lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp
?lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_45/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0lstm_45_while_placeholderHlstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
1lstm_45/while/lstm_cell_324/MatMul/ReadVariableOpReadVariableOp<lstm_45_while_lstm_cell_324_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ô
"lstm_45/while/lstm_cell_324/MatMulMatMul8lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
3lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp>lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0»
$lstm_45/while/lstm_cell_324/MatMul_1MatMullstm_45_while_placeholder_2;lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
lstm_45/while/lstm_cell_324/addAddV2,lstm_45/while/lstm_cell_324/MatMul:product:0.lstm_45/while/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
2lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp=lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_45/while/lstm_cell_324/BiasAddBiasAdd#lstm_45/while/lstm_cell_324/add:z:0:lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+lstm_45/while/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_45/while/lstm_cell_324/splitSplit4lstm_45/while/lstm_cell_324/split/split_dim:output:0,lstm_45/while/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
#lstm_45/while/lstm_cell_324/SigmoidSigmoid*lstm_45/while/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_45/while/lstm_cell_324/Sigmoid_1Sigmoid*lstm_45/while/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
lstm_45/while/lstm_cell_324/mulMul)lstm_45/while/lstm_cell_324/Sigmoid_1:y:0lstm_45_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 lstm_45/while/lstm_cell_324/ReluRelu*lstm_45/while/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
!lstm_45/while/lstm_cell_324/mul_1Mul'lstm_45/while/lstm_cell_324/Sigmoid:y:0.lstm_45/while/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
!lstm_45/while/lstm_cell_324/add_1AddV2#lstm_45/while/lstm_cell_324/mul:z:0%lstm_45/while/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%lstm_45/while/lstm_cell_324/Sigmoid_2Sigmoid*lstm_45/while/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_45/while/lstm_cell_324/Relu_1Relu%lstm_45/while/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
!lstm_45/while/lstm_cell_324/mul_2Mul)lstm_45/while/lstm_cell_324/Sigmoid_2:y:00lstm_45/while/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdæ
2lstm_45/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_45_while_placeholder_1lstm_45_while_placeholder%lstm_45/while/lstm_cell_324/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_45/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_45/while/addAddV2lstm_45_while_placeholderlstm_45/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_45/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_45/while/add_1AddV2(lstm_45_while_lstm_45_while_loop_counterlstm_45/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_45/while/IdentityIdentitylstm_45/while/add_1:z:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 
lstm_45/while/Identity_1Identity.lstm_45_while_lstm_45_while_maximum_iterations^lstm_45/while/NoOp*
T0*
_output_shapes
: q
lstm_45/while/Identity_2Identitylstm_45/while/add:z:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 
lstm_45/while/Identity_3IdentityBlstm_45/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 
lstm_45/while/Identity_4Identity%lstm_45/while/lstm_cell_324/mul_2:z:0^lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_45/while/Identity_5Identity%lstm_45/while/lstm_cell_324/add_1:z:0^lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdó
lstm_45/while/NoOpNoOp3^lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp2^lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp4^lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_45_while_identitylstm_45/while/Identity:output:0"=
lstm_45_while_identity_1!lstm_45/while/Identity_1:output:0"=
lstm_45_while_identity_2!lstm_45/while/Identity_2:output:0"=
lstm_45_while_identity_3!lstm_45/while/Identity_3:output:0"=
lstm_45_while_identity_4!lstm_45/while/Identity_4:output:0"=
lstm_45_while_identity_5!lstm_45/while/Identity_5:output:0"P
%lstm_45_while_lstm_45_strided_slice_1'lstm_45_while_lstm_45_strided_slice_1_0"|
;lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource=lstm_45_while_lstm_cell_324_biasadd_readvariableop_resource_0"~
<lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource>lstm_45_while_lstm_cell_324_matmul_1_readvariableop_resource_0"z
:lstm_45_while_lstm_cell_324_matmul_readvariableop_resource<lstm_45_while_lstm_cell_324_matmul_readvariableop_resource_0"È
alstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensorclstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2h
2lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp2lstm_45/while/lstm_cell_324/BiasAdd/ReadVariableOp2f
1lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp1lstm_45/while/lstm_cell_324/MatMul/ReadVariableOp2j
3lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp3lstm_45/while/lstm_cell_324/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 

µ
)__inference_lstm_47_layer_call_fn_1977187
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_47_layer_call_and_return_conditional_losses_1973806o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0


è
lstm_46_while_cond_1975703,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3.
*lstm_46_while_less_lstm_46_strided_slice_1E
Alstm_46_while_lstm_46_while_cond_1975703___redundant_placeholder0E
Alstm_46_while_lstm_46_while_cond_1975703___redundant_placeholder1E
Alstm_46_while_lstm_46_while_cond_1975703___redundant_placeholder2E
Alstm_46_while_lstm_46_while_cond_1975703___redundant_placeholder3
lstm_46_while_identity

lstm_46/while/LessLesslstm_46_while_placeholder*lstm_46_while_less_lstm_46_strided_slice_1*
T0*
_output_shapes
: [
lstm_46/while/IdentityIdentitylstm_46/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_46_while_identitylstm_46/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
Ä8
Ô
while_body_1977268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_326_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_326_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_326_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_326_matmul_readvariableop_resource:2(F
4while_lstm_cell_326_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_326_biasadd_readvariableop_resource:(¢*while/lstm_cell_326/BiasAdd/ReadVariableOp¢)while/lstm_cell_326/MatMul/ReadVariableOp¢+while/lstm_cell_326/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_326/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_326_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_326/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_326_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_326/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_326/addAddV2$while/lstm_cell_326/MatMul:product:0&while/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_326_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_326/BiasAddBiasAddwhile/lstm_cell_326/add:z:02while/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_326/splitSplit,while/lstm_cell_326/split/split_dim:output:0$while/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_326/SigmoidSigmoid"while/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_1Sigmoid"while/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mulMul!while/lstm_cell_326/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_326/ReluRelu"while/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_1Mulwhile/lstm_cell_326/Sigmoid:y:0&while/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/add_1AddV2while/lstm_cell_326/mul:z:0while/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_2Sigmoid"while/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_326/Relu_1Reluwhile/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_2Mul!while/lstm_cell_326/Sigmoid_2:y:0(while/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_326/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_326/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_326/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_326/BiasAdd/ReadVariableOp*^while/lstm_cell_326/MatMul/ReadVariableOp,^while/lstm_cell_326/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_326_biasadd_readvariableop_resource5while_lstm_cell_326_biasadd_readvariableop_resource_0"n
4while_lstm_cell_326_matmul_1_readvariableop_resource6while_lstm_cell_326_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_326_matmul_readvariableop_resource4while_lstm_cell_326_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_326/BiasAdd/ReadVariableOp*while/lstm_cell_326/BiasAdd/ReadVariableOp2V
)while/lstm_cell_326/MatMul/ReadVariableOp)while/lstm_cell_326/MatMul/ReadVariableOp2Z
+while/lstm_cell_326/MatMul_1/ReadVariableOp+while/lstm_cell_326/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
Ä8
Ô
while_body_1977554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_326_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_326_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_326_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_326_matmul_readvariableop_resource:2(F
4while_lstm_cell_326_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_326_biasadd_readvariableop_resource:(¢*while/lstm_cell_326/BiasAdd/ReadVariableOp¢)while/lstm_cell_326/MatMul/ReadVariableOp¢+while/lstm_cell_326/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_326/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_326_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_326/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_326_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_326/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_326/addAddV2$while/lstm_cell_326/MatMul:product:0&while/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_326_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_326/BiasAddBiasAddwhile/lstm_cell_326/add:z:02while/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_326/splitSplit,while/lstm_cell_326/split/split_dim:output:0$while/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_326/SigmoidSigmoid"while/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_1Sigmoid"while/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mulMul!while/lstm_cell_326/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_326/ReluRelu"while/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_1Mulwhile/lstm_cell_326/Sigmoid:y:0&while/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/add_1AddV2while/lstm_cell_326/mul:z:0while/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_2Sigmoid"while/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_326/Relu_1Reluwhile/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_2Mul!while/lstm_cell_326/Sigmoid_2:y:0(while/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_326/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_326/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_326/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_326/BiasAdd/ReadVariableOp*^while/lstm_cell_326/MatMul/ReadVariableOp,^while/lstm_cell_326/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_326_biasadd_readvariableop_resource5while_lstm_cell_326_biasadd_readvariableop_resource_0"n
4while_lstm_cell_326_matmul_1_readvariableop_resource6while_lstm_cell_326_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_326_matmul_readvariableop_resource4while_lstm_cell_326_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_326/BiasAdd/ReadVariableOp*while/lstm_cell_326/BiasAdd/ReadVariableOp2V
)while/lstm_cell_326/MatMul/ReadVariableOp)while/lstm_cell_326/MatMul/ReadVariableOp2Z
+while/lstm_cell_326/MatMul_1/ReadVariableOp+while/lstm_cell_326/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
áJ
¢
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976549

inputs?
,lstm_cell_324_matmul_readvariableop_resource:	A
.lstm_cell_324_matmul_1_readvariableop_resource:	d<
-lstm_cell_324_biasadd_readvariableop_resource:	
identity¢$lstm_cell_324/BiasAdd/ReadVariableOp¢#lstm_cell_324/MatMul/ReadVariableOp¢%lstm_cell_324/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_324/MatMul/ReadVariableOpReadVariableOp,lstm_cell_324_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_324/MatMulMatMulstrided_slice_2:output:0+lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_324_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_324/MatMul_1MatMulzeros:output:0-lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_324/addAddV2lstm_cell_324/MatMul:product:0 lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_324_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_324/BiasAddBiasAddlstm_cell_324/add:z:0,lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_324/splitSplit&lstm_cell_324/split/split_dim:output:0lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_324/SigmoidSigmoidlstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_1Sigmoidlstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_324/mulMullstm_cell_324/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_324/ReluRelulstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_1Mullstm_cell_324/Sigmoid:y:0 lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_324/add_1AddV2lstm_cell_324/mul:z:0lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_2Sigmoidlstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_324/Relu_1Relulstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_2Mullstm_cell_324/Sigmoid_2:y:0"lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_324_matmul_readvariableop_resource.lstm_cell_324_matmul_1_readvariableop_resource-lstm_cell_324_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1976465*
condR
while_cond_1976464*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_324/BiasAdd/ReadVariableOp$^lstm_cell_324/MatMul/ReadVariableOp&^lstm_cell_324/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_324/BiasAdd/ReadVariableOp$lstm_cell_324/BiasAdd/ReadVariableOp2J
#lstm_cell_324/MatMul/ReadVariableOp#lstm_cell_324/MatMul/ReadVariableOp2N
%lstm_cell_324/MatMul_1/ReadVariableOp%lstm_cell_324/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_1973736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1973736___redundant_placeholder05
1while_while_cond_1973736___redundant_placeholder15
1while_while_cond_1973736___redundant_placeholder25
1while_while_cond_1973736___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
ÊR

(sequential_15_lstm_46_while_body_1972536H
Dsequential_15_lstm_46_while_sequential_15_lstm_46_while_loop_counterN
Jsequential_15_lstm_46_while_sequential_15_lstm_46_while_maximum_iterations+
'sequential_15_lstm_46_while_placeholder-
)sequential_15_lstm_46_while_placeholder_1-
)sequential_15_lstm_46_while_placeholder_2-
)sequential_15_lstm_46_while_placeholder_3G
Csequential_15_lstm_46_while_sequential_15_lstm_46_strided_slice_1_0
sequential_15_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_46_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_15_lstm_46_while_lstm_cell_325_matmul_readvariableop_resource_0:	dÈ_
Lsequential_15_lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_15_lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource_0:	È(
$sequential_15_lstm_46_while_identity*
&sequential_15_lstm_46_while_identity_1*
&sequential_15_lstm_46_while_identity_2*
&sequential_15_lstm_46_while_identity_3*
&sequential_15_lstm_46_while_identity_4*
&sequential_15_lstm_46_while_identity_5E
Asequential_15_lstm_46_while_sequential_15_lstm_46_strided_slice_1
}sequential_15_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_46_tensorarrayunstack_tensorlistfromtensor[
Hsequential_15_lstm_46_while_lstm_cell_325_matmul_readvariableop_resource:	dÈ]
Jsequential_15_lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈX
Isequential_15_lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource:	È¢@sequential_15/lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp¢?sequential_15/lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp¢Asequential_15/lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp
Msequential_15/lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
?sequential_15/lstm_46/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_15_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_46_tensorarrayunstack_tensorlistfromtensor_0'sequential_15_lstm_46_while_placeholderVsequential_15/lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0Ë
?sequential_15/lstm_46/while/lstm_cell_325/MatMul/ReadVariableOpReadVariableOpJsequential_15_lstm_46_while_lstm_cell_325_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0þ
0sequential_15/lstm_46/while/lstm_cell_325/MatMulMatMulFsequential_15/lstm_46/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_15/lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÏ
Asequential_15/lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOpLsequential_15_lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0å
2sequential_15/lstm_46/while/lstm_cell_325/MatMul_1MatMul)sequential_15_lstm_46_while_placeholder_2Isequential_15/lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈã
-sequential_15/lstm_46/while/lstm_cell_325/addAddV2:sequential_15/lstm_46/while/lstm_cell_325/MatMul:product:0<sequential_15/lstm_46/while/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÉ
@sequential_15/lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOpKsequential_15_lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_15/lstm_46/while/lstm_cell_325/BiasAddBiasAdd1sequential_15/lstm_46/while/lstm_cell_325/add:z:0Hsequential_15/lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ{
9sequential_15/lstm_46/while/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_15/lstm_46/while/lstm_cell_325/splitSplitBsequential_15/lstm_46/while/lstm_cell_325/split/split_dim:output:0:sequential_15/lstm_46/while/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split¨
1sequential_15/lstm_46/while/lstm_cell_325/SigmoidSigmoid8sequential_15/lstm_46/while/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
3sequential_15/lstm_46/while/lstm_cell_325/Sigmoid_1Sigmoid8sequential_15/lstm_46/while/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ê
-sequential_15/lstm_46/while/lstm_cell_325/mulMul7sequential_15/lstm_46/while/lstm_cell_325/Sigmoid_1:y:0)sequential_15_lstm_46_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
.sequential_15/lstm_46/while/lstm_cell_325/ReluRelu8sequential_15/lstm_46/while/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ý
/sequential_15/lstm_46/while/lstm_cell_325/mul_1Mul5sequential_15/lstm_46/while/lstm_cell_325/Sigmoid:y:0<sequential_15/lstm_46/while/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ò
/sequential_15/lstm_46/while/lstm_cell_325/add_1AddV21sequential_15/lstm_46/while/lstm_cell_325/mul:z:03sequential_15/lstm_46/while/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
3sequential_15/lstm_46/while/lstm_cell_325/Sigmoid_2Sigmoid8sequential_15/lstm_46/while/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
0sequential_15/lstm_46/while/lstm_cell_325/Relu_1Relu3sequential_15/lstm_46/while/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2á
/sequential_15/lstm_46/while/lstm_cell_325/mul_2Mul7sequential_15/lstm_46/while/lstm_cell_325/Sigmoid_2:y:0>sequential_15/lstm_46/while/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
@sequential_15/lstm_46/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_15_lstm_46_while_placeholder_1'sequential_15_lstm_46_while_placeholder3sequential_15/lstm_46/while/lstm_cell_325/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_15/lstm_46/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_15/lstm_46/while/addAddV2'sequential_15_lstm_46_while_placeholder*sequential_15/lstm_46/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_15/lstm_46/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_15/lstm_46/while/add_1AddV2Dsequential_15_lstm_46_while_sequential_15_lstm_46_while_loop_counter,sequential_15/lstm_46/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_15/lstm_46/while/IdentityIdentity%sequential_15/lstm_46/while/add_1:z:0!^sequential_15/lstm_46/while/NoOp*
T0*
_output_shapes
: Â
&sequential_15/lstm_46/while/Identity_1IdentityJsequential_15_lstm_46_while_sequential_15_lstm_46_while_maximum_iterations!^sequential_15/lstm_46/while/NoOp*
T0*
_output_shapes
: 
&sequential_15/lstm_46/while/Identity_2Identity#sequential_15/lstm_46/while/add:z:0!^sequential_15/lstm_46/while/NoOp*
T0*
_output_shapes
: È
&sequential_15/lstm_46/while/Identity_3IdentityPsequential_15/lstm_46/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_15/lstm_46/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_15/lstm_46/while/Identity_4Identity3sequential_15/lstm_46/while/lstm_cell_325/mul_2:z:0!^sequential_15/lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¼
&sequential_15/lstm_46/while/Identity_5Identity3sequential_15/lstm_46/while/lstm_cell_325/add_1:z:0!^sequential_15/lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2«
 sequential_15/lstm_46/while/NoOpNoOpA^sequential_15/lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp@^sequential_15/lstm_46/while/lstm_cell_325/MatMul/ReadVariableOpB^sequential_15/lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_15_lstm_46_while_identity-sequential_15/lstm_46/while/Identity:output:0"Y
&sequential_15_lstm_46_while_identity_1/sequential_15/lstm_46/while/Identity_1:output:0"Y
&sequential_15_lstm_46_while_identity_2/sequential_15/lstm_46/while/Identity_2:output:0"Y
&sequential_15_lstm_46_while_identity_3/sequential_15/lstm_46/while/Identity_3:output:0"Y
&sequential_15_lstm_46_while_identity_4/sequential_15/lstm_46/while/Identity_4:output:0"Y
&sequential_15_lstm_46_while_identity_5/sequential_15/lstm_46/while/Identity_5:output:0"
Isequential_15_lstm_46_while_lstm_cell_325_biasadd_readvariableop_resourceKsequential_15_lstm_46_while_lstm_cell_325_biasadd_readvariableop_resource_0"
Jsequential_15_lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resourceLsequential_15_lstm_46_while_lstm_cell_325_matmul_1_readvariableop_resource_0"
Hsequential_15_lstm_46_while_lstm_cell_325_matmul_readvariableop_resourceJsequential_15_lstm_46_while_lstm_cell_325_matmul_readvariableop_resource_0"
Asequential_15_lstm_46_while_sequential_15_lstm_46_strided_slice_1Csequential_15_lstm_46_while_sequential_15_lstm_46_strided_slice_1_0"
}sequential_15_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_46_tensorarrayunstack_tensorlistfromtensorsequential_15_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_46_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2
@sequential_15/lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp@sequential_15/lstm_46/while/lstm_cell_325/BiasAdd/ReadVariableOp2
?sequential_15/lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp?sequential_15/lstm_46/while/lstm_cell_325/MatMul/ReadVariableOp2
Asequential_15/lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOpAsequential_15/lstm_46/while/lstm_cell_325/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
§8

D__inference_lstm_47_layer_call_and_return_conditional_losses_1973615

inputs'
lstm_cell_326_1973533:2('
lstm_cell_326_1973535:
(#
lstm_cell_326_1973537:(
identity¢%lstm_cell_326/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskþ
%lstm_cell_326/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_326_1973533lstm_cell_326_1973535lstm_cell_326_1973537*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1973532n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_326_1973533lstm_cell_326_1973535lstm_cell_326_1973537*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1973546*
condR
while_cond_1973545*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
v
NoOpNoOp&^lstm_cell_326/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2N
%lstm_cell_326/StatefulPartitionedCall%lstm_cell_326/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ñ8
Ú
while_body_1976322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_324_matmul_readvariableop_resource_0:	I
6while_lstm_cell_324_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_324_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_324_matmul_readvariableop_resource:	G
4while_lstm_cell_324_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_324_biasadd_readvariableop_resource:	¢*while/lstm_cell_324/BiasAdd/ReadVariableOp¢)while/lstm_cell_324/MatMul/ReadVariableOp¢+while/lstm_cell_324/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_324/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_324_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_324/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_324_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_324/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_324/addAddV2$while/lstm_cell_324/MatMul:product:0&while/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_324_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_324/BiasAddBiasAddwhile/lstm_cell_324/add:z:02while/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_324/splitSplit,while/lstm_cell_324/split/split_dim:output:0$while/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_324/SigmoidSigmoid"while/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_1Sigmoid"while/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mulMul!while/lstm_cell_324/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_324/ReluRelu"while/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_1Mulwhile/lstm_cell_324/Sigmoid:y:0&while/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/add_1AddV2while/lstm_cell_324/mul:z:0while/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_2Sigmoid"while/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_324/Relu_1Reluwhile/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_2Mul!while/lstm_cell_324/Sigmoid_2:y:0(while/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_324/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_324/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_324/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_324/BiasAdd/ReadVariableOp*^while/lstm_cell_324/MatMul/ReadVariableOp,^while/lstm_cell_324/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_324_biasadd_readvariableop_resource5while_lstm_cell_324_biasadd_readvariableop_resource_0"n
4while_lstm_cell_324_matmul_1_readvariableop_resource6while_lstm_cell_324_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_324_matmul_readvariableop_resource4while_lstm_cell_324_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_324/BiasAdd/ReadVariableOp*while/lstm_cell_324/BiasAdd/ReadVariableOp2V
)while/lstm_cell_324/MatMul/ReadVariableOp)while/lstm_cell_324/MatMul/ReadVariableOp2Z
+while/lstm_cell_324/MatMul_1/ReadVariableOp+while/lstm_cell_324/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
ì
õ
/__inference_lstm_cell_326_layer_call_fn_1978030

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1973678o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
Ý³
¾
"__inference__wrapped_model_1972765
lstm_45_inputU
Bsequential_15_lstm_45_lstm_cell_324_matmul_readvariableop_resource:	W
Dsequential_15_lstm_45_lstm_cell_324_matmul_1_readvariableop_resource:	dR
Csequential_15_lstm_45_lstm_cell_324_biasadd_readvariableop_resource:	U
Bsequential_15_lstm_46_lstm_cell_325_matmul_readvariableop_resource:	dÈW
Dsequential_15_lstm_46_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈR
Csequential_15_lstm_46_lstm_cell_325_biasadd_readvariableop_resource:	ÈT
Bsequential_15_lstm_47_lstm_cell_326_matmul_readvariableop_resource:2(V
Dsequential_15_lstm_47_lstm_cell_326_matmul_1_readvariableop_resource:
(Q
Csequential_15_lstm_47_lstm_cell_326_biasadd_readvariableop_resource:(G
5sequential_15_dense_15_matmul_readvariableop_resource:
D
6sequential_15_dense_15_biasadd_readvariableop_resource:
identity¢-sequential_15/dense_15/BiasAdd/ReadVariableOp¢,sequential_15/dense_15/MatMul/ReadVariableOp¢:sequential_15/lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp¢9sequential_15/lstm_45/lstm_cell_324/MatMul/ReadVariableOp¢;sequential_15/lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp¢sequential_15/lstm_45/while¢:sequential_15/lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp¢9sequential_15/lstm_46/lstm_cell_325/MatMul/ReadVariableOp¢;sequential_15/lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp¢sequential_15/lstm_46/while¢:sequential_15/lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp¢9sequential_15/lstm_47/lstm_cell_326/MatMul/ReadVariableOp¢;sequential_15/lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp¢sequential_15/lstm_47/whileX
sequential_15/lstm_45/ShapeShapelstm_45_input*
T0*
_output_shapes
:s
)sequential_15/lstm_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_15/lstm_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_15/lstm_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_15/lstm_45/strided_sliceStridedSlice$sequential_15/lstm_45/Shape:output:02sequential_15/lstm_45/strided_slice/stack:output:04sequential_15/lstm_45/strided_slice/stack_1:output:04sequential_15/lstm_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_15/lstm_45/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dµ
"sequential_15/lstm_45/zeros/packedPack,sequential_15/lstm_45/strided_slice:output:0-sequential_15/lstm_45/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_15/lstm_45/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_15/lstm_45/zerosFill+sequential_15/lstm_45/zeros/packed:output:0*sequential_15/lstm_45/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
&sequential_15/lstm_45/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¹
$sequential_15/lstm_45/zeros_1/packedPack,sequential_15/lstm_45/strided_slice:output:0/sequential_15/lstm_45/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_15/lstm_45/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_15/lstm_45/zeros_1Fill-sequential_15/lstm_45/zeros_1/packed:output:0,sequential_15/lstm_45/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
$sequential_15/lstm_45/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_15/lstm_45/transpose	Transposelstm_45_input-sequential_15/lstm_45/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
sequential_15/lstm_45/Shape_1Shape#sequential_15/lstm_45/transpose:y:0*
T0*
_output_shapes
:u
+sequential_15/lstm_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_15/lstm_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_15/lstm_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_15/lstm_45/strided_slice_1StridedSlice&sequential_15/lstm_45/Shape_1:output:04sequential_15/lstm_45/strided_slice_1/stack:output:06sequential_15/lstm_45/strided_slice_1/stack_1:output:06sequential_15/lstm_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_15/lstm_45/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_15/lstm_45/TensorArrayV2TensorListReserve:sequential_15/lstm_45/TensorArrayV2/element_shape:output:0.sequential_15/lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_15/lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_15/lstm_45/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_15/lstm_45/transpose:y:0Tsequential_15/lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_15/lstm_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_15/lstm_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_15/lstm_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_15/lstm_45/strided_slice_2StridedSlice#sequential_15/lstm_45/transpose:y:04sequential_15/lstm_45/strided_slice_2/stack:output:06sequential_15/lstm_45/strided_slice_2/stack_1:output:06sequential_15/lstm_45/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask½
9sequential_15/lstm_45/lstm_cell_324/MatMul/ReadVariableOpReadVariableOpBsequential_15_lstm_45_lstm_cell_324_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ú
*sequential_15/lstm_45/lstm_cell_324/MatMulMatMul.sequential_15/lstm_45/strided_slice_2:output:0Asequential_15/lstm_45/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
;sequential_15/lstm_45/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOpDsequential_15_lstm_45_lstm_cell_324_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ô
,sequential_15/lstm_45/lstm_cell_324/MatMul_1MatMul$sequential_15/lstm_45/zeros:output:0Csequential_15/lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
'sequential_15/lstm_45/lstm_cell_324/addAddV24sequential_15/lstm_45/lstm_cell_324/MatMul:product:06sequential_15/lstm_45/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
:sequential_15/lstm_45/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOpCsequential_15_lstm_45_lstm_cell_324_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_15/lstm_45/lstm_cell_324/BiasAddBiasAdd+sequential_15/lstm_45/lstm_cell_324/add:z:0Bsequential_15/lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
3sequential_15/lstm_45/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_15/lstm_45/lstm_cell_324/splitSplit<sequential_15/lstm_45/lstm_cell_324/split/split_dim:output:04sequential_15/lstm_45/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
+sequential_15/lstm_45/lstm_cell_324/SigmoidSigmoid2sequential_15/lstm_45/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
-sequential_15/lstm_45/lstm_cell_324/Sigmoid_1Sigmoid2sequential_15/lstm_45/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd»
'sequential_15/lstm_45/lstm_cell_324/mulMul1sequential_15/lstm_45/lstm_cell_324/Sigmoid_1:y:0&sequential_15/lstm_45/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(sequential_15/lstm_45/lstm_cell_324/ReluRelu2sequential_15/lstm_45/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdË
)sequential_15/lstm_45/lstm_cell_324/mul_1Mul/sequential_15/lstm_45/lstm_cell_324/Sigmoid:y:06sequential_15/lstm_45/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
)sequential_15/lstm_45/lstm_cell_324/add_1AddV2+sequential_15/lstm_45/lstm_cell_324/mul:z:0-sequential_15/lstm_45/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
-sequential_15/lstm_45/lstm_cell_324/Sigmoid_2Sigmoid2sequential_15/lstm_45/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
*sequential_15/lstm_45/lstm_cell_324/Relu_1Relu-sequential_15/lstm_45/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÏ
)sequential_15/lstm_45/lstm_cell_324/mul_2Mul1sequential_15/lstm_45/lstm_cell_324/Sigmoid_2:y:08sequential_15/lstm_45/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
3sequential_15/lstm_45/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ú
%sequential_15/lstm_45/TensorArrayV2_1TensorListReserve<sequential_15/lstm_45/TensorArrayV2_1/element_shape:output:0.sequential_15/lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_15/lstm_45/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_15/lstm_45/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_15/lstm_45/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_15/lstm_45/whileWhile1sequential_15/lstm_45/while/loop_counter:output:07sequential_15/lstm_45/while/maximum_iterations:output:0#sequential_15/lstm_45/time:output:0.sequential_15/lstm_45/TensorArrayV2_1:handle:0$sequential_15/lstm_45/zeros:output:0&sequential_15/lstm_45/zeros_1:output:0.sequential_15/lstm_45/strided_slice_1:output:0Msequential_15/lstm_45/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_15_lstm_45_lstm_cell_324_matmul_readvariableop_resourceDsequential_15_lstm_45_lstm_cell_324_matmul_1_readvariableop_resourceCsequential_15_lstm_45_lstm_cell_324_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_15_lstm_45_while_body_1972397*4
cond,R*
(sequential_15_lstm_45_while_cond_1972396*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
Fsequential_15/lstm_45/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
8sequential_15/lstm_45/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_15/lstm_45/while:output:3Osequential_15/lstm_45/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0~
+sequential_15/lstm_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_15/lstm_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_15/lstm_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_15/lstm_45/strided_slice_3StridedSliceAsequential_15/lstm_45/TensorArrayV2Stack/TensorListStack:tensor:04sequential_15/lstm_45/strided_slice_3/stack:output:06sequential_15/lstm_45/strided_slice_3/stack_1:output:06sequential_15/lstm_45/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask{
&sequential_15/lstm_45/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_15/lstm_45/transpose_1	TransposeAsequential_15/lstm_45/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_15/lstm_45/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
sequential_15/lstm_45/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_15/lstm_46/ShapeShape%sequential_15/lstm_45/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_15/lstm_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_15/lstm_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_15/lstm_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_15/lstm_46/strided_sliceStridedSlice$sequential_15/lstm_46/Shape:output:02sequential_15/lstm_46/strided_slice/stack:output:04sequential_15/lstm_46/strided_slice/stack_1:output:04sequential_15/lstm_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_15/lstm_46/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2µ
"sequential_15/lstm_46/zeros/packedPack,sequential_15/lstm_46/strided_slice:output:0-sequential_15/lstm_46/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_15/lstm_46/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_15/lstm_46/zerosFill+sequential_15/lstm_46/zeros/packed:output:0*sequential_15/lstm_46/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
&sequential_15/lstm_46/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¹
$sequential_15/lstm_46/zeros_1/packedPack,sequential_15/lstm_46/strided_slice:output:0/sequential_15/lstm_46/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_15/lstm_46/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_15/lstm_46/zeros_1Fill-sequential_15/lstm_46/zeros_1/packed:output:0,sequential_15/lstm_46/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
$sequential_15/lstm_46/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_15/lstm_46/transpose	Transpose%sequential_15/lstm_45/transpose_1:y:0-sequential_15/lstm_46/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
sequential_15/lstm_46/Shape_1Shape#sequential_15/lstm_46/transpose:y:0*
T0*
_output_shapes
:u
+sequential_15/lstm_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_15/lstm_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_15/lstm_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_15/lstm_46/strided_slice_1StridedSlice&sequential_15/lstm_46/Shape_1:output:04sequential_15/lstm_46/strided_slice_1/stack:output:06sequential_15/lstm_46/strided_slice_1/stack_1:output:06sequential_15/lstm_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_15/lstm_46/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_15/lstm_46/TensorArrayV2TensorListReserve:sequential_15/lstm_46/TensorArrayV2/element_shape:output:0.sequential_15/lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_15/lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¢
=sequential_15/lstm_46/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_15/lstm_46/transpose:y:0Tsequential_15/lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_15/lstm_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_15/lstm_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_15/lstm_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_15/lstm_46/strided_slice_2StridedSlice#sequential_15/lstm_46/transpose:y:04sequential_15/lstm_46/strided_slice_2/stack:output:06sequential_15/lstm_46/strided_slice_2/stack_1:output:06sequential_15/lstm_46/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask½
9sequential_15/lstm_46/lstm_cell_325/MatMul/ReadVariableOpReadVariableOpBsequential_15_lstm_46_lstm_cell_325_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ú
*sequential_15/lstm_46/lstm_cell_325/MatMulMatMul.sequential_15/lstm_46/strided_slice_2:output:0Asequential_15/lstm_46/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÁ
;sequential_15/lstm_46/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOpDsequential_15_lstm_46_lstm_cell_325_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ô
,sequential_15/lstm_46/lstm_cell_325/MatMul_1MatMul$sequential_15/lstm_46/zeros:output:0Csequential_15/lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÑ
'sequential_15/lstm_46/lstm_cell_325/addAddV24sequential_15/lstm_46/lstm_cell_325/MatMul:product:06sequential_15/lstm_46/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ»
:sequential_15/lstm_46/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOpCsequential_15_lstm_46_lstm_cell_325_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_15/lstm_46/lstm_cell_325/BiasAddBiasAdd+sequential_15/lstm_46/lstm_cell_325/add:z:0Bsequential_15/lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈu
3sequential_15/lstm_46/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_15/lstm_46/lstm_cell_325/splitSplit<sequential_15/lstm_46/lstm_cell_325/split/split_dim:output:04sequential_15/lstm_46/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
+sequential_15/lstm_46/lstm_cell_325/SigmoidSigmoid2sequential_15/lstm_46/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
-sequential_15/lstm_46/lstm_cell_325/Sigmoid_1Sigmoid2sequential_15/lstm_46/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2»
'sequential_15/lstm_46/lstm_cell_325/mulMul1sequential_15/lstm_46/lstm_cell_325/Sigmoid_1:y:0&sequential_15/lstm_46/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
(sequential_15/lstm_46/lstm_cell_325/ReluRelu2sequential_15/lstm_46/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ë
)sequential_15/lstm_46/lstm_cell_325/mul_1Mul/sequential_15/lstm_46/lstm_cell_325/Sigmoid:y:06sequential_15/lstm_46/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
)sequential_15/lstm_46/lstm_cell_325/add_1AddV2+sequential_15/lstm_46/lstm_cell_325/mul:z:0-sequential_15/lstm_46/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
-sequential_15/lstm_46/lstm_cell_325/Sigmoid_2Sigmoid2sequential_15/lstm_46/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
*sequential_15/lstm_46/lstm_cell_325/Relu_1Relu-sequential_15/lstm_46/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ï
)sequential_15/lstm_46/lstm_cell_325/mul_2Mul1sequential_15/lstm_46/lstm_cell_325/Sigmoid_2:y:08sequential_15/lstm_46/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
3sequential_15/lstm_46/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ú
%sequential_15/lstm_46/TensorArrayV2_1TensorListReserve<sequential_15/lstm_46/TensorArrayV2_1/element_shape:output:0.sequential_15/lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_15/lstm_46/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_15/lstm_46/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_15/lstm_46/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_15/lstm_46/whileWhile1sequential_15/lstm_46/while/loop_counter:output:07sequential_15/lstm_46/while/maximum_iterations:output:0#sequential_15/lstm_46/time:output:0.sequential_15/lstm_46/TensorArrayV2_1:handle:0$sequential_15/lstm_46/zeros:output:0&sequential_15/lstm_46/zeros_1:output:0.sequential_15/lstm_46/strided_slice_1:output:0Msequential_15/lstm_46/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_15_lstm_46_lstm_cell_325_matmul_readvariableop_resourceDsequential_15_lstm_46_lstm_cell_325_matmul_1_readvariableop_resourceCsequential_15_lstm_46_lstm_cell_325_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_15_lstm_46_while_body_1972536*4
cond,R*
(sequential_15_lstm_46_while_cond_1972535*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
Fsequential_15/lstm_46/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
8sequential_15/lstm_46/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_15/lstm_46/while:output:3Osequential_15/lstm_46/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0~
+sequential_15/lstm_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_15/lstm_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_15/lstm_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_15/lstm_46/strided_slice_3StridedSliceAsequential_15/lstm_46/TensorArrayV2Stack/TensorListStack:tensor:04sequential_15/lstm_46/strided_slice_3/stack:output:06sequential_15/lstm_46/strided_slice_3/stack_1:output:06sequential_15/lstm_46/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask{
&sequential_15/lstm_46/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_15/lstm_46/transpose_1	TransposeAsequential_15/lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_15/lstm_46/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
sequential_15/lstm_46/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_15/lstm_47/ShapeShape%sequential_15/lstm_46/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_15/lstm_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_15/lstm_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_15/lstm_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_15/lstm_47/strided_sliceStridedSlice$sequential_15/lstm_47/Shape:output:02sequential_15/lstm_47/strided_slice/stack:output:04sequential_15/lstm_47/strided_slice/stack_1:output:04sequential_15/lstm_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_15/lstm_47/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
µ
"sequential_15/lstm_47/zeros/packedPack,sequential_15/lstm_47/strided_slice:output:0-sequential_15/lstm_47/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_15/lstm_47/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_15/lstm_47/zerosFill+sequential_15/lstm_47/zeros/packed:output:0*sequential_15/lstm_47/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
&sequential_15/lstm_47/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¹
$sequential_15/lstm_47/zeros_1/packedPack,sequential_15/lstm_47/strided_slice:output:0/sequential_15/lstm_47/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_15/lstm_47/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_15/lstm_47/zeros_1Fill-sequential_15/lstm_47/zeros_1/packed:output:0,sequential_15/lstm_47/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
$sequential_15/lstm_47/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_15/lstm_47/transpose	Transpose%sequential_15/lstm_46/transpose_1:y:0-sequential_15/lstm_47/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
sequential_15/lstm_47/Shape_1Shape#sequential_15/lstm_47/transpose:y:0*
T0*
_output_shapes
:u
+sequential_15/lstm_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_15/lstm_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_15/lstm_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_15/lstm_47/strided_slice_1StridedSlice&sequential_15/lstm_47/Shape_1:output:04sequential_15/lstm_47/strided_slice_1/stack:output:06sequential_15/lstm_47/strided_slice_1/stack_1:output:06sequential_15/lstm_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_15/lstm_47/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_15/lstm_47/TensorArrayV2TensorListReserve:sequential_15/lstm_47/TensorArrayV2/element_shape:output:0.sequential_15/lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_15/lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¢
=sequential_15/lstm_47/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_15/lstm_47/transpose:y:0Tsequential_15/lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_15/lstm_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_15/lstm_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_15/lstm_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_15/lstm_47/strided_slice_2StridedSlice#sequential_15/lstm_47/transpose:y:04sequential_15/lstm_47/strided_slice_2/stack:output:06sequential_15/lstm_47/strided_slice_2/stack_1:output:06sequential_15/lstm_47/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask¼
9sequential_15/lstm_47/lstm_cell_326/MatMul/ReadVariableOpReadVariableOpBsequential_15_lstm_47_lstm_cell_326_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ù
*sequential_15/lstm_47/lstm_cell_326/MatMulMatMul.sequential_15/lstm_47/strided_slice_2:output:0Asequential_15/lstm_47/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(À
;sequential_15/lstm_47/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOpDsequential_15_lstm_47_lstm_cell_326_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ó
,sequential_15/lstm_47/lstm_cell_326/MatMul_1MatMul$sequential_15/lstm_47/zeros:output:0Csequential_15/lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ð
'sequential_15/lstm_47/lstm_cell_326/addAddV24sequential_15/lstm_47/lstm_cell_326/MatMul:product:06sequential_15/lstm_47/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(º
:sequential_15/lstm_47/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOpCsequential_15_lstm_47_lstm_cell_326_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_15/lstm_47/lstm_cell_326/BiasAddBiasAdd+sequential_15/lstm_47/lstm_cell_326/add:z:0Bsequential_15/lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(u
3sequential_15/lstm_47/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential_15/lstm_47/lstm_cell_326/splitSplit<sequential_15/lstm_47/lstm_cell_326/split/split_dim:output:04sequential_15/lstm_47/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
+sequential_15/lstm_47/lstm_cell_326/SigmoidSigmoid2sequential_15/lstm_47/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential_15/lstm_47/lstm_cell_326/Sigmoid_1Sigmoid2sequential_15/lstm_47/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
»
'sequential_15/lstm_47/lstm_cell_326/mulMul1sequential_15/lstm_47/lstm_cell_326/Sigmoid_1:y:0&sequential_15/lstm_47/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(sequential_15/lstm_47/lstm_cell_326/ReluRelu2sequential_15/lstm_47/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ë
)sequential_15/lstm_47/lstm_cell_326/mul_1Mul/sequential_15/lstm_47/lstm_cell_326/Sigmoid:y:06sequential_15/lstm_47/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
)sequential_15/lstm_47/lstm_cell_326/add_1AddV2+sequential_15/lstm_47/lstm_cell_326/mul:z:0-sequential_15/lstm_47/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential_15/lstm_47/lstm_cell_326/Sigmoid_2Sigmoid2sequential_15/lstm_47/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*sequential_15/lstm_47/lstm_cell_326/Relu_1Relu-sequential_15/lstm_47/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ï
)sequential_15/lstm_47/lstm_cell_326/mul_2Mul1sequential_15/lstm_47/lstm_cell_326/Sigmoid_2:y:08sequential_15/lstm_47/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

3sequential_15/lstm_47/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ú
%sequential_15/lstm_47/TensorArrayV2_1TensorListReserve<sequential_15/lstm_47/TensorArrayV2_1/element_shape:output:0.sequential_15/lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_15/lstm_47/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_15/lstm_47/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_15/lstm_47/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
sequential_15/lstm_47/whileWhile1sequential_15/lstm_47/while/loop_counter:output:07sequential_15/lstm_47/while/maximum_iterations:output:0#sequential_15/lstm_47/time:output:0.sequential_15/lstm_47/TensorArrayV2_1:handle:0$sequential_15/lstm_47/zeros:output:0&sequential_15/lstm_47/zeros_1:output:0.sequential_15/lstm_47/strided_slice_1:output:0Msequential_15/lstm_47/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_15_lstm_47_lstm_cell_326_matmul_readvariableop_resourceDsequential_15_lstm_47_lstm_cell_326_matmul_1_readvariableop_resourceCsequential_15_lstm_47_lstm_cell_326_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_15_lstm_47_while_body_1972675*4
cond,R*
(sequential_15_lstm_47_while_cond_1972674*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
Fsequential_15/lstm_47/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
8sequential_15/lstm_47/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_15/lstm_47/while:output:3Osequential_15/lstm_47/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0~
+sequential_15/lstm_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_15/lstm_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_15/lstm_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_15/lstm_47/strided_slice_3StridedSliceAsequential_15/lstm_47/TensorArrayV2Stack/TensorListStack:tensor:04sequential_15/lstm_47/strided_slice_3/stack:output:06sequential_15/lstm_47/strided_slice_3/stack_1:output:06sequential_15/lstm_47/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask{
&sequential_15/lstm_47/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_15/lstm_47/transpose_1	TransposeAsequential_15/lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_15/lstm_47/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q
sequential_15/lstm_47/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¢
,sequential_15/dense_15/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_15_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0¿
sequential_15/dense_15/MatMulMatMul.sequential_15/lstm_47/strided_slice_3:output:04sequential_15/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_15/dense_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_15/dense_15/BiasAddBiasAdd'sequential_15/dense_15/MatMul:product:05sequential_15/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity'sequential_15/dense_15/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
NoOpNoOp.^sequential_15/dense_15/BiasAdd/ReadVariableOp-^sequential_15/dense_15/MatMul/ReadVariableOp;^sequential_15/lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp:^sequential_15/lstm_45/lstm_cell_324/MatMul/ReadVariableOp<^sequential_15/lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp^sequential_15/lstm_45/while;^sequential_15/lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp:^sequential_15/lstm_46/lstm_cell_325/MatMul/ReadVariableOp<^sequential_15/lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp^sequential_15/lstm_46/while;^sequential_15/lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp:^sequential_15/lstm_47/lstm_cell_326/MatMul/ReadVariableOp<^sequential_15/lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp^sequential_15/lstm_47/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2^
-sequential_15/dense_15/BiasAdd/ReadVariableOp-sequential_15/dense_15/BiasAdd/ReadVariableOp2\
,sequential_15/dense_15/MatMul/ReadVariableOp,sequential_15/dense_15/MatMul/ReadVariableOp2x
:sequential_15/lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp:sequential_15/lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp2v
9sequential_15/lstm_45/lstm_cell_324/MatMul/ReadVariableOp9sequential_15/lstm_45/lstm_cell_324/MatMul/ReadVariableOp2z
;sequential_15/lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp;sequential_15/lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp2:
sequential_15/lstm_45/whilesequential_15/lstm_45/while2x
:sequential_15/lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp:sequential_15/lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp2v
9sequential_15/lstm_46/lstm_cell_325/MatMul/ReadVariableOp9sequential_15/lstm_46/lstm_cell_325/MatMul/ReadVariableOp2z
;sequential_15/lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp;sequential_15/lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp2:
sequential_15/lstm_46/whilesequential_15/lstm_46/while2x
:sequential_15/lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp:sequential_15/lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp2v
9sequential_15/lstm_47/lstm_cell_326/MatMul/ReadVariableOp9sequential_15/lstm_47/lstm_cell_326/MatMul/ReadVariableOp2z
;sequential_15/lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp;sequential_15/lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp2:
sequential_15/lstm_47/whilesequential_15/lstm_47/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_45_input
ß

J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1977996

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
K
¡
D__inference_lstm_47_layer_call_and_return_conditional_losses_1977352
inputs_0>
,lstm_cell_326_matmul_readvariableop_resource:2(@
.lstm_cell_326_matmul_1_readvariableop_resource:
(;
-lstm_cell_326_biasadd_readvariableop_resource:(
identity¢$lstm_cell_326/BiasAdd/ReadVariableOp¢#lstm_cell_326/MatMul/ReadVariableOp¢%lstm_cell_326/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_326/MatMul/ReadVariableOpReadVariableOp,lstm_cell_326_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_326/MatMulMatMulstrided_slice_2:output:0+lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_326_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_326/MatMul_1MatMulzeros:output:0-lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_326/addAddV2lstm_cell_326/MatMul:product:0 lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_326_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_326/BiasAddBiasAddlstm_cell_326/add:z:0,lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_326/splitSplit&lstm_cell_326/split/split_dim:output:0lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_326/SigmoidSigmoidlstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_1Sigmoidlstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_326/mulMullstm_cell_326/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_326/ReluRelulstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_1Mullstm_cell_326/Sigmoid:y:0 lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_326/add_1AddV2lstm_cell_326/mul:z:0lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_2Sigmoidlstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_326/Relu_1Relulstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_2Mullstm_cell_326/Sigmoid_2:y:0"lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_326_matmul_readvariableop_resource.lstm_cell_326_matmul_1_readvariableop_resource-lstm_cell_326_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1977268*
condR
while_cond_1977267*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_326/BiasAdd/ReadVariableOp$^lstm_cell_326/MatMul/ReadVariableOp&^lstm_cell_326/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_326/BiasAdd/ReadVariableOp$lstm_cell_326/BiasAdd/ReadVariableOp2J
#lstm_cell_326/MatMul/ReadVariableOp#lstm_cell_326/MatMul/ReadVariableOp2N
%lstm_cell_326/MatMul_1/ReadVariableOp%lstm_cell_326/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
#
ë
while_body_1973737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_326_1973761_0:2(/
while_lstm_cell_326_1973763_0:
(+
while_lstm_cell_326_1973765_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_326_1973761:2(-
while_lstm_cell_326_1973763:
()
while_lstm_cell_326_1973765:(¢+while/lstm_cell_326/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¼
+while/lstm_cell_326/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_326_1973761_0while_lstm_cell_326_1973763_0while_lstm_cell_326_1973765_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1973678Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_326/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_326/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity4while/lstm_cell_326/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z

while/NoOpNoOp,^while/lstm_cell_326/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_326_1973761while_lstm_cell_326_1973761_0"<
while_lstm_cell_326_1973763while_lstm_cell_326_1973763_0"<
while_lstm_cell_326_1973765while_lstm_cell_326_1973765_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2Z
+while/lstm_cell_326/StatefulPartitionedCall+while/lstm_cell_326/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
×

J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1973182

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates
Õ

J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1978062

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
«
¸
)__inference_lstm_46_layer_call_fn_1976571
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_46_layer_call_and_return_conditional_losses_1973456|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
§8

D__inference_lstm_47_layer_call_and_return_conditional_losses_1973806

inputs'
lstm_cell_326_1973724:2('
lstm_cell_326_1973726:
(#
lstm_cell_326_1973728:(
identity¢%lstm_cell_326/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskþ
%lstm_cell_326/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_326_1973724lstm_cell_326_1973726lstm_cell_326_1973728*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1973678n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_326_1973724lstm_cell_326_1973726lstm_cell_326_1973728*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1973737*
condR
while_cond_1973736*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
v
NoOpNoOp&^lstm_cell_326/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2N
%lstm_cell_326/StatefulPartitionedCall%lstm_cell_326/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ï
ø
/__inference_lstm_cell_325_layer_call_fn_1977915

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1973182o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1


è
lstm_46_while_cond_1975276,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3.
*lstm_46_while_less_lstm_46_strided_slice_1E
Alstm_46_while_lstm_46_while_cond_1975276___redundant_placeholder0E
Alstm_46_while_lstm_46_while_cond_1975276___redundant_placeholder1E
Alstm_46_while_lstm_46_while_cond_1975276___redundant_placeholder2E
Alstm_46_while_lstm_46_while_cond_1975276___redundant_placeholder3
lstm_46_while_identity

lstm_46/while/LessLesslstm_46_while_placeholder*lstm_46_while_less_lstm_46_strided_slice_1*
T0*
_output_shapes
: [
lstm_46/while/IdentityIdentitylstm_46/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_46_while_identitylstm_46/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
áJ
¢
D__inference_lstm_46_layer_call_and_return_conditional_losses_1974645

inputs?
,lstm_cell_325_matmul_readvariableop_resource:	dÈA
.lstm_cell_325_matmul_1_readvariableop_resource:	2È<
-lstm_cell_325_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_325/BiasAdd/ReadVariableOp¢#lstm_cell_325/MatMul/ReadVariableOp¢%lstm_cell_325/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_325/MatMul/ReadVariableOpReadVariableOp,lstm_cell_325_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_325/MatMulMatMulstrided_slice_2:output:0+lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_325_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_325/MatMul_1MatMulzeros:output:0-lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_325/addAddV2lstm_cell_325/MatMul:product:0 lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_325_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_325/BiasAddBiasAddlstm_cell_325/add:z:0,lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_325/splitSplit&lstm_cell_325/split/split_dim:output:0lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_325/SigmoidSigmoidlstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_1Sigmoidlstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_325/mulMullstm_cell_325/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_325/ReluRelulstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_1Mullstm_cell_325/Sigmoid:y:0 lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_325/add_1AddV2lstm_cell_325/mul:z:0lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_2Sigmoidlstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_325/Relu_1Relulstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_2Mullstm_cell_325/Sigmoid_2:y:0"lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_325_matmul_readvariableop_resource.lstm_cell_325_matmul_1_readvariableop_resource-lstm_cell_325_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1974561*
condR
while_cond_1974560*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_325/BiasAdd/ReadVariableOp$^lstm_cell_325/MatMul/ReadVariableOp&^lstm_cell_325/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_325/BiasAdd/ReadVariableOp$lstm_cell_325/BiasAdd/ReadVariableOp2J
#lstm_cell_325/MatMul/ReadVariableOp#lstm_cell_325/MatMul/ReadVariableOp2N
%lstm_cell_325/MatMul_1/ReadVariableOp%lstm_cell_325/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ï
ø
/__inference_lstm_cell_325_layer_call_fn_1977932

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1973328o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1


è
lstm_45_while_cond_1975564,
(lstm_45_while_lstm_45_while_loop_counter2
.lstm_45_while_lstm_45_while_maximum_iterations
lstm_45_while_placeholder
lstm_45_while_placeholder_1
lstm_45_while_placeholder_2
lstm_45_while_placeholder_3.
*lstm_45_while_less_lstm_45_strided_slice_1E
Alstm_45_while_lstm_45_while_cond_1975564___redundant_placeholder0E
Alstm_45_while_lstm_45_while_cond_1975564___redundant_placeholder1E
Alstm_45_while_lstm_45_while_cond_1975564___redundant_placeholder2E
Alstm_45_while_lstm_45_while_cond_1975564___redundant_placeholder3
lstm_45_while_identity

lstm_45/while/LessLesslstm_45_while_placeholder*lstm_45_while_less_lstm_45_strided_slice_1*
T0*
_output_shapes
: [
lstm_45/while/IdentityIdentitylstm_45/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_45_while_identitylstm_45/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ñ

¢
/__inference_sequential_15_layer_call_fn_1974930
lstm_45_input
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
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCalllstm_45_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974878o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_45_input
º
È
while_cond_1973879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1973879___redundant_placeholder05
1while_while_cond_1973879___redundant_placeholder15
1while_while_cond_1973879___redundant_placeholder25
1while_while_cond_1973879___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ÜJ

D__inference_lstm_47_layer_call_and_return_conditional_losses_1974264

inputs>
,lstm_cell_326_matmul_readvariableop_resource:2(@
.lstm_cell_326_matmul_1_readvariableop_resource:
(;
-lstm_cell_326_biasadd_readvariableop_resource:(
identity¢$lstm_cell_326/BiasAdd/ReadVariableOp¢#lstm_cell_326/MatMul/ReadVariableOp¢%lstm_cell_326/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_326/MatMul/ReadVariableOpReadVariableOp,lstm_cell_326_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_326/MatMulMatMulstrided_slice_2:output:0+lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_326_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_326/MatMul_1MatMulzeros:output:0-lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_326/addAddV2lstm_cell_326/MatMul:product:0 lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_326_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_326/BiasAddBiasAddlstm_cell_326/add:z:0,lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_326/splitSplit&lstm_cell_326/split/split_dim:output:0lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_326/SigmoidSigmoidlstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_1Sigmoidlstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_326/mulMullstm_cell_326/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_326/ReluRelulstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_1Mullstm_cell_326/Sigmoid:y:0 lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_326/add_1AddV2lstm_cell_326/mul:z:0lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_2Sigmoidlstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_326/Relu_1Relulstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_2Mullstm_cell_326/Sigmoid_2:y:0"lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_326_matmul_readvariableop_resource.lstm_cell_326_matmul_1_readvariableop_resource-lstm_cell_326_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1974180*
condR
while_cond_1974179*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_326/BiasAdd/ReadVariableOp$^lstm_cell_326/MatMul/ReadVariableOp&^lstm_cell_326/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_326/BiasAdd/ReadVariableOp$lstm_cell_326/BiasAdd/ReadVariableOp2J
#lstm_cell_326/MatMul/ReadVariableOp#lstm_cell_326/MatMul/ReadVariableOp2N
%lstm_cell_326/MatMul_1/ReadVariableOp%lstm_cell_326/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
È
while_cond_1976464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1976464___redundant_placeholder05
1while_while_cond_1976464___redundant_placeholder15
1while_while_cond_1976464___redundant_placeholder25
1while_while_cond_1976464___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
«
¸
)__inference_lstm_45_layer_call_fn_1975955
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_1973106|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ï
ø
/__inference_lstm_cell_324_layer_call_fn_1977834

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1972978o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
È	
ö
E__inference_dense_15_layer_call_and_return_conditional_losses_1974282

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ö
³
)__inference_lstm_47_layer_call_fn_1977198

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_47_layer_call_and_return_conditional_losses_1974264o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

ë
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974289

inputs"
lstm_45_1973965:	"
lstm_45_1973967:	d
lstm_45_1973969:	"
lstm_46_1974115:	dÈ"
lstm_46_1974117:	2È
lstm_46_1974119:	È!
lstm_47_1974265:2(!
lstm_47_1974267:
(
lstm_47_1974269:("
dense_15_1974283:

dense_15_1974285:
identity¢ dense_15/StatefulPartitionedCall¢lstm_45/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall
lstm_45/StatefulPartitionedCallStatefulPartitionedCallinputslstm_45_1973965lstm_45_1973967lstm_45_1973969*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_1973964¨
lstm_46/StatefulPartitionedCallStatefulPartitionedCall(lstm_45/StatefulPartitionedCall:output:0lstm_46_1974115lstm_46_1974117lstm_46_1974119*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_46_layer_call_and_return_conditional_losses_1974114¤
lstm_47/StatefulPartitionedCallStatefulPartitionedCall(lstm_46/StatefulPartitionedCall:output:0lstm_47_1974265lstm_47_1974267lstm_47_1974269*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_47_layer_call_and_return_conditional_losses_1974264
 dense_15/StatefulPartitionedCallStatefulPartitionedCall(lstm_47/StatefulPartitionedCall:output:0dense_15_1974283dense_15_1974285*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_1974282x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_15/StatefulPartitionedCall ^lstm_45/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2B
lstm_45/StatefulPartitionedCalllstm_45/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1977866

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
ß

J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1977964

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
K
¡
D__inference_lstm_47_layer_call_and_return_conditional_losses_1977495
inputs_0>
,lstm_cell_326_matmul_readvariableop_resource:2(@
.lstm_cell_326_matmul_1_readvariableop_resource:
(;
-lstm_cell_326_biasadd_readvariableop_resource:(
identity¢$lstm_cell_326/BiasAdd/ReadVariableOp¢#lstm_cell_326/MatMul/ReadVariableOp¢%lstm_cell_326/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_326/MatMul/ReadVariableOpReadVariableOp,lstm_cell_326_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_326/MatMulMatMulstrided_slice_2:output:0+lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_326_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_326/MatMul_1MatMulzeros:output:0-lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_326/addAddV2lstm_cell_326/MatMul:product:0 lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_326_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_326/BiasAddBiasAddlstm_cell_326/add:z:0,lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_326/splitSplit&lstm_cell_326/split/split_dim:output:0lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_326/SigmoidSigmoidlstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_1Sigmoidlstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_326/mulMullstm_cell_326/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_326/ReluRelulstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_1Mullstm_cell_326/Sigmoid:y:0 lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_326/add_1AddV2lstm_cell_326/mul:z:0lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_2Sigmoidlstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_326/Relu_1Relulstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_2Mullstm_cell_326/Sigmoid_2:y:0"lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_326_matmul_readvariableop_resource.lstm_cell_326_matmul_1_readvariableop_resource-lstm_cell_326_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1977411*
condR
while_cond_1977410*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_326/BiasAdd/ReadVariableOp$^lstm_cell_326/MatMul/ReadVariableOp&^lstm_cell_326/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_326/BiasAdd/ReadVariableOp$lstm_cell_326/BiasAdd/ReadVariableOp2J
#lstm_cell_326/MatMul/ReadVariableOp#lstm_cell_326/MatMul/ReadVariableOp2N
%lstm_cell_326/MatMul_1/ReadVariableOp%lstm_cell_326/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Ü


/__inference_sequential_15_layer_call_fn_1975079

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
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974878o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ8
Ú
while_body_1976795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_325_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_325_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_325_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_325_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_325_biasadd_readvariableop_resource:	È¢*while/lstm_cell_325/BiasAdd/ReadVariableOp¢)while/lstm_cell_325/MatMul/ReadVariableOp¢+while/lstm_cell_325/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_325/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_325_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_325/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_325_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_325/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_325/addAddV2$while/lstm_cell_325/MatMul:product:0&while/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_325_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_325/BiasAddBiasAddwhile/lstm_cell_325/add:z:02while/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_325/splitSplit,while/lstm_cell_325/split/split_dim:output:0$while/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_325/SigmoidSigmoid"while/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_1Sigmoid"while/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mulMul!while/lstm_cell_325/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_325/ReluRelu"while/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_1Mulwhile/lstm_cell_325/Sigmoid:y:0&while/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/add_1AddV2while/lstm_cell_325/mul:z:0while/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_2Sigmoid"while/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_325/Relu_1Reluwhile/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_2Mul!while/lstm_cell_325/Sigmoid_2:y:0(while/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_325/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_325/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_325/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_325/BiasAdd/ReadVariableOp*^while/lstm_cell_325/MatMul/ReadVariableOp,^while/lstm_cell_325/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_325_biasadd_readvariableop_resource5while_lstm_cell_325_biasadd_readvariableop_resource_0"n
4while_lstm_cell_325_matmul_1_readvariableop_resource6while_lstm_cell_325_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_325_matmul_readvariableop_resource4while_lstm_cell_325_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_325/BiasAdd/ReadVariableOp*while/lstm_cell_325/BiasAdd/ReadVariableOp2V
)while/lstm_cell_325/MatMul/ReadVariableOp)while/lstm_cell_325/MatMul/ReadVariableOp2Z
+while/lstm_cell_325/MatMul_1/ReadVariableOp+while/lstm_cell_325/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
®8

D__inference_lstm_46_layer_call_and_return_conditional_losses_1973456

inputs(
lstm_cell_325_1973374:	dÈ(
lstm_cell_325_1973376:	2È$
lstm_cell_325_1973378:	È
identity¢%lstm_cell_325/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskþ
%lstm_cell_325/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_325_1973374lstm_cell_325_1973376lstm_cell_325_1973378*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1973328n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_325_1973374lstm_cell_325_1973376lstm_cell_325_1973378*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1973387*
condR
while_cond_1973386*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2v
NoOpNoOp&^lstm_cell_325/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2N
%lstm_cell_325/StatefulPartitionedCall%lstm_cell_325/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ü£
à
#__inference__traced_restore_1978367
file_prefix2
 assignvariableop_dense_15_kernel:
.
 assignvariableop_1_dense_15_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_45_lstm_cell_45_kernel:	K
8assignvariableop_8_lstm_45_lstm_cell_45_recurrent_kernel:	d;
,assignvariableop_9_lstm_45_lstm_cell_45_bias:	B
/assignvariableop_10_lstm_46_lstm_cell_46_kernel:	dÈL
9assignvariableop_11_lstm_46_lstm_cell_46_recurrent_kernel:	2È<
-assignvariableop_12_lstm_46_lstm_cell_46_bias:	ÈA
/assignvariableop_13_lstm_47_lstm_cell_47_kernel:2(K
9assignvariableop_14_lstm_47_lstm_cell_47_recurrent_kernel:
(;
-assignvariableop_15_lstm_47_lstm_cell_47_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_15_kernel_m:
6
(assignvariableop_19_adam_dense_15_bias_m:I
6assignvariableop_20_adam_lstm_45_lstm_cell_45_kernel_m:	S
@assignvariableop_21_adam_lstm_45_lstm_cell_45_recurrent_kernel_m:	dC
4assignvariableop_22_adam_lstm_45_lstm_cell_45_bias_m:	I
6assignvariableop_23_adam_lstm_46_lstm_cell_46_kernel_m:	dÈS
@assignvariableop_24_adam_lstm_46_lstm_cell_46_recurrent_kernel_m:	2ÈC
4assignvariableop_25_adam_lstm_46_lstm_cell_46_bias_m:	ÈH
6assignvariableop_26_adam_lstm_47_lstm_cell_47_kernel_m:2(R
@assignvariableop_27_adam_lstm_47_lstm_cell_47_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_47_lstm_cell_47_bias_m:(<
*assignvariableop_29_adam_dense_15_kernel_v:
6
(assignvariableop_30_adam_dense_15_bias_v:I
6assignvariableop_31_adam_lstm_45_lstm_cell_45_kernel_v:	S
@assignvariableop_32_adam_lstm_45_lstm_cell_45_recurrent_kernel_v:	dC
4assignvariableop_33_adam_lstm_45_lstm_cell_45_bias_v:	I
6assignvariableop_34_adam_lstm_46_lstm_cell_46_kernel_v:	dÈS
@assignvariableop_35_adam_lstm_46_lstm_cell_46_recurrent_kernel_v:	2ÈC
4assignvariableop_36_adam_lstm_46_lstm_cell_46_bias_v:	ÈH
6assignvariableop_37_adam_lstm_47_lstm_cell_47_kernel_v:2(R
@assignvariableop_38_adam_lstm_47_lstm_cell_47_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_47_lstm_cell_47_bias_v:(
identity_41¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9È
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
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*º
_output_shapes§
¤:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_15_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_15_biasIdentity_1:output:0"/device:CPU:0*
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
:
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_45_lstm_cell_45_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_45_lstm_cell_45_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_45_lstm_cell_45_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_46_lstm_cell_46_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_46_lstm_cell_46_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_46_lstm_cell_46_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_47_lstm_cell_47_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_47_lstm_cell_47_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_47_lstm_cell_47_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_15_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_15_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_45_lstm_cell_45_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_45_lstm_cell_45_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_45_lstm_cell_45_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_46_lstm_cell_46_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_46_lstm_cell_46_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_46_lstm_cell_46_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_47_lstm_cell_47_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_47_lstm_cell_47_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_47_lstm_cell_47_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_15_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_15_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_45_lstm_cell_45_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_45_lstm_cell_45_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_45_lstm_cell_45_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_46_lstm_cell_46_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_46_lstm_cell_46_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_46_lstm_cell_46_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_47_lstm_cell_47_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_47_lstm_cell_47_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_47_lstm_cell_47_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¿
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: ¬
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
áJ
¢
D__inference_lstm_46_layer_call_and_return_conditional_losses_1977165

inputs?
,lstm_cell_325_matmul_readvariableop_resource:	dÈA
.lstm_cell_325_matmul_1_readvariableop_resource:	2È<
-lstm_cell_325_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_325/BiasAdd/ReadVariableOp¢#lstm_cell_325/MatMul/ReadVariableOp¢%lstm_cell_325/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_325/MatMul/ReadVariableOpReadVariableOp,lstm_cell_325_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_325/MatMulMatMulstrided_slice_2:output:0+lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_325_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_325/MatMul_1MatMulzeros:output:0-lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_325/addAddV2lstm_cell_325/MatMul:product:0 lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_325_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_325/BiasAddBiasAddlstm_cell_325/add:z:0,lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_325/splitSplit&lstm_cell_325/split/split_dim:output:0lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_325/SigmoidSigmoidlstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_1Sigmoidlstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_325/mulMullstm_cell_325/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_325/ReluRelulstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_1Mullstm_cell_325/Sigmoid:y:0 lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_325/add_1AddV2lstm_cell_325/mul:z:0lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_2Sigmoidlstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_325/Relu_1Relulstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_2Mullstm_cell_325/Sigmoid_2:y:0"lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_325_matmul_readvariableop_resource.lstm_cell_325_matmul_1_readvariableop_resource-lstm_cell_325_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1977081*
condR
while_cond_1977080*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_325/BiasAdd/ReadVariableOp$^lstm_cell_325/MatMul/ReadVariableOp&^lstm_cell_325/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_325/BiasAdd/ReadVariableOp$lstm_cell_325/BiasAdd/ReadVariableOp2J
#lstm_cell_325/MatMul/ReadVariableOp#lstm_cell_325/MatMul/ReadVariableOp2N
%lstm_cell_325/MatMul_1/ReadVariableOp%lstm_cell_325/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
#
ñ
while_body_1973037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_324_1973061_0:	0
while_lstm_cell_324_1973063_0:	d,
while_lstm_cell_324_1973065_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_324_1973061:	.
while_lstm_cell_324_1973063:	d*
while_lstm_cell_324_1973065:	¢+while/lstm_cell_324/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¼
+while/lstm_cell_324/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_324_1973061_0while_lstm_cell_324_1973063_0while_lstm_cell_324_1973065_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1972978Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_324/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_324/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity4while/lstm_cell_324/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz

while/NoOpNoOp,^while/lstm_cell_324/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_324_1973061while_lstm_cell_324_1973061_0"<
while_lstm_cell_324_1973063while_lstm_cell_324_1973063_0"<
while_lstm_cell_324_1973065while_lstm_cell_324_1973065_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2Z
+while/lstm_cell_324/StatefulPartitionedCall+while/lstm_cell_324/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
£

(sequential_15_lstm_46_while_cond_1972535H
Dsequential_15_lstm_46_while_sequential_15_lstm_46_while_loop_counterN
Jsequential_15_lstm_46_while_sequential_15_lstm_46_while_maximum_iterations+
'sequential_15_lstm_46_while_placeholder-
)sequential_15_lstm_46_while_placeholder_1-
)sequential_15_lstm_46_while_placeholder_2-
)sequential_15_lstm_46_while_placeholder_3J
Fsequential_15_lstm_46_while_less_sequential_15_lstm_46_strided_slice_1a
]sequential_15_lstm_46_while_sequential_15_lstm_46_while_cond_1972535___redundant_placeholder0a
]sequential_15_lstm_46_while_sequential_15_lstm_46_while_cond_1972535___redundant_placeholder1a
]sequential_15_lstm_46_while_sequential_15_lstm_46_while_cond_1972535___redundant_placeholder2a
]sequential_15_lstm_46_while_sequential_15_lstm_46_while_cond_1972535___redundant_placeholder3(
$sequential_15_lstm_46_while_identity
º
 sequential_15/lstm_46/while/LessLess'sequential_15_lstm_46_while_placeholderFsequential_15_lstm_46_while_less_sequential_15_lstm_46_strided_slice_1*
T0*
_output_shapes
: w
$sequential_15/lstm_46/while/IdentityIdentity$sequential_15/lstm_46/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_15_lstm_46_while_identity-sequential_15/lstm_46/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ÜJ

D__inference_lstm_47_layer_call_and_return_conditional_losses_1977781

inputs>
,lstm_cell_326_matmul_readvariableop_resource:2(@
.lstm_cell_326_matmul_1_readvariableop_resource:
(;
-lstm_cell_326_biasadd_readvariableop_resource:(
identity¢$lstm_cell_326/BiasAdd/ReadVariableOp¢#lstm_cell_326/MatMul/ReadVariableOp¢%lstm_cell_326/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_326/MatMul/ReadVariableOpReadVariableOp,lstm_cell_326_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_326/MatMulMatMulstrided_slice_2:output:0+lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_326_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_326/MatMul_1MatMulzeros:output:0-lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_326/addAddV2lstm_cell_326/MatMul:product:0 lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_326_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_326/BiasAddBiasAddlstm_cell_326/add:z:0,lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_326/splitSplit&lstm_cell_326/split/split_dim:output:0lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_326/SigmoidSigmoidlstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_1Sigmoidlstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_326/mulMullstm_cell_326/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_326/ReluRelulstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_1Mullstm_cell_326/Sigmoid:y:0 lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_326/add_1AddV2lstm_cell_326/mul:z:0lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_2Sigmoidlstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_326/Relu_1Relulstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_2Mullstm_cell_326/Sigmoid_2:y:0"lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_326_matmul_readvariableop_resource.lstm_cell_326_matmul_1_readvariableop_resource-lstm_cell_326_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1977697*
condR
while_cond_1977696*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_326/BiasAdd/ReadVariableOp$^lstm_cell_326/MatMul/ReadVariableOp&^lstm_cell_326/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_326/BiasAdd/ReadVariableOp$lstm_cell_326/BiasAdd/ReadVariableOp2J
#lstm_cell_326/MatMul/ReadVariableOp#lstm_cell_326/MatMul/ReadVariableOp2N
%lstm_cell_326/MatMul_1/ReadVariableOp%lstm_cell_326/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ï
ø
/__inference_lstm_cell_324_layer_call_fn_1977817

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1972832o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
®8

D__inference_lstm_45_layer_call_and_return_conditional_losses_1972915

inputs(
lstm_cell_324_1972833:	(
lstm_cell_324_1972835:	d$
lstm_cell_324_1972837:	
identity¢%lstm_cell_324/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskþ
%lstm_cell_324/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_324_1972833lstm_cell_324_1972835lstm_cell_324_1972837*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1972832n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_324_1972833lstm_cell_324_1972835lstm_cell_324_1972837*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1972846*
condR
while_cond_1972845*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdv
NoOpNoOp&^lstm_cell_324/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_324/StatefulPartitionedCall%lstm_cell_324/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
öV
é
 __inference__traced_save_1978237
file_prefix.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_45_lstm_cell_45_kernel_read_readvariableopD
@savev2_lstm_45_lstm_cell_45_recurrent_kernel_read_readvariableop8
4savev2_lstm_45_lstm_cell_45_bias_read_readvariableop:
6savev2_lstm_46_lstm_cell_46_kernel_read_readvariableopD
@savev2_lstm_46_lstm_cell_46_recurrent_kernel_read_readvariableop8
4savev2_lstm_46_lstm_cell_46_bias_read_readvariableop:
6savev2_lstm_47_lstm_cell_47_kernel_read_readvariableopD
@savev2_lstm_47_lstm_cell_47_recurrent_kernel_read_readvariableop8
4savev2_lstm_47_lstm_cell_47_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableopA
=savev2_adam_lstm_45_lstm_cell_45_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_45_lstm_cell_45_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_45_lstm_cell_45_bias_m_read_readvariableopA
=savev2_adam_lstm_46_lstm_cell_46_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_46_lstm_cell_46_bias_m_read_readvariableopA
=savev2_adam_lstm_47_lstm_cell_47_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_47_lstm_cell_47_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableopA
=savev2_adam_lstm_45_lstm_cell_45_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_45_lstm_cell_45_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_45_lstm_cell_45_bias_v_read_readvariableopA
=savev2_adam_lstm_46_lstm_cell_46_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_46_lstm_cell_46_bias_v_read_readvariableopA
=savev2_adam_lstm_47_lstm_cell_47_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_47_lstm_cell_47_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
: Å
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*î
valueäBá)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¿
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ´
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_45_lstm_cell_45_kernel_read_readvariableop@savev2_lstm_45_lstm_cell_45_recurrent_kernel_read_readvariableop4savev2_lstm_45_lstm_cell_45_bias_read_readvariableop6savev2_lstm_46_lstm_cell_46_kernel_read_readvariableop@savev2_lstm_46_lstm_cell_46_recurrent_kernel_read_readvariableop4savev2_lstm_46_lstm_cell_46_bias_read_readvariableop6savev2_lstm_47_lstm_cell_47_kernel_read_readvariableop@savev2_lstm_47_lstm_cell_47_recurrent_kernel_read_readvariableop4savev2_lstm_47_lstm_cell_47_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop=savev2_adam_lstm_45_lstm_cell_45_kernel_m_read_readvariableopGsavev2_adam_lstm_45_lstm_cell_45_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_45_lstm_cell_45_bias_m_read_readvariableop=savev2_adam_lstm_46_lstm_cell_46_kernel_m_read_readvariableopGsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_46_lstm_cell_46_bias_m_read_readvariableop=savev2_adam_lstm_47_lstm_cell_47_kernel_m_read_readvariableopGsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_47_lstm_cell_47_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop=savev2_adam_lstm_45_lstm_cell_45_kernel_v_read_readvariableopGsavev2_adam_lstm_45_lstm_cell_45_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_45_lstm_cell_45_bias_v_read_readvariableop=savev2_adam_lstm_46_lstm_cell_46_kernel_v_read_readvariableopGsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_46_lstm_cell_46_bias_v_read_readvariableop=savev2_adam_lstm_47_lstm_cell_47_kernel_v_read_readvariableopGsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_47_lstm_cell_47_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
¾: :
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
´
ò
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974960
lstm_45_input"
lstm_45_1974933:	"
lstm_45_1974935:	d
lstm_45_1974937:	"
lstm_46_1974940:	dÈ"
lstm_46_1974942:	2È
lstm_46_1974944:	È!
lstm_47_1974947:2(!
lstm_47_1974949:
(
lstm_47_1974951:("
dense_15_1974954:

dense_15_1974956:
identity¢ dense_15/StatefulPartitionedCall¢lstm_45/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall
lstm_45/StatefulPartitionedCallStatefulPartitionedCalllstm_45_inputlstm_45_1974933lstm_45_1974935lstm_45_1974937*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_1973964¨
lstm_46/StatefulPartitionedCallStatefulPartitionedCall(lstm_45/StatefulPartitionedCall:output:0lstm_46_1974940lstm_46_1974942lstm_46_1974944*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_46_layer_call_and_return_conditional_losses_1974114¤
lstm_47/StatefulPartitionedCallStatefulPartitionedCall(lstm_46/StatefulPartitionedCall:output:0lstm_47_1974947lstm_47_1974949lstm_47_1974951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_47_layer_call_and_return_conditional_losses_1974264
 dense_15/StatefulPartitionedCallStatefulPartitionedCall(lstm_47/StatefulPartitionedCall:output:0dense_15_1974954dense_15_1974956*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_1974282x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_15/StatefulPartitionedCall ^lstm_45/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2B
lstm_45/StatefulPartitionedCalllstm_45/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_45_input
º
È
while_cond_1973195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1973195___redundant_placeholder05
1while_while_cond_1973195___redundant_placeholder15
1while_while_cond_1973195___redundant_placeholder25
1while_while_cond_1973195___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ö
³
)__inference_lstm_47_layer_call_fn_1977209

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_47_layer_call_and_return_conditional_losses_1974480o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ñ8
Ú
while_body_1974561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_325_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_325_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_325_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_325_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_325_biasadd_readvariableop_resource:	È¢*while/lstm_cell_325/BiasAdd/ReadVariableOp¢)while/lstm_cell_325/MatMul/ReadVariableOp¢+while/lstm_cell_325/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_325/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_325_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_325/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_325_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_325/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_325/addAddV2$while/lstm_cell_325/MatMul:product:0&while/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_325_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_325/BiasAddBiasAddwhile/lstm_cell_325/add:z:02while/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_325/splitSplit,while/lstm_cell_325/split/split_dim:output:0$while/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_325/SigmoidSigmoid"while/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_1Sigmoid"while/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mulMul!while/lstm_cell_325/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_325/ReluRelu"while/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_1Mulwhile/lstm_cell_325/Sigmoid:y:0&while/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/add_1AddV2while/lstm_cell_325/mul:z:0while/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_2Sigmoid"while/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_325/Relu_1Reluwhile/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_2Mul!while/lstm_cell_325/Sigmoid_2:y:0(while/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_325/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_325/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_325/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_325/BiasAdd/ReadVariableOp*^while/lstm_cell_325/MatMul/ReadVariableOp,^while/lstm_cell_325/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_325_biasadd_readvariableop_resource5while_lstm_cell_325_biasadd_readvariableop_resource_0"n
4while_lstm_cell_325_matmul_1_readvariableop_resource6while_lstm_cell_325_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_325_matmul_readvariableop_resource4while_lstm_cell_325_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_325/BiasAdd/ReadVariableOp*while/lstm_cell_325/BiasAdd/ReadVariableOp2V
)while/lstm_cell_325/MatMul/ReadVariableOp)while/lstm_cell_325/MatMul/ReadVariableOp2Z
+while/lstm_cell_325/MatMul_1/ReadVariableOp+while/lstm_cell_325/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
ì
õ
/__inference_lstm_cell_326_layer_call_fn_1978013

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1973532o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
º
È
while_cond_1977267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1977267___redundant_placeholder05
1while_while_cond_1977267___redundant_placeholder15
1while_while_cond_1977267___redundant_placeholder25
1while_while_cond_1977267___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
®8

D__inference_lstm_46_layer_call_and_return_conditional_losses_1973265

inputs(
lstm_cell_325_1973183:	dÈ(
lstm_cell_325_1973185:	2È$
lstm_cell_325_1973187:	È
identity¢%lstm_cell_325/StatefulPartitionedCall¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskþ
%lstm_cell_325/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_325_1973183lstm_cell_325_1973185lstm_cell_325_1973187*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1973182n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_325_1973183lstm_cell_325_1973185lstm_cell_325_1973187*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1973196*
condR
while_cond_1973195*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2v
NoOpNoOp&^lstm_cell_325/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2N
%lstm_cell_325/StatefulPartitionedCall%lstm_cell_325/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º
È
while_cond_1972845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1972845___redundant_placeholder05
1while_while_cond_1972845___redundant_placeholder15
1while_while_cond_1972845___redundant_placeholder25
1while_while_cond_1972845___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ÜJ

D__inference_lstm_47_layer_call_and_return_conditional_losses_1974480

inputs>
,lstm_cell_326_matmul_readvariableop_resource:2(@
.lstm_cell_326_matmul_1_readvariableop_resource:
(;
-lstm_cell_326_biasadd_readvariableop_resource:(
identity¢$lstm_cell_326/BiasAdd/ReadVariableOp¢#lstm_cell_326/MatMul/ReadVariableOp¢%lstm_cell_326/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#lstm_cell_326/MatMul/ReadVariableOpReadVariableOp,lstm_cell_326_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_326/MatMulMatMulstrided_slice_2:output:0+lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
%lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_326_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_326/MatMul_1MatMulzeros:output:0-lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_326/addAddV2lstm_cell_326/MatMul:product:0 lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_326_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_326/BiasAddBiasAddlstm_cell_326/add:z:0,lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(_
lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_326/splitSplit&lstm_cell_326/split/split_dim:output:0lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitp
lstm_cell_326/SigmoidSigmoidlstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_1Sigmoidlstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
lstm_cell_326/mulMullstm_cell_326/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
lstm_cell_326/ReluRelulstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_1Mullstm_cell_326/Sigmoid:y:0 lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_326/add_1AddV2lstm_cell_326/mul:z:0lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
lstm_cell_326/Sigmoid_2Sigmoidlstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
lstm_cell_326/Relu_1Relulstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_326/mul_2Mullstm_cell_326/Sigmoid_2:y:0"lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_326_matmul_readvariableop_resource.lstm_cell_326_matmul_1_readvariableop_resource-lstm_cell_326_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1974396*
condR
while_cond_1974395*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
Ã
NoOpNoOp%^lstm_cell_326/BiasAdd/ReadVariableOp$^lstm_cell_326/MatMul/ReadVariableOp&^lstm_cell_326/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_326/BiasAdd/ReadVariableOp$lstm_cell_326/BiasAdd/ReadVariableOp2J
#lstm_cell_326/MatMul/ReadVariableOp#lstm_cell_326/MatMul/ReadVariableOp2N
%lstm_cell_326/MatMul_1/ReadVariableOp%lstm_cell_326/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
×

J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1972832

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates
º
È
while_cond_1977696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1977696___redundant_placeholder05
1while_while_cond_1977696___redundant_placeholder15
1while_while_cond_1977696___redundant_placeholder25
1while_while_cond_1977696___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
K
¤
D__inference_lstm_46_layer_call_and_return_conditional_losses_1976736
inputs_0?
,lstm_cell_325_matmul_readvariableop_resource:	dÈA
.lstm_cell_325_matmul_1_readvariableop_resource:	2È<
-lstm_cell_325_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_325/BiasAdd/ReadVariableOp¢#lstm_cell_325/MatMul/ReadVariableOp¢%lstm_cell_325/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_325/MatMul/ReadVariableOpReadVariableOp,lstm_cell_325_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_325/MatMulMatMulstrided_slice_2:output:0+lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_325_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_325/MatMul_1MatMulzeros:output:0-lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_325/addAddV2lstm_cell_325/MatMul:product:0 lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_325_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_325/BiasAddBiasAddlstm_cell_325/add:z:0,lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_325/splitSplit&lstm_cell_325/split/split_dim:output:0lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_325/SigmoidSigmoidlstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_1Sigmoidlstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_325/mulMullstm_cell_325/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_325/ReluRelulstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_1Mullstm_cell_325/Sigmoid:y:0 lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_325/add_1AddV2lstm_cell_325/mul:z:0lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_2Sigmoidlstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_325/Relu_1Relulstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_2Mullstm_cell_325/Sigmoid_2:y:0"lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_325_matmul_readvariableop_resource.lstm_cell_325_matmul_1_readvariableop_resource-lstm_cell_325_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1976652*
condR
while_cond_1976651*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_325/BiasAdd/ReadVariableOp$^lstm_cell_325/MatMul/ReadVariableOp&^lstm_cell_325/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_325/BiasAdd/ReadVariableOp$lstm_cell_325/BiasAdd/ReadVariableOp2J
#lstm_cell_325/MatMul/ReadVariableOp#lstm_cell_325/MatMul/ReadVariableOp2N
%lstm_cell_325/MatMul_1/ReadVariableOp%lstm_cell_325/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
ýA
Ô

lstm_47_while_body_1975416,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3+
'lstm_47_while_lstm_47_strided_slice_1_0g
clstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_47_while_lstm_cell_326_matmul_readvariableop_resource_0:2(P
>lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource_0:
(K
=lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource_0:(
lstm_47_while_identity
lstm_47_while_identity_1
lstm_47_while_identity_2
lstm_47_while_identity_3
lstm_47_while_identity_4
lstm_47_while_identity_5)
%lstm_47_while_lstm_47_strided_slice_1e
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorL
:lstm_47_while_lstm_cell_326_matmul_readvariableop_resource:2(N
<lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource:
(I
;lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource:(¢2lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp¢1lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp¢3lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp
?lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Î
1lstm_47/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0lstm_47_while_placeholderHlstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
1lstm_47/while/lstm_cell_326/MatMul/ReadVariableOpReadVariableOp<lstm_47_while_lstm_cell_326_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ó
"lstm_47/while/lstm_cell_326/MatMulMatMul8lstm_47/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
3lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp>lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0º
$lstm_47/while/lstm_cell_326/MatMul_1MatMullstm_47_while_placeholder_2;lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
lstm_47/while/lstm_cell_326/addAddV2,lstm_47/while/lstm_cell_326/MatMul:product:0.lstm_47/while/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
2lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp=lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_47/while/lstm_cell_326/BiasAddBiasAdd#lstm_47/while/lstm_cell_326/add:z:0:lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(m
+lstm_47/while/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_47/while/lstm_cell_326/splitSplit4lstm_47/while/lstm_cell_326/split/split_dim:output:0,lstm_47/while/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
#lstm_47/while/lstm_cell_326/SigmoidSigmoid*lstm_47/while/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_47/while/lstm_cell_326/Sigmoid_1Sigmoid*lstm_47/while/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
lstm_47/while/lstm_cell_326/mulMul)lstm_47/while/lstm_cell_326/Sigmoid_1:y:0lstm_47_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 lstm_47/while/lstm_cell_326/ReluRelu*lstm_47/while/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
!lstm_47/while/lstm_cell_326/mul_1Mul'lstm_47/while/lstm_cell_326/Sigmoid:y:0.lstm_47/while/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
!lstm_47/while/lstm_cell_326/add_1AddV2#lstm_47/while/lstm_cell_326/mul:z:0%lstm_47/while/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_47/while/lstm_cell_326/Sigmoid_2Sigmoid*lstm_47/while/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"lstm_47/while/lstm_cell_326/Relu_1Relu%lstm_47/while/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
!lstm_47/while/lstm_cell_326/mul_2Mul)lstm_47/while/lstm_cell_326/Sigmoid_2:y:00lstm_47/while/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
2lstm_47/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_47_while_placeholder_1lstm_47_while_placeholder%lstm_47/while/lstm_cell_326/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_47/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_47/while/addAddV2lstm_47_while_placeholderlstm_47/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_47/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_47/while/add_1AddV2(lstm_47_while_lstm_47_while_loop_counterlstm_47/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_47/while/IdentityIdentitylstm_47/while/add_1:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 
lstm_47/while/Identity_1Identity.lstm_47_while_lstm_47_while_maximum_iterations^lstm_47/while/NoOp*
T0*
_output_shapes
: q
lstm_47/while/Identity_2Identitylstm_47/while/add:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 
lstm_47/while/Identity_3IdentityBlstm_47/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 
lstm_47/while/Identity_4Identity%lstm_47/while/lstm_cell_326/mul_2:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_47/while/Identity_5Identity%lstm_47/while/lstm_cell_326/add_1:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ó
lstm_47/while/NoOpNoOp3^lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp2^lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp4^lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_47_while_identitylstm_47/while/Identity:output:0"=
lstm_47_while_identity_1!lstm_47/while/Identity_1:output:0"=
lstm_47_while_identity_2!lstm_47/while/Identity_2:output:0"=
lstm_47_while_identity_3!lstm_47/while/Identity_3:output:0"=
lstm_47_while_identity_4!lstm_47/while/Identity_4:output:0"=
lstm_47_while_identity_5!lstm_47/while/Identity_5:output:0"P
%lstm_47_while_lstm_47_strided_slice_1'lstm_47_while_lstm_47_strided_slice_1_0"|
;lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource=lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource_0"~
<lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource>lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource_0"z
:lstm_47_while_lstm_cell_326_matmul_readvariableop_resource<lstm_47_while_lstm_cell_326_matmul_readvariableop_resource_0"È
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2h
2lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp2lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp2f
1lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp1lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp2j
3lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp3lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_1973545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1973545___redundant_placeholder05
1while_while_cond_1973545___redundant_placeholder15
1while_while_cond_1973545___redundant_placeholder25
1while_while_cond_1973545___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
Ñ8
Ú
while_body_1976652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_325_matmul_readvariableop_resource_0:	dÈI
6while_lstm_cell_325_matmul_1_readvariableop_resource_0:	2ÈD
5while_lstm_cell_325_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_325_matmul_readvariableop_resource:	dÈG
4while_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈB
3while_lstm_cell_325_biasadd_readvariableop_resource:	È¢*while/lstm_cell_325/BiasAdd/ReadVariableOp¢)while/lstm_cell_325/MatMul/ReadVariableOp¢+while/lstm_cell_325/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
)while/lstm_cell_325/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_325_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0¼
while/lstm_cell_325/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
+while/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_325_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0£
while/lstm_cell_325/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
while/lstm_cell_325/addAddV2$while/lstm_cell_325/MatMul:product:0&while/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
*while/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_325_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ª
while/lstm_cell_325/BiasAddBiasAddwhile/lstm_cell_325/add:z:02while/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
#while/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_325/splitSplit,while/lstm_cell_325/split/split_dim:output:0$while/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split|
while/lstm_cell_325/SigmoidSigmoid"while/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_1Sigmoid"while/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mulMul!while/lstm_cell_325/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
while/lstm_cell_325/ReluRelu"while/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_1Mulwhile/lstm_cell_325/Sigmoid:y:0&while/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/add_1AddV2while/lstm_cell_325/mul:z:0while/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
while/lstm_cell_325/Sigmoid_2Sigmoid"while/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
while/lstm_cell_325/Relu_1Reluwhile/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_325/mul_2Mul!while/lstm_cell_325/Sigmoid_2:y:0(while/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_325/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_325/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
while/Identity_5Identitywhile/lstm_cell_325/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ó

while/NoOpNoOp+^while/lstm_cell_325/BiasAdd/ReadVariableOp*^while/lstm_cell_325/MatMul/ReadVariableOp,^while/lstm_cell_325/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_325_biasadd_readvariableop_resource5while_lstm_cell_325_biasadd_readvariableop_resource_0"n
4while_lstm_cell_325_matmul_1_readvariableop_resource6while_lstm_cell_325_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_325_matmul_readvariableop_resource4while_lstm_cell_325_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_325/BiasAdd/ReadVariableOp*while/lstm_cell_325/BiasAdd/ReadVariableOp2V
)while/lstm_cell_325/MatMul/ReadVariableOp)while/lstm_cell_325/MatMul/ReadVariableOp2Z
+while/lstm_cell_325/MatMul_1/ReadVariableOp+while/lstm_cell_325/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
´
ò
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974990
lstm_45_input"
lstm_45_1974963:	"
lstm_45_1974965:	d
lstm_45_1974967:	"
lstm_46_1974970:	dÈ"
lstm_46_1974972:	2È
lstm_46_1974974:	È!
lstm_47_1974977:2(!
lstm_47_1974979:
(
lstm_47_1974981:("
dense_15_1974984:

dense_15_1974986:
identity¢ dense_15/StatefulPartitionedCall¢lstm_45/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall
lstm_45/StatefulPartitionedCallStatefulPartitionedCalllstm_45_inputlstm_45_1974963lstm_45_1974965lstm_45_1974967*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_1974810¨
lstm_46/StatefulPartitionedCallStatefulPartitionedCall(lstm_45/StatefulPartitionedCall:output:0lstm_46_1974970lstm_46_1974972lstm_46_1974974*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_46_layer_call_and_return_conditional_losses_1974645¤
lstm_47/StatefulPartitionedCallStatefulPartitionedCall(lstm_46/StatefulPartitionedCall:output:0lstm_47_1974977lstm_47_1974979lstm_47_1974981*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_47_layer_call_and_return_conditional_losses_1974480
 dense_15/StatefulPartitionedCallStatefulPartitionedCall(lstm_47/StatefulPartitionedCall:output:0dense_15_1974984dense_15_1974986*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_1974282x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_15/StatefulPartitionedCall ^lstm_45/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2B
lstm_45/StatefulPartitionedCalllstm_45/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_45_input
ýA
Ô

lstm_47_while_body_1975843,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3+
'lstm_47_while_lstm_47_strided_slice_1_0g
clstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_47_while_lstm_cell_326_matmul_readvariableop_resource_0:2(P
>lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource_0:
(K
=lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource_0:(
lstm_47_while_identity
lstm_47_while_identity_1
lstm_47_while_identity_2
lstm_47_while_identity_3
lstm_47_while_identity_4
lstm_47_while_identity_5)
%lstm_47_while_lstm_47_strided_slice_1e
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorL
:lstm_47_while_lstm_cell_326_matmul_readvariableop_resource:2(N
<lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource:
(I
;lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource:(¢2lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp¢1lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp¢3lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp
?lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Î
1lstm_47/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0lstm_47_while_placeholderHlstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
1lstm_47/while/lstm_cell_326/MatMul/ReadVariableOpReadVariableOp<lstm_47_while_lstm_cell_326_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ó
"lstm_47/while/lstm_cell_326/MatMulMatMul8lstm_47/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
3lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp>lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0º
$lstm_47/while/lstm_cell_326/MatMul_1MatMullstm_47_while_placeholder_2;lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
lstm_47/while/lstm_cell_326/addAddV2,lstm_47/while/lstm_cell_326/MatMul:product:0.lstm_47/while/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
2lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp=lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_47/while/lstm_cell_326/BiasAddBiasAdd#lstm_47/while/lstm_cell_326/add:z:0:lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(m
+lstm_47/while/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_47/while/lstm_cell_326/splitSplit4lstm_47/while/lstm_cell_326/split/split_dim:output:0,lstm_47/while/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
#lstm_47/while/lstm_cell_326/SigmoidSigmoid*lstm_47/while/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_47/while/lstm_cell_326/Sigmoid_1Sigmoid*lstm_47/while/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
lstm_47/while/lstm_cell_326/mulMul)lstm_47/while/lstm_cell_326/Sigmoid_1:y:0lstm_47_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 lstm_47/while/lstm_cell_326/ReluRelu*lstm_47/while/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
!lstm_47/while/lstm_cell_326/mul_1Mul'lstm_47/while/lstm_cell_326/Sigmoid:y:0.lstm_47/while/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
!lstm_47/while/lstm_cell_326/add_1AddV2#lstm_47/while/lstm_cell_326/mul:z:0%lstm_47/while/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%lstm_47/while/lstm_cell_326/Sigmoid_2Sigmoid*lstm_47/while/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"lstm_47/while/lstm_cell_326/Relu_1Relu%lstm_47/while/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
!lstm_47/while/lstm_cell_326/mul_2Mul)lstm_47/while/lstm_cell_326/Sigmoid_2:y:00lstm_47/while/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
2lstm_47/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_47_while_placeholder_1lstm_47_while_placeholder%lstm_47/while/lstm_cell_326/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_47/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_47/while/addAddV2lstm_47_while_placeholderlstm_47/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_47/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_47/while/add_1AddV2(lstm_47_while_lstm_47_while_loop_counterlstm_47/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_47/while/IdentityIdentitylstm_47/while/add_1:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 
lstm_47/while/Identity_1Identity.lstm_47_while_lstm_47_while_maximum_iterations^lstm_47/while/NoOp*
T0*
_output_shapes
: q
lstm_47/while/Identity_2Identitylstm_47/while/add:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 
lstm_47/while/Identity_3IdentityBlstm_47/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 
lstm_47/while/Identity_4Identity%lstm_47/while/lstm_cell_326/mul_2:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_47/while/Identity_5Identity%lstm_47/while/lstm_cell_326/add_1:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ó
lstm_47/while/NoOpNoOp3^lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp2^lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp4^lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_47_while_identitylstm_47/while/Identity:output:0"=
lstm_47_while_identity_1!lstm_47/while/Identity_1:output:0"=
lstm_47_while_identity_2!lstm_47/while/Identity_2:output:0"=
lstm_47_while_identity_3!lstm_47/while/Identity_3:output:0"=
lstm_47_while_identity_4!lstm_47/while/Identity_4:output:0"=
lstm_47_while_identity_5!lstm_47/while/Identity_5:output:0"P
%lstm_47_while_lstm_47_strided_slice_1'lstm_47_while_lstm_47_strided_slice_1_0"|
;lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource=lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource_0"~
<lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource>lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource_0"z
:lstm_47_while_lstm_cell_326_matmul_readvariableop_resource<lstm_47_while_lstm_cell_326_matmul_readvariableop_resource_0"È
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2h
2lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp2lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp2f
1lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp1lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp2j
3lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp3lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
#
ë
while_body_1973546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_326_1973570_0:2(/
while_lstm_cell_326_1973572_0:
(+
while_lstm_cell_326_1973574_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_326_1973570:2(-
while_lstm_cell_326_1973572:
()
while_lstm_cell_326_1973574:(¢+while/lstm_cell_326/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¼
+while/lstm_cell_326/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_326_1973570_0while_lstm_cell_326_1973572_0while_lstm_cell_326_1973574_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1973532Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_326/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_326/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity4while/lstm_cell_326/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z

while/NoOpNoOp,^while/lstm_cell_326/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_326_1973570while_lstm_cell_326_1973570_0"<
while_lstm_cell_326_1973572while_lstm_cell_326_1973572_0"<
while_lstm_cell_326_1973574while_lstm_cell_326_1973574_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2Z
+while/lstm_cell_326/StatefulPartitionedCall+while/lstm_cell_326/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
K
¤
D__inference_lstm_46_layer_call_and_return_conditional_losses_1976879
inputs_0?
,lstm_cell_325_matmul_readvariableop_resource:	dÈA
.lstm_cell_325_matmul_1_readvariableop_resource:	2È<
-lstm_cell_325_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_325/BiasAdd/ReadVariableOp¢#lstm_cell_325/MatMul/ReadVariableOp¢%lstm_cell_325/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_325/MatMul/ReadVariableOpReadVariableOp,lstm_cell_325_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_325/MatMulMatMulstrided_slice_2:output:0+lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_325_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_325/MatMul_1MatMulzeros:output:0-lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_325/addAddV2lstm_cell_325/MatMul:product:0 lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_325_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_325/BiasAddBiasAddlstm_cell_325/add:z:0,lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_325/splitSplit&lstm_cell_325/split/split_dim:output:0lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_325/SigmoidSigmoidlstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_1Sigmoidlstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_325/mulMullstm_cell_325/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_325/ReluRelulstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_1Mullstm_cell_325/Sigmoid:y:0 lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_325/add_1AddV2lstm_cell_325/mul:z:0lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_2Sigmoidlstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_325/Relu_1Relulstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_2Mullstm_cell_325/Sigmoid_2:y:0"lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_325_matmul_readvariableop_resource.lstm_cell_325_matmul_1_readvariableop_resource-lstm_cell_325_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1976795*
condR
while_cond_1976794*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_325/BiasAdd/ReadVariableOp$^lstm_cell_325/MatMul/ReadVariableOp&^lstm_cell_325/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_325/BiasAdd/ReadVariableOp$lstm_cell_325/BiasAdd/ReadVariableOp2J
#lstm_cell_325/MatMul/ReadVariableOp#lstm_cell_325/MatMul/ReadVariableOp2N
%lstm_cell_325/MatMul_1/ReadVariableOp%lstm_cell_325/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
º
È
while_cond_1976035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1976035___redundant_placeholder05
1while_while_cond_1976035___redundant_placeholder15
1while_while_cond_1976035___redundant_placeholder25
1while_while_cond_1976035___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
#
ñ
while_body_1973387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_325_1973411_0:	dÈ0
while_lstm_cell_325_1973413_0:	2È,
while_lstm_cell_325_1973415_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_325_1973411:	dÈ.
while_lstm_cell_325_1973413:	2È*
while_lstm_cell_325_1973415:	È¢+while/lstm_cell_325/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¼
+while/lstm_cell_325/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_325_1973411_0while_lstm_cell_325_1973413_0while_lstm_cell_325_1973415_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1973328Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_325/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity4while/lstm_cell_325/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity4while/lstm_cell_325/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z

while/NoOpNoOp,^while/lstm_cell_325/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_325_1973411while_lstm_cell_325_1973411_0"<
while_lstm_cell_325_1973413while_lstm_cell_325_1973413_0"<
while_lstm_cell_325_1973415while_lstm_cell_325_1973415_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2Z
+while/lstm_cell_325/StatefulPartitionedCall+while/lstm_cell_325/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
K
¤
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976120
inputs_0?
,lstm_cell_324_matmul_readvariableop_resource:	A
.lstm_cell_324_matmul_1_readvariableop_resource:	d<
-lstm_cell_324_biasadd_readvariableop_resource:	
identity¢$lstm_cell_324/BiasAdd/ReadVariableOp¢#lstm_cell_324/MatMul/ReadVariableOp¢%lstm_cell_324/MatMul_1/ReadVariableOp¢while=
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_324/MatMul/ReadVariableOpReadVariableOp,lstm_cell_324_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_324/MatMulMatMulstrided_slice_2:output:0+lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_324_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_324/MatMul_1MatMulzeros:output:0-lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_324/addAddV2lstm_cell_324/MatMul:product:0 lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_324_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_324/BiasAddBiasAddlstm_cell_324/add:z:0,lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_324/splitSplit&lstm_cell_324/split/split_dim:output:0lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_324/SigmoidSigmoidlstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_1Sigmoidlstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_324/mulMullstm_cell_324/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_324/ReluRelulstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_1Mullstm_cell_324/Sigmoid:y:0 lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_324/add_1AddV2lstm_cell_324/mul:z:0lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_2Sigmoidlstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_324/Relu_1Relulstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_2Mullstm_cell_324/Sigmoid_2:y:0"lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_324_matmul_readvariableop_resource.lstm_cell_324_matmul_1_readvariableop_resource-lstm_cell_324_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1976036*
condR
while_cond_1976035*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_324/BiasAdd/ReadVariableOp$^lstm_cell_324/MatMul/ReadVariableOp&^lstm_cell_324/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_324/BiasAdd/ReadVariableOp$lstm_cell_324/BiasAdd/ReadVariableOp2J
#lstm_cell_324/MatMul/ReadVariableOp#lstm_cell_324/MatMul/ReadVariableOp2N
%lstm_cell_324/MatMul_1/ReadVariableOp%lstm_cell_324/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ä8
Ô
while_body_1977411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_326_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_326_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_326_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_326_matmul_readvariableop_resource:2(F
4while_lstm_cell_326_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_326_biasadd_readvariableop_resource:(¢*while/lstm_cell_326/BiasAdd/ReadVariableOp¢)while/lstm_cell_326/MatMul/ReadVariableOp¢+while/lstm_cell_326/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)while/lstm_cell_326/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_326_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0»
while/lstm_cell_326/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¢
+while/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_326_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0¢
while/lstm_cell_326/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
while/lstm_cell_326/addAddV2$while/lstm_cell_326/MatMul:product:0&while/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*while/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_326_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0©
while/lstm_cell_326/BiasAddBiasAddwhile/lstm_cell_326/add:z:02while/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#while/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_326/splitSplit,while/lstm_cell_326/split/split_dim:output:0$while/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
while/lstm_cell_326/SigmoidSigmoid"while/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_1Sigmoid"while/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mulMul!while/lstm_cell_326/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
while/lstm_cell_326/ReluRelu"while/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_1Mulwhile/lstm_cell_326/Sigmoid:y:0&while/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/add_1AddV2while/lstm_cell_326/mul:z:0while/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
while/lstm_cell_326/Sigmoid_2Sigmoid"while/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
while/lstm_cell_326/Relu_1Reluwhile/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_326/mul_2Mul!while/lstm_cell_326/Sigmoid_2:y:0(while/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_326/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_326/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/Identity_5Identitywhile/lstm_cell_326/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó

while/NoOpNoOp+^while/lstm_cell_326/BiasAdd/ReadVariableOp*^while/lstm_cell_326/MatMul/ReadVariableOp,^while/lstm_cell_326/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_326_biasadd_readvariableop_resource5while_lstm_cell_326_biasadd_readvariableop_resource_0"n
4while_lstm_cell_326_matmul_1_readvariableop_resource6while_lstm_cell_326_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_326_matmul_readvariableop_resource4while_lstm_cell_326_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_326/BiasAdd/ReadVariableOp*while/lstm_cell_326/BiasAdd/ReadVariableOp2V
)while/lstm_cell_326/MatMul/ReadVariableOp)while/lstm_cell_326/MatMul/ReadVariableOp2Z
+while/lstm_cell_326/MatMul_1/ReadVariableOp+while/lstm_cell_326/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
Ñ8
Ú
while_body_1976179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_324_matmul_readvariableop_resource_0:	I
6while_lstm_cell_324_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_324_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_324_matmul_readvariableop_resource:	G
4while_lstm_cell_324_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_324_biasadd_readvariableop_resource:	¢*while/lstm_cell_324/BiasAdd/ReadVariableOp¢)while/lstm_cell_324/MatMul/ReadVariableOp¢+while/lstm_cell_324/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_324/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_324_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_324/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_324_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_324/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_324/addAddV2$while/lstm_cell_324/MatMul:product:0&while/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_324_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_324/BiasAddBiasAddwhile/lstm_cell_324/add:z:02while/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_324/splitSplit,while/lstm_cell_324/split/split_dim:output:0$while/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_324/SigmoidSigmoid"while/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_1Sigmoid"while/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mulMul!while/lstm_cell_324/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_324/ReluRelu"while/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_1Mulwhile/lstm_cell_324/Sigmoid:y:0&while/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/add_1AddV2while/lstm_cell_324/mul:z:0while/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_2Sigmoid"while/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_324/Relu_1Reluwhile/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_2Mul!while/lstm_cell_324/Sigmoid_2:y:0(while/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_324/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_324/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_324/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_324/BiasAdd/ReadVariableOp*^while/lstm_cell_324/MatMul/ReadVariableOp,^while/lstm_cell_324/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_324_biasadd_readvariableop_resource5while_lstm_cell_324_biasadd_readvariableop_resource_0"n
4while_lstm_cell_324_matmul_1_readvariableop_resource6while_lstm_cell_324_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_324_matmul_readvariableop_resource4while_lstm_cell_324_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_324/BiasAdd/ReadVariableOp*while/lstm_cell_324/BiasAdd/ReadVariableOp2V
)while/lstm_cell_324/MatMul/ReadVariableOp)while/lstm_cell_324/MatMul/ReadVariableOp2Z
+while/lstm_cell_324/MatMul_1/ReadVariableOp+while/lstm_cell_324/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
Ñ8
Ú
while_body_1976465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_324_matmul_readvariableop_resource_0:	I
6while_lstm_cell_324_matmul_1_readvariableop_resource_0:	dD
5while_lstm_cell_324_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_324_matmul_readvariableop_resource:	G
4while_lstm_cell_324_matmul_1_readvariableop_resource:	dB
3while_lstm_cell_324_biasadd_readvariableop_resource:	¢*while/lstm_cell_324/BiasAdd/ReadVariableOp¢)while/lstm_cell_324/MatMul/ReadVariableOp¢+while/lstm_cell_324/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_324/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_324_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_324/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
+while/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_324_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0£
while/lstm_cell_324/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_324/addAddV2$while/lstm_cell_324/MatMul:product:0&while/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_324_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_324/BiasAddBiasAddwhile/lstm_cell_324/add:z:02while/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_324/splitSplit,while/lstm_cell_324/split/split_dim:output:0$while/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split|
while/lstm_cell_324/SigmoidSigmoid"while/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_1Sigmoid"while/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mulMul!while/lstm_cell_324/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
while/lstm_cell_324/ReluRelu"while/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_1Mulwhile/lstm_cell_324/Sigmoid:y:0&while/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/add_1AddV2while/lstm_cell_324/mul:z:0while/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
while/lstm_cell_324/Sigmoid_2Sigmoid"while/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_324/Relu_1Reluwhile/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_324/mul_2Mul!while/lstm_cell_324/Sigmoid_2:y:0(while/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_324/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_324/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
while/Identity_5Identitywhile/lstm_cell_324/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÓ

while/NoOpNoOp+^while/lstm_cell_324/BiasAdd/ReadVariableOp*^while/lstm_cell_324/MatMul/ReadVariableOp,^while/lstm_cell_324/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_324_biasadd_readvariableop_resource5while_lstm_cell_324_biasadd_readvariableop_resource_0"n
4while_lstm_cell_324_matmul_1_readvariableop_resource6while_lstm_cell_324_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_324_matmul_readvariableop_resource4while_lstm_cell_324_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_324/BiasAdd/ReadVariableOp*while/lstm_cell_324/BiasAdd/ReadVariableOp2V
)while/lstm_cell_324/MatMul/ReadVariableOp)while/lstm_cell_324/MatMul/ReadVariableOp2Z
+while/lstm_cell_324/MatMul_1/ReadVariableOp+while/lstm_cell_324/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
þ

J__inference_sequential_15_layer_call_and_return_conditional_losses_1975506

inputsG
4lstm_45_lstm_cell_324_matmul_readvariableop_resource:	I
6lstm_45_lstm_cell_324_matmul_1_readvariableop_resource:	dD
5lstm_45_lstm_cell_324_biasadd_readvariableop_resource:	G
4lstm_46_lstm_cell_325_matmul_readvariableop_resource:	dÈI
6lstm_46_lstm_cell_325_matmul_1_readvariableop_resource:	2ÈD
5lstm_46_lstm_cell_325_biasadd_readvariableop_resource:	ÈF
4lstm_47_lstm_cell_326_matmul_readvariableop_resource:2(H
6lstm_47_lstm_cell_326_matmul_1_readvariableop_resource:
(C
5lstm_47_lstm_cell_326_biasadd_readvariableop_resource:(9
'dense_15_matmul_readvariableop_resource:
6
(dense_15_biasadd_readvariableop_resource:
identity¢dense_15/BiasAdd/ReadVariableOp¢dense_15/MatMul/ReadVariableOp¢,lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp¢+lstm_45/lstm_cell_324/MatMul/ReadVariableOp¢-lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp¢lstm_45/while¢,lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp¢+lstm_46/lstm_cell_325/MatMul/ReadVariableOp¢-lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp¢lstm_46/while¢,lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp¢+lstm_47/lstm_cell_326/MatMul/ReadVariableOp¢-lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp¢lstm_47/whileC
lstm_45/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_45/strided_sliceStridedSlicelstm_45/Shape:output:0$lstm_45/strided_slice/stack:output:0&lstm_45/strided_slice/stack_1:output:0&lstm_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_45/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_45/zeros/packedPacklstm_45/strided_slice:output:0lstm_45/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_45/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_45/zerosFilllstm_45/zeros/packed:output:0lstm_45/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_45/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_45/zeros_1/packedPacklstm_45/strided_slice:output:0!lstm_45/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_45/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_45/zeros_1Filllstm_45/zeros_1/packed:output:0lstm_45/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_45/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_45/transpose	Transposeinputslstm_45/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_45/Shape_1Shapelstm_45/transpose:y:0*
T0*
_output_shapes
:g
lstm_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_45/strided_slice_1StridedSlicelstm_45/Shape_1:output:0&lstm_45/strided_slice_1/stack:output:0(lstm_45/strided_slice_1/stack_1:output:0(lstm_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_45/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_45/TensorArrayV2TensorListReserve,lstm_45/TensorArrayV2/element_shape:output:0 lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_45/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_45/transpose:y:0Flstm_45/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_45/strided_slice_2StridedSlicelstm_45/transpose:y:0&lstm_45/strided_slice_2/stack:output:0(lstm_45/strided_slice_2/stack_1:output:0(lstm_45/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¡
+lstm_45/lstm_cell_324/MatMul/ReadVariableOpReadVariableOp4lstm_45_lstm_cell_324_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
lstm_45/lstm_cell_324/MatMulMatMul lstm_45/strided_slice_2:output:03lstm_45/lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
-lstm_45/lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp6lstm_45_lstm_cell_324_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0ª
lstm_45/lstm_cell_324/MatMul_1MatMullstm_45/zeros:output:05lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
lstm_45/lstm_cell_324/addAddV2&lstm_45/lstm_cell_324/MatMul:product:0(lstm_45/lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,lstm_45/lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp5lstm_45_lstm_cell_324_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_45/lstm_cell_324/BiasAddBiasAddlstm_45/lstm_cell_324/add:z:04lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%lstm_45/lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_45/lstm_cell_324/splitSplit.lstm_45/lstm_cell_324/split/split_dim:output:0&lstm_45/lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
lstm_45/lstm_cell_324/SigmoidSigmoid$lstm_45/lstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_45/lstm_cell_324/Sigmoid_1Sigmoid$lstm_45/lstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_45/lstm_cell_324/mulMul#lstm_45/lstm_cell_324/Sigmoid_1:y:0lstm_45/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
lstm_45/lstm_cell_324/ReluRelu$lstm_45/lstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
lstm_45/lstm_cell_324/mul_1Mul!lstm_45/lstm_cell_324/Sigmoid:y:0(lstm_45/lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_45/lstm_cell_324/add_1AddV2lstm_45/lstm_cell_324/mul:z:0lstm_45/lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_45/lstm_cell_324/Sigmoid_2Sigmoid$lstm_45/lstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_45/lstm_cell_324/Relu_1Relulstm_45/lstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
lstm_45/lstm_cell_324/mul_2Mul#lstm_45/lstm_cell_324/Sigmoid_2:y:0*lstm_45/lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_45/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ð
lstm_45/TensorArrayV2_1TensorListReserve.lstm_45/TensorArrayV2_1/element_shape:output:0 lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_45/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_45/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_45/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_45/whileWhile#lstm_45/while/loop_counter:output:0)lstm_45/while/maximum_iterations:output:0lstm_45/time:output:0 lstm_45/TensorArrayV2_1:handle:0lstm_45/zeros:output:0lstm_45/zeros_1:output:0 lstm_45/strided_slice_1:output:0?lstm_45/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_45_lstm_cell_324_matmul_readvariableop_resource6lstm_45_lstm_cell_324_matmul_1_readvariableop_resource5lstm_45_lstm_cell_324_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_45_while_body_1975138*&
condR
lstm_45_while_cond_1975137*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_45/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ú
*lstm_45/TensorArrayV2Stack/TensorListStackTensorListStacklstm_45/while:output:3Alstm_45/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0p
lstm_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_45/strided_slice_3StridedSlice3lstm_45/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_45/strided_slice_3/stack:output:0(lstm_45/strided_slice_3/stack_1:output:0(lstm_45/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_45/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_45/transpose_1	Transpose3lstm_45/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_45/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_45/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_46/ShapeShapelstm_45/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_46/strided_sliceStridedSlicelstm_46/Shape:output:0$lstm_46/strided_slice/stack:output:0&lstm_46/strided_slice/stack_1:output:0&lstm_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_46/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros/packedPacklstm_46/strided_slice:output:0lstm_46/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_46/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_46/zerosFilllstm_46/zeros/packed:output:0lstm_46/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_46/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros_1/packedPacklstm_46/strided_slice:output:0!lstm_46/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_46/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_46/zeros_1Filllstm_46/zeros_1/packed:output:0lstm_46/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_46/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_46/transpose	Transposelstm_45/transpose_1:y:0lstm_46/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_46/Shape_1Shapelstm_46/transpose:y:0*
T0*
_output_shapes
:g
lstm_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_46/strided_slice_1StridedSlicelstm_46/Shape_1:output:0&lstm_46/strided_slice_1/stack:output:0(lstm_46/strided_slice_1/stack_1:output:0(lstm_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_46/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_46/TensorArrayV2TensorListReserve,lstm_46/TensorArrayV2/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_46/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_46/transpose:y:0Flstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_46/strided_slice_2StridedSlicelstm_46/transpose:y:0&lstm_46/strided_slice_2/stack:output:0(lstm_46/strided_slice_2/stack_1:output:0(lstm_46/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask¡
+lstm_46/lstm_cell_325/MatMul/ReadVariableOpReadVariableOp4lstm_46_lstm_cell_325_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0°
lstm_46/lstm_cell_325/MatMulMatMul lstm_46/strided_slice_2:output:03lstm_46/lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¥
-lstm_46/lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp6lstm_46_lstm_cell_325_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0ª
lstm_46/lstm_cell_325/MatMul_1MatMullstm_46/zeros:output:05lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ§
lstm_46/lstm_cell_325/addAddV2&lstm_46/lstm_cell_325/MatMul:product:0(lstm_46/lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,lstm_46/lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp5lstm_46_lstm_cell_325_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_46/lstm_cell_325/BiasAddBiasAddlstm_46/lstm_cell_325/add:z:04lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈg
%lstm_46/lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_46/lstm_cell_325/splitSplit.lstm_46/lstm_cell_325/split/split_dim:output:0&lstm_46/lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
lstm_46/lstm_cell_325/SigmoidSigmoid$lstm_46/lstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_325/Sigmoid_1Sigmoid$lstm_46/lstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_325/mulMul#lstm_46/lstm_cell_325/Sigmoid_1:y:0lstm_46/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
lstm_46/lstm_cell_325/ReluRelu$lstm_46/lstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
lstm_46/lstm_cell_325/mul_1Mul!lstm_46/lstm_cell_325/Sigmoid:y:0(lstm_46/lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_325/add_1AddV2lstm_46/lstm_cell_325/mul:z:0lstm_46/lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_325/Sigmoid_2Sigmoid$lstm_46/lstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_46/lstm_cell_325/Relu_1Relulstm_46/lstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
lstm_46/lstm_cell_325/mul_2Mul#lstm_46/lstm_cell_325/Sigmoid_2:y:0*lstm_46/lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_46/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_46/TensorArrayV2_1TensorListReserve.lstm_46/TensorArrayV2_1/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_46/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_46/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_46/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_46/whileWhile#lstm_46/while/loop_counter:output:0)lstm_46/while/maximum_iterations:output:0lstm_46/time:output:0 lstm_46/TensorArrayV2_1:handle:0lstm_46/zeros:output:0lstm_46/zeros_1:output:0 lstm_46/strided_slice_1:output:0?lstm_46/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_46_lstm_cell_325_matmul_readvariableop_resource6lstm_46_lstm_cell_325_matmul_1_readvariableop_resource5lstm_46_lstm_cell_325_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_46_while_body_1975277*&
condR
lstm_46_while_cond_1975276*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_46/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_46/TensorArrayV2Stack/TensorListStackTensorListStacklstm_46/while:output:3Alstm_46/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_46/strided_slice_3StridedSlice3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_46/strided_slice_3/stack:output:0(lstm_46/strided_slice_3/stack_1:output:0(lstm_46/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_46/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_46/transpose_1	Transpose3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_46/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_46/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_47/ShapeShapelstm_46/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_47/strided_sliceStridedSlicelstm_47/Shape:output:0$lstm_47/strided_slice/stack:output:0&lstm_47/strided_slice/stack_1:output:0&lstm_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_47/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_47/zeros/packedPacklstm_47/strided_slice:output:0lstm_47/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_47/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_47/zerosFilllstm_47/zeros/packed:output:0lstm_47/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
lstm_47/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_47/zeros_1/packedPacklstm_47/strided_slice:output:0!lstm_47/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_47/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_47/zeros_1Filllstm_47/zeros_1/packed:output:0lstm_47/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_47/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_47/transpose	Transposelstm_46/transpose_1:y:0lstm_47/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
lstm_47/Shape_1Shapelstm_47/transpose:y:0*
T0*
_output_shapes
:g
lstm_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_47/strided_slice_1StridedSlicelstm_47/Shape_1:output:0&lstm_47/strided_slice_1/stack:output:0(lstm_47/strided_slice_1/stack_1:output:0(lstm_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_47/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_47/TensorArrayV2TensorListReserve,lstm_47/TensorArrayV2/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ø
/lstm_47/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_47/transpose:y:0Flstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_47/strided_slice_2StridedSlicelstm_47/transpose:y:0&lstm_47/strided_slice_2/stack:output:0(lstm_47/strided_slice_2/stack_1:output:0(lstm_47/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask 
+lstm_47/lstm_cell_326/MatMul/ReadVariableOpReadVariableOp4lstm_47_lstm_cell_326_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¯
lstm_47/lstm_cell_326/MatMulMatMul lstm_47/strided_slice_2:output:03lstm_47/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
-lstm_47/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOp6lstm_47_lstm_cell_326_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0©
lstm_47/lstm_cell_326/MatMul_1MatMullstm_47/zeros:output:05lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
lstm_47/lstm_cell_326/addAddV2&lstm_47/lstm_cell_326/MatMul:product:0(lstm_47/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,lstm_47/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOp5lstm_47_lstm_cell_326_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¯
lstm_47/lstm_cell_326/BiasAddBiasAddlstm_47/lstm_cell_326/add:z:04lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(g
%lstm_47/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ø
lstm_47/lstm_cell_326/splitSplit.lstm_47/lstm_cell_326/split/split_dim:output:0&lstm_47/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
lstm_47/lstm_cell_326/SigmoidSigmoid$lstm_47/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_47/lstm_cell_326/Sigmoid_1Sigmoid$lstm_47/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_47/lstm_cell_326/mulMul#lstm_47/lstm_cell_326/Sigmoid_1:y:0lstm_47/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
lstm_47/lstm_cell_326/ReluRelu$lstm_47/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
lstm_47/lstm_cell_326/mul_1Mul!lstm_47/lstm_cell_326/Sigmoid:y:0(lstm_47/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_47/lstm_cell_326/add_1AddV2lstm_47/lstm_cell_326/mul:z:0lstm_47/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_47/lstm_cell_326/Sigmoid_2Sigmoid$lstm_47/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_47/lstm_cell_326/Relu_1Relulstm_47/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
lstm_47/lstm_cell_326/mul_2Mul#lstm_47/lstm_cell_326/Sigmoid_2:y:0*lstm_47/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
%lstm_47/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ð
lstm_47/TensorArrayV2_1TensorListReserve.lstm_47/TensorArrayV2_1/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_47/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_47/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_47/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
lstm_47/whileWhile#lstm_47/while/loop_counter:output:0)lstm_47/while/maximum_iterations:output:0lstm_47/time:output:0 lstm_47/TensorArrayV2_1:handle:0lstm_47/zeros:output:0lstm_47/zeros_1:output:0 lstm_47/strided_slice_1:output:0?lstm_47/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_47_lstm_cell_326_matmul_readvariableop_resource6lstm_47_lstm_cell_326_matmul_1_readvariableop_resource5lstm_47_lstm_cell_326_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_47_while_body_1975416*&
condR
lstm_47_while_cond_1975415*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
8lstm_47/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
*lstm_47/TensorArrayV2Stack/TensorListStackTensorListStacklstm_47/while:output:3Alstm_47/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0p
lstm_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_47/strided_slice_3StridedSlice3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_47/strided_slice_3/stack:output:0(lstm_47/strided_slice_3/stack_1:output:0(lstm_47/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskm
lstm_47/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_47/transpose_1	Transpose3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_47/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
lstm_47/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_15/MatMulMatMul lstm_47/strided_slice_3:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_15/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp-^lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp,^lstm_45/lstm_cell_324/MatMul/ReadVariableOp.^lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp^lstm_45/while-^lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp,^lstm_46/lstm_cell_325/MatMul/ReadVariableOp.^lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp^lstm_46/while-^lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp,^lstm_47/lstm_cell_326/MatMul/ReadVariableOp.^lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp^lstm_47/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2\
,lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp,lstm_45/lstm_cell_324/BiasAdd/ReadVariableOp2Z
+lstm_45/lstm_cell_324/MatMul/ReadVariableOp+lstm_45/lstm_cell_324/MatMul/ReadVariableOp2^
-lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp-lstm_45/lstm_cell_324/MatMul_1/ReadVariableOp2
lstm_45/whilelstm_45/while2\
,lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp,lstm_46/lstm_cell_325/BiasAdd/ReadVariableOp2Z
+lstm_46/lstm_cell_325/MatMul/ReadVariableOp+lstm_46/lstm_cell_325/MatMul/ReadVariableOp2^
-lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp-lstm_46/lstm_cell_325/MatMul_1/ReadVariableOp2
lstm_46/whilelstm_46/while2\
,lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp,lstm_47/lstm_cell_326/BiasAdd/ReadVariableOp2Z
+lstm_47/lstm_cell_326/MatMul/ReadVariableOp+lstm_47/lstm_cell_326/MatMul/ReadVariableOp2^
-lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp-lstm_47/lstm_cell_326/MatMul_1/ReadVariableOp2
lstm_47/whilelstm_47/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1977898

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
«
¸
)__inference_lstm_45_layer_call_fn_1975944
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_1972915|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
áJ
¢
D__inference_lstm_45_layer_call_and_return_conditional_losses_1974810

inputs?
,lstm_cell_324_matmul_readvariableop_resource:	A
.lstm_cell_324_matmul_1_readvariableop_resource:	d<
-lstm_cell_324_biasadd_readvariableop_resource:	
identity¢$lstm_cell_324/BiasAdd/ReadVariableOp¢#lstm_cell_324/MatMul/ReadVariableOp¢%lstm_cell_324/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿdR
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
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_324/MatMul/ReadVariableOpReadVariableOp,lstm_cell_324_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_324/MatMulMatMulstrided_slice_2:output:0+lstm_cell_324/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_324/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_324_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_324/MatMul_1MatMulzeros:output:0-lstm_cell_324/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_324/addAddV2lstm_cell_324/MatMul:product:0 lstm_cell_324/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_324/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_324_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_324/BiasAddBiasAddlstm_cell_324/add:z:0,lstm_cell_324/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_324/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_324/splitSplit&lstm_cell_324/split/split_dim:output:0lstm_cell_324/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitp
lstm_cell_324/SigmoidSigmoidlstm_cell_324/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_1Sigmoidlstm_cell_324/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
lstm_cell_324/mulMullstm_cell_324/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
lstm_cell_324/ReluRelulstm_cell_324/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_1Mullstm_cell_324/Sigmoid:y:0 lstm_cell_324/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
lstm_cell_324/add_1AddV2lstm_cell_324/mul:z:0lstm_cell_324/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
lstm_cell_324/Sigmoid_2Sigmoidlstm_cell_324/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_324/Relu_1Relulstm_cell_324/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_324/mul_2Mullstm_cell_324/Sigmoid_2:y:0"lstm_cell_324/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_324_matmul_readvariableop_resource.lstm_cell_324_matmul_1_readvariableop_resource-lstm_cell_324_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1974726*
condR
while_cond_1974725*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÃ
NoOpNoOp%^lstm_cell_324/BiasAdd/ReadVariableOp$^lstm_cell_324/MatMul/ReadVariableOp&^lstm_cell_324/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_324/BiasAdd/ReadVariableOp$lstm_cell_324/BiasAdd/ReadVariableOp2J
#lstm_cell_324/MatMul/ReadVariableOp#lstm_cell_324/MatMul/ReadVariableOp2N
%lstm_cell_324/MatMul_1/ReadVariableOp%lstm_cell_324/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½R

(sequential_15_lstm_47_while_body_1972675H
Dsequential_15_lstm_47_while_sequential_15_lstm_47_while_loop_counterN
Jsequential_15_lstm_47_while_sequential_15_lstm_47_while_maximum_iterations+
'sequential_15_lstm_47_while_placeholder-
)sequential_15_lstm_47_while_placeholder_1-
)sequential_15_lstm_47_while_placeholder_2-
)sequential_15_lstm_47_while_placeholder_3G
Csequential_15_lstm_47_while_sequential_15_lstm_47_strided_slice_1_0
sequential_15_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_47_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_15_lstm_47_while_lstm_cell_326_matmul_readvariableop_resource_0:2(^
Lsequential_15_lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource_0:
(Y
Ksequential_15_lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource_0:((
$sequential_15_lstm_47_while_identity*
&sequential_15_lstm_47_while_identity_1*
&sequential_15_lstm_47_while_identity_2*
&sequential_15_lstm_47_while_identity_3*
&sequential_15_lstm_47_while_identity_4*
&sequential_15_lstm_47_while_identity_5E
Asequential_15_lstm_47_while_sequential_15_lstm_47_strided_slice_1
}sequential_15_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_47_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_15_lstm_47_while_lstm_cell_326_matmul_readvariableop_resource:2(\
Jsequential_15_lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource:
(W
Isequential_15_lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource:(¢@sequential_15/lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp¢?sequential_15/lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp¢Asequential_15/lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp
Msequential_15/lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
?sequential_15/lstm_47/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_15_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_47_tensorarrayunstack_tensorlistfromtensor_0'sequential_15_lstm_47_while_placeholderVsequential_15/lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0Ê
?sequential_15/lstm_47/while/lstm_cell_326/MatMul/ReadVariableOpReadVariableOpJsequential_15_lstm_47_while_lstm_cell_326_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ý
0sequential_15/lstm_47/while/lstm_cell_326/MatMulMatMulFsequential_15/lstm_47/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_15/lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Î
Asequential_15/lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOpReadVariableOpLsequential_15_lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ä
2sequential_15/lstm_47/while/lstm_cell_326/MatMul_1MatMul)sequential_15_lstm_47_while_placeholder_2Isequential_15/lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(â
-sequential_15/lstm_47/while/lstm_cell_326/addAddV2:sequential_15/lstm_47/while/lstm_cell_326/MatMul:product:0<sequential_15/lstm_47/while/lstm_cell_326/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(È
@sequential_15/lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOpReadVariableOpKsequential_15_lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_15/lstm_47/while/lstm_cell_326/BiasAddBiasAdd1sequential_15/lstm_47/while/lstm_cell_326/add:z:0Hsequential_15/lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ({
9sequential_15/lstm_47/while/lstm_cell_326/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_15/lstm_47/while/lstm_cell_326/splitSplitBsequential_15/lstm_47/while/lstm_cell_326/split/split_dim:output:0:sequential_15/lstm_47/while/lstm_cell_326/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split¨
1sequential_15/lstm_47/while/lstm_cell_326/SigmoidSigmoid8sequential_15/lstm_47/while/lstm_cell_326/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
3sequential_15/lstm_47/while/lstm_cell_326/Sigmoid_1Sigmoid8sequential_15/lstm_47/while/lstm_cell_326/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ê
-sequential_15/lstm_47/while/lstm_cell_326/mulMul7sequential_15/lstm_47/while/lstm_cell_326/Sigmoid_1:y:0)sequential_15_lstm_47_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
.sequential_15/lstm_47/while/lstm_cell_326/ReluRelu8sequential_15/lstm_47/while/lstm_cell_326/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ý
/sequential_15/lstm_47/while/lstm_cell_326/mul_1Mul5sequential_15/lstm_47/while/lstm_cell_326/Sigmoid:y:0<sequential_15/lstm_47/while/lstm_cell_326/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ò
/sequential_15/lstm_47/while/lstm_cell_326/add_1AddV21sequential_15/lstm_47/while/lstm_cell_326/mul:z:03sequential_15/lstm_47/while/lstm_cell_326/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
3sequential_15/lstm_47/while/lstm_cell_326/Sigmoid_2Sigmoid8sequential_15/lstm_47/while/lstm_cell_326/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

0sequential_15/lstm_47/while/lstm_cell_326/Relu_1Relu3sequential_15/lstm_47/while/lstm_cell_326/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
á
/sequential_15/lstm_47/while/lstm_cell_326/mul_2Mul7sequential_15/lstm_47/while/lstm_cell_326/Sigmoid_2:y:0>sequential_15/lstm_47/while/lstm_cell_326/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@sequential_15/lstm_47/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_15_lstm_47_while_placeholder_1'sequential_15_lstm_47_while_placeholder3sequential_15/lstm_47/while/lstm_cell_326/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_15/lstm_47/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_15/lstm_47/while/addAddV2'sequential_15_lstm_47_while_placeholder*sequential_15/lstm_47/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_15/lstm_47/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_15/lstm_47/while/add_1AddV2Dsequential_15_lstm_47_while_sequential_15_lstm_47_while_loop_counter,sequential_15/lstm_47/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_15/lstm_47/while/IdentityIdentity%sequential_15/lstm_47/while/add_1:z:0!^sequential_15/lstm_47/while/NoOp*
T0*
_output_shapes
: Â
&sequential_15/lstm_47/while/Identity_1IdentityJsequential_15_lstm_47_while_sequential_15_lstm_47_while_maximum_iterations!^sequential_15/lstm_47/while/NoOp*
T0*
_output_shapes
: 
&sequential_15/lstm_47/while/Identity_2Identity#sequential_15/lstm_47/while/add:z:0!^sequential_15/lstm_47/while/NoOp*
T0*
_output_shapes
: È
&sequential_15/lstm_47/while/Identity_3IdentityPsequential_15/lstm_47/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_15/lstm_47/while/NoOp*
T0*
_output_shapes
: ¼
&sequential_15/lstm_47/while/Identity_4Identity3sequential_15/lstm_47/while/lstm_cell_326/mul_2:z:0!^sequential_15/lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¼
&sequential_15/lstm_47/while/Identity_5Identity3sequential_15/lstm_47/while/lstm_cell_326/add_1:z:0!^sequential_15/lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
«
 sequential_15/lstm_47/while/NoOpNoOpA^sequential_15/lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp@^sequential_15/lstm_47/while/lstm_cell_326/MatMul/ReadVariableOpB^sequential_15/lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_15_lstm_47_while_identity-sequential_15/lstm_47/while/Identity:output:0"Y
&sequential_15_lstm_47_while_identity_1/sequential_15/lstm_47/while/Identity_1:output:0"Y
&sequential_15_lstm_47_while_identity_2/sequential_15/lstm_47/while/Identity_2:output:0"Y
&sequential_15_lstm_47_while_identity_3/sequential_15/lstm_47/while/Identity_3:output:0"Y
&sequential_15_lstm_47_while_identity_4/sequential_15/lstm_47/while/Identity_4:output:0"Y
&sequential_15_lstm_47_while_identity_5/sequential_15/lstm_47/while/Identity_5:output:0"
Isequential_15_lstm_47_while_lstm_cell_326_biasadd_readvariableop_resourceKsequential_15_lstm_47_while_lstm_cell_326_biasadd_readvariableop_resource_0"
Jsequential_15_lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resourceLsequential_15_lstm_47_while_lstm_cell_326_matmul_1_readvariableop_resource_0"
Hsequential_15_lstm_47_while_lstm_cell_326_matmul_readvariableop_resourceJsequential_15_lstm_47_while_lstm_cell_326_matmul_readvariableop_resource_0"
Asequential_15_lstm_47_while_sequential_15_lstm_47_strided_slice_1Csequential_15_lstm_47_while_sequential_15_lstm_47_strided_slice_1_0"
}sequential_15_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_47_tensorarrayunstack_tensorlistfromtensorsequential_15_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_47_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2
@sequential_15/lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp@sequential_15/lstm_47/while/lstm_cell_326/BiasAdd/ReadVariableOp2
?sequential_15/lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp?sequential_15/lstm_47/while/lstm_cell_326/MatMul/ReadVariableOp2
Asequential_15/lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOpAsequential_15/lstm_47/while/lstm_cell_326/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 

¶
)__inference_lstm_45_layer_call_fn_1975977

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_1974810s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
áJ
¢
D__inference_lstm_46_layer_call_and_return_conditional_losses_1974114

inputs?
,lstm_cell_325_matmul_readvariableop_resource:	dÈA
.lstm_cell_325_matmul_1_readvariableop_resource:	2È<
-lstm_cell_325_biasadd_readvariableop_resource:	È
identity¢$lstm_cell_325/BiasAdd/ReadVariableOp¢#lstm_cell_325/MatMul/ReadVariableOp¢%lstm_cell_325/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿ2R
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
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
#lstm_cell_325/MatMul/ReadVariableOpReadVariableOp,lstm_cell_325_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_325/MatMulMatMulstrided_slice_2:output:0+lstm_cell_325/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%lstm_cell_325/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_325_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_325/MatMul_1MatMulzeros:output:0-lstm_cell_325/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_325/addAddV2lstm_cell_325/MatMul:product:0 lstm_cell_325/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_325/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_325_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_325/BiasAddBiasAddlstm_cell_325/add:z:0,lstm_cell_325/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ_
lstm_cell_325/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_325/splitSplit&lstm_cell_325/split/split_dim:output:0lstm_cell_325/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitp
lstm_cell_325/SigmoidSigmoidlstm_cell_325/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_1Sigmoidlstm_cell_325/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
lstm_cell_325/mulMullstm_cell_325/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
lstm_cell_325/ReluRelulstm_cell_325/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_1Mullstm_cell_325/Sigmoid:y:0 lstm_cell_325/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2~
lstm_cell_325/add_1AddV2lstm_cell_325/mul:z:0lstm_cell_325/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
lstm_cell_325/Sigmoid_2Sigmoidlstm_cell_325/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2g
lstm_cell_325/Relu_1Relulstm_cell_325/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_325/mul_2Mullstm_cell_325/Sigmoid_2:y:0"lstm_cell_325/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_325_matmul_readvariableop_resource.lstm_cell_325_matmul_1_readvariableop_resource-lstm_cell_325_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1974030*
condR
while_cond_1974029*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ã
NoOpNoOp%^lstm_cell_325/BiasAdd/ReadVariableOp$^lstm_cell_325/MatMul/ReadVariableOp&^lstm_cell_325/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_325/BiasAdd/ReadVariableOp$lstm_cell_325/BiasAdd/ReadVariableOp2J
#lstm_cell_325/MatMul/ReadVariableOp#lstm_cell_325/MatMul/ReadVariableOp2N
%lstm_cell_325/MatMul_1/ReadVariableOp%lstm_cell_325/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Í

J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1973678

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lstm_45_input:
serving_default_lstm_45_input:0ÿÿÿÿÿÿÿÿÿ<
dense_150
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ñ
ª
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
¼

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
¼

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
¼

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
2dense_15/kernel
:2dense_15/bias
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
.:,	2lstm_45/lstm_cell_45/kernel
8:6	d2%lstm_45/lstm_cell_45/recurrent_kernel
(:&2lstm_45/lstm_cell_45/bias
.:,	dÈ2lstm_46/lstm_cell_46/kernel
8:6	2È2%lstm_46/lstm_cell_46/recurrent_kernel
(:&È2lstm_46/lstm_cell_46/bias
-:+2(2lstm_47/lstm_cell_47/kernel
7:5
(2%lstm_47/lstm_cell_47/recurrent_kernel
':%(2lstm_47/lstm_cell_47/bias
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
2Adam/dense_15/kernel/m
 :2Adam/dense_15/bias/m
3:1	2"Adam/lstm_45/lstm_cell_45/kernel/m
=:;	d2,Adam/lstm_45/lstm_cell_45/recurrent_kernel/m
-:+2 Adam/lstm_45/lstm_cell_45/bias/m
3:1	dÈ2"Adam/lstm_46/lstm_cell_46/kernel/m
=:;	2È2,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m
-:+È2 Adam/lstm_46/lstm_cell_46/bias/m
2:02(2"Adam/lstm_47/lstm_cell_47/kernel/m
<::
(2,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m
,:*(2 Adam/lstm_47/lstm_cell_47/bias/m
&:$
2Adam/dense_15/kernel/v
 :2Adam/dense_15/bias/v
3:1	2"Adam/lstm_45/lstm_cell_45/kernel/v
=:;	d2,Adam/lstm_45/lstm_cell_45/recurrent_kernel/v
-:+2 Adam/lstm_45/lstm_cell_45/bias/v
3:1	dÈ2"Adam/lstm_46/lstm_cell_46/kernel/v
=:;	2È2,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v
-:+È2 Adam/lstm_46/lstm_cell_46/bias/v
2:02(2"Adam/lstm_47/lstm_cell_47/kernel/v
<::
(2,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v
,:*(2 Adam/lstm_47/lstm_cell_47/bias/v
2
/__inference_sequential_15_layer_call_fn_1974314
/__inference_sequential_15_layer_call_fn_1975052
/__inference_sequential_15_layer_call_fn_1975079
/__inference_sequential_15_layer_call_fn_1974930À
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
kwonlydefaultsª 
annotationsª *
 
ö2ó
J__inference_sequential_15_layer_call_and_return_conditional_losses_1975506
J__inference_sequential_15_layer_call_and_return_conditional_losses_1975933
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974960
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974990À
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
kwonlydefaultsª 
annotationsª *
 
ÓBÐ
"__inference__wrapped_model_1972765lstm_45_input"
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
annotationsª *
 
2
)__inference_lstm_45_layer_call_fn_1975944
)__inference_lstm_45_layer_call_fn_1975955
)__inference_lstm_45_layer_call_fn_1975966
)__inference_lstm_45_layer_call_fn_1975977Õ
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
kwonlydefaultsª 
annotationsª *
 
ó2ð
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976120
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976263
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976406
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976549Õ
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
kwonlydefaultsª 
annotationsª *
 
2
)__inference_lstm_46_layer_call_fn_1976560
)__inference_lstm_46_layer_call_fn_1976571
)__inference_lstm_46_layer_call_fn_1976582
)__inference_lstm_46_layer_call_fn_1976593Õ
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
kwonlydefaultsª 
annotationsª *
 
ó2ð
D__inference_lstm_46_layer_call_and_return_conditional_losses_1976736
D__inference_lstm_46_layer_call_and_return_conditional_losses_1976879
D__inference_lstm_46_layer_call_and_return_conditional_losses_1977022
D__inference_lstm_46_layer_call_and_return_conditional_losses_1977165Õ
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
kwonlydefaultsª 
annotationsª *
 
2
)__inference_lstm_47_layer_call_fn_1977176
)__inference_lstm_47_layer_call_fn_1977187
)__inference_lstm_47_layer_call_fn_1977198
)__inference_lstm_47_layer_call_fn_1977209Õ
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
kwonlydefaultsª 
annotationsª *
 
ó2ð
D__inference_lstm_47_layer_call_and_return_conditional_losses_1977352
D__inference_lstm_47_layer_call_and_return_conditional_losses_1977495
D__inference_lstm_47_layer_call_and_return_conditional_losses_1977638
D__inference_lstm_47_layer_call_and_return_conditional_losses_1977781Õ
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
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_dense_15_layer_call_fn_1977790¢
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
annotationsª *
 
ï2ì
E__inference_dense_15_layer_call_and_return_conditional_losses_1977800¢
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
annotationsª *
 
ÒBÏ
%__inference_signature_wrapper_1975025lstm_45_input"
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
annotationsª *
 
¦2£
/__inference_lstm_cell_324_layer_call_fn_1977817
/__inference_lstm_cell_324_layer_call_fn_1977834¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1977866
J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1977898¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
¦2£
/__inference_lstm_cell_325_layer_call_fn_1977915
/__inference_lstm_cell_325_layer_call_fn_1977932¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1977964
J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1977996¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
¦2£
/__inference_lstm_cell_326_layer_call_fn_1978013
/__inference_lstm_cell_326_layer_call_fn_1978030¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1978062
J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1978094¾
µ²±
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
kwonlydefaultsª 
annotationsª *
 ¤
"__inference__wrapped_model_1972765~-./012345!":¢7
0¢-
+(
lstm_45_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_15"
dense_15ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_15_layer_call_and_return_conditional_losses_1977800\!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_15_layer_call_fn_1977790O!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿÓ
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976120-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 Ó
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976263-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 ¹
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976406q-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿd
 ¹
D__inference_lstm_45_layer_call_and_return_conditional_losses_1976549q-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿd
 ª
)__inference_lstm_45_layer_call_fn_1975944}-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdª
)__inference_lstm_45_layer_call_fn_1975955}-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
)__inference_lstm_45_layer_call_fn_1975966d-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
)__inference_lstm_45_layer_call_fn_1975977d-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿdÓ
D__inference_lstm_46_layer_call_and_return_conditional_losses_1976736012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 Ó
D__inference_lstm_46_layer_call_and_return_conditional_losses_1976879012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 ¹
D__inference_lstm_46_layer_call_and_return_conditional_losses_1977022q012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 ¹
D__inference_lstm_46_layer_call_and_return_conditional_losses_1977165q012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 ª
)__inference_lstm_46_layer_call_fn_1976560}012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2ª
)__inference_lstm_46_layer_call_fn_1976571}012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_46_layer_call_fn_1976582d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_46_layer_call_fn_1976593d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2Å
D__inference_lstm_47_layer_call_and_return_conditional_losses_1977352}345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Å
D__inference_lstm_47_layer_call_and_return_conditional_losses_1977495}345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 µ
D__inference_lstm_47_layer_call_and_return_conditional_losses_1977638m345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 µ
D__inference_lstm_47_layer_call_and_return_conditional_losses_1977781m345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
)__inference_lstm_47_layer_call_fn_1977176p345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

)__inference_lstm_47_layer_call_fn_1977187p345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ

)__inference_lstm_47_layer_call_fn_1977198`345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

)__inference_lstm_47_layer_call_fn_1977209`345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
Ì
J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1977866ý-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿd
EB

0/1/0ÿÿÿÿÿÿÿÿÿd

0/1/1ÿÿÿÿÿÿÿÿÿd
 Ì
J__inference_lstm_cell_324_layer_call_and_return_conditional_losses_1977898ý-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿd
EB

0/1/0ÿÿÿÿÿÿÿÿÿd

0/1/1ÿÿÿÿÿÿÿÿÿd
 ¡
/__inference_lstm_cell_324_layer_call_fn_1977817í-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿd
A>

1/0ÿÿÿÿÿÿÿÿÿd

1/1ÿÿÿÿÿÿÿÿÿd¡
/__inference_lstm_cell_324_layer_call_fn_1977834í-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿd
A>

1/0ÿÿÿÿÿÿÿÿÿd

1/1ÿÿÿÿÿÿÿÿÿdÌ
J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1977964ý012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ2
EB

0/1/0ÿÿÿÿÿÿÿÿÿ2

0/1/1ÿÿÿÿÿÿÿÿÿ2
 Ì
J__inference_lstm_cell_325_layer_call_and_return_conditional_losses_1977996ý012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ2
EB

0/1/0ÿÿÿÿÿÿÿÿÿ2

0/1/1ÿÿÿÿÿÿÿÿÿ2
 ¡
/__inference_lstm_cell_325_layer_call_fn_1977915í012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ2
A>

1/0ÿÿÿÿÿÿÿÿÿ2

1/1ÿÿÿÿÿÿÿÿÿ2¡
/__inference_lstm_cell_325_layer_call_fn_1977932í012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ2
A>

1/0ÿÿÿÿÿÿÿÿÿ2

1/1ÿÿÿÿÿÿÿÿÿ2Ì
J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1978062ý345¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ

EB

0/1/0ÿÿÿÿÿÿÿÿÿ


0/1/1ÿÿÿÿÿÿÿÿÿ

 Ì
J__inference_lstm_cell_326_layer_call_and_return_conditional_losses_1978094ý345¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ

EB

0/1/0ÿÿÿÿÿÿÿÿÿ


0/1/1ÿÿÿÿÿÿÿÿÿ

 ¡
/__inference_lstm_cell_326_layer_call_fn_1978013í345¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ

A>

1/0ÿÿÿÿÿÿÿÿÿ


1/1ÿÿÿÿÿÿÿÿÿ
¡
/__inference_lstm_cell_326_layer_call_fn_1978030í345¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ

A>

1/0ÿÿÿÿÿÿÿÿÿ


1/1ÿÿÿÿÿÿÿÿÿ
Æ
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974960x-./012345!"B¢?
8¢5
+(
lstm_45_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
J__inference_sequential_15_layer_call_and_return_conditional_losses_1974990x-./012345!"B¢?
8¢5
+(
lstm_45_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_15_layer_call_and_return_conditional_losses_1975506q-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_15_layer_call_and_return_conditional_losses_1975933q-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_15_layer_call_fn_1974314k-./012345!"B¢?
8¢5
+(
lstm_45_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_15_layer_call_fn_1974930k-./012345!"B¢?
8¢5
+(
lstm_45_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_15_layer_call_fn_1975052d-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_15_layer_call_fn_1975079d-./012345!";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¹
%__inference_signature_wrapper_1975025-./012345!"K¢H
¢ 
Aª>
<
lstm_45_input+(
lstm_45_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_15"
dense_15ÿÿÿÿÿÿÿÿÿ