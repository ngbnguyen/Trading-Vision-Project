??/
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
|
dense_190/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_190/kernel
u
$dense_190/kernel/Read/ReadVariableOpReadVariableOpdense_190/kernel*
_output_shapes

:
*
dtype0
t
dense_190/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_190/bias
m
"dense_190/bias/Read/ReadVariableOpReadVariableOpdense_190/bias*
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
lstm_570/lstm_cell_570/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_570/lstm_cell_570/kernel
?
1lstm_570/lstm_cell_570/kernel/Read/ReadVariableOpReadVariableOplstm_570/lstm_cell_570/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_570/lstm_cell_570/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_570/lstm_cell_570/recurrent_kernel
?
;lstm_570/lstm_cell_570/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_570/lstm_cell_570/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_570/lstm_cell_570/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_570/lstm_cell_570/bias
?
/lstm_570/lstm_cell_570/bias/Read/ReadVariableOpReadVariableOplstm_570/lstm_cell_570/bias*
_output_shapes	
:?*
dtype0
?
lstm_571/lstm_cell_571/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_571/lstm_cell_571/kernel
?
1lstm_571/lstm_cell_571/kernel/Read/ReadVariableOpReadVariableOplstm_571/lstm_cell_571/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_571/lstm_cell_571/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_571/lstm_cell_571/recurrent_kernel
?
;lstm_571/lstm_cell_571/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_571/lstm_cell_571/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_571/lstm_cell_571/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_571/lstm_cell_571/bias
?
/lstm_571/lstm_cell_571/bias/Read/ReadVariableOpReadVariableOplstm_571/lstm_cell_571/bias*
_output_shapes	
:?*
dtype0
?
lstm_572/lstm_cell_572/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_572/lstm_cell_572/kernel
?
1lstm_572/lstm_cell_572/kernel/Read/ReadVariableOpReadVariableOplstm_572/lstm_cell_572/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_572/lstm_cell_572/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_572/lstm_cell_572/recurrent_kernel
?
;lstm_572/lstm_cell_572/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_572/lstm_cell_572/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_572/lstm_cell_572/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_572/lstm_cell_572/bias
?
/lstm_572/lstm_cell_572/bias/Read/ReadVariableOpReadVariableOplstm_572/lstm_cell_572/bias*
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
Adam/dense_190/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_190/kernel/m
?
+Adam/dense_190/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_190/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_190/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_190/bias/m
{
)Adam/dense_190/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_190/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_570/lstm_cell_570/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_570/lstm_cell_570/kernel/m
?
8Adam/lstm_570/lstm_cell_570/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_570/lstm_cell_570/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_570/lstm_cell_570/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_570/lstm_cell_570/recurrent_kernel/m
?
BAdam/lstm_570/lstm_cell_570/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_570/lstm_cell_570/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_570/lstm_cell_570/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_570/lstm_cell_570/bias/m
?
6Adam/lstm_570/lstm_cell_570/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_570/lstm_cell_570/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_571/lstm_cell_571/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_571/lstm_cell_571/kernel/m
?
8Adam/lstm_571/lstm_cell_571/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_571/lstm_cell_571/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_571/lstm_cell_571/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_571/lstm_cell_571/recurrent_kernel/m
?
BAdam/lstm_571/lstm_cell_571/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_571/lstm_cell_571/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_571/lstm_cell_571/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_571/lstm_cell_571/bias/m
?
6Adam/lstm_571/lstm_cell_571/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_571/lstm_cell_571/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_572/lstm_cell_572/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_572/lstm_cell_572/kernel/m
?
8Adam/lstm_572/lstm_cell_572/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_572/lstm_cell_572/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_572/lstm_cell_572/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_572/lstm_cell_572/recurrent_kernel/m
?
BAdam/lstm_572/lstm_cell_572/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_572/lstm_cell_572/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_572/lstm_cell_572/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_572/lstm_cell_572/bias/m
?
6Adam/lstm_572/lstm_cell_572/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_572/lstm_cell_572/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_190/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_190/kernel/v
?
+Adam/dense_190/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_190/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_190/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_190/bias/v
{
)Adam/dense_190/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_190/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_570/lstm_cell_570/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_570/lstm_cell_570/kernel/v
?
8Adam/lstm_570/lstm_cell_570/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_570/lstm_cell_570/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_570/lstm_cell_570/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_570/lstm_cell_570/recurrent_kernel/v
?
BAdam/lstm_570/lstm_cell_570/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_570/lstm_cell_570/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_570/lstm_cell_570/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_570/lstm_cell_570/bias/v
?
6Adam/lstm_570/lstm_cell_570/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_570/lstm_cell_570/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_571/lstm_cell_571/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_571/lstm_cell_571/kernel/v
?
8Adam/lstm_571/lstm_cell_571/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_571/lstm_cell_571/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_571/lstm_cell_571/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_571/lstm_cell_571/recurrent_kernel/v
?
BAdam/lstm_571/lstm_cell_571/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_571/lstm_cell_571/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_571/lstm_cell_571/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_571/lstm_cell_571/bias/v
?
6Adam/lstm_571/lstm_cell_571/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_571/lstm_cell_571/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_572/lstm_cell_572/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_572/lstm_cell_572/kernel/v
?
8Adam/lstm_572/lstm_cell_572/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_572/lstm_cell_572/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_572/lstm_cell_572/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_572/lstm_cell_572/recurrent_kernel/v
?
BAdam/lstm_572/lstm_cell_572/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_572/lstm_cell_572/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_572/lstm_cell_572/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_572/lstm_cell_572/bias/v
?
6Adam/lstm_572/lstm_cell_572/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_572/lstm_cell_572/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?A
value?AB?A B?A
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
\Z
VARIABLE_VALUEdense_190/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_190/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
YW
VARIABLE_VALUElstm_570/lstm_cell_570/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_570/lstm_cell_570/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_570/lstm_cell_570/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_571/lstm_cell_571/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_571/lstm_cell_571/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_571/lstm_cell_571/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_572/lstm_cell_572/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_572/lstm_cell_572/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_572/lstm_cell_572/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/dense_190/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_190/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_570/lstm_cell_570/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_570/lstm_cell_570/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_570/lstm_cell_570/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_571/lstm_cell_571/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_571/lstm_cell_571/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_571/lstm_cell_571/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_572/lstm_cell_572/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_572/lstm_cell_572/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_572/lstm_cell_572/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_190/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_190/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_570/lstm_cell_570/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_570/lstm_cell_570/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_570/lstm_cell_570/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_571/lstm_cell_571/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_571/lstm_cell_571/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_571/lstm_cell_571/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_572/lstm_cell_572/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_572/lstm_cell_572/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_572/lstm_cell_572/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_570_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_570_inputlstm_570/lstm_cell_570/kernel'lstm_570/lstm_cell_570/recurrent_kernellstm_570/lstm_cell_570/biaslstm_571/lstm_cell_571/kernel'lstm_571/lstm_cell_571/recurrent_kernellstm_571/lstm_cell_571/biaslstm_572/lstm_cell_572/kernel'lstm_572/lstm_cell_572/recurrent_kernellstm_572/lstm_cell_572/biasdense_190/kerneldense_190/bias*
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
%__inference_signature_wrapper_3517414
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_190/kernel/Read/ReadVariableOp"dense_190/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_570/lstm_cell_570/kernel/Read/ReadVariableOp;lstm_570/lstm_cell_570/recurrent_kernel/Read/ReadVariableOp/lstm_570/lstm_cell_570/bias/Read/ReadVariableOp1lstm_571/lstm_cell_571/kernel/Read/ReadVariableOp;lstm_571/lstm_cell_571/recurrent_kernel/Read/ReadVariableOp/lstm_571/lstm_cell_571/bias/Read/ReadVariableOp1lstm_572/lstm_cell_572/kernel/Read/ReadVariableOp;lstm_572/lstm_cell_572/recurrent_kernel/Read/ReadVariableOp/lstm_572/lstm_cell_572/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_190/kernel/m/Read/ReadVariableOp)Adam/dense_190/bias/m/Read/ReadVariableOp8Adam/lstm_570/lstm_cell_570/kernel/m/Read/ReadVariableOpBAdam/lstm_570/lstm_cell_570/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_570/lstm_cell_570/bias/m/Read/ReadVariableOp8Adam/lstm_571/lstm_cell_571/kernel/m/Read/ReadVariableOpBAdam/lstm_571/lstm_cell_571/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_571/lstm_cell_571/bias/m/Read/ReadVariableOp8Adam/lstm_572/lstm_cell_572/kernel/m/Read/ReadVariableOpBAdam/lstm_572/lstm_cell_572/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_572/lstm_cell_572/bias/m/Read/ReadVariableOp+Adam/dense_190/kernel/v/Read/ReadVariableOp)Adam/dense_190/bias/v/Read/ReadVariableOp8Adam/lstm_570/lstm_cell_570/kernel/v/Read/ReadVariableOpBAdam/lstm_570/lstm_cell_570/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_570/lstm_cell_570/bias/v/Read/ReadVariableOp8Adam/lstm_571/lstm_cell_571/kernel/v/Read/ReadVariableOpBAdam/lstm_571/lstm_cell_571/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_571/lstm_cell_571/bias/v/Read/ReadVariableOp8Adam/lstm_572/lstm_cell_572/kernel/v/Read/ReadVariableOpBAdam/lstm_572/lstm_cell_572/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_572/lstm_cell_572/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3520626
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_190/kerneldense_190/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_570/lstm_cell_570/kernel'lstm_570/lstm_cell_570/recurrent_kernellstm_570/lstm_cell_570/biaslstm_571/lstm_cell_571/kernel'lstm_571/lstm_cell_571/recurrent_kernellstm_571/lstm_cell_571/biaslstm_572/lstm_cell_572/kernel'lstm_572/lstm_cell_572/recurrent_kernellstm_572/lstm_cell_572/biastotalcountAdam/dense_190/kernel/mAdam/dense_190/bias/m$Adam/lstm_570/lstm_cell_570/kernel/m.Adam/lstm_570/lstm_cell_570/recurrent_kernel/m"Adam/lstm_570/lstm_cell_570/bias/m$Adam/lstm_571/lstm_cell_571/kernel/m.Adam/lstm_571/lstm_cell_571/recurrent_kernel/m"Adam/lstm_571/lstm_cell_571/bias/m$Adam/lstm_572/lstm_cell_572/kernel/m.Adam/lstm_572/lstm_cell_572/recurrent_kernel/m"Adam/lstm_572/lstm_cell_572/bias/mAdam/dense_190/kernel/vAdam/dense_190/bias/v$Adam/lstm_570/lstm_cell_570/kernel/v.Adam/lstm_570/lstm_cell_570/recurrent_kernel/v"Adam/lstm_570/lstm_cell_570/bias/v$Adam/lstm_571/lstm_cell_571/kernel/v.Adam/lstm_571/lstm_cell_571/recurrent_kernel/v"Adam/lstm_571/lstm_cell_571/bias/v$Adam/lstm_572/lstm_cell_572/kernel/v.Adam/lstm_572/lstm_cell_572/recurrent_kernel/v"Adam/lstm_572/lstm_cell_572/bias/v*4
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
#__inference__traced_restore_3520756??+
?J
?
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519411

