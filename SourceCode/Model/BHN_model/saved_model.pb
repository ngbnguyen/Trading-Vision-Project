??.
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??-
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:
*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
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
?
lstm_12/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_12/lstm_cell_12/kernel
?
/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOplstm_12/lstm_cell_12/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_12/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*6
shared_name'%lstm_12/lstm_cell_12/recurrent_kernel
?
9lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_12/lstm_cell_12/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_12/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_12/lstm_cell_12/bias
?
-lstm_12/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOplstm_12/lstm_cell_12/bias*
_output_shapes	
:?*
dtype0
?
lstm_13/lstm_cell_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*,
shared_namelstm_13/lstm_cell_13/kernel
?
/lstm_13/lstm_cell_13/kernel/Read/ReadVariableOpReadVariableOplstm_13/lstm_cell_13/kernel*
_output_shapes
:	d?*
dtype0
?
%lstm_13/lstm_cell_13/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*6
shared_name'%lstm_13/lstm_cell_13/recurrent_kernel
?
9lstm_13/lstm_cell_13/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_13/lstm_cell_13/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_13/lstm_cell_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_13/lstm_cell_13/bias
?
-lstm_13/lstm_cell_13/bias/Read/ReadVariableOpReadVariableOplstm_13/lstm_cell_13/bias*
_output_shapes	
:?*
dtype0
?
lstm_14/lstm_cell_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_14/lstm_cell_14/kernel
?
/lstm_14/lstm_cell_14/kernel/Read/ReadVariableOpReadVariableOplstm_14/lstm_cell_14/kernel*
_output_shapes