inputs?
,lstm_cell_580_matmul_readvariableop_resource:	d?A
.lstm_cell_580_matmul_1_readvariableop_resource:	2?<
-lstm_cell_580_biasadd_readvariableop_resource:	?
identity??$lstm_cell_580/BiasAdd/ReadVariableOp?#lstm_cell_580/MatMul/ReadVariableOp?%lstm_cell_580/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_580/MatMul/ReadVariableOpReadVariableOp,lstm_cell_580_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_580/MatMulMatMulstrided_slice_2:output:0+lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_580_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_580/MatMul_1MatMulzeros:output:0-lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_580/addAddV2lstm_cell_580/MatMul:product:0 lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_580_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_580/BiasAddBiasAddlstm_cell_580/add:z:0,lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_580/splitSplit&lstm_cell_580/split/split_dim:output:0lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_580/SigmoidSigmoidlstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_1Sigmoidlstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_580/mulMullstm_cell_580/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_580/ReluRelulstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_1Mullstm_cell_580/Sigmoid:y:0 lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_580/add_1AddV2lstm_cell_580/mul:z:0lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_2Sigmoidlstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_580/Relu_1Relulstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_2Mullstm_cell_580/Sigmoid_2:y:0"lstm_cell_580/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_580_matmul_readvariableop_resource.lstm_cell_580_matmul_1_readvariableop_resource-lstm_cell_580_biasadd_readvariableop_resource*
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
while_body_3519327*
condR
while_cond_3519326*K
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
NoOpNoOp%^lstm_cell_580/BiasAdd/ReadVariableOp$^lstm_cell_580/MatMul/ReadVariableOp&^lstm_cell_580/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_580/BiasAdd/ReadVariableOp$lstm_cell_580/BiasAdd/ReadVariableOp2J
#lstm_cell_580/MatMul/ReadVariableOp#lstm_cell_580/MatMul/ReadVariableOp2N
%lstm_cell_580/MatMul_1/ReadVariableOp%lstm_cell_580/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3520385

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
?#
?
while_body_3515426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_579_3515450_0:	?0
while_lstm_cell_579_3515452_0:	d?,
while_lstm_cell_579_3515454_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_579_3515450:	?.
while_lstm_cell_579_3515452:	d?*
while_lstm_cell_579_3515454:	???+while/lstm_cell_579/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_579/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_579_3515450_0while_lstm_cell_579_3515452_0while_lstm_cell_579_3515454_0*
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
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3515367?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_579/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_579/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_579/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_579/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_579_3515450while_lstm_cell_579_3515450_0"<
while_lstm_cell_579_3515452while_lstm_cell_579_3515452_0"<
while_lstm_cell_579_3515454while_lstm_cell_579_3515454_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_579/StatefulPartitionedCall+while/lstm_cell_579/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3519326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3519326___redundant_placeholder05
1while_while_cond_3519326___redundant_placeholder15
1while_while_cond_3519326___redundant_placeholder25
1while_while_cond_3519326___redundant_placeholder3
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
#__inference__traced_restore_3520756
file_prefix3
!assignvariableop_dense_190_kernel:
/
!assignvariableop_1_dense_190_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_570_lstm_cell_570_kernel:	?M
:assignvariableop_8_lstm_570_lstm_cell_570_recurrent_kernel:	d?=
.assignvariableop_9_lstm_570_lstm_cell_570_bias:	?D
1assignvariableop_10_lstm_571_lstm_cell_571_kernel:	d?N
;assignvariableop_11_lstm_571_lstm_cell_571_recurrent_kernel:	2?>
/assignvariableop_12_lstm_571_lstm_cell_571_bias:	?C
1assignvariableop_13_lstm_572_lstm_cell_572_kernel:2(M
;assignvariableop_14_lstm_572_lstm_cell_572_recurrent_kernel:
(=
/assignvariableop_15_lstm_572_lstm_cell_572_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_190_kernel_m:
7
)assignvariableop_19_adam_dense_190_bias_m:K
8assignvariableop_20_adam_lstm_570_lstm_cell_570_kernel_m:	?U
Bassignvariableop_21_adam_lstm_570_lstm_cell_570_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_570_lstm_cell_570_bias_m:	?K
8assignvariableop_23_adam_lstm_571_lstm_cell_571_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_571_lstm_cell_571_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_571_lstm_cell_571_bias_m:	?J
8assignvariableop_26_adam_lstm_572_lstm_cell_572_kernel_m:2(T
Bassignvariableop_27_adam_lstm_572_lstm_cell_572_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_572_lstm_cell_572_bias_m:(=
+assignvariableop_29_adam_dense_190_kernel_v:
7
)assignvariableop_30_adam_dense_190_bias_v:K
8assignvariableop_31_adam_lstm_570_lstm_cell_570_kernel_v:	?U
Bassignvariableop_32_adam_lstm_570_lstm_cell_570_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_570_lstm_cell_570_bias_v:	?K
8assignvariableop_34_adam_lstm_571_lstm_cell_571_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_571_lstm_cell_571_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_571_lstm_cell_571_bias_v:	?J
8assignvariableop_37_adam_lstm_572_lstm_cell_572_kernel_v:2(T
Bassignvariableop_38_adam_lstm_572_lstm_cell_572_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_572_lstm_cell_572_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_190_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_190_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_570_lstm_cell_570_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_570_lstm_cell_570_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_570_lstm_cell_570_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_571_lstm_cell_571_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_571_lstm_cell_571_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_571_lstm_cell_571_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_572_lstm_cell_572_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_572_lstm_cell_572_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_572_lstm_cell_572_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_190_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_190_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_570_lstm_cell_570_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_570_lstm_cell_570_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_570_lstm_cell_570_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_571_lstm_cell_571_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_571_lstm_cell_571_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_571_lstm_cell_571_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_572_lstm_cell_572_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_572_lstm_cell_572_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_572_lstm_cell_572_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_190_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_190_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_570_lstm_cell_570_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_570_lstm_cell_570_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_570_lstm_cell_570_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_571_lstm_cell_571_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_571_lstm_cell_571_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_571_lstm_cell_571_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_572_lstm_cell_572_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_572_lstm_cell_572_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_572_lstm_cell_572_bias_vIdentity_39:output:0"/device:CPU:0*
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
?8
?
while_body_3516569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_581_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_581_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_581_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_581_matmul_readvariableop_resource:2(F
4while_lstm_cell_581_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_581_biasadd_readvariableop_resource:(??*while/lstm_cell_581/BiasAdd/ReadVariableOp?)while/lstm_cell_581/MatMul/ReadVariableOp?+while/lstm_cell_581/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_581/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_581_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_581/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_581_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_581/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_581/addAddV2$while/lstm_cell_581/MatMul:product:0&while/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_581_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_581/BiasAddBiasAddwhile/lstm_cell_581/add:z:02while/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_581/splitSplit,while/lstm_cell_581/split/split_dim:output:0$while/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_581/SigmoidSigmoid"while/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_1Sigmoid"while/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mulMul!while/lstm_cell_581/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_581/ReluRelu"while/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_1Mulwhile/lstm_cell_581/Sigmoid:y:0&while/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/add_1AddV2while/lstm_cell_581/mul:z:0while/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_2Sigmoid"while/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_581/Relu_1Reluwhile/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_2Mul!while/lstm_cell_581/Sigmoid_2:y:0(while/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_581/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_581/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_581/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_581/BiasAdd/ReadVariableOp*^while/lstm_cell_581/MatMul/ReadVariableOp,^while/lstm_cell_581/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_581_biasadd_readvariableop_resource5while_lstm_cell_581_biasadd_readvariableop_resource_0"n
4while_lstm_cell_581_matmul_1_readvariableop_resource6while_lstm_cell_581_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_581_matmul_readvariableop_resource4while_lstm_cell_581_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_581/BiasAdd/ReadVariableOp*while/lstm_cell_581/BiasAdd/ReadVariableOp2V
)while/lstm_cell_581/MatMul/ReadVariableOp)while/lstm_cell_581/MatMul/ReadVariableOp2Z
+while/lstm_cell_581/MatMul_1/ReadVariableOp+while/lstm_cell_581/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_571_while_cond_3517665.
*lstm_571_while_lstm_571_while_loop_counter4
0lstm_571_while_lstm_571_while_maximum_iterations
lstm_571_while_placeholder 
lstm_571_while_placeholder_1 
lstm_571_while_placeholder_2 
lstm_571_while_placeholder_30
,lstm_571_while_less_lstm_571_strided_slice_1G
Clstm_571_while_lstm_571_while_cond_3517665___redundant_placeholder0G
Clstm_571_while_lstm_571_while_cond_3517665___redundant_placeholder1G
Clstm_571_while_lstm_571_while_cond_3517665___redundant_placeholder2G
Clstm_571_while_lstm_571_while_cond_3517665___redundant_placeholder3
lstm_571_while_identity
?
lstm_571/while/LessLesslstm_571_while_placeholder,lstm_571_while_less_lstm_571_strided_slice_1*
T0*
_output_shapes
: ]
lstm_571/while/IdentityIdentitylstm_571/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_571_while_identity lstm_571/while/Identity:output:0*(
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
*__inference_lstm_571_layer_call_fn_3518971

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
GPU 2J 8? *N
fIRG
E__inference_lstm_571_layer_call_and_return_conditional_losses_3516503s
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
?K
?
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518652
inputs_0?
,lstm_cell_579_matmul_readvariableop_resource:	?A
.lstm_cell_579_matmul_1_readvariableop_resource:	d?<
-lstm_cell_579_biasadd_readvariableop_resource:	?
identity??$lstm_cell_579/BiasAdd/ReadVariableOp?#lstm_cell_579/MatMul/ReadVariableOp?%lstm_cell_579/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_579/MatMul/ReadVariableOpReadVariableOp,lstm_cell_579_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_579/MatMulMatMulstrided_slice_2:output:0+lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_579_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_579/MatMul_1MatMulzeros:output:0-lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_579/addAddV2lstm_cell_579/MatMul:product:0 lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_579_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_579/BiasAddBiasAddlstm_cell_579/add:z:0,lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_579/splitSplit&lstm_cell_579/split/split_dim:output:0lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_579/SigmoidSigmoidlstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_1Sigmoidlstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_579/mulMullstm_cell_579/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_579/ReluRelulstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_1Mullstm_cell_579/Sigmoid:y:0 lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_579/add_1AddV2lstm_cell_579/mul:z:0lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_2Sigmoidlstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_579/Relu_1Relulstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_2Mullstm_cell_579/Sigmoid_2:y:0"lstm_cell_579/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_579_matmul_readvariableop_resource.lstm_cell_579_matmul_1_readvariableop_resource-lstm_cell_579_biasadd_readvariableop_resource*
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
while_body_3518568*
condR
while_cond_3518567*K
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
NoOpNoOp%^lstm_cell_579/BiasAdd/ReadVariableOp$^lstm_cell_579/MatMul/ReadVariableOp&^lstm_cell_579/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_579/BiasAdd/ReadVariableOp$lstm_cell_579/BiasAdd/ReadVariableOp2J
#lstm_cell_579/MatMul/ReadVariableOp#lstm_cell_579/MatMul/ReadVariableOp2N
%lstm_cell_579/MatMul_1/ReadVariableOp%lstm_cell_579/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3515425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3515425___redundant_placeholder05
1while_while_cond_3515425___redundant_placeholder15
1while_while_cond_3515425___redundant_placeholder25
1while_while_cond_3515425___redundant_placeholder3
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

?
lstm_570_while_cond_3517953.
*lstm_570_while_lstm_570_while_loop_counter4
0lstm_570_while_lstm_570_while_maximum_iterations
lstm_570_while_placeholder 
lstm_570_while_placeholder_1 
lstm_570_while_placeholder_2 
lstm_570_while_placeholder_30
,lstm_570_while_less_lstm_570_strided_slice_1G
Clstm_570_while_lstm_570_while_cond_3517953___redundant_placeholder0G
Clstm_570_while_lstm_570_while_cond_3517953___redundant_placeholder1G
Clstm_570_while_lstm_570_while_cond_3517953___redundant_placeholder2G
Clstm_570_while_lstm_570_while_cond_3517953___redundant_placeholder3
lstm_570_while_identity
?
lstm_570/while/LessLesslstm_570_while_placeholder,lstm_570_while_less_lstm_570_strided_slice_1*
T0*
_output_shapes
: ]
lstm_570/while/IdentityIdentitylstm_570/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_570_while_identity lstm_570/while/Identity:output:0*(
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
0__inference_sequential_190_layer_call_fn_3517468

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
GPU 2J 8? *T
fORM
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517267o
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
?
?
/__inference_lstm_cell_580_layer_call_fn_3520304

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
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3515571o
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
while_cond_3515584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3515584___redundant_placeholder05
1while_while_cond_3515584___redundant_placeholder15
1while_while_cond_3515584___redundant_placeholder25
1while_while_cond_3515584___redundant_placeholder3
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
?
*sequential_190_lstm_572_while_cond_3515063L
Hsequential_190_lstm_572_while_sequential_190_lstm_572_while_loop_counterR
Nsequential_190_lstm_572_while_sequential_190_lstm_572_while_maximum_iterations-
)sequential_190_lstm_572_while_placeholder/
+sequential_190_lstm_572_while_placeholder_1/
+sequential_190_lstm_572_while_placeholder_2/
+sequential_190_lstm_572_while_placeholder_3N
Jsequential_190_lstm_572_while_less_sequential_190_lstm_572_strided_slice_1e
asequential_190_lstm_572_while_sequential_190_lstm_572_while_cond_3515063___redundant_placeholder0e
asequential_190_lstm_572_while_sequential_190_lstm_572_while_cond_3515063___redundant_placeholder1e
asequential_190_lstm_572_while_sequential_190_lstm_572_while_cond_3515063___redundant_placeholder2e
asequential_190_lstm_572_while_sequential_190_lstm_572_while_cond_3515063___redundant_placeholder3*
&sequential_190_lstm_572_while_identity
?
"sequential_190/lstm_572/while/LessLess)sequential_190_lstm_572_while_placeholderJsequential_190_lstm_572_while_less_sequential_190_lstm_572_strided_slice_1*
T0*
_output_shapes
: {
&sequential_190/lstm_572/while/IdentityIdentity&sequential_190/lstm_572/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_190_lstm_572_while_identity/sequential_190/lstm_572/while/Identity:output:0*(
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
E__inference_lstm_571_layer_call_and_return_conditional_losses_3516503

inputs?
,lstm_cell_580_matmul_readvariableop_resource:	d?A
.lstm_cell_580_matmul_1_readvariableop_resource:	2?<
-lstm_cell_580_biasadd_readvariableop_resource:	?
identity??$lstm_cell_580/BiasAdd/ReadVariableOp?#lstm_cell_580/MatMul/ReadVariableOp?%lstm_cell_580/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_580/MatMul/ReadVariableOpReadVariableOp,lstm_cell_580_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_580/MatMulMatMulstrided_slice_2:output:0+lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_580_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_580/MatMul_1MatMulzeros:output:0-lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_580/addAddV2lstm_cell_580/MatMul:product:0 lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_580_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_580/BiasAddBiasAddlstm_cell_580/add:z:0,lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_580/splitSplit&lstm_cell_580/split/split_dim:output:0lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_580/SigmoidSigmoidlstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_1Sigmoidlstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_580/mulMullstm_cell_580/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_580/ReluRelulstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_1Mullstm_cell_580/Sigmoid:y:0 lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_580/add_1AddV2lstm_cell_580/mul:z:0lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_2Sigmoidlstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_580/Relu_1Relulstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_2Mullstm_cell_580/Sigmoid_2:y:0"lstm_cell_580/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_580_matmul_readvariableop_resource.lstm_cell_580_matmul_1_readvariableop_resource-lstm_cell_580_biasadd_readvariableop_resource*
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
while_body_3516419*
condR
while_cond_3516418*K
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
NoOpNoOp%^lstm_cell_580/BiasAdd/ReadVariableOp$^lstm_cell_580/MatMul/ReadVariableOp&^lstm_cell_580/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_580/BiasAdd/ReadVariableOp$lstm_cell_580/BiasAdd/ReadVariableOp2J
#lstm_cell_580/MatMul/ReadVariableOp#lstm_cell_580/MatMul/ReadVariableOp2N
%lstm_cell_580/MatMul_1/ReadVariableOp%lstm_cell_580/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3516568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3516568___redundant_placeholder05
1while_while_cond_3516568___redundant_placeholder15
1while_while_cond_3516568___redundant_placeholder25
1while_while_cond_3516568___redundant_placeholder3
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
?K
?
E__inference_lstm_572_layer_call_and_return_conditional_losses_3519884
inputs_0>
,lstm_cell_581_matmul_readvariableop_resource:2(@
.lstm_cell_581_matmul_1_readvariableop_resource:
(;
-lstm_cell_581_biasadd_readvariableop_resource:(
identity??$lstm_cell_581/BiasAdd/ReadVariableOp?#lstm_cell_581/MatMul/ReadVariableOp?%lstm_cell_581/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_581/MatMul/ReadVariableOpReadVariableOp,lstm_cell_581_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_581/MatMulMatMulstrided_slice_2:output:0+lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_581_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_581/MatMul_1MatMulzeros:output:0-lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_581/addAddV2lstm_cell_581/MatMul:product:0 lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_581_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_581/BiasAddBiasAddlstm_cell_581/add:z:0,lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_581/splitSplit&lstm_cell_581/split/split_dim:output:0lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_581/SigmoidSigmoidlstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_1Sigmoidlstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_581/mulMullstm_cell_581/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_581/ReluRelulstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_1Mullstm_cell_581/Sigmoid:y:0 lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_581/add_1AddV2lstm_cell_581/mul:z:0lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_2Sigmoidlstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_581/Relu_1Relulstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_2Mullstm_cell_581/Sigmoid_2:y:0"lstm_cell_581/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_581_matmul_readvariableop_resource.lstm_cell_581_matmul_1_readvariableop_resource-lstm_cell_581_biasadd_readvariableop_resource*
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
while_body_3519800*
condR
while_cond_3519799*K
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
NoOpNoOp%^lstm_cell_581/BiasAdd/ReadVariableOp$^lstm_cell_581/MatMul/ReadVariableOp&^lstm_cell_581/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_581/BiasAdd/ReadVariableOp$lstm_cell_581/BiasAdd/ReadVariableOp2J
#lstm_cell_581/MatMul/ReadVariableOp#lstm_cell_581/MatMul/ReadVariableOp2N
%lstm_cell_581/MatMul_1/ReadVariableOp%lstm_cell_581/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_3519943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_581_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_581_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_581_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_581_matmul_readvariableop_resource:2(F
4while_lstm_cell_581_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_581_biasadd_readvariableop_resource:(??*while/lstm_cell_581/BiasAdd/ReadVariableOp?)while/lstm_cell_581/MatMul/ReadVariableOp?+while/lstm_cell_581/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_581/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_581_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_581/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_581_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_581/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_581/addAddV2$while/lstm_cell_581/MatMul:product:0&while/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_581_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_581/BiasAddBiasAddwhile/lstm_cell_581/add:z:02while/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_581/splitSplit,while/lstm_cell_581/split/split_dim:output:0$while/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_581/SigmoidSigmoid"while/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_1Sigmoid"while/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mulMul!while/lstm_cell_581/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_581/ReluRelu"while/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_1Mulwhile/lstm_cell_581/Sigmoid:y:0&while/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/add_1AddV2while/lstm_cell_581/mul:z:0while/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_2Sigmoid"while/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_581/Relu_1Reluwhile/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_2Mul!while/lstm_cell_581/Sigmoid_2:y:0(while/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_581/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_581/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_581/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_581/BiasAdd/ReadVariableOp*^while/lstm_cell_581/MatMul/ReadVariableOp,^while/lstm_cell_581/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_581_biasadd_readvariableop_resource5while_lstm_cell_581_biasadd_readvariableop_resource_0"n
4while_lstm_cell_581_matmul_1_readvariableop_resource6while_lstm_cell_581_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_581_matmul_readvariableop_resource4while_lstm_cell_581_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_581/BiasAdd/ReadVariableOp*while/lstm_cell_581/BiasAdd/ReadVariableOp2V
)while/lstm_cell_581/MatMul/ReadVariableOp)while/lstm_cell_581/MatMul/ReadVariableOp2Z
+while/lstm_cell_581/MatMul_1/ReadVariableOp+while/lstm_cell_581/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?8
?
while_body_3519800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_581_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_581_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_581_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_581_matmul_readvariableop_resource:2(F
4while_lstm_cell_581_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_581_biasadd_readvariableop_resource:(??*while/lstm_cell_581/BiasAdd/ReadVariableOp?)while/lstm_cell_581/MatMul/ReadVariableOp?+while/lstm_cell_581/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_581/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_581_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_581/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_581_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_581/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_581/addAddV2$while/lstm_cell_581/MatMul:product:0&while/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_581_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_581/BiasAddBiasAddwhile/lstm_cell_581/add:z:02while/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_581/splitSplit,while/lstm_cell_581/split/split_dim:output:0$while/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_581/SigmoidSigmoid"while/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_1Sigmoid"while/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mulMul!while/lstm_cell_581/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_581/ReluRelu"while/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_1Mulwhile/lstm_cell_581/Sigmoid:y:0&while/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/add_1AddV2while/lstm_cell_581/mul:z:0while/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_2Sigmoid"while/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_581/Relu_1Reluwhile/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_2Mul!while/lstm_cell_581/Sigmoid_2:y:0(while/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_581/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_581/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_581/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_581/BiasAdd/ReadVariableOp*^while/lstm_cell_581/MatMul/ReadVariableOp,^while/lstm_cell_581/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_581_biasadd_readvariableop_resource5while_lstm_cell_581_biasadd_readvariableop_resource_0"n
4while_lstm_cell_581_matmul_1_readvariableop_resource6while_lstm_cell_581_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_581_matmul_readvariableop_resource4while_lstm_cell_581_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_581/BiasAdd/ReadVariableOp*while/lstm_cell_581/BiasAdd/ReadVariableOp2V
)while/lstm_cell_581/MatMul/ReadVariableOp)while/lstm_cell_581/MatMul/ReadVariableOp2Z
+while/lstm_cell_581/MatMul_1/ReadVariableOp+while/lstm_cell_581/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3519040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3519040___redundant_placeholder05
1while_while_cond_3519040___redundant_placeholder15
1while_while_cond_3519040___redundant_placeholder25
1while_while_cond_3519040___redundant_placeholder3
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
while_body_3516126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_581_3516150_0:2(/
while_lstm_cell_581_3516152_0:
(+
while_lstm_cell_581_3516154_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_581_3516150:2(-
while_lstm_cell_581_3516152:
()
while_lstm_cell_581_3516154:(??+while/lstm_cell_581/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_581/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_581_3516150_0while_lstm_cell_581_3516152_0while_lstm_cell_581_3516154_0*
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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3516067?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_581/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_581/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_581/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_581/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_581_3516150while_lstm_cell_581_3516150_0"<
while_lstm_cell_581_3516152while_lstm_cell_581_3516152_0"<
while_lstm_cell_581_3516154while_lstm_cell_581_3516154_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_581/StatefulPartitionedCall+while/lstm_cell_581/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?8
?
while_body_3520086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_581_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_581_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_581_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_581_matmul_readvariableop_resource:2(F
4while_lstm_cell_581_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_581_biasadd_readvariableop_resource:(??*while/lstm_cell_581/BiasAdd/ReadVariableOp?)while/lstm_cell_581/MatMul/ReadVariableOp?+while/lstm_cell_581/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_581/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_581_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_581/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_581_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_581/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_581/addAddV2$while/lstm_cell_581/MatMul:product:0&while/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_581_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_581/BiasAddBiasAddwhile/lstm_cell_581/add:z:02while/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_581/splitSplit,while/lstm_cell_581/split/split_dim:output:0$while/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_581/SigmoidSigmoid"while/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_1Sigmoid"while/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mulMul!while/lstm_cell_581/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_581/ReluRelu"while/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_1Mulwhile/lstm_cell_581/Sigmoid:y:0&while/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/add_1AddV2while/lstm_cell_581/mul:z:0while/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_2Sigmoid"while/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_581/Relu_1Reluwhile/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_2Mul!while/lstm_cell_581/Sigmoid_2:y:0(while/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_581/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_581/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_581/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_581/BiasAdd/ReadVariableOp*^while/lstm_cell_581/MatMul/ReadVariableOp,^while/lstm_cell_581/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_581_biasadd_readvariableop_resource5while_lstm_cell_581_biasadd_readvariableop_resource_0"n
4while_lstm_cell_581_matmul_1_readvariableop_resource6while_lstm_cell_581_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_581_matmul_readvariableop_resource4while_lstm_cell_581_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_581/BiasAdd/ReadVariableOp*while/lstm_cell_581/BiasAdd/ReadVariableOp2V
)while/lstm_cell_581/MatMul/ReadVariableOp)while/lstm_cell_581/MatMul/ReadVariableOp2Z
+while/lstm_cell_581/MatMul_1/ReadVariableOp+while/lstm_cell_581/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3520255

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
?W
?
 __inference__traced_save_3520626
file_prefix/
+savev2_dense_190_kernel_read_readvariableop-
)savev2_dense_190_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_570_lstm_cell_570_kernel_read_readvariableopF
Bsavev2_lstm_570_lstm_cell_570_recurrent_kernel_read_readvariableop:
6savev2_lstm_570_lstm_cell_570_bias_read_readvariableop<
8savev2_lstm_571_lstm_cell_571_kernel_read_readvariableopF
Bsavev2_lstm_571_lstm_cell_571_recurrent_kernel_read_readvariableop:
6savev2_lstm_571_lstm_cell_571_bias_read_readvariableop<
8savev2_lstm_572_lstm_cell_572_kernel_read_readvariableopF
Bsavev2_lstm_572_lstm_cell_572_recurrent_kernel_read_readvariableop:
6savev2_lstm_572_lstm_cell_572_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_190_kernel_m_read_readvariableop4
0savev2_adam_dense_190_bias_m_read_readvariableopC
?savev2_adam_lstm_570_lstm_cell_570_kernel_m_read_readvariableopM
Isavev2_adam_lstm_570_lstm_cell_570_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_570_lstm_cell_570_bias_m_read_readvariableopC
?savev2_adam_lstm_571_lstm_cell_571_kernel_m_read_readvariableopM
Isavev2_adam_lstm_571_lstm_cell_571_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_571_lstm_cell_571_bias_m_read_readvariableopC
?savev2_adam_lstm_572_lstm_cell_572_kernel_m_read_readvariableopM
Isavev2_adam_lstm_572_lstm_cell_572_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_572_lstm_cell_572_bias_m_read_readvariableop6
2savev2_adam_dense_190_kernel_v_read_readvariableop4
0savev2_adam_dense_190_bias_v_read_readvariableopC
?savev2_adam_lstm_570_lstm_cell_570_kernel_v_read_readvariableopM
Isavev2_adam_lstm_570_lstm_cell_570_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_570_lstm_cell_570_bias_v_read_readvariableopC
?savev2_adam_lstm_571_lstm_cell_571_kernel_v_read_readvariableopM
Isavev2_adam_lstm_571_lstm_cell_571_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_571_lstm_cell_571_bias_v_read_readvariableopC
?savev2_adam_lstm_572_lstm_cell_572_kernel_v_read_readvariableopM
Isavev2_adam_lstm_572_lstm_cell_572_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_572_lstm_cell_572_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_190_kernel_read_readvariableop)savev2_dense_190_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_570_lstm_cell_570_kernel_read_readvariableopBsavev2_lstm_570_lstm_cell_570_recurrent_kernel_read_readvariableop6savev2_lstm_570_lstm_cell_570_bias_read_readvariableop8savev2_lstm_571_lstm_cell_571_kernel_read_readvariableopBsavev2_lstm_571_lstm_cell_571_recurrent_kernel_read_readvariableop6savev2_lstm_571_lstm_cell_571_bias_read_readvariableop8savev2_lstm_572_lstm_cell_572_kernel_read_readvariableopBsavev2_lstm_572_lstm_cell_572_recurrent_kernel_read_readvariableop6savev2_lstm_572_lstm_cell_572_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_190_kernel_m_read_readvariableop0savev2_adam_dense_190_bias_m_read_readvariableop?savev2_adam_lstm_570_lstm_cell_570_kernel_m_read_readvariableopIsavev2_adam_lstm_570_lstm_cell_570_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_570_lstm_cell_570_bias_m_read_readvariableop?savev2_adam_lstm_571_lstm_cell_571_kernel_m_read_readvariableopIsavev2_adam_lstm_571_lstm_cell_571_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_571_lstm_cell_571_bias_m_read_readvariableop?savev2_adam_lstm_572_lstm_cell_572_kernel_m_read_readvariableopIsavev2_adam_lstm_572_lstm_cell_572_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_572_lstm_cell_572_bias_m_read_readvariableop2savev2_adam_dense_190_kernel_v_read_readvariableop0savev2_adam_dense_190_bias_v_read_readvariableop?savev2_adam_lstm_570_lstm_cell_570_kernel_v_read_readvariableopIsavev2_adam_lstm_570_lstm_cell_570_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_570_lstm_cell_570_bias_v_read_readvariableop?savev2_adam_lstm_571_lstm_cell_571_kernel_v_read_readvariableopIsavev2_adam_lstm_571_lstm_cell_571_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_571_lstm_cell_571_bias_v_read_readvariableop?savev2_adam_lstm_572_lstm_cell_572_kernel_v_read_readvariableopIsavev2_adam_lstm_572_lstm_cell_572_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_572_lstm_cell_572_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?C
?

lstm_570_while_body_3517527.
*lstm_570_while_lstm_570_while_loop_counter4
0lstm_570_while_lstm_570_while_maximum_iterations
lstm_570_while_placeholder 
lstm_570_while_placeholder_1 
lstm_570_while_placeholder_2 
lstm_570_while_placeholder_3-
)lstm_570_while_lstm_570_strided_slice_1_0i
elstm_570_while_tensorarrayv2read_tensorlistgetitem_lstm_570_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_570_while_lstm_cell_579_matmul_readvariableop_resource_0:	?R
?lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource_0:	d?M
>lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource_0:	?
lstm_570_while_identity
lstm_570_while_identity_1
lstm_570_while_identity_2
lstm_570_while_identity_3
lstm_570_while_identity_4
lstm_570_while_identity_5+
'lstm_570_while_lstm_570_strided_slice_1g
clstm_570_while_tensorarrayv2read_tensorlistgetitem_lstm_570_tensorarrayunstack_tensorlistfromtensorN
;lstm_570_while_lstm_cell_579_matmul_readvariableop_resource:	?P
=lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource:	d?K
<lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource:	???3lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp?2lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp?4lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp?
@lstm_570/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_570/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_570_while_tensorarrayv2read_tensorlistgetitem_lstm_570_tensorarrayunstack_tensorlistfromtensor_0lstm_570_while_placeholderIlstm_570/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_570/while/lstm_cell_579/MatMul/ReadVariableOpReadVariableOp=lstm_570_while_lstm_cell_579_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_570/while/lstm_cell_579/MatMulMatMul9lstm_570/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp?lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_570/while/lstm_cell_579/MatMul_1MatMullstm_570_while_placeholder_2<lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_570/while/lstm_cell_579/addAddV2-lstm_570/while/lstm_cell_579/MatMul:product:0/lstm_570/while/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp>lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_570/while/lstm_cell_579/BiasAddBiasAdd$lstm_570/while/lstm_cell_579/add:z:0;lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_570/while/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_570/while/lstm_cell_579/splitSplit5lstm_570/while/lstm_cell_579/split/split_dim:output:0-lstm_570/while/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_570/while/lstm_cell_579/SigmoidSigmoid+lstm_570/while/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_570/while/lstm_cell_579/Sigmoid_1Sigmoid+lstm_570/while/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_570/while/lstm_cell_579/mulMul*lstm_570/while/lstm_cell_579/Sigmoid_1:y:0lstm_570_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_570/while/lstm_cell_579/ReluRelu+lstm_570/while/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_570/while/lstm_cell_579/mul_1Mul(lstm_570/while/lstm_cell_579/Sigmoid:y:0/lstm_570/while/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_570/while/lstm_cell_579/add_1AddV2$lstm_570/while/lstm_cell_579/mul:z:0&lstm_570/while/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_570/while/lstm_cell_579/Sigmoid_2Sigmoid+lstm_570/while/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_570/while/lstm_cell_579/Relu_1Relu&lstm_570/while/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_570/while/lstm_cell_579/mul_2Mul*lstm_570/while/lstm_cell_579/Sigmoid_2:y:01lstm_570/while/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_570/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_570_while_placeholder_1lstm_570_while_placeholder&lstm_570/while/lstm_cell_579/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_570/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_570/while/addAddV2lstm_570_while_placeholderlstm_570/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_570/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_570/while/add_1AddV2*lstm_570_while_lstm_570_while_loop_counterlstm_570/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_570/while/IdentityIdentitylstm_570/while/add_1:z:0^lstm_570/while/NoOp*
T0*
_output_shapes
: ?
lstm_570/while/Identity_1Identity0lstm_570_while_lstm_570_while_maximum_iterations^lstm_570/while/NoOp*
T0*
_output_shapes
: t
lstm_570/while/Identity_2Identitylstm_570/while/add:z:0^lstm_570/while/NoOp*
T0*
_output_shapes
: ?
lstm_570/while/Identity_3IdentityClstm_570/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_570/while/NoOp*
T0*
_output_shapes
: ?
lstm_570/while/Identity_4Identity&lstm_570/while/lstm_cell_579/mul_2:z:0^lstm_570/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_570/while/Identity_5Identity&lstm_570/while/lstm_cell_579/add_1:z:0^lstm_570/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_570/while/NoOpNoOp4^lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp3^lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp5^lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_570_while_identity lstm_570/while/Identity:output:0"?
lstm_570_while_identity_1"lstm_570/while/Identity_1:output:0"?
lstm_570_while_identity_2"lstm_570/while/Identity_2:output:0"?
lstm_570_while_identity_3"lstm_570/while/Identity_3:output:0"?
lstm_570_while_identity_4"lstm_570/while/Identity_4:output:0"?
lstm_570_while_identity_5"lstm_570/while/Identity_5:output:0"T
'lstm_570_while_lstm_570_strided_slice_1)lstm_570_while_lstm_570_strided_slice_1_0"~
<lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource>lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource_0"?
=lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource?lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource_0"|
;lstm_570_while_lstm_cell_579_matmul_readvariableop_resource=lstm_570_while_lstm_cell_579_matmul_readvariableop_resource_0"?
clstm_570_while_tensorarrayv2read_tensorlistgetitem_lstm_570_tensorarrayunstack_tensorlistfromtensorelstm_570_while_tensorarrayv2read_tensorlistgetitem_lstm_570_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp3lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp2h
2lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp2lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp2l
4lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp4lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3516419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_580_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_580_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_580_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_580_matmul_readvariableop_resource:	d?G
4while_lstm_cell_580_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_580_biasadd_readvariableop_resource:	???*while/lstm_cell_580/BiasAdd/ReadVariableOp?)while/lstm_cell_580/MatMul/ReadVariableOp?+while/lstm_cell_580/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_580/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_580_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_580/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_580_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_580/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_580/addAddV2$while/lstm_cell_580/MatMul:product:0&while/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_580_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_580/BiasAddBiasAddwhile/lstm_cell_580/add:z:02while/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_580/splitSplit,while/lstm_cell_580/split/split_dim:output:0$while/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_580/SigmoidSigmoid"while/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_1Sigmoid"while/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mulMul!while/lstm_cell_580/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_580/ReluRelu"while/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_1Mulwhile/lstm_cell_580/Sigmoid:y:0&while/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/add_1AddV2while/lstm_cell_580/mul:z:0while/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_2Sigmoid"while/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_580/Relu_1Reluwhile/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_2Mul!while/lstm_cell_580/Sigmoid_2:y:0(while/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_580/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_580/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_580/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_580/BiasAdd/ReadVariableOp*^while/lstm_cell_580/MatMul/ReadVariableOp,^while/lstm_cell_580/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_580_biasadd_readvariableop_resource5while_lstm_cell_580_biasadd_readvariableop_resource_0"n
4while_lstm_cell_580_matmul_1_readvariableop_resource6while_lstm_cell_580_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_580_matmul_readvariableop_resource4while_lstm_cell_580_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_580/BiasAdd/ReadVariableOp*while/lstm_cell_580/BiasAdd/ReadVariableOp2V
)while/lstm_cell_580/MatMul/ReadVariableOp)while/lstm_cell_580/MatMul/ReadVariableOp2Z
+while/lstm_cell_580/MatMul_1/ReadVariableOp+while/lstm_cell_580/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*__inference_lstm_571_layer_call_fn_3518960
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
GPU 2J 8? *N
fIRG
E__inference_lstm_571_layer_call_and_return_conditional_losses_3515845|
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
?8
?
while_body_3516269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_579_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_579_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_579_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_579_matmul_readvariableop_resource:	?G
4while_lstm_cell_579_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_579_biasadd_readvariableop_resource:	???*while/lstm_cell_579/BiasAdd/ReadVariableOp?)while/lstm_cell_579/MatMul/ReadVariableOp?+while/lstm_cell_579/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_579/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_579_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_579/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_579_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_579/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_579/addAddV2$while/lstm_cell_579/MatMul:product:0&while/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_579_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_579/BiasAddBiasAddwhile/lstm_cell_579/add:z:02while/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_579/splitSplit,while/lstm_cell_579/split/split_dim:output:0$while/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_579/SigmoidSigmoid"while/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_1Sigmoid"while/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mulMul!while/lstm_cell_579/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_579/ReluRelu"while/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_1Mulwhile/lstm_cell_579/Sigmoid:y:0&while/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/add_1AddV2while/lstm_cell_579/mul:z:0while/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_2Sigmoid"while/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_579/Relu_1Reluwhile/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_2Mul!while/lstm_cell_579/Sigmoid_2:y:0(while/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_579/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_579/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_579/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_579/BiasAdd/ReadVariableOp*^while/lstm_cell_579/MatMul/ReadVariableOp,^while/lstm_cell_579/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_579_biasadd_readvariableop_resource5while_lstm_cell_579_biasadd_readvariableop_resource_0"n
4while_lstm_cell_579_matmul_1_readvariableop_resource6while_lstm_cell_579_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_579_matmul_readvariableop_resource4while_lstm_cell_579_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_579/BiasAdd/ReadVariableOp*while/lstm_cell_579/BiasAdd/ReadVariableOp2V
)while/lstm_cell_579/MatMul/ReadVariableOp)while/lstm_cell_579/MatMul/ReadVariableOp2Z
+while/lstm_cell_579/MatMul_1/ReadVariableOp+while/lstm_cell_579/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3516125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3516125___redundant_placeholder05
1while_while_cond_3516125___redundant_placeholder15
1while_while_cond_3516125___redundant_placeholder25
1while_while_cond_3516125___redundant_placeholder3
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
?
?
while_cond_3519656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3519656___redundant_placeholder05
1while_while_cond_3519656___redundant_placeholder15
1while_while_cond_3519656___redundant_placeholder25
1while_while_cond_3519656___redundant_placeholder3
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
?
?
while_cond_3519799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3519799___redundant_placeholder05
1while_while_cond_3519799___redundant_placeholder15
1while_while_cond_3519799___redundant_placeholder25
1while_while_cond_3519799___redundant_placeholder3
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
?
?
while_cond_3518424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3518424___redundant_placeholder05
1while_while_cond_3518424___redundant_placeholder15
1while_while_cond_3518424___redundant_placeholder25
1while_while_cond_3518424___redundant_placeholder3
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
?
?
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3520287

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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3515921

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
/__inference_lstm_cell_581_layer_call_fn_3520419

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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3516067o
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
?
while_body_3519657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_581_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_581_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_581_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_581_matmul_readvariableop_resource:2(F
4while_lstm_cell_581_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_581_biasadd_readvariableop_resource:(??*while/lstm_cell_581/BiasAdd/ReadVariableOp?)while/lstm_cell_581/MatMul/ReadVariableOp?+while/lstm_cell_581/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_581/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_581_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_581/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_581_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_581/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_581/addAddV2$while/lstm_cell_581/MatMul:product:0&while/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_581_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_581/BiasAddBiasAddwhile/lstm_cell_581/add:z:02while/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_581/splitSplit,while/lstm_cell_581/split/split_dim:output:0$while/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_581/SigmoidSigmoid"while/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_1Sigmoid"while/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mulMul!while/lstm_cell_581/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_581/ReluRelu"while/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_1Mulwhile/lstm_cell_581/Sigmoid:y:0&while/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/add_1AddV2while/lstm_cell_581/mul:z:0while/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_2Sigmoid"while/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_581/Relu_1Reluwhile/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_2Mul!while/lstm_cell_581/Sigmoid_2:y:0(while/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_581/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_581/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_581/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_581/BiasAdd/ReadVariableOp*^while/lstm_cell_581/MatMul/ReadVariableOp,^while/lstm_cell_581/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_581_biasadd_readvariableop_resource5while_lstm_cell_581_biasadd_readvariableop_resource_0"n
4while_lstm_cell_581_matmul_1_readvariableop_resource6while_lstm_cell_581_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_581_matmul_readvariableop_resource4while_lstm_cell_581_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_581/BiasAdd/ReadVariableOp*while/lstm_cell_581/BiasAdd/ReadVariableOp2V
)while/lstm_cell_581/MatMul/ReadVariableOp)while/lstm_cell_581/MatMul/ReadVariableOp2Z
+while/lstm_cell_581/MatMul_1/ReadVariableOp+while/lstm_cell_581/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3515775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3515775___redundant_placeholder05
1while_while_cond_3515775___redundant_placeholder15
1while_while_cond_3515775___redundant_placeholder25
1while_while_cond_3515775___redundant_placeholder3
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

?
0__inference_sequential_190_layer_call_fn_3517441

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
GPU 2J 8? *T
fORM
K__inference_sequential_190_layer_call_and_return_conditional_losses_3516678o
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
?
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516195

inputs'
lstm_cell_581_3516113:2('
lstm_cell_581_3516115:
(#
lstm_cell_581_3516117:(
identity??%lstm_cell_581/StatefulPartitionedCall?while;
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
%lstm_cell_581/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_581_3516113lstm_cell_581_3516115lstm_cell_581_3516117*
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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3516067n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_581_3516113lstm_cell_581_3516115lstm_cell_581_3516117*
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
while_body_3516126*
condR
while_cond_3516125*K
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
NoOpNoOp&^lstm_cell_581/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_581/StatefulPartitionedCall%lstm_cell_581/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_572_while_body_3517805.
*lstm_572_while_lstm_572_while_loop_counter4
0lstm_572_while_lstm_572_while_maximum_iterations
lstm_572_while_placeholder 
lstm_572_while_placeholder_1 
lstm_572_while_placeholder_2 
lstm_572_while_placeholder_3-
)lstm_572_while_lstm_572_strided_slice_1_0i
elstm_572_while_tensorarrayv2read_tensorlistgetitem_lstm_572_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_572_while_lstm_cell_581_matmul_readvariableop_resource_0:2(Q
?lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource_0:
(L
>lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource_0:(
lstm_572_while_identity
lstm_572_while_identity_1
lstm_572_while_identity_2
lstm_572_while_identity_3
lstm_572_while_identity_4
lstm_572_while_identity_5+
'lstm_572_while_lstm_572_strided_slice_1g
clstm_572_while_tensorarrayv2read_tensorlistgetitem_lstm_572_tensorarrayunstack_tensorlistfromtensorM
;lstm_572_while_lstm_cell_581_matmul_readvariableop_resource:2(O
=lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource:
(J
<lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource:(??3lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp?2lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp?4lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp?
@lstm_572/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_572/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_572_while_tensorarrayv2read_tensorlistgetitem_lstm_572_tensorarrayunstack_tensorlistfromtensor_0lstm_572_while_placeholderIlstm_572/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_572/while/lstm_cell_581/MatMul/ReadVariableOpReadVariableOp=lstm_572_while_lstm_cell_581_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_572/while/lstm_cell_581/MatMulMatMul9lstm_572/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp?lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_572/while/lstm_cell_581/MatMul_1MatMullstm_572_while_placeholder_2<lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_572/while/lstm_cell_581/addAddV2-lstm_572/while/lstm_cell_581/MatMul:product:0/lstm_572/while/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp>lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_572/while/lstm_cell_581/BiasAddBiasAdd$lstm_572/while/lstm_cell_581/add:z:0;lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_572/while/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_572/while/lstm_cell_581/splitSplit5lstm_572/while/lstm_cell_581/split/split_dim:output:0-lstm_572/while/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_572/while/lstm_cell_581/SigmoidSigmoid+lstm_572/while/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_572/while/lstm_cell_581/Sigmoid_1Sigmoid+lstm_572/while/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_572/while/lstm_cell_581/mulMul*lstm_572/while/lstm_cell_581/Sigmoid_1:y:0lstm_572_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_572/while/lstm_cell_581/ReluRelu+lstm_572/while/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_572/while/lstm_cell_581/mul_1Mul(lstm_572/while/lstm_cell_581/Sigmoid:y:0/lstm_572/while/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_572/while/lstm_cell_581/add_1AddV2$lstm_572/while/lstm_cell_581/mul:z:0&lstm_572/while/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_572/while/lstm_cell_581/Sigmoid_2Sigmoid+lstm_572/while/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_572/while/lstm_cell_581/Relu_1Relu&lstm_572/while/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_572/while/lstm_cell_581/mul_2Mul*lstm_572/while/lstm_cell_581/Sigmoid_2:y:01lstm_572/while/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_572/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_572_while_placeholder_1lstm_572_while_placeholder&lstm_572/while/lstm_cell_581/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_572/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_572/while/addAddV2lstm_572_while_placeholderlstm_572/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_572/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_572/while/add_1AddV2*lstm_572_while_lstm_572_while_loop_counterlstm_572/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_572/while/IdentityIdentitylstm_572/while/add_1:z:0^lstm_572/while/NoOp*
T0*
_output_shapes
: ?
lstm_572/while/Identity_1Identity0lstm_572_while_lstm_572_while_maximum_iterations^lstm_572/while/NoOp*
T0*
_output_shapes
: t
lstm_572/while/Identity_2Identitylstm_572/while/add:z:0^lstm_572/while/NoOp*
T0*
_output_shapes
: ?
lstm_572/while/Identity_3IdentityClstm_572/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_572/while/NoOp*
T0*
_output_shapes
: ?
lstm_572/while/Identity_4Identity&lstm_572/while/lstm_cell_581/mul_2:z:0^lstm_572/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_572/while/Identity_5Identity&lstm_572/while/lstm_cell_581/add_1:z:0^lstm_572/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_572/while/NoOpNoOp4^lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp3^lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp5^lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_572_while_identity lstm_572/while/Identity:output:0"?
lstm_572_while_identity_1"lstm_572/while/Identity_1:output:0"?
lstm_572_while_identity_2"lstm_572/while/Identity_2:output:0"?
lstm_572_while_identity_3"lstm_572/while/Identity_3:output:0"?
lstm_572_while_identity_4"lstm_572/while/Identity_4:output:0"?
lstm_572_while_identity_5"lstm_572/while/Identity_5:output:0"T
'lstm_572_while_lstm_572_strided_slice_1)lstm_572_while_lstm_572_strided_slice_1_0"~
<lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource>lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource_0"?
=lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource?lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource_0"|
;lstm_572_while_lstm_cell_581_matmul_readvariableop_resource=lstm_572_while_lstm_cell_581_matmul_readvariableop_resource_0"?
clstm_572_while_tensorarrayv2read_tensorlistgetitem_lstm_572_tensorarrayunstack_tensorlistfromtensorelstm_572_while_tensorarrayv2read_tensorlistgetitem_lstm_572_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp3lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp2h
2lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp2lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp2l
4lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp4lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_190_layer_call_and_return_conditional_losses_3520189

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
?#
?
while_body_3515776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_580_3515800_0:	d?0
while_lstm_cell_580_3515802_0:	2?,
while_lstm_cell_580_3515804_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_580_3515800:	d?.
while_lstm_cell_580_3515802:	2?*
while_lstm_cell_580_3515804:	???+while/lstm_cell_580/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_580/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_580_3515800_0while_lstm_cell_580_3515802_0while_lstm_cell_580_3515804_0*
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
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3515717?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_580/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_580/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_580/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_580/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_580_3515800while_lstm_cell_580_3515800_0"<
while_lstm_cell_580_3515802while_lstm_cell_580_3515802_0"<
while_lstm_cell_580_3515804while_lstm_cell_580_3515804_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_580/StatefulPartitionedCall+while/lstm_cell_580/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_579_layer_call_fn_3520223

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
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3515367o
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
?T
?
*sequential_190_lstm_570_while_body_3514786L
Hsequential_190_lstm_570_while_sequential_190_lstm_570_while_loop_counterR
Nsequential_190_lstm_570_while_sequential_190_lstm_570_while_maximum_iterations-
)sequential_190_lstm_570_while_placeholder/
+sequential_190_lstm_570_while_placeholder_1/
+sequential_190_lstm_570_while_placeholder_2/
+sequential_190_lstm_570_while_placeholder_3K
Gsequential_190_lstm_570_while_sequential_190_lstm_570_strided_slice_1_0?
?sequential_190_lstm_570_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_570_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_190_lstm_570_while_lstm_cell_579_matmul_readvariableop_resource_0:	?a
Nsequential_190_lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource_0:	d?\
Msequential_190_lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource_0:	?*
&sequential_190_lstm_570_while_identity,
(sequential_190_lstm_570_while_identity_1,
(sequential_190_lstm_570_while_identity_2,
(sequential_190_lstm_570_while_identity_3,
(sequential_190_lstm_570_while_identity_4,
(sequential_190_lstm_570_while_identity_5I
Esequential_190_lstm_570_while_sequential_190_lstm_570_strided_slice_1?
?sequential_190_lstm_570_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_570_tensorarrayunstack_tensorlistfromtensor]
Jsequential_190_lstm_570_while_lstm_cell_579_matmul_readvariableop_resource:	?_
Lsequential_190_lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource:	d?Z
Ksequential_190_lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource:	???Bsequential_190/lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp?Asequential_190/lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp?Csequential_190/lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp?
Osequential_190/lstm_570/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_190/lstm_570/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_190_lstm_570_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_570_tensorarrayunstack_tensorlistfromtensor_0)sequential_190_lstm_570_while_placeholderXsequential_190/lstm_570/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_190/lstm_570/while/lstm_cell_579/MatMul/ReadVariableOpReadVariableOpLsequential_190_lstm_570_while_lstm_cell_579_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_190/lstm_570/while/lstm_cell_579/MatMulMatMulHsequential_190/lstm_570/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_190/lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_190/lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOpNsequential_190_lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_190/lstm_570/while/lstm_cell_579/MatMul_1MatMul+sequential_190_lstm_570_while_placeholder_2Ksequential_190/lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_190/lstm_570/while/lstm_cell_579/addAddV2<sequential_190/lstm_570/while/lstm_cell_579/MatMul:product:0>sequential_190/lstm_570/while/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_190/lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOpMsequential_190_lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_190/lstm_570/while/lstm_cell_579/BiasAddBiasAdd3sequential_190/lstm_570/while/lstm_cell_579/add:z:0Jsequential_190/lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_190/lstm_570/while/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_190/lstm_570/while/lstm_cell_579/splitSplitDsequential_190/lstm_570/while/lstm_cell_579/split/split_dim:output:0<sequential_190/lstm_570/while/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_190/lstm_570/while/lstm_cell_579/SigmoidSigmoid:sequential_190/lstm_570/while/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_190/lstm_570/while/lstm_cell_579/Sigmoid_1Sigmoid:sequential_190/lstm_570/while/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_190/lstm_570/while/lstm_cell_579/mulMul9sequential_190/lstm_570/while/lstm_cell_579/Sigmoid_1:y:0+sequential_190_lstm_570_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_190/lstm_570/while/lstm_cell_579/ReluRelu:sequential_190/lstm_570/while/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_190/lstm_570/while/lstm_cell_579/mul_1Mul7sequential_190/lstm_570/while/lstm_cell_579/Sigmoid:y:0>sequential_190/lstm_570/while/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_190/lstm_570/while/lstm_cell_579/add_1AddV23sequential_190/lstm_570/while/lstm_cell_579/mul:z:05sequential_190/lstm_570/while/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_190/lstm_570/while/lstm_cell_579/Sigmoid_2Sigmoid:sequential_190/lstm_570/while/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_190/lstm_570/while/lstm_cell_579/Relu_1Relu5sequential_190/lstm_570/while/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_190/lstm_570/while/lstm_cell_579/mul_2Mul9sequential_190/lstm_570/while/lstm_cell_579/Sigmoid_2:y:0@sequential_190/lstm_570/while/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_190/lstm_570/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_190_lstm_570_while_placeholder_1)sequential_190_lstm_570_while_placeholder5sequential_190/lstm_570/while/lstm_cell_579/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_190/lstm_570/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_190/lstm_570/while/addAddV2)sequential_190_lstm_570_while_placeholder,sequential_190/lstm_570/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_190/lstm_570/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_190/lstm_570/while/add_1AddV2Hsequential_190_lstm_570_while_sequential_190_lstm_570_while_loop_counter.sequential_190/lstm_570/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_190/lstm_570/while/IdentityIdentity'sequential_190/lstm_570/while/add_1:z:0#^sequential_190/lstm_570/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_570/while/Identity_1IdentityNsequential_190_lstm_570_while_sequential_190_lstm_570_while_maximum_iterations#^sequential_190/lstm_570/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_570/while/Identity_2Identity%sequential_190/lstm_570/while/add:z:0#^sequential_190/lstm_570/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_570/while/Identity_3IdentityRsequential_190/lstm_570/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_190/lstm_570/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_570/while/Identity_4Identity5sequential_190/lstm_570/while/lstm_cell_579/mul_2:z:0#^sequential_190/lstm_570/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_190/lstm_570/while/Identity_5Identity5sequential_190/lstm_570/while/lstm_cell_579/add_1:z:0#^sequential_190/lstm_570/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_190/lstm_570/while/NoOpNoOpC^sequential_190/lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOpB^sequential_190/lstm_570/while/lstm_cell_579/MatMul/ReadVariableOpD^sequential_190/lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_190_lstm_570_while_identity/sequential_190/lstm_570/while/Identity:output:0"]
(sequential_190_lstm_570_while_identity_11sequential_190/lstm_570/while/Identity_1:output:0"]
(sequential_190_lstm_570_while_identity_21sequential_190/lstm_570/while/Identity_2:output:0"]
(sequential_190_lstm_570_while_identity_31sequential_190/lstm_570/while/Identity_3:output:0"]
(sequential_190_lstm_570_while_identity_41sequential_190/lstm_570/while/Identity_4:output:0"]
(sequential_190_lstm_570_while_identity_51sequential_190/lstm_570/while/Identity_5:output:0"?
Ksequential_190_lstm_570_while_lstm_cell_579_biasadd_readvariableop_resourceMsequential_190_lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource_0"?
Lsequential_190_lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resourceNsequential_190_lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource_0"?
Jsequential_190_lstm_570_while_lstm_cell_579_matmul_readvariableop_resourceLsequential_190_lstm_570_while_lstm_cell_579_matmul_readvariableop_resource_0"?
Esequential_190_lstm_570_while_sequential_190_lstm_570_strided_slice_1Gsequential_190_lstm_570_while_sequential_190_lstm_570_strided_slice_1_0"?
?sequential_190_lstm_570_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_570_tensorarrayunstack_tensorlistfromtensor?sequential_190_lstm_570_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_570_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_190/lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOpBsequential_190/lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp2?
Asequential_190/lstm_570/while/lstm_cell_579/MatMul/ReadVariableOpAsequential_190/lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp2?
Csequential_190/lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOpCsequential_190/lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
/__inference_lstm_cell_580_layer_call_fn_3520321

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
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3515717o
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
while_cond_3518853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3518853___redundant_placeholder05
1while_while_cond_3518853___redundant_placeholder15
1while_while_cond_3518853___redundant_placeholder25
1while_while_cond_3518853___redundant_placeholder3
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
?
?
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3520483

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
?#
?
while_body_3515935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_581_3515959_0:2(/
while_lstm_cell_581_3515961_0:
(+
while_lstm_cell_581_3515963_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_581_3515959:2(-
while_lstm_cell_581_3515961:
()
while_lstm_cell_581_3515963:(??+while/lstm_cell_581/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_581/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_581_3515959_0while_lstm_cell_581_3515961_0while_lstm_cell_581_3515963_0*
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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3515921?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_581/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_581/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_581/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_581/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_581_3515959while_lstm_cell_581_3515959_0"<
while_lstm_cell_581_3515961while_lstm_cell_581_3515961_0"<
while_lstm_cell_581_3515963while_lstm_cell_581_3515963_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_581/StatefulPartitionedCall+while/lstm_cell_581/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3520451

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
?J
?
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518795

inputs?
,lstm_cell_579_matmul_readvariableop_resource:	?A
.lstm_cell_579_matmul_1_readvariableop_resource:	d?<
-lstm_cell_579_biasadd_readvariableop_resource:	?
identity??$lstm_cell_579/BiasAdd/ReadVariableOp?#lstm_cell_579/MatMul/ReadVariableOp?%lstm_cell_579/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_579/MatMul/ReadVariableOpReadVariableOp,lstm_cell_579_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_579/MatMulMatMulstrided_slice_2:output:0+lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_579_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_579/MatMul_1MatMulzeros:output:0-lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_579/addAddV2lstm_cell_579/MatMul:product:0 lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_579_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_579/BiasAddBiasAddlstm_cell_579/add:z:0,lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_579/splitSplit&lstm_cell_579/split/split_dim:output:0lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_579/SigmoidSigmoidlstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_1Sigmoidlstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_579/mulMullstm_cell_579/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_579/ReluRelulstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_1Mullstm_cell_579/Sigmoid:y:0 lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_579/add_1AddV2lstm_cell_579/mul:z:0lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_2Sigmoidlstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_579/Relu_1Relulstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_2Mullstm_cell_579/Sigmoid_2:y:0"lstm_cell_579/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_579_matmul_readvariableop_resource.lstm_cell_579_matmul_1_readvariableop_resource-lstm_cell_579_biasadd_readvariableop_resource*
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
while_body_3518711*
condR
while_cond_3518710*K
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
NoOpNoOp%^lstm_cell_579/BiasAdd/ReadVariableOp$^lstm_cell_579/MatMul/ReadVariableOp&^lstm_cell_579/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_579/BiasAdd/ReadVariableOp$lstm_cell_579/BiasAdd/ReadVariableOp2J
#lstm_cell_579/MatMul/ReadVariableOp#lstm_cell_579/MatMul/ReadVariableOp2N
%lstm_cell_579/MatMul_1/ReadVariableOp%lstm_cell_579/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_572_while_body_3518232.
*lstm_572_while_lstm_572_while_loop_counter4
0lstm_572_while_lstm_572_while_maximum_iterations
lstm_572_while_placeholder 
lstm_572_while_placeholder_1 
lstm_572_while_placeholder_2 
lstm_572_while_placeholder_3-
)lstm_572_while_lstm_572_strided_slice_1_0i
elstm_572_while_tensorarrayv2read_tensorlistgetitem_lstm_572_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_572_while_lstm_cell_581_matmul_readvariableop_resource_0:2(Q
?lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource_0:
(L
>lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource_0:(
lstm_572_while_identity
lstm_572_while_identity_1
lstm_572_while_identity_2
lstm_572_while_identity_3
lstm_572_while_identity_4
lstm_572_while_identity_5+
'lstm_572_while_lstm_572_strided_slice_1g
clstm_572_while_tensorarrayv2read_tensorlistgetitem_lstm_572_tensorarrayunstack_tensorlistfromtensorM
;lstm_572_while_lstm_cell_581_matmul_readvariableop_resource:2(O
=lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource:
(J
<lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource:(??3lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp?2lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp?4lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp?
@lstm_572/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_572/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_572_while_tensorarrayv2read_tensorlistgetitem_lstm_572_tensorarrayunstack_tensorlistfromtensor_0lstm_572_while_placeholderIlstm_572/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_572/while/lstm_cell_581/MatMul/ReadVariableOpReadVariableOp=lstm_572_while_lstm_cell_581_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_572/while/lstm_cell_581/MatMulMatMul9lstm_572/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp?lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_572/while/lstm_cell_581/MatMul_1MatMullstm_572_while_placeholder_2<lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_572/while/lstm_cell_581/addAddV2-lstm_572/while/lstm_cell_581/MatMul:product:0/lstm_572/while/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp>lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_572/while/lstm_cell_581/BiasAddBiasAdd$lstm_572/while/lstm_cell_581/add:z:0;lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_572/while/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_572/while/lstm_cell_581/splitSplit5lstm_572/while/lstm_cell_581/split/split_dim:output:0-lstm_572/while/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_572/while/lstm_cell_581/SigmoidSigmoid+lstm_572/while/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_572/while/lstm_cell_581/Sigmoid_1Sigmoid+lstm_572/while/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_572/while/lstm_cell_581/mulMul*lstm_572/while/lstm_cell_581/Sigmoid_1:y:0lstm_572_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_572/while/lstm_cell_581/ReluRelu+lstm_572/while/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_572/while/lstm_cell_581/mul_1Mul(lstm_572/while/lstm_cell_581/Sigmoid:y:0/lstm_572/while/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_572/while/lstm_cell_581/add_1AddV2$lstm_572/while/lstm_cell_581/mul:z:0&lstm_572/while/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_572/while/lstm_cell_581/Sigmoid_2Sigmoid+lstm_572/while/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_572/while/lstm_cell_581/Relu_1Relu&lstm_572/while/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_572/while/lstm_cell_581/mul_2Mul*lstm_572/while/lstm_cell_581/Sigmoid_2:y:01lstm_572/while/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_572/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_572_while_placeholder_1lstm_572_while_placeholder&lstm_572/while/lstm_cell_581/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_572/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_572/while/addAddV2lstm_572_while_placeholderlstm_572/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_572/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_572/while/add_1AddV2*lstm_572_while_lstm_572_while_loop_counterlstm_572/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_572/while/IdentityIdentitylstm_572/while/add_1:z:0^lstm_572/while/NoOp*
T0*
_output_shapes
: ?
lstm_572/while/Identity_1Identity0lstm_572_while_lstm_572_while_maximum_iterations^lstm_572/while/NoOp*
T0*
_output_shapes
: t
lstm_572/while/Identity_2Identitylstm_572/while/add:z:0^lstm_572/while/NoOp*
T0*
_output_shapes
: ?
lstm_572/while/Identity_3IdentityClstm_572/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_572/while/NoOp*
T0*
_output_shapes
: ?
lstm_572/while/Identity_4Identity&lstm_572/while/lstm_cell_581/mul_2:z:0^lstm_572/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_572/while/Identity_5Identity&lstm_572/while/lstm_cell_581/add_1:z:0^lstm_572/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_572/while/NoOpNoOp4^lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp3^lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp5^lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_572_while_identity lstm_572/while/Identity:output:0"?
lstm_572_while_identity_1"lstm_572/while/Identity_1:output:0"?
lstm_572_while_identity_2"lstm_572/while/Identity_2:output:0"?
lstm_572_while_identity_3"lstm_572/while/Identity_3:output:0"?
lstm_572_while_identity_4"lstm_572/while/Identity_4:output:0"?
lstm_572_while_identity_5"lstm_572/while/Identity_5:output:0"T
'lstm_572_while_lstm_572_strided_slice_1)lstm_572_while_lstm_572_strided_slice_1_0"~
<lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource>lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource_0"?
=lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource?lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource_0"|
;lstm_572_while_lstm_cell_581_matmul_readvariableop_resource=lstm_572_while_lstm_cell_581_matmul_readvariableop_resource_0"?
clstm_572_while_tensorarrayv2read_tensorlistgetitem_lstm_572_tensorarrayunstack_tensorlistfromtensorelstm_572_while_tensorarrayv2read_tensorlistgetitem_lstm_572_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp3lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp2h
2lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp2lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp2l
4lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp4lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?8
?
while_body_3519041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_580_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_580_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_580_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_580_matmul_readvariableop_resource:	d?G
4while_lstm_cell_580_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_580_biasadd_readvariableop_resource:	???*while/lstm_cell_580/BiasAdd/ReadVariableOp?)while/lstm_cell_580/MatMul/ReadVariableOp?+while/lstm_cell_580/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_580/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_580_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_580/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_580_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_580/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_580/addAddV2$while/lstm_cell_580/MatMul:product:0&while/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_580_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_580/BiasAddBiasAddwhile/lstm_cell_580/add:z:02while/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_580/splitSplit,while/lstm_cell_580/split/split_dim:output:0$while/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_580/SigmoidSigmoid"while/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_1Sigmoid"while/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mulMul!while/lstm_cell_580/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_580/ReluRelu"while/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_1Mulwhile/lstm_cell_580/Sigmoid:y:0&while/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/add_1AddV2while/lstm_cell_580/mul:z:0while/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_2Sigmoid"while/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_580/Relu_1Reluwhile/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_2Mul!while/lstm_cell_580/Sigmoid_2:y:0(while/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_580/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_580/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_580/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_580/BiasAdd/ReadVariableOp*^while/lstm_cell_580/MatMul/ReadVariableOp,^while/lstm_cell_580/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_580_biasadd_readvariableop_resource5while_lstm_cell_580_biasadd_readvariableop_resource_0"n
4while_lstm_cell_580_matmul_1_readvariableop_resource6while_lstm_cell_580_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_580_matmul_readvariableop_resource4while_lstm_cell_580_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_580/BiasAdd/ReadVariableOp*while/lstm_cell_580/BiasAdd/ReadVariableOp2V
)while/lstm_cell_580/MatMul/ReadVariableOp)while/lstm_cell_580/MatMul/ReadVariableOp2Z
+while/lstm_cell_580/MatMul_1/ReadVariableOp+while/lstm_cell_580/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_190_lstm_571_while_cond_3514924L
Hsequential_190_lstm_571_while_sequential_190_lstm_571_while_loop_counterR
Nsequential_190_lstm_571_while_sequential_190_lstm_571_while_maximum_iterations-
)sequential_190_lstm_571_while_placeholder/
+sequential_190_lstm_571_while_placeholder_1/
+sequential_190_lstm_571_while_placeholder_2/
+sequential_190_lstm_571_while_placeholder_3N
Jsequential_190_lstm_571_while_less_sequential_190_lstm_571_strided_slice_1e
asequential_190_lstm_571_while_sequential_190_lstm_571_while_cond_3514924___redundant_placeholder0e
asequential_190_lstm_571_while_sequential_190_lstm_571_while_cond_3514924___redundant_placeholder1e
asequential_190_lstm_571_while_sequential_190_lstm_571_while_cond_3514924___redundant_placeholder2e
asequential_190_lstm_571_while_sequential_190_lstm_571_while_cond_3514924___redundant_placeholder3*
&sequential_190_lstm_571_while_identity
?
"sequential_190/lstm_571/while/LessLess)sequential_190_lstm_571_while_placeholderJsequential_190_lstm_571_while_less_sequential_190_lstm_571_strided_slice_1*
T0*
_output_shapes
: {
&sequential_190/lstm_571/while/IdentityIdentity&sequential_190/lstm_571/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_190_lstm_571_while_identity/sequential_190/lstm_571/while/Identity:output:0*(
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
while_body_3519470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_580_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_580_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_580_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_580_matmul_readvariableop_resource:	d?G
4while_lstm_cell_580_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_580_biasadd_readvariableop_resource:	???*while/lstm_cell_580/BiasAdd/ReadVariableOp?)while/lstm_cell_580/MatMul/ReadVariableOp?+while/lstm_cell_580/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_580/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_580_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_580/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_580_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_580/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_580/addAddV2$while/lstm_cell_580/MatMul:product:0&while/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_580_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_580/BiasAddBiasAddwhile/lstm_cell_580/add:z:02while/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_580/splitSplit,while/lstm_cell_580/split/split_dim:output:0$while/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_580/SigmoidSigmoid"while/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_1Sigmoid"while/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mulMul!while/lstm_cell_580/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_580/ReluRelu"while/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_1Mulwhile/lstm_cell_580/Sigmoid:y:0&while/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/add_1AddV2while/lstm_cell_580/mul:z:0while/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_2Sigmoid"while/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_580/Relu_1Reluwhile/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_2Mul!while/lstm_cell_580/Sigmoid_2:y:0(while/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_580/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_580/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_580/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_580/BiasAdd/ReadVariableOp*^while/lstm_cell_580/MatMul/ReadVariableOp,^while/lstm_cell_580/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_580_biasadd_readvariableop_resource5while_lstm_cell_580_biasadd_readvariableop_resource_0"n
4while_lstm_cell_580_matmul_1_readvariableop_resource6while_lstm_cell_580_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_580_matmul_readvariableop_resource4while_lstm_cell_580_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_580/BiasAdd/ReadVariableOp*while/lstm_cell_580/BiasAdd/ReadVariableOp2V
)while/lstm_cell_580/MatMul/ReadVariableOp)while/lstm_cell_580/MatMul/ReadVariableOp2Z
+while/lstm_cell_580/MatMul_1/ReadVariableOp+while/lstm_cell_580/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517895

inputsH
5lstm_570_lstm_cell_579_matmul_readvariableop_resource:	?J
7lstm_570_lstm_cell_579_matmul_1_readvariableop_resource:	d?E
6lstm_570_lstm_cell_579_biasadd_readvariableop_resource:	?H
5lstm_571_lstm_cell_580_matmul_readvariableop_resource:	d?J
7lstm_571_lstm_cell_580_matmul_1_readvariableop_resource:	2?E
6lstm_571_lstm_cell_580_biasadd_readvariableop_resource:	?G
5lstm_572_lstm_cell_581_matmul_readvariableop_resource:2(I
7lstm_572_lstm_cell_581_matmul_1_readvariableop_resource:
(D
6lstm_572_lstm_cell_581_biasadd_readvariableop_resource:(:
(dense_190_matmul_readvariableop_resource:
7
)dense_190_biasadd_readvariableop_resource:
identity?? dense_190/BiasAdd/ReadVariableOp?dense_190/MatMul/ReadVariableOp?-lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp?,lstm_570/lstm_cell_579/MatMul/ReadVariableOp?.lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp?lstm_570/while?-lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp?,lstm_571/lstm_cell_580/MatMul/ReadVariableOp?.lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp?lstm_571/while?-lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp?,lstm_572/lstm_cell_581/MatMul/ReadVariableOp?.lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp?lstm_572/whileD
lstm_570/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_570/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_570/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_570/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_570/strided_sliceStridedSlicelstm_570/Shape:output:0%lstm_570/strided_slice/stack:output:0'lstm_570/strided_slice/stack_1:output:0'lstm_570/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_570/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_570/zeros/packedPacklstm_570/strided_slice:output:0 lstm_570/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_570/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_570/zerosFilllstm_570/zeros/packed:output:0lstm_570/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_570/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_570/zeros_1/packedPacklstm_570/strided_slice:output:0"lstm_570/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_570/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_570/zeros_1Fill lstm_570/zeros_1/packed:output:0lstm_570/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_570/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_570/transpose	Transposeinputs lstm_570/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_570/Shape_1Shapelstm_570/transpose:y:0*
T0*
_output_shapes
:h
lstm_570/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_570/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_570/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_570/strided_slice_1StridedSlicelstm_570/Shape_1:output:0'lstm_570/strided_slice_1/stack:output:0)lstm_570/strided_slice_1/stack_1:output:0)lstm_570/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_570/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_570/TensorArrayV2TensorListReserve-lstm_570/TensorArrayV2/element_shape:output:0!lstm_570/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_570/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_570/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_570/transpose:y:0Glstm_570/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_570/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_570/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_570/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_570/strided_slice_2StridedSlicelstm_570/transpose:y:0'lstm_570/strided_slice_2/stack:output:0)lstm_570/strided_slice_2/stack_1:output:0)lstm_570/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_570/lstm_cell_579/MatMul/ReadVariableOpReadVariableOp5lstm_570_lstm_cell_579_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_570/lstm_cell_579/MatMulMatMul!lstm_570/strided_slice_2:output:04lstm_570/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_570/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp7lstm_570_lstm_cell_579_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_570/lstm_cell_579/MatMul_1MatMullstm_570/zeros:output:06lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_570/lstm_cell_579/addAddV2'lstm_570/lstm_cell_579/MatMul:product:0)lstm_570/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_570/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp6lstm_570_lstm_cell_579_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_570/lstm_cell_579/BiasAddBiasAddlstm_570/lstm_cell_579/add:z:05lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_570/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_570/lstm_cell_579/splitSplit/lstm_570/lstm_cell_579/split/split_dim:output:0'lstm_570/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_570/lstm_cell_579/SigmoidSigmoid%lstm_570/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_570/lstm_cell_579/Sigmoid_1Sigmoid%lstm_570/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_570/lstm_cell_579/mulMul$lstm_570/lstm_cell_579/Sigmoid_1:y:0lstm_570/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_570/lstm_cell_579/ReluRelu%lstm_570/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_570/lstm_cell_579/mul_1Mul"lstm_570/lstm_cell_579/Sigmoid:y:0)lstm_570/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_570/lstm_cell_579/add_1AddV2lstm_570/lstm_cell_579/mul:z:0 lstm_570/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_570/lstm_cell_579/Sigmoid_2Sigmoid%lstm_570/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_570/lstm_cell_579/Relu_1Relu lstm_570/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_570/lstm_cell_579/mul_2Mul$lstm_570/lstm_cell_579/Sigmoid_2:y:0+lstm_570/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_570/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_570/TensorArrayV2_1TensorListReserve/lstm_570/TensorArrayV2_1/element_shape:output:0!lstm_570/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_570/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_570/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_570/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_570/whileWhile$lstm_570/while/loop_counter:output:0*lstm_570/while/maximum_iterations:output:0lstm_570/time:output:0!lstm_570/TensorArrayV2_1:handle:0lstm_570/zeros:output:0lstm_570/zeros_1:output:0!lstm_570/strided_slice_1:output:0@lstm_570/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_570_lstm_cell_579_matmul_readvariableop_resource7lstm_570_lstm_cell_579_matmul_1_readvariableop_resource6lstm_570_lstm_cell_579_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_570_while_body_3517527*'
condR
lstm_570_while_cond_3517526*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_570/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_570/TensorArrayV2Stack/TensorListStackTensorListStacklstm_570/while:output:3Blstm_570/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_570/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_570/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_570/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_570/strided_slice_3StridedSlice4lstm_570/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_570/strided_slice_3/stack:output:0)lstm_570/strided_slice_3/stack_1:output:0)lstm_570/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_570/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_570/transpose_1	Transpose4lstm_570/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_570/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_570/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_571/ShapeShapelstm_570/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_571/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_571/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_571/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_571/strided_sliceStridedSlicelstm_571/Shape:output:0%lstm_571/strided_slice/stack:output:0'lstm_571/strided_slice/stack_1:output:0'lstm_571/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_571/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_571/zeros/packedPacklstm_571/strided_slice:output:0 lstm_571/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_571/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_571/zerosFilllstm_571/zeros/packed:output:0lstm_571/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_571/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_571/zeros_1/packedPacklstm_571/strided_slice:output:0"lstm_571/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_571/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_571/zeros_1Fill lstm_571/zeros_1/packed:output:0lstm_571/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_571/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_571/transpose	Transposelstm_570/transpose_1:y:0 lstm_571/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_571/Shape_1Shapelstm_571/transpose:y:0*
T0*
_output_shapes
:h
lstm_571/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_571/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_571/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_571/strided_slice_1StridedSlicelstm_571/Shape_1:output:0'lstm_571/strided_slice_1/stack:output:0)lstm_571/strided_slice_1/stack_1:output:0)lstm_571/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_571/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_571/TensorArrayV2TensorListReserve-lstm_571/TensorArrayV2/element_shape:output:0!lstm_571/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_571/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_571/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_571/transpose:y:0Glstm_571/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_571/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_571/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_571/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_571/strided_slice_2StridedSlicelstm_571/transpose:y:0'lstm_571/strided_slice_2/stack:output:0)lstm_571/strided_slice_2/stack_1:output:0)lstm_571/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_571/lstm_cell_580/MatMul/ReadVariableOpReadVariableOp5lstm_571_lstm_cell_580_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_571/lstm_cell_580/MatMulMatMul!lstm_571/strided_slice_2:output:04lstm_571/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_571/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp7lstm_571_lstm_cell_580_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_571/lstm_cell_580/MatMul_1MatMullstm_571/zeros:output:06lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_571/lstm_cell_580/addAddV2'lstm_571/lstm_cell_580/MatMul:product:0)lstm_571/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_571/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp6lstm_571_lstm_cell_580_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_571/lstm_cell_580/BiasAddBiasAddlstm_571/lstm_cell_580/add:z:05lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_571/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_571/lstm_cell_580/splitSplit/lstm_571/lstm_cell_580/split/split_dim:output:0'lstm_571/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_571/lstm_cell_580/SigmoidSigmoid%lstm_571/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_571/lstm_cell_580/Sigmoid_1Sigmoid%lstm_571/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_571/lstm_cell_580/mulMul$lstm_571/lstm_cell_580/Sigmoid_1:y:0lstm_571/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_571/lstm_cell_580/ReluRelu%lstm_571/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_571/lstm_cell_580/mul_1Mul"lstm_571/lstm_cell_580/Sigmoid:y:0)lstm_571/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_571/lstm_cell_580/add_1AddV2lstm_571/lstm_cell_580/mul:z:0 lstm_571/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_571/lstm_cell_580/Sigmoid_2Sigmoid%lstm_571/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_571/lstm_cell_580/Relu_1Relu lstm_571/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_571/lstm_cell_580/mul_2Mul$lstm_571/lstm_cell_580/Sigmoid_2:y:0+lstm_571/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_571/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_571/TensorArrayV2_1TensorListReserve/lstm_571/TensorArrayV2_1/element_shape:output:0!lstm_571/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_571/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_571/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_571/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_571/whileWhile$lstm_571/while/loop_counter:output:0*lstm_571/while/maximum_iterations:output:0lstm_571/time:output:0!lstm_571/TensorArrayV2_1:handle:0lstm_571/zeros:output:0lstm_571/zeros_1:output:0!lstm_571/strided_slice_1:output:0@lstm_571/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_571_lstm_cell_580_matmul_readvariableop_resource7lstm_571_lstm_cell_580_matmul_1_readvariableop_resource6lstm_571_lstm_cell_580_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_571_while_body_3517666*'
condR
lstm_571_while_cond_3517665*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_571/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_571/TensorArrayV2Stack/TensorListStackTensorListStacklstm_571/while:output:3Blstm_571/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_571/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_571/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_571/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_571/strided_slice_3StridedSlice4lstm_571/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_571/strided_slice_3/stack:output:0)lstm_571/strided_slice_3/stack_1:output:0)lstm_571/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_571/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_571/transpose_1	Transpose4lstm_571/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_571/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_571/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_572/ShapeShapelstm_571/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_572/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_572/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_572/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_572/strided_sliceStridedSlicelstm_572/Shape:output:0%lstm_572/strided_slice/stack:output:0'lstm_572/strided_slice/stack_1:output:0'lstm_572/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_572/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_572/zeros/packedPacklstm_572/strided_slice:output:0 lstm_572/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_572/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_572/zerosFilllstm_572/zeros/packed:output:0lstm_572/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_572/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_572/zeros_1/packedPacklstm_572/strided_slice:output:0"lstm_572/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_572/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_572/zeros_1Fill lstm_572/zeros_1/packed:output:0lstm_572/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_572/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_572/transpose	Transposelstm_571/transpose_1:y:0 lstm_572/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_572/Shape_1Shapelstm_572/transpose:y:0*
T0*
_output_shapes
:h
lstm_572/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_572/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_572/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_572/strided_slice_1StridedSlicelstm_572/Shape_1:output:0'lstm_572/strided_slice_1/stack:output:0)lstm_572/strided_slice_1/stack_1:output:0)lstm_572/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_572/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_572/TensorArrayV2TensorListReserve-lstm_572/TensorArrayV2/element_shape:output:0!lstm_572/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_572/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_572/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_572/transpose:y:0Glstm_572/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_572/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_572/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_572/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_572/strided_slice_2StridedSlicelstm_572/transpose:y:0'lstm_572/strided_slice_2/stack:output:0)lstm_572/strided_slice_2/stack_1:output:0)lstm_572/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_572/lstm_cell_581/MatMul/ReadVariableOpReadVariableOp5lstm_572_lstm_cell_581_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_572/lstm_cell_581/MatMulMatMul!lstm_572/strided_slice_2:output:04lstm_572/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_572/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp7lstm_572_lstm_cell_581_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_572/lstm_cell_581/MatMul_1MatMullstm_572/zeros:output:06lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_572/lstm_cell_581/addAddV2'lstm_572/lstm_cell_581/MatMul:product:0)lstm_572/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_572/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp6lstm_572_lstm_cell_581_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_572/lstm_cell_581/BiasAddBiasAddlstm_572/lstm_cell_581/add:z:05lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_572/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_572/lstm_cell_581/splitSplit/lstm_572/lstm_cell_581/split/split_dim:output:0'lstm_572/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_572/lstm_cell_581/SigmoidSigmoid%lstm_572/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_572/lstm_cell_581/Sigmoid_1Sigmoid%lstm_572/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_572/lstm_cell_581/mulMul$lstm_572/lstm_cell_581/Sigmoid_1:y:0lstm_572/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_572/lstm_cell_581/ReluRelu%lstm_572/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_572/lstm_cell_581/mul_1Mul"lstm_572/lstm_cell_581/Sigmoid:y:0)lstm_572/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_572/lstm_cell_581/add_1AddV2lstm_572/lstm_cell_581/mul:z:0 lstm_572/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_572/lstm_cell_581/Sigmoid_2Sigmoid%lstm_572/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_572/lstm_cell_581/Relu_1Relu lstm_572/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_572/lstm_cell_581/mul_2Mul$lstm_572/lstm_cell_581/Sigmoid_2:y:0+lstm_572/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_572/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_572/TensorArrayV2_1TensorListReserve/lstm_572/TensorArrayV2_1/element_shape:output:0!lstm_572/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_572/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_572/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_572/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_572/whileWhile$lstm_572/while/loop_counter:output:0*lstm_572/while/maximum_iterations:output:0lstm_572/time:output:0!lstm_572/TensorArrayV2_1:handle:0lstm_572/zeros:output:0lstm_572/zeros_1:output:0!lstm_572/strided_slice_1:output:0@lstm_572/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_572_lstm_cell_581_matmul_readvariableop_resource7lstm_572_lstm_cell_581_matmul_1_readvariableop_resource6lstm_572_lstm_cell_581_biasadd_readvariableop_resource*
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
_stateful_parallelism( *'
bodyR
lstm_572_while_body_3517805*'
condR
lstm_572_while_cond_3517804*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_572/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_572/TensorArrayV2Stack/TensorListStackTensorListStacklstm_572/while:output:3Blstm_572/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_572/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_572/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_572/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_572/strided_slice_3StridedSlice4lstm_572/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_572/strided_slice_3/stack:output:0)lstm_572/strided_slice_3/stack_1:output:0)lstm_572/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_572/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_572/transpose_1	Transpose4lstm_572/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_572/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_572/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_190/MatMul/ReadVariableOpReadVariableOp(dense_190_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_190/MatMulMatMul!lstm_572/strided_slice_3:output:0'dense_190/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_190/BiasAdd/ReadVariableOpReadVariableOp)dense_190_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_190/BiasAddBiasAdddense_190/MatMul:product:0(dense_190/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_190/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_190/BiasAdd/ReadVariableOp ^dense_190/MatMul/ReadVariableOp.^lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp-^lstm_570/lstm_cell_579/MatMul/ReadVariableOp/^lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp^lstm_570/while.^lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp-^lstm_571/lstm_cell_580/MatMul/ReadVariableOp/^lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp^lstm_571/while.^lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp-^lstm_572/lstm_cell_581/MatMul/ReadVariableOp/^lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp^lstm_572/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_190/BiasAdd/ReadVariableOp dense_190/BiasAdd/ReadVariableOp2B
dense_190/MatMul/ReadVariableOpdense_190/MatMul/ReadVariableOp2^
-lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp-lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp2\
,lstm_570/lstm_cell_579/MatMul/ReadVariableOp,lstm_570/lstm_cell_579/MatMul/ReadVariableOp2`
.lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp.lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp2 
lstm_570/whilelstm_570/while2^
-lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp-lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp2\
,lstm_571/lstm_cell_580/MatMul/ReadVariableOp,lstm_571/lstm_cell_580/MatMul/ReadVariableOp2`
.lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp.lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp2 
lstm_571/whilelstm_571/while2^
-lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp-lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp2\
,lstm_572/lstm_cell_581/MatMul/ReadVariableOp,lstm_572/lstm_cell_581/MatMul/ReadVariableOp2`
.lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp.lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp2 
lstm_572/whilelstm_572/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3516418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3516418___redundant_placeholder05
1while_while_cond_3516418___redundant_placeholder15
1while_while_cond_3516418___redundant_placeholder25
1while_while_cond_3516418___redundant_placeholder3
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
?
?
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3515717

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
?J
?
E__inference_lstm_572_layer_call_and_return_conditional_losses_3520170

inputs>
,lstm_cell_581_matmul_readvariableop_resource:2(@
.lstm_cell_581_matmul_1_readvariableop_resource:
(;
-lstm_cell_581_biasadd_readvariableop_resource:(
identity??$lstm_cell_581/BiasAdd/ReadVariableOp?#lstm_cell_581/MatMul/ReadVariableOp?%lstm_cell_581/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_581/MatMul/ReadVariableOpReadVariableOp,lstm_cell_581_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_581/MatMulMatMulstrided_slice_2:output:0+lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_581_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_581/MatMul_1MatMulzeros:output:0-lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_581/addAddV2lstm_cell_581/MatMul:product:0 lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_581_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_581/BiasAddBiasAddlstm_cell_581/add:z:0,lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_581/splitSplit&lstm_cell_581/split/split_dim:output:0lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_581/SigmoidSigmoidlstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_1Sigmoidlstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_581/mulMullstm_cell_581/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_581/ReluRelulstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_1Mullstm_cell_581/Sigmoid:y:0 lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_581/add_1AddV2lstm_cell_581/mul:z:0lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_2Sigmoidlstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_581/Relu_1Relulstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_2Mullstm_cell_581/Sigmoid_2:y:0"lstm_cell_581/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_581_matmul_readvariableop_resource.lstm_cell_581_matmul_1_readvariableop_resource-lstm_cell_581_biasadd_readvariableop_resource*
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
while_body_3520086*
condR
while_cond_3520085*K
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
NoOpNoOp%^lstm_cell_581/BiasAdd/ReadVariableOp$^lstm_cell_581/MatMul/ReadVariableOp&^lstm_cell_581/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_581/BiasAdd/ReadVariableOp$lstm_cell_581/BiasAdd/ReadVariableOp2J
#lstm_cell_581/MatMul/ReadVariableOp#lstm_cell_581/MatMul/ReadVariableOp2N
%lstm_cell_581/MatMul_1/ReadVariableOp%lstm_cell_581/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_571_layer_call_and_return_conditional_losses_3517034

inputs?
,lstm_cell_580_matmul_readvariableop_resource:	d?A
.lstm_cell_580_matmul_1_readvariableop_resource:	2?<
-lstm_cell_580_biasadd_readvariableop_resource:	?
identity??$lstm_cell_580/BiasAdd/ReadVariableOp?#lstm_cell_580/MatMul/ReadVariableOp?%lstm_cell_580/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_580/MatMul/ReadVariableOpReadVariableOp,lstm_cell_580_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_580/MatMulMatMulstrided_slice_2:output:0+lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_580_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_580/MatMul_1MatMulzeros:output:0-lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_580/addAddV2lstm_cell_580/MatMul:product:0 lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_580_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_580/BiasAddBiasAddlstm_cell_580/add:z:0,lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_580/splitSplit&lstm_cell_580/split/split_dim:output:0lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_580/SigmoidSigmoidlstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_1Sigmoidlstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_580/mulMullstm_cell_580/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_580/ReluRelulstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_1Mullstm_cell_580/Sigmoid:y:0 lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_580/add_1AddV2lstm_cell_580/mul:z:0lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_2Sigmoidlstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_580/Relu_1Relulstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_2Mullstm_cell_580/Sigmoid_2:y:0"lstm_cell_580/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_580_matmul_readvariableop_resource.lstm_cell_580_matmul_1_readvariableop_resource-lstm_cell_580_biasadd_readvariableop_resource*
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
while_body_3516950*
condR
while_cond_3516949*K
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
NoOpNoOp%^lstm_cell_580/BiasAdd/ReadVariableOp$^lstm_cell_580/MatMul/ReadVariableOp&^lstm_cell_580/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_580/BiasAdd/ReadVariableOp$lstm_cell_580/BiasAdd/ReadVariableOp2J
#lstm_cell_580/MatMul/ReadVariableOp#lstm_cell_580/MatMul/ReadVariableOp2N
%lstm_cell_580/MatMul_1/ReadVariableOp%lstm_cell_580/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_190_layer_call_fn_3516703
lstm_570_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_570_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *T
fORM
K__inference_sequential_190_layer_call_and_return_conditional_losses_3516678o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_570_input
?
?
while_cond_3516784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3516784___redundant_placeholder05
1while_while_cond_3516784___redundant_placeholder15
1while_while_cond_3516784___redundant_placeholder25
1while_while_cond_3516784___redundant_placeholder3
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
?T
?
*sequential_190_lstm_572_while_body_3515064L
Hsequential_190_lstm_572_while_sequential_190_lstm_572_while_loop_counterR
Nsequential_190_lstm_572_while_sequential_190_lstm_572_while_maximum_iterations-
)sequential_190_lstm_572_while_placeholder/
+sequential_190_lstm_572_while_placeholder_1/
+sequential_190_lstm_572_while_placeholder_2/
+sequential_190_lstm_572_while_placeholder_3K
Gsequential_190_lstm_572_while_sequential_190_lstm_572_strided_slice_1_0?
?sequential_190_lstm_572_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_572_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_190_lstm_572_while_lstm_cell_581_matmul_readvariableop_resource_0:2(`
Nsequential_190_lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource_0:
([
Msequential_190_lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource_0:(*
&sequential_190_lstm_572_while_identity,
(sequential_190_lstm_572_while_identity_1,
(sequential_190_lstm_572_while_identity_2,
(sequential_190_lstm_572_while_identity_3,
(sequential_190_lstm_572_while_identity_4,
(sequential_190_lstm_572_while_identity_5I
Esequential_190_lstm_572_while_sequential_190_lstm_572_strided_slice_1?
?sequential_190_lstm_572_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_572_tensorarrayunstack_tensorlistfromtensor\
Jsequential_190_lstm_572_while_lstm_cell_581_matmul_readvariableop_resource:2(^
Lsequential_190_lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource:
(Y
Ksequential_190_lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource:(??Bsequential_190/lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp?Asequential_190/lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp?Csequential_190/lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp?
Osequential_190/lstm_572/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_190/lstm_572/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_190_lstm_572_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_572_tensorarrayunstack_tensorlistfromtensor_0)sequential_190_lstm_572_while_placeholderXsequential_190/lstm_572/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_190/lstm_572/while/lstm_cell_581/MatMul/ReadVariableOpReadVariableOpLsequential_190_lstm_572_while_lstm_cell_581_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_190/lstm_572/while/lstm_cell_581/MatMulMatMulHsequential_190/lstm_572/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_190/lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_190/lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOpNsequential_190_lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_190/lstm_572/while/lstm_cell_581/MatMul_1MatMul+sequential_190_lstm_572_while_placeholder_2Ksequential_190/lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_190/lstm_572/while/lstm_cell_581/addAddV2<sequential_190/lstm_572/while/lstm_cell_581/MatMul:product:0>sequential_190/lstm_572/while/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_190/lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOpMsequential_190_lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_190/lstm_572/while/lstm_cell_581/BiasAddBiasAdd3sequential_190/lstm_572/while/lstm_cell_581/add:z:0Jsequential_190/lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_190/lstm_572/while/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_190/lstm_572/while/lstm_cell_581/splitSplitDsequential_190/lstm_572/while/lstm_cell_581/split/split_dim:output:0<sequential_190/lstm_572/while/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_190/lstm_572/while/lstm_cell_581/SigmoidSigmoid:sequential_190/lstm_572/while/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_190/lstm_572/while/lstm_cell_581/Sigmoid_1Sigmoid:sequential_190/lstm_572/while/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_190/lstm_572/while/lstm_cell_581/mulMul9sequential_190/lstm_572/while/lstm_cell_581/Sigmoid_1:y:0+sequential_190_lstm_572_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_190/lstm_572/while/lstm_cell_581/ReluRelu:sequential_190/lstm_572/while/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_190/lstm_572/while/lstm_cell_581/mul_1Mul7sequential_190/lstm_572/while/lstm_cell_581/Sigmoid:y:0>sequential_190/lstm_572/while/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_190/lstm_572/while/lstm_cell_581/add_1AddV23sequential_190/lstm_572/while/lstm_cell_581/mul:z:05sequential_190/lstm_572/while/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_190/lstm_572/while/lstm_cell_581/Sigmoid_2Sigmoid:sequential_190/lstm_572/while/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_190/lstm_572/while/lstm_cell_581/Relu_1Relu5sequential_190/lstm_572/while/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_190/lstm_572/while/lstm_cell_581/mul_2Mul9sequential_190/lstm_572/while/lstm_cell_581/Sigmoid_2:y:0@sequential_190/lstm_572/while/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_190/lstm_572/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_190_lstm_572_while_placeholder_1)sequential_190_lstm_572_while_placeholder5sequential_190/lstm_572/while/lstm_cell_581/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_190/lstm_572/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_190/lstm_572/while/addAddV2)sequential_190_lstm_572_while_placeholder,sequential_190/lstm_572/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_190/lstm_572/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_190/lstm_572/while/add_1AddV2Hsequential_190_lstm_572_while_sequential_190_lstm_572_while_loop_counter.sequential_190/lstm_572/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_190/lstm_572/while/IdentityIdentity'sequential_190/lstm_572/while/add_1:z:0#^sequential_190/lstm_572/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_572/while/Identity_1IdentityNsequential_190_lstm_572_while_sequential_190_lstm_572_while_maximum_iterations#^sequential_190/lstm_572/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_572/while/Identity_2Identity%sequential_190/lstm_572/while/add:z:0#^sequential_190/lstm_572/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_572/while/Identity_3IdentityRsequential_190/lstm_572/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_190/lstm_572/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_572/while/Identity_4Identity5sequential_190/lstm_572/while/lstm_cell_581/mul_2:z:0#^sequential_190/lstm_572/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_190/lstm_572/while/Identity_5Identity5sequential_190/lstm_572/while/lstm_cell_581/add_1:z:0#^sequential_190/lstm_572/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_190/lstm_572/while/NoOpNoOpC^sequential_190/lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOpB^sequential_190/lstm_572/while/lstm_cell_581/MatMul/ReadVariableOpD^sequential_190/lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_190_lstm_572_while_identity/sequential_190/lstm_572/while/Identity:output:0"]
(sequential_190_lstm_572_while_identity_11sequential_190/lstm_572/while/Identity_1:output:0"]
(sequential_190_lstm_572_while_identity_21sequential_190/lstm_572/while/Identity_2:output:0"]
(sequential_190_lstm_572_while_identity_31sequential_190/lstm_572/while/Identity_3:output:0"]
(sequential_190_lstm_572_while_identity_41sequential_190/lstm_572/while/Identity_4:output:0"]
(sequential_190_lstm_572_while_identity_51sequential_190/lstm_572/while/Identity_5:output:0"?
Ksequential_190_lstm_572_while_lstm_cell_581_biasadd_readvariableop_resourceMsequential_190_lstm_572_while_lstm_cell_581_biasadd_readvariableop_resource_0"?
Lsequential_190_lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resourceNsequential_190_lstm_572_while_lstm_cell_581_matmul_1_readvariableop_resource_0"?
Jsequential_190_lstm_572_while_lstm_cell_581_matmul_readvariableop_resourceLsequential_190_lstm_572_while_lstm_cell_581_matmul_readvariableop_resource_0"?
Esequential_190_lstm_572_while_sequential_190_lstm_572_strided_slice_1Gsequential_190_lstm_572_while_sequential_190_lstm_572_strided_slice_1_0"?
?sequential_190_lstm_572_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_572_tensorarrayunstack_tensorlistfromtensor?sequential_190_lstm_572_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_572_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_190/lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOpBsequential_190/lstm_572/while/lstm_cell_581/BiasAdd/ReadVariableOp2?
Asequential_190/lstm_572/while/lstm_cell_581/MatMul/ReadVariableOpAsequential_190/lstm_572/while/lstm_cell_581/MatMul/ReadVariableOp2?
Csequential_190/lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOpCsequential_190/lstm_572/while/lstm_cell_581/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?8
?
while_body_3519327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_580_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_580_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_580_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_580_matmul_readvariableop_resource:	d?G
4while_lstm_cell_580_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_580_biasadd_readvariableop_resource:	???*while/lstm_cell_580/BiasAdd/ReadVariableOp?)while/lstm_cell_580/MatMul/ReadVariableOp?+while/lstm_cell_580/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_580/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_580_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_580/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_580_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_580/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_580/addAddV2$while/lstm_cell_580/MatMul:product:0&while/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_580_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_580/BiasAddBiasAddwhile/lstm_cell_580/add:z:02while/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_580/splitSplit,while/lstm_cell_580/split/split_dim:output:0$while/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_580/SigmoidSigmoid"while/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_1Sigmoid"while/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mulMul!while/lstm_cell_580/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_580/ReluRelu"while/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_1Mulwhile/lstm_cell_580/Sigmoid:y:0&while/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/add_1AddV2while/lstm_cell_580/mul:z:0while/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_2Sigmoid"while/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_580/Relu_1Reluwhile/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_2Mul!while/lstm_cell_580/Sigmoid_2:y:0(while/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_580/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_580/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_580/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_580/BiasAdd/ReadVariableOp*^while/lstm_cell_580/MatMul/ReadVariableOp,^while/lstm_cell_580/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_580_biasadd_readvariableop_resource5while_lstm_cell_580_biasadd_readvariableop_resource_0"n
4while_lstm_cell_580_matmul_1_readvariableop_resource6while_lstm_cell_580_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_580_matmul_readvariableop_resource4while_lstm_cell_580_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_580/BiasAdd/ReadVariableOp*while/lstm_cell_580/BiasAdd/ReadVariableOp2V
)while/lstm_cell_580/MatMul/ReadVariableOp)while/lstm_cell_580/MatMul/ReadVariableOp2Z
+while/lstm_cell_580/MatMul_1/ReadVariableOp+while/lstm_cell_580/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
lstm_572_while_cond_3517804.
*lstm_572_while_lstm_572_while_loop_counter4
0lstm_572_while_lstm_572_while_maximum_iterations
lstm_572_while_placeholder 
lstm_572_while_placeholder_1 
lstm_572_while_placeholder_2 
lstm_572_while_placeholder_30
,lstm_572_while_less_lstm_572_strided_slice_1G
Clstm_572_while_lstm_572_while_cond_3517804___redundant_placeholder0G
Clstm_572_while_lstm_572_while_cond_3517804___redundant_placeholder1G
Clstm_572_while_lstm_572_while_cond_3517804___redundant_placeholder2G
Clstm_572_while_lstm_572_while_cond_3517804___redundant_placeholder3
lstm_572_while_identity
?
lstm_572/while/LessLesslstm_572_while_placeholder,lstm_572_while_less_lstm_572_strided_slice_1*
T0*
_output_shapes
: ]
lstm_572/while/IdentityIdentitylstm_572/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_572_while_identity lstm_572/while/Identity:output:0*(
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
*__inference_lstm_570_layer_call_fn_3518333
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
GPU 2J 8? *N
fIRG
E__inference_lstm_570_layer_call_and_return_conditional_losses_3515304|
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
?C
?

lstm_571_while_body_3518093.
*lstm_571_while_lstm_571_while_loop_counter4
0lstm_571_while_lstm_571_while_maximum_iterations
lstm_571_while_placeholder 
lstm_571_while_placeholder_1 
lstm_571_while_placeholder_2 
lstm_571_while_placeholder_3-
)lstm_571_while_lstm_571_strided_slice_1_0i
elstm_571_while_tensorarrayv2read_tensorlistgetitem_lstm_571_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_571_while_lstm_cell_580_matmul_readvariableop_resource_0:	d?R
?lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource_0:	2?M
>lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource_0:	?
lstm_571_while_identity
lstm_571_while_identity_1
lstm_571_while_identity_2
lstm_571_while_identity_3
lstm_571_while_identity_4
lstm_571_while_identity_5+
'lstm_571_while_lstm_571_strided_slice_1g
clstm_571_while_tensorarrayv2read_tensorlistgetitem_lstm_571_tensorarrayunstack_tensorlistfromtensorN
;lstm_571_while_lstm_cell_580_matmul_readvariableop_resource:	d?P
=lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource:	2?K
<lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource:	???3lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp?2lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp?4lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp?
@lstm_571/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_571/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_571_while_tensorarrayv2read_tensorlistgetitem_lstm_571_tensorarrayunstack_tensorlistfromtensor_0lstm_571_while_placeholderIlstm_571/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_571/while/lstm_cell_580/MatMul/ReadVariableOpReadVariableOp=lstm_571_while_lstm_cell_580_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_571/while/lstm_cell_580/MatMulMatMul9lstm_571/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp?lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_571/while/lstm_cell_580/MatMul_1MatMullstm_571_while_placeholder_2<lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_571/while/lstm_cell_580/addAddV2-lstm_571/while/lstm_cell_580/MatMul:product:0/lstm_571/while/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp>lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_571/while/lstm_cell_580/BiasAddBiasAdd$lstm_571/while/lstm_cell_580/add:z:0;lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_571/while/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_571/while/lstm_cell_580/splitSplit5lstm_571/while/lstm_cell_580/split/split_dim:output:0-lstm_571/while/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_571/while/lstm_cell_580/SigmoidSigmoid+lstm_571/while/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_571/while/lstm_cell_580/Sigmoid_1Sigmoid+lstm_571/while/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_571/while/lstm_cell_580/mulMul*lstm_571/while/lstm_cell_580/Sigmoid_1:y:0lstm_571_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_571/while/lstm_cell_580/ReluRelu+lstm_571/while/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_571/while/lstm_cell_580/mul_1Mul(lstm_571/while/lstm_cell_580/Sigmoid:y:0/lstm_571/while/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_571/while/lstm_cell_580/add_1AddV2$lstm_571/while/lstm_cell_580/mul:z:0&lstm_571/while/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_571/while/lstm_cell_580/Sigmoid_2Sigmoid+lstm_571/while/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_571/while/lstm_cell_580/Relu_1Relu&lstm_571/while/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_571/while/lstm_cell_580/mul_2Mul*lstm_571/while/lstm_cell_580/Sigmoid_2:y:01lstm_571/while/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_571/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_571_while_placeholder_1lstm_571_while_placeholder&lstm_571/while/lstm_cell_580/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_571/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_571/while/addAddV2lstm_571_while_placeholderlstm_571/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_571/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_571/while/add_1AddV2*lstm_571_while_lstm_571_while_loop_counterlstm_571/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_571/while/IdentityIdentitylstm_571/while/add_1:z:0^lstm_571/while/NoOp*
T0*
_output_shapes
: ?
lstm_571/while/Identity_1Identity0lstm_571_while_lstm_571_while_maximum_iterations^lstm_571/while/NoOp*
T0*
_output_shapes
: t
lstm_571/while/Identity_2Identitylstm_571/while/add:z:0^lstm_571/while/NoOp*
T0*
_output_shapes
: ?
lstm_571/while/Identity_3IdentityClstm_571/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_571/while/NoOp*
T0*
_output_shapes
: ?
lstm_571/while/Identity_4Identity&lstm_571/while/lstm_cell_580/mul_2:z:0^lstm_571/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_571/while/Identity_5Identity&lstm_571/while/lstm_cell_580/add_1:z:0^lstm_571/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_571/while/NoOpNoOp4^lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp3^lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp5^lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_571_while_identity lstm_571/while/Identity:output:0"?
lstm_571_while_identity_1"lstm_571/while/Identity_1:output:0"?
lstm_571_while_identity_2"lstm_571/while/Identity_2:output:0"?
lstm_571_while_identity_3"lstm_571/while/Identity_3:output:0"?
lstm_571_while_identity_4"lstm_571/while/Identity_4:output:0"?
lstm_571_while_identity_5"lstm_571/while/Identity_5:output:0"T
'lstm_571_while_lstm_571_strided_slice_1)lstm_571_while_lstm_571_strided_slice_1_0"~
<lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource>lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource_0"?
=lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource?lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource_0"|
;lstm_571_while_lstm_cell_580_matmul_readvariableop_resource=lstm_571_while_lstm_cell_580_matmul_readvariableop_resource_0"?
clstm_571_while_tensorarrayv2read_tensorlistgetitem_lstm_571_tensorarrayunstack_tensorlistfromtensorelstm_571_while_tensorarrayv2read_tensorlistgetitem_lstm_571_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp3lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp2h
2lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp2lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp2l
4lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp4lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_190_lstm_570_while_cond_3514785L
Hsequential_190_lstm_570_while_sequential_190_lstm_570_while_loop_counterR
Nsequential_190_lstm_570_while_sequential_190_lstm_570_while_maximum_iterations-
)sequential_190_lstm_570_while_placeholder/
+sequential_190_lstm_570_while_placeholder_1/
+sequential_190_lstm_570_while_placeholder_2/
+sequential_190_lstm_570_while_placeholder_3N
Jsequential_190_lstm_570_while_less_sequential_190_lstm_570_strided_slice_1e
asequential_190_lstm_570_while_sequential_190_lstm_570_while_cond_3514785___redundant_placeholder0e
asequential_190_lstm_570_while_sequential_190_lstm_570_while_cond_3514785___redundant_placeholder1e
asequential_190_lstm_570_while_sequential_190_lstm_570_while_cond_3514785___redundant_placeholder2e
asequential_190_lstm_570_while_sequential_190_lstm_570_while_cond_3514785___redundant_placeholder3*
&sequential_190_lstm_570_while_identity
?
"sequential_190/lstm_570/while/LessLess)sequential_190_lstm_570_while_placeholderJsequential_190_lstm_570_while_less_sequential_190_lstm_570_strided_slice_1*
T0*
_output_shapes
: {
&sequential_190/lstm_570/while/IdentityIdentity&sequential_190/lstm_570/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_190_lstm_570_while_identity/sequential_190/lstm_570/while/Identity:output:0*(
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
?
F__inference_dense_190_layer_call_and_return_conditional_losses_3516671

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
while_body_3519184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_580_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_580_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_580_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_580_matmul_readvariableop_resource:	d?G
4while_lstm_cell_580_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_580_biasadd_readvariableop_resource:	???*while/lstm_cell_580/BiasAdd/ReadVariableOp?)while/lstm_cell_580/MatMul/ReadVariableOp?+while/lstm_cell_580/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_580/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_580_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_580/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_580_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_580/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_580/addAddV2$while/lstm_cell_580/MatMul:product:0&while/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_580_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_580/BiasAddBiasAddwhile/lstm_cell_580/add:z:02while/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_580/splitSplit,while/lstm_cell_580/split/split_dim:output:0$while/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_580/SigmoidSigmoid"while/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_1Sigmoid"while/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mulMul!while/lstm_cell_580/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_580/ReluRelu"while/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_1Mulwhile/lstm_cell_580/Sigmoid:y:0&while/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/add_1AddV2while/lstm_cell_580/mul:z:0while/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_2Sigmoid"while/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_580/Relu_1Reluwhile/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_2Mul!while/lstm_cell_580/Sigmoid_2:y:0(while/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_580/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_580/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_580/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_580/BiasAdd/ReadVariableOp*^while/lstm_cell_580/MatMul/ReadVariableOp,^while/lstm_cell_580/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_580_biasadd_readvariableop_resource5while_lstm_cell_580_biasadd_readvariableop_resource_0"n
4while_lstm_cell_580_matmul_1_readvariableop_resource6while_lstm_cell_580_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_580_matmul_readvariableop_resource4while_lstm_cell_580_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_580/BiasAdd/ReadVariableOp*while/lstm_cell_580/BiasAdd/ReadVariableOp2V
)while/lstm_cell_580/MatMul/ReadVariableOp)while/lstm_cell_580/MatMul/ReadVariableOp2Z
+while/lstm_cell_580/MatMul_1/ReadVariableOp+while/lstm_cell_580/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
"__inference__wrapped_model_3515154
lstm_570_inputW
Dsequential_190_lstm_570_lstm_cell_579_matmul_readvariableop_resource:	?Y
Fsequential_190_lstm_570_lstm_cell_579_matmul_1_readvariableop_resource:	d?T
Esequential_190_lstm_570_lstm_cell_579_biasadd_readvariableop_resource:	?W
Dsequential_190_lstm_571_lstm_cell_580_matmul_readvariableop_resource:	d?Y
Fsequential_190_lstm_571_lstm_cell_580_matmul_1_readvariableop_resource:	2?T
Esequential_190_lstm_571_lstm_cell_580_biasadd_readvariableop_resource:	?V
Dsequential_190_lstm_572_lstm_cell_581_matmul_readvariableop_resource:2(X
Fsequential_190_lstm_572_lstm_cell_581_matmul_1_readvariableop_resource:
(S
Esequential_190_lstm_572_lstm_cell_581_biasadd_readvariableop_resource:(I
7sequential_190_dense_190_matmul_readvariableop_resource:
F
8sequential_190_dense_190_biasadd_readvariableop_resource:
identity??/sequential_190/dense_190/BiasAdd/ReadVariableOp?.sequential_190/dense_190/MatMul/ReadVariableOp?<sequential_190/lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp?;sequential_190/lstm_570/lstm_cell_579/MatMul/ReadVariableOp?=sequential_190/lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp?sequential_190/lstm_570/while?<sequential_190/lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp?;sequential_190/lstm_571/lstm_cell_580/MatMul/ReadVariableOp?=sequential_190/lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp?sequential_190/lstm_571/while?<sequential_190/lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp?;sequential_190/lstm_572/lstm_cell_581/MatMul/ReadVariableOp?=sequential_190/lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp?sequential_190/lstm_572/while[
sequential_190/lstm_570/ShapeShapelstm_570_input*
T0*
_output_shapes
:u
+sequential_190/lstm_570/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_190/lstm_570/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_190/lstm_570/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_190/lstm_570/strided_sliceStridedSlice&sequential_190/lstm_570/Shape:output:04sequential_190/lstm_570/strided_slice/stack:output:06sequential_190/lstm_570/strided_slice/stack_1:output:06sequential_190/lstm_570/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_190/lstm_570/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_190/lstm_570/zeros/packedPack.sequential_190/lstm_570/strided_slice:output:0/sequential_190/lstm_570/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_190/lstm_570/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_190/lstm_570/zerosFill-sequential_190/lstm_570/zeros/packed:output:0,sequential_190/lstm_570/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_190/lstm_570/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_190/lstm_570/zeros_1/packedPack.sequential_190/lstm_570/strided_slice:output:01sequential_190/lstm_570/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_190/lstm_570/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_190/lstm_570/zeros_1Fill/sequential_190/lstm_570/zeros_1/packed:output:0.sequential_190/lstm_570/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_190/lstm_570/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_190/lstm_570/transpose	Transposelstm_570_input/sequential_190/lstm_570/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_190/lstm_570/Shape_1Shape%sequential_190/lstm_570/transpose:y:0*
T0*
_output_shapes
:w
-sequential_190/lstm_570/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_190/lstm_570/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_190/lstm_570/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_190/lstm_570/strided_slice_1StridedSlice(sequential_190/lstm_570/Shape_1:output:06sequential_190/lstm_570/strided_slice_1/stack:output:08sequential_190/lstm_570/strided_slice_1/stack_1:output:08sequential_190/lstm_570/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_190/lstm_570/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_190/lstm_570/TensorArrayV2TensorListReserve<sequential_190/lstm_570/TensorArrayV2/element_shape:output:00sequential_190/lstm_570/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_190/lstm_570/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_190/lstm_570/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_190/lstm_570/transpose:y:0Vsequential_190/lstm_570/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_190/lstm_570/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_190/lstm_570/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_190/lstm_570/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_190/lstm_570/strided_slice_2StridedSlice%sequential_190/lstm_570/transpose:y:06sequential_190/lstm_570/strided_slice_2/stack:output:08sequential_190/lstm_570/strided_slice_2/stack_1:output:08sequential_190/lstm_570/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_190/lstm_570/lstm_cell_579/MatMul/ReadVariableOpReadVariableOpDsequential_190_lstm_570_lstm_cell_579_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_190/lstm_570/lstm_cell_579/MatMulMatMul0sequential_190/lstm_570/strided_slice_2:output:0Csequential_190/lstm_570/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_190/lstm_570/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOpFsequential_190_lstm_570_lstm_cell_579_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_190/lstm_570/lstm_cell_579/MatMul_1MatMul&sequential_190/lstm_570/zeros:output:0Esequential_190/lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_190/lstm_570/lstm_cell_579/addAddV26sequential_190/lstm_570/lstm_cell_579/MatMul:product:08sequential_190/lstm_570/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_190/lstm_570/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOpEsequential_190_lstm_570_lstm_cell_579_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_190/lstm_570/lstm_cell_579/BiasAddBiasAdd-sequential_190/lstm_570/lstm_cell_579/add:z:0Dsequential_190/lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_190/lstm_570/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_190/lstm_570/lstm_cell_579/splitSplit>sequential_190/lstm_570/lstm_cell_579/split/split_dim:output:06sequential_190/lstm_570/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_190/lstm_570/lstm_cell_579/SigmoidSigmoid4sequential_190/lstm_570/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_190/lstm_570/lstm_cell_579/Sigmoid_1Sigmoid4sequential_190/lstm_570/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_190/lstm_570/lstm_cell_579/mulMul3sequential_190/lstm_570/lstm_cell_579/Sigmoid_1:y:0(sequential_190/lstm_570/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_190/lstm_570/lstm_cell_579/ReluRelu4sequential_190/lstm_570/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_190/lstm_570/lstm_cell_579/mul_1Mul1sequential_190/lstm_570/lstm_cell_579/Sigmoid:y:08sequential_190/lstm_570/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_190/lstm_570/lstm_cell_579/add_1AddV2-sequential_190/lstm_570/lstm_cell_579/mul:z:0/sequential_190/lstm_570/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_190/lstm_570/lstm_cell_579/Sigmoid_2Sigmoid4sequential_190/lstm_570/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_190/lstm_570/lstm_cell_579/Relu_1Relu/sequential_190/lstm_570/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_190/lstm_570/lstm_cell_579/mul_2Mul3sequential_190/lstm_570/lstm_cell_579/Sigmoid_2:y:0:sequential_190/lstm_570/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_190/lstm_570/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_190/lstm_570/TensorArrayV2_1TensorListReserve>sequential_190/lstm_570/TensorArrayV2_1/element_shape:output:00sequential_190/lstm_570/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_190/lstm_570/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_190/lstm_570/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_190/lstm_570/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_190/lstm_570/whileWhile3sequential_190/lstm_570/while/loop_counter:output:09sequential_190/lstm_570/while/maximum_iterations:output:0%sequential_190/lstm_570/time:output:00sequential_190/lstm_570/TensorArrayV2_1:handle:0&sequential_190/lstm_570/zeros:output:0(sequential_190/lstm_570/zeros_1:output:00sequential_190/lstm_570/strided_slice_1:output:0Osequential_190/lstm_570/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_190_lstm_570_lstm_cell_579_matmul_readvariableop_resourceFsequential_190_lstm_570_lstm_cell_579_matmul_1_readvariableop_resourceEsequential_190_lstm_570_lstm_cell_579_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_190_lstm_570_while_body_3514786*6
cond.R,
*sequential_190_lstm_570_while_cond_3514785*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_190/lstm_570/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_190/lstm_570/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_190/lstm_570/while:output:3Qsequential_190/lstm_570/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_190/lstm_570/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_190/lstm_570/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_190/lstm_570/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_190/lstm_570/strided_slice_3StridedSliceCsequential_190/lstm_570/TensorArrayV2Stack/TensorListStack:tensor:06sequential_190/lstm_570/strided_slice_3/stack:output:08sequential_190/lstm_570/strided_slice_3/stack_1:output:08sequential_190/lstm_570/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_190/lstm_570/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_190/lstm_570/transpose_1	TransposeCsequential_190/lstm_570/TensorArrayV2Stack/TensorListStack:tensor:01sequential_190/lstm_570/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_190/lstm_570/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_190/lstm_571/ShapeShape'sequential_190/lstm_570/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_190/lstm_571/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_190/lstm_571/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_190/lstm_571/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_190/lstm_571/strided_sliceStridedSlice&sequential_190/lstm_571/Shape:output:04sequential_190/lstm_571/strided_slice/stack:output:06sequential_190/lstm_571/strided_slice/stack_1:output:06sequential_190/lstm_571/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_190/lstm_571/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_190/lstm_571/zeros/packedPack.sequential_190/lstm_571/strided_slice:output:0/sequential_190/lstm_571/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_190/lstm_571/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_190/lstm_571/zerosFill-sequential_190/lstm_571/zeros/packed:output:0,sequential_190/lstm_571/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_190/lstm_571/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_190/lstm_571/zeros_1/packedPack.sequential_190/lstm_571/strided_slice:output:01sequential_190/lstm_571/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_190/lstm_571/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_190/lstm_571/zeros_1Fill/sequential_190/lstm_571/zeros_1/packed:output:0.sequential_190/lstm_571/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_190/lstm_571/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_190/lstm_571/transpose	Transpose'sequential_190/lstm_570/transpose_1:y:0/sequential_190/lstm_571/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_190/lstm_571/Shape_1Shape%sequential_190/lstm_571/transpose:y:0*
T0*
_output_shapes
:w
-sequential_190/lstm_571/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_190/lstm_571/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_190/lstm_571/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_190/lstm_571/strided_slice_1StridedSlice(sequential_190/lstm_571/Shape_1:output:06sequential_190/lstm_571/strided_slice_1/stack:output:08sequential_190/lstm_571/strided_slice_1/stack_1:output:08sequential_190/lstm_571/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_190/lstm_571/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_190/lstm_571/TensorArrayV2TensorListReserve<sequential_190/lstm_571/TensorArrayV2/element_shape:output:00sequential_190/lstm_571/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_190/lstm_571/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_190/lstm_571/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_190/lstm_571/transpose:y:0Vsequential_190/lstm_571/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_190/lstm_571/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_190/lstm_571/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_190/lstm_571/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_190/lstm_571/strided_slice_2StridedSlice%sequential_190/lstm_571/transpose:y:06sequential_190/lstm_571/strided_slice_2/stack:output:08sequential_190/lstm_571/strided_slice_2/stack_1:output:08sequential_190/lstm_571/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_190/lstm_571/lstm_cell_580/MatMul/ReadVariableOpReadVariableOpDsequential_190_lstm_571_lstm_cell_580_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_190/lstm_571/lstm_cell_580/MatMulMatMul0sequential_190/lstm_571/strided_slice_2:output:0Csequential_190/lstm_571/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_190/lstm_571/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOpFsequential_190_lstm_571_lstm_cell_580_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_190/lstm_571/lstm_cell_580/MatMul_1MatMul&sequential_190/lstm_571/zeros:output:0Esequential_190/lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_190/lstm_571/lstm_cell_580/addAddV26sequential_190/lstm_571/lstm_cell_580/MatMul:product:08sequential_190/lstm_571/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_190/lstm_571/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOpEsequential_190_lstm_571_lstm_cell_580_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_190/lstm_571/lstm_cell_580/BiasAddBiasAdd-sequential_190/lstm_571/lstm_cell_580/add:z:0Dsequential_190/lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_190/lstm_571/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_190/lstm_571/lstm_cell_580/splitSplit>sequential_190/lstm_571/lstm_cell_580/split/split_dim:output:06sequential_190/lstm_571/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_190/lstm_571/lstm_cell_580/SigmoidSigmoid4sequential_190/lstm_571/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_190/lstm_571/lstm_cell_580/Sigmoid_1Sigmoid4sequential_190/lstm_571/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_190/lstm_571/lstm_cell_580/mulMul3sequential_190/lstm_571/lstm_cell_580/Sigmoid_1:y:0(sequential_190/lstm_571/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_190/lstm_571/lstm_cell_580/ReluRelu4sequential_190/lstm_571/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_190/lstm_571/lstm_cell_580/mul_1Mul1sequential_190/lstm_571/lstm_cell_580/Sigmoid:y:08sequential_190/lstm_571/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_190/lstm_571/lstm_cell_580/add_1AddV2-sequential_190/lstm_571/lstm_cell_580/mul:z:0/sequential_190/lstm_571/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_190/lstm_571/lstm_cell_580/Sigmoid_2Sigmoid4sequential_190/lstm_571/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_190/lstm_571/lstm_cell_580/Relu_1Relu/sequential_190/lstm_571/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_190/lstm_571/lstm_cell_580/mul_2Mul3sequential_190/lstm_571/lstm_cell_580/Sigmoid_2:y:0:sequential_190/lstm_571/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_190/lstm_571/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_190/lstm_571/TensorArrayV2_1TensorListReserve>sequential_190/lstm_571/TensorArrayV2_1/element_shape:output:00sequential_190/lstm_571/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_190/lstm_571/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_190/lstm_571/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_190/lstm_571/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_190/lstm_571/whileWhile3sequential_190/lstm_571/while/loop_counter:output:09sequential_190/lstm_571/while/maximum_iterations:output:0%sequential_190/lstm_571/time:output:00sequential_190/lstm_571/TensorArrayV2_1:handle:0&sequential_190/lstm_571/zeros:output:0(sequential_190/lstm_571/zeros_1:output:00sequential_190/lstm_571/strided_slice_1:output:0Osequential_190/lstm_571/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_190_lstm_571_lstm_cell_580_matmul_readvariableop_resourceFsequential_190_lstm_571_lstm_cell_580_matmul_1_readvariableop_resourceEsequential_190_lstm_571_lstm_cell_580_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_190_lstm_571_while_body_3514925*6
cond.R,
*sequential_190_lstm_571_while_cond_3514924*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_190/lstm_571/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_190/lstm_571/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_190/lstm_571/while:output:3Qsequential_190/lstm_571/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_190/lstm_571/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_190/lstm_571/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_190/lstm_571/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_190/lstm_571/strided_slice_3StridedSliceCsequential_190/lstm_571/TensorArrayV2Stack/TensorListStack:tensor:06sequential_190/lstm_571/strided_slice_3/stack:output:08sequential_190/lstm_571/strided_slice_3/stack_1:output:08sequential_190/lstm_571/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_190/lstm_571/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_190/lstm_571/transpose_1	TransposeCsequential_190/lstm_571/TensorArrayV2Stack/TensorListStack:tensor:01sequential_190/lstm_571/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_190/lstm_571/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_190/lstm_572/ShapeShape'sequential_190/lstm_571/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_190/lstm_572/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_190/lstm_572/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_190/lstm_572/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_190/lstm_572/strided_sliceStridedSlice&sequential_190/lstm_572/Shape:output:04sequential_190/lstm_572/strided_slice/stack:output:06sequential_190/lstm_572/strided_slice/stack_1:output:06sequential_190/lstm_572/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_190/lstm_572/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_190/lstm_572/zeros/packedPack.sequential_190/lstm_572/strided_slice:output:0/sequential_190/lstm_572/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_190/lstm_572/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_190/lstm_572/zerosFill-sequential_190/lstm_572/zeros/packed:output:0,sequential_190/lstm_572/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_190/lstm_572/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_190/lstm_572/zeros_1/packedPack.sequential_190/lstm_572/strided_slice:output:01sequential_190/lstm_572/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_190/lstm_572/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_190/lstm_572/zeros_1Fill/sequential_190/lstm_572/zeros_1/packed:output:0.sequential_190/lstm_572/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_190/lstm_572/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_190/lstm_572/transpose	Transpose'sequential_190/lstm_571/transpose_1:y:0/sequential_190/lstm_572/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_190/lstm_572/Shape_1Shape%sequential_190/lstm_572/transpose:y:0*
T0*
_output_shapes
:w
-sequential_190/lstm_572/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_190/lstm_572/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_190/lstm_572/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_190/lstm_572/strided_slice_1StridedSlice(sequential_190/lstm_572/Shape_1:output:06sequential_190/lstm_572/strided_slice_1/stack:output:08sequential_190/lstm_572/strided_slice_1/stack_1:output:08sequential_190/lstm_572/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_190/lstm_572/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_190/lstm_572/TensorArrayV2TensorListReserve<sequential_190/lstm_572/TensorArrayV2/element_shape:output:00sequential_190/lstm_572/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_190/lstm_572/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_190/lstm_572/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_190/lstm_572/transpose:y:0Vsequential_190/lstm_572/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_190/lstm_572/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_190/lstm_572/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_190/lstm_572/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_190/lstm_572/strided_slice_2StridedSlice%sequential_190/lstm_572/transpose:y:06sequential_190/lstm_572/strided_slice_2/stack:output:08sequential_190/lstm_572/strided_slice_2/stack_1:output:08sequential_190/lstm_572/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_190/lstm_572/lstm_cell_581/MatMul/ReadVariableOpReadVariableOpDsequential_190_lstm_572_lstm_cell_581_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_190/lstm_572/lstm_cell_581/MatMulMatMul0sequential_190/lstm_572/strided_slice_2:output:0Csequential_190/lstm_572/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_190/lstm_572/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOpFsequential_190_lstm_572_lstm_cell_581_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_190/lstm_572/lstm_cell_581/MatMul_1MatMul&sequential_190/lstm_572/zeros:output:0Esequential_190/lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_190/lstm_572/lstm_cell_581/addAddV26sequential_190/lstm_572/lstm_cell_581/MatMul:product:08sequential_190/lstm_572/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_190/lstm_572/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOpEsequential_190_lstm_572_lstm_cell_581_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_190/lstm_572/lstm_cell_581/BiasAddBiasAdd-sequential_190/lstm_572/lstm_cell_581/add:z:0Dsequential_190/lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_190/lstm_572/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_190/lstm_572/lstm_cell_581/splitSplit>sequential_190/lstm_572/lstm_cell_581/split/split_dim:output:06sequential_190/lstm_572/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_190/lstm_572/lstm_cell_581/SigmoidSigmoid4sequential_190/lstm_572/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_190/lstm_572/lstm_cell_581/Sigmoid_1Sigmoid4sequential_190/lstm_572/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_190/lstm_572/lstm_cell_581/mulMul3sequential_190/lstm_572/lstm_cell_581/Sigmoid_1:y:0(sequential_190/lstm_572/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_190/lstm_572/lstm_cell_581/ReluRelu4sequential_190/lstm_572/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_190/lstm_572/lstm_cell_581/mul_1Mul1sequential_190/lstm_572/lstm_cell_581/Sigmoid:y:08sequential_190/lstm_572/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_190/lstm_572/lstm_cell_581/add_1AddV2-sequential_190/lstm_572/lstm_cell_581/mul:z:0/sequential_190/lstm_572/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_190/lstm_572/lstm_cell_581/Sigmoid_2Sigmoid4sequential_190/lstm_572/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_190/lstm_572/lstm_cell_581/Relu_1Relu/sequential_190/lstm_572/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_190/lstm_572/lstm_cell_581/mul_2Mul3sequential_190/lstm_572/lstm_cell_581/Sigmoid_2:y:0:sequential_190/lstm_572/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_190/lstm_572/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_190/lstm_572/TensorArrayV2_1TensorListReserve>sequential_190/lstm_572/TensorArrayV2_1/element_shape:output:00sequential_190/lstm_572/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_190/lstm_572/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_190/lstm_572/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_190/lstm_572/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_190/lstm_572/whileWhile3sequential_190/lstm_572/while/loop_counter:output:09sequential_190/lstm_572/while/maximum_iterations:output:0%sequential_190/lstm_572/time:output:00sequential_190/lstm_572/TensorArrayV2_1:handle:0&sequential_190/lstm_572/zeros:output:0(sequential_190/lstm_572/zeros_1:output:00sequential_190/lstm_572/strided_slice_1:output:0Osequential_190/lstm_572/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_190_lstm_572_lstm_cell_581_matmul_readvariableop_resourceFsequential_190_lstm_572_lstm_cell_581_matmul_1_readvariableop_resourceEsequential_190_lstm_572_lstm_cell_581_biasadd_readvariableop_resource*
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
_stateful_parallelism( *6
body.R,
*sequential_190_lstm_572_while_body_3515064*6
cond.R,
*sequential_190_lstm_572_while_cond_3515063*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_190/lstm_572/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_190/lstm_572/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_190/lstm_572/while:output:3Qsequential_190/lstm_572/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_190/lstm_572/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_190/lstm_572/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_190/lstm_572/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_190/lstm_572/strided_slice_3StridedSliceCsequential_190/lstm_572/TensorArrayV2Stack/TensorListStack:tensor:06sequential_190/lstm_572/strided_slice_3/stack:output:08sequential_190/lstm_572/strided_slice_3/stack_1:output:08sequential_190/lstm_572/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_190/lstm_572/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_190/lstm_572/transpose_1	TransposeCsequential_190/lstm_572/TensorArrayV2Stack/TensorListStack:tensor:01sequential_190/lstm_572/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_190/lstm_572/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_190/dense_190/MatMul/ReadVariableOpReadVariableOp7sequential_190_dense_190_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_190/dense_190/MatMulMatMul0sequential_190/lstm_572/strided_slice_3:output:06sequential_190/dense_190/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_190/dense_190/BiasAdd/ReadVariableOpReadVariableOp8sequential_190_dense_190_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_190/dense_190/BiasAddBiasAdd)sequential_190/dense_190/MatMul:product:07sequential_190/dense_190/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_190/dense_190/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_190/dense_190/BiasAdd/ReadVariableOp/^sequential_190/dense_190/MatMul/ReadVariableOp=^sequential_190/lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp<^sequential_190/lstm_570/lstm_cell_579/MatMul/ReadVariableOp>^sequential_190/lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp^sequential_190/lstm_570/while=^sequential_190/lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp<^sequential_190/lstm_571/lstm_cell_580/MatMul/ReadVariableOp>^sequential_190/lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp^sequential_190/lstm_571/while=^sequential_190/lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp<^sequential_190/lstm_572/lstm_cell_581/MatMul/ReadVariableOp>^sequential_190/lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp^sequential_190/lstm_572/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_190/dense_190/BiasAdd/ReadVariableOp/sequential_190/dense_190/BiasAdd/ReadVariableOp2`
.sequential_190/dense_190/MatMul/ReadVariableOp.sequential_190/dense_190/MatMul/ReadVariableOp2|
<sequential_190/lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp<sequential_190/lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp2z
;sequential_190/lstm_570/lstm_cell_579/MatMul/ReadVariableOp;sequential_190/lstm_570/lstm_cell_579/MatMul/ReadVariableOp2~
=sequential_190/lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp=sequential_190/lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp2>
sequential_190/lstm_570/whilesequential_190/lstm_570/while2|
<sequential_190/lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp<sequential_190/lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp2z
;sequential_190/lstm_571/lstm_cell_580/MatMul/ReadVariableOp;sequential_190/lstm_571/lstm_cell_580/MatMul/ReadVariableOp2~
=sequential_190/lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp=sequential_190/lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp2>
sequential_190/lstm_571/whilesequential_190/lstm_571/while2|
<sequential_190/lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp<sequential_190/lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp2z
;sequential_190/lstm_572/lstm_cell_581/MatMul/ReadVariableOp;sequential_190/lstm_572/lstm_cell_581/MatMul/ReadVariableOp2~
=sequential_190/lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp=sequential_190/lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp2>
sequential_190/lstm_572/whilesequential_190/lstm_572/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_570_input
?J
?
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516869

inputs>
,lstm_cell_581_matmul_readvariableop_resource:2(@
.lstm_cell_581_matmul_1_readvariableop_resource:
(;
-lstm_cell_581_biasadd_readvariableop_resource:(
identity??$lstm_cell_581/BiasAdd/ReadVariableOp?#lstm_cell_581/MatMul/ReadVariableOp?%lstm_cell_581/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_581/MatMul/ReadVariableOpReadVariableOp,lstm_cell_581_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_581/MatMulMatMulstrided_slice_2:output:0+lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_581_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_581/MatMul_1MatMulzeros:output:0-lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_581/addAddV2lstm_cell_581/MatMul:product:0 lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_581_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_581/BiasAddBiasAddlstm_cell_581/add:z:0,lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_581/splitSplit&lstm_cell_581/split/split_dim:output:0lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_581/SigmoidSigmoidlstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_1Sigmoidlstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_581/mulMullstm_cell_581/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_581/ReluRelulstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_1Mullstm_cell_581/Sigmoid:y:0 lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_581/add_1AddV2lstm_cell_581/mul:z:0lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_2Sigmoidlstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_581/Relu_1Relulstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_2Mullstm_cell_581/Sigmoid_2:y:0"lstm_cell_581/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_581_matmul_readvariableop_resource.lstm_cell_581_matmul_1_readvariableop_resource-lstm_cell_581_biasadd_readvariableop_resource*
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
while_body_3516785*
condR
while_cond_3516784*K
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
NoOpNoOp%^lstm_cell_581/BiasAdd/ReadVariableOp$^lstm_cell_581/MatMul/ReadVariableOp&^lstm_cell_581/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_581/BiasAdd/ReadVariableOp$lstm_cell_581/BiasAdd/ReadVariableOp2J
#lstm_cell_581/MatMul/ReadVariableOp#lstm_cell_581/MatMul/ReadVariableOp2N
%lstm_cell_581/MatMul_1/ReadVariableOp%lstm_cell_581/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_190_lstm_571_while_body_3514925L
Hsequential_190_lstm_571_while_sequential_190_lstm_571_while_loop_counterR
Nsequential_190_lstm_571_while_sequential_190_lstm_571_while_maximum_iterations-
)sequential_190_lstm_571_while_placeholder/
+sequential_190_lstm_571_while_placeholder_1/
+sequential_190_lstm_571_while_placeholder_2/
+sequential_190_lstm_571_while_placeholder_3K
Gsequential_190_lstm_571_while_sequential_190_lstm_571_strided_slice_1_0?
?sequential_190_lstm_571_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_571_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_190_lstm_571_while_lstm_cell_580_matmul_readvariableop_resource_0:	d?a
Nsequential_190_lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource_0:	2?\
Msequential_190_lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource_0:	?*
&sequential_190_lstm_571_while_identity,
(sequential_190_lstm_571_while_identity_1,
(sequential_190_lstm_571_while_identity_2,
(sequential_190_lstm_571_while_identity_3,
(sequential_190_lstm_571_while_identity_4,
(sequential_190_lstm_571_while_identity_5I
Esequential_190_lstm_571_while_sequential_190_lstm_571_strided_slice_1?
?sequential_190_lstm_571_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_571_tensorarrayunstack_tensorlistfromtensor]
Jsequential_190_lstm_571_while_lstm_cell_580_matmul_readvariableop_resource:	d?_
Lsequential_190_lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource:	2?Z
Ksequential_190_lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource:	???Bsequential_190/lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp?Asequential_190/lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp?Csequential_190/lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp?
Osequential_190/lstm_571/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_190/lstm_571/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_190_lstm_571_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_571_tensorarrayunstack_tensorlistfromtensor_0)sequential_190_lstm_571_while_placeholderXsequential_190/lstm_571/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_190/lstm_571/while/lstm_cell_580/MatMul/ReadVariableOpReadVariableOpLsequential_190_lstm_571_while_lstm_cell_580_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_190/lstm_571/while/lstm_cell_580/MatMulMatMulHsequential_190/lstm_571/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_190/lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_190/lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOpNsequential_190_lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_190/lstm_571/while/lstm_cell_580/MatMul_1MatMul+sequential_190_lstm_571_while_placeholder_2Ksequential_190/lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_190/lstm_571/while/lstm_cell_580/addAddV2<sequential_190/lstm_571/while/lstm_cell_580/MatMul:product:0>sequential_190/lstm_571/while/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_190/lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOpMsequential_190_lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_190/lstm_571/while/lstm_cell_580/BiasAddBiasAdd3sequential_190/lstm_571/while/lstm_cell_580/add:z:0Jsequential_190/lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_190/lstm_571/while/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_190/lstm_571/while/lstm_cell_580/splitSplitDsequential_190/lstm_571/while/lstm_cell_580/split/split_dim:output:0<sequential_190/lstm_571/while/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_190/lstm_571/while/lstm_cell_580/SigmoidSigmoid:sequential_190/lstm_571/while/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_190/lstm_571/while/lstm_cell_580/Sigmoid_1Sigmoid:sequential_190/lstm_571/while/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_190/lstm_571/while/lstm_cell_580/mulMul9sequential_190/lstm_571/while/lstm_cell_580/Sigmoid_1:y:0+sequential_190_lstm_571_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_190/lstm_571/while/lstm_cell_580/ReluRelu:sequential_190/lstm_571/while/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_190/lstm_571/while/lstm_cell_580/mul_1Mul7sequential_190/lstm_571/while/lstm_cell_580/Sigmoid:y:0>sequential_190/lstm_571/while/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_190/lstm_571/while/lstm_cell_580/add_1AddV23sequential_190/lstm_571/while/lstm_cell_580/mul:z:05sequential_190/lstm_571/while/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_190/lstm_571/while/lstm_cell_580/Sigmoid_2Sigmoid:sequential_190/lstm_571/while/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_190/lstm_571/while/lstm_cell_580/Relu_1Relu5sequential_190/lstm_571/while/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_190/lstm_571/while/lstm_cell_580/mul_2Mul9sequential_190/lstm_571/while/lstm_cell_580/Sigmoid_2:y:0@sequential_190/lstm_571/while/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_190/lstm_571/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_190_lstm_571_while_placeholder_1)sequential_190_lstm_571_while_placeholder5sequential_190/lstm_571/while/lstm_cell_580/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_190/lstm_571/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_190/lstm_571/while/addAddV2)sequential_190_lstm_571_while_placeholder,sequential_190/lstm_571/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_190/lstm_571/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_190/lstm_571/while/add_1AddV2Hsequential_190_lstm_571_while_sequential_190_lstm_571_while_loop_counter.sequential_190/lstm_571/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_190/lstm_571/while/IdentityIdentity'sequential_190/lstm_571/while/add_1:z:0#^sequential_190/lstm_571/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_571/while/Identity_1IdentityNsequential_190_lstm_571_while_sequential_190_lstm_571_while_maximum_iterations#^sequential_190/lstm_571/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_571/while/Identity_2Identity%sequential_190/lstm_571/while/add:z:0#^sequential_190/lstm_571/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_571/while/Identity_3IdentityRsequential_190/lstm_571/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_190/lstm_571/while/NoOp*
T0*
_output_shapes
: ?
(sequential_190/lstm_571/while/Identity_4Identity5sequential_190/lstm_571/while/lstm_cell_580/mul_2:z:0#^sequential_190/lstm_571/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_190/lstm_571/while/Identity_5Identity5sequential_190/lstm_571/while/lstm_cell_580/add_1:z:0#^sequential_190/lstm_571/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_190/lstm_571/while/NoOpNoOpC^sequential_190/lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOpB^sequential_190/lstm_571/while/lstm_cell_580/MatMul/ReadVariableOpD^sequential_190/lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_190_lstm_571_while_identity/sequential_190/lstm_571/while/Identity:output:0"]
(sequential_190_lstm_571_while_identity_11sequential_190/lstm_571/while/Identity_1:output:0"]
(sequential_190_lstm_571_while_identity_21sequential_190/lstm_571/while/Identity_2:output:0"]
(sequential_190_lstm_571_while_identity_31sequential_190/lstm_571/while/Identity_3:output:0"]
(sequential_190_lstm_571_while_identity_41sequential_190/lstm_571/while/Identity_4:output:0"]
(sequential_190_lstm_571_while_identity_51sequential_190/lstm_571/while/Identity_5:output:0"?
Ksequential_190_lstm_571_while_lstm_cell_580_biasadd_readvariableop_resourceMsequential_190_lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource_0"?
Lsequential_190_lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resourceNsequential_190_lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource_0"?
Jsequential_190_lstm_571_while_lstm_cell_580_matmul_readvariableop_resourceLsequential_190_lstm_571_while_lstm_cell_580_matmul_readvariableop_resource_0"?
Esequential_190_lstm_571_while_sequential_190_lstm_571_strided_slice_1Gsequential_190_lstm_571_while_sequential_190_lstm_571_strided_slice_1_0"?
?sequential_190_lstm_571_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_571_tensorarrayunstack_tensorlistfromtensor?sequential_190_lstm_571_while_tensorarrayv2read_tensorlistgetitem_sequential_190_lstm_571_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_190/lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOpBsequential_190/lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp2?
Asequential_190/lstm_571/while/lstm_cell_580/MatMul/ReadVariableOpAsequential_190/lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp2?
Csequential_190/lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOpCsequential_190/lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3518568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_579_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_579_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_579_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_579_matmul_readvariableop_resource:	?G
4while_lstm_cell_579_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_579_biasadd_readvariableop_resource:	???*while/lstm_cell_579/BiasAdd/ReadVariableOp?)while/lstm_cell_579/MatMul/ReadVariableOp?+while/lstm_cell_579/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_579/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_579_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_579/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_579_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_579/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_579/addAddV2$while/lstm_cell_579/MatMul:product:0&while/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_579_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_579/BiasAddBiasAddwhile/lstm_cell_579/add:z:02while/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_579/splitSplit,while/lstm_cell_579/split/split_dim:output:0$while/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_579/SigmoidSigmoid"while/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_1Sigmoid"while/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mulMul!while/lstm_cell_579/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_579/ReluRelu"while/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_1Mulwhile/lstm_cell_579/Sigmoid:y:0&while/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/add_1AddV2while/lstm_cell_579/mul:z:0while/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_2Sigmoid"while/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_579/Relu_1Reluwhile/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_2Mul!while/lstm_cell_579/Sigmoid_2:y:0(while/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_579/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_579/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_579/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_579/BiasAdd/ReadVariableOp*^while/lstm_cell_579/MatMul/ReadVariableOp,^while/lstm_cell_579/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_579_biasadd_readvariableop_resource5while_lstm_cell_579_biasadd_readvariableop_resource_0"n
4while_lstm_cell_579_matmul_1_readvariableop_resource6while_lstm_cell_579_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_579_matmul_readvariableop_resource4while_lstm_cell_579_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_579/BiasAdd/ReadVariableOp*while/lstm_cell_579/BiasAdd/ReadVariableOp2V
)while/lstm_cell_579/MatMul/ReadVariableOp)while/lstm_cell_579/MatMul/ReadVariableOp2Z
+while/lstm_cell_579/MatMul_1/ReadVariableOp+while/lstm_cell_579/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3518567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3518567___redundant_placeholder05
1while_while_cond_3518567___redundant_placeholder15
1while_while_cond_3518567___redundant_placeholder25
1while_while_cond_3518567___redundant_placeholder3
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
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519268
inputs_0?
,lstm_cell_580_matmul_readvariableop_resource:	d?A
.lstm_cell_580_matmul_1_readvariableop_resource:	2?<
-lstm_cell_580_biasadd_readvariableop_resource:	?
identity??$lstm_cell_580/BiasAdd/ReadVariableOp?#lstm_cell_580/MatMul/ReadVariableOp?%lstm_cell_580/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_580/MatMul/ReadVariableOpReadVariableOp,lstm_cell_580_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_580/MatMulMatMulstrided_slice_2:output:0+lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_580_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_580/MatMul_1MatMulzeros:output:0-lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_580/addAddV2lstm_cell_580/MatMul:product:0 lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_580_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_580/BiasAddBiasAddlstm_cell_580/add:z:0,lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_580/splitSplit&lstm_cell_580/split/split_dim:output:0lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_580/SigmoidSigmoidlstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_1Sigmoidlstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_580/mulMullstm_cell_580/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_580/ReluRelulstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_1Mullstm_cell_580/Sigmoid:y:0 lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_580/add_1AddV2lstm_cell_580/mul:z:0lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_2Sigmoidlstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_580/Relu_1Relulstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_2Mullstm_cell_580/Sigmoid_2:y:0"lstm_cell_580/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_580_matmul_readvariableop_resource.lstm_cell_580_matmul_1_readvariableop_resource-lstm_cell_580_biasadd_readvariableop_resource*
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
while_body_3519184*
condR
while_cond_3519183*K
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
NoOpNoOp%^lstm_cell_580/BiasAdd/ReadVariableOp$^lstm_cell_580/MatMul/ReadVariableOp&^lstm_cell_580/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_580/BiasAdd/ReadVariableOp$lstm_cell_580/BiasAdd/ReadVariableOp2J
#lstm_cell_580/MatMul/ReadVariableOp#lstm_cell_580/MatMul/ReadVariableOp2N
%lstm_cell_580/MatMul_1/ReadVariableOp%lstm_cell_580/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3518854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_579_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_579_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_579_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_579_matmul_readvariableop_resource:	?G
4while_lstm_cell_579_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_579_biasadd_readvariableop_resource:	???*while/lstm_cell_579/BiasAdd/ReadVariableOp?)while/lstm_cell_579/MatMul/ReadVariableOp?+while/lstm_cell_579/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_579/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_579_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_579/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_579_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_579/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_579/addAddV2$while/lstm_cell_579/MatMul:product:0&while/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_579_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_579/BiasAddBiasAddwhile/lstm_cell_579/add:z:02while/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_579/splitSplit,while/lstm_cell_579/split/split_dim:output:0$while/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_579/SigmoidSigmoid"while/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_1Sigmoid"while/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mulMul!while/lstm_cell_579/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_579/ReluRelu"while/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_1Mulwhile/lstm_cell_579/Sigmoid:y:0&while/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/add_1AddV2while/lstm_cell_579/mul:z:0while/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_2Sigmoid"while/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_579/Relu_1Reluwhile/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_2Mul!while/lstm_cell_579/Sigmoid_2:y:0(while/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_579/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_579/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_579/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_579/BiasAdd/ReadVariableOp*^while/lstm_cell_579/MatMul/ReadVariableOp,^while/lstm_cell_579/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_579_biasadd_readvariableop_resource5while_lstm_cell_579_biasadd_readvariableop_resource_0"n
4while_lstm_cell_579_matmul_1_readvariableop_resource6while_lstm_cell_579_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_579_matmul_readvariableop_resource4while_lstm_cell_579_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_579/BiasAdd/ReadVariableOp*while/lstm_cell_579/BiasAdd/ReadVariableOp2V
)while/lstm_cell_579/MatMul/ReadVariableOp)while/lstm_cell_579/MatMul/ReadVariableOp2Z
+while/lstm_cell_579/MatMul_1/ReadVariableOp+while/lstm_cell_579/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?C
?

lstm_570_while_body_3517954.
*lstm_570_while_lstm_570_while_loop_counter4
0lstm_570_while_lstm_570_while_maximum_iterations
lstm_570_while_placeholder 
lstm_570_while_placeholder_1 
lstm_570_while_placeholder_2 
lstm_570_while_placeholder_3-
)lstm_570_while_lstm_570_strided_slice_1_0i
elstm_570_while_tensorarrayv2read_tensorlistgetitem_lstm_570_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_570_while_lstm_cell_579_matmul_readvariableop_resource_0:	?R
?lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource_0:	d?M
>lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource_0:	?
lstm_570_while_identity
lstm_570_while_identity_1
lstm_570_while_identity_2
lstm_570_while_identity_3
lstm_570_while_identity_4
lstm_570_while_identity_5+
'lstm_570_while_lstm_570_strided_slice_1g
clstm_570_while_tensorarrayv2read_tensorlistgetitem_lstm_570_tensorarrayunstack_tensorlistfromtensorN
;lstm_570_while_lstm_cell_579_matmul_readvariableop_resource:	?P
=lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource:	d?K
<lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource:	???3lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp?2lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp?4lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp?
@lstm_570/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_570/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_570_while_tensorarrayv2read_tensorlistgetitem_lstm_570_tensorarrayunstack_tensorlistfromtensor_0lstm_570_while_placeholderIlstm_570/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_570/while/lstm_cell_579/MatMul/ReadVariableOpReadVariableOp=lstm_570_while_lstm_cell_579_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_570/while/lstm_cell_579/MatMulMatMul9lstm_570/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp?lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_570/while/lstm_cell_579/MatMul_1MatMullstm_570_while_placeholder_2<lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_570/while/lstm_cell_579/addAddV2-lstm_570/while/lstm_cell_579/MatMul:product:0/lstm_570/while/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp>lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_570/while/lstm_cell_579/BiasAddBiasAdd$lstm_570/while/lstm_cell_579/add:z:0;lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_570/while/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_570/while/lstm_cell_579/splitSplit5lstm_570/while/lstm_cell_579/split/split_dim:output:0-lstm_570/while/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_570/while/lstm_cell_579/SigmoidSigmoid+lstm_570/while/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_570/while/lstm_cell_579/Sigmoid_1Sigmoid+lstm_570/while/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_570/while/lstm_cell_579/mulMul*lstm_570/while/lstm_cell_579/Sigmoid_1:y:0lstm_570_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_570/while/lstm_cell_579/ReluRelu+lstm_570/while/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_570/while/lstm_cell_579/mul_1Mul(lstm_570/while/lstm_cell_579/Sigmoid:y:0/lstm_570/while/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_570/while/lstm_cell_579/add_1AddV2$lstm_570/while/lstm_cell_579/mul:z:0&lstm_570/while/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_570/while/lstm_cell_579/Sigmoid_2Sigmoid+lstm_570/while/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_570/while/lstm_cell_579/Relu_1Relu&lstm_570/while/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_570/while/lstm_cell_579/mul_2Mul*lstm_570/while/lstm_cell_579/Sigmoid_2:y:01lstm_570/while/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_570/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_570_while_placeholder_1lstm_570_while_placeholder&lstm_570/while/lstm_cell_579/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_570/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_570/while/addAddV2lstm_570_while_placeholderlstm_570/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_570/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_570/while/add_1AddV2*lstm_570_while_lstm_570_while_loop_counterlstm_570/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_570/while/IdentityIdentitylstm_570/while/add_1:z:0^lstm_570/while/NoOp*
T0*
_output_shapes
: ?
lstm_570/while/Identity_1Identity0lstm_570_while_lstm_570_while_maximum_iterations^lstm_570/while/NoOp*
T0*
_output_shapes
: t
lstm_570/while/Identity_2Identitylstm_570/while/add:z:0^lstm_570/while/NoOp*
T0*
_output_shapes
: ?
lstm_570/while/Identity_3IdentityClstm_570/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_570/while/NoOp*
T0*
_output_shapes
: ?
lstm_570/while/Identity_4Identity&lstm_570/while/lstm_cell_579/mul_2:z:0^lstm_570/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_570/while/Identity_5Identity&lstm_570/while/lstm_cell_579/add_1:z:0^lstm_570/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_570/while/NoOpNoOp4^lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp3^lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp5^lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_570_while_identity lstm_570/while/Identity:output:0"?
lstm_570_while_identity_1"lstm_570/while/Identity_1:output:0"?
lstm_570_while_identity_2"lstm_570/while/Identity_2:output:0"?
lstm_570_while_identity_3"lstm_570/while/Identity_3:output:0"?
lstm_570_while_identity_4"lstm_570/while/Identity_4:output:0"?
lstm_570_while_identity_5"lstm_570/while/Identity_5:output:0"T
'lstm_570_while_lstm_570_strided_slice_1)lstm_570_while_lstm_570_strided_slice_1_0"~
<lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource>lstm_570_while_lstm_cell_579_biasadd_readvariableop_resource_0"?
=lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource?lstm_570_while_lstm_cell_579_matmul_1_readvariableop_resource_0"|
;lstm_570_while_lstm_cell_579_matmul_readvariableop_resource=lstm_570_while_lstm_cell_579_matmul_readvariableop_resource_0"?
clstm_570_while_tensorarrayv2read_tensorlistgetitem_lstm_570_tensorarrayunstack_tensorlistfromtensorelstm_570_while_tensorarrayv2read_tensorlistgetitem_lstm_570_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp3lstm_570/while/lstm_cell_579/BiasAdd/ReadVariableOp2h
2lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp2lstm_570/while/lstm_cell_579/MatMul/ReadVariableOp2l
4lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp4lstm_570/while/lstm_cell_579/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_570_layer_call_and_return_conditional_losses_3516353

inputs?
,lstm_cell_579_matmul_readvariableop_resource:	?A
.lstm_cell_579_matmul_1_readvariableop_resource:	d?<
-lstm_cell_579_biasadd_readvariableop_resource:	?
identity??$lstm_cell_579/BiasAdd/ReadVariableOp?#lstm_cell_579/MatMul/ReadVariableOp?%lstm_cell_579/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_579/MatMul/ReadVariableOpReadVariableOp,lstm_cell_579_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_579/MatMulMatMulstrided_slice_2:output:0+lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_579_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_579/MatMul_1MatMulzeros:output:0-lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_579/addAddV2lstm_cell_579/MatMul:product:0 lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_579_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_579/BiasAddBiasAddlstm_cell_579/add:z:0,lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_579/splitSplit&lstm_cell_579/split/split_dim:output:0lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_579/SigmoidSigmoidlstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_1Sigmoidlstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_579/mulMullstm_cell_579/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_579/ReluRelulstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_1Mullstm_cell_579/Sigmoid:y:0 lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_579/add_1AddV2lstm_cell_579/mul:z:0lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_2Sigmoidlstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_579/Relu_1Relulstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_2Mullstm_cell_579/Sigmoid_2:y:0"lstm_cell_579/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_579_matmul_readvariableop_resource.lstm_cell_579_matmul_1_readvariableop_resource-lstm_cell_579_biasadd_readvariableop_resource*
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
while_body_3516269*
condR
while_cond_3516268*K
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
NoOpNoOp%^lstm_cell_579/BiasAdd/ReadVariableOp$^lstm_cell_579/MatMul/ReadVariableOp&^lstm_cell_579/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_579/BiasAdd/ReadVariableOp$lstm_cell_579/BiasAdd/ReadVariableOp2J
#lstm_cell_579/MatMul/ReadVariableOp#lstm_cell_579/MatMul/ReadVariableOp2N
%lstm_cell_579/MatMul_1/ReadVariableOp%lstm_cell_579/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3515367

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
?
E__inference_lstm_570_layer_call_and_return_conditional_losses_3515495

inputs(
lstm_cell_579_3515413:	?(
lstm_cell_579_3515415:	d?$
lstm_cell_579_3515417:	?
identity??%lstm_cell_579/StatefulPartitionedCall?while;
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
%lstm_cell_579/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_579_3515413lstm_cell_579_3515415lstm_cell_579_3515417*
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
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3515367n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_579_3515413lstm_cell_579_3515415lstm_cell_579_3515417*
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
while_body_3515426*
condR
while_cond_3515425*K
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
NoOpNoOp&^lstm_cell_579/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_579/StatefulPartitionedCall%lstm_cell_579/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_570_layer_call_fn_3518355

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
GPU 2J 8? *N
fIRG
E__inference_lstm_570_layer_call_and_return_conditional_losses_3516353s
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
while_cond_3519942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3519942___redundant_placeholder05
1while_while_cond_3519942___redundant_placeholder15
1while_while_cond_3519942___redundant_placeholder25
1while_while_cond_3519942___redundant_placeholder3
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
?
?
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3515571

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
?J
?
E__inference_lstm_570_layer_call_and_return_conditional_losses_3517199

inputs?
,lstm_cell_579_matmul_readvariableop_resource:	?A
.lstm_cell_579_matmul_1_readvariableop_resource:	d?<
-lstm_cell_579_biasadd_readvariableop_resource:	?
identity??$lstm_cell_579/BiasAdd/ReadVariableOp?#lstm_cell_579/MatMul/ReadVariableOp?%lstm_cell_579/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_579/MatMul/ReadVariableOpReadVariableOp,lstm_cell_579_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_579/MatMulMatMulstrided_slice_2:output:0+lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_579_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_579/MatMul_1MatMulzeros:output:0-lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_579/addAddV2lstm_cell_579/MatMul:product:0 lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_579_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_579/BiasAddBiasAddlstm_cell_579/add:z:0,lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_579/splitSplit&lstm_cell_579/split/split_dim:output:0lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_579/SigmoidSigmoidlstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_1Sigmoidlstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_579/mulMullstm_cell_579/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_579/ReluRelulstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_1Mullstm_cell_579/Sigmoid:y:0 lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_579/add_1AddV2lstm_cell_579/mul:z:0lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_2Sigmoidlstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_579/Relu_1Relulstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_2Mullstm_cell_579/Sigmoid_2:y:0"lstm_cell_579/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_579_matmul_readvariableop_resource.lstm_cell_579_matmul_1_readvariableop_resource-lstm_cell_579_biasadd_readvariableop_resource*
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
while_body_3517115*
condR
while_cond_3517114*K
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
NoOpNoOp%^lstm_cell_579/BiasAdd/ReadVariableOp$^lstm_cell_579/MatMul/ReadVariableOp&^lstm_cell_579/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_579/BiasAdd/ReadVariableOp$lstm_cell_579/BiasAdd/ReadVariableOp2J
#lstm_cell_579/MatMul/ReadVariableOp#lstm_cell_579/MatMul/ReadVariableOp2N
%lstm_cell_579/MatMul_1/ReadVariableOp%lstm_cell_579/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_190_layer_call_fn_3520179

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
GPU 2J 8? *O
fJRH
F__inference_dense_190_layer_call_and_return_conditional_losses_3516671o
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
?
?
K__inference_sequential_190_layer_call_and_return_conditional_losses_3516678

inputs#
lstm_570_3516354:	?#
lstm_570_3516356:	d?
lstm_570_3516358:	?#
lstm_571_3516504:	d?#
lstm_571_3516506:	2?
lstm_571_3516508:	?"
lstm_572_3516654:2("
lstm_572_3516656:
(
lstm_572_3516658:(#
dense_190_3516672:

dense_190_3516674:
identity??!dense_190/StatefulPartitionedCall? lstm_570/StatefulPartitionedCall? lstm_571/StatefulPartitionedCall? lstm_572/StatefulPartitionedCall?
 lstm_570/StatefulPartitionedCallStatefulPartitionedCallinputslstm_570_3516354lstm_570_3516356lstm_570_3516358*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_570_layer_call_and_return_conditional_losses_3516353?
 lstm_571/StatefulPartitionedCallStatefulPartitionedCall)lstm_570/StatefulPartitionedCall:output:0lstm_571_3516504lstm_571_3516506lstm_571_3516508*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_571_layer_call_and_return_conditional_losses_3516503?
 lstm_572/StatefulPartitionedCallStatefulPartitionedCall)lstm_571/StatefulPartitionedCall:output:0lstm_572_3516654lstm_572_3516656lstm_572_3516658*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516653?
!dense_190/StatefulPartitionedCallStatefulPartitionedCall)lstm_572/StatefulPartitionedCall:output:0dense_190_3516672dense_190_3516674*
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
GPU 2J 8? *O
fJRH
F__inference_dense_190_layer_call_and_return_conditional_losses_3516671y
IdentityIdentity*dense_190/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_190/StatefulPartitionedCall!^lstm_570/StatefulPartitionedCall!^lstm_571/StatefulPartitionedCall!^lstm_572/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_190/StatefulPartitionedCall!dense_190/StatefulPartitionedCall2D
 lstm_570/StatefulPartitionedCall lstm_570/StatefulPartitionedCall2D
 lstm_571/StatefulPartitionedCall lstm_571/StatefulPartitionedCall2D
 lstm_572/StatefulPartitionedCall lstm_572/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3517114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3517114___redundant_placeholder05
1while_while_cond_3517114___redundant_placeholder15
1while_while_cond_3517114___redundant_placeholder25
1while_while_cond_3517114___redundant_placeholder3
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
?
?
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3515221

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
?
?
while_cond_3515934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3515934___redundant_placeholder05
1while_while_cond_3515934___redundant_placeholder15
1while_while_cond_3515934___redundant_placeholder25
1while_while_cond_3515934___redundant_placeholder3
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
??
?
K__inference_sequential_190_layer_call_and_return_conditional_losses_3518322

inputsH
5lstm_570_lstm_cell_579_matmul_readvariableop_resource:	?J
7lstm_570_lstm_cell_579_matmul_1_readvariableop_resource:	d?E
6lstm_570_lstm_cell_579_biasadd_readvariableop_resource:	?H
5lstm_571_lstm_cell_580_matmul_readvariableop_resource:	d?J
7lstm_571_lstm_cell_580_matmul_1_readvariableop_resource:	2?E
6lstm_571_lstm_cell_580_biasadd_readvariableop_resource:	?G
5lstm_572_lstm_cell_581_matmul_readvariableop_resource:2(I
7lstm_572_lstm_cell_581_matmul_1_readvariableop_resource:
(D
6lstm_572_lstm_cell_581_biasadd_readvariableop_resource:(:
(dense_190_matmul_readvariableop_resource:
7
)dense_190_biasadd_readvariableop_resource:
identity?? dense_190/BiasAdd/ReadVariableOp?dense_190/MatMul/ReadVariableOp?-lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp?,lstm_570/lstm_cell_579/MatMul/ReadVariableOp?.lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp?lstm_570/while?-lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp?,lstm_571/lstm_cell_580/MatMul/ReadVariableOp?.lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp?lstm_571/while?-lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp?,lstm_572/lstm_cell_581/MatMul/ReadVariableOp?.lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp?lstm_572/whileD
lstm_570/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_570/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_570/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_570/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_570/strided_sliceStridedSlicelstm_570/Shape:output:0%lstm_570/strided_slice/stack:output:0'lstm_570/strided_slice/stack_1:output:0'lstm_570/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_570/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_570/zeros/packedPacklstm_570/strided_slice:output:0 lstm_570/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_570/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_570/zerosFilllstm_570/zeros/packed:output:0lstm_570/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_570/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_570/zeros_1/packedPacklstm_570/strided_slice:output:0"lstm_570/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_570/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_570/zeros_1Fill lstm_570/zeros_1/packed:output:0lstm_570/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_570/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_570/transpose	Transposeinputs lstm_570/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_570/Shape_1Shapelstm_570/transpose:y:0*
T0*
_output_shapes
:h
lstm_570/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_570/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_570/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_570/strided_slice_1StridedSlicelstm_570/Shape_1:output:0'lstm_570/strided_slice_1/stack:output:0)lstm_570/strided_slice_1/stack_1:output:0)lstm_570/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_570/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_570/TensorArrayV2TensorListReserve-lstm_570/TensorArrayV2/element_shape:output:0!lstm_570/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_570/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_570/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_570/transpose:y:0Glstm_570/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_570/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_570/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_570/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_570/strided_slice_2StridedSlicelstm_570/transpose:y:0'lstm_570/strided_slice_2/stack:output:0)lstm_570/strided_slice_2/stack_1:output:0)lstm_570/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_570/lstm_cell_579/MatMul/ReadVariableOpReadVariableOp5lstm_570_lstm_cell_579_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_570/lstm_cell_579/MatMulMatMul!lstm_570/strided_slice_2:output:04lstm_570/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_570/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp7lstm_570_lstm_cell_579_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_570/lstm_cell_579/MatMul_1MatMullstm_570/zeros:output:06lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_570/lstm_cell_579/addAddV2'lstm_570/lstm_cell_579/MatMul:product:0)lstm_570/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_570/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp6lstm_570_lstm_cell_579_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_570/lstm_cell_579/BiasAddBiasAddlstm_570/lstm_cell_579/add:z:05lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_570/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_570/lstm_cell_579/splitSplit/lstm_570/lstm_cell_579/split/split_dim:output:0'lstm_570/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_570/lstm_cell_579/SigmoidSigmoid%lstm_570/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_570/lstm_cell_579/Sigmoid_1Sigmoid%lstm_570/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_570/lstm_cell_579/mulMul$lstm_570/lstm_cell_579/Sigmoid_1:y:0lstm_570/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_570/lstm_cell_579/ReluRelu%lstm_570/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_570/lstm_cell_579/mul_1Mul"lstm_570/lstm_cell_579/Sigmoid:y:0)lstm_570/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_570/lstm_cell_579/add_1AddV2lstm_570/lstm_cell_579/mul:z:0 lstm_570/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_570/lstm_cell_579/Sigmoid_2Sigmoid%lstm_570/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_570/lstm_cell_579/Relu_1Relu lstm_570/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_570/lstm_cell_579/mul_2Mul$lstm_570/lstm_cell_579/Sigmoid_2:y:0+lstm_570/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_570/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_570/TensorArrayV2_1TensorListReserve/lstm_570/TensorArrayV2_1/element_shape:output:0!lstm_570/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_570/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_570/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_570/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_570/whileWhile$lstm_570/while/loop_counter:output:0*lstm_570/while/maximum_iterations:output:0lstm_570/time:output:0!lstm_570/TensorArrayV2_1:handle:0lstm_570/zeros:output:0lstm_570/zeros_1:output:0!lstm_570/strided_slice_1:output:0@lstm_570/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_570_lstm_cell_579_matmul_readvariableop_resource7lstm_570_lstm_cell_579_matmul_1_readvariableop_resource6lstm_570_lstm_cell_579_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_570_while_body_3517954*'
condR
lstm_570_while_cond_3517953*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_570/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_570/TensorArrayV2Stack/TensorListStackTensorListStacklstm_570/while:output:3Blstm_570/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_570/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_570/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_570/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_570/strided_slice_3StridedSlice4lstm_570/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_570/strided_slice_3/stack:output:0)lstm_570/strided_slice_3/stack_1:output:0)lstm_570/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_570/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_570/transpose_1	Transpose4lstm_570/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_570/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_570/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_571/ShapeShapelstm_570/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_571/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_571/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_571/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_571/strided_sliceStridedSlicelstm_571/Shape:output:0%lstm_571/strided_slice/stack:output:0'lstm_571/strided_slice/stack_1:output:0'lstm_571/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_571/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_571/zeros/packedPacklstm_571/strided_slice:output:0 lstm_571/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_571/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_571/zerosFilllstm_571/zeros/packed:output:0lstm_571/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_571/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_571/zeros_1/packedPacklstm_571/strided_slice:output:0"lstm_571/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_571/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_571/zeros_1Fill lstm_571/zeros_1/packed:output:0lstm_571/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_571/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_571/transpose	Transposelstm_570/transpose_1:y:0 lstm_571/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_571/Shape_1Shapelstm_571/transpose:y:0*
T0*
_output_shapes
:h
lstm_571/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_571/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_571/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_571/strided_slice_1StridedSlicelstm_571/Shape_1:output:0'lstm_571/strided_slice_1/stack:output:0)lstm_571/strided_slice_1/stack_1:output:0)lstm_571/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_571/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_571/TensorArrayV2TensorListReserve-lstm_571/TensorArrayV2/element_shape:output:0!lstm_571/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_571/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_571/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_571/transpose:y:0Glstm_571/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_571/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_571/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_571/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_571/strided_slice_2StridedSlicelstm_571/transpose:y:0'lstm_571/strided_slice_2/stack:output:0)lstm_571/strided_slice_2/stack_1:output:0)lstm_571/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_571/lstm_cell_580/MatMul/ReadVariableOpReadVariableOp5lstm_571_lstm_cell_580_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_571/lstm_cell_580/MatMulMatMul!lstm_571/strided_slice_2:output:04lstm_571/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_571/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp7lstm_571_lstm_cell_580_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_571/lstm_cell_580/MatMul_1MatMullstm_571/zeros:output:06lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_571/lstm_cell_580/addAddV2'lstm_571/lstm_cell_580/MatMul:product:0)lstm_571/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_571/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp6lstm_571_lstm_cell_580_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_571/lstm_cell_580/BiasAddBiasAddlstm_571/lstm_cell_580/add:z:05lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_571/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_571/lstm_cell_580/splitSplit/lstm_571/lstm_cell_580/split/split_dim:output:0'lstm_571/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_571/lstm_cell_580/SigmoidSigmoid%lstm_571/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_571/lstm_cell_580/Sigmoid_1Sigmoid%lstm_571/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_571/lstm_cell_580/mulMul$lstm_571/lstm_cell_580/Sigmoid_1:y:0lstm_571/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_571/lstm_cell_580/ReluRelu%lstm_571/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_571/lstm_cell_580/mul_1Mul"lstm_571/lstm_cell_580/Sigmoid:y:0)lstm_571/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_571/lstm_cell_580/add_1AddV2lstm_571/lstm_cell_580/mul:z:0 lstm_571/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_571/lstm_cell_580/Sigmoid_2Sigmoid%lstm_571/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_571/lstm_cell_580/Relu_1Relu lstm_571/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_571/lstm_cell_580/mul_2Mul$lstm_571/lstm_cell_580/Sigmoid_2:y:0+lstm_571/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_571/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_571/TensorArrayV2_1TensorListReserve/lstm_571/TensorArrayV2_1/element_shape:output:0!lstm_571/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_571/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_571/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_571/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_571/whileWhile$lstm_571/while/loop_counter:output:0*lstm_571/while/maximum_iterations:output:0lstm_571/time:output:0!lstm_571/TensorArrayV2_1:handle:0lstm_571/zeros:output:0lstm_571/zeros_1:output:0!lstm_571/strided_slice_1:output:0@lstm_571/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_571_lstm_cell_580_matmul_readvariableop_resource7lstm_571_lstm_cell_580_matmul_1_readvariableop_resource6lstm_571_lstm_cell_580_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_571_while_body_3518093*'
condR
lstm_571_while_cond_3518092*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_571/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_571/TensorArrayV2Stack/TensorListStackTensorListStacklstm_571/while:output:3Blstm_571/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_571/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_571/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_571/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_571/strided_slice_3StridedSlice4lstm_571/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_571/strided_slice_3/stack:output:0)lstm_571/strided_slice_3/stack_1:output:0)lstm_571/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_571/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_571/transpose_1	Transpose4lstm_571/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_571/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_571/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_572/ShapeShapelstm_571/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_572/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_572/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_572/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_572/strided_sliceStridedSlicelstm_572/Shape:output:0%lstm_572/strided_slice/stack:output:0'lstm_572/strided_slice/stack_1:output:0'lstm_572/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_572/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_572/zeros/packedPacklstm_572/strided_slice:output:0 lstm_572/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_572/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_572/zerosFilllstm_572/zeros/packed:output:0lstm_572/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_572/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_572/zeros_1/packedPacklstm_572/strided_slice:output:0"lstm_572/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_572/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_572/zeros_1Fill lstm_572/zeros_1/packed:output:0lstm_572/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_572/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_572/transpose	Transposelstm_571/transpose_1:y:0 lstm_572/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_572/Shape_1Shapelstm_572/transpose:y:0*
T0*
_output_shapes
:h
lstm_572/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_572/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_572/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_572/strided_slice_1StridedSlicelstm_572/Shape_1:output:0'lstm_572/strided_slice_1/stack:output:0)lstm_572/strided_slice_1/stack_1:output:0)lstm_572/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_572/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_572/TensorArrayV2TensorListReserve-lstm_572/TensorArrayV2/element_shape:output:0!lstm_572/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_572/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_572/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_572/transpose:y:0Glstm_572/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_572/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_572/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_572/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_572/strided_slice_2StridedSlicelstm_572/transpose:y:0'lstm_572/strided_slice_2/stack:output:0)lstm_572/strided_slice_2/stack_1:output:0)lstm_572/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_572/lstm_cell_581/MatMul/ReadVariableOpReadVariableOp5lstm_572_lstm_cell_581_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_572/lstm_cell_581/MatMulMatMul!lstm_572/strided_slice_2:output:04lstm_572/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_572/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp7lstm_572_lstm_cell_581_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_572/lstm_cell_581/MatMul_1MatMullstm_572/zeros:output:06lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_572/lstm_cell_581/addAddV2'lstm_572/lstm_cell_581/MatMul:product:0)lstm_572/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_572/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp6lstm_572_lstm_cell_581_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_572/lstm_cell_581/BiasAddBiasAddlstm_572/lstm_cell_581/add:z:05lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_572/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_572/lstm_cell_581/splitSplit/lstm_572/lstm_cell_581/split/split_dim:output:0'lstm_572/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_572/lstm_cell_581/SigmoidSigmoid%lstm_572/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_572/lstm_cell_581/Sigmoid_1Sigmoid%lstm_572/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_572/lstm_cell_581/mulMul$lstm_572/lstm_cell_581/Sigmoid_1:y:0lstm_572/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_572/lstm_cell_581/ReluRelu%lstm_572/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_572/lstm_cell_581/mul_1Mul"lstm_572/lstm_cell_581/Sigmoid:y:0)lstm_572/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_572/lstm_cell_581/add_1AddV2lstm_572/lstm_cell_581/mul:z:0 lstm_572/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_572/lstm_cell_581/Sigmoid_2Sigmoid%lstm_572/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_572/lstm_cell_581/Relu_1Relu lstm_572/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_572/lstm_cell_581/mul_2Mul$lstm_572/lstm_cell_581/Sigmoid_2:y:0+lstm_572/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_572/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_572/TensorArrayV2_1TensorListReserve/lstm_572/TensorArrayV2_1/element_shape:output:0!lstm_572/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_572/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_572/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_572/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_572/whileWhile$lstm_572/while/loop_counter:output:0*lstm_572/while/maximum_iterations:output:0lstm_572/time:output:0!lstm_572/TensorArrayV2_1:handle:0lstm_572/zeros:output:0lstm_572/zeros_1:output:0!lstm_572/strided_slice_1:output:0@lstm_572/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_572_lstm_cell_581_matmul_readvariableop_resource7lstm_572_lstm_cell_581_matmul_1_readvariableop_resource6lstm_572_lstm_cell_581_biasadd_readvariableop_resource*
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
_stateful_parallelism( *'
bodyR
lstm_572_while_body_3518232*'
condR
lstm_572_while_cond_3518231*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_572/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_572/TensorArrayV2Stack/TensorListStackTensorListStacklstm_572/while:output:3Blstm_572/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_572/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_572/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_572/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_572/strided_slice_3StridedSlice4lstm_572/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_572/strided_slice_3/stack:output:0)lstm_572/strided_slice_3/stack_1:output:0)lstm_572/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_572/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_572/transpose_1	Transpose4lstm_572/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_572/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_572/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_190/MatMul/ReadVariableOpReadVariableOp(dense_190_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_190/MatMulMatMul!lstm_572/strided_slice_3:output:0'dense_190/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_190/BiasAdd/ReadVariableOpReadVariableOp)dense_190_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_190/BiasAddBiasAdddense_190/MatMul:product:0(dense_190/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_190/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_190/BiasAdd/ReadVariableOp ^dense_190/MatMul/ReadVariableOp.^lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp-^lstm_570/lstm_cell_579/MatMul/ReadVariableOp/^lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp^lstm_570/while.^lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp-^lstm_571/lstm_cell_580/MatMul/ReadVariableOp/^lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp^lstm_571/while.^lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp-^lstm_572/lstm_cell_581/MatMul/ReadVariableOp/^lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp^lstm_572/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_190/BiasAdd/ReadVariableOp dense_190/BiasAdd/ReadVariableOp2B
dense_190/MatMul/ReadVariableOpdense_190/MatMul/ReadVariableOp2^
-lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp-lstm_570/lstm_cell_579/BiasAdd/ReadVariableOp2\
,lstm_570/lstm_cell_579/MatMul/ReadVariableOp,lstm_570/lstm_cell_579/MatMul/ReadVariableOp2`
.lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp.lstm_570/lstm_cell_579/MatMul_1/ReadVariableOp2 
lstm_570/whilelstm_570/while2^
-lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp-lstm_571/lstm_cell_580/BiasAdd/ReadVariableOp2\
,lstm_571/lstm_cell_580/MatMul/ReadVariableOp,lstm_571/lstm_cell_580/MatMul/ReadVariableOp2`
.lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp.lstm_571/lstm_cell_580/MatMul_1/ReadVariableOp2 
lstm_571/whilelstm_571/while2^
-lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp-lstm_572/lstm_cell_581/BiasAdd/ReadVariableOp2\
,lstm_572/lstm_cell_581/MatMul/ReadVariableOp,lstm_572/lstm_cell_581/MatMul/ReadVariableOp2`
.lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp.lstm_572/lstm_cell_581/MatMul_1/ReadVariableOp2 
lstm_572/whilelstm_572/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516004

inputs'
lstm_cell_581_3515922:2('
lstm_cell_581_3515924:
(#
lstm_cell_581_3515926:(
identity??%lstm_cell_581/StatefulPartitionedCall?while;
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
%lstm_cell_581/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_581_3515922lstm_cell_581_3515924lstm_cell_581_3515926*
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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3515921n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_581_3515922lstm_cell_581_3515924lstm_cell_581_3515926*
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
while_body_3515935*
condR
while_cond_3515934*K
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
NoOpNoOp&^lstm_cell_581/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_581/StatefulPartitionedCall%lstm_cell_581/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_3517414
lstm_570_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_570_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3515154o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_570_input
?#
?
while_body_3515235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_579_3515259_0:	?0
while_lstm_cell_579_3515261_0:	d?,
while_lstm_cell_579_3515263_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_579_3515259:	?.
while_lstm_cell_579_3515261:	d?*
while_lstm_cell_579_3515263:	???+while/lstm_cell_579/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_579/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_579_3515259_0while_lstm_cell_579_3515261_0while_lstm_cell_579_3515263_0*
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
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3515221?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_579/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_579/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_579/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_579/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_579_3515259while_lstm_cell_579_3515259_0"<
while_lstm_cell_579_3515261while_lstm_cell_579_3515261_0"<
while_lstm_cell_579_3515263while_lstm_cell_579_3515263_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_579/StatefulPartitionedCall+while/lstm_cell_579/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3516950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_580_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_580_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_580_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_580_matmul_readvariableop_resource:	d?G
4while_lstm_cell_580_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_580_biasadd_readvariableop_resource:	???*while/lstm_cell_580/BiasAdd/ReadVariableOp?)while/lstm_cell_580/MatMul/ReadVariableOp?+while/lstm_cell_580/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_580/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_580_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_580/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_580_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_580/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_580/addAddV2$while/lstm_cell_580/MatMul:product:0&while/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_580_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_580/BiasAddBiasAddwhile/lstm_cell_580/add:z:02while/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_580/splitSplit,while/lstm_cell_580/split/split_dim:output:0$while/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_580/SigmoidSigmoid"while/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_1Sigmoid"while/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mulMul!while/lstm_cell_580/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_580/ReluRelu"while/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_1Mulwhile/lstm_cell_580/Sigmoid:y:0&while/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/add_1AddV2while/lstm_cell_580/mul:z:0while/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_580/Sigmoid_2Sigmoid"while/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_580/Relu_1Reluwhile/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_580/mul_2Mul!while/lstm_cell_580/Sigmoid_2:y:0(while/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_580/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_580/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_580/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_580/BiasAdd/ReadVariableOp*^while/lstm_cell_580/MatMul/ReadVariableOp,^while/lstm_cell_580/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_580_biasadd_readvariableop_resource5while_lstm_cell_580_biasadd_readvariableop_resource_0"n
4while_lstm_cell_580_matmul_1_readvariableop_resource6while_lstm_cell_580_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_580_matmul_readvariableop_resource4while_lstm_cell_580_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_580/BiasAdd/ReadVariableOp*while/lstm_cell_580/BiasAdd/ReadVariableOp2V
)while/lstm_cell_580/MatMul/ReadVariableOp)while/lstm_cell_580/MatMul/ReadVariableOp2Z
+while/lstm_cell_580/MatMul_1/ReadVariableOp+while/lstm_cell_580/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?J
?
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516653

inputs>
,lstm_cell_581_matmul_readvariableop_resource:2(@
.lstm_cell_581_matmul_1_readvariableop_resource:
(;
-lstm_cell_581_biasadd_readvariableop_resource:(
identity??$lstm_cell_581/BiasAdd/ReadVariableOp?#lstm_cell_581/MatMul/ReadVariableOp?%lstm_cell_581/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_581/MatMul/ReadVariableOpReadVariableOp,lstm_cell_581_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_581/MatMulMatMulstrided_slice_2:output:0+lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_581_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_581/MatMul_1MatMulzeros:output:0-lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_581/addAddV2lstm_cell_581/MatMul:product:0 lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_581_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_581/BiasAddBiasAddlstm_cell_581/add:z:0,lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_581/splitSplit&lstm_cell_581/split/split_dim:output:0lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_581/SigmoidSigmoidlstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_1Sigmoidlstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_581/mulMullstm_cell_581/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_581/ReluRelulstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_1Mullstm_cell_581/Sigmoid:y:0 lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_581/add_1AddV2lstm_cell_581/mul:z:0lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_2Sigmoidlstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_581/Relu_1Relulstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_2Mullstm_cell_581/Sigmoid_2:y:0"lstm_cell_581/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_581_matmul_readvariableop_resource.lstm_cell_581_matmul_1_readvariableop_resource-lstm_cell_581_biasadd_readvariableop_resource*
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
while_body_3516569*
condR
while_cond_3516568*K
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
NoOpNoOp%^lstm_cell_581/BiasAdd/ReadVariableOp$^lstm_cell_581/MatMul/ReadVariableOp&^lstm_cell_581/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_581/BiasAdd/ReadVariableOp$lstm_cell_581/BiasAdd/ReadVariableOp2J
#lstm_cell_581/MatMul/ReadVariableOp#lstm_cell_581/MatMul/ReadVariableOp2N
%lstm_cell_581/MatMul_1/ReadVariableOp%lstm_cell_581/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_570_layer_call_and_return_conditional_losses_3515304

inputs(
lstm_cell_579_3515222:	?(
lstm_cell_579_3515224:	d?$
lstm_cell_579_3515226:	?
identity??%lstm_cell_579/StatefulPartitionedCall?while;
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
%lstm_cell_579/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_579_3515222lstm_cell_579_3515224lstm_cell_579_3515226*
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
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3515221n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_579_3515222lstm_cell_579_3515224lstm_cell_579_3515226*
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
while_body_3515235*
condR
while_cond_3515234*K
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
NoOpNoOp&^lstm_cell_579/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_579/StatefulPartitionedCall%lstm_cell_579/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3520085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3520085___redundant_placeholder05
1while_while_cond_3520085___redundant_placeholder15
1while_while_cond_3520085___redundant_placeholder25
1while_while_cond_3520085___redundant_placeholder3
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
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519554

inputs?
,lstm_cell_580_matmul_readvariableop_resource:	d?A
.lstm_cell_580_matmul_1_readvariableop_resource:	2?<
-lstm_cell_580_biasadd_readvariableop_resource:	?
identity??$lstm_cell_580/BiasAdd/ReadVariableOp?#lstm_cell_580/MatMul/ReadVariableOp?%lstm_cell_580/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_580/MatMul/ReadVariableOpReadVariableOp,lstm_cell_580_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_580/MatMulMatMulstrided_slice_2:output:0+lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_580_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_580/MatMul_1MatMulzeros:output:0-lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_580/addAddV2lstm_cell_580/MatMul:product:0 lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_580_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_580/BiasAddBiasAddlstm_cell_580/add:z:0,lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_580/splitSplit&lstm_cell_580/split/split_dim:output:0lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_580/SigmoidSigmoidlstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_1Sigmoidlstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_580/mulMullstm_cell_580/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_580/ReluRelulstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_1Mullstm_cell_580/Sigmoid:y:0 lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_580/add_1AddV2lstm_cell_580/mul:z:0lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_2Sigmoidlstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_580/Relu_1Relulstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_2Mullstm_cell_580/Sigmoid_2:y:0"lstm_cell_580/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_580_matmul_readvariableop_resource.lstm_cell_580_matmul_1_readvariableop_resource-lstm_cell_580_biasadd_readvariableop_resource*
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
while_body_3519470*
condR
while_cond_3519469*K
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
NoOpNoOp%^lstm_cell_580/BiasAdd/ReadVariableOp$^lstm_cell_580/MatMul/ReadVariableOp&^lstm_cell_580/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_580/BiasAdd/ReadVariableOp$lstm_cell_580/BiasAdd/ReadVariableOp2J
#lstm_cell_580/MatMul/ReadVariableOp#lstm_cell_580/MatMul/ReadVariableOp2N
%lstm_cell_580/MatMul_1/ReadVariableOp%lstm_cell_580/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_572_layer_call_and_return_conditional_losses_3520027

inputs>
,lstm_cell_581_matmul_readvariableop_resource:2(@
.lstm_cell_581_matmul_1_readvariableop_resource:
(;
-lstm_cell_581_biasadd_readvariableop_resource:(
identity??$lstm_cell_581/BiasAdd/ReadVariableOp?#lstm_cell_581/MatMul/ReadVariableOp?%lstm_cell_581/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_581/MatMul/ReadVariableOpReadVariableOp,lstm_cell_581_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_581/MatMulMatMulstrided_slice_2:output:0+lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_581_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_581/MatMul_1MatMulzeros:output:0-lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_581/addAddV2lstm_cell_581/MatMul:product:0 lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_581_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_581/BiasAddBiasAddlstm_cell_581/add:z:0,lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_581/splitSplit&lstm_cell_581/split/split_dim:output:0lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_581/SigmoidSigmoidlstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_1Sigmoidlstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_581/mulMullstm_cell_581/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_581/ReluRelulstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_1Mullstm_cell_581/Sigmoid:y:0 lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_581/add_1AddV2lstm_cell_581/mul:z:0lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_2Sigmoidlstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_581/Relu_1Relulstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_2Mullstm_cell_581/Sigmoid_2:y:0"lstm_cell_581/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_581_matmul_readvariableop_resource.lstm_cell_581_matmul_1_readvariableop_resource-lstm_cell_581_biasadd_readvariableop_resource*
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
while_body_3519943*
condR
while_cond_3519942*K
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
NoOpNoOp%^lstm_cell_581/BiasAdd/ReadVariableOp$^lstm_cell_581/MatMul/ReadVariableOp&^lstm_cell_581/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_581/BiasAdd/ReadVariableOp$lstm_cell_581/BiasAdd/ReadVariableOp2J
#lstm_cell_581/MatMul/ReadVariableOp#lstm_cell_581/MatMul/ReadVariableOp2N
%lstm_cell_581/MatMul_1/ReadVariableOp%lstm_cell_581/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3516268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3516268___redundant_placeholder05
1while_while_cond_3516268___redundant_placeholder15
1while_while_cond_3516268___redundant_placeholder25
1while_while_cond_3516268___redundant_placeholder3
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
while_body_3518425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_579_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_579_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_579_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_579_matmul_readvariableop_resource:	?G
4while_lstm_cell_579_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_579_biasadd_readvariableop_resource:	???*while/lstm_cell_579/BiasAdd/ReadVariableOp?)while/lstm_cell_579/MatMul/ReadVariableOp?+while/lstm_cell_579/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_579/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_579_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_579/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_579_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_579/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_579/addAddV2$while/lstm_cell_579/MatMul:product:0&while/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_579_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_579/BiasAddBiasAddwhile/lstm_cell_579/add:z:02while/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_579/splitSplit,while/lstm_cell_579/split/split_dim:output:0$while/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_579/SigmoidSigmoid"while/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_1Sigmoid"while/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mulMul!while/lstm_cell_579/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_579/ReluRelu"while/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_1Mulwhile/lstm_cell_579/Sigmoid:y:0&while/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/add_1AddV2while/lstm_cell_579/mul:z:0while/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_2Sigmoid"while/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_579/Relu_1Reluwhile/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_2Mul!while/lstm_cell_579/Sigmoid_2:y:0(while/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_579/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_579/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_579/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_579/BiasAdd/ReadVariableOp*^while/lstm_cell_579/MatMul/ReadVariableOp,^while/lstm_cell_579/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_579_biasadd_readvariableop_resource5while_lstm_cell_579_biasadd_readvariableop_resource_0"n
4while_lstm_cell_579_matmul_1_readvariableop_resource6while_lstm_cell_579_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_579_matmul_readvariableop_resource4while_lstm_cell_579_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_579/BiasAdd/ReadVariableOp*while/lstm_cell_579/BiasAdd/ReadVariableOp2V
)while/lstm_cell_579/MatMul/ReadVariableOp)while/lstm_cell_579/MatMul/ReadVariableOp2Z
+while/lstm_cell_579/MatMul_1/ReadVariableOp+while/lstm_cell_579/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3516949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3516949___redundant_placeholder05
1while_while_cond_3516949___redundant_placeholder15
1while_while_cond_3516949___redundant_placeholder25
1while_while_cond_3516949___redundant_placeholder3
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
?J
?
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518938

inputs?
,lstm_cell_579_matmul_readvariableop_resource:	?A
.lstm_cell_579_matmul_1_readvariableop_resource:	d?<
-lstm_cell_579_biasadd_readvariableop_resource:	?
identity??$lstm_cell_579/BiasAdd/ReadVariableOp?#lstm_cell_579/MatMul/ReadVariableOp?%lstm_cell_579/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_579/MatMul/ReadVariableOpReadVariableOp,lstm_cell_579_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_579/MatMulMatMulstrided_slice_2:output:0+lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_579_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_579/MatMul_1MatMulzeros:output:0-lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_579/addAddV2lstm_cell_579/MatMul:product:0 lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_579_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_579/BiasAddBiasAddlstm_cell_579/add:z:0,lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_579/splitSplit&lstm_cell_579/split/split_dim:output:0lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_579/SigmoidSigmoidlstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_1Sigmoidlstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_579/mulMullstm_cell_579/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_579/ReluRelulstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_1Mullstm_cell_579/Sigmoid:y:0 lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_579/add_1AddV2lstm_cell_579/mul:z:0lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_2Sigmoidlstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_579/Relu_1Relulstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_2Mullstm_cell_579/Sigmoid_2:y:0"lstm_cell_579/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_579_matmul_readvariableop_resource.lstm_cell_579_matmul_1_readvariableop_resource-lstm_cell_579_biasadd_readvariableop_resource*
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
while_body_3518854*
condR
while_cond_3518853*K
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
NoOpNoOp%^lstm_cell_579/BiasAdd/ReadVariableOp$^lstm_cell_579/MatMul/ReadVariableOp&^lstm_cell_579/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_579/BiasAdd/ReadVariableOp$lstm_cell_579/BiasAdd/ReadVariableOp2J
#lstm_cell_579/MatMul/ReadVariableOp#lstm_cell_579/MatMul/ReadVariableOp2N
%lstm_cell_579/MatMul_1/ReadVariableOp%lstm_cell_579/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_571_while_body_3517666.
*lstm_571_while_lstm_571_while_loop_counter4
0lstm_571_while_lstm_571_while_maximum_iterations
lstm_571_while_placeholder 
lstm_571_while_placeholder_1 
lstm_571_while_placeholder_2 
lstm_571_while_placeholder_3-
)lstm_571_while_lstm_571_strided_slice_1_0i
elstm_571_while_tensorarrayv2read_tensorlistgetitem_lstm_571_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_571_while_lstm_cell_580_matmul_readvariableop_resource_0:	d?R
?lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource_0:	2?M
>lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource_0:	?
lstm_571_while_identity
lstm_571_while_identity_1
lstm_571_while_identity_2
lstm_571_while_identity_3
lstm_571_while_identity_4
lstm_571_while_identity_5+
'lstm_571_while_lstm_571_strided_slice_1g
clstm_571_while_tensorarrayv2read_tensorlistgetitem_lstm_571_tensorarrayunstack_tensorlistfromtensorN
;lstm_571_while_lstm_cell_580_matmul_readvariableop_resource:	d?P
=lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource:	2?K
<lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource:	???3lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp?2lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp?4lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp?
@lstm_571/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_571/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_571_while_tensorarrayv2read_tensorlistgetitem_lstm_571_tensorarrayunstack_tensorlistfromtensor_0lstm_571_while_placeholderIlstm_571/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_571/while/lstm_cell_580/MatMul/ReadVariableOpReadVariableOp=lstm_571_while_lstm_cell_580_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_571/while/lstm_cell_580/MatMulMatMul9lstm_571/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp?lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_571/while/lstm_cell_580/MatMul_1MatMullstm_571_while_placeholder_2<lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_571/while/lstm_cell_580/addAddV2-lstm_571/while/lstm_cell_580/MatMul:product:0/lstm_571/while/lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp>lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_571/while/lstm_cell_580/BiasAddBiasAdd$lstm_571/while/lstm_cell_580/add:z:0;lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_571/while/lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_571/while/lstm_cell_580/splitSplit5lstm_571/while/lstm_cell_580/split/split_dim:output:0-lstm_571/while/lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_571/while/lstm_cell_580/SigmoidSigmoid+lstm_571/while/lstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_571/while/lstm_cell_580/Sigmoid_1Sigmoid+lstm_571/while/lstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_571/while/lstm_cell_580/mulMul*lstm_571/while/lstm_cell_580/Sigmoid_1:y:0lstm_571_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_571/while/lstm_cell_580/ReluRelu+lstm_571/while/lstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_571/while/lstm_cell_580/mul_1Mul(lstm_571/while/lstm_cell_580/Sigmoid:y:0/lstm_571/while/lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_571/while/lstm_cell_580/add_1AddV2$lstm_571/while/lstm_cell_580/mul:z:0&lstm_571/while/lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_571/while/lstm_cell_580/Sigmoid_2Sigmoid+lstm_571/while/lstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_571/while/lstm_cell_580/Relu_1Relu&lstm_571/while/lstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_571/while/lstm_cell_580/mul_2Mul*lstm_571/while/lstm_cell_580/Sigmoid_2:y:01lstm_571/while/lstm_cell_580/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_571/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_571_while_placeholder_1lstm_571_while_placeholder&lstm_571/while/lstm_cell_580/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_571/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_571/while/addAddV2lstm_571_while_placeholderlstm_571/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_571/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_571/while/add_1AddV2*lstm_571_while_lstm_571_while_loop_counterlstm_571/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_571/while/IdentityIdentitylstm_571/while/add_1:z:0^lstm_571/while/NoOp*
T0*
_output_shapes
: ?
lstm_571/while/Identity_1Identity0lstm_571_while_lstm_571_while_maximum_iterations^lstm_571/while/NoOp*
T0*
_output_shapes
: t
lstm_571/while/Identity_2Identitylstm_571/while/add:z:0^lstm_571/while/NoOp*
T0*
_output_shapes
: ?
lstm_571/while/Identity_3IdentityClstm_571/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_571/while/NoOp*
T0*
_output_shapes
: ?
lstm_571/while/Identity_4Identity&lstm_571/while/lstm_cell_580/mul_2:z:0^lstm_571/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_571/while/Identity_5Identity&lstm_571/while/lstm_cell_580/add_1:z:0^lstm_571/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_571/while/NoOpNoOp4^lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp3^lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp5^lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_571_while_identity lstm_571/while/Identity:output:0"?
lstm_571_while_identity_1"lstm_571/while/Identity_1:output:0"?
lstm_571_while_identity_2"lstm_571/while/Identity_2:output:0"?
lstm_571_while_identity_3"lstm_571/while/Identity_3:output:0"?
lstm_571_while_identity_4"lstm_571/while/Identity_4:output:0"?
lstm_571_while_identity_5"lstm_571/while/Identity_5:output:0"T
'lstm_571_while_lstm_571_strided_slice_1)lstm_571_while_lstm_571_strided_slice_1_0"~
<lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource>lstm_571_while_lstm_cell_580_biasadd_readvariableop_resource_0"?
=lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource?lstm_571_while_lstm_cell_580_matmul_1_readvariableop_resource_0"|
;lstm_571_while_lstm_cell_580_matmul_readvariableop_resource=lstm_571_while_lstm_cell_580_matmul_readvariableop_resource_0"?
clstm_571_while_tensorarrayv2read_tensorlistgetitem_lstm_571_tensorarrayunstack_tensorlistfromtensorelstm_571_while_tensorarrayv2read_tensorlistgetitem_lstm_571_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp3lstm_571/while/lstm_cell_580/BiasAdd/ReadVariableOp2h
2lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp2lstm_571/while/lstm_cell_580/MatMul/ReadVariableOp2l
4lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp4lstm_571/while/lstm_cell_580/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
lstm_571_while_cond_3518092.
*lstm_571_while_lstm_571_while_loop_counter4
0lstm_571_while_lstm_571_while_maximum_iterations
lstm_571_while_placeholder 
lstm_571_while_placeholder_1 
lstm_571_while_placeholder_2 
lstm_571_while_placeholder_30
,lstm_571_while_less_lstm_571_strided_slice_1G
Clstm_571_while_lstm_571_while_cond_3518092___redundant_placeholder0G
Clstm_571_while_lstm_571_while_cond_3518092___redundant_placeholder1G
Clstm_571_while_lstm_571_while_cond_3518092___redundant_placeholder2G
Clstm_571_while_lstm_571_while_cond_3518092___redundant_placeholder3
lstm_571_while_identity
?
lstm_571/while/LessLesslstm_571_while_placeholder,lstm_571_while_less_lstm_571_strided_slice_1*
T0*
_output_shapes
: ]
lstm_571/while/IdentityIdentitylstm_571/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_571_while_identity lstm_571/while/Identity:output:0*(
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
while_body_3517115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_579_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_579_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_579_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_579_matmul_readvariableop_resource:	?G
4while_lstm_cell_579_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_579_biasadd_readvariableop_resource:	???*while/lstm_cell_579/BiasAdd/ReadVariableOp?)while/lstm_cell_579/MatMul/ReadVariableOp?+while/lstm_cell_579/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_579/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_579_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_579/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_579_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_579/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_579/addAddV2$while/lstm_cell_579/MatMul:product:0&while/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_579_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_579/BiasAddBiasAddwhile/lstm_cell_579/add:z:02while/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_579/splitSplit,while/lstm_cell_579/split/split_dim:output:0$while/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_579/SigmoidSigmoid"while/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_1Sigmoid"while/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mulMul!while/lstm_cell_579/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_579/ReluRelu"while/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_1Mulwhile/lstm_cell_579/Sigmoid:y:0&while/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/add_1AddV2while/lstm_cell_579/mul:z:0while/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_2Sigmoid"while/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_579/Relu_1Reluwhile/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_2Mul!while/lstm_cell_579/Sigmoid_2:y:0(while/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_579/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_579/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_579/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_579/BiasAdd/ReadVariableOp*^while/lstm_cell_579/MatMul/ReadVariableOp,^while/lstm_cell_579/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_579_biasadd_readvariableop_resource5while_lstm_cell_579_biasadd_readvariableop_resource_0"n
4while_lstm_cell_579_matmul_1_readvariableop_resource6while_lstm_cell_579_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_579_matmul_readvariableop_resource4while_lstm_cell_579_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_579/BiasAdd/ReadVariableOp*while/lstm_cell_579/BiasAdd/ReadVariableOp2V
)while/lstm_cell_579/MatMul/ReadVariableOp)while/lstm_cell_579/MatMul/ReadVariableOp2Z
+while/lstm_cell_579/MatMul_1/ReadVariableOp+while/lstm_cell_579/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517349
lstm_570_input#
lstm_570_3517322:	?#
lstm_570_3517324:	d?
lstm_570_3517326:	?#
lstm_571_3517329:	d?#
lstm_571_3517331:	2?
lstm_571_3517333:	?"
lstm_572_3517336:2("
lstm_572_3517338:
(
lstm_572_3517340:(#
dense_190_3517343:

dense_190_3517345:
identity??!dense_190/StatefulPartitionedCall? lstm_570/StatefulPartitionedCall? lstm_571/StatefulPartitionedCall? lstm_572/StatefulPartitionedCall?
 lstm_570/StatefulPartitionedCallStatefulPartitionedCalllstm_570_inputlstm_570_3517322lstm_570_3517324lstm_570_3517326*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_570_layer_call_and_return_conditional_losses_3516353?
 lstm_571/StatefulPartitionedCallStatefulPartitionedCall)lstm_570/StatefulPartitionedCall:output:0lstm_571_3517329lstm_571_3517331lstm_571_3517333*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_571_layer_call_and_return_conditional_losses_3516503?
 lstm_572/StatefulPartitionedCallStatefulPartitionedCall)lstm_571/StatefulPartitionedCall:output:0lstm_572_3517336lstm_572_3517338lstm_572_3517340*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516653?
!dense_190/StatefulPartitionedCallStatefulPartitionedCall)lstm_572/StatefulPartitionedCall:output:0dense_190_3517343dense_190_3517345*
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
GPU 2J 8? *O
fJRH
F__inference_dense_190_layer_call_and_return_conditional_losses_3516671y
IdentityIdentity*dense_190/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_190/StatefulPartitionedCall!^lstm_570/StatefulPartitionedCall!^lstm_571/StatefulPartitionedCall!^lstm_572/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_190/StatefulPartitionedCall!dense_190/StatefulPartitionedCall2D
 lstm_570/StatefulPartitionedCall lstm_570/StatefulPartitionedCall2D
 lstm_571/StatefulPartitionedCall lstm_571/StatefulPartitionedCall2D
 lstm_572/StatefulPartitionedCall lstm_572/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_570_input
?8
?
E__inference_lstm_571_layer_call_and_return_conditional_losses_3515654

inputs(
lstm_cell_580_3515572:	d?(
lstm_cell_580_3515574:	2?$
lstm_cell_580_3515576:	?
identity??%lstm_cell_580/StatefulPartitionedCall?while;
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
%lstm_cell_580/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_580_3515572lstm_cell_580_3515574lstm_cell_580_3515576*
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
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3515571n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_580_3515572lstm_cell_580_3515574lstm_cell_580_3515576*
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
while_body_3515585*
condR
while_cond_3515584*K
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
NoOpNoOp&^lstm_cell_580/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_580/StatefulPartitionedCall%lstm_cell_580/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_579_layer_call_fn_3520206

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
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3515221o
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
?
?
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3516067

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
?K
?
E__inference_lstm_572_layer_call_and_return_conditional_losses_3519741
inputs_0>
,lstm_cell_581_matmul_readvariableop_resource:2(@
.lstm_cell_581_matmul_1_readvariableop_resource:
(;
-lstm_cell_581_biasadd_readvariableop_resource:(
identity??$lstm_cell_581/BiasAdd/ReadVariableOp?#lstm_cell_581/MatMul/ReadVariableOp?%lstm_cell_581/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_581/MatMul/ReadVariableOpReadVariableOp,lstm_cell_581_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_581/MatMulMatMulstrided_slice_2:output:0+lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_581_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_581/MatMul_1MatMulzeros:output:0-lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_581/addAddV2lstm_cell_581/MatMul:product:0 lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_581_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_581/BiasAddBiasAddlstm_cell_581/add:z:0,lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_581/splitSplit&lstm_cell_581/split/split_dim:output:0lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_581/SigmoidSigmoidlstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_1Sigmoidlstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_581/mulMullstm_cell_581/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_581/ReluRelulstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_1Mullstm_cell_581/Sigmoid:y:0 lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_581/add_1AddV2lstm_cell_581/mul:z:0lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_581/Sigmoid_2Sigmoidlstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_581/Relu_1Relulstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_581/mul_2Mullstm_cell_581/Sigmoid_2:y:0"lstm_cell_581/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_581_matmul_readvariableop_resource.lstm_cell_581_matmul_1_readvariableop_resource-lstm_cell_581_biasadd_readvariableop_resource*
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
while_body_3519657*
condR
while_cond_3519656*K
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
NoOpNoOp%^lstm_cell_581/BiasAdd/ReadVariableOp$^lstm_cell_581/MatMul/ReadVariableOp&^lstm_cell_581/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_581/BiasAdd/ReadVariableOp$lstm_cell_581/BiasAdd/ReadVariableOp2J
#lstm_cell_581/MatMul/ReadVariableOp#lstm_cell_581/MatMul/ReadVariableOp2N
%lstm_cell_581/MatMul_1/ReadVariableOp%lstm_cell_581/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_3519183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3519183___redundant_placeholder05
1while_while_cond_3519183___redundant_placeholder15
1while_while_cond_3519183___redundant_placeholder25
1while_while_cond_3519183___redundant_placeholder3
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
while_cond_3519469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3519469___redundant_placeholder05
1while_while_cond_3519469___redundant_placeholder15
1while_while_cond_3519469___redundant_placeholder25
1while_while_cond_3519469___redundant_placeholder3
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
lstm_570_while_cond_3517526.
*lstm_570_while_lstm_570_while_loop_counter4
0lstm_570_while_lstm_570_while_maximum_iterations
lstm_570_while_placeholder 
lstm_570_while_placeholder_1 
lstm_570_while_placeholder_2 
lstm_570_while_placeholder_30
,lstm_570_while_less_lstm_570_strided_slice_1G
Clstm_570_while_lstm_570_while_cond_3517526___redundant_placeholder0G
Clstm_570_while_lstm_570_while_cond_3517526___redundant_placeholder1G
Clstm_570_while_lstm_570_while_cond_3517526___redundant_placeholder2G
Clstm_570_while_lstm_570_while_cond_3517526___redundant_placeholder3
lstm_570_while_identity
?
lstm_570/while/LessLesslstm_570_while_placeholder,lstm_570_while_less_lstm_570_strided_slice_1*
T0*
_output_shapes
: ]
lstm_570/while/IdentityIdentitylstm_570/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_570_while_identity lstm_570/while/Identity:output:0*(
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
while_body_3518711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_579_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_579_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_579_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_579_matmul_readvariableop_resource:	?G
4while_lstm_cell_579_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_579_biasadd_readvariableop_resource:	???*while/lstm_cell_579/BiasAdd/ReadVariableOp?)while/lstm_cell_579/MatMul/ReadVariableOp?+while/lstm_cell_579/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_579/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_579_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_579/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_579_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_579/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_579/addAddV2$while/lstm_cell_579/MatMul:product:0&while/lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_579_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_579/BiasAddBiasAddwhile/lstm_cell_579/add:z:02while/lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_579/splitSplit,while/lstm_cell_579/split/split_dim:output:0$while/lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_579/SigmoidSigmoid"while/lstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_1Sigmoid"while/lstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mulMul!while/lstm_cell_579/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_579/ReluRelu"while/lstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_1Mulwhile/lstm_cell_579/Sigmoid:y:0&while/lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/add_1AddV2while/lstm_cell_579/mul:z:0while/lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_579/Sigmoid_2Sigmoid"while/lstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_579/Relu_1Reluwhile/lstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_579/mul_2Mul!while/lstm_cell_579/Sigmoid_2:y:0(while/lstm_cell_579/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_579/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_579/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_579/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_579/BiasAdd/ReadVariableOp*^while/lstm_cell_579/MatMul/ReadVariableOp,^while/lstm_cell_579/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_579_biasadd_readvariableop_resource5while_lstm_cell_579_biasadd_readvariableop_resource_0"n
4while_lstm_cell_579_matmul_1_readvariableop_resource6while_lstm_cell_579_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_579_matmul_readvariableop_resource4while_lstm_cell_579_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_579/BiasAdd/ReadVariableOp*while/lstm_cell_579/BiasAdd/ReadVariableOp2V
)while/lstm_cell_579/MatMul/ReadVariableOp)while/lstm_cell_579/MatMul/ReadVariableOp2Z
+while/lstm_cell_579/MatMul_1/ReadVariableOp+while/lstm_cell_579/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3520353

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
?

?
lstm_572_while_cond_3518231.
*lstm_572_while_lstm_572_while_loop_counter4
0lstm_572_while_lstm_572_while_maximum_iterations
lstm_572_while_placeholder 
lstm_572_while_placeholder_1 
lstm_572_while_placeholder_2 
lstm_572_while_placeholder_30
,lstm_572_while_less_lstm_572_strided_slice_1G
Clstm_572_while_lstm_572_while_cond_3518231___redundant_placeholder0G
Clstm_572_while_lstm_572_while_cond_3518231___redundant_placeholder1G
Clstm_572_while_lstm_572_while_cond_3518231___redundant_placeholder2G
Clstm_572_while_lstm_572_while_cond_3518231___redundant_placeholder3
lstm_572_while_identity
?
lstm_572/while/LessLesslstm_572_while_placeholder,lstm_572_while_less_lstm_572_strided_slice_1*
T0*
_output_shapes
: ]
lstm_572/while/IdentityIdentitylstm_572/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_572_while_identity lstm_572/while/Identity:output:0*(
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
?
while_cond_3518710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3518710___redundant_placeholder05
1while_while_cond_3518710___redundant_placeholder15
1while_while_cond_3518710___redundant_placeholder25
1while_while_cond_3518710___redundant_placeholder3
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
?
?
*__inference_lstm_572_layer_call_fn_3519587

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
GPU 2J 8? *N
fIRG
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516653o
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
?
?
while_cond_3515234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3515234___redundant_placeholder05
1while_while_cond_3515234___redundant_placeholder15
1while_while_cond_3515234___redundant_placeholder25
1while_while_cond_3515234___redundant_placeholder3
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
?
?
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517379
lstm_570_input#
lstm_570_3517352:	?#
lstm_570_3517354:	d?
lstm_570_3517356:	?#
lstm_571_3517359:	d?#
lstm_571_3517361:	2?
lstm_571_3517363:	?"
lstm_572_3517366:2("
lstm_572_3517368:
(
lstm_572_3517370:(#
dense_190_3517373:

dense_190_3517375:
identity??!dense_190/StatefulPartitionedCall? lstm_570/StatefulPartitionedCall? lstm_571/StatefulPartitionedCall? lstm_572/StatefulPartitionedCall?
 lstm_570/StatefulPartitionedCallStatefulPartitionedCalllstm_570_inputlstm_570_3517352lstm_570_3517354lstm_570_3517356*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_570_layer_call_and_return_conditional_losses_3517199?
 lstm_571/StatefulPartitionedCallStatefulPartitionedCall)lstm_570/StatefulPartitionedCall:output:0lstm_571_3517359lstm_571_3517361lstm_571_3517363*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_571_layer_call_and_return_conditional_losses_3517034?
 lstm_572/StatefulPartitionedCallStatefulPartitionedCall)lstm_571/StatefulPartitionedCall:output:0lstm_572_3517366lstm_572_3517368lstm_572_3517370*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516869?
!dense_190/StatefulPartitionedCallStatefulPartitionedCall)lstm_572/StatefulPartitionedCall:output:0dense_190_3517373dense_190_3517375*
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
GPU 2J 8? *O
fJRH
F__inference_dense_190_layer_call_and_return_conditional_losses_3516671y
IdentityIdentity*dense_190/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_190/StatefulPartitionedCall!^lstm_570/StatefulPartitionedCall!^lstm_571/StatefulPartitionedCall!^lstm_572/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_190/StatefulPartitionedCall!dense_190/StatefulPartitionedCall2D
 lstm_570/StatefulPartitionedCall lstm_570/StatefulPartitionedCall2D
 lstm_571/StatefulPartitionedCall lstm_571/StatefulPartitionedCall2D
 lstm_572/StatefulPartitionedCall lstm_572/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_570_input
?
?
/__inference_lstm_cell_581_layer_call_fn_3520402

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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3515921o
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
?
?
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517267

inputs#
lstm_570_3517240:	?#
lstm_570_3517242:	d?
lstm_570_3517244:	?#
lstm_571_3517247:	d?#
lstm_571_3517249:	2?
lstm_571_3517251:	?"
lstm_572_3517254:2("
lstm_572_3517256:
(
lstm_572_3517258:(#
dense_190_3517261:

dense_190_3517263:
identity??!dense_190/StatefulPartitionedCall? lstm_570/StatefulPartitionedCall? lstm_571/StatefulPartitionedCall? lstm_572/StatefulPartitionedCall?
 lstm_570/StatefulPartitionedCallStatefulPartitionedCallinputslstm_570_3517240lstm_570_3517242lstm_570_3517244*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_570_layer_call_and_return_conditional_losses_3517199?
 lstm_571/StatefulPartitionedCallStatefulPartitionedCall)lstm_570/StatefulPartitionedCall:output:0lstm_571_3517247lstm_571_3517249lstm_571_3517251*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_571_layer_call_and_return_conditional_losses_3517034?
 lstm_572/StatefulPartitionedCallStatefulPartitionedCall)lstm_571/StatefulPartitionedCall:output:0lstm_572_3517254lstm_572_3517256lstm_572_3517258*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516869?
!dense_190/StatefulPartitionedCallStatefulPartitionedCall)lstm_572/StatefulPartitionedCall:output:0dense_190_3517261dense_190_3517263*
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
GPU 2J 8? *O
fJRH
F__inference_dense_190_layer_call_and_return_conditional_losses_3516671y
IdentityIdentity*dense_190/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_190/StatefulPartitionedCall!^lstm_570/StatefulPartitionedCall!^lstm_571/StatefulPartitionedCall!^lstm_572/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_190/StatefulPartitionedCall!dense_190/StatefulPartitionedCall2D
 lstm_570/StatefulPartitionedCall lstm_570/StatefulPartitionedCall2D
 lstm_571/StatefulPartitionedCall lstm_571/StatefulPartitionedCall2D
 lstm_572/StatefulPartitionedCall lstm_572/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_190_layer_call_fn_3517319
lstm_570_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_570_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *T
fORM
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517267o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_570_input
?
?
*__inference_lstm_571_layer_call_fn_3518949
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
GPU 2J 8? *N
fIRG
E__inference_lstm_571_layer_call_and_return_conditional_losses_3515654|
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
?
?
*__inference_lstm_570_layer_call_fn_3518366

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
GPU 2J 8? *N
fIRG
E__inference_lstm_570_layer_call_and_return_conditional_losses_3517199s
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
?
*__inference_lstm_571_layer_call_fn_3518982

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
GPU 2J 8? *N
fIRG
E__inference_lstm_571_layer_call_and_return_conditional_losses_3517034s
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
?K
?
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519125
inputs_0?
,lstm_cell_580_matmul_readvariableop_resource:	d?A
.lstm_cell_580_matmul_1_readvariableop_resource:	2?<
-lstm_cell_580_biasadd_readvariableop_resource:	?
identity??$lstm_cell_580/BiasAdd/ReadVariableOp?#lstm_cell_580/MatMul/ReadVariableOp?%lstm_cell_580/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_580/MatMul/ReadVariableOpReadVariableOp,lstm_cell_580_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_580/MatMulMatMulstrided_slice_2:output:0+lstm_cell_580/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_580/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_580_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_580/MatMul_1MatMulzeros:output:0-lstm_cell_580/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_580/addAddV2lstm_cell_580/MatMul:product:0 lstm_cell_580/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_580/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_580_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_580/BiasAddBiasAddlstm_cell_580/add:z:0,lstm_cell_580/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_580/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_580/splitSplit&lstm_cell_580/split/split_dim:output:0lstm_cell_580/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_580/SigmoidSigmoidlstm_cell_580/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_1Sigmoidlstm_cell_580/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_580/mulMullstm_cell_580/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_580/ReluRelulstm_cell_580/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_1Mullstm_cell_580/Sigmoid:y:0 lstm_cell_580/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_580/add_1AddV2lstm_cell_580/mul:z:0lstm_cell_580/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_580/Sigmoid_2Sigmoidlstm_cell_580/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_580/Relu_1Relulstm_cell_580/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_580/mul_2Mullstm_cell_580/Sigmoid_2:y:0"lstm_cell_580/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_580_matmul_readvariableop_resource.lstm_cell_580_matmul_1_readvariableop_resource-lstm_cell_580_biasadd_readvariableop_resource*
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
while_body_3519041*
condR
while_cond_3519040*K
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
NoOpNoOp%^lstm_cell_580/BiasAdd/ReadVariableOp$^lstm_cell_580/MatMul/ReadVariableOp&^lstm_cell_580/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_580/BiasAdd/ReadVariableOp$lstm_cell_580/BiasAdd/ReadVariableOp2J
#lstm_cell_580/MatMul/ReadVariableOp#lstm_cell_580/MatMul/ReadVariableOp2N
%lstm_cell_580/MatMul_1/ReadVariableOp%lstm_cell_580/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_571_layer_call_and_return_conditional_losses_3515845

inputs(
lstm_cell_580_3515763:	d?(
lstm_cell_580_3515765:	2?$
lstm_cell_580_3515767:	?
identity??%lstm_cell_580/StatefulPartitionedCall?while;
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
%lstm_cell_580/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_580_3515763lstm_cell_580_3515765lstm_cell_580_3515767*
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
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3515717n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_580_3515763lstm_cell_580_3515765lstm_cell_580_3515767*
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
while_body_3515776*
condR
while_cond_3515775*K
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
NoOpNoOp&^lstm_cell_580/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_580/StatefulPartitionedCall%lstm_cell_580/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_572_layer_call_fn_3519576
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
GPU 2J 8? *N
fIRG
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516195o
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
?#
?
while_body_3515585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_580_3515609_0:	d?0
while_lstm_cell_580_3515611_0:	2?,
while_lstm_cell_580_3515613_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_580_3515609:	d?.
while_lstm_cell_580_3515611:	2?*
while_lstm_cell_580_3515613:	???+while/lstm_cell_580/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_580/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_580_3515609_0while_lstm_cell_580_3515611_0while_lstm_cell_580_3515613_0*
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
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3515571?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_580/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_580/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_580/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_580/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_580_3515609while_lstm_cell_580_3515609_0"<
while_lstm_cell_580_3515611while_lstm_cell_580_3515611_0"<
while_lstm_cell_580_3515613while_lstm_cell_580_3515613_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_580/StatefulPartitionedCall+while/lstm_cell_580/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3516785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_581_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_581_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_581_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_581_matmul_readvariableop_resource:2(F
4while_lstm_cell_581_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_581_biasadd_readvariableop_resource:(??*while/lstm_cell_581/BiasAdd/ReadVariableOp?)while/lstm_cell_581/MatMul/ReadVariableOp?+while/lstm_cell_581/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_581/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_581_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_581/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_581/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_581/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_581_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_581/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_581/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_581/addAddV2$while/lstm_cell_581/MatMul:product:0&while/lstm_cell_581/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_581/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_581_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_581/BiasAddBiasAddwhile/lstm_cell_581/add:z:02while/lstm_cell_581/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_581/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_581/splitSplit,while/lstm_cell_581/split/split_dim:output:0$while/lstm_cell_581/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_581/SigmoidSigmoid"while/lstm_cell_581/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_1Sigmoid"while/lstm_cell_581/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mulMul!while/lstm_cell_581/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_581/ReluRelu"while/lstm_cell_581/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_1Mulwhile/lstm_cell_581/Sigmoid:y:0&while/lstm_cell_581/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/add_1AddV2while/lstm_cell_581/mul:z:0while/lstm_cell_581/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_581/Sigmoid_2Sigmoid"while/lstm_cell_581/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_581/Relu_1Reluwhile/lstm_cell_581/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_581/mul_2Mul!while/lstm_cell_581/Sigmoid_2:y:0(while/lstm_cell_581/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_581/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_581/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_581/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_581/BiasAdd/ReadVariableOp*^while/lstm_cell_581/MatMul/ReadVariableOp,^while/lstm_cell_581/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_581_biasadd_readvariableop_resource5while_lstm_cell_581_biasadd_readvariableop_resource_0"n
4while_lstm_cell_581_matmul_1_readvariableop_resource6while_lstm_cell_581_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_581_matmul_readvariableop_resource4while_lstm_cell_581_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_581/BiasAdd/ReadVariableOp*while/lstm_cell_581/BiasAdd/ReadVariableOp2V
)while/lstm_cell_581/MatMul/ReadVariableOp)while/lstm_cell_581/MatMul/ReadVariableOp2Z
+while/lstm_cell_581/MatMul_1/ReadVariableOp+while/lstm_cell_581/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*__inference_lstm_572_layer_call_fn_3519565
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
GPU 2J 8? *N
fIRG
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516004o
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
?
?
*__inference_lstm_570_layer_call_fn_3518344
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
GPU 2J 8? *N
fIRG
E__inference_lstm_570_layer_call_and_return_conditional_losses_3515495|
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
?K
?
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518509
inputs_0?
,lstm_cell_579_matmul_readvariableop_resource:	?A
.lstm_cell_579_matmul_1_readvariableop_resource:	d?<
-lstm_cell_579_biasadd_readvariableop_resource:	?
identity??$lstm_cell_579/BiasAdd/ReadVariableOp?#lstm_cell_579/MatMul/ReadVariableOp?%lstm_cell_579/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_579/MatMul/ReadVariableOpReadVariableOp,lstm_cell_579_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_579/MatMulMatMulstrided_slice_2:output:0+lstm_cell_579/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_579/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_579_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_579/MatMul_1MatMulzeros:output:0-lstm_cell_579/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_579/addAddV2lstm_cell_579/MatMul:product:0 lstm_cell_579/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_579/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_579_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_579/BiasAddBiasAddlstm_cell_579/add:z:0,lstm_cell_579/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_579/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_579/splitSplit&lstm_cell_579/split/split_dim:output:0lstm_cell_579/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_579/SigmoidSigmoidlstm_cell_579/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_1Sigmoidlstm_cell_579/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_579/mulMullstm_cell_579/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_579/ReluRelulstm_cell_579/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_1Mullstm_cell_579/Sigmoid:y:0 lstm_cell_579/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_579/add_1AddV2lstm_cell_579/mul:z:0lstm_cell_579/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_579/Sigmoid_2Sigmoidlstm_cell_579/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_579/Relu_1Relulstm_cell_579/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_579/mul_2Mullstm_cell_579/Sigmoid_2:y:0"lstm_cell_579/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_579_matmul_readvariableop_resource.lstm_cell_579_matmul_1_readvariableop_resource-lstm_cell_579_biasadd_readvariableop_resource*
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
while_body_3518425*
condR
while_cond_3518424*K
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
NoOpNoOp%^lstm_cell_579/BiasAdd/ReadVariableOp$^lstm_cell_579/MatMul/ReadVariableOp&^lstm_cell_579/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_579/BiasAdd/ReadVariableOp$lstm_cell_579/BiasAdd/ReadVariableOp2J
#lstm_cell_579/MatMul/ReadVariableOp#lstm_cell_579/MatMul/ReadVariableOp2N
%lstm_cell_579/MatMul_1/ReadVariableOp%lstm_cell_579/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_572_layer_call_fn_3519598

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
GPU 2J 8? *N
fIRG
E__inference_lstm_572_layer_call_and_return_conditional_losses_3516869o
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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_570_input;
 serving_default_lstm_570_input:0?????????=
	dense_1900
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
": 
2dense_190/kernel
:2dense_190/bias
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
0:.	?2lstm_570/lstm_cell_570/kernel
::8	d?2'lstm_570/lstm_cell_570/recurrent_kernel
*:(?2lstm_570/lstm_cell_570/bias
0:.	d?2lstm_571/lstm_cell_571/kernel
::8	2?2'lstm_571/lstm_cell_571/recurrent_kernel
*:(?2lstm_571/lstm_cell_571/bias
/:-2(2lstm_572/lstm_cell_572/kernel
9:7
(2'lstm_572/lstm_cell_572/recurrent_kernel
):'(2lstm_572/lstm_cell_572/bias
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
':%
2Adam/dense_190/kernel/m
!:2Adam/dense_190/bias/m
5:3	?2$Adam/lstm_570/lstm_cell_570/kernel/m
?:=	d?2.Adam/lstm_570/lstm_cell_570/recurrent_kernel/m
/:-?2"Adam/lstm_570/lstm_cell_570/bias/m
5:3	d?2$Adam/lstm_571/lstm_cell_571/kernel/m
?:=	2?2.Adam/lstm_571/lstm_cell_571/recurrent_kernel/m
/:-?2"Adam/lstm_571/lstm_cell_571/bias/m
4:22(2$Adam/lstm_572/lstm_cell_572/kernel/m
>:<
(2.Adam/lstm_572/lstm_cell_572/recurrent_kernel/m
.:,(2"Adam/lstm_572/lstm_cell_572/bias/m
':%
2Adam/dense_190/kernel/v
!:2Adam/dense_190/bias/v
5:3	?2$Adam/lstm_570/lstm_cell_570/kernel/v
?:=	d?2.Adam/lstm_570/lstm_cell_570/recurrent_kernel/v
/:-?2"Adam/lstm_570/lstm_cell_570/bias/v
5:3	d?2$Adam/lstm_571/lstm_cell_571/kernel/v
?:=	2?2.Adam/lstm_571/lstm_cell_571/recurrent_kernel/v
/:-?2"Adam/lstm_571/lstm_cell_571/bias/v
4:22(2$Adam/lstm_572/lstm_cell_572/kernel/v
>:<
(2.Adam/lstm_572/lstm_cell_572/recurrent_kernel/v
.:,(2"Adam/lstm_572/lstm_cell_572/bias/v
?2?
0__inference_sequential_190_layer_call_fn_3516703
0__inference_sequential_190_layer_call_fn_3517441
0__inference_sequential_190_layer_call_fn_3517468
0__inference_sequential_190_layer_call_fn_3517319?
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
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517895
K__inference_sequential_190_layer_call_and_return_conditional_losses_3518322
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517349
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517379?
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
"__inference__wrapped_model_3515154lstm_570_input"?
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
*__inference_lstm_570_layer_call_fn_3518333
*__inference_lstm_570_layer_call_fn_3518344
*__inference_lstm_570_layer_call_fn_3518355
*__inference_lstm_570_layer_call_fn_3518366?
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
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518509
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518652
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518795
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518938?
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
*__inference_lstm_571_layer_call_fn_3518949
*__inference_lstm_571_layer_call_fn_3518960
*__inference_lstm_571_layer_call_fn_3518971
*__inference_lstm_571_layer_call_fn_3518982?
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
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519125
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519268
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519411
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519554?
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
*__inference_lstm_572_layer_call_fn_3519565
*__inference_lstm_572_layer_call_fn_3519576
*__inference_lstm_572_layer_call_fn_3519587
*__inference_lstm_572_layer_call_fn_3519598?
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
E__inference_lstm_572_layer_call_and_return_conditional_losses_3519741
E__inference_lstm_572_layer_call_and_return_conditional_losses_3519884
E__inference_lstm_572_layer_call_and_return_conditional_losses_3520027
E__inference_lstm_572_layer_call_and_return_conditional_losses_3520170?
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
+__inference_dense_190_layer_call_fn_3520179?
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
F__inference_dense_190_layer_call_and_return_conditional_losses_3520189?
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
%__inference_signature_wrapper_3517414lstm_570_input"?
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
/__inference_lstm_cell_579_layer_call_fn_3520206
/__inference_lstm_cell_579_layer_call_fn_3520223?
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
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3520255
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3520287?
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
/__inference_lstm_cell_580_layer_call_fn_3520304
/__inference_lstm_cell_580_layer_call_fn_3520321?
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
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3520353
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3520385?
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
/__inference_lstm_cell_581_layer_call_fn_3520402
/__inference_lstm_cell_581_layer_call_fn_3520419?
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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3520451
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3520483?
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
"__inference__wrapped_model_3515154?-./012345!";?8
1?.
,?)
lstm_570_input?????????
? "5?2
0
	dense_190#? 
	dense_190??????????
F__inference_dense_190_layer_call_and_return_conditional_losses_3520189\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_190_layer_call_fn_3520179O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518509?-./O?L
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
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518652?-./O?L
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
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518795q-./??<
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
E__inference_lstm_570_layer_call_and_return_conditional_losses_3518938q-./??<
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
*__inference_lstm_570_layer_call_fn_3518333}-./O?L
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
*__inference_lstm_570_layer_call_fn_3518344}-./O?L
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
*__inference_lstm_570_layer_call_fn_3518355d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_570_layer_call_fn_3518366d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519125?012O?L
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
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519268?012O?L
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
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519411q012??<
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
E__inference_lstm_571_layer_call_and_return_conditional_losses_3519554q012??<
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
*__inference_lstm_571_layer_call_fn_3518949}012O?L
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
*__inference_lstm_571_layer_call_fn_3518960}012O?L
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
*__inference_lstm_571_layer_call_fn_3518971d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_571_layer_call_fn_3518982d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_572_layer_call_and_return_conditional_losses_3519741}345O?L
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
E__inference_lstm_572_layer_call_and_return_conditional_losses_3519884}345O?L
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
E__inference_lstm_572_layer_call_and_return_conditional_losses_3520027m345??<
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
E__inference_lstm_572_layer_call_and_return_conditional_losses_3520170m345??<
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
*__inference_lstm_572_layer_call_fn_3519565p345O?L
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
*__inference_lstm_572_layer_call_fn_3519576p345O?L
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
*__inference_lstm_572_layer_call_fn_3519587`345??<
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
*__inference_lstm_572_layer_call_fn_3519598`345??<
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
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3520255?-./??}
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
J__inference_lstm_cell_579_layer_call_and_return_conditional_losses_3520287?-./??}
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
/__inference_lstm_cell_579_layer_call_fn_3520206?-./??}
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
/__inference_lstm_cell_579_layer_call_fn_3520223?-./??}
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
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3520353?012??}
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
J__inference_lstm_cell_580_layer_call_and_return_conditional_losses_3520385?012??}
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
/__inference_lstm_cell_580_layer_call_fn_3520304?012??}
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
/__inference_lstm_cell_580_layer_call_fn_3520321?012??}
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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3520451?345??}
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
J__inference_lstm_cell_581_layer_call_and_return_conditional_losses_3520483?345??}
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
/__inference_lstm_cell_581_layer_call_fn_3520402?345??}
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
/__inference_lstm_cell_581_layer_call_fn_3520419?345??}
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
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517349y-./012345!"C?@
9?6
,?)
lstm_570_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517379y-./012345!"C?@
9?6
,?)
lstm_570_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_190_layer_call_and_return_conditional_losses_3517895q-./012345!";?8
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
K__inference_sequential_190_layer_call_and_return_conditional_losses_3518322q-./012345!";?8
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
0__inference_sequential_190_layer_call_fn_3516703l-./012345!"C?@
9?6
,?)
lstm_570_input?????????
p 

 
? "???????????
0__inference_sequential_190_layer_call_fn_3517319l-./012345!"C?@
9?6
,?)
lstm_570_input?????????
p

 
? "???????????
0__inference_sequential_190_layer_call_fn_3517441d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_190_layer_call_fn_3517468d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3517414?-./012345!"M?J
? 
C?@
>
lstm_570_input,?)
lstm_570_input?????????"5?2
0
	dense_190#? 
	dense_190?????????