:2(*
dtype0
?
%lstm_14/lstm_cell_14/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_14/lstm_cell_14/recurrent_kernel
?
9lstm_14/lstm_cell_14/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_14/lstm_cell_14/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_14/lstm_cell_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_14/lstm_cell_14/bias
?
-lstm_14/lstm_cell_14/bias/Read/ReadVariableOpReadVariableOplstm_14/lstm_cell_14/bias*
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
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:
*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_12/lstm_cell_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_12/lstm_cell_12/kernel/m
?
6Adam/lstm_12/lstm_cell_12/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_12/lstm_cell_12/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_12/lstm_cell_12/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*=
shared_name.,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m
?
@Adam/lstm_12/lstm_cell_12/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
 Adam/lstm_12/lstm_cell_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_12/lstm_cell_12/bias/m
?
4Adam/lstm_12/lstm_cell_12/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_12/lstm_cell_12/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_13/lstm_cell_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*3
shared_name$"Adam/lstm_13/lstm_cell_13/kernel/m
?
6Adam/lstm_13/lstm_cell_13/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_13/lstm_cell_13/kernel/m*
_output_shapes
:	d?*
dtype0
?
,Adam/lstm_13/lstm_cell_13/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*=
shared_name.,Adam/lstm_13/lstm_cell_13/recurrent_kernel/m
?
@Adam/lstm_13/lstm_cell_13/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_13/lstm_cell_13/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
 Adam/lstm_13/lstm_cell_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_13/lstm_cell_13/bias/m
?
4Adam/lstm_13/lstm_cell_13/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_13/lstm_cell_13/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_14/lstm_cell_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_14/lstm_cell_14/kernel/m
?
6Adam/lstm_14/lstm_cell_14/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_14/lstm_cell_14/kernel/m*
_output_shapes

:2(*
dtype0
?
,Adam/lstm_14/lstm_cell_14/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m
?
@Adam/lstm_14/lstm_cell_14/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_14/lstm_cell_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_14/lstm_cell_14/bias/m
?
4Adam/lstm_14/lstm_cell_14/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_14/lstm_cell_14/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:
*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_12/lstm_cell_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_12/lstm_cell_12/kernel/v
?
6Adam/lstm_12/lstm_cell_12/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_12/lstm_cell_12/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_12/lstm_cell_12/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*=
shared_name.,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v
?
@Adam/lstm_12/lstm_cell_12/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
 Adam/lstm_12/lstm_cell_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_12/lstm_cell_12/bias/v
?
4Adam/lstm_12/lstm_cell_12/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_12/lstm_cell_12/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_13/lstm_cell_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*3
shared_name$"Adam/lstm_13/lstm_cell_13/kernel/v
?
6Adam/lstm_13/lstm_cell_13/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_13/lstm_cell_13/kernel/v*
_output_shapes
:	d?*
dtype0
?
,Adam/lstm_13/lstm_cell_13/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*=
shared_name.,Adam/lstm_13/lstm_cell_13/recurrent_kernel/v
?
@Adam/lstm_13/lstm_cell_13/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_13/lstm_cell_13/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
 Adam/lstm_13/lstm_cell_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_13/lstm_cell_13/bias/v
?
4Adam/lstm_13/lstm_cell_13/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_13/lstm_cell_13/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_14/lstm_cell_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_14/lstm_cell_14/kernel/v
?
6Adam/lstm_14/lstm_cell_14/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_14/lstm_cell_14/kernel/v*
_output_shapes

:2(*
dtype0
?
,Adam/lstm_14/lstm_cell_14/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v
?
@Adam/lstm_14/lstm_cell_14/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_14/lstm_cell_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_14/lstm_cell_14/bias/v
?
4Adam/lstm_14/lstm_cell_14/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_14/lstm_cell_14/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?@
value?@B?@ B?@
?
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
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m?4m?5m?!v?"v?-v?.v?/v?0v?1v?2v?3v?4v?5v?
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
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
?
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
?

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?
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
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
?
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
?

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
?
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
VARIABLE_VALUElstm_12/lstm_cell_12/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_12/lstm_cell_12/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_12/lstm_cell_12/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_13/lstm_cell_13/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_13/lstm_cell_13/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_13/lstm_cell_13/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_14/lstm_cell_14/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_14/lstm_cell_14/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_14/lstm_cell_14/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
?
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
?
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
?
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
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_12/lstm_cell_12/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_12/lstm_cell_12/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_12/lstm_cell_12/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_13/lstm_cell_13/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_13/lstm_cell_13/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_13/lstm_cell_13/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_14/lstm_cell_14/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_14/lstm_cell_14/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_14/lstm_cell_14/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_12/lstm_cell_12/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_12/lstm_cell_12/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_12/lstm_cell_12/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_13/lstm_cell_13/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_13/lstm_cell_13/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_13/lstm_cell_13/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_14/lstm_cell_14/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_14/lstm_cell_14/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_14/lstm_cell_14/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_12_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_12_inputlstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/biaslstm_13/lstm_cell_13/kernel%lstm_13/lstm_cell_13/recurrent_kernellstm_13/lstm_cell_13/biaslstm_14/lstm_cell_14/kernel%lstm_14/lstm_cell_14/recurrent_kernellstm_14/lstm_cell_14/biasdense_4/kerneldense_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1049084
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOp9lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOp-lstm_12/lstm_cell_12/bias/Read/ReadVariableOp/lstm_13/lstm_cell_13/kernel/Read/ReadVariableOp9lstm_13/lstm_cell_13/recurrent_kernel/Read/ReadVariableOp-lstm_13/lstm_cell_13/bias/Read/ReadVariableOp/lstm_14/lstm_cell_14/kernel/Read/ReadVariableOp9lstm_14/lstm_cell_14/recurrent_kernel/Read/ReadVariableOp-lstm_14/lstm_cell_14/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp6Adam/lstm_12/lstm_cell_12/kernel/m/Read/ReadVariableOp@Adam/lstm_12/lstm_cell_12/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_12/lstm_cell_12/bias/m/Read/ReadVariableOp6Adam/lstm_13/lstm_cell_13/kernel/m/Read/ReadVariableOp@Adam/lstm_13/lstm_cell_13/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_13/lstm_cell_13/bias/m/Read/ReadVariableOp6Adam/lstm_14/lstm_cell_14/kernel/m/Read/ReadVariableOp@Adam/lstm_14/lstm_cell_14/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_14/lstm_cell_14/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp6Adam/lstm_12/lstm_cell_12/kernel/v/Read/ReadVariableOp@Adam/lstm_12/lstm_cell_12/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_12/lstm_cell_12/bias/v/Read/ReadVariableOp6Adam/lstm_13/lstm_cell_13/kernel/v/Read/ReadVariableOp@Adam/lstm_13/lstm_cell_13/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_13/lstm_cell_13/bias/v/Read/ReadVariableOp6Adam/lstm_14/lstm_cell_14/kernel/v/Read/ReadVariableOp@Adam/lstm_14/lstm_cell_14/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_14/lstm_cell_14/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_1052296
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/biaslstm_13/lstm_cell_13/kernel%lstm_13/lstm_cell_13/recurrent_kernellstm_13/lstm_cell_13/biaslstm_14/lstm_cell_14/kernel%lstm_14/lstm_cell_14/recurrent_kernellstm_14/lstm_cell_14/biastotalcountAdam/dense_4/kernel/mAdam/dense_4/bias/m"Adam/lstm_12/lstm_cell_12/kernel/m,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m Adam/lstm_12/lstm_cell_12/bias/m"Adam/lstm_13/lstm_cell_13/kernel/m,Adam/lstm_13/lstm_cell_13/recurrent_kernel/m Adam/lstm_13/lstm_cell_13/bias/m"Adam/lstm_14/lstm_cell_14/kernel/m,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m Adam/lstm_14/lstm_cell_14/bias/mAdam/dense_4/kernel/vAdam/dense_4/bias/v"Adam/lstm_12/lstm_cell_12/kernel/v,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v Adam/lstm_12/lstm_cell_12/bias/v"Adam/lstm_13/lstm_cell_13/kernel/v,Adam/lstm_13/lstm_cell_13/recurrent_kernel/v Adam/lstm_13/lstm_cell_13/bias/v"Adam/lstm_14/lstm_cell_14/kernel/v,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v Adam/lstm_14/lstm_cell_14/bias/v*4
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_1052426??+
?	
?
D__inference_dense_4_layer_call_and_return_conditional_losses_1048341

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?J
?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1048539

inputs>
,lstm_cell_173_matmul_readvariableop_resource:2(@
.lstm_cell_173_matmul_1_readvariableop_resource:
(;
-lstm_cell_173_biasadd_readvariableop_resource:(
identity??$lstm_cell_173/BiasAdd/ReadVariableOp?#lstm_cell_173/MatMul/ReadVariableOp?%lstm_cell_173/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_173/MatMul/ReadVariableOpReadVariableOp,lstm_cell_173_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_173/MatMulMatMulstrided_slice_2:output:0+lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_173_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_173/MatMul_1MatMulzeros:output:0-lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_173/addAddV2lstm_cell_173/MatMul:product:0 lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_173_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_173/BiasAddBiasAddlstm_cell_173/add:z:0,lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_173/splitSplit&lstm_cell_173/split/split_dim:output:0lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_173/SigmoidSigmoidlstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_1Sigmoidlstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_173/mulMullstm_cell_173/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_173/ReluRelulstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_1Mullstm_cell_173/Sigmoid:y:0 lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_173/add_1AddV2lstm_cell_173/mul:z:0lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_2Sigmoidlstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_173/Relu_1Relulstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_2Mullstm_cell_173/Sigmoid_2:y:0"lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_173_matmul_readvariableop_resource.lstm_cell_173_matmul_1_readvariableop_resource-lstm_cell_173_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1048455*
condR
while_cond_1048454*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
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
:?????????
?
NoOpNoOp%^lstm_cell_173/BiasAdd/ReadVariableOp$^lstm_cell_173/MatMul/ReadVariableOp&^lstm_cell_173/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_173/BiasAdd/ReadVariableOp$lstm_cell_173/BiasAdd/ReadVariableOp2J
#lstm_cell_173/MatMul/ReadVariableOp#lstm_cell_173/MatMul/ReadVariableOp2N
%lstm_cell_173/MatMul_1/ReadVariableOp%lstm_cell_173/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1047095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1047095___redundant_placeholder05
1while_while_cond_1047095___redundant_placeholder15
1while_while_cond_1047095___redundant_placeholder25
1while_while_cond_1047095___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?B
?

lstm_12_while_body_1049197,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3+
'lstm_12_while_lstm_12_strided_slice_1_0g
clstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_12_while_lstm_cell_171_matmul_readvariableop_resource_0:	?Q
>lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource_0:	d?L
=lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource_0:	?
lstm_12_while_identity
lstm_12_while_identity_1
lstm_12_while_identity_2
lstm_12_while_identity_3
lstm_12_while_identity_4
lstm_12_while_identity_5)
%lstm_12_while_lstm_12_strided_slice_1e
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorM
:lstm_12_while_lstm_cell_171_matmul_readvariableop_resource:	?O
<lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource:	d?J
;lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource:	???2lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp?1lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp?3lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp?
?lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
1lstm_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0lstm_12_while_placeholderHlstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
1lstm_12/while/lstm_cell_171/MatMul/ReadVariableOpReadVariableOp<lstm_12_while_lstm_cell_171_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
"lstm_12/while/lstm_cell_171/MatMulMatMul8lstm_12/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp>lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
$lstm_12/while/lstm_cell_171/MatMul_1MatMullstm_12_while_placeholder_2;lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_12/while/lstm_cell_171/addAddV2,lstm_12/while/lstm_cell_171/MatMul:product:0.lstm_12/while/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
2lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp=lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#lstm_12/while/lstm_cell_171/BiasAddBiasAdd#lstm_12/while/lstm_cell_171/add:z:0:lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
+lstm_12/while/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_12/while/lstm_cell_171/splitSplit4lstm_12/while/lstm_cell_171/split/split_dim:output:0,lstm_12/while/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
#lstm_12/while/lstm_cell_171/SigmoidSigmoid*lstm_12/while/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d?
%lstm_12/while/lstm_cell_171/Sigmoid_1Sigmoid*lstm_12/while/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_12/while/lstm_cell_171/mulMul)lstm_12/while/lstm_cell_171/Sigmoid_1:y:0lstm_12_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
 lstm_12/while/lstm_cell_171/ReluRelu*lstm_12/while/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
!lstm_12/while/lstm_cell_171/mul_1Mul'lstm_12/while/lstm_cell_171/Sigmoid:y:0.lstm_12/while/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
!lstm_12/while/lstm_cell_171/add_1AddV2#lstm_12/while/lstm_cell_171/mul:z:0%lstm_12/while/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
%lstm_12/while/lstm_cell_171/Sigmoid_2Sigmoid*lstm_12/while/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????d?
"lstm_12/while/lstm_cell_171/Relu_1Relu%lstm_12/while/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
!lstm_12/while/lstm_cell_171/mul_2Mul)lstm_12/while/lstm_cell_171/Sigmoid_2:y:00lstm_12/while/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2lstm_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_12_while_placeholder_1lstm_12_while_placeholder%lstm_12/while/lstm_cell_171/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_12/while/addAddV2lstm_12_while_placeholderlstm_12/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_12/while/add_1AddV2(lstm_12_while_lstm_12_while_loop_counterlstm_12/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_12/while/IdentityIdentitylstm_12/while/add_1:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: ?
lstm_12/while/Identity_1Identity.lstm_12_while_lstm_12_while_maximum_iterations^lstm_12/while/NoOp*
T0*
_output_shapes
: q
lstm_12/while/Identity_2Identitylstm_12/while/add:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: ?
lstm_12/while/Identity_3IdentityBlstm_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_12/while/NoOp*
T0*
_output_shapes
: ?
lstm_12/while/Identity_4Identity%lstm_12/while/lstm_cell_171/mul_2:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_12/while/Identity_5Identity%lstm_12/while/lstm_cell_171/add_1:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_12/while/NoOpNoOp3^lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp2^lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp4^lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_12_while_identitylstm_12/while/Identity:output:0"=
lstm_12_while_identity_1!lstm_12/while/Identity_1:output:0"=
lstm_12_while_identity_2!lstm_12/while/Identity_2:output:0"=
lstm_12_while_identity_3!lstm_12/while/Identity_3:output:0"=
lstm_12_while_identity_4!lstm_12/while/Identity_4:output:0"=
lstm_12_while_identity_5!lstm_12/while/Identity_5:output:0"P
%lstm_12_while_lstm_12_strided_slice_1'lstm_12_while_lstm_12_strided_slice_1_0"|
;lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource=lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource_0"~
<lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource>lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource_0"z
:lstm_12_while_lstm_cell_171_matmul_readvariableop_resource<lstm_12_while_lstm_cell_171_matmul_readvariableop_resource_0"?
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2h
2lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp2lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp2f
1lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp1lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp2j
3lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp3lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?B
?

lstm_12_while_body_1049624,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3+
'lstm_12_while_lstm_12_strided_slice_1_0g
clstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_12_while_lstm_cell_171_matmul_readvariableop_resource_0:	?Q
>lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource_0:	d?L
=lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource_0:	?
lstm_12_while_identity
lstm_12_while_identity_1
lstm_12_while_identity_2
lstm_12_while_identity_3
lstm_12_while_identity_4
lstm_12_while_identity_5)
%lstm_12_while_lstm_12_strided_slice_1e
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorM
:lstm_12_while_lstm_cell_171_matmul_readvariableop_resource:	?O
<lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource:	d?J
;lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource:	???2lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp?1lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp?3lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp?
?lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
1lstm_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0lstm_12_while_placeholderHlstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
1lstm_12/while/lstm_cell_171/MatMul/ReadVariableOpReadVariableOp<lstm_12_while_lstm_cell_171_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
"lstm_12/while/lstm_cell_171/MatMulMatMul8lstm_12/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp>lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
$lstm_12/while/lstm_cell_171/MatMul_1MatMullstm_12_while_placeholder_2;lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_12/while/lstm_cell_171/addAddV2,lstm_12/while/lstm_cell_171/MatMul:product:0.lstm_12/while/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
2lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp=lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#lstm_12/while/lstm_cell_171/BiasAddBiasAdd#lstm_12/while/lstm_cell_171/add:z:0:lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
+lstm_12/while/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_12/while/lstm_cell_171/splitSplit4lstm_12/while/lstm_cell_171/split/split_dim:output:0,lstm_12/while/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
#lstm_12/while/lstm_cell_171/SigmoidSigmoid*lstm_12/while/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d?
%lstm_12/while/lstm_cell_171/Sigmoid_1Sigmoid*lstm_12/while/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_12/while/lstm_cell_171/mulMul)lstm_12/while/lstm_cell_171/Sigmoid_1:y:0lstm_12_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
 lstm_12/while/lstm_cell_171/ReluRelu*lstm_12/while/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
!lstm_12/while/lstm_cell_171/mul_1Mul'lstm_12/while/lstm_cell_171/Sigmoid:y:0.lstm_12/while/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
!lstm_12/while/lstm_cell_171/add_1AddV2#lstm_12/while/lstm_cell_171/mul:z:0%lstm_12/while/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
%lstm_12/while/lstm_cell_171/Sigmoid_2Sigmoid*lstm_12/while/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????d?
"lstm_12/while/lstm_cell_171/Relu_1Relu%lstm_12/while/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
!lstm_12/while/lstm_cell_171/mul_2Mul)lstm_12/while/lstm_cell_171/Sigmoid_2:y:00lstm_12/while/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2lstm_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_12_while_placeholder_1lstm_12_while_placeholder%lstm_12/while/lstm_cell_171/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_12/while/addAddV2lstm_12_while_placeholderlstm_12/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_12/while/add_1AddV2(lstm_12_while_lstm_12_while_loop_counterlstm_12/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_12/while/IdentityIdentitylstm_12/while/add_1:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: ?
lstm_12/while/Identity_1Identity.lstm_12_while_lstm_12_while_maximum_iterations^lstm_12/while/NoOp*
T0*
_output_shapes
: q
lstm_12/while/Identity_2Identitylstm_12/while/add:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: ?
lstm_12/while/Identity_3IdentityBlstm_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_12/while/NoOp*
T0*
_output_shapes
: ?
lstm_12/while/Identity_4Identity%lstm_12/while/lstm_cell_171/mul_2:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_12/while/Identity_5Identity%lstm_12/while/lstm_cell_171/add_1:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_12/while/NoOpNoOp3^lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp2^lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp4^lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_12_while_identitylstm_12/while/Identity:output:0"=
lstm_12_while_identity_1!lstm_12/while/Identity_1:output:0"=
lstm_12_while_identity_2!lstm_12/while/Identity_2:output:0"=
lstm_12_while_identity_3!lstm_12/while/Identity_3:output:0"=
lstm_12_while_identity_4!lstm_12/while/Identity_4:output:0"=
lstm_12_while_identity_5!lstm_12/while/Identity_5:output:0"P
%lstm_12_while_lstm_12_strided_slice_1'lstm_12_while_lstm_12_strided_slice_1_0"|
;lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource=lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource_0"~
<lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource>lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource_0"z
:lstm_12_while_lstm_cell_171_matmul_readvariableop_resource<lstm_12_while_lstm_cell_171_matmul_readvariableop_resource_0"?
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2h
2lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp2lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp2f
1lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp1lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp2j
3lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp3lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_1047445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1047445___redundant_placeholder05
1while_while_cond_1047445___redundant_placeholder15
1while_while_cond_1047445___redundant_placeholder25
1while_while_cond_1047445___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_1048619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1048619___redundant_placeholder05
1while_while_cond_1048619___redundant_placeholder15
1while_while_cond_1048619___redundant_placeholder25
1while_while_cond_1048619___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?

?
lstm_14_while_cond_1049474,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3.
*lstm_14_while_less_lstm_14_strided_slice_1E
Alstm_14_while_lstm_14_while_cond_1049474___redundant_placeholder0E
Alstm_14_while_lstm_14_while_cond_1049474___redundant_placeholder1E
Alstm_14_while_lstm_14_while_cond_1049474___redundant_placeholder2E
Alstm_14_while_lstm_14_while_cond_1049474___redundant_placeholder3
lstm_14_while_identity
?
lstm_14/while/LessLesslstm_14_while_placeholder*lstm_14_while_less_lstm_14_strided_slice_1*
T0*
_output_shapes
: [
lstm_14/while/IdentityIdentitylstm_14/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_14_while_identitylstm_14/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1051925

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?
?
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1047387

inputs

states
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?K
?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1050938
inputs_0?
,lstm_cell_172_matmul_readvariableop_resource:	d?A
.lstm_cell_172_matmul_1_readvariableop_resource:	2?<
-lstm_cell_172_biasadd_readvariableop_resource:	?
identity??$lstm_cell_172/BiasAdd/ReadVariableOp?#lstm_cell_172/MatMul/ReadVariableOp?%lstm_cell_172/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_172/MatMul/ReadVariableOpReadVariableOp,lstm_cell_172_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_172/MatMulMatMulstrided_slice_2:output:0+lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_172_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_172/MatMul_1MatMulzeros:output:0-lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_172/addAddV2lstm_cell_172/MatMul:product:0 lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_172_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_172/BiasAddBiasAddlstm_cell_172/add:z:0,lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_172/splitSplit&lstm_cell_172/split/split_dim:output:0lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_172/SigmoidSigmoidlstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_1Sigmoidlstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_172/mulMullstm_cell_172/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_172/ReluRelulstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_1Mullstm_cell_172/Sigmoid:y:0 lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_172/add_1AddV2lstm_cell_172/mul:z:0lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_2Sigmoidlstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_172/Relu_1Relulstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_2Mullstm_cell_172/Sigmoid_2:y:0"lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_172_matmul_readvariableop_resource.lstm_cell_172_matmul_1_readvariableop_resource-lstm_cell_172_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1050854*
condR
while_cond_1050853*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2?
NoOpNoOp%^lstm_cell_172/BiasAdd/ReadVariableOp$^lstm_cell_172/MatMul/ReadVariableOp&^lstm_cell_172/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_172/BiasAdd/ReadVariableOp$lstm_cell_172/BiasAdd/ReadVariableOp2J
#lstm_cell_172/MatMul/ReadVariableOp#lstm_cell_172/MatMul/ReadVariableOp2N
%lstm_cell_172/MatMul_1/ReadVariableOp%lstm_cell_172/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?#
?
while_body_1047796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_173_1047820_0:2(/
while_lstm_cell_173_1047822_0:
(+
while_lstm_cell_173_1047824_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_173_1047820:2(-
while_lstm_cell_173_1047822:
()
while_lstm_cell_173_1047824:(??+while/lstm_cell_173/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_173/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_173_1047820_0while_lstm_cell_173_1047822_0while_lstm_cell_173_1047824_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1047737?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_173/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_173/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_173/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_173/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_173_1047820while_lstm_cell_173_1047820_0"<
while_lstm_cell_173_1047822while_lstm_cell_173_1047822_0"<
while_lstm_cell_173_1047824while_lstm_cell_173_1047824_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_173/StatefulPartitionedCall+while/lstm_cell_173/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
??
?

I__inference_sequential_4_layer_call_and_return_conditional_losses_1049565

inputsG
4lstm_12_lstm_cell_171_matmul_readvariableop_resource:	?I
6lstm_12_lstm_cell_171_matmul_1_readvariableop_resource:	d?D
5lstm_12_lstm_cell_171_biasadd_readvariableop_resource:	?G
4lstm_13_lstm_cell_172_matmul_readvariableop_resource:	d?I
6lstm_13_lstm_cell_172_matmul_1_readvariableop_resource:	2?D
5lstm_13_lstm_cell_172_biasadd_readvariableop_resource:	?F
4lstm_14_lstm_cell_173_matmul_readvariableop_resource:2(H
6lstm_14_lstm_cell_173_matmul_1_readvariableop_resource:
(C
5lstm_14_lstm_cell_173_biasadd_readvariableop_resource:(8
&dense_4_matmul_readvariableop_resource:
5
'dense_4_biasadd_readvariableop_resource:
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?,lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp?+lstm_12/lstm_cell_171/MatMul/ReadVariableOp?-lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp?lstm_12/while?,lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp?+lstm_13/lstm_cell_172/MatMul/ReadVariableOp?-lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp?lstm_13/while?,lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp?+lstm_14/lstm_cell_173/MatMul/ReadVariableOp?-lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp?lstm_14/whileC
lstm_12/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_12/strided_sliceStridedSlicelstm_12/Shape:output:0$lstm_12/strided_slice/stack:output:0&lstm_12/strided_slice/stack_1:output:0&lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_12/zeros/packedPacklstm_12/strided_slice:output:0lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_12/zerosFilllstm_12/zeros/packed:output:0lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dZ
lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_12/zeros_1/packedPacklstm_12/strided_slice:output:0!lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_12/zeros_1Filllstm_12/zeros_1/packed:output:0lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dk
lstm_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_12/transpose	Transposeinputslstm_12/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_12/Shape_1Shapelstm_12/transpose:y:0*
T0*
_output_shapes
:g
lstm_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_12/strided_slice_1StridedSlicelstm_12/Shape_1:output:0&lstm_12/strided_slice_1/stack:output:0(lstm_12/strided_slice_1/stack_1:output:0(lstm_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_12/TensorArrayV2TensorListReserve,lstm_12/TensorArrayV2/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/lstm_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_12/transpose:y:0Flstm_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_12/strided_slice_2StridedSlicelstm_12/transpose:y:0&lstm_12/strided_slice_2/stack:output:0(lstm_12/strided_slice_2/stack_1:output:0(lstm_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
+lstm_12/lstm_cell_171/MatMul/ReadVariableOpReadVariableOp4lstm_12_lstm_cell_171_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_12/lstm_cell_171/MatMulMatMul lstm_12/strided_slice_2:output:03lstm_12/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-lstm_12/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp6lstm_12_lstm_cell_171_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_12/lstm_cell_171/MatMul_1MatMullstm_12/zeros:output:05lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_12/lstm_cell_171/addAddV2&lstm_12/lstm_cell_171/MatMul:product:0(lstm_12/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
,lstm_12/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp5lstm_12_lstm_cell_171_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_12/lstm_cell_171/BiasAddBiasAddlstm_12/lstm_cell_171/add:z:04lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%lstm_12/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_12/lstm_cell_171/splitSplit.lstm_12/lstm_cell_171/split/split_dim:output:0&lstm_12/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_12/lstm_cell_171/SigmoidSigmoid$lstm_12/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/Sigmoid_1Sigmoid$lstm_12/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/mulMul#lstm_12/lstm_cell_171/Sigmoid_1:y:0lstm_12/zeros_1:output:0*
T0*'
_output_shapes
:?????????dz
lstm_12/lstm_cell_171/ReluRelu$lstm_12/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/mul_1Mul!lstm_12/lstm_cell_171/Sigmoid:y:0(lstm_12/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/add_1AddV2lstm_12/lstm_cell_171/mul:z:0lstm_12/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/Sigmoid_2Sigmoid$lstm_12/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????dw
lstm_12/lstm_cell_171/Relu_1Relulstm_12/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/mul_2Mul#lstm_12/lstm_cell_171/Sigmoid_2:y:0*lstm_12/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dv
%lstm_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_12/TensorArrayV2_1TensorListReserve.lstm_12/TensorArrayV2_1/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_12/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_12/whileWhile#lstm_12/while/loop_counter:output:0)lstm_12/while/maximum_iterations:output:0lstm_12/time:output:0 lstm_12/TensorArrayV2_1:handle:0lstm_12/zeros:output:0lstm_12/zeros_1:output:0 lstm_12/strided_slice_1:output:0?lstm_12/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_12_lstm_cell_171_matmul_readvariableop_resource6lstm_12_lstm_cell_171_matmul_1_readvariableop_resource5lstm_12_lstm_cell_171_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_12_while_body_1049197*&
condR
lstm_12_while_cond_1049196*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
8lstm_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
*lstm_12/TensorArrayV2Stack/TensorListStackTensorListStacklstm_12/while:output:3Alstm_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0p
lstm_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_12/strided_slice_3StridedSlice3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_12/strided_slice_3/stack:output:0(lstm_12/strided_slice_3/stack_1:output:0(lstm_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskm
lstm_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_12/transpose_1	Transpose3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dc
lstm_12/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_13/ShapeShapelstm_12/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_13/strided_sliceStridedSlicelstm_13/Shape:output:0$lstm_13/strided_slice/stack:output:0&lstm_13/strided_slice/stack_1:output:0&lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_13/zeros/packedPacklstm_13/strided_slice:output:0lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_13/zerosFilllstm_13/zeros/packed:output:0lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2Z
lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_13/zeros_1/packedPacklstm_13/strided_slice:output:0!lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_13/zeros_1Filllstm_13/zeros_1/packed:output:0lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2k
lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_13/transpose	Transposelstm_12/transpose_1:y:0lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dT
lstm_13/Shape_1Shapelstm_13/transpose:y:0*
T0*
_output_shapes
:g
lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_13/strided_slice_1StridedSlicelstm_13/Shape_1:output:0&lstm_13/strided_slice_1/stack:output:0(lstm_13/strided_slice_1/stack_1:output:0(lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_13/TensorArrayV2TensorListReserve,lstm_13/TensorArrayV2/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_13/transpose:y:0Flstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_13/strided_slice_2StridedSlicelstm_13/transpose:y:0&lstm_13/strided_slice_2/stack:output:0(lstm_13/strided_slice_2/stack_1:output:0(lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
+lstm_13/lstm_cell_172/MatMul/ReadVariableOpReadVariableOp4lstm_13_lstm_cell_172_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_13/lstm_cell_172/MatMulMatMul lstm_13/strided_slice_2:output:03lstm_13/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-lstm_13/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp6lstm_13_lstm_cell_172_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_13/lstm_cell_172/MatMul_1MatMullstm_13/zeros:output:05lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_13/lstm_cell_172/addAddV2&lstm_13/lstm_cell_172/MatMul:product:0(lstm_13/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
,lstm_13/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp5lstm_13_lstm_cell_172_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_13/lstm_cell_172/BiasAddBiasAddlstm_13/lstm_cell_172/add:z:04lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%lstm_13/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_13/lstm_cell_172/splitSplit.lstm_13/lstm_cell_172/split/split_dim:output:0&lstm_13/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_13/lstm_cell_172/SigmoidSigmoid$lstm_13/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/Sigmoid_1Sigmoid$lstm_13/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/mulMul#lstm_13/lstm_cell_172/Sigmoid_1:y:0lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:?????????2z
lstm_13/lstm_cell_172/ReluRelu$lstm_13/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/mul_1Mul!lstm_13/lstm_cell_172/Sigmoid:y:0(lstm_13/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/add_1AddV2lstm_13/lstm_cell_172/mul:z:0lstm_13/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/Sigmoid_2Sigmoid$lstm_13/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2w
lstm_13/lstm_cell_172/Relu_1Relulstm_13/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/mul_2Mul#lstm_13/lstm_cell_172/Sigmoid_2:y:0*lstm_13/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2v
%lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_13/TensorArrayV2_1TensorListReserve.lstm_13/TensorArrayV2_1/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_13/whileWhile#lstm_13/while/loop_counter:output:0)lstm_13/while/maximum_iterations:output:0lstm_13/time:output:0 lstm_13/TensorArrayV2_1:handle:0lstm_13/zeros:output:0lstm_13/zeros_1:output:0 lstm_13/strided_slice_1:output:0?lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_13_lstm_cell_172_matmul_readvariableop_resource6lstm_13_lstm_cell_172_matmul_1_readvariableop_resource5lstm_13_lstm_cell_172_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_13_while_body_1049336*&
condR
lstm_13_while_cond_1049335*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
*lstm_13/TensorArrayV2Stack/TensorListStackTensorListStacklstm_13/while:output:3Alstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0p
lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_13/strided_slice_3StridedSlice3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_13/strided_slice_3/stack:output:0(lstm_13/strided_slice_3/stack_1:output:0(lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskm
lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_13/transpose_1	Transpose3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2c
lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_14/ShapeShapelstm_13/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_14/strided_sliceStridedSlicelstm_14/Shape:output:0$lstm_14/strided_slice/stack:output:0&lstm_14/strided_slice/stack_1:output:0&lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_14/zeros/packedPacklstm_14/strided_slice:output:0lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_14/zerosFilllstm_14/zeros/packed:output:0lstm_14/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
Z
lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_14/zeros_1/packedPacklstm_14/strided_slice:output:0!lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_14/zeros_1Filllstm_14/zeros_1/packed:output:0lstm_14/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
k
lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_14/transpose	Transposelstm_13/transpose_1:y:0lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2T
lstm_14/Shape_1Shapelstm_14/transpose:y:0*
T0*
_output_shapes
:g
lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_14/strided_slice_1StridedSlicelstm_14/Shape_1:output:0&lstm_14/strided_slice_1/stack:output:0(lstm_14/strided_slice_1/stack_1:output:0(lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_14/TensorArrayV2TensorListReserve,lstm_14/TensorArrayV2/element_shape:output:0 lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
/lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_14/transpose:y:0Flstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_14/strided_slice_2StridedSlicelstm_14/transpose:y:0&lstm_14/strided_slice_2/stack:output:0(lstm_14/strided_slice_2/stack_1:output:0(lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
+lstm_14/lstm_cell_173/MatMul/ReadVariableOpReadVariableOp4lstm_14_lstm_cell_173_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_14/lstm_cell_173/MatMulMatMul lstm_14/strided_slice_2:output:03lstm_14/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
-lstm_14/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp6lstm_14_lstm_cell_173_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_14/lstm_cell_173/MatMul_1MatMullstm_14/zeros:output:05lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_14/lstm_cell_173/addAddV2&lstm_14/lstm_cell_173/MatMul:product:0(lstm_14/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
,lstm_14/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp5lstm_14_lstm_cell_173_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_14/lstm_cell_173/BiasAddBiasAddlstm_14/lstm_cell_173/add:z:04lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(g
%lstm_14/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_14/lstm_cell_173/splitSplit.lstm_14/lstm_cell_173/split/split_dim:output:0&lstm_14/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_14/lstm_cell_173/SigmoidSigmoid$lstm_14/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/Sigmoid_1Sigmoid$lstm_14/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/mulMul#lstm_14/lstm_cell_173/Sigmoid_1:y:0lstm_14/zeros_1:output:0*
T0*'
_output_shapes
:?????????
z
lstm_14/lstm_cell_173/ReluRelu$lstm_14/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/mul_1Mul!lstm_14/lstm_cell_173/Sigmoid:y:0(lstm_14/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/add_1AddV2lstm_14/lstm_cell_173/mul:z:0lstm_14/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/Sigmoid_2Sigmoid$lstm_14/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
w
lstm_14/lstm_cell_173/Relu_1Relulstm_14/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/mul_2Mul#lstm_14/lstm_cell_173/Sigmoid_2:y:0*lstm_14/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
v
%lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_14/TensorArrayV2_1TensorListReserve.lstm_14/TensorArrayV2_1/element_shape:output:0 lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_14/whileWhile#lstm_14/while/loop_counter:output:0)lstm_14/while/maximum_iterations:output:0lstm_14/time:output:0 lstm_14/TensorArrayV2_1:handle:0lstm_14/zeros:output:0lstm_14/zeros_1:output:0 lstm_14/strided_slice_1:output:0?lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_14_lstm_cell_173_matmul_readvariableop_resource6lstm_14_lstm_cell_173_matmul_1_readvariableop_resource5lstm_14_lstm_cell_173_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_14_while_body_1049475*&
condR
lstm_14_while_cond_1049474*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
8lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
*lstm_14/TensorArrayV2Stack/TensorListStackTensorListStacklstm_14/while:output:3Alstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0p
lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_14/strided_slice_3StridedSlice3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_14/strided_slice_3/stack:output:0(lstm_14/strided_slice_3/stack_1:output:0(lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskm
lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_14/transpose_1	Transpose3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_14/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
c
lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_4/MatMulMatMul lstm_14/strided_slice_3:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp-^lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp,^lstm_12/lstm_cell_171/MatMul/ReadVariableOp.^lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp^lstm_12/while-^lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp,^lstm_13/lstm_cell_172/MatMul/ReadVariableOp.^lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp^lstm_13/while-^lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp,^lstm_14/lstm_cell_173/MatMul/ReadVariableOp.^lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp^lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2\
,lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp,lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp2Z
+lstm_12/lstm_cell_171/MatMul/ReadVariableOp+lstm_12/lstm_cell_171/MatMul/ReadVariableOp2^
-lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp-lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp2
lstm_12/whilelstm_12/while2\
,lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp,lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp2Z
+lstm_13/lstm_cell_172/MatMul/ReadVariableOp+lstm_13/lstm_cell_172/MatMul/ReadVariableOp2^
-lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp-lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp2
lstm_13/whilelstm_13/while2\
,lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp,lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp2Z
+lstm_14/lstm_cell_173/MatMul/ReadVariableOp+lstm_14/lstm_cell_173/MatMul/ReadVariableOp2^
-lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp-lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp2
lstm_14/whilelstm_14/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1051140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_172_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_172_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_172_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_172_matmul_readvariableop_resource:	d?G
4while_lstm_cell_172_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_172_biasadd_readvariableop_resource:	???*while/lstm_cell_172/BiasAdd/ReadVariableOp?)while/lstm_cell_172/MatMul/ReadVariableOp?+while/lstm_cell_172/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_172/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_172_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_172/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_172_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_172/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_172/addAddV2$while/lstm_cell_172/MatMul:product:0&while/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_172_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_172/BiasAddBiasAddwhile/lstm_cell_172/add:z:02while/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_172/splitSplit,while/lstm_cell_172/split/split_dim:output:0$while/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_172/SigmoidSigmoid"while/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_1Sigmoid"while/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mulMul!while/lstm_cell_172/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_172/ReluRelu"while/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_1Mulwhile/lstm_cell_172/Sigmoid:y:0&while/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/add_1AddV2while/lstm_cell_172/mul:z:0while/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_2Sigmoid"while/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_172/Relu_1Reluwhile/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_2Mul!while/lstm_cell_172/Sigmoid_2:y:0(while/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_172/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_172/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_172/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_172/BiasAdd/ReadVariableOp*^while/lstm_cell_172/MatMul/ReadVariableOp,^while/lstm_cell_172/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_172_biasadd_readvariableop_resource5while_lstm_cell_172_biasadd_readvariableop_resource_0"n
4while_lstm_cell_172_matmul_1_readvariableop_resource6while_lstm_cell_172_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_172_matmul_readvariableop_resource4while_lstm_cell_172_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_172/BiasAdd/ReadVariableOp*while/lstm_cell_172/BiasAdd/ReadVariableOp2V
)while/lstm_cell_172/MatMul/ReadVariableOp)while/lstm_cell_172/MatMul/ReadVariableOp2Z
+while/lstm_cell_172/MatMul_1/ReadVariableOp+while/lstm_cell_172/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_1051327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_173_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_173_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_173_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_173_matmul_readvariableop_resource:2(F
4while_lstm_cell_173_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_173_biasadd_readvariableop_resource:(??*while/lstm_cell_173/BiasAdd/ReadVariableOp?)while/lstm_cell_173/MatMul/ReadVariableOp?+while/lstm_cell_173/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_173/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_173_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_173/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_173_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_173/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_173/addAddV2$while/lstm_cell_173/MatMul:product:0&while/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_173_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_173/BiasAddBiasAddwhile/lstm_cell_173/add:z:02while/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_173/splitSplit,while/lstm_cell_173/split/split_dim:output:0$while/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_173/SigmoidSigmoid"while/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_1Sigmoid"while/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mulMul!while/lstm_cell_173/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_173/ReluRelu"while/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_1Mulwhile/lstm_cell_173/Sigmoid:y:0&while/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/add_1AddV2while/lstm_cell_173/mul:z:0while/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_2Sigmoid"while/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_173/Relu_1Reluwhile/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_2Mul!while/lstm_cell_173/Sigmoid_2:y:0(while/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_173/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_173/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_173/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_173/BiasAdd/ReadVariableOp*^while/lstm_cell_173/MatMul/ReadVariableOp,^while/lstm_cell_173/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_173_biasadd_readvariableop_resource5while_lstm_cell_173_biasadd_readvariableop_resource_0"n
4while_lstm_cell_173_matmul_1_readvariableop_resource6while_lstm_cell_173_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_173_matmul_readvariableop_resource4while_lstm_cell_173_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_173/BiasAdd/ReadVariableOp*while/lstm_cell_173/BiasAdd/ReadVariableOp2V
)while/lstm_cell_173/MatMul/ReadVariableOp)while/lstm_cell_173/MatMul/ReadVariableOp2Z
+while/lstm_cell_173/MatMul_1/ReadVariableOp+while/lstm_cell_173/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_lstm_cell_172_layer_call_fn_1051974

inputs
states_0
states_1
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1047241o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?
?
)__inference_lstm_13_layer_call_fn_1050652

inputs
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_13_layer_call_and_return_conditional_losses_1048704s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1050853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1050853___redundant_placeholder05
1while_while_cond_1050853___redundant_placeholder15
1while_while_cond_1050853___redundant_placeholder25
1while_while_cond_1050853___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?#
?
while_body_1046905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_171_1046929_0:	?0
while_lstm_cell_171_1046931_0:	d?,
while_lstm_cell_171_1046933_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_171_1046929:	?.
while_lstm_cell_171_1046931:	d?*
while_lstm_cell_171_1046933:	???+while/lstm_cell_171/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_171/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_171_1046929_0while_lstm_cell_171_1046931_0while_lstm_cell_171_1046933_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1046891?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_171/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_171/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_171/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_171/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_171_1046929while_lstm_cell_171_1046929_0"<
while_lstm_cell_171_1046931while_lstm_cell_171_1046931_0"<
while_lstm_cell_171_1046933while_lstm_cell_171_1046933_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_171/StatefulPartitionedCall+while/lstm_cell_171/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?8
?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1047165

inputs(
lstm_cell_171_1047083:	?(
lstm_cell_171_1047085:	d?$
lstm_cell_171_1047087:	?
identity??%lstm_cell_171/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
%lstm_cell_171/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_171_1047083lstm_cell_171_1047085lstm_cell_171_1047087*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1047037n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_171_1047083lstm_cell_171_1047085lstm_cell_171_1047087*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1047096*
condR
while_cond_1047095*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????dv
NoOpNoOp&^lstm_cell_171/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_171/StatefulPartitionedCall%lstm_cell_171/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_171_layer_call_fn_1051893

inputs
states_0
states_1
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1047037o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?

?
.__inference_sequential_4_layer_call_fn_1049138

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1048937o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1051756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_173_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_173_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_173_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_173_matmul_readvariableop_resource:2(F
4while_lstm_cell_173_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_173_biasadd_readvariableop_resource:(??*while/lstm_cell_173/BiasAdd/ReadVariableOp?)while/lstm_cell_173/MatMul/ReadVariableOp?+while/lstm_cell_173/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_173/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_173_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_173/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_173_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_173/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_173/addAddV2$while/lstm_cell_173/MatMul:product:0&while/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_173_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_173/BiasAddBiasAddwhile/lstm_cell_173/add:z:02while/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_173/splitSplit,while/lstm_cell_173/split/split_dim:output:0$while/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_173/SigmoidSigmoid"while/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_1Sigmoid"while/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mulMul!while/lstm_cell_173/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_173/ReluRelu"while/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_1Mulwhile/lstm_cell_173/Sigmoid:y:0&while/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/add_1AddV2while/lstm_cell_173/mul:z:0while/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_2Sigmoid"while/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_173/Relu_1Reluwhile/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_2Mul!while/lstm_cell_173/Sigmoid_2:y:0(while/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_173/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_173/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_173/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_173/BiasAdd/ReadVariableOp*^while/lstm_cell_173/MatMul/ReadVariableOp,^while/lstm_cell_173/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_173_biasadd_readvariableop_resource5while_lstm_cell_173_biasadd_readvariableop_resource_0"n
4while_lstm_cell_173_matmul_1_readvariableop_resource6while_lstm_cell_173_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_173_matmul_readvariableop_resource4while_lstm_cell_173_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_173/BiasAdd/ReadVariableOp*while/lstm_cell_173/BiasAdd/ReadVariableOp2V
)while/lstm_cell_173/MatMul/ReadVariableOp)while/lstm_cell_173/MatMul/ReadVariableOp2Z
+while/lstm_cell_173/MatMul_1/ReadVariableOp+while/lstm_cell_173/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?K
?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051554
inputs_0>
,lstm_cell_173_matmul_readvariableop_resource:2(@
.lstm_cell_173_matmul_1_readvariableop_resource:
(;
-lstm_cell_173_biasadd_readvariableop_resource:(
identity??$lstm_cell_173/BiasAdd/ReadVariableOp?#lstm_cell_173/MatMul/ReadVariableOp?%lstm_cell_173/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_173/MatMul/ReadVariableOpReadVariableOp,lstm_cell_173_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_173/MatMulMatMulstrided_slice_2:output:0+lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_173_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_173/MatMul_1MatMulzeros:output:0-lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_173/addAddV2lstm_cell_173/MatMul:product:0 lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_173_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_173/BiasAddBiasAddlstm_cell_173/add:z:0,lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_173/splitSplit&lstm_cell_173/split/split_dim:output:0lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_173/SigmoidSigmoidlstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_1Sigmoidlstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_173/mulMullstm_cell_173/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_173/ReluRelulstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_1Mullstm_cell_173/Sigmoid:y:0 lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_173/add_1AddV2lstm_cell_173/mul:z:0lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_2Sigmoidlstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_173/Relu_1Relulstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_2Mullstm_cell_173/Sigmoid_2:y:0"lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_173_matmul_readvariableop_resource.lstm_cell_173_matmul_1_readvariableop_resource-lstm_cell_173_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1051470*
condR
while_cond_1051469*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
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
:?????????
?
NoOpNoOp%^lstm_cell_173/BiasAdd/ReadVariableOp$^lstm_cell_173/MatMul/ReadVariableOp&^lstm_cell_173/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_173/BiasAdd/ReadVariableOp$lstm_cell_173/BiasAdd/ReadVariableOp2J
#lstm_cell_173/MatMul/ReadVariableOp#lstm_cell_173/MatMul/ReadVariableOp2N
%lstm_cell_173/MatMul_1/ReadVariableOp%lstm_cell_173/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?V
?
 __inference__traced_save_1052296
file_prefix-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_12_lstm_cell_12_kernel_read_readvariableopD
@savev2_lstm_12_lstm_cell_12_recurrent_kernel_read_readvariableop8
4savev2_lstm_12_lstm_cell_12_bias_read_readvariableop:
6savev2_lstm_13_lstm_cell_13_kernel_read_readvariableopD
@savev2_lstm_13_lstm_cell_13_recurrent_kernel_read_readvariableop8
4savev2_lstm_13_lstm_cell_13_bias_read_readvariableop:
6savev2_lstm_14_lstm_cell_14_kernel_read_readvariableopD
@savev2_lstm_14_lstm_cell_14_recurrent_kernel_read_readvariableop8
4savev2_lstm_14_lstm_cell_14_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableopA
=savev2_adam_lstm_12_lstm_cell_12_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_12_lstm_cell_12_bias_m_read_readvariableopA
=savev2_adam_lstm_13_lstm_cell_13_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_13_lstm_cell_13_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_13_lstm_cell_13_bias_m_read_readvariableopA
=savev2_adam_lstm_14_lstm_cell_14_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_14_lstm_cell_14_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableopA
=savev2_adam_lstm_12_lstm_cell_12_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_12_lstm_cell_12_bias_v_read_readvariableopA
=savev2_adam_lstm_13_lstm_cell_13_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_13_lstm_cell_13_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_13_lstm_cell_13_bias_v_read_readvariableopA
=savev2_adam_lstm_14_lstm_cell_14_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_14_lstm_cell_14_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_12_lstm_cell_12_kernel_read_readvariableop@savev2_lstm_12_lstm_cell_12_recurrent_kernel_read_readvariableop4savev2_lstm_12_lstm_cell_12_bias_read_readvariableop6savev2_lstm_13_lstm_cell_13_kernel_read_readvariableop@savev2_lstm_13_lstm_cell_13_recurrent_kernel_read_readvariableop4savev2_lstm_13_lstm_cell_13_bias_read_readvariableop6savev2_lstm_14_lstm_cell_14_kernel_read_readvariableop@savev2_lstm_14_lstm_cell_14_recurrent_kernel_read_readvariableop4savev2_lstm_14_lstm_cell_14_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop=savev2_adam_lstm_12_lstm_cell_12_kernel_m_read_readvariableopGsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_12_lstm_cell_12_bias_m_read_readvariableop=savev2_adam_lstm_13_lstm_cell_13_kernel_m_read_readvariableopGsavev2_adam_lstm_13_lstm_cell_13_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_13_lstm_cell_13_bias_m_read_readvariableop=savev2_adam_lstm_14_lstm_cell_14_kernel_m_read_readvariableopGsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_14_lstm_cell_14_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop=savev2_adam_lstm_12_lstm_cell_12_kernel_v_read_readvariableopGsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_12_lstm_cell_12_bias_v_read_readvariableop=savev2_adam_lstm_13_lstm_cell_13_kernel_v_read_readvariableopGsavev2_adam_lstm_13_lstm_cell_13_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_13_lstm_cell_13_bias_v_read_readvariableop=savev2_adam_lstm_14_lstm_cell_14_kernel_v_read_readvariableopGsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_14_lstm_cell_14_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :
:: : : : : :	?:	d?:?:	d?:	2?:?:2(:
(:(: : :
::	?:	d?:?:	d?:	2?:?:2(:
(:(:
::	?:	d?:?:	d?:	2?:?:2(:
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
:	?:%	!

_output_shapes
:	d?:!


_output_shapes	
:?:%!

_output_shapes
:	d?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:$ 

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
:	?:%!

_output_shapes
:	d?:!

_output_shapes	
:?:%!

_output_shapes
:	d?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:$ 

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
:	?:%!!

_output_shapes
:	d?:!"

_output_shapes	
:?:%#!

_output_shapes
:	d?:%$!

_output_shapes
:	2?:!%

_output_shapes	
:?:$& 

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
?
?
while_cond_1047938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1047938___redundant_placeholder05
1while_while_cond_1047938___redundant_placeholder15
1while_while_cond_1047938___redundant_placeholder25
1while_while_cond_1047938___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_1050524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_171_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_171_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_171_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_171_matmul_readvariableop_resource:	?G
4while_lstm_cell_171_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_171_biasadd_readvariableop_resource:	???*while/lstm_cell_171/BiasAdd/ReadVariableOp?)while/lstm_cell_171/MatMul/ReadVariableOp?+while/lstm_cell_171/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_171/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_171_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_171/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_171_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_171/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_171/addAddV2$while/lstm_cell_171/MatMul:product:0&while/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_171_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_171/BiasAddBiasAddwhile/lstm_cell_171/add:z:02while/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_171/splitSplit,while/lstm_cell_171/split/split_dim:output:0$while/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_171/SigmoidSigmoid"while/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_1Sigmoid"while/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mulMul!while/lstm_cell_171/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_171/ReluRelu"while/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_1Mulwhile/lstm_cell_171/Sigmoid:y:0&while/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/add_1AddV2while/lstm_cell_171/mul:z:0while/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_2Sigmoid"while/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_171/Relu_1Reluwhile/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_2Mul!while/lstm_cell_171/Sigmoid_2:y:0(while/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_171/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_171/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_171/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_171/BiasAdd/ReadVariableOp*^while/lstm_cell_171/MatMul/ReadVariableOp,^while/lstm_cell_171/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_171_biasadd_readvariableop_resource5while_lstm_cell_171_biasadd_readvariableop_resource_0"n
4while_lstm_cell_171_matmul_1_readvariableop_resource6while_lstm_cell_171_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_171_matmul_readvariableop_resource4while_lstm_cell_171_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_171/BiasAdd/ReadVariableOp*while/lstm_cell_171/BiasAdd/ReadVariableOp2V
)while/lstm_cell_171/MatMul/ReadVariableOp)while/lstm_cell_171/MatMul/ReadVariableOp2Z
+while/lstm_cell_171/MatMul_1/ReadVariableOp+while/lstm_cell_171/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_1051612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1051612___redundant_placeholder05
1while_while_cond_1051612___redundant_placeholder15
1while_while_cond_1051612___redundant_placeholder25
1while_while_cond_1051612___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?8
?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1047515

inputs(
lstm_cell_172_1047433:	d?(
lstm_cell_172_1047435:	2?$
lstm_cell_172_1047437:	?
identity??%lstm_cell_172/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
%lstm_cell_172/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_172_1047433lstm_cell_172_1047435lstm_cell_172_1047437*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1047387n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_172_1047433lstm_cell_172_1047435lstm_cell_172_1047437*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1047446*
condR
while_cond_1047445*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2v
NoOpNoOp&^lstm_cell_172/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_172/StatefulPartitionedCall%lstm_cell_172/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
.__inference_sequential_4_layer_call_fn_1049111

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1048348o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1047795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1047795___redundant_placeholder05
1while_while_cond_1047795___redundant_placeholder15
1while_while_cond_1047795___redundant_placeholder25
1while_while_cond_1047795___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_1050854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_172_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_172_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_172_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_172_matmul_readvariableop_resource:	d?G
4while_lstm_cell_172_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_172_biasadd_readvariableop_resource:	???*while/lstm_cell_172/BiasAdd/ReadVariableOp?)while/lstm_cell_172/MatMul/ReadVariableOp?+while/lstm_cell_172/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_172/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_172_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_172/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_172_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_172/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_172/addAddV2$while/lstm_cell_172/MatMul:product:0&while/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_172_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_172/BiasAddBiasAddwhile/lstm_cell_172/add:z:02while/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_172/splitSplit,while/lstm_cell_172/split/split_dim:output:0$while/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_172/SigmoidSigmoid"while/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_1Sigmoid"while/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mulMul!while/lstm_cell_172/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_172/ReluRelu"while/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_1Mulwhile/lstm_cell_172/Sigmoid:y:0&while/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/add_1AddV2while/lstm_cell_172/mul:z:0while/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_2Sigmoid"while/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_172/Relu_1Reluwhile/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_2Mul!while/lstm_cell_172/Sigmoid_2:y:0(while/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_172/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_172/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_172/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_172/BiasAdd/ReadVariableOp*^while/lstm_cell_172/MatMul/ReadVariableOp,^while/lstm_cell_172/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_172_biasadd_readvariableop_resource5while_lstm_cell_172_biasadd_readvariableop_resource_0"n
4while_lstm_cell_172_matmul_1_readvariableop_resource6while_lstm_cell_172_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_172_matmul_readvariableop_resource4while_lstm_cell_172_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_172/BiasAdd/ReadVariableOp*while/lstm_cell_172/BiasAdd/ReadVariableOp2V
)while/lstm_cell_172/MatMul/ReadVariableOp)while/lstm_cell_172/MatMul/ReadVariableOp2Z
+while/lstm_cell_172/MatMul_1/ReadVariableOp+while/lstm_cell_172/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_lstm_cell_171_layer_call_fn_1051876

inputs
states_0
states_1
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1046891o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?J
?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050465

inputs?
,lstm_cell_171_matmul_readvariableop_resource:	?A
.lstm_cell_171_matmul_1_readvariableop_resource:	d?<
-lstm_cell_171_biasadd_readvariableop_resource:	?
identity??$lstm_cell_171/BiasAdd/ReadVariableOp?#lstm_cell_171/MatMul/ReadVariableOp?%lstm_cell_171/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_171/MatMul/ReadVariableOpReadVariableOp,lstm_cell_171_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_171/MatMulMatMulstrided_slice_2:output:0+lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_171_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_171/MatMul_1MatMulzeros:output:0-lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_171/addAddV2lstm_cell_171/MatMul:product:0 lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_171_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_171/BiasAddBiasAddlstm_cell_171/add:z:0,lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_171/splitSplit&lstm_cell_171/split/split_dim:output:0lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_171/SigmoidSigmoidlstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_1Sigmoidlstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_171/mulMullstm_cell_171/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_171/ReluRelulstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_1Mullstm_cell_171/Sigmoid:y:0 lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_171/add_1AddV2lstm_cell_171/mul:z:0lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_2Sigmoidlstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_171/Relu_1Relulstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_2Mullstm_cell_171/Sigmoid_2:y:0"lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_171_matmul_readvariableop_resource.lstm_cell_171_matmul_1_readvariableop_resource-lstm_cell_171_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1050381*
condR
while_cond_1050380*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_171/BiasAdd/ReadVariableOp$^lstm_cell_171/MatMul/ReadVariableOp&^lstm_cell_171/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_171/BiasAdd/ReadVariableOp$lstm_cell_171/BiasAdd/ReadVariableOp2J
#lstm_cell_171/MatMul/ReadVariableOp#lstm_cell_171/MatMul/ReadVariableOp2N
%lstm_cell_171/MatMul_1/ReadVariableOp%lstm_cell_171/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1047604
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1047604___redundant_placeholder05
1while_while_cond_1047604___redundant_placeholder15
1while_while_cond_1047604___redundant_placeholder25
1while_while_cond_1047604___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?J
?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1048023

inputs?
,lstm_cell_171_matmul_readvariableop_resource:	?A
.lstm_cell_171_matmul_1_readvariableop_resource:	d?<
-lstm_cell_171_biasadd_readvariableop_resource:	?
identity??$lstm_cell_171/BiasAdd/ReadVariableOp?#lstm_cell_171/MatMul/ReadVariableOp?%lstm_cell_171/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_171/MatMul/ReadVariableOpReadVariableOp,lstm_cell_171_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_171/MatMulMatMulstrided_slice_2:output:0+lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_171_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_171/MatMul_1MatMulzeros:output:0-lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_171/addAddV2lstm_cell_171/MatMul:product:0 lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_171_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_171/BiasAddBiasAddlstm_cell_171/add:z:0,lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_171/splitSplit&lstm_cell_171/split/split_dim:output:0lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_171/SigmoidSigmoidlstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_1Sigmoidlstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_171/mulMullstm_cell_171/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_171/ReluRelulstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_1Mullstm_cell_171/Sigmoid:y:0 lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_171/add_1AddV2lstm_cell_171/mul:z:0lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_2Sigmoidlstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_171/Relu_1Relulstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_2Mullstm_cell_171/Sigmoid_2:y:0"lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_171_matmul_readvariableop_resource.lstm_cell_171_matmul_1_readvariableop_resource-lstm_cell_171_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1047939*
condR
while_cond_1047938*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_171/BiasAdd/ReadVariableOp$^lstm_cell_171/MatMul/ReadVariableOp&^lstm_cell_171/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_171/BiasAdd/ReadVariableOp$lstm_cell_171/BiasAdd/ReadVariableOp2J
#lstm_cell_171/MatMul/ReadVariableOp#lstm_cell_171/MatMul/ReadVariableOp2N
%lstm_cell_171/MatMul_1/ReadVariableOp%lstm_cell_171/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_4_layer_call_fn_1048373
lstm_12_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1048348o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_12_input
?
?
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1047037

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates
?8
?
while_body_1048089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_172_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_172_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_172_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_172_matmul_readvariableop_resource:	d?G
4while_lstm_cell_172_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_172_biasadd_readvariableop_resource:	???*while/lstm_cell_172/BiasAdd/ReadVariableOp?)while/lstm_cell_172/MatMul/ReadVariableOp?+while/lstm_cell_172/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_172/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_172_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_172/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_172_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_172/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_172/addAddV2$while/lstm_cell_172/MatMul:product:0&while/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_172_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_172/BiasAddBiasAddwhile/lstm_cell_172/add:z:02while/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_172/splitSplit,while/lstm_cell_172/split/split_dim:output:0$while/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_172/SigmoidSigmoid"while/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_1Sigmoid"while/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mulMul!while/lstm_cell_172/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_172/ReluRelu"while/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_1Mulwhile/lstm_cell_172/Sigmoid:y:0&while/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/add_1AddV2while/lstm_cell_172/mul:z:0while/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_2Sigmoid"while/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_172/Relu_1Reluwhile/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_2Mul!while/lstm_cell_172/Sigmoid_2:y:0(while/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_172/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_172/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_172/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_172/BiasAdd/ReadVariableOp*^while/lstm_cell_172/MatMul/ReadVariableOp,^while/lstm_cell_172/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_172_biasadd_readvariableop_resource5while_lstm_cell_172_biasadd_readvariableop_resource_0"n
4while_lstm_cell_172_matmul_1_readvariableop_resource6while_lstm_cell_172_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_172_matmul_readvariableop_resource4while_lstm_cell_172_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_172/BiasAdd/ReadVariableOp*while/lstm_cell_172/BiasAdd/ReadVariableOp2V
)while/lstm_cell_172/MatMul/ReadVariableOp)while/lstm_cell_172/MatMul/ReadVariableOp2Z
+while/lstm_cell_172/MatMul_1/ReadVariableOp+while/lstm_cell_172/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_1050997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_172_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_172_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_172_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_172_matmul_readvariableop_resource:	d?G
4while_lstm_cell_172_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_172_biasadd_readvariableop_resource:	???*while/lstm_cell_172/BiasAdd/ReadVariableOp?)while/lstm_cell_172/MatMul/ReadVariableOp?+while/lstm_cell_172/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_172/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_172_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_172/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_172_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_172/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_172/addAddV2$while/lstm_cell_172/MatMul:product:0&while/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_172_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_172/BiasAddBiasAddwhile/lstm_cell_172/add:z:02while/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_172/splitSplit,while/lstm_cell_172/split/split_dim:output:0$while/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_172/SigmoidSigmoid"while/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_1Sigmoid"while/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mulMul!while/lstm_cell_172/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_172/ReluRelu"while/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_1Mulwhile/lstm_cell_172/Sigmoid:y:0&while/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/add_1AddV2while/lstm_cell_172/mul:z:0while/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_2Sigmoid"while/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_172/Relu_1Reluwhile/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_2Mul!while/lstm_cell_172/Sigmoid_2:y:0(while/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_172/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_172/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_172/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_172/BiasAdd/ReadVariableOp*^while/lstm_cell_172/MatMul/ReadVariableOp,^while/lstm_cell_172/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_172_biasadd_readvariableop_resource5while_lstm_cell_172_biasadd_readvariableop_resource_0"n
4while_lstm_cell_172_matmul_1_readvariableop_resource6while_lstm_cell_172_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_172_matmul_readvariableop_resource4while_lstm_cell_172_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_172/BiasAdd/ReadVariableOp*while/lstm_cell_172/BiasAdd/ReadVariableOp2V
)while/lstm_cell_172/MatMul/ReadVariableOp)while/lstm_cell_172/MatMul/ReadVariableOp2Z
+while/lstm_cell_172/MatMul_1/ReadVariableOp+while/lstm_cell_172/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1048348

inputs"
lstm_12_1048024:	?"
lstm_12_1048026:	d?
lstm_12_1048028:	?"
lstm_13_1048174:	d?"
lstm_13_1048176:	2?
lstm_13_1048178:	?!
lstm_14_1048324:2(!
lstm_14_1048326:
(
lstm_14_1048328:(!
dense_4_1048342:

dense_4_1048344:
identity??dense_4/StatefulPartitionedCall?lstm_12/StatefulPartitionedCall?lstm_13/StatefulPartitionedCall?lstm_14/StatefulPartitionedCall?
lstm_12/StatefulPartitionedCallStatefulPartitionedCallinputslstm_12_1048024lstm_12_1048026lstm_12_1048028*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1048023?
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0lstm_13_1048174lstm_13_1048176lstm_13_1048178*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_13_layer_call_and_return_conditional_losses_1048173?
lstm_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0lstm_14_1048324lstm_14_1048326lstm_14_1048328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_1048323?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_4_1048342dense_4_1048344*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1048341w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1048323

inputs>
,lstm_cell_173_matmul_readvariableop_resource:2(@
.lstm_cell_173_matmul_1_readvariableop_resource:
(;
-lstm_cell_173_biasadd_readvariableop_resource:(
identity??$lstm_cell_173/BiasAdd/ReadVariableOp?#lstm_cell_173/MatMul/ReadVariableOp?%lstm_cell_173/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_173/MatMul/ReadVariableOpReadVariableOp,lstm_cell_173_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_173/MatMulMatMulstrided_slice_2:output:0+lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_173_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_173/MatMul_1MatMulzeros:output:0-lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_173/addAddV2lstm_cell_173/MatMul:product:0 lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_173_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_173/BiasAddBiasAddlstm_cell_173/add:z:0,lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_173/splitSplit&lstm_cell_173/split/split_dim:output:0lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_173/SigmoidSigmoidlstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_1Sigmoidlstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_173/mulMullstm_cell_173/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_173/ReluRelulstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_1Mullstm_cell_173/Sigmoid:y:0 lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_173/add_1AddV2lstm_cell_173/mul:z:0lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_2Sigmoidlstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_173/Relu_1Relulstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_2Mullstm_cell_173/Sigmoid_2:y:0"lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_173_matmul_readvariableop_resource.lstm_cell_173_matmul_1_readvariableop_resource-lstm_cell_173_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1048239*
condR
while_cond_1048238*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
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
:?????????
?
NoOpNoOp%^lstm_cell_173/BiasAdd/ReadVariableOp$^lstm_cell_173/MatMul/ReadVariableOp&^lstm_cell_173/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_173/BiasAdd/ReadVariableOp$lstm_cell_173/BiasAdd/ReadVariableOp2J
#lstm_cell_173/MatMul/ReadVariableOp#lstm_cell_173/MatMul/ReadVariableOp2N
%lstm_cell_173/MatMul_1/ReadVariableOp%lstm_cell_173/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1047254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1047254___redundant_placeholder05
1while_while_cond_1047254___redundant_placeholder15
1while_while_cond_1047254___redundant_placeholder25
1while_while_cond_1047254___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
??
?
#__inference__traced_restore_1052426
file_prefix1
assignvariableop_dense_4_kernel:
-
assignvariableop_1_dense_4_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_12_lstm_cell_12_kernel:	?K
8assignvariableop_8_lstm_12_lstm_cell_12_recurrent_kernel:	d?;
,assignvariableop_9_lstm_12_lstm_cell_12_bias:	?B
/assignvariableop_10_lstm_13_lstm_cell_13_kernel:	d?L
9assignvariableop_11_lstm_13_lstm_cell_13_recurrent_kernel:	2?<
-assignvariableop_12_lstm_13_lstm_cell_13_bias:	?A
/assignvariableop_13_lstm_14_lstm_cell_14_kernel:2(K
9assignvariableop_14_lstm_14_lstm_cell_14_recurrent_kernel:
(;
-assignvariableop_15_lstm_14_lstm_cell_14_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: ;
)assignvariableop_18_adam_dense_4_kernel_m:
5
'assignvariableop_19_adam_dense_4_bias_m:I
6assignvariableop_20_adam_lstm_12_lstm_cell_12_kernel_m:	?S
@assignvariableop_21_adam_lstm_12_lstm_cell_12_recurrent_kernel_m:	d?C
4assignvariableop_22_adam_lstm_12_lstm_cell_12_bias_m:	?I
6assignvariableop_23_adam_lstm_13_lstm_cell_13_kernel_m:	d?S
@assignvariableop_24_adam_lstm_13_lstm_cell_13_recurrent_kernel_m:	2?C
4assignvariableop_25_adam_lstm_13_lstm_cell_13_bias_m:	?H
6assignvariableop_26_adam_lstm_14_lstm_cell_14_kernel_m:2(R
@assignvariableop_27_adam_lstm_14_lstm_cell_14_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_14_lstm_cell_14_bias_m:(;
)assignvariableop_29_adam_dense_4_kernel_v:
5
'assignvariableop_30_adam_dense_4_bias_v:I
6assignvariableop_31_adam_lstm_12_lstm_cell_12_kernel_v:	?S
@assignvariableop_32_adam_lstm_12_lstm_cell_12_recurrent_kernel_v:	d?C
4assignvariableop_33_adam_lstm_12_lstm_cell_12_bias_v:	?I
6assignvariableop_34_adam_lstm_13_lstm_cell_13_kernel_v:	d?S
@assignvariableop_35_adam_lstm_13_lstm_cell_13_recurrent_kernel_v:	2?C
4assignvariableop_36_adam_lstm_13_lstm_cell_13_bias_v:	?H
6assignvariableop_37_adam_lstm_14_lstm_cell_14_kernel_v:2(R
@assignvariableop_38_adam_lstm_14_lstm_cell_14_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_14_lstm_cell_14_bias_v:(
identity_41??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_12_lstm_cell_12_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_12_lstm_cell_12_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_12_lstm_cell_12_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_13_lstm_cell_13_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_13_lstm_cell_13_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_13_lstm_cell_13_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_14_lstm_cell_14_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_14_lstm_cell_14_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_14_lstm_cell_14_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_4_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_4_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_12_lstm_cell_12_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_12_lstm_cell_12_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_12_lstm_cell_12_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_13_lstm_cell_13_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_13_lstm_cell_13_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_13_lstm_cell_13_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_14_lstm_cell_14_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_14_lstm_cell_14_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_14_lstm_cell_14_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_4_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_4_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_12_lstm_cell_12_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_12_lstm_cell_12_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_12_lstm_cell_12_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_13_lstm_cell_13_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_13_lstm_cell_13_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_13_lstm_cell_13_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_14_lstm_cell_14_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_14_lstm_cell_14_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_14_lstm_cell_14_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: ?
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
?
?
while_cond_1051755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1051755___redundant_placeholder05
1while_while_cond_1051755___redundant_placeholder15
1while_while_cond_1051755___redundant_placeholder25
1while_while_cond_1051755___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_14_layer_call_fn_1051257

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_1048323o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1052023

inputs
states_0
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?8
?
while_body_1050381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_171_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_171_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_171_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_171_matmul_readvariableop_resource:	?G
4while_lstm_cell_171_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_171_biasadd_readvariableop_resource:	???*while/lstm_cell_171/BiasAdd/ReadVariableOp?)while/lstm_cell_171/MatMul/ReadVariableOp?+while/lstm_cell_171/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_171/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_171_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_171/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_171_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_171/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_171/addAddV2$while/lstm_cell_171/MatMul:product:0&while/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_171_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_171/BiasAddBiasAddwhile/lstm_cell_171/add:z:02while/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_171/splitSplit,while/lstm_cell_171/split/split_dim:output:0$while/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_171/SigmoidSigmoid"while/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_1Sigmoid"while/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mulMul!while/lstm_cell_171/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_171/ReluRelu"while/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_1Mulwhile/lstm_cell_171/Sigmoid:y:0&while/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/add_1AddV2while/lstm_cell_171/mul:z:0while/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_2Sigmoid"while/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_171/Relu_1Reluwhile/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_2Mul!while/lstm_cell_171/Sigmoid_2:y:0(while/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_171/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_171/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_171/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_171/BiasAdd/ReadVariableOp*^while/lstm_cell_171/MatMul/ReadVariableOp,^while/lstm_cell_171/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_171_biasadd_readvariableop_resource5while_lstm_cell_171_biasadd_readvariableop_resource_0"n
4while_lstm_cell_171_matmul_1_readvariableop_resource6while_lstm_cell_171_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_171_matmul_readvariableop_resource4while_lstm_cell_171_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_171/BiasAdd/ReadVariableOp*while/lstm_cell_171/BiasAdd/ReadVariableOp2V
)while/lstm_cell_171/MatMul/ReadVariableOp)while/lstm_cell_171/MatMul/ReadVariableOp2Z
+while/lstm_cell_171/MatMul_1/ReadVariableOp+while/lstm_cell_171/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_1048620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_172_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_172_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_172_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_172_matmul_readvariableop_resource:	d?G
4while_lstm_cell_172_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_172_biasadd_readvariableop_resource:	???*while/lstm_cell_172/BiasAdd/ReadVariableOp?)while/lstm_cell_172/MatMul/ReadVariableOp?+while/lstm_cell_172/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_172/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_172_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_172/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_172_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_172/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_172/addAddV2$while/lstm_cell_172/MatMul:product:0&while/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_172_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_172/BiasAddBiasAddwhile/lstm_cell_172/add:z:02while/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_172/splitSplit,while/lstm_cell_172/split/split_dim:output:0$while/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_172/SigmoidSigmoid"while/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_1Sigmoid"while/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mulMul!while/lstm_cell_172/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_172/ReluRelu"while/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_1Mulwhile/lstm_cell_172/Sigmoid:y:0&while/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/add_1AddV2while/lstm_cell_172/mul:z:0while/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_2Sigmoid"while/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_172/Relu_1Reluwhile/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_2Mul!while/lstm_cell_172/Sigmoid_2:y:0(while/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_172/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_172/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_172/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_172/BiasAdd/ReadVariableOp*^while/lstm_cell_172/MatMul/ReadVariableOp,^while/lstm_cell_172/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_172_biasadd_readvariableop_resource5while_lstm_cell_172_biasadd_readvariableop_resource_0"n
4while_lstm_cell_172_matmul_1_readvariableop_resource6while_lstm_cell_172_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_172_matmul_readvariableop_resource4while_lstm_cell_172_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_172/BiasAdd/ReadVariableOp*while/lstm_cell_172/BiasAdd/ReadVariableOp2V
)while/lstm_cell_172/MatMul/ReadVariableOp)while/lstm_cell_172/MatMul/ReadVariableOp2Z
+while/lstm_cell_172/MatMul_1/ReadVariableOp+while/lstm_cell_172/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1049049
lstm_12_input"
lstm_12_1049022:	?"
lstm_12_1049024:	d?
lstm_12_1049026:	?"
lstm_13_1049029:	d?"
lstm_13_1049031:	2?
lstm_13_1049033:	?!
lstm_14_1049036:2(!
lstm_14_1049038:
(
lstm_14_1049040:(!
dense_4_1049043:

dense_4_1049045:
identity??dense_4/StatefulPartitionedCall?lstm_12/StatefulPartitionedCall?lstm_13/StatefulPartitionedCall?lstm_14/StatefulPartitionedCall?
lstm_12/StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputlstm_12_1049022lstm_12_1049024lstm_12_1049026*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1048869?
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0lstm_13_1049029lstm_13_1049031lstm_13_1049033*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_13_layer_call_and_return_conditional_losses_1048704?
lstm_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0lstm_14_1049036lstm_14_1049038lstm_14_1049040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_1048539?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_4_1049043dense_4_1049045*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1048341w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_12_input
?
?
while_cond_1050380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1050380___redundant_placeholder05
1while_while_cond_1050380___redundant_placeholder15
1while_while_cond_1050380___redundant_placeholder25
1while_while_cond_1050380___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?Q
?
'sequential_4_lstm_13_while_body_1046595F
Bsequential_4_lstm_13_while_sequential_4_lstm_13_while_loop_counterL
Hsequential_4_lstm_13_while_sequential_4_lstm_13_while_maximum_iterations*
&sequential_4_lstm_13_while_placeholder,
(sequential_4_lstm_13_while_placeholder_1,
(sequential_4_lstm_13_while_placeholder_2,
(sequential_4_lstm_13_while_placeholder_3E
Asequential_4_lstm_13_while_sequential_4_lstm_13_strided_slice_1_0?
}sequential_4_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_13_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_4_lstm_13_while_lstm_cell_172_matmul_readvariableop_resource_0:	d?^
Ksequential_4_lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource_0:	2?Y
Jsequential_4_lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource_0:	?'
#sequential_4_lstm_13_while_identity)
%sequential_4_lstm_13_while_identity_1)
%sequential_4_lstm_13_while_identity_2)
%sequential_4_lstm_13_while_identity_3)
%sequential_4_lstm_13_while_identity_4)
%sequential_4_lstm_13_while_identity_5C
?sequential_4_lstm_13_while_sequential_4_lstm_13_strided_slice_1
{sequential_4_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_13_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_4_lstm_13_while_lstm_cell_172_matmul_readvariableop_resource:	d?\
Isequential_4_lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource:	2?W
Hsequential_4_lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource:	????sequential_4/lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp?>sequential_4/lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp?@sequential_4/lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp?
Lsequential_4/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_4/lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_4_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_13_tensorarrayunstack_tensorlistfromtensor_0&sequential_4_lstm_13_while_placeholderUsequential_4/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
>sequential_4/lstm_13/while/lstm_cell_172/MatMul/ReadVariableOpReadVariableOpIsequential_4_lstm_13_while_lstm_cell_172_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
/sequential_4/lstm_13/while/lstm_cell_172/MatMulMatMulEsequential_4/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_4/lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@sequential_4/lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOpKsequential_4_lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
1sequential_4/lstm_13/while/lstm_cell_172/MatMul_1MatMul(sequential_4_lstm_13_while_placeholder_2Hsequential_4/lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_4/lstm_13/while/lstm_cell_172/addAddV29sequential_4/lstm_13/while/lstm_cell_172/MatMul:product:0;sequential_4/lstm_13/while/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential_4/lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOpJsequential_4_lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
0sequential_4/lstm_13/while/lstm_cell_172/BiasAddBiasAdd0sequential_4/lstm_13/while/lstm_cell_172/add:z:0Gsequential_4/lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
8sequential_4/lstm_13/while/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_4/lstm_13/while/lstm_cell_172/splitSplitAsequential_4/lstm_13/while/lstm_cell_172/split/split_dim:output:09sequential_4/lstm_13/while/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
0sequential_4/lstm_13/while/lstm_cell_172/SigmoidSigmoid7sequential_4/lstm_13/while/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2?
2sequential_4/lstm_13/while/lstm_cell_172/Sigmoid_1Sigmoid7sequential_4/lstm_13/while/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
,sequential_4/lstm_13/while/lstm_cell_172/mulMul6sequential_4/lstm_13/while/lstm_cell_172/Sigmoid_1:y:0(sequential_4_lstm_13_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
-sequential_4/lstm_13/while/lstm_cell_172/ReluRelu7sequential_4/lstm_13/while/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
.sequential_4/lstm_13/while/lstm_cell_172/mul_1Mul4sequential_4/lstm_13/while/lstm_cell_172/Sigmoid:y:0;sequential_4/lstm_13/while/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
.sequential_4/lstm_13/while/lstm_cell_172/add_1AddV20sequential_4/lstm_13/while/lstm_cell_172/mul:z:02sequential_4/lstm_13/while/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
2sequential_4/lstm_13/while/lstm_cell_172/Sigmoid_2Sigmoid7sequential_4/lstm_13/while/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2?
/sequential_4/lstm_13/while/lstm_cell_172/Relu_1Relu2sequential_4/lstm_13/while/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_4/lstm_13/while/lstm_cell_172/mul_2Mul6sequential_4/lstm_13/while/lstm_cell_172/Sigmoid_2:y:0=sequential_4/lstm_13/while/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
?sequential_4/lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_4_lstm_13_while_placeholder_1&sequential_4_lstm_13_while_placeholder2sequential_4/lstm_13/while/lstm_cell_172/mul_2:z:0*
_output_shapes
: *
element_dtype0:???b
 sequential_4/lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_4/lstm_13/while/addAddV2&sequential_4_lstm_13_while_placeholder)sequential_4/lstm_13/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_4/lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_4/lstm_13/while/add_1AddV2Bsequential_4_lstm_13_while_sequential_4_lstm_13_while_loop_counter+sequential_4/lstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: ?
#sequential_4/lstm_13/while/IdentityIdentity$sequential_4/lstm_13/while/add_1:z:0 ^sequential_4/lstm_13/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_13/while/Identity_1IdentityHsequential_4_lstm_13_while_sequential_4_lstm_13_while_maximum_iterations ^sequential_4/lstm_13/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_13/while/Identity_2Identity"sequential_4/lstm_13/while/add:z:0 ^sequential_4/lstm_13/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_13/while/Identity_3IdentityOsequential_4/lstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_4/lstm_13/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_13/while/Identity_4Identity2sequential_4/lstm_13/while/lstm_cell_172/mul_2:z:0 ^sequential_4/lstm_13/while/NoOp*
T0*'
_output_shapes
:?????????2?
%sequential_4/lstm_13/while/Identity_5Identity2sequential_4/lstm_13/while/lstm_cell_172/add_1:z:0 ^sequential_4/lstm_13/while/NoOp*
T0*'
_output_shapes
:?????????2?
sequential_4/lstm_13/while/NoOpNoOp@^sequential_4/lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp?^sequential_4/lstm_13/while/lstm_cell_172/MatMul/ReadVariableOpA^sequential_4/lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_4_lstm_13_while_identity,sequential_4/lstm_13/while/Identity:output:0"W
%sequential_4_lstm_13_while_identity_1.sequential_4/lstm_13/while/Identity_1:output:0"W
%sequential_4_lstm_13_while_identity_2.sequential_4/lstm_13/while/Identity_2:output:0"W
%sequential_4_lstm_13_while_identity_3.sequential_4/lstm_13/while/Identity_3:output:0"W
%sequential_4_lstm_13_while_identity_4.sequential_4/lstm_13/while/Identity_4:output:0"W
%sequential_4_lstm_13_while_identity_5.sequential_4/lstm_13/while/Identity_5:output:0"?
Hsequential_4_lstm_13_while_lstm_cell_172_biasadd_readvariableop_resourceJsequential_4_lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource_0"?
Isequential_4_lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resourceKsequential_4_lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource_0"?
Gsequential_4_lstm_13_while_lstm_cell_172_matmul_readvariableop_resourceIsequential_4_lstm_13_while_lstm_cell_172_matmul_readvariableop_resource_0"?
?sequential_4_lstm_13_while_sequential_4_lstm_13_strided_slice_1Asequential_4_lstm_13_while_sequential_4_lstm_13_strided_slice_1_0"?
{sequential_4_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_13_tensorarrayunstack_tensorlistfromtensor}sequential_4_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
?sequential_4/lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp?sequential_4/lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp2?
>sequential_4/lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp>sequential_4/lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp2?
@sequential_4/lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp@sequential_4/lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1046974

inputs(
lstm_cell_171_1046892:	?(
lstm_cell_171_1046894:	d?$
lstm_cell_171_1046896:	?
identity??%lstm_cell_171/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
%lstm_cell_171/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_171_1046892lstm_cell_171_1046894lstm_cell_171_1046896*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1046891n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_171_1046892lstm_cell_171_1046894lstm_cell_171_1046896*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1046905*
condR
while_cond_1046904*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????dv
NoOpNoOp&^lstm_cell_171/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_171/StatefulPartitionedCall%lstm_cell_171/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_1050095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_171_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_171_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_171_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_171_matmul_readvariableop_resource:	?G
4while_lstm_cell_171_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_171_biasadd_readvariableop_resource:	???*while/lstm_cell_171/BiasAdd/ReadVariableOp?)while/lstm_cell_171/MatMul/ReadVariableOp?+while/lstm_cell_171/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_171/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_171_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_171/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_171_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_171/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_171/addAddV2$while/lstm_cell_171/MatMul:product:0&while/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_171_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_171/BiasAddBiasAddwhile/lstm_cell_171/add:z:02while/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_171/splitSplit,while/lstm_cell_171/split/split_dim:output:0$while/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_171/SigmoidSigmoid"while/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_1Sigmoid"while/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mulMul!while/lstm_cell_171/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_171/ReluRelu"while/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_1Mulwhile/lstm_cell_171/Sigmoid:y:0&while/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/add_1AddV2while/lstm_cell_171/mul:z:0while/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_2Sigmoid"while/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_171/Relu_1Reluwhile/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_2Mul!while/lstm_cell_171/Sigmoid_2:y:0(while/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_171/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_171/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_171/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_171/BiasAdd/ReadVariableOp*^while/lstm_cell_171/MatMul/ReadVariableOp,^while/lstm_cell_171/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_171_biasadd_readvariableop_resource5while_lstm_cell_171_biasadd_readvariableop_resource_0"n
4while_lstm_cell_171_matmul_1_readvariableop_resource6while_lstm_cell_171_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_171_matmul_readvariableop_resource4while_lstm_cell_171_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_171/BiasAdd/ReadVariableOp*while/lstm_cell_171/BiasAdd/ReadVariableOp2V
)while/lstm_cell_171/MatMul/ReadVariableOp)while/lstm_cell_171/MatMul/ReadVariableOp2Z
+while/lstm_cell_171/MatMul_1/ReadVariableOp+while/lstm_cell_171/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_lstm_14_layer_call_fn_1051235
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_1047674o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051840

inputs>
,lstm_cell_173_matmul_readvariableop_resource:2(@
.lstm_cell_173_matmul_1_readvariableop_resource:
(;
-lstm_cell_173_biasadd_readvariableop_resource:(
identity??$lstm_cell_173/BiasAdd/ReadVariableOp?#lstm_cell_173/MatMul/ReadVariableOp?%lstm_cell_173/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_173/MatMul/ReadVariableOpReadVariableOp,lstm_cell_173_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_173/MatMulMatMulstrided_slice_2:output:0+lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_173_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_173/MatMul_1MatMulzeros:output:0-lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_173/addAddV2lstm_cell_173/MatMul:product:0 lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_173_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_173/BiasAddBiasAddlstm_cell_173/add:z:0,lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_173/splitSplit&lstm_cell_173/split/split_dim:output:0lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_173/SigmoidSigmoidlstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_1Sigmoidlstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_173/mulMullstm_cell_173/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_173/ReluRelulstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_1Mullstm_cell_173/Sigmoid:y:0 lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_173/add_1AddV2lstm_cell_173/mul:z:0lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_2Sigmoidlstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_173/Relu_1Relulstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_2Mullstm_cell_173/Sigmoid_2:y:0"lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_173_matmul_readvariableop_resource.lstm_cell_173_matmul_1_readvariableop_resource-lstm_cell_173_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1051756*
condR
while_cond_1051755*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
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
:?????????
?
NoOpNoOp%^lstm_cell_173/BiasAdd/ReadVariableOp$^lstm_cell_173/MatMul/ReadVariableOp&^lstm_cell_173/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_173/BiasAdd/ReadVariableOp$lstm_cell_173/BiasAdd/ReadVariableOp2J
#lstm_cell_173/MatMul/ReadVariableOp#lstm_cell_173/MatMul/ReadVariableOp2N
%lstm_cell_173/MatMul_1/ReadVariableOp%lstm_cell_173/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1050711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_172_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_172_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_172_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_172_matmul_readvariableop_resource:	d?G
4while_lstm_cell_172_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_172_biasadd_readvariableop_resource:	???*while/lstm_cell_172/BiasAdd/ReadVariableOp?)while/lstm_cell_172/MatMul/ReadVariableOp?+while/lstm_cell_172/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_172/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_172_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_172/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_172_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_172/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_172/addAddV2$while/lstm_cell_172/MatMul:product:0&while/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_172_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_172/BiasAddBiasAddwhile/lstm_cell_172/add:z:02while/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_172/splitSplit,while/lstm_cell_172/split/split_dim:output:0$while/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_172/SigmoidSigmoid"while/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_1Sigmoid"while/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mulMul!while/lstm_cell_172/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_172/ReluRelu"while/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_1Mulwhile/lstm_cell_172/Sigmoid:y:0&while/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/add_1AddV2while/lstm_cell_172/mul:z:0while/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_172/Sigmoid_2Sigmoid"while/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_172/Relu_1Reluwhile/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_172/mul_2Mul!while/lstm_cell_172/Sigmoid_2:y:0(while/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_172/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_172/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_172/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_172/BiasAdd/ReadVariableOp*^while/lstm_cell_172/MatMul/ReadVariableOp,^while/lstm_cell_172/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_172_biasadd_readvariableop_resource5while_lstm_cell_172_biasadd_readvariableop_resource_0"n
4while_lstm_cell_172_matmul_1_readvariableop_resource6while_lstm_cell_172_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_172_matmul_readvariableop_resource4while_lstm_cell_172_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_172/BiasAdd/ReadVariableOp*while/lstm_cell_172/BiasAdd/ReadVariableOp2V
)while/lstm_cell_172/MatMul/ReadVariableOp)while/lstm_cell_172/MatMul/ReadVariableOp2Z
+while/lstm_cell_172/MatMul_1/ReadVariableOp+while/lstm_cell_172/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1047324

inputs(
lstm_cell_172_1047242:	d?(
lstm_cell_172_1047244:	2?$
lstm_cell_172_1047246:	?
identity??%lstm_cell_172/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
%lstm_cell_172/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_172_1047242lstm_cell_172_1047244lstm_cell_172_1047246*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1047241n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_172_1047242lstm_cell_172_1047244lstm_cell_172_1047246*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1047255*
condR
while_cond_1047254*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2v
NoOpNoOp&^lstm_cell_172/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_172/StatefulPartitionedCall%lstm_cell_172/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_1051613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_173_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_173_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_173_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_173_matmul_readvariableop_resource:2(F
4while_lstm_cell_173_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_173_biasadd_readvariableop_resource:(??*while/lstm_cell_173/BiasAdd/ReadVariableOp?)while/lstm_cell_173/MatMul/ReadVariableOp?+while/lstm_cell_173/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_173/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_173_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_173/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_173_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_173/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_173/addAddV2$while/lstm_cell_173/MatMul:product:0&while/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_173_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_173/BiasAddBiasAddwhile/lstm_cell_173/add:z:02while/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_173/splitSplit,while/lstm_cell_173/split/split_dim:output:0$while/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_173/SigmoidSigmoid"while/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_1Sigmoid"while/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mulMul!while/lstm_cell_173/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_173/ReluRelu"while/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_1Mulwhile/lstm_cell_173/Sigmoid:y:0&while/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/add_1AddV2while/lstm_cell_173/mul:z:0while/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_2Sigmoid"while/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_173/Relu_1Reluwhile/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_2Mul!while/lstm_cell_173/Sigmoid_2:y:0(while/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_173/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_173/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_173/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_173/BiasAdd/ReadVariableOp*^while/lstm_cell_173/MatMul/ReadVariableOp,^while/lstm_cell_173/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_173_biasadd_readvariableop_resource5while_lstm_cell_173_biasadd_readvariableop_resource_0"n
4while_lstm_cell_173_matmul_1_readvariableop_resource6while_lstm_cell_173_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_173_matmul_readvariableop_resource4while_lstm_cell_173_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_173/BiasAdd/ReadVariableOp*while/lstm_cell_173/BiasAdd/ReadVariableOp2V
)while/lstm_cell_173/MatMul/ReadVariableOp)while/lstm_cell_173/MatMul/ReadVariableOp2Z
+while/lstm_cell_173/MatMul_1/ReadVariableOp+while/lstm_cell_173/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1052121

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?
?
)__inference_lstm_14_layer_call_fn_1051246
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_1047865o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1047591

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_namestates:OK
'
_output_shapes
:?????????

 
_user_specified_namestates
?	
?
D__inference_dense_4_layer_call_and_return_conditional_losses_1051859

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?8
?
while_body_1048239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_173_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_173_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_173_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_173_matmul_readvariableop_resource:2(F
4while_lstm_cell_173_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_173_biasadd_readvariableop_resource:(??*while/lstm_cell_173/BiasAdd/ReadVariableOp?)while/lstm_cell_173/MatMul/ReadVariableOp?+while/lstm_cell_173/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_173/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_173_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_173/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_173_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_173/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_173/addAddV2$while/lstm_cell_173/MatMul:product:0&while/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_173_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_173/BiasAddBiasAddwhile/lstm_cell_173/add:z:02while/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_173/splitSplit,while/lstm_cell_173/split/split_dim:output:0$while/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_173/SigmoidSigmoid"while/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_1Sigmoid"while/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mulMul!while/lstm_cell_173/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_173/ReluRelu"while/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_1Mulwhile/lstm_cell_173/Sigmoid:y:0&while/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/add_1AddV2while/lstm_cell_173/mul:z:0while/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_2Sigmoid"while/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_173/Relu_1Reluwhile/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_2Mul!while/lstm_cell_173/Sigmoid_2:y:0(while/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_173/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_173/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_173/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_173/BiasAdd/ReadVariableOp*^while/lstm_cell_173/MatMul/ReadVariableOp,^while/lstm_cell_173/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_173_biasadd_readvariableop_resource5while_lstm_cell_173_biasadd_readvariableop_resource_0"n
4while_lstm_cell_173_matmul_1_readvariableop_resource6while_lstm_cell_173_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_173_matmul_readvariableop_resource4while_lstm_cell_173_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_173/BiasAdd/ReadVariableOp*while/lstm_cell_173/BiasAdd/ReadVariableOp2V
)while/lstm_cell_173/MatMul/ReadVariableOp)while/lstm_cell_173/MatMul/ReadVariableOp2Z
+while/lstm_cell_173/MatMul_1/ReadVariableOp+while/lstm_cell_173/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?J
?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050608

inputs?
,lstm_cell_171_matmul_readvariableop_resource:	?A
.lstm_cell_171_matmul_1_readvariableop_resource:	d?<
-lstm_cell_171_biasadd_readvariableop_resource:	?
identity??$lstm_cell_171/BiasAdd/ReadVariableOp?#lstm_cell_171/MatMul/ReadVariableOp?%lstm_cell_171/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_171/MatMul/ReadVariableOpReadVariableOp,lstm_cell_171_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_171/MatMulMatMulstrided_slice_2:output:0+lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_171_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_171/MatMul_1MatMulzeros:output:0-lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_171/addAddV2lstm_cell_171/MatMul:product:0 lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_171_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_171/BiasAddBiasAddlstm_cell_171/add:z:0,lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_171/splitSplit&lstm_cell_171/split/split_dim:output:0lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_171/SigmoidSigmoidlstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_1Sigmoidlstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_171/mulMullstm_cell_171/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_171/ReluRelulstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_1Mullstm_cell_171/Sigmoid:y:0 lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_171/add_1AddV2lstm_cell_171/mul:z:0lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_2Sigmoidlstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_171/Relu_1Relulstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_2Mullstm_cell_171/Sigmoid_2:y:0"lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_171_matmul_readvariableop_resource.lstm_cell_171_matmul_1_readvariableop_resource-lstm_cell_171_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1050524*
condR
while_cond_1050523*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_171/BiasAdd/ReadVariableOp$^lstm_cell_171/MatMul/ReadVariableOp&^lstm_cell_171/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_171/BiasAdd/ReadVariableOp$lstm_cell_171/BiasAdd/ReadVariableOp2J
#lstm_cell_171/MatMul/ReadVariableOp#lstm_cell_171/MatMul/ReadVariableOp2N
%lstm_cell_171/MatMul_1/ReadVariableOp%lstm_cell_171/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_1047446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_172_1047470_0:	d?0
while_lstm_cell_172_1047472_0:	2?,
while_lstm_cell_172_1047474_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_172_1047470:	d?.
while_lstm_cell_172_1047472:	2?*
while_lstm_cell_172_1047474:	???+while/lstm_cell_172/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_172/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_172_1047470_0while_lstm_cell_172_1047472_0while_lstm_cell_172_1047474_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1047387?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_172/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_172/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_172/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_172/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_172_1047470while_lstm_cell_172_1047470_0"<
while_lstm_cell_172_1047472while_lstm_cell_172_1047472_0"<
while_lstm_cell_172_1047474while_lstm_cell_172_1047474_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_172/StatefulPartitionedCall+while/lstm_cell_172/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_1047939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_171_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_171_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_171_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_171_matmul_readvariableop_resource:	?G
4while_lstm_cell_171_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_171_biasadd_readvariableop_resource:	???*while/lstm_cell_171/BiasAdd/ReadVariableOp?)while/lstm_cell_171/MatMul/ReadVariableOp?+while/lstm_cell_171/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_171/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_171_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_171/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_171_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_171/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_171/addAddV2$while/lstm_cell_171/MatMul:product:0&while/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_171_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_171/BiasAddBiasAddwhile/lstm_cell_171/add:z:02while/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_171/splitSplit,while/lstm_cell_171/split/split_dim:output:0$while/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_171/SigmoidSigmoid"while/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_1Sigmoid"while/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mulMul!while/lstm_cell_171/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_171/ReluRelu"while/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_1Mulwhile/lstm_cell_171/Sigmoid:y:0&while/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/add_1AddV2while/lstm_cell_171/mul:z:0while/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_2Sigmoid"while/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_171/Relu_1Reluwhile/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_2Mul!while/lstm_cell_171/Sigmoid_2:y:0(while/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_171/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_171/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_171/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_171/BiasAdd/ReadVariableOp*^while/lstm_cell_171/MatMul/ReadVariableOp,^while/lstm_cell_171/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_171_biasadd_readvariableop_resource5while_lstm_cell_171_biasadd_readvariableop_resource_0"n
4while_lstm_cell_171_matmul_1_readvariableop_resource6while_lstm_cell_171_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_171_matmul_readvariableop_resource4while_lstm_cell_171_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_171/BiasAdd/ReadVariableOp*while/lstm_cell_171/BiasAdd/ReadVariableOp2V
)while/lstm_cell_171/MatMul/ReadVariableOp)while/lstm_cell_171/MatMul/ReadVariableOp2Z
+while/lstm_cell_171/MatMul_1/ReadVariableOp+while/lstm_cell_171/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_13_while_cond_1049335,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3.
*lstm_13_while_less_lstm_13_strided_slice_1E
Alstm_13_while_lstm_13_while_cond_1049335___redundant_placeholder0E
Alstm_13_while_lstm_13_while_cond_1049335___redundant_placeholder1E
Alstm_13_while_lstm_13_while_cond_1049335___redundant_placeholder2E
Alstm_13_while_lstm_13_while_cond_1049335___redundant_placeholder3
lstm_13_while_identity
?
lstm_13/while/LessLesslstm_13_while_placeholder*lstm_13_while_less_lstm_13_strided_slice_1*
T0*
_output_shapes
: [
lstm_13/while/IdentityIdentitylstm_13/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_13_while_identitylstm_13/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_1048088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1048088___redundant_placeholder05
1while_while_cond_1048088___redundant_placeholder15
1while_while_cond_1048088___redundant_placeholder25
1while_while_cond_1048088___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_13_layer_call_fn_1050630
inputs_0
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_13_layer_call_and_return_conditional_losses_1047515|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1048704

inputs?
,lstm_cell_172_matmul_readvariableop_resource:	d?A
.lstm_cell_172_matmul_1_readvariableop_resource:	2?<
-lstm_cell_172_biasadd_readvariableop_resource:	?
identity??$lstm_cell_172/BiasAdd/ReadVariableOp?#lstm_cell_172/MatMul/ReadVariableOp?%lstm_cell_172/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_172/MatMul/ReadVariableOpReadVariableOp,lstm_cell_172_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_172/MatMulMatMulstrided_slice_2:output:0+lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_172_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_172/MatMul_1MatMulzeros:output:0-lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_172/addAddV2lstm_cell_172/MatMul:product:0 lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_172_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_172/BiasAddBiasAddlstm_cell_172/add:z:0,lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_172/splitSplit&lstm_cell_172/split/split_dim:output:0lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_172/SigmoidSigmoidlstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_1Sigmoidlstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_172/mulMullstm_cell_172/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_172/ReluRelulstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_1Mullstm_cell_172/Sigmoid:y:0 lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_172/add_1AddV2lstm_cell_172/mul:z:0lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_2Sigmoidlstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_172/Relu_1Relulstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_2Mullstm_cell_172/Sigmoid_2:y:0"lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_172_matmul_readvariableop_resource.lstm_cell_172_matmul_1_readvariableop_resource-lstm_cell_172_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1048620*
condR
while_cond_1048619*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_172/BiasAdd/ReadVariableOp$^lstm_cell_172/MatMul/ReadVariableOp&^lstm_cell_172/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_172/BiasAdd/ReadVariableOp$lstm_cell_172/BiasAdd/ReadVariableOp2J
#lstm_cell_172/MatMul/ReadVariableOp#lstm_cell_172/MatMul/ReadVariableOp2N
%lstm_cell_172/MatMul_1/ReadVariableOp%lstm_cell_172/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_173_layer_call_fn_1052089

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1047737o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????
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
?:?????????2:?????????
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?A
?

lstm_14_while_body_1049475,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3+
'lstm_14_while_lstm_14_strided_slice_1_0g
clstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_14_while_lstm_cell_173_matmul_readvariableop_resource_0:2(P
>lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource_0:
(K
=lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource_0:(
lstm_14_while_identity
lstm_14_while_identity_1
lstm_14_while_identity_2
lstm_14_while_identity_3
lstm_14_while_identity_4
lstm_14_while_identity_5)
%lstm_14_while_lstm_14_strided_slice_1e
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensorL
:lstm_14_while_lstm_cell_173_matmul_readvariableop_resource:2(N
<lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource:
(I
;lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource:(??2lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp?1lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp?3lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp?
?lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
1lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0lstm_14_while_placeholderHlstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
1lstm_14/while/lstm_cell_173/MatMul/ReadVariableOpReadVariableOp<lstm_14_while_lstm_cell_173_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
"lstm_14/while/lstm_cell_173/MatMulMatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
3lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp>lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
$lstm_14/while/lstm_cell_173/MatMul_1MatMullstm_14_while_placeholder_2;lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_14/while/lstm_cell_173/addAddV2,lstm_14/while/lstm_cell_173/MatMul:product:0.lstm_14/while/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
2lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp=lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
#lstm_14/while/lstm_cell_173/BiasAddBiasAdd#lstm_14/while/lstm_cell_173/add:z:0:lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(m
+lstm_14/while/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_14/while/lstm_cell_173/splitSplit4lstm_14/while/lstm_cell_173/split/split_dim:output:0,lstm_14/while/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
#lstm_14/while/lstm_cell_173/SigmoidSigmoid*lstm_14/while/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
?
%lstm_14/while/lstm_cell_173/Sigmoid_1Sigmoid*lstm_14/while/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_14/while/lstm_cell_173/mulMul)lstm_14/while/lstm_cell_173/Sigmoid_1:y:0lstm_14_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
 lstm_14/while/lstm_cell_173/ReluRelu*lstm_14/while/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
!lstm_14/while/lstm_cell_173/mul_1Mul'lstm_14/while/lstm_cell_173/Sigmoid:y:0.lstm_14/while/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
!lstm_14/while/lstm_cell_173/add_1AddV2#lstm_14/while/lstm_cell_173/mul:z:0%lstm_14/while/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
%lstm_14/while/lstm_cell_173/Sigmoid_2Sigmoid*lstm_14/while/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
?
"lstm_14/while/lstm_cell_173/Relu_1Relu%lstm_14/while/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
!lstm_14/while/lstm_cell_173/mul_2Mul)lstm_14/while/lstm_cell_173/Sigmoid_2:y:00lstm_14/while/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_14_while_placeholder_1lstm_14_while_placeholder%lstm_14/while/lstm_cell_173/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_14/while/addAddV2lstm_14_while_placeholderlstm_14/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_14/while/add_1AddV2(lstm_14_while_lstm_14_while_loop_counterlstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_14/while/IdentityIdentitylstm_14/while/add_1:z:0^lstm_14/while/NoOp*
T0*
_output_shapes
: ?
lstm_14/while/Identity_1Identity.lstm_14_while_lstm_14_while_maximum_iterations^lstm_14/while/NoOp*
T0*
_output_shapes
: q
lstm_14/while/Identity_2Identitylstm_14/while/add:z:0^lstm_14/while/NoOp*
T0*
_output_shapes
: ?
lstm_14/while/Identity_3IdentityBlstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_14/while/NoOp*
T0*
_output_shapes
: ?
lstm_14/while/Identity_4Identity%lstm_14/while/lstm_cell_173/mul_2:z:0^lstm_14/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_14/while/Identity_5Identity%lstm_14/while/lstm_cell_173/add_1:z:0^lstm_14/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_14/while/NoOpNoOp3^lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp2^lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp4^lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_14_while_identitylstm_14/while/Identity:output:0"=
lstm_14_while_identity_1!lstm_14/while/Identity_1:output:0"=
lstm_14_while_identity_2!lstm_14/while/Identity_2:output:0"=
lstm_14_while_identity_3!lstm_14/while/Identity_3:output:0"=
lstm_14_while_identity_4!lstm_14/while/Identity_4:output:0"=
lstm_14_while_identity_5!lstm_14/while/Identity_5:output:0"P
%lstm_14_while_lstm_14_strided_slice_1'lstm_14_while_lstm_14_strided_slice_1_0"|
;lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource=lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource_0"~
<lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource>lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource_0"z
:lstm_14_while_lstm_cell_173_matmul_readvariableop_resource<lstm_14_while_lstm_cell_173_matmul_readvariableop_resource_0"?
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensorclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2h
2lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp2lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp2f
1lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp1lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp2j
3lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp3lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_12_while_cond_1049196,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3.
*lstm_12_while_less_lstm_12_strided_slice_1E
Alstm_12_while_lstm_12_while_cond_1049196___redundant_placeholder0E
Alstm_12_while_lstm_12_while_cond_1049196___redundant_placeholder1E
Alstm_12_while_lstm_12_while_cond_1049196___redundant_placeholder2E
Alstm_12_while_lstm_12_while_cond_1049196___redundant_placeholder3
lstm_12_while_identity
?
lstm_12/while/LessLesslstm_12_while_placeholder*lstm_12_while_less_lstm_12_strided_slice_1*
T0*
_output_shapes
: [
lstm_12/while/IdentityIdentitylstm_12/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_12_while_identitylstm_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?K
?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051411
inputs_0>
,lstm_cell_173_matmul_readvariableop_resource:2(@
.lstm_cell_173_matmul_1_readvariableop_resource:
(;
-lstm_cell_173_biasadd_readvariableop_resource:(
identity??$lstm_cell_173/BiasAdd/ReadVariableOp?#lstm_cell_173/MatMul/ReadVariableOp?%lstm_cell_173/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_173/MatMul/ReadVariableOpReadVariableOp,lstm_cell_173_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_173/MatMulMatMulstrided_slice_2:output:0+lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_173_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_173/MatMul_1MatMulzeros:output:0-lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_173/addAddV2lstm_cell_173/MatMul:product:0 lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_173_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_173/BiasAddBiasAddlstm_cell_173/add:z:0,lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_173/splitSplit&lstm_cell_173/split/split_dim:output:0lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_173/SigmoidSigmoidlstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_1Sigmoidlstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_173/mulMullstm_cell_173/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_173/ReluRelulstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_1Mullstm_cell_173/Sigmoid:y:0 lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_173/add_1AddV2lstm_cell_173/mul:z:0lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_2Sigmoidlstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_173/Relu_1Relulstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_2Mullstm_cell_173/Sigmoid_2:y:0"lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_173_matmul_readvariableop_resource.lstm_cell_173_matmul_1_readvariableop_resource-lstm_cell_173_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1051327*
condR
while_cond_1051326*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
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
:?????????
?
NoOpNoOp%^lstm_cell_173/BiasAdd/ReadVariableOp$^lstm_cell_173/MatMul/ReadVariableOp&^lstm_cell_173/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_173/BiasAdd/ReadVariableOp$lstm_cell_173/BiasAdd/ReadVariableOp2J
#lstm_cell_173/MatMul/ReadVariableOp#lstm_cell_173/MatMul/ReadVariableOp2N
%lstm_cell_173/MatMul_1/ReadVariableOp%lstm_cell_173/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1046904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1046904___redundant_placeholder05
1while_while_cond_1046904___redundant_placeholder15
1while_while_cond_1046904___redundant_placeholder25
1while_while_cond_1046904___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_1050710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1050710___redundant_placeholder05
1while_while_cond_1050710___redundant_placeholder15
1while_while_cond_1050710___redundant_placeholder25
1while_while_cond_1050710___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_dense_4_layer_call_fn_1051849

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1048341o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?J
?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1048869

inputs?
,lstm_cell_171_matmul_readvariableop_resource:	?A
.lstm_cell_171_matmul_1_readvariableop_resource:	d?<
-lstm_cell_171_biasadd_readvariableop_resource:	?
identity??$lstm_cell_171/BiasAdd/ReadVariableOp?#lstm_cell_171/MatMul/ReadVariableOp?%lstm_cell_171/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_171/MatMul/ReadVariableOpReadVariableOp,lstm_cell_171_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_171/MatMulMatMulstrided_slice_2:output:0+lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_171_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_171/MatMul_1MatMulzeros:output:0-lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_171/addAddV2lstm_cell_171/MatMul:product:0 lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_171_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_171/BiasAddBiasAddlstm_cell_171/add:z:0,lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_171/splitSplit&lstm_cell_171/split/split_dim:output:0lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_171/SigmoidSigmoidlstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_1Sigmoidlstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_171/mulMullstm_cell_171/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_171/ReluRelulstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_1Mullstm_cell_171/Sigmoid:y:0 lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_171/add_1AddV2lstm_cell_171/mul:z:0lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_2Sigmoidlstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_171/Relu_1Relulstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_2Mullstm_cell_171/Sigmoid_2:y:0"lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_171_matmul_readvariableop_resource.lstm_cell_171_matmul_1_readvariableop_resource-lstm_cell_171_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1048785*
condR
while_cond_1048784*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_171/BiasAdd/ReadVariableOp$^lstm_cell_171/MatMul/ReadVariableOp&^lstm_cell_171/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_171/BiasAdd/ReadVariableOp$lstm_cell_171/BiasAdd/ReadVariableOp2J
#lstm_cell_171/MatMul/ReadVariableOp#lstm_cell_171/MatMul/ReadVariableOp2N
%lstm_cell_171/MatMul_1/ReadVariableOp%lstm_cell_171/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1049019
lstm_12_input"
lstm_12_1048992:	?"
lstm_12_1048994:	d?
lstm_12_1048996:	?"
lstm_13_1048999:	d?"
lstm_13_1049001:	2?
lstm_13_1049003:	?!
lstm_14_1049006:2(!
lstm_14_1049008:
(
lstm_14_1049010:(!
dense_4_1049013:

dense_4_1049015:
identity??dense_4/StatefulPartitionedCall?lstm_12/StatefulPartitionedCall?lstm_13/StatefulPartitionedCall?lstm_14/StatefulPartitionedCall?
lstm_12/StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputlstm_12_1048992lstm_12_1048994lstm_12_1048996*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1048023?
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0lstm_13_1048999lstm_13_1049001lstm_13_1049003*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_13_layer_call_and_return_conditional_losses_1048173?
lstm_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0lstm_14_1049006lstm_14_1049008lstm_14_1049010*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_1048323?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_4_1049013dense_4_1049015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1048341w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_12_input
?
?
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1052055

inputs
states_0
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?8
?
while_body_1050238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_171_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_171_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_171_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_171_matmul_readvariableop_resource:	?G
4while_lstm_cell_171_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_171_biasadd_readvariableop_resource:	???*while/lstm_cell_171/BiasAdd/ReadVariableOp?)while/lstm_cell_171/MatMul/ReadVariableOp?+while/lstm_cell_171/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_171/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_171_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_171/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_171_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_171/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_171/addAddV2$while/lstm_cell_171/MatMul:product:0&while/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_171_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_171/BiasAddBiasAddwhile/lstm_cell_171/add:z:02while/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_171/splitSplit,while/lstm_cell_171/split/split_dim:output:0$while/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_171/SigmoidSigmoid"while/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_1Sigmoid"while/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mulMul!while/lstm_cell_171/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_171/ReluRelu"while/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_1Mulwhile/lstm_cell_171/Sigmoid:y:0&while/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/add_1AddV2while/lstm_cell_171/mul:z:0while/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_2Sigmoid"while/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_171/Relu_1Reluwhile/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_2Mul!while/lstm_cell_171/Sigmoid_2:y:0(while/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_171/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_171/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_171/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_171/BiasAdd/ReadVariableOp*^while/lstm_cell_171/MatMul/ReadVariableOp,^while/lstm_cell_171/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_171_biasadd_readvariableop_resource5while_lstm_cell_171_biasadd_readvariableop_resource_0"n
4while_lstm_cell_171_matmul_1_readvariableop_resource6while_lstm_cell_171_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_171_matmul_readvariableop_resource4while_lstm_cell_171_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_171/BiasAdd/ReadVariableOp*while/lstm_cell_171/BiasAdd/ReadVariableOp2V
)while/lstm_cell_171/MatMul/ReadVariableOp)while/lstm_cell_171/MatMul/ReadVariableOp2Z
+while/lstm_cell_171/MatMul_1/ReadVariableOp+while/lstm_cell_171/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?Q
?
'sequential_4_lstm_12_while_body_1046456F
Bsequential_4_lstm_12_while_sequential_4_lstm_12_while_loop_counterL
Hsequential_4_lstm_12_while_sequential_4_lstm_12_while_maximum_iterations*
&sequential_4_lstm_12_while_placeholder,
(sequential_4_lstm_12_while_placeholder_1,
(sequential_4_lstm_12_while_placeholder_2,
(sequential_4_lstm_12_while_placeholder_3E
Asequential_4_lstm_12_while_sequential_4_lstm_12_strided_slice_1_0?
}sequential_4_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_12_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_4_lstm_12_while_lstm_cell_171_matmul_readvariableop_resource_0:	?^
Ksequential_4_lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource_0:	d?Y
Jsequential_4_lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource_0:	?'
#sequential_4_lstm_12_while_identity)
%sequential_4_lstm_12_while_identity_1)
%sequential_4_lstm_12_while_identity_2)
%sequential_4_lstm_12_while_identity_3)
%sequential_4_lstm_12_while_identity_4)
%sequential_4_lstm_12_while_identity_5C
?sequential_4_lstm_12_while_sequential_4_lstm_12_strided_slice_1
{sequential_4_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_12_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_4_lstm_12_while_lstm_cell_171_matmul_readvariableop_resource:	?\
Isequential_4_lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource:	d?W
Hsequential_4_lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource:	????sequential_4/lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp?>sequential_4/lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp?@sequential_4/lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp?
Lsequential_4/lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_4/lstm_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_4_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_12_tensorarrayunstack_tensorlistfromtensor_0&sequential_4_lstm_12_while_placeholderUsequential_4/lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
>sequential_4/lstm_12/while/lstm_cell_171/MatMul/ReadVariableOpReadVariableOpIsequential_4_lstm_12_while_lstm_cell_171_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
/sequential_4/lstm_12/while/lstm_cell_171/MatMulMatMulEsequential_4/lstm_12/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_4/lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@sequential_4/lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOpKsequential_4_lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_4/lstm_12/while/lstm_cell_171/MatMul_1MatMul(sequential_4_lstm_12_while_placeholder_2Hsequential_4/lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_4/lstm_12/while/lstm_cell_171/addAddV29sequential_4/lstm_12/while/lstm_cell_171/MatMul:product:0;sequential_4/lstm_12/while/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential_4/lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOpJsequential_4_lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
0sequential_4/lstm_12/while/lstm_cell_171/BiasAddBiasAdd0sequential_4/lstm_12/while/lstm_cell_171/add:z:0Gsequential_4/lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
8sequential_4/lstm_12/while/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_4/lstm_12/while/lstm_cell_171/splitSplitAsequential_4/lstm_12/while/lstm_cell_171/split/split_dim:output:09sequential_4/lstm_12/while/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
0sequential_4/lstm_12/while/lstm_cell_171/SigmoidSigmoid7sequential_4/lstm_12/while/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d?
2sequential_4/lstm_12/while/lstm_cell_171/Sigmoid_1Sigmoid7sequential_4/lstm_12/while/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
,sequential_4/lstm_12/while/lstm_cell_171/mulMul6sequential_4/lstm_12/while/lstm_cell_171/Sigmoid_1:y:0(sequential_4_lstm_12_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
-sequential_4/lstm_12/while/lstm_cell_171/ReluRelu7sequential_4/lstm_12/while/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
.sequential_4/lstm_12/while/lstm_cell_171/mul_1Mul4sequential_4/lstm_12/while/lstm_cell_171/Sigmoid:y:0;sequential_4/lstm_12/while/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
.sequential_4/lstm_12/while/lstm_cell_171/add_1AddV20sequential_4/lstm_12/while/lstm_cell_171/mul:z:02sequential_4/lstm_12/while/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
2sequential_4/lstm_12/while/lstm_cell_171/Sigmoid_2Sigmoid7sequential_4/lstm_12/while/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????d?
/sequential_4/lstm_12/while/lstm_cell_171/Relu_1Relu2sequential_4/lstm_12/while/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_4/lstm_12/while/lstm_cell_171/mul_2Mul6sequential_4/lstm_12/while/lstm_cell_171/Sigmoid_2:y:0=sequential_4/lstm_12/while/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
?sequential_4/lstm_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_4_lstm_12_while_placeholder_1&sequential_4_lstm_12_while_placeholder2sequential_4/lstm_12/while/lstm_cell_171/mul_2:z:0*
_output_shapes
: *
element_dtype0:???b
 sequential_4/lstm_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_4/lstm_12/while/addAddV2&sequential_4_lstm_12_while_placeholder)sequential_4/lstm_12/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_4/lstm_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_4/lstm_12/while/add_1AddV2Bsequential_4_lstm_12_while_sequential_4_lstm_12_while_loop_counter+sequential_4/lstm_12/while/add_1/y:output:0*
T0*
_output_shapes
: ?
#sequential_4/lstm_12/while/IdentityIdentity$sequential_4/lstm_12/while/add_1:z:0 ^sequential_4/lstm_12/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_12/while/Identity_1IdentityHsequential_4_lstm_12_while_sequential_4_lstm_12_while_maximum_iterations ^sequential_4/lstm_12/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_12/while/Identity_2Identity"sequential_4/lstm_12/while/add:z:0 ^sequential_4/lstm_12/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_12/while/Identity_3IdentityOsequential_4/lstm_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_4/lstm_12/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_12/while/Identity_4Identity2sequential_4/lstm_12/while/lstm_cell_171/mul_2:z:0 ^sequential_4/lstm_12/while/NoOp*
T0*'
_output_shapes
:?????????d?
%sequential_4/lstm_12/while/Identity_5Identity2sequential_4/lstm_12/while/lstm_cell_171/add_1:z:0 ^sequential_4/lstm_12/while/NoOp*
T0*'
_output_shapes
:?????????d?
sequential_4/lstm_12/while/NoOpNoOp@^sequential_4/lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp?^sequential_4/lstm_12/while/lstm_cell_171/MatMul/ReadVariableOpA^sequential_4/lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_4_lstm_12_while_identity,sequential_4/lstm_12/while/Identity:output:0"W
%sequential_4_lstm_12_while_identity_1.sequential_4/lstm_12/while/Identity_1:output:0"W
%sequential_4_lstm_12_while_identity_2.sequential_4/lstm_12/while/Identity_2:output:0"W
%sequential_4_lstm_12_while_identity_3.sequential_4/lstm_12/while/Identity_3:output:0"W
%sequential_4_lstm_12_while_identity_4.sequential_4/lstm_12/while/Identity_4:output:0"W
%sequential_4_lstm_12_while_identity_5.sequential_4/lstm_12/while/Identity_5:output:0"?
Hsequential_4_lstm_12_while_lstm_cell_171_biasadd_readvariableop_resourceJsequential_4_lstm_12_while_lstm_cell_171_biasadd_readvariableop_resource_0"?
Isequential_4_lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resourceKsequential_4_lstm_12_while_lstm_cell_171_matmul_1_readvariableop_resource_0"?
Gsequential_4_lstm_12_while_lstm_cell_171_matmul_readvariableop_resourceIsequential_4_lstm_12_while_lstm_cell_171_matmul_readvariableop_resource_0"?
?sequential_4_lstm_12_while_sequential_4_lstm_12_strided_slice_1Asequential_4_lstm_12_while_sequential_4_lstm_12_strided_slice_1_0"?
{sequential_4_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_12_tensorarrayunstack_tensorlistfromtensor}sequential_4_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
?sequential_4/lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp?sequential_4/lstm_12/while/lstm_cell_171/BiasAdd/ReadVariableOp2?
>sequential_4/lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp>sequential_4/lstm_12/while/lstm_cell_171/MatMul/ReadVariableOp2?
@sequential_4/lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp@sequential_4/lstm_12/while/lstm_cell_171/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?J
?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1048173

inputs?
,lstm_cell_172_matmul_readvariableop_resource:	d?A
.lstm_cell_172_matmul_1_readvariableop_resource:	2?<
-lstm_cell_172_biasadd_readvariableop_resource:	?
identity??$lstm_cell_172/BiasAdd/ReadVariableOp?#lstm_cell_172/MatMul/ReadVariableOp?%lstm_cell_172/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_172/MatMul/ReadVariableOpReadVariableOp,lstm_cell_172_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_172/MatMulMatMulstrided_slice_2:output:0+lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_172_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_172/MatMul_1MatMulzeros:output:0-lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_172/addAddV2lstm_cell_172/MatMul:product:0 lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_172_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_172/BiasAddBiasAddlstm_cell_172/add:z:0,lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_172/splitSplit&lstm_cell_172/split/split_dim:output:0lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_172/SigmoidSigmoidlstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_1Sigmoidlstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_172/mulMullstm_cell_172/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_172/ReluRelulstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_1Mullstm_cell_172/Sigmoid:y:0 lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_172/add_1AddV2lstm_cell_172/mul:z:0lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_2Sigmoidlstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_172/Relu_1Relulstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_2Mullstm_cell_172/Sigmoid_2:y:0"lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_172_matmul_readvariableop_resource.lstm_cell_172_matmul_1_readvariableop_resource-lstm_cell_172_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1048089*
condR
while_cond_1048088*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_172/BiasAdd/ReadVariableOp$^lstm_cell_172/MatMul/ReadVariableOp&^lstm_cell_172/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_172/BiasAdd/ReadVariableOp$lstm_cell_172/BiasAdd/ReadVariableOp2J
#lstm_cell_172/MatMul/ReadVariableOp#lstm_cell_172/MatMul/ReadVariableOp2N
%lstm_cell_172/MatMul_1/ReadVariableOp%lstm_cell_172/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1046891

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates
?
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1048937

inputs"
lstm_12_1048910:	?"
lstm_12_1048912:	d?
lstm_12_1048914:	?"
lstm_13_1048917:	d?"
lstm_13_1048919:	2?
lstm_13_1048921:	?!
lstm_14_1048924:2(!
lstm_14_1048926:
(
lstm_14_1048928:(!
dense_4_1048931:

dense_4_1048933:
identity??dense_4/StatefulPartitionedCall?lstm_12/StatefulPartitionedCall?lstm_13/StatefulPartitionedCall?lstm_14/StatefulPartitionedCall?
lstm_12/StatefulPartitionedCallStatefulPartitionedCallinputslstm_12_1048910lstm_12_1048912lstm_12_1048914*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1048869?
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0lstm_13_1048917lstm_13_1048919lstm_13_1048921*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_13_layer_call_and_return_conditional_losses_1048704?
lstm_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0lstm_14_1048924lstm_14_1048926lstm_14_1048928*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_1048539?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_4_1048931dense_4_1048933*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1048341w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_14_while_cond_1049901,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3.
*lstm_14_while_less_lstm_14_strided_slice_1E
Alstm_14_while_lstm_14_while_cond_1049901___redundant_placeholder0E
Alstm_14_while_lstm_14_while_cond_1049901___redundant_placeholder1E
Alstm_14_while_lstm_14_while_cond_1049901___redundant_placeholder2E
Alstm_14_while_lstm_14_while_cond_1049901___redundant_placeholder3
lstm_14_while_identity
?
lstm_14/while/LessLesslstm_14_while_placeholder*lstm_14_while_less_lstm_14_strided_slice_1*
T0*
_output_shapes
: [
lstm_14/while/IdentityIdentitylstm_14/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_14_while_identitylstm_14/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?K
?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1050795
inputs_0?
,lstm_cell_172_matmul_readvariableop_resource:	d?A
.lstm_cell_172_matmul_1_readvariableop_resource:	2?<
-lstm_cell_172_biasadd_readvariableop_resource:	?
identity??$lstm_cell_172/BiasAdd/ReadVariableOp?#lstm_cell_172/MatMul/ReadVariableOp?%lstm_cell_172/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_172/MatMul/ReadVariableOpReadVariableOp,lstm_cell_172_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_172/MatMulMatMulstrided_slice_2:output:0+lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_172_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_172/MatMul_1MatMulzeros:output:0-lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_172/addAddV2lstm_cell_172/MatMul:product:0 lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_172_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_172/BiasAddBiasAddlstm_cell_172/add:z:0,lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_172/splitSplit&lstm_cell_172/split/split_dim:output:0lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_172/SigmoidSigmoidlstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_1Sigmoidlstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_172/mulMullstm_cell_172/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_172/ReluRelulstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_1Mullstm_cell_172/Sigmoid:y:0 lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_172/add_1AddV2lstm_cell_172/mul:z:0lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_2Sigmoidlstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_172/Relu_1Relulstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_2Mullstm_cell_172/Sigmoid_2:y:0"lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_172_matmul_readvariableop_resource.lstm_cell_172_matmul_1_readvariableop_resource-lstm_cell_172_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1050711*
condR
while_cond_1050710*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2?
NoOpNoOp%^lstm_cell_172/BiasAdd/ReadVariableOp$^lstm_cell_172/MatMul/ReadVariableOp&^lstm_cell_172/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_172/BiasAdd/ReadVariableOp$lstm_cell_172/BiasAdd/ReadVariableOp2J
#lstm_cell_172/MatMul/ReadVariableOp#lstm_cell_172/MatMul/ReadVariableOp2N
%lstm_cell_172/MatMul_1/ReadVariableOp%lstm_cell_172/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?#
?
while_body_1047096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_171_1047120_0:	?0
while_lstm_cell_171_1047122_0:	d?,
while_lstm_cell_171_1047124_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_171_1047120:	?.
while_lstm_cell_171_1047122:	d?*
while_lstm_cell_171_1047124:	???+while/lstm_cell_171/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_171/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_171_1047120_0while_lstm_cell_171_1047122_0while_lstm_cell_171_1047124_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1047037?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_171/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_171/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_171/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_171/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_171_1047120while_lstm_cell_171_1047120_0"<
while_lstm_cell_171_1047122while_lstm_cell_171_1047122_0"<
while_lstm_cell_171_1047124while_lstm_cell_171_1047124_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_171/StatefulPartitionedCall+while/lstm_cell_171/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?K
?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050322
inputs_0?
,lstm_cell_171_matmul_readvariableop_resource:	?A
.lstm_cell_171_matmul_1_readvariableop_resource:	d?<
-lstm_cell_171_biasadd_readvariableop_resource:	?
identity??$lstm_cell_171/BiasAdd/ReadVariableOp?#lstm_cell_171/MatMul/ReadVariableOp?%lstm_cell_171/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_171/MatMul/ReadVariableOpReadVariableOp,lstm_cell_171_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_171/MatMulMatMulstrided_slice_2:output:0+lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_171_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_171/MatMul_1MatMulzeros:output:0-lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_171/addAddV2lstm_cell_171/MatMul:product:0 lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_171_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_171/BiasAddBiasAddlstm_cell_171/add:z:0,lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_171/splitSplit&lstm_cell_171/split/split_dim:output:0lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_171/SigmoidSigmoidlstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_1Sigmoidlstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_171/mulMullstm_cell_171/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_171/ReluRelulstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_1Mullstm_cell_171/Sigmoid:y:0 lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_171/add_1AddV2lstm_cell_171/mul:z:0lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_2Sigmoidlstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_171/Relu_1Relulstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_2Mullstm_cell_171/Sigmoid_2:y:0"lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_171_matmul_readvariableop_resource.lstm_cell_171_matmul_1_readvariableop_resource-lstm_cell_171_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1050238*
condR
while_cond_1050237*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d?
NoOpNoOp%^lstm_cell_171/BiasAdd/ReadVariableOp$^lstm_cell_171/MatMul/ReadVariableOp&^lstm_cell_171/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_171/BiasAdd/ReadVariableOp$lstm_cell_171/BiasAdd/ReadVariableOp2J
#lstm_cell_171/MatMul/ReadVariableOp#lstm_cell_171/MatMul/ReadVariableOp2N
%lstm_cell_171/MatMul_1/ReadVariableOp%lstm_cell_171/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1051957

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?
?
)__inference_lstm_13_layer_call_fn_1050641

inputs
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_13_layer_call_and_return_conditional_losses_1048173s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?B
?

lstm_13_while_body_1049763,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3+
'lstm_13_while_lstm_13_strided_slice_1_0g
clstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_13_while_lstm_cell_172_matmul_readvariableop_resource_0:	d?Q
>lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource_0:	2?L
=lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource_0:	?
lstm_13_while_identity
lstm_13_while_identity_1
lstm_13_while_identity_2
lstm_13_while_identity_3
lstm_13_while_identity_4
lstm_13_while_identity_5)
%lstm_13_while_lstm_13_strided_slice_1e
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorM
:lstm_13_while_lstm_cell_172_matmul_readvariableop_resource:	d?O
<lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource:	2?J
;lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource:	???2lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp?1lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp?3lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp?
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
1lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0lstm_13_while_placeholderHlstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
1lstm_13/while/lstm_cell_172/MatMul/ReadVariableOpReadVariableOp<lstm_13_while_lstm_cell_172_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
"lstm_13/while/lstm_cell_172/MatMulMatMul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp>lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
$lstm_13/while/lstm_cell_172/MatMul_1MatMullstm_13_while_placeholder_2;lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_13/while/lstm_cell_172/addAddV2,lstm_13/while/lstm_cell_172/MatMul:product:0.lstm_13/while/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
2lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp=lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#lstm_13/while/lstm_cell_172/BiasAddBiasAdd#lstm_13/while/lstm_cell_172/add:z:0:lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
+lstm_13/while/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_13/while/lstm_cell_172/splitSplit4lstm_13/while/lstm_cell_172/split/split_dim:output:0,lstm_13/while/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
#lstm_13/while/lstm_cell_172/SigmoidSigmoid*lstm_13/while/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2?
%lstm_13/while/lstm_cell_172/Sigmoid_1Sigmoid*lstm_13/while/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_13/while/lstm_cell_172/mulMul)lstm_13/while/lstm_cell_172/Sigmoid_1:y:0lstm_13_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
 lstm_13/while/lstm_cell_172/ReluRelu*lstm_13/while/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
!lstm_13/while/lstm_cell_172/mul_1Mul'lstm_13/while/lstm_cell_172/Sigmoid:y:0.lstm_13/while/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
!lstm_13/while/lstm_cell_172/add_1AddV2#lstm_13/while/lstm_cell_172/mul:z:0%lstm_13/while/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
%lstm_13/while/lstm_cell_172/Sigmoid_2Sigmoid*lstm_13/while/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2?
"lstm_13/while/lstm_cell_172/Relu_1Relu%lstm_13/while/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
!lstm_13/while/lstm_cell_172/mul_2Mul)lstm_13/while/lstm_cell_172/Sigmoid_2:y:00lstm_13/while/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_13_while_placeholder_1lstm_13_while_placeholder%lstm_13/while/lstm_cell_172/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_13/while/addAddV2lstm_13_while_placeholderlstm_13/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_13/while/add_1AddV2(lstm_13_while_lstm_13_while_loop_counterlstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_13/while/IdentityIdentitylstm_13/while/add_1:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: ?
lstm_13/while/Identity_1Identity.lstm_13_while_lstm_13_while_maximum_iterations^lstm_13/while/NoOp*
T0*
_output_shapes
: q
lstm_13/while/Identity_2Identitylstm_13/while/add:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: ?
lstm_13/while/Identity_3IdentityBlstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_13/while/NoOp*
T0*
_output_shapes
: ?
lstm_13/while/Identity_4Identity%lstm_13/while/lstm_cell_172/mul_2:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_13/while/Identity_5Identity%lstm_13/while/lstm_cell_172/add_1:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_13/while/NoOpNoOp3^lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp2^lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp4^lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_13_while_identitylstm_13/while/Identity:output:0"=
lstm_13_while_identity_1!lstm_13/while/Identity_1:output:0"=
lstm_13_while_identity_2!lstm_13/while/Identity_2:output:0"=
lstm_13_while_identity_3!lstm_13/while/Identity_3:output:0"=
lstm_13_while_identity_4!lstm_13/while/Identity_4:output:0"=
lstm_13_while_identity_5!lstm_13/while/Identity_5:output:0"P
%lstm_13_while_lstm_13_strided_slice_1'lstm_13_while_lstm_13_strided_slice_1_0"|
;lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource=lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource_0"~
<lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource>lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource_0"z
:lstm_13_while_lstm_cell_172_matmul_readvariableop_resource<lstm_13_while_lstm_cell_172_matmul_readvariableop_resource_0"?
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2h
2lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp2lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp2f
1lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp1lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp2j
3lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp3lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?#
?
while_body_1047255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_172_1047279_0:	d?0
while_lstm_cell_172_1047281_0:	2?,
while_lstm_cell_172_1047283_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_172_1047279:	d?.
while_lstm_cell_172_1047281:	2?*
while_lstm_cell_172_1047283:	???+while/lstm_cell_172/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_172/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_172_1047279_0while_lstm_cell_172_1047281_0while_lstm_cell_172_1047283_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1047241?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_172/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_172/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_172/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_172/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_172_1047279while_lstm_cell_172_1047279_0"<
while_lstm_cell_172_1047281while_lstm_cell_172_1047281_0"<
while_lstm_cell_172_1047283while_lstm_cell_172_1047283_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_172/StatefulPartitionedCall+while/lstm_cell_172/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_1051139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1051139___redundant_placeholder05
1while_while_cond_1051139___redundant_placeholder15
1while_while_cond_1051139___redundant_placeholder25
1while_while_cond_1051139___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
??
?

I__inference_sequential_4_layer_call_and_return_conditional_losses_1049992

inputsG
4lstm_12_lstm_cell_171_matmul_readvariableop_resource:	?I
6lstm_12_lstm_cell_171_matmul_1_readvariableop_resource:	d?D
5lstm_12_lstm_cell_171_biasadd_readvariableop_resource:	?G
4lstm_13_lstm_cell_172_matmul_readvariableop_resource:	d?I
6lstm_13_lstm_cell_172_matmul_1_readvariableop_resource:	2?D
5lstm_13_lstm_cell_172_biasadd_readvariableop_resource:	?F
4lstm_14_lstm_cell_173_matmul_readvariableop_resource:2(H
6lstm_14_lstm_cell_173_matmul_1_readvariableop_resource:
(C
5lstm_14_lstm_cell_173_biasadd_readvariableop_resource:(8
&dense_4_matmul_readvariableop_resource:
5
'dense_4_biasadd_readvariableop_resource:
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?,lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp?+lstm_12/lstm_cell_171/MatMul/ReadVariableOp?-lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp?lstm_12/while?,lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp?+lstm_13/lstm_cell_172/MatMul/ReadVariableOp?-lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp?lstm_13/while?,lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp?+lstm_14/lstm_cell_173/MatMul/ReadVariableOp?-lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp?lstm_14/whileC
lstm_12/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_12/strided_sliceStridedSlicelstm_12/Shape:output:0$lstm_12/strided_slice/stack:output:0&lstm_12/strided_slice/stack_1:output:0&lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_12/zeros/packedPacklstm_12/strided_slice:output:0lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_12/zerosFilllstm_12/zeros/packed:output:0lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dZ
lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_12/zeros_1/packedPacklstm_12/strided_slice:output:0!lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_12/zeros_1Filllstm_12/zeros_1/packed:output:0lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dk
lstm_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_12/transpose	Transposeinputslstm_12/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_12/Shape_1Shapelstm_12/transpose:y:0*
T0*
_output_shapes
:g
lstm_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_12/strided_slice_1StridedSlicelstm_12/Shape_1:output:0&lstm_12/strided_slice_1/stack:output:0(lstm_12/strided_slice_1/stack_1:output:0(lstm_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_12/TensorArrayV2TensorListReserve,lstm_12/TensorArrayV2/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/lstm_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_12/transpose:y:0Flstm_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_12/strided_slice_2StridedSlicelstm_12/transpose:y:0&lstm_12/strided_slice_2/stack:output:0(lstm_12/strided_slice_2/stack_1:output:0(lstm_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
+lstm_12/lstm_cell_171/MatMul/ReadVariableOpReadVariableOp4lstm_12_lstm_cell_171_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_12/lstm_cell_171/MatMulMatMul lstm_12/strided_slice_2:output:03lstm_12/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-lstm_12/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp6lstm_12_lstm_cell_171_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_12/lstm_cell_171/MatMul_1MatMullstm_12/zeros:output:05lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_12/lstm_cell_171/addAddV2&lstm_12/lstm_cell_171/MatMul:product:0(lstm_12/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
,lstm_12/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp5lstm_12_lstm_cell_171_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_12/lstm_cell_171/BiasAddBiasAddlstm_12/lstm_cell_171/add:z:04lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%lstm_12/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_12/lstm_cell_171/splitSplit.lstm_12/lstm_cell_171/split/split_dim:output:0&lstm_12/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_12/lstm_cell_171/SigmoidSigmoid$lstm_12/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/Sigmoid_1Sigmoid$lstm_12/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/mulMul#lstm_12/lstm_cell_171/Sigmoid_1:y:0lstm_12/zeros_1:output:0*
T0*'
_output_shapes
:?????????dz
lstm_12/lstm_cell_171/ReluRelu$lstm_12/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/mul_1Mul!lstm_12/lstm_cell_171/Sigmoid:y:0(lstm_12/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/add_1AddV2lstm_12/lstm_cell_171/mul:z:0lstm_12/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/Sigmoid_2Sigmoid$lstm_12/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????dw
lstm_12/lstm_cell_171/Relu_1Relulstm_12/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_12/lstm_cell_171/mul_2Mul#lstm_12/lstm_cell_171/Sigmoid_2:y:0*lstm_12/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dv
%lstm_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_12/TensorArrayV2_1TensorListReserve.lstm_12/TensorArrayV2_1/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_12/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_12/whileWhile#lstm_12/while/loop_counter:output:0)lstm_12/while/maximum_iterations:output:0lstm_12/time:output:0 lstm_12/TensorArrayV2_1:handle:0lstm_12/zeros:output:0lstm_12/zeros_1:output:0 lstm_12/strided_slice_1:output:0?lstm_12/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_12_lstm_cell_171_matmul_readvariableop_resource6lstm_12_lstm_cell_171_matmul_1_readvariableop_resource5lstm_12_lstm_cell_171_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_12_while_body_1049624*&
condR
lstm_12_while_cond_1049623*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
8lstm_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
*lstm_12/TensorArrayV2Stack/TensorListStackTensorListStacklstm_12/while:output:3Alstm_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0p
lstm_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_12/strided_slice_3StridedSlice3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_12/strided_slice_3/stack:output:0(lstm_12/strided_slice_3/stack_1:output:0(lstm_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskm
lstm_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_12/transpose_1	Transpose3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dc
lstm_12/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_13/ShapeShapelstm_12/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_13/strided_sliceStridedSlicelstm_13/Shape:output:0$lstm_13/strided_slice/stack:output:0&lstm_13/strided_slice/stack_1:output:0&lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_13/zeros/packedPacklstm_13/strided_slice:output:0lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_13/zerosFilllstm_13/zeros/packed:output:0lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2Z
lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_13/zeros_1/packedPacklstm_13/strided_slice:output:0!lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_13/zeros_1Filllstm_13/zeros_1/packed:output:0lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2k
lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_13/transpose	Transposelstm_12/transpose_1:y:0lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dT
lstm_13/Shape_1Shapelstm_13/transpose:y:0*
T0*
_output_shapes
:g
lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_13/strided_slice_1StridedSlicelstm_13/Shape_1:output:0&lstm_13/strided_slice_1/stack:output:0(lstm_13/strided_slice_1/stack_1:output:0(lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_13/TensorArrayV2TensorListReserve,lstm_13/TensorArrayV2/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_13/transpose:y:0Flstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_13/strided_slice_2StridedSlicelstm_13/transpose:y:0&lstm_13/strided_slice_2/stack:output:0(lstm_13/strided_slice_2/stack_1:output:0(lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
+lstm_13/lstm_cell_172/MatMul/ReadVariableOpReadVariableOp4lstm_13_lstm_cell_172_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_13/lstm_cell_172/MatMulMatMul lstm_13/strided_slice_2:output:03lstm_13/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-lstm_13/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp6lstm_13_lstm_cell_172_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_13/lstm_cell_172/MatMul_1MatMullstm_13/zeros:output:05lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_13/lstm_cell_172/addAddV2&lstm_13/lstm_cell_172/MatMul:product:0(lstm_13/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
,lstm_13/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp5lstm_13_lstm_cell_172_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_13/lstm_cell_172/BiasAddBiasAddlstm_13/lstm_cell_172/add:z:04lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%lstm_13/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_13/lstm_cell_172/splitSplit.lstm_13/lstm_cell_172/split/split_dim:output:0&lstm_13/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_13/lstm_cell_172/SigmoidSigmoid$lstm_13/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/Sigmoid_1Sigmoid$lstm_13/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/mulMul#lstm_13/lstm_cell_172/Sigmoid_1:y:0lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:?????????2z
lstm_13/lstm_cell_172/ReluRelu$lstm_13/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/mul_1Mul!lstm_13/lstm_cell_172/Sigmoid:y:0(lstm_13/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/add_1AddV2lstm_13/lstm_cell_172/mul:z:0lstm_13/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/Sigmoid_2Sigmoid$lstm_13/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2w
lstm_13/lstm_cell_172/Relu_1Relulstm_13/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_13/lstm_cell_172/mul_2Mul#lstm_13/lstm_cell_172/Sigmoid_2:y:0*lstm_13/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2v
%lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_13/TensorArrayV2_1TensorListReserve.lstm_13/TensorArrayV2_1/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_13/whileWhile#lstm_13/while/loop_counter:output:0)lstm_13/while/maximum_iterations:output:0lstm_13/time:output:0 lstm_13/TensorArrayV2_1:handle:0lstm_13/zeros:output:0lstm_13/zeros_1:output:0 lstm_13/strided_slice_1:output:0?lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_13_lstm_cell_172_matmul_readvariableop_resource6lstm_13_lstm_cell_172_matmul_1_readvariableop_resource5lstm_13_lstm_cell_172_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_13_while_body_1049763*&
condR
lstm_13_while_cond_1049762*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
*lstm_13/TensorArrayV2Stack/TensorListStackTensorListStacklstm_13/while:output:3Alstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0p
lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_13/strided_slice_3StridedSlice3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_13/strided_slice_3/stack:output:0(lstm_13/strided_slice_3/stack_1:output:0(lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskm
lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_13/transpose_1	Transpose3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2c
lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_14/ShapeShapelstm_13/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_14/strided_sliceStridedSlicelstm_14/Shape:output:0$lstm_14/strided_slice/stack:output:0&lstm_14/strided_slice/stack_1:output:0&lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_14/zeros/packedPacklstm_14/strided_slice:output:0lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_14/zerosFilllstm_14/zeros/packed:output:0lstm_14/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
Z
lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_14/zeros_1/packedPacklstm_14/strided_slice:output:0!lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_14/zeros_1Filllstm_14/zeros_1/packed:output:0lstm_14/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
k
lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_14/transpose	Transposelstm_13/transpose_1:y:0lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2T
lstm_14/Shape_1Shapelstm_14/transpose:y:0*
T0*
_output_shapes
:g
lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_14/strided_slice_1StridedSlicelstm_14/Shape_1:output:0&lstm_14/strided_slice_1/stack:output:0(lstm_14/strided_slice_1/stack_1:output:0(lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_14/TensorArrayV2TensorListReserve,lstm_14/TensorArrayV2/element_shape:output:0 lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
/lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_14/transpose:y:0Flstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_14/strided_slice_2StridedSlicelstm_14/transpose:y:0&lstm_14/strided_slice_2/stack:output:0(lstm_14/strided_slice_2/stack_1:output:0(lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
+lstm_14/lstm_cell_173/MatMul/ReadVariableOpReadVariableOp4lstm_14_lstm_cell_173_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_14/lstm_cell_173/MatMulMatMul lstm_14/strided_slice_2:output:03lstm_14/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
-lstm_14/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp6lstm_14_lstm_cell_173_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_14/lstm_cell_173/MatMul_1MatMullstm_14/zeros:output:05lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_14/lstm_cell_173/addAddV2&lstm_14/lstm_cell_173/MatMul:product:0(lstm_14/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
,lstm_14/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp5lstm_14_lstm_cell_173_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_14/lstm_cell_173/BiasAddBiasAddlstm_14/lstm_cell_173/add:z:04lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(g
%lstm_14/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_14/lstm_cell_173/splitSplit.lstm_14/lstm_cell_173/split/split_dim:output:0&lstm_14/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_14/lstm_cell_173/SigmoidSigmoid$lstm_14/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/Sigmoid_1Sigmoid$lstm_14/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/mulMul#lstm_14/lstm_cell_173/Sigmoid_1:y:0lstm_14/zeros_1:output:0*
T0*'
_output_shapes
:?????????
z
lstm_14/lstm_cell_173/ReluRelu$lstm_14/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/mul_1Mul!lstm_14/lstm_cell_173/Sigmoid:y:0(lstm_14/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/add_1AddV2lstm_14/lstm_cell_173/mul:z:0lstm_14/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/Sigmoid_2Sigmoid$lstm_14/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
w
lstm_14/lstm_cell_173/Relu_1Relulstm_14/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_14/lstm_cell_173/mul_2Mul#lstm_14/lstm_cell_173/Sigmoid_2:y:0*lstm_14/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
v
%lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_14/TensorArrayV2_1TensorListReserve.lstm_14/TensorArrayV2_1/element_shape:output:0 lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_14/whileWhile#lstm_14/while/loop_counter:output:0)lstm_14/while/maximum_iterations:output:0lstm_14/time:output:0 lstm_14/TensorArrayV2_1:handle:0lstm_14/zeros:output:0lstm_14/zeros_1:output:0 lstm_14/strided_slice_1:output:0?lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_14_lstm_cell_173_matmul_readvariableop_resource6lstm_14_lstm_cell_173_matmul_1_readvariableop_resource5lstm_14_lstm_cell_173_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_14_while_body_1049902*&
condR
lstm_14_while_cond_1049901*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
8lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
*lstm_14/TensorArrayV2Stack/TensorListStackTensorListStacklstm_14/while:output:3Alstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0p
lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_14/strided_slice_3StridedSlice3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_14/strided_slice_3/stack:output:0(lstm_14/strided_slice_3/stack_1:output:0(lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskm
lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_14/transpose_1	Transpose3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_14/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
c
lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_4/MatMulMatMul lstm_14/strided_slice_3:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp-^lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp,^lstm_12/lstm_cell_171/MatMul/ReadVariableOp.^lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp^lstm_12/while-^lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp,^lstm_13/lstm_cell_172/MatMul/ReadVariableOp.^lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp^lstm_13/while-^lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp,^lstm_14/lstm_cell_173/MatMul/ReadVariableOp.^lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp^lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2\
,lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp,lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp2Z
+lstm_12/lstm_cell_171/MatMul/ReadVariableOp+lstm_12/lstm_cell_171/MatMul/ReadVariableOp2^
-lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp-lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp2
lstm_12/whilelstm_12/while2\
,lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp,lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp2Z
+lstm_13/lstm_cell_172/MatMul/ReadVariableOp+lstm_13/lstm_cell_172/MatMul/ReadVariableOp2^
-lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp-lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp2
lstm_13/whilelstm_13/while2\
,lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp,lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp2Z
+lstm_14/lstm_cell_173/MatMul/ReadVariableOp+lstm_14/lstm_cell_173/MatMul/ReadVariableOp2^
-lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp-lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp2
lstm_14/whilelstm_14/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_13_layer_call_fn_1050619
inputs_0
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_13_layer_call_and_return_conditional_losses_1047324|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1051081

inputs?
,lstm_cell_172_matmul_readvariableop_resource:	d?A
.lstm_cell_172_matmul_1_readvariableop_resource:	2?<
-lstm_cell_172_biasadd_readvariableop_resource:	?
identity??$lstm_cell_172/BiasAdd/ReadVariableOp?#lstm_cell_172/MatMul/ReadVariableOp?%lstm_cell_172/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_172/MatMul/ReadVariableOpReadVariableOp,lstm_cell_172_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_172/MatMulMatMulstrided_slice_2:output:0+lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_172_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_172/MatMul_1MatMulzeros:output:0-lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_172/addAddV2lstm_cell_172/MatMul:product:0 lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_172_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_172/BiasAddBiasAddlstm_cell_172/add:z:0,lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_172/splitSplit&lstm_cell_172/split/split_dim:output:0lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_172/SigmoidSigmoidlstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_1Sigmoidlstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_172/mulMullstm_cell_172/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_172/ReluRelulstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_1Mullstm_cell_172/Sigmoid:y:0 lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_172/add_1AddV2lstm_cell_172/mul:z:0lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_2Sigmoidlstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_172/Relu_1Relulstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_2Mullstm_cell_172/Sigmoid_2:y:0"lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_172_matmul_readvariableop_resource.lstm_cell_172_matmul_1_readvariableop_resource-lstm_cell_172_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1050997*
condR
while_cond_1050996*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_172/BiasAdd/ReadVariableOp$^lstm_cell_172/MatMul/ReadVariableOp&^lstm_cell_172/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_172/BiasAdd/ReadVariableOp$lstm_cell_172/BiasAdd/ReadVariableOp2J
#lstm_cell_172/MatMul/ReadVariableOp#lstm_cell_172/MatMul/ReadVariableOp2N
%lstm_cell_172/MatMul_1/ReadVariableOp%lstm_cell_172/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1047737

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_namestates:OK
'
_output_shapes
:?????????

 
_user_specified_namestates
?8
?
while_body_1048455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_173_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_173_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_173_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_173_matmul_readvariableop_resource:2(F
4while_lstm_cell_173_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_173_biasadd_readvariableop_resource:(??*while/lstm_cell_173/BiasAdd/ReadVariableOp?)while/lstm_cell_173/MatMul/ReadVariableOp?+while/lstm_cell_173/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_173/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_173_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_173/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_173_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_173/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_173/addAddV2$while/lstm_cell_173/MatMul:product:0&while/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_173_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_173/BiasAddBiasAddwhile/lstm_cell_173/add:z:02while/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_173/splitSplit,while/lstm_cell_173/split/split_dim:output:0$while/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_173/SigmoidSigmoid"while/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_1Sigmoid"while/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mulMul!while/lstm_cell_173/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_173/ReluRelu"while/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_1Mulwhile/lstm_cell_173/Sigmoid:y:0&while/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/add_1AddV2while/lstm_cell_173/mul:z:0while/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_2Sigmoid"while/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_173/Relu_1Reluwhile/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_2Mul!while/lstm_cell_173/Sigmoid_2:y:0(while/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_173/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_173/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_173/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_173/BiasAdd/ReadVariableOp*^while/lstm_cell_173/MatMul/ReadVariableOp,^while/lstm_cell_173/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_173_biasadd_readvariableop_resource5while_lstm_cell_173_biasadd_readvariableop_resource_0"n
4while_lstm_cell_173_matmul_1_readvariableop_resource6while_lstm_cell_173_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_173_matmul_readvariableop_resource4while_lstm_cell_173_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_173/BiasAdd/ReadVariableOp*while/lstm_cell_173/BiasAdd/ReadVariableOp2V
)while/lstm_cell_173/MatMul/ReadVariableOp)while/lstm_cell_173/MatMul/ReadVariableOp2Z
+while/lstm_cell_173/MatMul_1/ReadVariableOp+while/lstm_cell_173/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_12_while_cond_1049623,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3.
*lstm_12_while_less_lstm_12_strided_slice_1E
Alstm_12_while_lstm_12_while_cond_1049623___redundant_placeholder0E
Alstm_12_while_lstm_12_while_cond_1049623___redundant_placeholder1E
Alstm_12_while_lstm_12_while_cond_1049623___redundant_placeholder2E
Alstm_12_while_lstm_12_while_cond_1049623___redundant_placeholder3
lstm_12_while_identity
?
lstm_12/while/LessLesslstm_12_while_placeholder*lstm_12_while_less_lstm_12_strided_slice_1*
T0*
_output_shapes
: [
lstm_12/while/IdentityIdentitylstm_12/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_12_while_identitylstm_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?J
?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1051224

inputs?
,lstm_cell_172_matmul_readvariableop_resource:	d?A
.lstm_cell_172_matmul_1_readvariableop_resource:	2?<
-lstm_cell_172_biasadd_readvariableop_resource:	?
identity??$lstm_cell_172/BiasAdd/ReadVariableOp?#lstm_cell_172/MatMul/ReadVariableOp?%lstm_cell_172/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_172/MatMul/ReadVariableOpReadVariableOp,lstm_cell_172_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_172/MatMulMatMulstrided_slice_2:output:0+lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_172_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_172/MatMul_1MatMulzeros:output:0-lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_172/addAddV2lstm_cell_172/MatMul:product:0 lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_172_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_172/BiasAddBiasAddlstm_cell_172/add:z:0,lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_172/splitSplit&lstm_cell_172/split/split_dim:output:0lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_172/SigmoidSigmoidlstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_1Sigmoidlstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_172/mulMullstm_cell_172/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_172/ReluRelulstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_1Mullstm_cell_172/Sigmoid:y:0 lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_172/add_1AddV2lstm_cell_172/mul:z:0lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_172/Sigmoid_2Sigmoidlstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_172/Relu_1Relulstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_172/mul_2Mullstm_cell_172/Sigmoid_2:y:0"lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_172_matmul_readvariableop_resource.lstm_cell_172_matmul_1_readvariableop_resource-lstm_cell_172_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1051140*
condR
while_cond_1051139*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_172/BiasAdd/ReadVariableOp$^lstm_cell_172/MatMul/ReadVariableOp&^lstm_cell_172/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_172/BiasAdd/ReadVariableOp$lstm_cell_172/BiasAdd/ReadVariableOp2J
#lstm_cell_172/MatMul/ReadVariableOp#lstm_cell_172/MatMul/ReadVariableOp2N
%lstm_cell_172/MatMul_1/ReadVariableOp%lstm_cell_172/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)__inference_lstm_12_layer_call_fn_1050014
inputs_0
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1047165|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?Q
?
'sequential_4_lstm_14_while_body_1046734F
Bsequential_4_lstm_14_while_sequential_4_lstm_14_while_loop_counterL
Hsequential_4_lstm_14_while_sequential_4_lstm_14_while_maximum_iterations*
&sequential_4_lstm_14_while_placeholder,
(sequential_4_lstm_14_while_placeholder_1,
(sequential_4_lstm_14_while_placeholder_2,
(sequential_4_lstm_14_while_placeholder_3E
Asequential_4_lstm_14_while_sequential_4_lstm_14_strided_slice_1_0?
}sequential_4_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_14_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_4_lstm_14_while_lstm_cell_173_matmul_readvariableop_resource_0:2(]
Ksequential_4_lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource_0:
(X
Jsequential_4_lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource_0:('
#sequential_4_lstm_14_while_identity)
%sequential_4_lstm_14_while_identity_1)
%sequential_4_lstm_14_while_identity_2)
%sequential_4_lstm_14_while_identity_3)
%sequential_4_lstm_14_while_identity_4)
%sequential_4_lstm_14_while_identity_5C
?sequential_4_lstm_14_while_sequential_4_lstm_14_strided_slice_1
{sequential_4_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_14_tensorarrayunstack_tensorlistfromtensorY
Gsequential_4_lstm_14_while_lstm_cell_173_matmul_readvariableop_resource:2([
Isequential_4_lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource:
(V
Hsequential_4_lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource:(???sequential_4/lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp?>sequential_4/lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp?@sequential_4/lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp?
Lsequential_4/lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_4/lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_4_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_14_tensorarrayunstack_tensorlistfromtensor_0&sequential_4_lstm_14_while_placeholderUsequential_4/lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
>sequential_4/lstm_14/while/lstm_cell_173/MatMul/ReadVariableOpReadVariableOpIsequential_4_lstm_14_while_lstm_cell_173_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
/sequential_4/lstm_14/while/lstm_cell_173/MatMulMatMulEsequential_4/lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_4/lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
@sequential_4/lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOpKsequential_4_lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
1sequential_4/lstm_14/while/lstm_cell_173/MatMul_1MatMul(sequential_4_lstm_14_while_placeholder_2Hsequential_4/lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,sequential_4/lstm_14/while/lstm_cell_173/addAddV29sequential_4/lstm_14/while/lstm_cell_173/MatMul:product:0;sequential_4/lstm_14/while/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
?sequential_4/lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOpJsequential_4_lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
0sequential_4/lstm_14/while/lstm_cell_173/BiasAddBiasAdd0sequential_4/lstm_14/while/lstm_cell_173/add:z:0Gsequential_4/lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(z
8sequential_4/lstm_14/while/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_4/lstm_14/while/lstm_cell_173/splitSplitAsequential_4/lstm_14/while/lstm_cell_173/split/split_dim:output:09sequential_4/lstm_14/while/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
0sequential_4/lstm_14/while/lstm_cell_173/SigmoidSigmoid7sequential_4/lstm_14/while/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
?
2sequential_4/lstm_14/while/lstm_cell_173/Sigmoid_1Sigmoid7sequential_4/lstm_14/while/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
,sequential_4/lstm_14/while/lstm_cell_173/mulMul6sequential_4/lstm_14/while/lstm_cell_173/Sigmoid_1:y:0(sequential_4_lstm_14_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
-sequential_4/lstm_14/while/lstm_cell_173/ReluRelu7sequential_4/lstm_14/while/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
.sequential_4/lstm_14/while/lstm_cell_173/mul_1Mul4sequential_4/lstm_14/while/lstm_cell_173/Sigmoid:y:0;sequential_4/lstm_14/while/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
.sequential_4/lstm_14/while/lstm_cell_173/add_1AddV20sequential_4/lstm_14/while/lstm_cell_173/mul:z:02sequential_4/lstm_14/while/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
2sequential_4/lstm_14/while/lstm_cell_173/Sigmoid_2Sigmoid7sequential_4/lstm_14/while/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
?
/sequential_4/lstm_14/while/lstm_cell_173/Relu_1Relu2sequential_4/lstm_14/while/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_4/lstm_14/while/lstm_cell_173/mul_2Mul6sequential_4/lstm_14/while/lstm_cell_173/Sigmoid_2:y:0=sequential_4/lstm_14/while/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
?sequential_4/lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_4_lstm_14_while_placeholder_1&sequential_4_lstm_14_while_placeholder2sequential_4/lstm_14/while/lstm_cell_173/mul_2:z:0*
_output_shapes
: *
element_dtype0:???b
 sequential_4/lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_4/lstm_14/while/addAddV2&sequential_4_lstm_14_while_placeholder)sequential_4/lstm_14/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_4/lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_4/lstm_14/while/add_1AddV2Bsequential_4_lstm_14_while_sequential_4_lstm_14_while_loop_counter+sequential_4/lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: ?
#sequential_4/lstm_14/while/IdentityIdentity$sequential_4/lstm_14/while/add_1:z:0 ^sequential_4/lstm_14/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_14/while/Identity_1IdentityHsequential_4_lstm_14_while_sequential_4_lstm_14_while_maximum_iterations ^sequential_4/lstm_14/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_14/while/Identity_2Identity"sequential_4/lstm_14/while/add:z:0 ^sequential_4/lstm_14/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_14/while/Identity_3IdentityOsequential_4/lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_4/lstm_14/while/NoOp*
T0*
_output_shapes
: ?
%sequential_4/lstm_14/while/Identity_4Identity2sequential_4/lstm_14/while/lstm_cell_173/mul_2:z:0 ^sequential_4/lstm_14/while/NoOp*
T0*'
_output_shapes
:?????????
?
%sequential_4/lstm_14/while/Identity_5Identity2sequential_4/lstm_14/while/lstm_cell_173/add_1:z:0 ^sequential_4/lstm_14/while/NoOp*
T0*'
_output_shapes
:?????????
?
sequential_4/lstm_14/while/NoOpNoOp@^sequential_4/lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp?^sequential_4/lstm_14/while/lstm_cell_173/MatMul/ReadVariableOpA^sequential_4/lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_4_lstm_14_while_identity,sequential_4/lstm_14/while/Identity:output:0"W
%sequential_4_lstm_14_while_identity_1.sequential_4/lstm_14/while/Identity_1:output:0"W
%sequential_4_lstm_14_while_identity_2.sequential_4/lstm_14/while/Identity_2:output:0"W
%sequential_4_lstm_14_while_identity_3.sequential_4/lstm_14/while/Identity_3:output:0"W
%sequential_4_lstm_14_while_identity_4.sequential_4/lstm_14/while/Identity_4:output:0"W
%sequential_4_lstm_14_while_identity_5.sequential_4/lstm_14/while/Identity_5:output:0"?
Hsequential_4_lstm_14_while_lstm_cell_173_biasadd_readvariableop_resourceJsequential_4_lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource_0"?
Isequential_4_lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resourceKsequential_4_lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource_0"?
Gsequential_4_lstm_14_while_lstm_cell_173_matmul_readvariableop_resourceIsequential_4_lstm_14_while_lstm_cell_173_matmul_readvariableop_resource_0"?
?sequential_4_lstm_14_while_sequential_4_lstm_14_strided_slice_1Asequential_4_lstm_14_while_sequential_4_lstm_14_strided_slice_1_0"?
{sequential_4_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_14_tensorarrayunstack_tensorlistfromtensor}sequential_4_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
?sequential_4/lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp?sequential_4/lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp2?
>sequential_4/lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp>sequential_4/lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp2?
@sequential_4/lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp@sequential_4/lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
߯
?
"__inference__wrapped_model_1046824
lstm_12_inputT
Asequential_4_lstm_12_lstm_cell_171_matmul_readvariableop_resource:	?V
Csequential_4_lstm_12_lstm_cell_171_matmul_1_readvariableop_resource:	d?Q
Bsequential_4_lstm_12_lstm_cell_171_biasadd_readvariableop_resource:	?T
Asequential_4_lstm_13_lstm_cell_172_matmul_readvariableop_resource:	d?V
Csequential_4_lstm_13_lstm_cell_172_matmul_1_readvariableop_resource:	2?Q
Bsequential_4_lstm_13_lstm_cell_172_biasadd_readvariableop_resource:	?S
Asequential_4_lstm_14_lstm_cell_173_matmul_readvariableop_resource:2(U
Csequential_4_lstm_14_lstm_cell_173_matmul_1_readvariableop_resource:
(P
Bsequential_4_lstm_14_lstm_cell_173_biasadd_readvariableop_resource:(E
3sequential_4_dense_4_matmul_readvariableop_resource:
B
4sequential_4_dense_4_biasadd_readvariableop_resource:
identity??+sequential_4/dense_4/BiasAdd/ReadVariableOp?*sequential_4/dense_4/MatMul/ReadVariableOp?9sequential_4/lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp?8sequential_4/lstm_12/lstm_cell_171/MatMul/ReadVariableOp?:sequential_4/lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp?sequential_4/lstm_12/while?9sequential_4/lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp?8sequential_4/lstm_13/lstm_cell_172/MatMul/ReadVariableOp?:sequential_4/lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp?sequential_4/lstm_13/while?9sequential_4/lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp?8sequential_4/lstm_14/lstm_cell_173/MatMul/ReadVariableOp?:sequential_4/lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp?sequential_4/lstm_14/whileW
sequential_4/lstm_12/ShapeShapelstm_12_input*
T0*
_output_shapes
:r
(sequential_4/lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_4/lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_4/lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"sequential_4/lstm_12/strided_sliceStridedSlice#sequential_4/lstm_12/Shape:output:01sequential_4/lstm_12/strided_slice/stack:output:03sequential_4/lstm_12/strided_slice/stack_1:output:03sequential_4/lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_4/lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
!sequential_4/lstm_12/zeros/packedPack+sequential_4/lstm_12/strided_slice:output:0,sequential_4/lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_4/lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_4/lstm_12/zerosFill*sequential_4/lstm_12/zeros/packed:output:0)sequential_4/lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dg
%sequential_4/lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_4/lstm_12/zeros_1/packedPack+sequential_4/lstm_12/strided_slice:output:0.sequential_4/lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_4/lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_4/lstm_12/zeros_1Fill,sequential_4/lstm_12/zeros_1/packed:output:0+sequential_4/lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dx
#sequential_4/lstm_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_4/lstm_12/transpose	Transposelstm_12_input,sequential_4/lstm_12/transpose/perm:output:0*
T0*+
_output_shapes
:?????????n
sequential_4/lstm_12/Shape_1Shape"sequential_4/lstm_12/transpose:y:0*
T0*
_output_shapes
:t
*sequential_4/lstm_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/lstm_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_4/lstm_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/lstm_12/strided_slice_1StridedSlice%sequential_4/lstm_12/Shape_1:output:03sequential_4/lstm_12/strided_slice_1/stack:output:05sequential_4/lstm_12/strided_slice_1/stack_1:output:05sequential_4/lstm_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_4/lstm_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"sequential_4/lstm_12/TensorArrayV2TensorListReserve9sequential_4/lstm_12/TensorArrayV2/element_shape:output:0-sequential_4/lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Jsequential_4/lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
<sequential_4/lstm_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_4/lstm_12/transpose:y:0Ssequential_4/lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???t
*sequential_4/lstm_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/lstm_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_4/lstm_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/lstm_12/strided_slice_2StridedSlice"sequential_4/lstm_12/transpose:y:03sequential_4/lstm_12/strided_slice_2/stack:output:05sequential_4/lstm_12/strided_slice_2/stack_1:output:05sequential_4/lstm_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
8sequential_4/lstm_12/lstm_cell_171/MatMul/ReadVariableOpReadVariableOpAsequential_4_lstm_12_lstm_cell_171_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
)sequential_4/lstm_12/lstm_cell_171/MatMulMatMul-sequential_4/lstm_12/strided_slice_2:output:0@sequential_4/lstm_12/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:sequential_4/lstm_12/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOpCsequential_4_lstm_12_lstm_cell_171_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_4/lstm_12/lstm_cell_171/MatMul_1MatMul#sequential_4/lstm_12/zeros:output:0Bsequential_4/lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&sequential_4/lstm_12/lstm_cell_171/addAddV23sequential_4/lstm_12/lstm_cell_171/MatMul:product:05sequential_4/lstm_12/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
9sequential_4/lstm_12/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOpBsequential_4_lstm_12_lstm_cell_171_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*sequential_4/lstm_12/lstm_cell_171/BiasAddBiasAdd*sequential_4/lstm_12/lstm_cell_171/add:z:0Asequential_4/lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????t
2sequential_4/lstm_12/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_4/lstm_12/lstm_cell_171/splitSplit;sequential_4/lstm_12/lstm_cell_171/split/split_dim:output:03sequential_4/lstm_12/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
*sequential_4/lstm_12/lstm_cell_171/SigmoidSigmoid1sequential_4/lstm_12/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d?
,sequential_4/lstm_12/lstm_cell_171/Sigmoid_1Sigmoid1sequential_4/lstm_12/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
&sequential_4/lstm_12/lstm_cell_171/mulMul0sequential_4/lstm_12/lstm_cell_171/Sigmoid_1:y:0%sequential_4/lstm_12/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
'sequential_4/lstm_12/lstm_cell_171/ReluRelu1sequential_4/lstm_12/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
(sequential_4/lstm_12/lstm_cell_171/mul_1Mul.sequential_4/lstm_12/lstm_cell_171/Sigmoid:y:05sequential_4/lstm_12/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
(sequential_4/lstm_12/lstm_cell_171/add_1AddV2*sequential_4/lstm_12/lstm_cell_171/mul:z:0,sequential_4/lstm_12/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
,sequential_4/lstm_12/lstm_cell_171/Sigmoid_2Sigmoid1sequential_4/lstm_12/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????d?
)sequential_4/lstm_12/lstm_cell_171/Relu_1Relu,sequential_4/lstm_12/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
(sequential_4/lstm_12/lstm_cell_171/mul_2Mul0sequential_4/lstm_12/lstm_cell_171/Sigmoid_2:y:07sequential_4/lstm_12/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2sequential_4/lstm_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
$sequential_4/lstm_12/TensorArrayV2_1TensorListReserve;sequential_4/lstm_12/TensorArrayV2_1/element_shape:output:0-sequential_4/lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???[
sequential_4/lstm_12/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_4/lstm_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????i
'sequential_4/lstm_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_4/lstm_12/whileWhile0sequential_4/lstm_12/while/loop_counter:output:06sequential_4/lstm_12/while/maximum_iterations:output:0"sequential_4/lstm_12/time:output:0-sequential_4/lstm_12/TensorArrayV2_1:handle:0#sequential_4/lstm_12/zeros:output:0%sequential_4/lstm_12/zeros_1:output:0-sequential_4/lstm_12/strided_slice_1:output:0Lsequential_4/lstm_12/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_4_lstm_12_lstm_cell_171_matmul_readvariableop_resourceCsequential_4_lstm_12_lstm_cell_171_matmul_1_readvariableop_resourceBsequential_4_lstm_12_lstm_cell_171_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_4_lstm_12_while_body_1046456*3
cond+R)
'sequential_4_lstm_12_while_cond_1046455*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Esequential_4/lstm_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
7sequential_4/lstm_12/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_4/lstm_12/while:output:3Nsequential_4/lstm_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0}
*sequential_4/lstm_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
,sequential_4/lstm_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/lstm_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/lstm_12/strided_slice_3StridedSlice@sequential_4/lstm_12/TensorArrayV2Stack/TensorListStack:tensor:03sequential_4/lstm_12/strided_slice_3/stack:output:05sequential_4/lstm_12/strided_slice_3/stack_1:output:05sequential_4/lstm_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskz
%sequential_4/lstm_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_4/lstm_12/transpose_1	Transpose@sequential_4/lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_4/lstm_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dp
sequential_4/lstm_12/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
sequential_4/lstm_13/ShapeShape$sequential_4/lstm_12/transpose_1:y:0*
T0*
_output_shapes
:r
(sequential_4/lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_4/lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_4/lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"sequential_4/lstm_13/strided_sliceStridedSlice#sequential_4/lstm_13/Shape:output:01sequential_4/lstm_13/strided_slice/stack:output:03sequential_4/lstm_13/strided_slice/stack_1:output:03sequential_4/lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_4/lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
!sequential_4/lstm_13/zeros/packedPack+sequential_4/lstm_13/strided_slice:output:0,sequential_4/lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_4/lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_4/lstm_13/zerosFill*sequential_4/lstm_13/zeros/packed:output:0)sequential_4/lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2g
%sequential_4/lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_4/lstm_13/zeros_1/packedPack+sequential_4/lstm_13/strided_slice:output:0.sequential_4/lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_4/lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_4/lstm_13/zeros_1Fill,sequential_4/lstm_13/zeros_1/packed:output:0+sequential_4/lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2x
#sequential_4/lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_4/lstm_13/transpose	Transpose$sequential_4/lstm_12/transpose_1:y:0,sequential_4/lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dn
sequential_4/lstm_13/Shape_1Shape"sequential_4/lstm_13/transpose:y:0*
T0*
_output_shapes
:t
*sequential_4/lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_4/lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/lstm_13/strided_slice_1StridedSlice%sequential_4/lstm_13/Shape_1:output:03sequential_4/lstm_13/strided_slice_1/stack:output:05sequential_4/lstm_13/strided_slice_1/stack_1:output:05sequential_4/lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_4/lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"sequential_4/lstm_13/TensorArrayV2TensorListReserve9sequential_4/lstm_13/TensorArrayV2/element_shape:output:0-sequential_4/lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Jsequential_4/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
<sequential_4/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_4/lstm_13/transpose:y:0Ssequential_4/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???t
*sequential_4/lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_4/lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/lstm_13/strided_slice_2StridedSlice"sequential_4/lstm_13/transpose:y:03sequential_4/lstm_13/strided_slice_2/stack:output:05sequential_4/lstm_13/strided_slice_2/stack_1:output:05sequential_4/lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
8sequential_4/lstm_13/lstm_cell_172/MatMul/ReadVariableOpReadVariableOpAsequential_4_lstm_13_lstm_cell_172_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
)sequential_4/lstm_13/lstm_cell_172/MatMulMatMul-sequential_4/lstm_13/strided_slice_2:output:0@sequential_4/lstm_13/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:sequential_4/lstm_13/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOpCsequential_4_lstm_13_lstm_cell_172_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
+sequential_4/lstm_13/lstm_cell_172/MatMul_1MatMul#sequential_4/lstm_13/zeros:output:0Bsequential_4/lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&sequential_4/lstm_13/lstm_cell_172/addAddV23sequential_4/lstm_13/lstm_cell_172/MatMul:product:05sequential_4/lstm_13/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
9sequential_4/lstm_13/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOpBsequential_4_lstm_13_lstm_cell_172_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*sequential_4/lstm_13/lstm_cell_172/BiasAddBiasAdd*sequential_4/lstm_13/lstm_cell_172/add:z:0Asequential_4/lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????t
2sequential_4/lstm_13/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_4/lstm_13/lstm_cell_172/splitSplit;sequential_4/lstm_13/lstm_cell_172/split/split_dim:output:03sequential_4/lstm_13/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
*sequential_4/lstm_13/lstm_cell_172/SigmoidSigmoid1sequential_4/lstm_13/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2?
,sequential_4/lstm_13/lstm_cell_172/Sigmoid_1Sigmoid1sequential_4/lstm_13/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
&sequential_4/lstm_13/lstm_cell_172/mulMul0sequential_4/lstm_13/lstm_cell_172/Sigmoid_1:y:0%sequential_4/lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
'sequential_4/lstm_13/lstm_cell_172/ReluRelu1sequential_4/lstm_13/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
(sequential_4/lstm_13/lstm_cell_172/mul_1Mul.sequential_4/lstm_13/lstm_cell_172/Sigmoid:y:05sequential_4/lstm_13/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
(sequential_4/lstm_13/lstm_cell_172/add_1AddV2*sequential_4/lstm_13/lstm_cell_172/mul:z:0,sequential_4/lstm_13/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
,sequential_4/lstm_13/lstm_cell_172/Sigmoid_2Sigmoid1sequential_4/lstm_13/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2?
)sequential_4/lstm_13/lstm_cell_172/Relu_1Relu,sequential_4/lstm_13/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
(sequential_4/lstm_13/lstm_cell_172/mul_2Mul0sequential_4/lstm_13/lstm_cell_172/Sigmoid_2:y:07sequential_4/lstm_13/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2sequential_4/lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
$sequential_4/lstm_13/TensorArrayV2_1TensorListReserve;sequential_4/lstm_13/TensorArrayV2_1/element_shape:output:0-sequential_4/lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???[
sequential_4/lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_4/lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????i
'sequential_4/lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_4/lstm_13/whileWhile0sequential_4/lstm_13/while/loop_counter:output:06sequential_4/lstm_13/while/maximum_iterations:output:0"sequential_4/lstm_13/time:output:0-sequential_4/lstm_13/TensorArrayV2_1:handle:0#sequential_4/lstm_13/zeros:output:0%sequential_4/lstm_13/zeros_1:output:0-sequential_4/lstm_13/strided_slice_1:output:0Lsequential_4/lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_4_lstm_13_lstm_cell_172_matmul_readvariableop_resourceCsequential_4_lstm_13_lstm_cell_172_matmul_1_readvariableop_resourceBsequential_4_lstm_13_lstm_cell_172_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_4_lstm_13_while_body_1046595*3
cond+R)
'sequential_4_lstm_13_while_cond_1046594*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Esequential_4/lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
7sequential_4/lstm_13/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_4/lstm_13/while:output:3Nsequential_4/lstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0}
*sequential_4/lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
,sequential_4/lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/lstm_13/strided_slice_3StridedSlice@sequential_4/lstm_13/TensorArrayV2Stack/TensorListStack:tensor:03sequential_4/lstm_13/strided_slice_3/stack:output:05sequential_4/lstm_13/strided_slice_3/stack_1:output:05sequential_4/lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskz
%sequential_4/lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_4/lstm_13/transpose_1	Transpose@sequential_4/lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_4/lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2p
sequential_4/lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
sequential_4/lstm_14/ShapeShape$sequential_4/lstm_13/transpose_1:y:0*
T0*
_output_shapes
:r
(sequential_4/lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_4/lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_4/lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"sequential_4/lstm_14/strided_sliceStridedSlice#sequential_4/lstm_14/Shape:output:01sequential_4/lstm_14/strided_slice/stack:output:03sequential_4/lstm_14/strided_slice/stack_1:output:03sequential_4/lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_4/lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
!sequential_4/lstm_14/zeros/packedPack+sequential_4/lstm_14/strided_slice:output:0,sequential_4/lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_4/lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_4/lstm_14/zerosFill*sequential_4/lstm_14/zeros/packed:output:0)sequential_4/lstm_14/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
g
%sequential_4/lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_4/lstm_14/zeros_1/packedPack+sequential_4/lstm_14/strided_slice:output:0.sequential_4/lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_4/lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_4/lstm_14/zeros_1Fill,sequential_4/lstm_14/zeros_1/packed:output:0+sequential_4/lstm_14/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
x
#sequential_4/lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_4/lstm_14/transpose	Transpose$sequential_4/lstm_13/transpose_1:y:0,sequential_4/lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2n
sequential_4/lstm_14/Shape_1Shape"sequential_4/lstm_14/transpose:y:0*
T0*
_output_shapes
:t
*sequential_4/lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_4/lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/lstm_14/strided_slice_1StridedSlice%sequential_4/lstm_14/Shape_1:output:03sequential_4/lstm_14/strided_slice_1/stack:output:05sequential_4/lstm_14/strided_slice_1/stack_1:output:05sequential_4/lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_4/lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"sequential_4/lstm_14/TensorArrayV2TensorListReserve9sequential_4/lstm_14/TensorArrayV2/element_shape:output:0-sequential_4/lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Jsequential_4/lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
<sequential_4/lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_4/lstm_14/transpose:y:0Ssequential_4/lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???t
*sequential_4/lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_4/lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/lstm_14/strided_slice_2StridedSlice"sequential_4/lstm_14/transpose:y:03sequential_4/lstm_14/strided_slice_2/stack:output:05sequential_4/lstm_14/strided_slice_2/stack_1:output:05sequential_4/lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
8sequential_4/lstm_14/lstm_cell_173/MatMul/ReadVariableOpReadVariableOpAsequential_4_lstm_14_lstm_cell_173_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
)sequential_4/lstm_14/lstm_cell_173/MatMulMatMul-sequential_4/lstm_14/strided_slice_2:output:0@sequential_4/lstm_14/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
:sequential_4/lstm_14/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOpCsequential_4_lstm_14_lstm_cell_173_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
+sequential_4/lstm_14/lstm_cell_173/MatMul_1MatMul#sequential_4/lstm_14/zeros:output:0Bsequential_4/lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
&sequential_4/lstm_14/lstm_cell_173/addAddV23sequential_4/lstm_14/lstm_cell_173/MatMul:product:05sequential_4/lstm_14/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
9sequential_4/lstm_14/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOpBsequential_4_lstm_14_lstm_cell_173_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
*sequential_4/lstm_14/lstm_cell_173/BiasAddBiasAdd*sequential_4/lstm_14/lstm_cell_173/add:z:0Asequential_4/lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(t
2sequential_4/lstm_14/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_4/lstm_14/lstm_cell_173/splitSplit;sequential_4/lstm_14/lstm_cell_173/split/split_dim:output:03sequential_4/lstm_14/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
*sequential_4/lstm_14/lstm_cell_173/SigmoidSigmoid1sequential_4/lstm_14/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
?
,sequential_4/lstm_14/lstm_cell_173/Sigmoid_1Sigmoid1sequential_4/lstm_14/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
&sequential_4/lstm_14/lstm_cell_173/mulMul0sequential_4/lstm_14/lstm_cell_173/Sigmoid_1:y:0%sequential_4/lstm_14/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
'sequential_4/lstm_14/lstm_cell_173/ReluRelu1sequential_4/lstm_14/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
(sequential_4/lstm_14/lstm_cell_173/mul_1Mul.sequential_4/lstm_14/lstm_cell_173/Sigmoid:y:05sequential_4/lstm_14/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
(sequential_4/lstm_14/lstm_cell_173/add_1AddV2*sequential_4/lstm_14/lstm_cell_173/mul:z:0,sequential_4/lstm_14/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
,sequential_4/lstm_14/lstm_cell_173/Sigmoid_2Sigmoid1sequential_4/lstm_14/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
?
)sequential_4/lstm_14/lstm_cell_173/Relu_1Relu,sequential_4/lstm_14/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
(sequential_4/lstm_14/lstm_cell_173/mul_2Mul0sequential_4/lstm_14/lstm_cell_173/Sigmoid_2:y:07sequential_4/lstm_14/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2sequential_4/lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
$sequential_4/lstm_14/TensorArrayV2_1TensorListReserve;sequential_4/lstm_14/TensorArrayV2_1/element_shape:output:0-sequential_4/lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???[
sequential_4/lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_4/lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????i
'sequential_4/lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_4/lstm_14/whileWhile0sequential_4/lstm_14/while/loop_counter:output:06sequential_4/lstm_14/while/maximum_iterations:output:0"sequential_4/lstm_14/time:output:0-sequential_4/lstm_14/TensorArrayV2_1:handle:0#sequential_4/lstm_14/zeros:output:0%sequential_4/lstm_14/zeros_1:output:0-sequential_4/lstm_14/strided_slice_1:output:0Lsequential_4/lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_4_lstm_14_lstm_cell_173_matmul_readvariableop_resourceCsequential_4_lstm_14_lstm_cell_173_matmul_1_readvariableop_resourceBsequential_4_lstm_14_lstm_cell_173_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_4_lstm_14_while_body_1046734*3
cond+R)
'sequential_4_lstm_14_while_cond_1046733*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Esequential_4/lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
7sequential_4/lstm_14/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_4/lstm_14/while:output:3Nsequential_4/lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0}
*sequential_4/lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
,sequential_4/lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/lstm_14/strided_slice_3StridedSlice@sequential_4/lstm_14/TensorArrayV2Stack/TensorListStack:tensor:03sequential_4/lstm_14/strided_slice_3/stack:output:05sequential_4/lstm_14/strided_slice_3/stack_1:output:05sequential_4/lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskz
%sequential_4/lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_4/lstm_14/transpose_1	Transpose@sequential_4/lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_4/lstm_14/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
p
sequential_4/lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
*sequential_4/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_4/dense_4/MatMulMatMul-sequential_4/lstm_14/strided_slice_3:output:02sequential_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_4/dense_4/BiasAddBiasAdd%sequential_4/dense_4/MatMul:product:03sequential_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????t
IdentityIdentity%sequential_4/dense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^sequential_4/dense_4/BiasAdd/ReadVariableOp+^sequential_4/dense_4/MatMul/ReadVariableOp:^sequential_4/lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp9^sequential_4/lstm_12/lstm_cell_171/MatMul/ReadVariableOp;^sequential_4/lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp^sequential_4/lstm_12/while:^sequential_4/lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp9^sequential_4/lstm_13/lstm_cell_172/MatMul/ReadVariableOp;^sequential_4/lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp^sequential_4/lstm_13/while:^sequential_4/lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp9^sequential_4/lstm_14/lstm_cell_173/MatMul/ReadVariableOp;^sequential_4/lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp^sequential_4/lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2Z
+sequential_4/dense_4/BiasAdd/ReadVariableOp+sequential_4/dense_4/BiasAdd/ReadVariableOp2X
*sequential_4/dense_4/MatMul/ReadVariableOp*sequential_4/dense_4/MatMul/ReadVariableOp2v
9sequential_4/lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp9sequential_4/lstm_12/lstm_cell_171/BiasAdd/ReadVariableOp2t
8sequential_4/lstm_12/lstm_cell_171/MatMul/ReadVariableOp8sequential_4/lstm_12/lstm_cell_171/MatMul/ReadVariableOp2x
:sequential_4/lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp:sequential_4/lstm_12/lstm_cell_171/MatMul_1/ReadVariableOp28
sequential_4/lstm_12/whilesequential_4/lstm_12/while2v
9sequential_4/lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp9sequential_4/lstm_13/lstm_cell_172/BiasAdd/ReadVariableOp2t
8sequential_4/lstm_13/lstm_cell_172/MatMul/ReadVariableOp8sequential_4/lstm_13/lstm_cell_172/MatMul/ReadVariableOp2x
:sequential_4/lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp:sequential_4/lstm_13/lstm_cell_172/MatMul_1/ReadVariableOp28
sequential_4/lstm_13/whilesequential_4/lstm_13/while2v
9sequential_4/lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp9sequential_4/lstm_14/lstm_cell_173/BiasAdd/ReadVariableOp2t
8sequential_4/lstm_14/lstm_cell_173/MatMul/ReadVariableOp8sequential_4/lstm_14/lstm_cell_173/MatMul/ReadVariableOp2x
:sequential_4/lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp:sequential_4/lstm_14/lstm_cell_173/MatMul_1/ReadVariableOp28
sequential_4/lstm_14/whilesequential_4/lstm_14/while:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_12_input
?
?
while_cond_1051469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1051469___redundant_placeholder05
1while_while_cond_1051469___redundant_placeholder15
1while_while_cond_1051469___redundant_placeholder25
1while_while_cond_1051469___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
'sequential_4_lstm_12_while_cond_1046455F
Bsequential_4_lstm_12_while_sequential_4_lstm_12_while_loop_counterL
Hsequential_4_lstm_12_while_sequential_4_lstm_12_while_maximum_iterations*
&sequential_4_lstm_12_while_placeholder,
(sequential_4_lstm_12_while_placeholder_1,
(sequential_4_lstm_12_while_placeholder_2,
(sequential_4_lstm_12_while_placeholder_3H
Dsequential_4_lstm_12_while_less_sequential_4_lstm_12_strided_slice_1_
[sequential_4_lstm_12_while_sequential_4_lstm_12_while_cond_1046455___redundant_placeholder0_
[sequential_4_lstm_12_while_sequential_4_lstm_12_while_cond_1046455___redundant_placeholder1_
[sequential_4_lstm_12_while_sequential_4_lstm_12_while_cond_1046455___redundant_placeholder2_
[sequential_4_lstm_12_while_sequential_4_lstm_12_while_cond_1046455___redundant_placeholder3'
#sequential_4_lstm_12_while_identity
?
sequential_4/lstm_12/while/LessLess&sequential_4_lstm_12_while_placeholderDsequential_4_lstm_12_while_less_sequential_4_lstm_12_strided_slice_1*
T0*
_output_shapes
: u
#sequential_4/lstm_12/while/IdentityIdentity#sequential_4/lstm_12/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_4_lstm_12_while_identity,sequential_4/lstm_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_12_layer_call_fn_1050036

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1048869s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1052153

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?
?
/__inference_lstm_cell_173_layer_call_fn_1052072

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1047591o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????
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
?:?????????2:?????????
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?8
?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1047674

inputs'
lstm_cell_173_1047592:2('
lstm_cell_173_1047594:
(#
lstm_cell_173_1047596:(
identity??%lstm_cell_173/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
%lstm_cell_173/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_173_1047592lstm_cell_173_1047594lstm_cell_173_1047596*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1047591n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_173_1047592lstm_cell_173_1047594lstm_cell_173_1047596*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1047605*
condR
while_cond_1047604*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
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
:?????????
v
NoOpNoOp&^lstm_cell_173/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_173/StatefulPartitionedCall%lstm_cell_173/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1051326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1051326___redundant_placeholder05
1while_while_cond_1051326___redundant_placeholder15
1while_while_cond_1051326___redundant_placeholder25
1while_while_cond_1051326___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?8
?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1047865

inputs'
lstm_cell_173_1047783:2('
lstm_cell_173_1047785:
(#
lstm_cell_173_1047787:(
identity??%lstm_cell_173/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
%lstm_cell_173/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_173_1047783lstm_cell_173_1047785lstm_cell_173_1047787*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1047737n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_173_1047783lstm_cell_173_1047785lstm_cell_173_1047787*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1047796*
condR
while_cond_1047795*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
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
:?????????
v
NoOpNoOp&^lstm_cell_173/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_173/StatefulPartitionedCall%lstm_cell_173/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?A
?

lstm_14_while_body_1049902,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3+
'lstm_14_while_lstm_14_strided_slice_1_0g
clstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_14_while_lstm_cell_173_matmul_readvariableop_resource_0:2(P
>lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource_0:
(K
=lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource_0:(
lstm_14_while_identity
lstm_14_while_identity_1
lstm_14_while_identity_2
lstm_14_while_identity_3
lstm_14_while_identity_4
lstm_14_while_identity_5)
%lstm_14_while_lstm_14_strided_slice_1e
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensorL
:lstm_14_while_lstm_cell_173_matmul_readvariableop_resource:2(N
<lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource:
(I
;lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource:(??2lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp?1lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp?3lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp?
?lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
1lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0lstm_14_while_placeholderHlstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
1lstm_14/while/lstm_cell_173/MatMul/ReadVariableOpReadVariableOp<lstm_14_while_lstm_cell_173_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
"lstm_14/while/lstm_cell_173/MatMulMatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
3lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp>lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
$lstm_14/while/lstm_cell_173/MatMul_1MatMullstm_14_while_placeholder_2;lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_14/while/lstm_cell_173/addAddV2,lstm_14/while/lstm_cell_173/MatMul:product:0.lstm_14/while/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
2lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp=lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
#lstm_14/while/lstm_cell_173/BiasAddBiasAdd#lstm_14/while/lstm_cell_173/add:z:0:lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(m
+lstm_14/while/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_14/while/lstm_cell_173/splitSplit4lstm_14/while/lstm_cell_173/split/split_dim:output:0,lstm_14/while/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
#lstm_14/while/lstm_cell_173/SigmoidSigmoid*lstm_14/while/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
?
%lstm_14/while/lstm_cell_173/Sigmoid_1Sigmoid*lstm_14/while/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_14/while/lstm_cell_173/mulMul)lstm_14/while/lstm_cell_173/Sigmoid_1:y:0lstm_14_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
 lstm_14/while/lstm_cell_173/ReluRelu*lstm_14/while/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
!lstm_14/while/lstm_cell_173/mul_1Mul'lstm_14/while/lstm_cell_173/Sigmoid:y:0.lstm_14/while/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
!lstm_14/while/lstm_cell_173/add_1AddV2#lstm_14/while/lstm_cell_173/mul:z:0%lstm_14/while/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
%lstm_14/while/lstm_cell_173/Sigmoid_2Sigmoid*lstm_14/while/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
?
"lstm_14/while/lstm_cell_173/Relu_1Relu%lstm_14/while/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
!lstm_14/while/lstm_cell_173/mul_2Mul)lstm_14/while/lstm_cell_173/Sigmoid_2:y:00lstm_14/while/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_14_while_placeholder_1lstm_14_while_placeholder%lstm_14/while/lstm_cell_173/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_14/while/addAddV2lstm_14_while_placeholderlstm_14/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_14/while/add_1AddV2(lstm_14_while_lstm_14_while_loop_counterlstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_14/while/IdentityIdentitylstm_14/while/add_1:z:0^lstm_14/while/NoOp*
T0*
_output_shapes
: ?
lstm_14/while/Identity_1Identity.lstm_14_while_lstm_14_while_maximum_iterations^lstm_14/while/NoOp*
T0*
_output_shapes
: q
lstm_14/while/Identity_2Identitylstm_14/while/add:z:0^lstm_14/while/NoOp*
T0*
_output_shapes
: ?
lstm_14/while/Identity_3IdentityBlstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_14/while/NoOp*
T0*
_output_shapes
: ?
lstm_14/while/Identity_4Identity%lstm_14/while/lstm_cell_173/mul_2:z:0^lstm_14/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_14/while/Identity_5Identity%lstm_14/while/lstm_cell_173/add_1:z:0^lstm_14/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_14/while/NoOpNoOp3^lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp2^lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp4^lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_14_while_identitylstm_14/while/Identity:output:0"=
lstm_14_while_identity_1!lstm_14/while/Identity_1:output:0"=
lstm_14_while_identity_2!lstm_14/while/Identity_2:output:0"=
lstm_14_while_identity_3!lstm_14/while/Identity_3:output:0"=
lstm_14_while_identity_4!lstm_14/while/Identity_4:output:0"=
lstm_14_while_identity_5!lstm_14/while/Identity_5:output:0"P
%lstm_14_while_lstm_14_strided_slice_1'lstm_14_while_lstm_14_strided_slice_1_0"|
;lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource=lstm_14_while_lstm_cell_173_biasadd_readvariableop_resource_0"~
<lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource>lstm_14_while_lstm_cell_173_matmul_1_readvariableop_resource_0"z
:lstm_14_while_lstm_cell_173_matmul_readvariableop_resource<lstm_14_while_lstm_cell_173_matmul_readvariableop_resource_0"?
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensorclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2h
2lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp2lstm_14/while/lstm_cell_173/BiasAdd/ReadVariableOp2f
1lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp1lstm_14/while/lstm_cell_173/MatMul/ReadVariableOp2j
3lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp3lstm_14/while/lstm_cell_173/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_1048784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1048784___redundant_placeholder05
1while_while_cond_1048784___redundant_placeholder15
1while_while_cond_1048784___redundant_placeholder25
1while_while_cond_1048784___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?

?
%__inference_signature_wrapper_1049084
lstm_12_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_1046824o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_12_input
?
?
while_cond_1048238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1048238___redundant_placeholder05
1while_while_cond_1048238___redundant_placeholder15
1while_while_cond_1048238___redundant_placeholder25
1while_while_cond_1048238___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_14_layer_call_fn_1051268

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_14_layer_call_and_return_conditional_losses_1048539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
'sequential_4_lstm_13_while_cond_1046594F
Bsequential_4_lstm_13_while_sequential_4_lstm_13_while_loop_counterL
Hsequential_4_lstm_13_while_sequential_4_lstm_13_while_maximum_iterations*
&sequential_4_lstm_13_while_placeholder,
(sequential_4_lstm_13_while_placeholder_1,
(sequential_4_lstm_13_while_placeholder_2,
(sequential_4_lstm_13_while_placeholder_3H
Dsequential_4_lstm_13_while_less_sequential_4_lstm_13_strided_slice_1_
[sequential_4_lstm_13_while_sequential_4_lstm_13_while_cond_1046594___redundant_placeholder0_
[sequential_4_lstm_13_while_sequential_4_lstm_13_while_cond_1046594___redundant_placeholder1_
[sequential_4_lstm_13_while_sequential_4_lstm_13_while_cond_1046594___redundant_placeholder2_
[sequential_4_lstm_13_while_sequential_4_lstm_13_while_cond_1046594___redundant_placeholder3'
#sequential_4_lstm_13_while_identity
?
sequential_4/lstm_13/while/LessLess&sequential_4_lstm_13_while_placeholderDsequential_4_lstm_13_while_less_sequential_4_lstm_13_strided_slice_1*
T0*
_output_shapes
: u
#sequential_4/lstm_13/while/IdentityIdentity#sequential_4/lstm_13/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_4_lstm_13_while_identity,sequential_4/lstm_13/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_1051470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_173_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_173_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_173_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_173_matmul_readvariableop_resource:2(F
4while_lstm_cell_173_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_173_biasadd_readvariableop_resource:(??*while/lstm_cell_173/BiasAdd/ReadVariableOp?)while/lstm_cell_173/MatMul/ReadVariableOp?+while/lstm_cell_173/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_173/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_173_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_173/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_173_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_173/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_173/addAddV2$while/lstm_cell_173/MatMul:product:0&while/lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_173_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_173/BiasAddBiasAddwhile/lstm_cell_173/add:z:02while/lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_173/splitSplit,while/lstm_cell_173/split/split_dim:output:0$while/lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_173/SigmoidSigmoid"while/lstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_1Sigmoid"while/lstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mulMul!while/lstm_cell_173/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_173/ReluRelu"while/lstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_1Mulwhile/lstm_cell_173/Sigmoid:y:0&while/lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/add_1AddV2while/lstm_cell_173/mul:z:0while/lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_173/Sigmoid_2Sigmoid"while/lstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_173/Relu_1Reluwhile/lstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_173/mul_2Mul!while/lstm_cell_173/Sigmoid_2:y:0(while/lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_173/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_173/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_173/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_173/BiasAdd/ReadVariableOp*^while/lstm_cell_173/MatMul/ReadVariableOp,^while/lstm_cell_173/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_173_biasadd_readvariableop_resource5while_lstm_cell_173_biasadd_readvariableop_resource_0"n
4while_lstm_cell_173_matmul_1_readvariableop_resource6while_lstm_cell_173_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_173_matmul_readvariableop_resource4while_lstm_cell_173_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_173/BiasAdd/ReadVariableOp*while/lstm_cell_173/BiasAdd/ReadVariableOp2V
)while/lstm_cell_173/MatMul/ReadVariableOp)while/lstm_cell_173/MatMul/ReadVariableOp2Z
+while/lstm_cell_173/MatMul_1/ReadVariableOp+while/lstm_cell_173/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_1050996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1050996___redundant_placeholder05
1while_while_cond_1050996___redundant_placeholder15
1while_while_cond_1050996___redundant_placeholder25
1while_while_cond_1050996___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_12_layer_call_fn_1050003
inputs_0
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1046974|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051697

inputs>
,lstm_cell_173_matmul_readvariableop_resource:2(@
.lstm_cell_173_matmul_1_readvariableop_resource:
(;
-lstm_cell_173_biasadd_readvariableop_resource:(
identity??$lstm_cell_173/BiasAdd/ReadVariableOp?#lstm_cell_173/MatMul/ReadVariableOp?%lstm_cell_173/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_173/MatMul/ReadVariableOpReadVariableOp,lstm_cell_173_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_173/MatMulMatMulstrided_slice_2:output:0+lstm_cell_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_173/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_173_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_173/MatMul_1MatMulzeros:output:0-lstm_cell_173/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_173/addAddV2lstm_cell_173/MatMul:product:0 lstm_cell_173/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_173/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_173_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_173/BiasAddBiasAddlstm_cell_173/add:z:0,lstm_cell_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_173/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_173/splitSplit&lstm_cell_173/split/split_dim:output:0lstm_cell_173/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_173/SigmoidSigmoidlstm_cell_173/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_1Sigmoidlstm_cell_173/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_173/mulMullstm_cell_173/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_173/ReluRelulstm_cell_173/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_1Mullstm_cell_173/Sigmoid:y:0 lstm_cell_173/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_173/add_1AddV2lstm_cell_173/mul:z:0lstm_cell_173/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_173/Sigmoid_2Sigmoidlstm_cell_173/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_173/Relu_1Relulstm_cell_173/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_173/mul_2Mullstm_cell_173/Sigmoid_2:y:0"lstm_cell_173/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_173_matmul_readvariableop_resource.lstm_cell_173_matmul_1_readvariableop_resource-lstm_cell_173_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1051613*
condR
while_cond_1051612*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
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
:?????????
?
NoOpNoOp%^lstm_cell_173/BiasAdd/ReadVariableOp$^lstm_cell_173/MatMul/ReadVariableOp&^lstm_cell_173/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_173/BiasAdd/ReadVariableOp$lstm_cell_173/BiasAdd/ReadVariableOp2J
#lstm_cell_173/MatMul/ReadVariableOp#lstm_cell_173/MatMul/ReadVariableOp2N
%lstm_cell_173/MatMul_1/ReadVariableOp%lstm_cell_173/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_1047605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_173_1047629_0:2(/
while_lstm_cell_173_1047631_0:
(+
while_lstm_cell_173_1047633_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_173_1047629:2(-
while_lstm_cell_173_1047631:
()
while_lstm_cell_173_1047633:(??+while/lstm_cell_173/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_173/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_173_1047629_0while_lstm_cell_173_1047631_0while_lstm_cell_173_1047633_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1047591?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_173/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_173/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_173/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_173/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_173_1047629while_lstm_cell_173_1047629_0"<
while_lstm_cell_173_1047631while_lstm_cell_173_1047631_0"<
while_lstm_cell_173_1047633while_lstm_cell_173_1047633_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_173/StatefulPartitionedCall+while/lstm_cell_173/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1047241

inputs

states
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?

?
lstm_13_while_cond_1049762,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3.
*lstm_13_while_less_lstm_13_strided_slice_1E
Alstm_13_while_lstm_13_while_cond_1049762___redundant_placeholder0E
Alstm_13_while_lstm_13_while_cond_1049762___redundant_placeholder1E
Alstm_13_while_lstm_13_while_cond_1049762___redundant_placeholder2E
Alstm_13_while_lstm_13_while_cond_1049762___redundant_placeholder3
lstm_13_while_identity
?
lstm_13/while/LessLesslstm_13_while_placeholder*lstm_13_while_less_lstm_13_strided_slice_1*
T0*
_output_shapes
: [
lstm_13/while/IdentityIdentitylstm_13/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_13_while_identitylstm_13/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
/__inference_lstm_cell_172_layer_call_fn_1051991

inputs
states_0
states_1
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1047387o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?
?
while_cond_1050237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1050237___redundant_placeholder05
1while_while_cond_1050237___redundant_placeholder15
1while_while_cond_1050237___redundant_placeholder25
1while_while_cond_1050237___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_1050094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1050094___redundant_placeholder05
1while_while_cond_1050094___redundant_placeholder15
1while_while_cond_1050094___redundant_placeholder25
1while_while_cond_1050094___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_1050523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1050523___redundant_placeholder05
1while_while_cond_1050523___redundant_placeholder15
1while_while_cond_1050523___redundant_placeholder25
1while_while_cond_1050523___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?K
?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050179
inputs_0?
,lstm_cell_171_matmul_readvariableop_resource:	?A
.lstm_cell_171_matmul_1_readvariableop_resource:	d?<
-lstm_cell_171_biasadd_readvariableop_resource:	?
identity??$lstm_cell_171/BiasAdd/ReadVariableOp?#lstm_cell_171/MatMul/ReadVariableOp?%lstm_cell_171/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_171/MatMul/ReadVariableOpReadVariableOp,lstm_cell_171_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_171/MatMulMatMulstrided_slice_2:output:0+lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_171_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_171/MatMul_1MatMulzeros:output:0-lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_171/addAddV2lstm_cell_171/MatMul:product:0 lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_171_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_171/BiasAddBiasAddlstm_cell_171/add:z:0,lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_171/splitSplit&lstm_cell_171/split/split_dim:output:0lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_171/SigmoidSigmoidlstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_1Sigmoidlstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_171/mulMullstm_cell_171/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_171/ReluRelulstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_1Mullstm_cell_171/Sigmoid:y:0 lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_171/add_1AddV2lstm_cell_171/mul:z:0lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_171/Sigmoid_2Sigmoidlstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_171/Relu_1Relulstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_171/mul_2Mullstm_cell_171/Sigmoid_2:y:0"lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_171_matmul_readvariableop_resource.lstm_cell_171_matmul_1_readvariableop_resource-lstm_cell_171_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1050095*
condR
while_cond_1050094*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d?
NoOpNoOp%^lstm_cell_171/BiasAdd/ReadVariableOp$^lstm_cell_171/MatMul/ReadVariableOp&^lstm_cell_171/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_171/BiasAdd/ReadVariableOp$lstm_cell_171/BiasAdd/ReadVariableOp2J
#lstm_cell_171/MatMul/ReadVariableOp#lstm_cell_171/MatMul/ReadVariableOp2N
%lstm_cell_171/MatMul_1/ReadVariableOp%lstm_cell_171/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
'sequential_4_lstm_14_while_cond_1046733F
Bsequential_4_lstm_14_while_sequential_4_lstm_14_while_loop_counterL
Hsequential_4_lstm_14_while_sequential_4_lstm_14_while_maximum_iterations*
&sequential_4_lstm_14_while_placeholder,
(sequential_4_lstm_14_while_placeholder_1,
(sequential_4_lstm_14_while_placeholder_2,
(sequential_4_lstm_14_while_placeholder_3H
Dsequential_4_lstm_14_while_less_sequential_4_lstm_14_strided_slice_1_
[sequential_4_lstm_14_while_sequential_4_lstm_14_while_cond_1046733___redundant_placeholder0_
[sequential_4_lstm_14_while_sequential_4_lstm_14_while_cond_1046733___redundant_placeholder1_
[sequential_4_lstm_14_while_sequential_4_lstm_14_while_cond_1046733___redundant_placeholder2_
[sequential_4_lstm_14_while_sequential_4_lstm_14_while_cond_1046733___redundant_placeholder3'
#sequential_4_lstm_14_while_identity
?
sequential_4/lstm_14/while/LessLess&sequential_4_lstm_14_while_placeholderDsequential_4_lstm_14_while_less_sequential_4_lstm_14_strided_slice_1*
T0*
_output_shapes
: u
#sequential_4/lstm_14/while/IdentityIdentity#sequential_4/lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_4_lstm_14_while_identity,sequential_4/lstm_14/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_12_layer_call_fn_1050025

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_1048023s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1048454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1048454___redundant_placeholder05
1while_while_cond_1048454___redundant_placeholder15
1while_while_cond_1048454___redundant_placeholder25
1while_while_cond_1048454___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?

?
.__inference_sequential_4_layer_call_fn_1048989
lstm_12_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1048937o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_12_input
?B
?

lstm_13_while_body_1049336,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3+
'lstm_13_while_lstm_13_strided_slice_1_0g
clstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_13_while_lstm_cell_172_matmul_readvariableop_resource_0:	d?Q
>lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource_0:	2?L
=lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource_0:	?
lstm_13_while_identity
lstm_13_while_identity_1
lstm_13_while_identity_2
lstm_13_while_identity_3
lstm_13_while_identity_4
lstm_13_while_identity_5)
%lstm_13_while_lstm_13_strided_slice_1e
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorM
:lstm_13_while_lstm_cell_172_matmul_readvariableop_resource:	d?O
<lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource:	2?J
;lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource:	???2lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp?1lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp?3lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp?
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
1lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0lstm_13_while_placeholderHlstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
1lstm_13/while/lstm_cell_172/MatMul/ReadVariableOpReadVariableOp<lstm_13_while_lstm_cell_172_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
"lstm_13/while/lstm_cell_172/MatMulMatMul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOpReadVariableOp>lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
$lstm_13/while/lstm_cell_172/MatMul_1MatMullstm_13_while_placeholder_2;lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_13/while/lstm_cell_172/addAddV2,lstm_13/while/lstm_cell_172/MatMul:product:0.lstm_13/while/lstm_cell_172/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
2lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOpReadVariableOp=lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#lstm_13/while/lstm_cell_172/BiasAddBiasAdd#lstm_13/while/lstm_cell_172/add:z:0:lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
+lstm_13/while/lstm_cell_172/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_13/while/lstm_cell_172/splitSplit4lstm_13/while/lstm_cell_172/split/split_dim:output:0,lstm_13/while/lstm_cell_172/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
#lstm_13/while/lstm_cell_172/SigmoidSigmoid*lstm_13/while/lstm_cell_172/split:output:0*
T0*'
_output_shapes
:?????????2?
%lstm_13/while/lstm_cell_172/Sigmoid_1Sigmoid*lstm_13/while/lstm_cell_172/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_13/while/lstm_cell_172/mulMul)lstm_13/while/lstm_cell_172/Sigmoid_1:y:0lstm_13_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
 lstm_13/while/lstm_cell_172/ReluRelu*lstm_13/while/lstm_cell_172/split:output:2*
T0*'
_output_shapes
:?????????2?
!lstm_13/while/lstm_cell_172/mul_1Mul'lstm_13/while/lstm_cell_172/Sigmoid:y:0.lstm_13/while/lstm_cell_172/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
!lstm_13/while/lstm_cell_172/add_1AddV2#lstm_13/while/lstm_cell_172/mul:z:0%lstm_13/while/lstm_cell_172/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
%lstm_13/while/lstm_cell_172/Sigmoid_2Sigmoid*lstm_13/while/lstm_cell_172/split:output:3*
T0*'
_output_shapes
:?????????2?
"lstm_13/while/lstm_cell_172/Relu_1Relu%lstm_13/while/lstm_cell_172/add_1:z:0*
T0*'
_output_shapes
:?????????2?
!lstm_13/while/lstm_cell_172/mul_2Mul)lstm_13/while/lstm_cell_172/Sigmoid_2:y:00lstm_13/while/lstm_cell_172/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_13_while_placeholder_1lstm_13_while_placeholder%lstm_13/while/lstm_cell_172/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_13/while/addAddV2lstm_13_while_placeholderlstm_13/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_13/while/add_1AddV2(lstm_13_while_lstm_13_while_loop_counterlstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_13/while/IdentityIdentitylstm_13/while/add_1:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: ?
lstm_13/while/Identity_1Identity.lstm_13_while_lstm_13_while_maximum_iterations^lstm_13/while/NoOp*
T0*
_output_shapes
: q
lstm_13/while/Identity_2Identitylstm_13/while/add:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: ?
lstm_13/while/Identity_3IdentityBlstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_13/while/NoOp*
T0*
_output_shapes
: ?
lstm_13/while/Identity_4Identity%lstm_13/while/lstm_cell_172/mul_2:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_13/while/Identity_5Identity%lstm_13/while/lstm_cell_172/add_1:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_13/while/NoOpNoOp3^lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp2^lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp4^lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_13_while_identitylstm_13/while/Identity:output:0"=
lstm_13_while_identity_1!lstm_13/while/Identity_1:output:0"=
lstm_13_while_identity_2!lstm_13/while/Identity_2:output:0"=
lstm_13_while_identity_3!lstm_13/while/Identity_3:output:0"=
lstm_13_while_identity_4!lstm_13/while/Identity_4:output:0"=
lstm_13_while_identity_5!lstm_13/while/Identity_5:output:0"P
%lstm_13_while_lstm_13_strided_slice_1'lstm_13_while_lstm_13_strided_slice_1_0"|
;lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource=lstm_13_while_lstm_cell_172_biasadd_readvariableop_resource_0"~
<lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource>lstm_13_while_lstm_cell_172_matmul_1_readvariableop_resource_0"z
:lstm_13_while_lstm_cell_172_matmul_readvariableop_resource<lstm_13_while_lstm_cell_172_matmul_readvariableop_resource_0"?
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2h
2lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp2lstm_13/while/lstm_cell_172/BiasAdd/ReadVariableOp2f
1lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp1lstm_13/while/lstm_cell_172/MatMul/ReadVariableOp2j
3lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp3lstm_13/while/lstm_cell_172/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_1048785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_171_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_171_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_171_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_171_matmul_readvariableop_resource:	?G
4while_lstm_cell_171_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_171_biasadd_readvariableop_resource:	???*while/lstm_cell_171/BiasAdd/ReadVariableOp?)while/lstm_cell_171/MatMul/ReadVariableOp?+while/lstm_cell_171/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_171/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_171_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_171/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_171/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_171/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_171_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_171/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_171/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_171/addAddV2$while/lstm_cell_171/MatMul:product:0&while/lstm_cell_171/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_171/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_171_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_171/BiasAddBiasAddwhile/lstm_cell_171/add:z:02while/lstm_cell_171/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_171/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_171/splitSplit,while/lstm_cell_171/split/split_dim:output:0$while/lstm_cell_171/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_171/SigmoidSigmoid"while/lstm_cell_171/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_1Sigmoid"while/lstm_cell_171/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mulMul!while/lstm_cell_171/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_171/ReluRelu"while/lstm_cell_171/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_1Mulwhile/lstm_cell_171/Sigmoid:y:0&while/lstm_cell_171/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/add_1AddV2while/lstm_cell_171/mul:z:0while/lstm_cell_171/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_171/Sigmoid_2Sigmoid"while/lstm_cell_171/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_171/Relu_1Reluwhile/lstm_cell_171/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_171/mul_2Mul!while/lstm_cell_171/Sigmoid_2:y:0(while/lstm_cell_171/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_171/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_171/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_171/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_171/BiasAdd/ReadVariableOp*^while/lstm_cell_171/MatMul/ReadVariableOp,^while/lstm_cell_171/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_171_biasadd_readvariableop_resource5while_lstm_cell_171_biasadd_readvariableop_resource_0"n
4while_lstm_cell_171_matmul_1_readvariableop_resource6while_lstm_cell_171_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_171_matmul_readvariableop_resource4while_lstm_cell_171_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_171/BiasAdd/ReadVariableOp*while/lstm_cell_171/BiasAdd/ReadVariableOp2V
)while/lstm_cell_171/MatMul/ReadVariableOp)while/lstm_cell_171/MatMul/ReadVariableOp2Z
+while/lstm_cell_171/MatMul_1/ReadVariableOp+while/lstm_cell_171/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
lstm_12_input:
serving_default_lstm_12_input:0?????????;
dense_40
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
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
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m?4m?5m?!v?"v?-v?.v?/v?0v?1v?2v?3v?4v?5v?"
	optimizer
-
?serving_default"
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
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
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
?__call__
+?&call_and_return_all_conditional_losses"
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
?

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
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
?__call__
+?&call_and_return_all_conditional_losses"
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
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
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
?__call__
+?&call_and_return_all_conditional_losses"
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
?

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :
2dense_4/kernel
:2dense_4/bias
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
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	?2lstm_12/lstm_cell_12/kernel
8:6	d?2%lstm_12/lstm_cell_12/recurrent_kernel
(:&?2lstm_12/lstm_cell_12/bias
.:,	d?2lstm_13/lstm_cell_13/kernel
8:6	2?2%lstm_13/lstm_cell_13/recurrent_kernel
(:&?2lstm_13/lstm_cell_13/bias
-:+2(2lstm_14/lstm_cell_14/kernel
7:5
(2%lstm_14/lstm_cell_14/recurrent_kernel
':%(2lstm_14/lstm_cell_14/bias
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
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
%:#
2Adam/dense_4/kernel/m
:2Adam/dense_4/bias/m
3:1	?2"Adam/lstm_12/lstm_cell_12/kernel/m
=:;	d?2,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m
-:+?2 Adam/lstm_12/lstm_cell_12/bias/m
3:1	d?2"Adam/lstm_13/lstm_cell_13/kernel/m
=:;	2?2,Adam/lstm_13/lstm_cell_13/recurrent_kernel/m
-:+?2 Adam/lstm_13/lstm_cell_13/bias/m
2:02(2"Adam/lstm_14/lstm_cell_14/kernel/m
<::
(2,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m
,:*(2 Adam/lstm_14/lstm_cell_14/bias/m
%:#
2Adam/dense_4/kernel/v
:2Adam/dense_4/bias/v
3:1	?2"Adam/lstm_12/lstm_cell_12/kernel/v
=:;	d?2,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v
-:+?2 Adam/lstm_12/lstm_cell_12/bias/v
3:1	d?2"Adam/lstm_13/lstm_cell_13/kernel/v
=:;	2?2,Adam/lstm_13/lstm_cell_13/recurrent_kernel/v
-:+?2 Adam/lstm_13/lstm_cell_13/bias/v
2:02(2"Adam/lstm_14/lstm_cell_14/kernel/v
<::
(2,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v
,:*(2 Adam/lstm_14/lstm_cell_14/bias/v
?2?
.__inference_sequential_4_layer_call_fn_1048373
.__inference_sequential_4_layer_call_fn_1049111
.__inference_sequential_4_layer_call_fn_1049138
.__inference_sequential_4_layer_call_fn_1048989?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1049565
I__inference_sequential_4_layer_call_and_return_conditional_losses_1049992
I__inference_sequential_4_layer_call_and_return_conditional_losses_1049019
I__inference_sequential_4_layer_call_and_return_conditional_losses_1049049?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_1046824lstm_12_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_lstm_12_layer_call_fn_1050003
)__inference_lstm_12_layer_call_fn_1050014
)__inference_lstm_12_layer_call_fn_1050025
)__inference_lstm_12_layer_call_fn_1050036?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050179
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050322
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050465
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050608?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_lstm_13_layer_call_fn_1050619
)__inference_lstm_13_layer_call_fn_1050630
)__inference_lstm_13_layer_call_fn_1050641
)__inference_lstm_13_layer_call_fn_1050652?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1050795
D__inference_lstm_13_layer_call_and_return_conditional_losses_1050938
D__inference_lstm_13_layer_call_and_return_conditional_losses_1051081
D__inference_lstm_13_layer_call_and_return_conditional_losses_1051224?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_lstm_14_layer_call_fn_1051235
)__inference_lstm_14_layer_call_fn_1051246
)__inference_lstm_14_layer_call_fn_1051257
)__inference_lstm_14_layer_call_fn_1051268?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051411
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051554
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051697
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051840?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_4_layer_call_fn_1051849?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_4_layer_call_and_return_conditional_losses_1051859?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_1049084lstm_12_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_lstm_cell_171_layer_call_fn_1051876
/__inference_lstm_cell_171_layer_call_fn_1051893?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1051925
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1051957?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_lstm_cell_172_layer_call_fn_1051974
/__inference_lstm_cell_172_layer_call_fn_1051991?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1052023
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1052055?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_lstm_cell_173_layer_call_fn_1052072
/__inference_lstm_cell_173_layer_call_fn_1052089?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1052121
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1052153?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
"__inference__wrapped_model_1046824|-./012345!":?7
0?-
+?(
lstm_12_input?????????
? "1?.
,
dense_4!?
dense_4??????????
D__inference_dense_4_layer_call_and_return_conditional_losses_1051859\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? |
)__inference_dense_4_layer_call_fn_1051849O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050179?-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0??????????????????d
? ?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050322?-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0??????????????????d
? ?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050465q-./??<
5?2
$?!
inputs?????????

 
p 

 
? ")?&
?
0?????????d
? ?
D__inference_lstm_12_layer_call_and_return_conditional_losses_1050608q-./??<
5?2
$?!
inputs?????????

 
p

 
? ")?&
?
0?????????d
? ?
)__inference_lstm_12_layer_call_fn_1050003}-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"??????????????????d?
)__inference_lstm_12_layer_call_fn_1050014}-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"??????????????????d?
)__inference_lstm_12_layer_call_fn_1050025d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_12_layer_call_fn_1050036d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1050795?012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p 

 
? "2?/
(?%
0??????????????????2
? ?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1050938?012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p

 
? "2?/
(?%
0??????????????????2
? ?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1051081q012??<
5?2
$?!
inputs?????????d

 
p 

 
? ")?&
?
0?????????2
? ?
D__inference_lstm_13_layer_call_and_return_conditional_losses_1051224q012??<
5?2
$?!
inputs?????????d

 
p

 
? ")?&
?
0?????????2
? ?
)__inference_lstm_13_layer_call_fn_1050619}012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p 

 
? "%?"??????????????????2?
)__inference_lstm_13_layer_call_fn_1050630}012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p

 
? "%?"??????????????????2?
)__inference_lstm_13_layer_call_fn_1050641d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_13_layer_call_fn_1050652d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051411}345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p 

 
? "%?"
?
0?????????

? ?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051554}345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p

 
? "%?"
?
0?????????

? ?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051697m345??<
5?2
$?!
inputs?????????2

 
p 

 
? "%?"
?
0?????????

? ?
D__inference_lstm_14_layer_call_and_return_conditional_losses_1051840m345??<
5?2
$?!
inputs?????????2

 
p

 
? "%?"
?
0?????????

? ?
)__inference_lstm_14_layer_call_fn_1051235p345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p 

 
? "??????????
?
)__inference_lstm_14_layer_call_fn_1051246p345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p

 
? "??????????
?
)__inference_lstm_14_layer_call_fn_1051257`345??<
5?2
$?!
inputs?????????2

 
p 

 
? "??????????
?
)__inference_lstm_14_layer_call_fn_1051268`345??<
5?2
$?!
inputs?????????2

 
p

 
? "??????????
?
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1051925?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p 
? "s?p
i?f
?
0/0?????????d
E?B
?
0/1/0?????????d
?
0/1/1?????????d
? ?
J__inference_lstm_cell_171_layer_call_and_return_conditional_losses_1051957?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p
? "s?p
i?f
?
0/0?????????d
E?B
?
0/1/0?????????d
?
0/1/1?????????d
? ?
/__inference_lstm_cell_171_layer_call_fn_1051876?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p 
? "c?`
?
0?????????d
A?>
?
1/0?????????d
?
1/1?????????d?
/__inference_lstm_cell_171_layer_call_fn_1051893?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p
? "c?`
?
0?????????d
A?>
?
1/0?????????d
?
1/1?????????d?
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1052023?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
J__inference_lstm_cell_172_layer_call_and_return_conditional_losses_1052055?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
/__inference_lstm_cell_172_layer_call_fn_1051974?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
/__inference_lstm_cell_172_layer_call_fn_1051991?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1052121?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p 
? "s?p
i?f
?
0/0?????????

E?B
?
0/1/0?????????

?
0/1/1?????????

? ?
J__inference_lstm_cell_173_layer_call_and_return_conditional_losses_1052153?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p
? "s?p
i?f
?
0/0?????????

E?B
?
0/1/0?????????

?
0/1/1?????????

? ?
/__inference_lstm_cell_173_layer_call_fn_1052072?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p 
? "c?`
?
0?????????

A?>
?
1/0?????????

?
1/1?????????
?
/__inference_lstm_cell_173_layer_call_fn_1052089?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p
? "c?`
?
0?????????

A?>
?
1/0?????????

?
1/1?????????
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1049019x-./012345!"B??
8?5
+?(
lstm_12_input?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1049049x-./012345!"B??
8?5
+?(
lstm_12_input?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1049565q-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1049992q-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_4_layer_call_fn_1048373k-./012345!"B??
8?5
+?(
lstm_12_input?????????
p 

 
? "???????????
.__inference_sequential_4_layer_call_fn_1048989k-./012345!"B??
8?5
+?(
lstm_12_input?????????
p

 
? "???????????
.__inference_sequential_4_layer_call_fn_1049111d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
.__inference_sequential_4_layer_call_fn_1049138d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1049084?-./012345!"K?H
? 
A?>
<
lstm_12_input+?(
lstm_12_input?????????"1?.
,
dense_4!?
dense_4?????????