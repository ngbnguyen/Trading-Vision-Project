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
dense_242/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_242/kernel
u
$dense_242/kernel/Read/ReadVariableOpReadVariableOpdense_242/kernel*
_output_shapes

:
*
dtype0
t
dense_242/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_242/bias
m
"dense_242/bias/Read/ReadVariableOpReadVariableOpdense_242/bias*
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
lstm_726/lstm_cell_726/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_726/lstm_cell_726/kernel
?
1lstm_726/lstm_cell_726/kernel/Read/ReadVariableOpReadVariableOplstm_726/lstm_cell_726/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_726/lstm_cell_726/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_726/lstm_cell_726/recurrent_kernel
?
;lstm_726/lstm_cell_726/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_726/lstm_cell_726/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_726/lstm_cell_726/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_726/lstm_cell_726/bias
?
/lstm_726/lstm_cell_726/bias/Read/ReadVariableOpReadVariableOplstm_726/lstm_cell_726/bias*
_output_shapes	
:?*
dtype0
?
lstm_727/lstm_cell_727/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_727/lstm_cell_727/kernel
?
1lstm_727/lstm_cell_727/kernel/Read/ReadVariableOpReadVariableOplstm_727/lstm_cell_727/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_727/lstm_cell_727/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_727/lstm_cell_727/recurrent_kernel
?
;lstm_727/lstm_cell_727/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_727/lstm_cell_727/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_727/lstm_cell_727/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_727/lstm_cell_727/bias
?
/lstm_727/lstm_cell_727/bias/Read/ReadVariableOpReadVariableOplstm_727/lstm_cell_727/bias*
_output_shapes	
:?*
dtype0
?
lstm_728/lstm_cell_728/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_728/lstm_cell_728/kernel
?
1lstm_728/lstm_cell_728/kernel/Read/ReadVariableOpReadVariableOplstm_728/lstm_cell_728/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_728/lstm_cell_728/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_728/lstm_cell_728/recurrent_kernel
?
;lstm_728/lstm_cell_728/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_728/lstm_cell_728/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_728/lstm_cell_728/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_728/lstm_cell_728/bias
?
/lstm_728/lstm_cell_728/bias/Read/ReadVariableOpReadVariableOplstm_728/lstm_cell_728/bias*
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
Adam/dense_242/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_242/kernel/m
?
+Adam/dense_242/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_242/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_242/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_242/bias/m
{
)Adam/dense_242/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_242/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_726/lstm_cell_726/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_726/lstm_cell_726/kernel/m
?
8Adam/lstm_726/lstm_cell_726/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_726/lstm_cell_726/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_726/lstm_cell_726/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_726/lstm_cell_726/recurrent_kernel/m
?
BAdam/lstm_726/lstm_cell_726/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_726/lstm_cell_726/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_726/lstm_cell_726/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_726/lstm_cell_726/bias/m
?
6Adam/lstm_726/lstm_cell_726/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_726/lstm_cell_726/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_727/lstm_cell_727/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_727/lstm_cell_727/kernel/m
?
8Adam/lstm_727/lstm_cell_727/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_727/lstm_cell_727/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_727/lstm_cell_727/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_727/lstm_cell_727/recurrent_kernel/m
?
BAdam/lstm_727/lstm_cell_727/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_727/lstm_cell_727/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_727/lstm_cell_727/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_727/lstm_cell_727/bias/m
?
6Adam/lstm_727/lstm_cell_727/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_727/lstm_cell_727/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_728/lstm_cell_728/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_728/lstm_cell_728/kernel/m
?
8Adam/lstm_728/lstm_cell_728/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_728/lstm_cell_728/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_728/lstm_cell_728/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_728/lstm_cell_728/recurrent_kernel/m
?
BAdam/lstm_728/lstm_cell_728/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_728/lstm_cell_728/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_728/lstm_cell_728/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_728/lstm_cell_728/bias/m
?
6Adam/lstm_728/lstm_cell_728/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_728/lstm_cell_728/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_242/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_242/kernel/v
?
+Adam/dense_242/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_242/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_242/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_242/bias/v
{
)Adam/dense_242/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_242/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_726/lstm_cell_726/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_726/lstm_cell_726/kernel/v
?
8Adam/lstm_726/lstm_cell_726/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_726/lstm_cell_726/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_726/lstm_cell_726/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_726/lstm_cell_726/recurrent_kernel/v
?
BAdam/lstm_726/lstm_cell_726/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_726/lstm_cell_726/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_726/lstm_cell_726/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_726/lstm_cell_726/bias/v
?
6Adam/lstm_726/lstm_cell_726/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_726/lstm_cell_726/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_727/lstm_cell_727/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_727/lstm_cell_727/kernel/v
?
8Adam/lstm_727/lstm_cell_727/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_727/lstm_cell_727/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_727/lstm_cell_727/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_727/lstm_cell_727/recurrent_kernel/v
?
BAdam/lstm_727/lstm_cell_727/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_727/lstm_cell_727/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_727/lstm_cell_727/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_727/lstm_cell_727/bias/v
?
6Adam/lstm_727/lstm_cell_727/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_727/lstm_cell_727/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_728/lstm_cell_728/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_728/lstm_cell_728/kernel/v
?
8Adam/lstm_728/lstm_cell_728/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_728/lstm_cell_728/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_728/lstm_cell_728/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_728/lstm_cell_728/recurrent_kernel/v
?
BAdam/lstm_728/lstm_cell_728/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_728/lstm_cell_728/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_728/lstm_cell_728/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_728/lstm_cell_728/bias/v
?
6Adam/lstm_728/lstm_cell_728/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_728/lstm_cell_728/bias/v*
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
VARIABLE_VALUEdense_242/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_242/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_726/lstm_cell_726/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_726/lstm_cell_726/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_726/lstm_cell_726/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_727/lstm_cell_727/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_727/lstm_cell_727/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_727/lstm_cell_727/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_728/lstm_cell_728/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_728/lstm_cell_728/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_728/lstm_cell_728/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_242/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_242/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_726/lstm_cell_726/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_726/lstm_cell_726/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_726/lstm_cell_726/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_727/lstm_cell_727/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_727/lstm_cell_727/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_727/lstm_cell_727/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_728/lstm_cell_728/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_728/lstm_cell_728/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_728/lstm_cell_728/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_242/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_242/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_726/lstm_cell_726/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_726/lstm_cell_726/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_726/lstm_cell_726/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_727/lstm_cell_727/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_727/lstm_cell_727/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_727/lstm_cell_727/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_728/lstm_cell_728/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_728/lstm_cell_728/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_728/lstm_cell_728/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_726_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_726_inputlstm_726/lstm_cell_726/kernel'lstm_726/lstm_cell_726/recurrent_kernellstm_726/lstm_cell_726/biaslstm_727/lstm_cell_727/kernel'lstm_727/lstm_cell_727/recurrent_kernellstm_727/lstm_cell_727/biaslstm_728/lstm_cell_728/kernel'lstm_728/lstm_cell_728/recurrent_kernellstm_728/lstm_cell_728/biasdense_242/kerneldense_242/bias*
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
%__inference_signature_wrapper_3881344
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_242/kernel/Read/ReadVariableOp"dense_242/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_726/lstm_cell_726/kernel/Read/ReadVariableOp;lstm_726/lstm_cell_726/recurrent_kernel/Read/ReadVariableOp/lstm_726/lstm_cell_726/bias/Read/ReadVariableOp1lstm_727/lstm_cell_727/kernel/Read/ReadVariableOp;lstm_727/lstm_cell_727/recurrent_kernel/Read/ReadVariableOp/lstm_727/lstm_cell_727/bias/Read/ReadVariableOp1lstm_728/lstm_cell_728/kernel/Read/ReadVariableOp;lstm_728/lstm_cell_728/recurrent_kernel/Read/ReadVariableOp/lstm_728/lstm_cell_728/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_242/kernel/m/Read/ReadVariableOp)Adam/dense_242/bias/m/Read/ReadVariableOp8Adam/lstm_726/lstm_cell_726/kernel/m/Read/ReadVariableOpBAdam/lstm_726/lstm_cell_726/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_726/lstm_cell_726/bias/m/Read/ReadVariableOp8Adam/lstm_727/lstm_cell_727/kernel/m/Read/ReadVariableOpBAdam/lstm_727/lstm_cell_727/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_727/lstm_cell_727/bias/m/Read/ReadVariableOp8Adam/lstm_728/lstm_cell_728/kernel/m/Read/ReadVariableOpBAdam/lstm_728/lstm_cell_728/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_728/lstm_cell_728/bias/m/Read/ReadVariableOp+Adam/dense_242/kernel/v/Read/ReadVariableOp)Adam/dense_242/bias/v/Read/ReadVariableOp8Adam/lstm_726/lstm_cell_726/kernel/v/Read/ReadVariableOpBAdam/lstm_726/lstm_cell_726/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_726/lstm_cell_726/bias/v/Read/ReadVariableOp8Adam/lstm_727/lstm_cell_727/kernel/v/Read/ReadVariableOpBAdam/lstm_727/lstm_cell_727/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_727/lstm_cell_727/bias/v/Read/ReadVariableOp8Adam/lstm_728/lstm_cell_728/kernel/v/Read/ReadVariableOpBAdam/lstm_728/lstm_cell_728/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_728/lstm_cell_728/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3884556
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_242/kerneldense_242/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_726/lstm_cell_726/kernel'lstm_726/lstm_cell_726/recurrent_kernellstm_726/lstm_cell_726/biaslstm_727/lstm_cell_727/kernel'lstm_727/lstm_cell_727/recurrent_kernellstm_727/lstm_cell_727/biaslstm_728/lstm_cell_728/kernel'lstm_728/lstm_cell_728/recurrent_kernellstm_728/lstm_cell_728/biastotalcountAdam/dense_242/kernel/mAdam/dense_242/bias/m$Adam/lstm_726/lstm_cell_726/kernel/m.Adam/lstm_726/lstm_cell_726/recurrent_kernel/m"Adam/lstm_726/lstm_cell_726/bias/m$Adam/lstm_727/lstm_cell_727/kernel/m.Adam/lstm_727/lstm_cell_727/recurrent_kernel/m"Adam/lstm_727/lstm_cell_727/bias/m$Adam/lstm_728/lstm_cell_728/kernel/m.Adam/lstm_728/lstm_cell_728/recurrent_kernel/m"Adam/lstm_728/lstm_cell_728/bias/mAdam/dense_242/kernel/vAdam/dense_242/bias/v$Adam/lstm_726/lstm_cell_726/kernel/v.Adam/lstm_726/lstm_cell_726/recurrent_kernel/v"Adam/lstm_726/lstm_cell_726/bias/v$Adam/lstm_727/lstm_cell_727/kernel/v.Adam/lstm_727/lstm_cell_727/recurrent_kernel/v"Adam/lstm_727/lstm_cell_727/bias/v$Adam/lstm_728/lstm_cell_728/kernel/v.Adam/lstm_728/lstm_cell_728/recurrent_kernel/v"Adam/lstm_728/lstm_cell_728/bias/v*4
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
#__inference__traced_restore_3884686??+
?J
?
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883341

inputs?
,lstm_cell_640_matmul_readvariableop_resource:	d?A
.lstm_cell_640_matmul_1_readvariableop_resource:	2?<
-lstm_cell_640_biasadd_readvariableop_resource:	?
identity??$lstm_cell_640/BiasAdd/ReadVariableOp?#lstm_cell_640/MatMul/ReadVariableOp?%lstm_cell_640/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_640/MatMul/ReadVariableOpReadVariableOp,lstm_cell_640_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_640/MatMulMatMulstrided_slice_2:output:0+lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_640_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_640/MatMul_1MatMulzeros:output:0-lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_640/addAddV2lstm_cell_640/MatMul:product:0 lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_640_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_640/BiasAddBiasAddlstm_cell_640/add:z:0,lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_640/splitSplit&lstm_cell_640/split/split_dim:output:0lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_640/SigmoidSigmoidlstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_1Sigmoidlstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_640/mulMullstm_cell_640/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_640/ReluRelulstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_1Mullstm_cell_640/Sigmoid:y:0 lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_640/add_1AddV2lstm_cell_640/mul:z:0lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_2Sigmoidlstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_640/Relu_1Relulstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_2Mullstm_cell_640/Sigmoid_2:y:0"lstm_cell_640/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_640_matmul_readvariableop_resource.lstm_cell_640_matmul_1_readvariableop_resource-lstm_cell_640_biasadd_readvariableop_resource*
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
while_body_3883257*
condR
while_cond_3883256*K
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
NoOpNoOp%^lstm_cell_640/BiasAdd/ReadVariableOp$^lstm_cell_640/MatMul/ReadVariableOp&^lstm_cell_640/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_640/BiasAdd/ReadVariableOp$lstm_cell_640/BiasAdd/ReadVariableOp2J
#lstm_cell_640/MatMul/ReadVariableOp#lstm_cell_640/MatMul/ReadVariableOp2N
%lstm_cell_640/MatMul_1/ReadVariableOp%lstm_cell_640/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_728_layer_call_and_return_conditional_losses_3883814
inputs_0>
,lstm_cell_641_matmul_readvariableop_resource:2(@
.lstm_cell_641_matmul_1_readvariableop_resource:
(;
-lstm_cell_641_biasadd_readvariableop_resource:(
identity??$lstm_cell_641/BiasAdd/ReadVariableOp?#lstm_cell_641/MatMul/ReadVariableOp?%lstm_cell_641/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_641/MatMul/ReadVariableOpReadVariableOp,lstm_cell_641_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_641/MatMulMatMulstrided_slice_2:output:0+lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_641_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_641/MatMul_1MatMulzeros:output:0-lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_641/addAddV2lstm_cell_641/MatMul:product:0 lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_641_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_641/BiasAddBiasAddlstm_cell_641/add:z:0,lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_641/splitSplit&lstm_cell_641/split/split_dim:output:0lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_641/SigmoidSigmoidlstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_1Sigmoidlstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_641/mulMullstm_cell_641/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_641/ReluRelulstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_1Mullstm_cell_641/Sigmoid:y:0 lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_641/add_1AddV2lstm_cell_641/mul:z:0lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_2Sigmoidlstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_641/Relu_1Relulstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_2Mullstm_cell_641/Sigmoid_2:y:0"lstm_cell_641/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_641_matmul_readvariableop_resource.lstm_cell_641_matmul_1_readvariableop_resource-lstm_cell_641_biasadd_readvariableop_resource*
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
while_body_3883730*
condR
while_cond_3883729*K
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
NoOpNoOp%^lstm_cell_641/BiasAdd/ReadVariableOp$^lstm_cell_641/MatMul/ReadVariableOp&^lstm_cell_641/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_641/BiasAdd/ReadVariableOp$lstm_cell_641/BiasAdd/ReadVariableOp2J
#lstm_cell_641/MatMul/ReadVariableOp#lstm_cell_641/MatMul/ReadVariableOp2N
%lstm_cell_641/MatMul_1/ReadVariableOp%lstm_cell_641/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882582
inputs_0?
,lstm_cell_639_matmul_readvariableop_resource:	?A
.lstm_cell_639_matmul_1_readvariableop_resource:	d?<
-lstm_cell_639_biasadd_readvariableop_resource:	?
identity??$lstm_cell_639/BiasAdd/ReadVariableOp?#lstm_cell_639/MatMul/ReadVariableOp?%lstm_cell_639/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_639/MatMul/ReadVariableOpReadVariableOp,lstm_cell_639_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_639/MatMulMatMulstrided_slice_2:output:0+lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_639_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_639/MatMul_1MatMulzeros:output:0-lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_639/addAddV2lstm_cell_639/MatMul:product:0 lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_639_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_639/BiasAddBiasAddlstm_cell_639/add:z:0,lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_639/splitSplit&lstm_cell_639/split/split_dim:output:0lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_639/SigmoidSigmoidlstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_1Sigmoidlstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_639/mulMullstm_cell_639/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_639/ReluRelulstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_1Mullstm_cell_639/Sigmoid:y:0 lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_639/add_1AddV2lstm_cell_639/mul:z:0lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_2Sigmoidlstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_639/Relu_1Relulstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_2Mullstm_cell_639/Sigmoid_2:y:0"lstm_cell_639/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_639_matmul_readvariableop_resource.lstm_cell_639_matmul_1_readvariableop_resource-lstm_cell_639_biasadd_readvariableop_resource*
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
while_body_3882498*
condR
while_cond_3882497*K
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
NoOpNoOp%^lstm_cell_639/BiasAdd/ReadVariableOp$^lstm_cell_639/MatMul/ReadVariableOp&^lstm_cell_639/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_639/BiasAdd/ReadVariableOp$lstm_cell_639/BiasAdd/ReadVariableOp2J
#lstm_cell_639/MatMul/ReadVariableOp#lstm_cell_639/MatMul/ReadVariableOp2N
%lstm_cell_639/MatMul_1/ReadVariableOp%lstm_cell_639/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3882640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3882640___redundant_placeholder05
1while_while_cond_3882640___redundant_placeholder15
1while_while_cond_3882640___redundant_placeholder25
1while_while_cond_3882640___redundant_placeholder3
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
while_body_3883873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_641_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_641_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_641_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_641_matmul_readvariableop_resource:2(F
4while_lstm_cell_641_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_641_biasadd_readvariableop_resource:(??*while/lstm_cell_641/BiasAdd/ReadVariableOp?)while/lstm_cell_641/MatMul/ReadVariableOp?+while/lstm_cell_641/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_641/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_641_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_641/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_641_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_641/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_641/addAddV2$while/lstm_cell_641/MatMul:product:0&while/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_641_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_641/BiasAddBiasAddwhile/lstm_cell_641/add:z:02while/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_641/splitSplit,while/lstm_cell_641/split/split_dim:output:0$while/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_641/SigmoidSigmoid"while/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_1Sigmoid"while/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mulMul!while/lstm_cell_641/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_641/ReluRelu"while/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_1Mulwhile/lstm_cell_641/Sigmoid:y:0&while/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/add_1AddV2while/lstm_cell_641/mul:z:0while/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_2Sigmoid"while/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_641/Relu_1Reluwhile/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_2Mul!while/lstm_cell_641/Sigmoid_2:y:0(while/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_641/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_641/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_641/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_641/BiasAdd/ReadVariableOp*^while/lstm_cell_641/MatMul/ReadVariableOp,^while/lstm_cell_641/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_641_biasadd_readvariableop_resource5while_lstm_cell_641_biasadd_readvariableop_resource_0"n
4while_lstm_cell_641_matmul_1_readvariableop_resource6while_lstm_cell_641_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_641_matmul_readvariableop_resource4while_lstm_cell_641_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_641/BiasAdd/ReadVariableOp*while/lstm_cell_641/BiasAdd/ReadVariableOp2V
)while/lstm_cell_641/MatMul/ReadVariableOp)while/lstm_cell_641/MatMul/ReadVariableOp2Z
+while/lstm_cell_641/MatMul_1/ReadVariableOp+while/lstm_cell_641/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_726_layer_call_fn_3882285

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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3880283s
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
while_cond_3879164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3879164___redundant_placeholder05
1while_while_cond_3879164___redundant_placeholder15
1while_while_cond_3879164___redundant_placeholder25
1while_while_cond_3879164___redundant_placeholder3
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883055
inputs_0?
,lstm_cell_640_matmul_readvariableop_resource:	d?A
.lstm_cell_640_matmul_1_readvariableop_resource:	2?<
-lstm_cell_640_biasadd_readvariableop_resource:	?
identity??$lstm_cell_640/BiasAdd/ReadVariableOp?#lstm_cell_640/MatMul/ReadVariableOp?%lstm_cell_640/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_640/MatMul/ReadVariableOpReadVariableOp,lstm_cell_640_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_640/MatMulMatMulstrided_slice_2:output:0+lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_640_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_640/MatMul_1MatMulzeros:output:0-lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_640/addAddV2lstm_cell_640/MatMul:product:0 lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_640_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_640/BiasAddBiasAddlstm_cell_640/add:z:0,lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_640/splitSplit&lstm_cell_640/split/split_dim:output:0lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_640/SigmoidSigmoidlstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_1Sigmoidlstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_640/mulMullstm_cell_640/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_640/ReluRelulstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_1Mullstm_cell_640/Sigmoid:y:0 lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_640/add_1AddV2lstm_cell_640/mul:z:0lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_2Sigmoidlstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_640/Relu_1Relulstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_2Mullstm_cell_640/Sigmoid_2:y:0"lstm_cell_640/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_640_matmul_readvariableop_resource.lstm_cell_640_matmul_1_readvariableop_resource-lstm_cell_640_biasadd_readvariableop_resource*
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
while_body_3882971*
condR
while_cond_3882970*K
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
NoOpNoOp%^lstm_cell_640/BiasAdd/ReadVariableOp$^lstm_cell_640/MatMul/ReadVariableOp&^lstm_cell_640/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_640/BiasAdd/ReadVariableOp$lstm_cell_640/BiasAdd/ReadVariableOp2J
#lstm_cell_640/MatMul/ReadVariableOp#lstm_cell_640/MatMul/ReadVariableOp2N
%lstm_cell_640/MatMul_1/ReadVariableOp%lstm_cell_640/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_726_while_cond_3881456.
*lstm_726_while_lstm_726_while_loop_counter4
0lstm_726_while_lstm_726_while_maximum_iterations
lstm_726_while_placeholder 
lstm_726_while_placeholder_1 
lstm_726_while_placeholder_2 
lstm_726_while_placeholder_30
,lstm_726_while_less_lstm_726_strided_slice_1G
Clstm_726_while_lstm_726_while_cond_3881456___redundant_placeholder0G
Clstm_726_while_lstm_726_while_cond_3881456___redundant_placeholder1G
Clstm_726_while_lstm_726_while_cond_3881456___redundant_placeholder2G
Clstm_726_while_lstm_726_while_cond_3881456___redundant_placeholder3
lstm_726_while_identity
?
lstm_726/while/LessLesslstm_726_while_placeholder,lstm_726_while_less_lstm_726_strided_slice_1*
T0*
_output_shapes
: ]
lstm_726/while/IdentityIdentitylstm_726/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_726_while_identity lstm_726/while/Identity:output:0*(
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
0__inference_sequential_242_layer_call_fn_3881371

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
K__inference_sequential_242_layer_call_and_return_conditional_losses_3880608o
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
?
?
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3884185

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
?
while_cond_3880198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3880198___redundant_placeholder05
1while_while_cond_3880198___redundant_placeholder15
1while_while_cond_3880198___redundant_placeholder25
1while_while_cond_3880198___redundant_placeholder3
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
?
*sequential_242_lstm_728_while_cond_3878993L
Hsequential_242_lstm_728_while_sequential_242_lstm_728_while_loop_counterR
Nsequential_242_lstm_728_while_sequential_242_lstm_728_while_maximum_iterations-
)sequential_242_lstm_728_while_placeholder/
+sequential_242_lstm_728_while_placeholder_1/
+sequential_242_lstm_728_while_placeholder_2/
+sequential_242_lstm_728_while_placeholder_3N
Jsequential_242_lstm_728_while_less_sequential_242_lstm_728_strided_slice_1e
asequential_242_lstm_728_while_sequential_242_lstm_728_while_cond_3878993___redundant_placeholder0e
asequential_242_lstm_728_while_sequential_242_lstm_728_while_cond_3878993___redundant_placeholder1e
asequential_242_lstm_728_while_sequential_242_lstm_728_while_cond_3878993___redundant_placeholder2e
asequential_242_lstm_728_while_sequential_242_lstm_728_while_cond_3878993___redundant_placeholder3*
&sequential_242_lstm_728_while_identity
?
"sequential_242/lstm_728/while/LessLess)sequential_242_lstm_728_while_placeholderJsequential_242_lstm_728_while_less_sequential_242_lstm_728_strided_slice_1*
T0*
_output_shapes
: {
&sequential_242/lstm_728/while/IdentityIdentity&sequential_242/lstm_728/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_242_lstm_728_while_identity/sequential_242/lstm_728/while/Identity:output:0*(
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
*sequential_242_lstm_727_while_body_3878855L
Hsequential_242_lstm_727_while_sequential_242_lstm_727_while_loop_counterR
Nsequential_242_lstm_727_while_sequential_242_lstm_727_while_maximum_iterations-
)sequential_242_lstm_727_while_placeholder/
+sequential_242_lstm_727_while_placeholder_1/
+sequential_242_lstm_727_while_placeholder_2/
+sequential_242_lstm_727_while_placeholder_3K
Gsequential_242_lstm_727_while_sequential_242_lstm_727_strided_slice_1_0?
?sequential_242_lstm_727_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_727_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_242_lstm_727_while_lstm_cell_640_matmul_readvariableop_resource_0:	d?a
Nsequential_242_lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource_0:	2?\
Msequential_242_lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource_0:	?*
&sequential_242_lstm_727_while_identity,
(sequential_242_lstm_727_while_identity_1,
(sequential_242_lstm_727_while_identity_2,
(sequential_242_lstm_727_while_identity_3,
(sequential_242_lstm_727_while_identity_4,
(sequential_242_lstm_727_while_identity_5I
Esequential_242_lstm_727_while_sequential_242_lstm_727_strided_slice_1?
?sequential_242_lstm_727_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_727_tensorarrayunstack_tensorlistfromtensor]
Jsequential_242_lstm_727_while_lstm_cell_640_matmul_readvariableop_resource:	d?_
Lsequential_242_lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource:	2?Z
Ksequential_242_lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource:	???Bsequential_242/lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp?Asequential_242/lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp?Csequential_242/lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp?
Osequential_242/lstm_727/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_242/lstm_727/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_242_lstm_727_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_727_tensorarrayunstack_tensorlistfromtensor_0)sequential_242_lstm_727_while_placeholderXsequential_242/lstm_727/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_242/lstm_727/while/lstm_cell_640/MatMul/ReadVariableOpReadVariableOpLsequential_242_lstm_727_while_lstm_cell_640_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_242/lstm_727/while/lstm_cell_640/MatMulMatMulHsequential_242/lstm_727/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_242/lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_242/lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOpNsequential_242_lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_242/lstm_727/while/lstm_cell_640/MatMul_1MatMul+sequential_242_lstm_727_while_placeholder_2Ksequential_242/lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_242/lstm_727/while/lstm_cell_640/addAddV2<sequential_242/lstm_727/while/lstm_cell_640/MatMul:product:0>sequential_242/lstm_727/while/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_242/lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOpMsequential_242_lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_242/lstm_727/while/lstm_cell_640/BiasAddBiasAdd3sequential_242/lstm_727/while/lstm_cell_640/add:z:0Jsequential_242/lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_242/lstm_727/while/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_242/lstm_727/while/lstm_cell_640/splitSplitDsequential_242/lstm_727/while/lstm_cell_640/split/split_dim:output:0<sequential_242/lstm_727/while/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_242/lstm_727/while/lstm_cell_640/SigmoidSigmoid:sequential_242/lstm_727/while/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_242/lstm_727/while/lstm_cell_640/Sigmoid_1Sigmoid:sequential_242/lstm_727/while/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_242/lstm_727/while/lstm_cell_640/mulMul9sequential_242/lstm_727/while/lstm_cell_640/Sigmoid_1:y:0+sequential_242_lstm_727_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_242/lstm_727/while/lstm_cell_640/ReluRelu:sequential_242/lstm_727/while/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_242/lstm_727/while/lstm_cell_640/mul_1Mul7sequential_242/lstm_727/while/lstm_cell_640/Sigmoid:y:0>sequential_242/lstm_727/while/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_242/lstm_727/while/lstm_cell_640/add_1AddV23sequential_242/lstm_727/while/lstm_cell_640/mul:z:05sequential_242/lstm_727/while/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_242/lstm_727/while/lstm_cell_640/Sigmoid_2Sigmoid:sequential_242/lstm_727/while/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_242/lstm_727/while/lstm_cell_640/Relu_1Relu5sequential_242/lstm_727/while/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_242/lstm_727/while/lstm_cell_640/mul_2Mul9sequential_242/lstm_727/while/lstm_cell_640/Sigmoid_2:y:0@sequential_242/lstm_727/while/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_242/lstm_727/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_242_lstm_727_while_placeholder_1)sequential_242_lstm_727_while_placeholder5sequential_242/lstm_727/while/lstm_cell_640/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_242/lstm_727/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_242/lstm_727/while/addAddV2)sequential_242_lstm_727_while_placeholder,sequential_242/lstm_727/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_242/lstm_727/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_242/lstm_727/while/add_1AddV2Hsequential_242_lstm_727_while_sequential_242_lstm_727_while_loop_counter.sequential_242/lstm_727/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_242/lstm_727/while/IdentityIdentity'sequential_242/lstm_727/while/add_1:z:0#^sequential_242/lstm_727/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_727/while/Identity_1IdentityNsequential_242_lstm_727_while_sequential_242_lstm_727_while_maximum_iterations#^sequential_242/lstm_727/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_727/while/Identity_2Identity%sequential_242/lstm_727/while/add:z:0#^sequential_242/lstm_727/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_727/while/Identity_3IdentityRsequential_242/lstm_727/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_242/lstm_727/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_727/while/Identity_4Identity5sequential_242/lstm_727/while/lstm_cell_640/mul_2:z:0#^sequential_242/lstm_727/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_242/lstm_727/while/Identity_5Identity5sequential_242/lstm_727/while/lstm_cell_640/add_1:z:0#^sequential_242/lstm_727/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_242/lstm_727/while/NoOpNoOpC^sequential_242/lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOpB^sequential_242/lstm_727/while/lstm_cell_640/MatMul/ReadVariableOpD^sequential_242/lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_242_lstm_727_while_identity/sequential_242/lstm_727/while/Identity:output:0"]
(sequential_242_lstm_727_while_identity_11sequential_242/lstm_727/while/Identity_1:output:0"]
(sequential_242_lstm_727_while_identity_21sequential_242/lstm_727/while/Identity_2:output:0"]
(sequential_242_lstm_727_while_identity_31sequential_242/lstm_727/while/Identity_3:output:0"]
(sequential_242_lstm_727_while_identity_41sequential_242/lstm_727/while/Identity_4:output:0"]
(sequential_242_lstm_727_while_identity_51sequential_242/lstm_727/while/Identity_5:output:0"?
Ksequential_242_lstm_727_while_lstm_cell_640_biasadd_readvariableop_resourceMsequential_242_lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource_0"?
Lsequential_242_lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resourceNsequential_242_lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource_0"?
Jsequential_242_lstm_727_while_lstm_cell_640_matmul_readvariableop_resourceLsequential_242_lstm_727_while_lstm_cell_640_matmul_readvariableop_resource_0"?
Esequential_242_lstm_727_while_sequential_242_lstm_727_strided_slice_1Gsequential_242_lstm_727_while_sequential_242_lstm_727_strided_slice_1_0"?
?sequential_242_lstm_727_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_727_tensorarrayunstack_tensorlistfromtensor?sequential_242_lstm_727_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_727_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_242/lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOpBsequential_242/lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp2?
Asequential_242/lstm_727/while/lstm_cell_640/MatMul/ReadVariableOpAsequential_242/lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp2?
Csequential_242/lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOpCsequential_242/lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?C
?

lstm_727_while_body_3882023.
*lstm_727_while_lstm_727_while_loop_counter4
0lstm_727_while_lstm_727_while_maximum_iterations
lstm_727_while_placeholder 
lstm_727_while_placeholder_1 
lstm_727_while_placeholder_2 
lstm_727_while_placeholder_3-
)lstm_727_while_lstm_727_strided_slice_1_0i
elstm_727_while_tensorarrayv2read_tensorlistgetitem_lstm_727_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_727_while_lstm_cell_640_matmul_readvariableop_resource_0:	d?R
?lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource_0:	2?M
>lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource_0:	?
lstm_727_while_identity
lstm_727_while_identity_1
lstm_727_while_identity_2
lstm_727_while_identity_3
lstm_727_while_identity_4
lstm_727_while_identity_5+
'lstm_727_while_lstm_727_strided_slice_1g
clstm_727_while_tensorarrayv2read_tensorlistgetitem_lstm_727_tensorarrayunstack_tensorlistfromtensorN
;lstm_727_while_lstm_cell_640_matmul_readvariableop_resource:	d?P
=lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource:	2?K
<lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource:	???3lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp?2lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp?4lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp?
@lstm_727/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_727/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_727_while_tensorarrayv2read_tensorlistgetitem_lstm_727_tensorarrayunstack_tensorlistfromtensor_0lstm_727_while_placeholderIlstm_727/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_727/while/lstm_cell_640/MatMul/ReadVariableOpReadVariableOp=lstm_727_while_lstm_cell_640_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_727/while/lstm_cell_640/MatMulMatMul9lstm_727/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp?lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_727/while/lstm_cell_640/MatMul_1MatMullstm_727_while_placeholder_2<lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_727/while/lstm_cell_640/addAddV2-lstm_727/while/lstm_cell_640/MatMul:product:0/lstm_727/while/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp>lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_727/while/lstm_cell_640/BiasAddBiasAdd$lstm_727/while/lstm_cell_640/add:z:0;lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_727/while/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_727/while/lstm_cell_640/splitSplit5lstm_727/while/lstm_cell_640/split/split_dim:output:0-lstm_727/while/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_727/while/lstm_cell_640/SigmoidSigmoid+lstm_727/while/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_727/while/lstm_cell_640/Sigmoid_1Sigmoid+lstm_727/while/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_727/while/lstm_cell_640/mulMul*lstm_727/while/lstm_cell_640/Sigmoid_1:y:0lstm_727_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_727/while/lstm_cell_640/ReluRelu+lstm_727/while/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_727/while/lstm_cell_640/mul_1Mul(lstm_727/while/lstm_cell_640/Sigmoid:y:0/lstm_727/while/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_727/while/lstm_cell_640/add_1AddV2$lstm_727/while/lstm_cell_640/mul:z:0&lstm_727/while/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_727/while/lstm_cell_640/Sigmoid_2Sigmoid+lstm_727/while/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_727/while/lstm_cell_640/Relu_1Relu&lstm_727/while/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_727/while/lstm_cell_640/mul_2Mul*lstm_727/while/lstm_cell_640/Sigmoid_2:y:01lstm_727/while/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_727/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_727_while_placeholder_1lstm_727_while_placeholder&lstm_727/while/lstm_cell_640/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_727/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_727/while/addAddV2lstm_727_while_placeholderlstm_727/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_727/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_727/while/add_1AddV2*lstm_727_while_lstm_727_while_loop_counterlstm_727/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_727/while/IdentityIdentitylstm_727/while/add_1:z:0^lstm_727/while/NoOp*
T0*
_output_shapes
: ?
lstm_727/while/Identity_1Identity0lstm_727_while_lstm_727_while_maximum_iterations^lstm_727/while/NoOp*
T0*
_output_shapes
: t
lstm_727/while/Identity_2Identitylstm_727/while/add:z:0^lstm_727/while/NoOp*
T0*
_output_shapes
: ?
lstm_727/while/Identity_3IdentityClstm_727/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_727/while/NoOp*
T0*
_output_shapes
: ?
lstm_727/while/Identity_4Identity&lstm_727/while/lstm_cell_640/mul_2:z:0^lstm_727/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_727/while/Identity_5Identity&lstm_727/while/lstm_cell_640/add_1:z:0^lstm_727/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_727/while/NoOpNoOp4^lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp3^lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp5^lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_727_while_identity lstm_727/while/Identity:output:0"?
lstm_727_while_identity_1"lstm_727/while/Identity_1:output:0"?
lstm_727_while_identity_2"lstm_727/while/Identity_2:output:0"?
lstm_727_while_identity_3"lstm_727/while/Identity_3:output:0"?
lstm_727_while_identity_4"lstm_727/while/Identity_4:output:0"?
lstm_727_while_identity_5"lstm_727/while/Identity_5:output:0"T
'lstm_727_while_lstm_727_strided_slice_1)lstm_727_while_lstm_727_strided_slice_1_0"~
<lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource>lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource_0"?
=lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource?lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource_0"|
;lstm_727_while_lstm_cell_640_matmul_readvariableop_resource=lstm_727_while_lstm_cell_640_matmul_readvariableop_resource_0"?
clstm_727_while_tensorarrayv2read_tensorlistgetitem_lstm_727_tensorarrayunstack_tensorlistfromtensorelstm_727_while_tensorarrayv2read_tensorlistgetitem_lstm_727_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp3lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp2h
2lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp2lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp2l
4lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp4lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
0__inference_sequential_242_layer_call_fn_3881398

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
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881197o
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
while_body_3883114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_640_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_640_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_640_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_640_matmul_readvariableop_resource:	d?G
4while_lstm_cell_640_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_640_biasadd_readvariableop_resource:	???*while/lstm_cell_640/BiasAdd/ReadVariableOp?)while/lstm_cell_640/MatMul/ReadVariableOp?+while/lstm_cell_640/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_640/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_640_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_640/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_640_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_640/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_640/addAddV2$while/lstm_cell_640/MatMul:product:0&while/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_640_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_640/BiasAddBiasAddwhile/lstm_cell_640/add:z:02while/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_640/splitSplit,while/lstm_cell_640/split/split_dim:output:0$while/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_640/SigmoidSigmoid"while/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_1Sigmoid"while/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mulMul!while/lstm_cell_640/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_640/ReluRelu"while/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_1Mulwhile/lstm_cell_640/Sigmoid:y:0&while/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/add_1AddV2while/lstm_cell_640/mul:z:0while/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_2Sigmoid"while/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_640/Relu_1Reluwhile/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_2Mul!while/lstm_cell_640/Sigmoid_2:y:0(while/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_640/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_640/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_640/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_640/BiasAdd/ReadVariableOp*^while/lstm_cell_640/MatMul/ReadVariableOp,^while/lstm_cell_640/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_640_biasadd_readvariableop_resource5while_lstm_cell_640_biasadd_readvariableop_resource_0"n
4while_lstm_cell_640_matmul_1_readvariableop_resource6while_lstm_cell_640_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_640_matmul_readvariableop_resource4while_lstm_cell_640_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_640/BiasAdd/ReadVariableOp*while/lstm_cell_640/BiasAdd/ReadVariableOp2V
)while/lstm_cell_640/MatMul/ReadVariableOp)while/lstm_cell_640/MatMul/ReadVariableOp2Z
+while/lstm_cell_640/MatMul_1/ReadVariableOp+while/lstm_cell_640/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3880283

inputs?
,lstm_cell_639_matmul_readvariableop_resource:	?A
.lstm_cell_639_matmul_1_readvariableop_resource:	d?<
-lstm_cell_639_biasadd_readvariableop_resource:	?
identity??$lstm_cell_639/BiasAdd/ReadVariableOp?#lstm_cell_639/MatMul/ReadVariableOp?%lstm_cell_639/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_639/MatMul/ReadVariableOpReadVariableOp,lstm_cell_639_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_639/MatMulMatMulstrided_slice_2:output:0+lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_639_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_639/MatMul_1MatMulzeros:output:0-lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_639/addAddV2lstm_cell_639/MatMul:product:0 lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_639_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_639/BiasAddBiasAddlstm_cell_639/add:z:0,lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_639/splitSplit&lstm_cell_639/split/split_dim:output:0lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_639/SigmoidSigmoidlstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_1Sigmoidlstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_639/mulMullstm_cell_639/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_639/ReluRelulstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_1Mullstm_cell_639/Sigmoid:y:0 lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_639/add_1AddV2lstm_cell_639/mul:z:0lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_2Sigmoidlstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_639/Relu_1Relulstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_2Mullstm_cell_639/Sigmoid_2:y:0"lstm_cell_639/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_639_matmul_readvariableop_resource.lstm_cell_639_matmul_1_readvariableop_resource-lstm_cell_639_biasadd_readvariableop_resource*
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
while_body_3880199*
condR
while_cond_3880198*K
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
NoOpNoOp%^lstm_cell_639/BiasAdd/ReadVariableOp$^lstm_cell_639/MatMul/ReadVariableOp&^lstm_cell_639/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_639/BiasAdd/ReadVariableOp$lstm_cell_639/BiasAdd/ReadVariableOp2J
#lstm_cell_639/MatMul/ReadVariableOp#lstm_cell_639/MatMul/ReadVariableOp2N
%lstm_cell_639/MatMul_1/ReadVariableOp%lstm_cell_639/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3883399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3883399___redundant_placeholder05
1while_while_cond_3883399___redundant_placeholder15
1while_while_cond_3883399___redundant_placeholder25
1while_while_cond_3883399___redundant_placeholder3
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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3879501

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
?
?
while_cond_3880714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3880714___redundant_placeholder05
1while_while_cond_3880714___redundant_placeholder15
1while_while_cond_3880714___redundant_placeholder25
1while_while_cond_3880714___redundant_placeholder3
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882868

inputs?
,lstm_cell_639_matmul_readvariableop_resource:	?A
.lstm_cell_639_matmul_1_readvariableop_resource:	d?<
-lstm_cell_639_biasadd_readvariableop_resource:	?
identity??$lstm_cell_639/BiasAdd/ReadVariableOp?#lstm_cell_639/MatMul/ReadVariableOp?%lstm_cell_639/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_639/MatMul/ReadVariableOpReadVariableOp,lstm_cell_639_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_639/MatMulMatMulstrided_slice_2:output:0+lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_639_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_639/MatMul_1MatMulzeros:output:0-lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_639/addAddV2lstm_cell_639/MatMul:product:0 lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_639_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_639/BiasAddBiasAddlstm_cell_639/add:z:0,lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_639/splitSplit&lstm_cell_639/split/split_dim:output:0lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_639/SigmoidSigmoidlstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_1Sigmoidlstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_639/mulMullstm_cell_639/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_639/ReluRelulstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_1Mullstm_cell_639/Sigmoid:y:0 lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_639/add_1AddV2lstm_cell_639/mul:z:0lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_2Sigmoidlstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_639/Relu_1Relulstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_2Mullstm_cell_639/Sigmoid_2:y:0"lstm_cell_639/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_639_matmul_readvariableop_resource.lstm_cell_639_matmul_1_readvariableop_resource-lstm_cell_639_biasadd_readvariableop_resource*
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
while_body_3882784*
condR
while_cond_3882783*K
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
NoOpNoOp%^lstm_cell_639/BiasAdd/ReadVariableOp$^lstm_cell_639/MatMul/ReadVariableOp&^lstm_cell_639/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_639/BiasAdd/ReadVariableOp$lstm_cell_639/BiasAdd/ReadVariableOp2J
#lstm_cell_639/MatMul/ReadVariableOp#lstm_cell_639/MatMul/ReadVariableOp2N
%lstm_cell_639/MatMul_1/ReadVariableOp%lstm_cell_639/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_242_layer_call_fn_3881249
lstm_726_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_726_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881197o
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
_user_specified_namelstm_726_input
?
?
while_cond_3881044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3881044___redundant_placeholder05
1while_while_cond_3881044___redundant_placeholder15
1while_while_cond_3881044___redundant_placeholder25
1while_while_cond_3881044___redundant_placeholder3
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
while_cond_3883586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3883586___redundant_placeholder05
1while_while_cond_3883586___redundant_placeholder15
1while_while_cond_3883586___redundant_placeholder25
1while_while_cond_3883586___redundant_placeholder3
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3881129

inputs?
,lstm_cell_639_matmul_readvariableop_resource:	?A
.lstm_cell_639_matmul_1_readvariableop_resource:	d?<
-lstm_cell_639_biasadd_readvariableop_resource:	?
identity??$lstm_cell_639/BiasAdd/ReadVariableOp?#lstm_cell_639/MatMul/ReadVariableOp?%lstm_cell_639/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_639/MatMul/ReadVariableOpReadVariableOp,lstm_cell_639_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_639/MatMulMatMulstrided_slice_2:output:0+lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_639_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_639/MatMul_1MatMulzeros:output:0-lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_639/addAddV2lstm_cell_639/MatMul:product:0 lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_639_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_639/BiasAddBiasAddlstm_cell_639/add:z:0,lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_639/splitSplit&lstm_cell_639/split/split_dim:output:0lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_639/SigmoidSigmoidlstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_1Sigmoidlstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_639/mulMullstm_cell_639/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_639/ReluRelulstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_1Mullstm_cell_639/Sigmoid:y:0 lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_639/add_1AddV2lstm_cell_639/mul:z:0lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_2Sigmoidlstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_639/Relu_1Relulstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_2Mullstm_cell_639/Sigmoid_2:y:0"lstm_cell_639/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_639_matmul_readvariableop_resource.lstm_cell_639_matmul_1_readvariableop_resource-lstm_cell_639_biasadd_readvariableop_resource*
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
while_body_3881045*
condR
while_cond_3881044*K
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
NoOpNoOp%^lstm_cell_639/BiasAdd/ReadVariableOp$^lstm_cell_639/MatMul/ReadVariableOp&^lstm_cell_639/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_639/BiasAdd/ReadVariableOp$lstm_cell_639/BiasAdd/ReadVariableOp2J
#lstm_cell_639/MatMul/ReadVariableOp#lstm_cell_639/MatMul/ReadVariableOp2N
%lstm_cell_639/MatMul_1/ReadVariableOp%lstm_cell_639/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_3881344
lstm_726_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_726_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3879084o
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
_user_specified_namelstm_726_input
?T
?
*sequential_242_lstm_726_while_body_3878716L
Hsequential_242_lstm_726_while_sequential_242_lstm_726_while_loop_counterR
Nsequential_242_lstm_726_while_sequential_242_lstm_726_while_maximum_iterations-
)sequential_242_lstm_726_while_placeholder/
+sequential_242_lstm_726_while_placeholder_1/
+sequential_242_lstm_726_while_placeholder_2/
+sequential_242_lstm_726_while_placeholder_3K
Gsequential_242_lstm_726_while_sequential_242_lstm_726_strided_slice_1_0?
?sequential_242_lstm_726_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_726_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_242_lstm_726_while_lstm_cell_639_matmul_readvariableop_resource_0:	?a
Nsequential_242_lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource_0:	d?\
Msequential_242_lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource_0:	?*
&sequential_242_lstm_726_while_identity,
(sequential_242_lstm_726_while_identity_1,
(sequential_242_lstm_726_while_identity_2,
(sequential_242_lstm_726_while_identity_3,
(sequential_242_lstm_726_while_identity_4,
(sequential_242_lstm_726_while_identity_5I
Esequential_242_lstm_726_while_sequential_242_lstm_726_strided_slice_1?
?sequential_242_lstm_726_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_726_tensorarrayunstack_tensorlistfromtensor]
Jsequential_242_lstm_726_while_lstm_cell_639_matmul_readvariableop_resource:	?_
Lsequential_242_lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource:	d?Z
Ksequential_242_lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource:	???Bsequential_242/lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp?Asequential_242/lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp?Csequential_242/lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp?
Osequential_242/lstm_726/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_242/lstm_726/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_242_lstm_726_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_726_tensorarrayunstack_tensorlistfromtensor_0)sequential_242_lstm_726_while_placeholderXsequential_242/lstm_726/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_242/lstm_726/while/lstm_cell_639/MatMul/ReadVariableOpReadVariableOpLsequential_242_lstm_726_while_lstm_cell_639_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_242/lstm_726/while/lstm_cell_639/MatMulMatMulHsequential_242/lstm_726/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_242/lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_242/lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOpNsequential_242_lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_242/lstm_726/while/lstm_cell_639/MatMul_1MatMul+sequential_242_lstm_726_while_placeholder_2Ksequential_242/lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_242/lstm_726/while/lstm_cell_639/addAddV2<sequential_242/lstm_726/while/lstm_cell_639/MatMul:product:0>sequential_242/lstm_726/while/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_242/lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOpMsequential_242_lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_242/lstm_726/while/lstm_cell_639/BiasAddBiasAdd3sequential_242/lstm_726/while/lstm_cell_639/add:z:0Jsequential_242/lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_242/lstm_726/while/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_242/lstm_726/while/lstm_cell_639/splitSplitDsequential_242/lstm_726/while/lstm_cell_639/split/split_dim:output:0<sequential_242/lstm_726/while/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_242/lstm_726/while/lstm_cell_639/SigmoidSigmoid:sequential_242/lstm_726/while/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_242/lstm_726/while/lstm_cell_639/Sigmoid_1Sigmoid:sequential_242/lstm_726/while/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_242/lstm_726/while/lstm_cell_639/mulMul9sequential_242/lstm_726/while/lstm_cell_639/Sigmoid_1:y:0+sequential_242_lstm_726_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_242/lstm_726/while/lstm_cell_639/ReluRelu:sequential_242/lstm_726/while/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_242/lstm_726/while/lstm_cell_639/mul_1Mul7sequential_242/lstm_726/while/lstm_cell_639/Sigmoid:y:0>sequential_242/lstm_726/while/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_242/lstm_726/while/lstm_cell_639/add_1AddV23sequential_242/lstm_726/while/lstm_cell_639/mul:z:05sequential_242/lstm_726/while/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_242/lstm_726/while/lstm_cell_639/Sigmoid_2Sigmoid:sequential_242/lstm_726/while/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_242/lstm_726/while/lstm_cell_639/Relu_1Relu5sequential_242/lstm_726/while/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_242/lstm_726/while/lstm_cell_639/mul_2Mul9sequential_242/lstm_726/while/lstm_cell_639/Sigmoid_2:y:0@sequential_242/lstm_726/while/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_242/lstm_726/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_242_lstm_726_while_placeholder_1)sequential_242_lstm_726_while_placeholder5sequential_242/lstm_726/while/lstm_cell_639/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_242/lstm_726/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_242/lstm_726/while/addAddV2)sequential_242_lstm_726_while_placeholder,sequential_242/lstm_726/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_242/lstm_726/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_242/lstm_726/while/add_1AddV2Hsequential_242_lstm_726_while_sequential_242_lstm_726_while_loop_counter.sequential_242/lstm_726/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_242/lstm_726/while/IdentityIdentity'sequential_242/lstm_726/while/add_1:z:0#^sequential_242/lstm_726/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_726/while/Identity_1IdentityNsequential_242_lstm_726_while_sequential_242_lstm_726_while_maximum_iterations#^sequential_242/lstm_726/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_726/while/Identity_2Identity%sequential_242/lstm_726/while/add:z:0#^sequential_242/lstm_726/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_726/while/Identity_3IdentityRsequential_242/lstm_726/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_242/lstm_726/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_726/while/Identity_4Identity5sequential_242/lstm_726/while/lstm_cell_639/mul_2:z:0#^sequential_242/lstm_726/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_242/lstm_726/while/Identity_5Identity5sequential_242/lstm_726/while/lstm_cell_639/add_1:z:0#^sequential_242/lstm_726/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_242/lstm_726/while/NoOpNoOpC^sequential_242/lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOpB^sequential_242/lstm_726/while/lstm_cell_639/MatMul/ReadVariableOpD^sequential_242/lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_242_lstm_726_while_identity/sequential_242/lstm_726/while/Identity:output:0"]
(sequential_242_lstm_726_while_identity_11sequential_242/lstm_726/while/Identity_1:output:0"]
(sequential_242_lstm_726_while_identity_21sequential_242/lstm_726/while/Identity_2:output:0"]
(sequential_242_lstm_726_while_identity_31sequential_242/lstm_726/while/Identity_3:output:0"]
(sequential_242_lstm_726_while_identity_41sequential_242/lstm_726/while/Identity_4:output:0"]
(sequential_242_lstm_726_while_identity_51sequential_242/lstm_726/while/Identity_5:output:0"?
Ksequential_242_lstm_726_while_lstm_cell_639_biasadd_readvariableop_resourceMsequential_242_lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource_0"?
Lsequential_242_lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resourceNsequential_242_lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource_0"?
Jsequential_242_lstm_726_while_lstm_cell_639_matmul_readvariableop_resourceLsequential_242_lstm_726_while_lstm_cell_639_matmul_readvariableop_resource_0"?
Esequential_242_lstm_726_while_sequential_242_lstm_726_strided_slice_1Gsequential_242_lstm_726_while_sequential_242_lstm_726_strided_slice_1_0"?
?sequential_242_lstm_726_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_726_tensorarrayunstack_tensorlistfromtensor?sequential_242_lstm_726_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_726_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_242/lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOpBsequential_242/lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp2?
Asequential_242/lstm_726/while/lstm_cell_639/MatMul/ReadVariableOpAsequential_242/lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp2?
Csequential_242/lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOpCsequential_242/lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3879297

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
?
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881309
lstm_726_input#
lstm_726_3881282:	?#
lstm_726_3881284:	d?
lstm_726_3881286:	?#
lstm_727_3881289:	d?#
lstm_727_3881291:	2?
lstm_727_3881293:	?"
lstm_728_3881296:2("
lstm_728_3881298:
(
lstm_728_3881300:(#
dense_242_3881303:

dense_242_3881305:
identity??!dense_242/StatefulPartitionedCall? lstm_726/StatefulPartitionedCall? lstm_727/StatefulPartitionedCall? lstm_728/StatefulPartitionedCall?
 lstm_726/StatefulPartitionedCallStatefulPartitionedCalllstm_726_inputlstm_726_3881282lstm_726_3881284lstm_726_3881286*
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3881129?
 lstm_727/StatefulPartitionedCallStatefulPartitionedCall)lstm_726/StatefulPartitionedCall:output:0lstm_727_3881289lstm_727_3881291lstm_727_3881293*
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3880964?
 lstm_728/StatefulPartitionedCallStatefulPartitionedCall)lstm_727/StatefulPartitionedCall:output:0lstm_728_3881296lstm_728_3881298lstm_728_3881300*
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3880799?
!dense_242/StatefulPartitionedCallStatefulPartitionedCall)lstm_728/StatefulPartitionedCall:output:0dense_242_3881303dense_242_3881305*
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
F__inference_dense_242_layer_call_and_return_conditional_losses_3880601y
IdentityIdentity*dense_242/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_242/StatefulPartitionedCall!^lstm_726/StatefulPartitionedCall!^lstm_727/StatefulPartitionedCall!^lstm_728/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_242/StatefulPartitionedCall!dense_242/StatefulPartitionedCall2D
 lstm_726/StatefulPartitionedCall lstm_726/StatefulPartitionedCall2D
 lstm_727/StatefulPartitionedCall lstm_727/StatefulPartitionedCall2D
 lstm_728/StatefulPartitionedCall lstm_728/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_726_input
?
?
while_cond_3882783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3882783___redundant_placeholder05
1while_while_cond_3882783___redundant_placeholder15
1while_while_cond_3882783___redundant_placeholder25
1while_while_cond_3882783___redundant_placeholder3
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
while_cond_3879514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3879514___redundant_placeholder05
1while_while_cond_3879514___redundant_placeholder15
1while_while_cond_3879514___redundant_placeholder25
1while_while_cond_3879514___redundant_placeholder3
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
??
?
"__inference__wrapped_model_3879084
lstm_726_inputW
Dsequential_242_lstm_726_lstm_cell_639_matmul_readvariableop_resource:	?Y
Fsequential_242_lstm_726_lstm_cell_639_matmul_1_readvariableop_resource:	d?T
Esequential_242_lstm_726_lstm_cell_639_biasadd_readvariableop_resource:	?W
Dsequential_242_lstm_727_lstm_cell_640_matmul_readvariableop_resource:	d?Y
Fsequential_242_lstm_727_lstm_cell_640_matmul_1_readvariableop_resource:	2?T
Esequential_242_lstm_727_lstm_cell_640_biasadd_readvariableop_resource:	?V
Dsequential_242_lstm_728_lstm_cell_641_matmul_readvariableop_resource:2(X
Fsequential_242_lstm_728_lstm_cell_641_matmul_1_readvariableop_resource:
(S
Esequential_242_lstm_728_lstm_cell_641_biasadd_readvariableop_resource:(I
7sequential_242_dense_242_matmul_readvariableop_resource:
F
8sequential_242_dense_242_biasadd_readvariableop_resource:
identity??/sequential_242/dense_242/BiasAdd/ReadVariableOp?.sequential_242/dense_242/MatMul/ReadVariableOp?<sequential_242/lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp?;sequential_242/lstm_726/lstm_cell_639/MatMul/ReadVariableOp?=sequential_242/lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp?sequential_242/lstm_726/while?<sequential_242/lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp?;sequential_242/lstm_727/lstm_cell_640/MatMul/ReadVariableOp?=sequential_242/lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp?sequential_242/lstm_727/while?<sequential_242/lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp?;sequential_242/lstm_728/lstm_cell_641/MatMul/ReadVariableOp?=sequential_242/lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp?sequential_242/lstm_728/while[
sequential_242/lstm_726/ShapeShapelstm_726_input*
T0*
_output_shapes
:u
+sequential_242/lstm_726/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_242/lstm_726/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_242/lstm_726/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_242/lstm_726/strided_sliceStridedSlice&sequential_242/lstm_726/Shape:output:04sequential_242/lstm_726/strided_slice/stack:output:06sequential_242/lstm_726/strided_slice/stack_1:output:06sequential_242/lstm_726/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_242/lstm_726/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_242/lstm_726/zeros/packedPack.sequential_242/lstm_726/strided_slice:output:0/sequential_242/lstm_726/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_242/lstm_726/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_242/lstm_726/zerosFill-sequential_242/lstm_726/zeros/packed:output:0,sequential_242/lstm_726/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_242/lstm_726/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_242/lstm_726/zeros_1/packedPack.sequential_242/lstm_726/strided_slice:output:01sequential_242/lstm_726/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_242/lstm_726/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_242/lstm_726/zeros_1Fill/sequential_242/lstm_726/zeros_1/packed:output:0.sequential_242/lstm_726/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_242/lstm_726/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_242/lstm_726/transpose	Transposelstm_726_input/sequential_242/lstm_726/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_242/lstm_726/Shape_1Shape%sequential_242/lstm_726/transpose:y:0*
T0*
_output_shapes
:w
-sequential_242/lstm_726/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_242/lstm_726/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_242/lstm_726/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_242/lstm_726/strided_slice_1StridedSlice(sequential_242/lstm_726/Shape_1:output:06sequential_242/lstm_726/strided_slice_1/stack:output:08sequential_242/lstm_726/strided_slice_1/stack_1:output:08sequential_242/lstm_726/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_242/lstm_726/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_242/lstm_726/TensorArrayV2TensorListReserve<sequential_242/lstm_726/TensorArrayV2/element_shape:output:00sequential_242/lstm_726/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_242/lstm_726/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_242/lstm_726/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_242/lstm_726/transpose:y:0Vsequential_242/lstm_726/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_242/lstm_726/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_242/lstm_726/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_242/lstm_726/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_242/lstm_726/strided_slice_2StridedSlice%sequential_242/lstm_726/transpose:y:06sequential_242/lstm_726/strided_slice_2/stack:output:08sequential_242/lstm_726/strided_slice_2/stack_1:output:08sequential_242/lstm_726/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_242/lstm_726/lstm_cell_639/MatMul/ReadVariableOpReadVariableOpDsequential_242_lstm_726_lstm_cell_639_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_242/lstm_726/lstm_cell_639/MatMulMatMul0sequential_242/lstm_726/strided_slice_2:output:0Csequential_242/lstm_726/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_242/lstm_726/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOpFsequential_242_lstm_726_lstm_cell_639_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_242/lstm_726/lstm_cell_639/MatMul_1MatMul&sequential_242/lstm_726/zeros:output:0Esequential_242/lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_242/lstm_726/lstm_cell_639/addAddV26sequential_242/lstm_726/lstm_cell_639/MatMul:product:08sequential_242/lstm_726/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_242/lstm_726/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOpEsequential_242_lstm_726_lstm_cell_639_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_242/lstm_726/lstm_cell_639/BiasAddBiasAdd-sequential_242/lstm_726/lstm_cell_639/add:z:0Dsequential_242/lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_242/lstm_726/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_242/lstm_726/lstm_cell_639/splitSplit>sequential_242/lstm_726/lstm_cell_639/split/split_dim:output:06sequential_242/lstm_726/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_242/lstm_726/lstm_cell_639/SigmoidSigmoid4sequential_242/lstm_726/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_242/lstm_726/lstm_cell_639/Sigmoid_1Sigmoid4sequential_242/lstm_726/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_242/lstm_726/lstm_cell_639/mulMul3sequential_242/lstm_726/lstm_cell_639/Sigmoid_1:y:0(sequential_242/lstm_726/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_242/lstm_726/lstm_cell_639/ReluRelu4sequential_242/lstm_726/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_242/lstm_726/lstm_cell_639/mul_1Mul1sequential_242/lstm_726/lstm_cell_639/Sigmoid:y:08sequential_242/lstm_726/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_242/lstm_726/lstm_cell_639/add_1AddV2-sequential_242/lstm_726/lstm_cell_639/mul:z:0/sequential_242/lstm_726/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_242/lstm_726/lstm_cell_639/Sigmoid_2Sigmoid4sequential_242/lstm_726/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_242/lstm_726/lstm_cell_639/Relu_1Relu/sequential_242/lstm_726/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_242/lstm_726/lstm_cell_639/mul_2Mul3sequential_242/lstm_726/lstm_cell_639/Sigmoid_2:y:0:sequential_242/lstm_726/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_242/lstm_726/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_242/lstm_726/TensorArrayV2_1TensorListReserve>sequential_242/lstm_726/TensorArrayV2_1/element_shape:output:00sequential_242/lstm_726/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_242/lstm_726/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_242/lstm_726/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_242/lstm_726/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_242/lstm_726/whileWhile3sequential_242/lstm_726/while/loop_counter:output:09sequential_242/lstm_726/while/maximum_iterations:output:0%sequential_242/lstm_726/time:output:00sequential_242/lstm_726/TensorArrayV2_1:handle:0&sequential_242/lstm_726/zeros:output:0(sequential_242/lstm_726/zeros_1:output:00sequential_242/lstm_726/strided_slice_1:output:0Osequential_242/lstm_726/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_242_lstm_726_lstm_cell_639_matmul_readvariableop_resourceFsequential_242_lstm_726_lstm_cell_639_matmul_1_readvariableop_resourceEsequential_242_lstm_726_lstm_cell_639_biasadd_readvariableop_resource*
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
*sequential_242_lstm_726_while_body_3878716*6
cond.R,
*sequential_242_lstm_726_while_cond_3878715*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_242/lstm_726/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_242/lstm_726/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_242/lstm_726/while:output:3Qsequential_242/lstm_726/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_242/lstm_726/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_242/lstm_726/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_242/lstm_726/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_242/lstm_726/strided_slice_3StridedSliceCsequential_242/lstm_726/TensorArrayV2Stack/TensorListStack:tensor:06sequential_242/lstm_726/strided_slice_3/stack:output:08sequential_242/lstm_726/strided_slice_3/stack_1:output:08sequential_242/lstm_726/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_242/lstm_726/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_242/lstm_726/transpose_1	TransposeCsequential_242/lstm_726/TensorArrayV2Stack/TensorListStack:tensor:01sequential_242/lstm_726/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_242/lstm_726/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_242/lstm_727/ShapeShape'sequential_242/lstm_726/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_242/lstm_727/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_242/lstm_727/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_242/lstm_727/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_242/lstm_727/strided_sliceStridedSlice&sequential_242/lstm_727/Shape:output:04sequential_242/lstm_727/strided_slice/stack:output:06sequential_242/lstm_727/strided_slice/stack_1:output:06sequential_242/lstm_727/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_242/lstm_727/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_242/lstm_727/zeros/packedPack.sequential_242/lstm_727/strided_slice:output:0/sequential_242/lstm_727/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_242/lstm_727/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_242/lstm_727/zerosFill-sequential_242/lstm_727/zeros/packed:output:0,sequential_242/lstm_727/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_242/lstm_727/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_242/lstm_727/zeros_1/packedPack.sequential_242/lstm_727/strided_slice:output:01sequential_242/lstm_727/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_242/lstm_727/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_242/lstm_727/zeros_1Fill/sequential_242/lstm_727/zeros_1/packed:output:0.sequential_242/lstm_727/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_242/lstm_727/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_242/lstm_727/transpose	Transpose'sequential_242/lstm_726/transpose_1:y:0/sequential_242/lstm_727/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_242/lstm_727/Shape_1Shape%sequential_242/lstm_727/transpose:y:0*
T0*
_output_shapes
:w
-sequential_242/lstm_727/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_242/lstm_727/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_242/lstm_727/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_242/lstm_727/strided_slice_1StridedSlice(sequential_242/lstm_727/Shape_1:output:06sequential_242/lstm_727/strided_slice_1/stack:output:08sequential_242/lstm_727/strided_slice_1/stack_1:output:08sequential_242/lstm_727/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_242/lstm_727/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_242/lstm_727/TensorArrayV2TensorListReserve<sequential_242/lstm_727/TensorArrayV2/element_shape:output:00sequential_242/lstm_727/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_242/lstm_727/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_242/lstm_727/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_242/lstm_727/transpose:y:0Vsequential_242/lstm_727/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_242/lstm_727/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_242/lstm_727/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_242/lstm_727/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_242/lstm_727/strided_slice_2StridedSlice%sequential_242/lstm_727/transpose:y:06sequential_242/lstm_727/strided_slice_2/stack:output:08sequential_242/lstm_727/strided_slice_2/stack_1:output:08sequential_242/lstm_727/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_242/lstm_727/lstm_cell_640/MatMul/ReadVariableOpReadVariableOpDsequential_242_lstm_727_lstm_cell_640_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_242/lstm_727/lstm_cell_640/MatMulMatMul0sequential_242/lstm_727/strided_slice_2:output:0Csequential_242/lstm_727/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_242/lstm_727/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOpFsequential_242_lstm_727_lstm_cell_640_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_242/lstm_727/lstm_cell_640/MatMul_1MatMul&sequential_242/lstm_727/zeros:output:0Esequential_242/lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_242/lstm_727/lstm_cell_640/addAddV26sequential_242/lstm_727/lstm_cell_640/MatMul:product:08sequential_242/lstm_727/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_242/lstm_727/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOpEsequential_242_lstm_727_lstm_cell_640_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_242/lstm_727/lstm_cell_640/BiasAddBiasAdd-sequential_242/lstm_727/lstm_cell_640/add:z:0Dsequential_242/lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_242/lstm_727/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_242/lstm_727/lstm_cell_640/splitSplit>sequential_242/lstm_727/lstm_cell_640/split/split_dim:output:06sequential_242/lstm_727/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_242/lstm_727/lstm_cell_640/SigmoidSigmoid4sequential_242/lstm_727/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_242/lstm_727/lstm_cell_640/Sigmoid_1Sigmoid4sequential_242/lstm_727/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_242/lstm_727/lstm_cell_640/mulMul3sequential_242/lstm_727/lstm_cell_640/Sigmoid_1:y:0(sequential_242/lstm_727/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_242/lstm_727/lstm_cell_640/ReluRelu4sequential_242/lstm_727/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_242/lstm_727/lstm_cell_640/mul_1Mul1sequential_242/lstm_727/lstm_cell_640/Sigmoid:y:08sequential_242/lstm_727/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_242/lstm_727/lstm_cell_640/add_1AddV2-sequential_242/lstm_727/lstm_cell_640/mul:z:0/sequential_242/lstm_727/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_242/lstm_727/lstm_cell_640/Sigmoid_2Sigmoid4sequential_242/lstm_727/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_242/lstm_727/lstm_cell_640/Relu_1Relu/sequential_242/lstm_727/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_242/lstm_727/lstm_cell_640/mul_2Mul3sequential_242/lstm_727/lstm_cell_640/Sigmoid_2:y:0:sequential_242/lstm_727/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_242/lstm_727/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_242/lstm_727/TensorArrayV2_1TensorListReserve>sequential_242/lstm_727/TensorArrayV2_1/element_shape:output:00sequential_242/lstm_727/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_242/lstm_727/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_242/lstm_727/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_242/lstm_727/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_242/lstm_727/whileWhile3sequential_242/lstm_727/while/loop_counter:output:09sequential_242/lstm_727/while/maximum_iterations:output:0%sequential_242/lstm_727/time:output:00sequential_242/lstm_727/TensorArrayV2_1:handle:0&sequential_242/lstm_727/zeros:output:0(sequential_242/lstm_727/zeros_1:output:00sequential_242/lstm_727/strided_slice_1:output:0Osequential_242/lstm_727/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_242_lstm_727_lstm_cell_640_matmul_readvariableop_resourceFsequential_242_lstm_727_lstm_cell_640_matmul_1_readvariableop_resourceEsequential_242_lstm_727_lstm_cell_640_biasadd_readvariableop_resource*
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
*sequential_242_lstm_727_while_body_3878855*6
cond.R,
*sequential_242_lstm_727_while_cond_3878854*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_242/lstm_727/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_242/lstm_727/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_242/lstm_727/while:output:3Qsequential_242/lstm_727/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_242/lstm_727/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_242/lstm_727/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_242/lstm_727/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_242/lstm_727/strided_slice_3StridedSliceCsequential_242/lstm_727/TensorArrayV2Stack/TensorListStack:tensor:06sequential_242/lstm_727/strided_slice_3/stack:output:08sequential_242/lstm_727/strided_slice_3/stack_1:output:08sequential_242/lstm_727/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_242/lstm_727/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_242/lstm_727/transpose_1	TransposeCsequential_242/lstm_727/TensorArrayV2Stack/TensorListStack:tensor:01sequential_242/lstm_727/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_242/lstm_727/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_242/lstm_728/ShapeShape'sequential_242/lstm_727/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_242/lstm_728/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_242/lstm_728/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_242/lstm_728/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_242/lstm_728/strided_sliceStridedSlice&sequential_242/lstm_728/Shape:output:04sequential_242/lstm_728/strided_slice/stack:output:06sequential_242/lstm_728/strided_slice/stack_1:output:06sequential_242/lstm_728/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_242/lstm_728/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_242/lstm_728/zeros/packedPack.sequential_242/lstm_728/strided_slice:output:0/sequential_242/lstm_728/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_242/lstm_728/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_242/lstm_728/zerosFill-sequential_242/lstm_728/zeros/packed:output:0,sequential_242/lstm_728/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_242/lstm_728/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_242/lstm_728/zeros_1/packedPack.sequential_242/lstm_728/strided_slice:output:01sequential_242/lstm_728/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_242/lstm_728/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_242/lstm_728/zeros_1Fill/sequential_242/lstm_728/zeros_1/packed:output:0.sequential_242/lstm_728/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_242/lstm_728/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_242/lstm_728/transpose	Transpose'sequential_242/lstm_727/transpose_1:y:0/sequential_242/lstm_728/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_242/lstm_728/Shape_1Shape%sequential_242/lstm_728/transpose:y:0*
T0*
_output_shapes
:w
-sequential_242/lstm_728/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_242/lstm_728/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_242/lstm_728/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_242/lstm_728/strided_slice_1StridedSlice(sequential_242/lstm_728/Shape_1:output:06sequential_242/lstm_728/strided_slice_1/stack:output:08sequential_242/lstm_728/strided_slice_1/stack_1:output:08sequential_242/lstm_728/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_242/lstm_728/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_242/lstm_728/TensorArrayV2TensorListReserve<sequential_242/lstm_728/TensorArrayV2/element_shape:output:00sequential_242/lstm_728/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_242/lstm_728/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_242/lstm_728/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_242/lstm_728/transpose:y:0Vsequential_242/lstm_728/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_242/lstm_728/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_242/lstm_728/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_242/lstm_728/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_242/lstm_728/strided_slice_2StridedSlice%sequential_242/lstm_728/transpose:y:06sequential_242/lstm_728/strided_slice_2/stack:output:08sequential_242/lstm_728/strided_slice_2/stack_1:output:08sequential_242/lstm_728/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_242/lstm_728/lstm_cell_641/MatMul/ReadVariableOpReadVariableOpDsequential_242_lstm_728_lstm_cell_641_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_242/lstm_728/lstm_cell_641/MatMulMatMul0sequential_242/lstm_728/strided_slice_2:output:0Csequential_242/lstm_728/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_242/lstm_728/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOpFsequential_242_lstm_728_lstm_cell_641_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_242/lstm_728/lstm_cell_641/MatMul_1MatMul&sequential_242/lstm_728/zeros:output:0Esequential_242/lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_242/lstm_728/lstm_cell_641/addAddV26sequential_242/lstm_728/lstm_cell_641/MatMul:product:08sequential_242/lstm_728/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_242/lstm_728/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOpEsequential_242_lstm_728_lstm_cell_641_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_242/lstm_728/lstm_cell_641/BiasAddBiasAdd-sequential_242/lstm_728/lstm_cell_641/add:z:0Dsequential_242/lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_242/lstm_728/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_242/lstm_728/lstm_cell_641/splitSplit>sequential_242/lstm_728/lstm_cell_641/split/split_dim:output:06sequential_242/lstm_728/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_242/lstm_728/lstm_cell_641/SigmoidSigmoid4sequential_242/lstm_728/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_242/lstm_728/lstm_cell_641/Sigmoid_1Sigmoid4sequential_242/lstm_728/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_242/lstm_728/lstm_cell_641/mulMul3sequential_242/lstm_728/lstm_cell_641/Sigmoid_1:y:0(sequential_242/lstm_728/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_242/lstm_728/lstm_cell_641/ReluRelu4sequential_242/lstm_728/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_242/lstm_728/lstm_cell_641/mul_1Mul1sequential_242/lstm_728/lstm_cell_641/Sigmoid:y:08sequential_242/lstm_728/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_242/lstm_728/lstm_cell_641/add_1AddV2-sequential_242/lstm_728/lstm_cell_641/mul:z:0/sequential_242/lstm_728/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_242/lstm_728/lstm_cell_641/Sigmoid_2Sigmoid4sequential_242/lstm_728/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_242/lstm_728/lstm_cell_641/Relu_1Relu/sequential_242/lstm_728/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_242/lstm_728/lstm_cell_641/mul_2Mul3sequential_242/lstm_728/lstm_cell_641/Sigmoid_2:y:0:sequential_242/lstm_728/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_242/lstm_728/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_242/lstm_728/TensorArrayV2_1TensorListReserve>sequential_242/lstm_728/TensorArrayV2_1/element_shape:output:00sequential_242/lstm_728/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_242/lstm_728/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_242/lstm_728/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_242/lstm_728/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_242/lstm_728/whileWhile3sequential_242/lstm_728/while/loop_counter:output:09sequential_242/lstm_728/while/maximum_iterations:output:0%sequential_242/lstm_728/time:output:00sequential_242/lstm_728/TensorArrayV2_1:handle:0&sequential_242/lstm_728/zeros:output:0(sequential_242/lstm_728/zeros_1:output:00sequential_242/lstm_728/strided_slice_1:output:0Osequential_242/lstm_728/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_242_lstm_728_lstm_cell_641_matmul_readvariableop_resourceFsequential_242_lstm_728_lstm_cell_641_matmul_1_readvariableop_resourceEsequential_242_lstm_728_lstm_cell_641_biasadd_readvariableop_resource*
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
*sequential_242_lstm_728_while_body_3878994*6
cond.R,
*sequential_242_lstm_728_while_cond_3878993*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_242/lstm_728/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_242/lstm_728/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_242/lstm_728/while:output:3Qsequential_242/lstm_728/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_242/lstm_728/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_242/lstm_728/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_242/lstm_728/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_242/lstm_728/strided_slice_3StridedSliceCsequential_242/lstm_728/TensorArrayV2Stack/TensorListStack:tensor:06sequential_242/lstm_728/strided_slice_3/stack:output:08sequential_242/lstm_728/strided_slice_3/stack_1:output:08sequential_242/lstm_728/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_242/lstm_728/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_242/lstm_728/transpose_1	TransposeCsequential_242/lstm_728/TensorArrayV2Stack/TensorListStack:tensor:01sequential_242/lstm_728/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_242/lstm_728/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_242/dense_242/MatMul/ReadVariableOpReadVariableOp7sequential_242_dense_242_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_242/dense_242/MatMulMatMul0sequential_242/lstm_728/strided_slice_3:output:06sequential_242/dense_242/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_242/dense_242/BiasAdd/ReadVariableOpReadVariableOp8sequential_242_dense_242_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_242/dense_242/BiasAddBiasAdd)sequential_242/dense_242/MatMul:product:07sequential_242/dense_242/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_242/dense_242/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_242/dense_242/BiasAdd/ReadVariableOp/^sequential_242/dense_242/MatMul/ReadVariableOp=^sequential_242/lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp<^sequential_242/lstm_726/lstm_cell_639/MatMul/ReadVariableOp>^sequential_242/lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp^sequential_242/lstm_726/while=^sequential_242/lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp<^sequential_242/lstm_727/lstm_cell_640/MatMul/ReadVariableOp>^sequential_242/lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp^sequential_242/lstm_727/while=^sequential_242/lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp<^sequential_242/lstm_728/lstm_cell_641/MatMul/ReadVariableOp>^sequential_242/lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp^sequential_242/lstm_728/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_242/dense_242/BiasAdd/ReadVariableOp/sequential_242/dense_242/BiasAdd/ReadVariableOp2`
.sequential_242/dense_242/MatMul/ReadVariableOp.sequential_242/dense_242/MatMul/ReadVariableOp2|
<sequential_242/lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp<sequential_242/lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp2z
;sequential_242/lstm_726/lstm_cell_639/MatMul/ReadVariableOp;sequential_242/lstm_726/lstm_cell_639/MatMul/ReadVariableOp2~
=sequential_242/lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp=sequential_242/lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp2>
sequential_242/lstm_726/whilesequential_242/lstm_726/while2|
<sequential_242/lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp<sequential_242/lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp2z
;sequential_242/lstm_727/lstm_cell_640/MatMul/ReadVariableOp;sequential_242/lstm_727/lstm_cell_640/MatMul/ReadVariableOp2~
=sequential_242/lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp=sequential_242/lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp2>
sequential_242/lstm_727/whilesequential_242/lstm_727/while2|
<sequential_242/lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp<sequential_242/lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp2z
;sequential_242/lstm_728/lstm_cell_641/MatMul/ReadVariableOp;sequential_242/lstm_728/lstm_cell_641/MatMul/ReadVariableOp2~
=sequential_242/lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp=sequential_242/lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp2>
sequential_242/lstm_728/whilesequential_242/lstm_728/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_726_input
?
?
*__inference_lstm_727_layer_call_fn_3882890
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3879775|
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
?
?
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3884381

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
?8
?
while_body_3882498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_639_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_639_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_639_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_639_matmul_readvariableop_resource:	?G
4while_lstm_cell_639_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_639_biasadd_readvariableop_resource:	???*while/lstm_cell_639/BiasAdd/ReadVariableOp?)while/lstm_cell_639/MatMul/ReadVariableOp?+while/lstm_cell_639/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_639/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_639_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_639/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_639_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_639/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_639/addAddV2$while/lstm_cell_639/MatMul:product:0&while/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_639_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_639/BiasAddBiasAddwhile/lstm_cell_639/add:z:02while/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_639/splitSplit,while/lstm_cell_639/split/split_dim:output:0$while/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_639/SigmoidSigmoid"while/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_1Sigmoid"while/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mulMul!while/lstm_cell_639/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_639/ReluRelu"while/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_1Mulwhile/lstm_cell_639/Sigmoid:y:0&while/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/add_1AddV2while/lstm_cell_639/mul:z:0while/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_2Sigmoid"while/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_639/Relu_1Reluwhile/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_2Mul!while/lstm_cell_639/Sigmoid_2:y:0(while/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_639/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_639/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_639/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_639/BiasAdd/ReadVariableOp*^while/lstm_cell_639/MatMul/ReadVariableOp,^while/lstm_cell_639/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_639_biasadd_readvariableop_resource5while_lstm_cell_639_biasadd_readvariableop_resource_0"n
4while_lstm_cell_639_matmul_1_readvariableop_resource6while_lstm_cell_639_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_639_matmul_readvariableop_resource4while_lstm_cell_639_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_639/BiasAdd/ReadVariableOp*while/lstm_cell_639/BiasAdd/ReadVariableOp2V
)while/lstm_cell_639/MatMul/ReadVariableOp)while/lstm_cell_639/MatMul/ReadVariableOp2Z
+while/lstm_cell_639/MatMul_1/ReadVariableOp+while/lstm_cell_639/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3882641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_639_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_639_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_639_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_639_matmul_readvariableop_resource:	?G
4while_lstm_cell_639_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_639_biasadd_readvariableop_resource:	???*while/lstm_cell_639/BiasAdd/ReadVariableOp?)while/lstm_cell_639/MatMul/ReadVariableOp?+while/lstm_cell_639/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_639/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_639_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_639/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_639_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_639/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_639/addAddV2$while/lstm_cell_639/MatMul:product:0&while/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_639_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_639/BiasAddBiasAddwhile/lstm_cell_639/add:z:02while/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_639/splitSplit,while/lstm_cell_639/split/split_dim:output:0$while/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_639/SigmoidSigmoid"while/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_1Sigmoid"while/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mulMul!while/lstm_cell_639/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_639/ReluRelu"while/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_1Mulwhile/lstm_cell_639/Sigmoid:y:0&while/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/add_1AddV2while/lstm_cell_639/mul:z:0while/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_2Sigmoid"while/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_639/Relu_1Reluwhile/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_2Mul!while/lstm_cell_639/Sigmoid_2:y:0(while/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_639/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_639/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_639/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_639/BiasAdd/ReadVariableOp*^while/lstm_cell_639/MatMul/ReadVariableOp,^while/lstm_cell_639/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_639_biasadd_readvariableop_resource5while_lstm_cell_639_biasadd_readvariableop_resource_0"n
4while_lstm_cell_639_matmul_1_readvariableop_resource6while_lstm_cell_639_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_639_matmul_readvariableop_resource4while_lstm_cell_639_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_639/BiasAdd/ReadVariableOp*while/lstm_cell_639/BiasAdd/ReadVariableOp2V
)while/lstm_cell_639/MatMul/ReadVariableOp)while/lstm_cell_639/MatMul/ReadVariableOp2Z
+while/lstm_cell_639/MatMul_1/ReadVariableOp+while/lstm_cell_639/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3883256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3883256___redundant_placeholder05
1while_while_cond_3883256___redundant_placeholder15
1while_while_cond_3883256___redundant_placeholder25
1while_while_cond_3883256___redundant_placeholder3
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
?8
?
while_body_3881045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_639_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_639_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_639_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_639_matmul_readvariableop_resource:	?G
4while_lstm_cell_639_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_639_biasadd_readvariableop_resource:	???*while/lstm_cell_639/BiasAdd/ReadVariableOp?)while/lstm_cell_639/MatMul/ReadVariableOp?+while/lstm_cell_639/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_639/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_639_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_639/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_639_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_639/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_639/addAddV2$while/lstm_cell_639/MatMul:product:0&while/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_639_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_639/BiasAddBiasAddwhile/lstm_cell_639/add:z:02while/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_639/splitSplit,while/lstm_cell_639/split/split_dim:output:0$while/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_639/SigmoidSigmoid"while/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_1Sigmoid"while/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mulMul!while/lstm_cell_639/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_639/ReluRelu"while/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_1Mulwhile/lstm_cell_639/Sigmoid:y:0&while/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/add_1AddV2while/lstm_cell_639/mul:z:0while/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_2Sigmoid"while/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_639/Relu_1Reluwhile/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_2Mul!while/lstm_cell_639/Sigmoid_2:y:0(while/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_639/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_639/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_639/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_639/BiasAdd/ReadVariableOp*^while/lstm_cell_639/MatMul/ReadVariableOp,^while/lstm_cell_639/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_639_biasadd_readvariableop_resource5while_lstm_cell_639_biasadd_readvariableop_resource_0"n
4while_lstm_cell_639_matmul_1_readvariableop_resource6while_lstm_cell_639_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_639_matmul_readvariableop_resource4while_lstm_cell_639_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_639/BiasAdd/ReadVariableOp*while/lstm_cell_639/BiasAdd/ReadVariableOp2V
)while/lstm_cell_639/MatMul/ReadVariableOp)while/lstm_cell_639/MatMul/ReadVariableOp2Z
+while/lstm_cell_639/MatMul_1/ReadVariableOp+while/lstm_cell_639/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3882970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3882970___redundant_placeholder05
1while_while_cond_3882970___redundant_placeholder15
1while_while_cond_3882970___redundant_placeholder25
1while_while_cond_3882970___redundant_placeholder3
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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3884217

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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3879647

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
lstm_728_while_cond_3881734.
*lstm_728_while_lstm_728_while_loop_counter4
0lstm_728_while_lstm_728_while_maximum_iterations
lstm_728_while_placeholder 
lstm_728_while_placeholder_1 
lstm_728_while_placeholder_2 
lstm_728_while_placeholder_30
,lstm_728_while_less_lstm_728_strided_slice_1G
Clstm_728_while_lstm_728_while_cond_3881734___redundant_placeholder0G
Clstm_728_while_lstm_728_while_cond_3881734___redundant_placeholder1G
Clstm_728_while_lstm_728_while_cond_3881734___redundant_placeholder2G
Clstm_728_while_lstm_728_while_cond_3881734___redundant_placeholder3
lstm_728_while_identity
?
lstm_728/while/LessLesslstm_728_while_placeholder,lstm_728_while_less_lstm_728_strided_slice_1*
T0*
_output_shapes
: ]
lstm_728/while/IdentityIdentitylstm_728/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_728_while_identity lstm_728/while/Identity:output:0*(
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3879584

inputs(
lstm_cell_640_3879502:	d?(
lstm_cell_640_3879504:	2?$
lstm_cell_640_3879506:	?
identity??%lstm_cell_640/StatefulPartitionedCall?while;
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
%lstm_cell_640/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_640_3879502lstm_cell_640_3879504lstm_cell_640_3879506*
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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3879501n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_640_3879502lstm_cell_640_3879504lstm_cell_640_3879506*
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
while_body_3879515*
condR
while_cond_3879514*K
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
NoOpNoOp&^lstm_cell_640/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_640/StatefulPartitionedCall%lstm_cell_640/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_728_layer_call_and_return_conditional_losses_3879934

inputs'
lstm_cell_641_3879852:2('
lstm_cell_641_3879854:
(#
lstm_cell_641_3879856:(
identity??%lstm_cell_641/StatefulPartitionedCall?while;
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
%lstm_cell_641/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_641_3879852lstm_cell_641_3879854lstm_cell_641_3879856*
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
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3879851n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_641_3879852lstm_cell_641_3879854lstm_cell_641_3879856*
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
while_body_3879865*
condR
while_cond_3879864*K
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
NoOpNoOp&^lstm_cell_641/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_641/StatefulPartitionedCall%lstm_cell_641/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3883400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_640_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_640_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_640_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_640_matmul_readvariableop_resource:	d?G
4while_lstm_cell_640_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_640_biasadd_readvariableop_resource:	???*while/lstm_cell_640/BiasAdd/ReadVariableOp?)while/lstm_cell_640/MatMul/ReadVariableOp?+while/lstm_cell_640/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_640/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_640_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_640/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_640_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_640/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_640/addAddV2$while/lstm_cell_640/MatMul:product:0&while/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_640_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_640/BiasAddBiasAddwhile/lstm_cell_640/add:z:02while/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_640/splitSplit,while/lstm_cell_640/split/split_dim:output:0$while/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_640/SigmoidSigmoid"while/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_1Sigmoid"while/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mulMul!while/lstm_cell_640/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_640/ReluRelu"while/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_1Mulwhile/lstm_cell_640/Sigmoid:y:0&while/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/add_1AddV2while/lstm_cell_640/mul:z:0while/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_2Sigmoid"while/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_640/Relu_1Reluwhile/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_2Mul!while/lstm_cell_640/Sigmoid_2:y:0(while/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_640/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_640/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_640/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_640/BiasAdd/ReadVariableOp*^while/lstm_cell_640/MatMul/ReadVariableOp,^while/lstm_cell_640/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_640_biasadd_readvariableop_resource5while_lstm_cell_640_biasadd_readvariableop_resource_0"n
4while_lstm_cell_640_matmul_1_readvariableop_resource6while_lstm_cell_640_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_640_matmul_readvariableop_resource4while_lstm_cell_640_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_640/BiasAdd/ReadVariableOp*while/lstm_cell_640/BiasAdd/ReadVariableOp2V
)while/lstm_cell_640/MatMul/ReadVariableOp)while/lstm_cell_640/MatMul/ReadVariableOp2Z
+while/lstm_cell_640/MatMul_1/ReadVariableOp+while/lstm_cell_640/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_639_layer_call_fn_3884136

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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3879151o
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
0__inference_sequential_242_layer_call_fn_3880633
lstm_726_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_726_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_242_layer_call_and_return_conditional_losses_3880608o
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
_user_specified_namelstm_726_input
?
?
*__inference_lstm_728_layer_call_fn_3883528

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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3880799o
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
?J
?
E__inference_lstm_728_layer_call_and_return_conditional_losses_3883957

inputs>
,lstm_cell_641_matmul_readvariableop_resource:2(@
.lstm_cell_641_matmul_1_readvariableop_resource:
(;
-lstm_cell_641_biasadd_readvariableop_resource:(
identity??$lstm_cell_641/BiasAdd/ReadVariableOp?#lstm_cell_641/MatMul/ReadVariableOp?%lstm_cell_641/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_641/MatMul/ReadVariableOpReadVariableOp,lstm_cell_641_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_641/MatMulMatMulstrided_slice_2:output:0+lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_641_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_641/MatMul_1MatMulzeros:output:0-lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_641/addAddV2lstm_cell_641/MatMul:product:0 lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_641_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_641/BiasAddBiasAddlstm_cell_641/add:z:0,lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_641/splitSplit&lstm_cell_641/split/split_dim:output:0lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_641/SigmoidSigmoidlstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_1Sigmoidlstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_641/mulMullstm_cell_641/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_641/ReluRelulstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_1Mullstm_cell_641/Sigmoid:y:0 lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_641/add_1AddV2lstm_cell_641/mul:z:0lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_2Sigmoidlstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_641/Relu_1Relulstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_2Mullstm_cell_641/Sigmoid_2:y:0"lstm_cell_641/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_641_matmul_readvariableop_resource.lstm_cell_641_matmul_1_readvariableop_resource-lstm_cell_641_biasadd_readvariableop_resource*
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
while_body_3883873*
condR
while_cond_3883872*K
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
NoOpNoOp%^lstm_cell_641/BiasAdd/ReadVariableOp$^lstm_cell_641/MatMul/ReadVariableOp&^lstm_cell_641/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_641/BiasAdd/ReadVariableOp$lstm_cell_641/BiasAdd/ReadVariableOp2J
#lstm_cell_641/MatMul/ReadVariableOp#lstm_cell_641/MatMul/ReadVariableOp2N
%lstm_cell_641/MatMul_1/ReadVariableOp%lstm_cell_641/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
+__inference_dense_242_layer_call_fn_3884109

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
F__inference_dense_242_layer_call_and_return_conditional_losses_3880601o
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
?8
?
while_body_3880499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_641_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_641_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_641_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_641_matmul_readvariableop_resource:2(F
4while_lstm_cell_641_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_641_biasadd_readvariableop_resource:(??*while/lstm_cell_641/BiasAdd/ReadVariableOp?)while/lstm_cell_641/MatMul/ReadVariableOp?+while/lstm_cell_641/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_641/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_641_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_641/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_641_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_641/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_641/addAddV2$while/lstm_cell_641/MatMul:product:0&while/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_641_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_641/BiasAddBiasAddwhile/lstm_cell_641/add:z:02while/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_641/splitSplit,while/lstm_cell_641/split/split_dim:output:0$while/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_641/SigmoidSigmoid"while/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_1Sigmoid"while/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mulMul!while/lstm_cell_641/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_641/ReluRelu"while/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_1Mulwhile/lstm_cell_641/Sigmoid:y:0&while/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/add_1AddV2while/lstm_cell_641/mul:z:0while/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_2Sigmoid"while/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_641/Relu_1Reluwhile/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_2Mul!while/lstm_cell_641/Sigmoid_2:y:0(while/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_641/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_641/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_641/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_641/BiasAdd/ReadVariableOp*^while/lstm_cell_641/MatMul/ReadVariableOp,^while/lstm_cell_641/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_641_biasadd_readvariableop_resource5while_lstm_cell_641_biasadd_readvariableop_resource_0"n
4while_lstm_cell_641_matmul_1_readvariableop_resource6while_lstm_cell_641_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_641_matmul_readvariableop_resource4while_lstm_cell_641_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_641/BiasAdd/ReadVariableOp*while/lstm_cell_641/BiasAdd/ReadVariableOp2V
)while/lstm_cell_641/MatMul/ReadVariableOp)while/lstm_cell_641/MatMul/ReadVariableOp2Z
+while/lstm_cell_641/MatMul_1/ReadVariableOp+while/lstm_cell_641/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3879705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3879705___redundant_placeholder05
1while_while_cond_3879705___redundant_placeholder15
1while_while_cond_3879705___redundant_placeholder25
1while_while_cond_3879705___redundant_placeholder3
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
lstm_726_while_cond_3881883.
*lstm_726_while_lstm_726_while_loop_counter4
0lstm_726_while_lstm_726_while_maximum_iterations
lstm_726_while_placeholder 
lstm_726_while_placeholder_1 
lstm_726_while_placeholder_2 
lstm_726_while_placeholder_30
,lstm_726_while_less_lstm_726_strided_slice_1G
Clstm_726_while_lstm_726_while_cond_3881883___redundant_placeholder0G
Clstm_726_while_lstm_726_while_cond_3881883___redundant_placeholder1G
Clstm_726_while_lstm_726_while_cond_3881883___redundant_placeholder2G
Clstm_726_while_lstm_726_while_cond_3881883___redundant_placeholder3
lstm_726_while_identity
?
lstm_726/while/LessLesslstm_726_while_placeholder,lstm_726_while_less_lstm_726_strided_slice_1*
T0*
_output_shapes
: ]
lstm_726/while/IdentityIdentitylstm_726/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_726_while_identity lstm_726/while/Identity:output:0*(
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
while_cond_3880879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3880879___redundant_placeholder05
1while_while_cond_3880879___redundant_placeholder15
1while_while_cond_3880879___redundant_placeholder25
1while_while_cond_3880879___redundant_placeholder3
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
?8
?
while_body_3880715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_641_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_641_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_641_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_641_matmul_readvariableop_resource:2(F
4while_lstm_cell_641_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_641_biasadd_readvariableop_resource:(??*while/lstm_cell_641/BiasAdd/ReadVariableOp?)while/lstm_cell_641/MatMul/ReadVariableOp?+while/lstm_cell_641/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_641/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_641_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_641/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_641_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_641/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_641/addAddV2$while/lstm_cell_641/MatMul:product:0&while/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_641_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_641/BiasAddBiasAddwhile/lstm_cell_641/add:z:02while/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_641/splitSplit,while/lstm_cell_641/split/split_dim:output:0$while/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_641/SigmoidSigmoid"while/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_1Sigmoid"while/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mulMul!while/lstm_cell_641/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_641/ReluRelu"while/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_1Mulwhile/lstm_cell_641/Sigmoid:y:0&while/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/add_1AddV2while/lstm_cell_641/mul:z:0while/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_2Sigmoid"while/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_641/Relu_1Reluwhile/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_2Mul!while/lstm_cell_641/Sigmoid_2:y:0(while/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_641/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_641/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_641/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_641/BiasAdd/ReadVariableOp*^while/lstm_cell_641/MatMul/ReadVariableOp,^while/lstm_cell_641/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_641_biasadd_readvariableop_resource5while_lstm_cell_641_biasadd_readvariableop_resource_0"n
4while_lstm_cell_641_matmul_1_readvariableop_resource6while_lstm_cell_641_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_641_matmul_readvariableop_resource4while_lstm_cell_641_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_641/BiasAdd/ReadVariableOp*while/lstm_cell_641/BiasAdd/ReadVariableOp2V
)while/lstm_cell_641/MatMul/ReadVariableOp)while/lstm_cell_641/MatMul/ReadVariableOp2Z
+while/lstm_cell_641/MatMul_1/ReadVariableOp+while/lstm_cell_641/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3884016
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_641_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_641_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_641_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_641_matmul_readvariableop_resource:2(F
4while_lstm_cell_641_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_641_biasadd_readvariableop_resource:(??*while/lstm_cell_641/BiasAdd/ReadVariableOp?)while/lstm_cell_641/MatMul/ReadVariableOp?+while/lstm_cell_641/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_641/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_641_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_641/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_641_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_641/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_641/addAddV2$while/lstm_cell_641/MatMul:product:0&while/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_641_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_641/BiasAddBiasAddwhile/lstm_cell_641/add:z:02while/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_641/splitSplit,while/lstm_cell_641/split/split_dim:output:0$while/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_641/SigmoidSigmoid"while/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_1Sigmoid"while/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mulMul!while/lstm_cell_641/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_641/ReluRelu"while/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_1Mulwhile/lstm_cell_641/Sigmoid:y:0&while/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/add_1AddV2while/lstm_cell_641/mul:z:0while/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_2Sigmoid"while/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_641/Relu_1Reluwhile/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_2Mul!while/lstm_cell_641/Sigmoid_2:y:0(while/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_641/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_641/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_641/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_641/BiasAdd/ReadVariableOp*^while/lstm_cell_641/MatMul/ReadVariableOp,^while/lstm_cell_641/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_641_biasadd_readvariableop_resource5while_lstm_cell_641_biasadd_readvariableop_resource_0"n
4while_lstm_cell_641_matmul_1_readvariableop_resource6while_lstm_cell_641_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_641_matmul_readvariableop_resource4while_lstm_cell_641_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_641/BiasAdd/ReadVariableOp*while/lstm_cell_641/BiasAdd/ReadVariableOp2V
)while/lstm_cell_641/MatMul/ReadVariableOp)while/lstm_cell_641/MatMul/ReadVariableOp2Z
+while/lstm_cell_641/MatMul_1/ReadVariableOp+while/lstm_cell_641/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3880199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_639_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_639_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_639_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_639_matmul_readvariableop_resource:	?G
4while_lstm_cell_639_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_639_biasadd_readvariableop_resource:	???*while/lstm_cell_639/BiasAdd/ReadVariableOp?)while/lstm_cell_639/MatMul/ReadVariableOp?+while/lstm_cell_639/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_639/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_639_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_639/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_639_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_639/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_639/addAddV2$while/lstm_cell_639/MatMul:product:0&while/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_639_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_639/BiasAddBiasAddwhile/lstm_cell_639/add:z:02while/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_639/splitSplit,while/lstm_cell_639/split/split_dim:output:0$while/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_639/SigmoidSigmoid"while/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_1Sigmoid"while/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mulMul!while/lstm_cell_639/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_639/ReluRelu"while/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_1Mulwhile/lstm_cell_639/Sigmoid:y:0&while/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/add_1AddV2while/lstm_cell_639/mul:z:0while/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_2Sigmoid"while/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_639/Relu_1Reluwhile/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_2Mul!while/lstm_cell_639/Sigmoid_2:y:0(while/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_639/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_639/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_639/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_639/BiasAdd/ReadVariableOp*^while/lstm_cell_639/MatMul/ReadVariableOp,^while/lstm_cell_639/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_639_biasadd_readvariableop_resource5while_lstm_cell_639_biasadd_readvariableop_resource_0"n
4while_lstm_cell_639_matmul_1_readvariableop_resource6while_lstm_cell_639_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_639_matmul_readvariableop_resource4while_lstm_cell_639_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_639/BiasAdd/ReadVariableOp*while/lstm_cell_639/BiasAdd/ReadVariableOp2V
)while/lstm_cell_639/MatMul/ReadVariableOp)while/lstm_cell_639/MatMul/ReadVariableOp2Z
+while/lstm_cell_639/MatMul_1/ReadVariableOp+while/lstm_cell_639/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3879234

inputs(
lstm_cell_639_3879152:	?(
lstm_cell_639_3879154:	d?$
lstm_cell_639_3879156:	?
identity??%lstm_cell_639/StatefulPartitionedCall?while;
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
%lstm_cell_639/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_639_3879152lstm_cell_639_3879154lstm_cell_639_3879156*
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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3879151n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_639_3879152lstm_cell_639_3879154lstm_cell_639_3879156*
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
while_body_3879165*
condR
while_cond_3879164*K
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
NoOpNoOp&^lstm_cell_639/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_639/StatefulPartitionedCall%lstm_cell_639/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3883257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_640_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_640_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_640_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_640_matmul_readvariableop_resource:	d?G
4while_lstm_cell_640_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_640_biasadd_readvariableop_resource:	???*while/lstm_cell_640/BiasAdd/ReadVariableOp?)while/lstm_cell_640/MatMul/ReadVariableOp?+while/lstm_cell_640/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_640/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_640_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_640/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_640_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_640/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_640/addAddV2$while/lstm_cell_640/MatMul:product:0&while/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_640_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_640/BiasAddBiasAddwhile/lstm_cell_640/add:z:02while/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_640/splitSplit,while/lstm_cell_640/split/split_dim:output:0$while/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_640/SigmoidSigmoid"while/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_1Sigmoid"while/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mulMul!while/lstm_cell_640/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_640/ReluRelu"while/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_1Mulwhile/lstm_cell_640/Sigmoid:y:0&while/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/add_1AddV2while/lstm_cell_640/mul:z:0while/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_2Sigmoid"while/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_640/Relu_1Reluwhile/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_2Mul!while/lstm_cell_640/Sigmoid_2:y:0(while/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_640/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_640/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_640/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_640/BiasAdd/ReadVariableOp*^while/lstm_cell_640/MatMul/ReadVariableOp,^while/lstm_cell_640/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_640_biasadd_readvariableop_resource5while_lstm_cell_640_biasadd_readvariableop_resource_0"n
4while_lstm_cell_640_matmul_1_readvariableop_resource6while_lstm_cell_640_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_640_matmul_readvariableop_resource4while_lstm_cell_640_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_640/BiasAdd/ReadVariableOp*while/lstm_cell_640/BiasAdd/ReadVariableOp2V
)while/lstm_cell_640/MatMul/ReadVariableOp)while/lstm_cell_640/MatMul/ReadVariableOp2Z
+while/lstm_cell_640/MatMul_1/ReadVariableOp+while/lstm_cell_640/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3883872
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3883872___redundant_placeholder05
1while_while_cond_3883872___redundant_placeholder15
1while_while_cond_3883872___redundant_placeholder25
1while_while_cond_3883872___redundant_placeholder3
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
?
F__inference_dense_242_layer_call_and_return_conditional_losses_3884119

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
?
?
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881279
lstm_726_input#
lstm_726_3881252:	?#
lstm_726_3881254:	d?
lstm_726_3881256:	?#
lstm_727_3881259:	d?#
lstm_727_3881261:	2?
lstm_727_3881263:	?"
lstm_728_3881266:2("
lstm_728_3881268:
(
lstm_728_3881270:(#
dense_242_3881273:

dense_242_3881275:
identity??!dense_242/StatefulPartitionedCall? lstm_726/StatefulPartitionedCall? lstm_727/StatefulPartitionedCall? lstm_728/StatefulPartitionedCall?
 lstm_726/StatefulPartitionedCallStatefulPartitionedCalllstm_726_inputlstm_726_3881252lstm_726_3881254lstm_726_3881256*
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3880283?
 lstm_727/StatefulPartitionedCallStatefulPartitionedCall)lstm_726/StatefulPartitionedCall:output:0lstm_727_3881259lstm_727_3881261lstm_727_3881263*
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3880433?
 lstm_728/StatefulPartitionedCallStatefulPartitionedCall)lstm_727/StatefulPartitionedCall:output:0lstm_728_3881266lstm_728_3881268lstm_728_3881270*
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3880583?
!dense_242/StatefulPartitionedCallStatefulPartitionedCall)lstm_728/StatefulPartitionedCall:output:0dense_242_3881273dense_242_3881275*
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
F__inference_dense_242_layer_call_and_return_conditional_losses_3880601y
IdentityIdentity*dense_242/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_242/StatefulPartitionedCall!^lstm_726/StatefulPartitionedCall!^lstm_727/StatefulPartitionedCall!^lstm_728/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_242/StatefulPartitionedCall!dense_242/StatefulPartitionedCall2D
 lstm_726/StatefulPartitionedCall lstm_726/StatefulPartitionedCall2D
 lstm_727/StatefulPartitionedCall lstm_727/StatefulPartitionedCall2D
 lstm_728/StatefulPartitionedCall lstm_728/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_726_input
?
?
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3884315

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
?
/__inference_lstm_cell_639_layer_call_fn_3884153

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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3879297o
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
?
?
while_cond_3879864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3879864___redundant_placeholder05
1while_while_cond_3879864___redundant_placeholder15
1while_while_cond_3879864___redundant_placeholder25
1while_while_cond_3879864___redundant_placeholder3
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

?
lstm_727_while_cond_3881595.
*lstm_727_while_lstm_727_while_loop_counter4
0lstm_727_while_lstm_727_while_maximum_iterations
lstm_727_while_placeholder 
lstm_727_while_placeholder_1 
lstm_727_while_placeholder_2 
lstm_727_while_placeholder_30
,lstm_727_while_less_lstm_727_strided_slice_1G
Clstm_727_while_lstm_727_while_cond_3881595___redundant_placeholder0G
Clstm_727_while_lstm_727_while_cond_3881595___redundant_placeholder1G
Clstm_727_while_lstm_727_while_cond_3881595___redundant_placeholder2G
Clstm_727_while_lstm_727_while_cond_3881595___redundant_placeholder3
lstm_727_while_identity
?
lstm_727/while/LessLesslstm_727_while_placeholder,lstm_727_while_less_lstm_727_strided_slice_1*
T0*
_output_shapes
: ]
lstm_727/while/IdentityIdentitylstm_727/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_727_while_identity lstm_727/while/Identity:output:0*(
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
*__inference_lstm_726_layer_call_fn_3882274
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3879425|
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
?
?
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3884413

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
?
*sequential_242_lstm_726_while_cond_3878715L
Hsequential_242_lstm_726_while_sequential_242_lstm_726_while_loop_counterR
Nsequential_242_lstm_726_while_sequential_242_lstm_726_while_maximum_iterations-
)sequential_242_lstm_726_while_placeholder/
+sequential_242_lstm_726_while_placeholder_1/
+sequential_242_lstm_726_while_placeholder_2/
+sequential_242_lstm_726_while_placeholder_3N
Jsequential_242_lstm_726_while_less_sequential_242_lstm_726_strided_slice_1e
asequential_242_lstm_726_while_sequential_242_lstm_726_while_cond_3878715___redundant_placeholder0e
asequential_242_lstm_726_while_sequential_242_lstm_726_while_cond_3878715___redundant_placeholder1e
asequential_242_lstm_726_while_sequential_242_lstm_726_while_cond_3878715___redundant_placeholder2e
asequential_242_lstm_726_while_sequential_242_lstm_726_while_cond_3878715___redundant_placeholder3*
&sequential_242_lstm_726_while_identity
?
"sequential_242/lstm_726/while/LessLess)sequential_242_lstm_726_while_placeholderJsequential_242_lstm_726_while_less_sequential_242_lstm_726_strided_slice_1*
T0*
_output_shapes
: {
&sequential_242/lstm_726/while/IdentityIdentity&sequential_242/lstm_726/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_242_lstm_726_while_identity/sequential_242/lstm_726/while/Identity:output:0*(
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
while_cond_3882354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3882354___redundant_placeholder05
1while_while_cond_3882354___redundant_placeholder15
1while_while_cond_3882354___redundant_placeholder25
1while_while_cond_3882354___redundant_placeholder3
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
?J
?
E__inference_lstm_728_layer_call_and_return_conditional_losses_3880583

inputs>
,lstm_cell_641_matmul_readvariableop_resource:2(@
.lstm_cell_641_matmul_1_readvariableop_resource:
(;
-lstm_cell_641_biasadd_readvariableop_resource:(
identity??$lstm_cell_641/BiasAdd/ReadVariableOp?#lstm_cell_641/MatMul/ReadVariableOp?%lstm_cell_641/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_641/MatMul/ReadVariableOpReadVariableOp,lstm_cell_641_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_641/MatMulMatMulstrided_slice_2:output:0+lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_641_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_641/MatMul_1MatMulzeros:output:0-lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_641/addAddV2lstm_cell_641/MatMul:product:0 lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_641_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_641/BiasAddBiasAddlstm_cell_641/add:z:0,lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_641/splitSplit&lstm_cell_641/split/split_dim:output:0lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_641/SigmoidSigmoidlstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_1Sigmoidlstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_641/mulMullstm_cell_641/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_641/ReluRelulstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_1Mullstm_cell_641/Sigmoid:y:0 lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_641/add_1AddV2lstm_cell_641/mul:z:0lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_2Sigmoidlstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_641/Relu_1Relulstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_2Mullstm_cell_641/Sigmoid_2:y:0"lstm_cell_641/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_641_matmul_readvariableop_resource.lstm_cell_641_matmul_1_readvariableop_resource-lstm_cell_641_biasadd_readvariableop_resource*
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
while_body_3880499*
condR
while_cond_3880498*K
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
NoOpNoOp%^lstm_cell_641/BiasAdd/ReadVariableOp$^lstm_cell_641/MatMul/ReadVariableOp&^lstm_cell_641/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_641/BiasAdd/ReadVariableOp$lstm_cell_641/BiasAdd/ReadVariableOp2J
#lstm_cell_641/MatMul/ReadVariableOp#lstm_cell_641/MatMul/ReadVariableOp2N
%lstm_cell_641/MatMul_1/ReadVariableOp%lstm_cell_641/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_728_layer_call_and_return_conditional_losses_3880799

inputs>
,lstm_cell_641_matmul_readvariableop_resource:2(@
.lstm_cell_641_matmul_1_readvariableop_resource:
(;
-lstm_cell_641_biasadd_readvariableop_resource:(
identity??$lstm_cell_641/BiasAdd/ReadVariableOp?#lstm_cell_641/MatMul/ReadVariableOp?%lstm_cell_641/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_641/MatMul/ReadVariableOpReadVariableOp,lstm_cell_641_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_641/MatMulMatMulstrided_slice_2:output:0+lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_641_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_641/MatMul_1MatMulzeros:output:0-lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_641/addAddV2lstm_cell_641/MatMul:product:0 lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_641_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_641/BiasAddBiasAddlstm_cell_641/add:z:0,lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_641/splitSplit&lstm_cell_641/split/split_dim:output:0lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_641/SigmoidSigmoidlstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_1Sigmoidlstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_641/mulMullstm_cell_641/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_641/ReluRelulstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_1Mullstm_cell_641/Sigmoid:y:0 lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_641/add_1AddV2lstm_cell_641/mul:z:0lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_2Sigmoidlstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_641/Relu_1Relulstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_2Mullstm_cell_641/Sigmoid_2:y:0"lstm_cell_641/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_641_matmul_readvariableop_resource.lstm_cell_641_matmul_1_readvariableop_resource-lstm_cell_641_biasadd_readvariableop_resource*
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
while_body_3880715*
condR
while_cond_3880714*K
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
NoOpNoOp%^lstm_cell_641/BiasAdd/ReadVariableOp$^lstm_cell_641/MatMul/ReadVariableOp&^lstm_cell_641/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_641/BiasAdd/ReadVariableOp$lstm_cell_641/BiasAdd/ReadVariableOp2J
#lstm_cell_641/MatMul/ReadVariableOp#lstm_cell_641/MatMul/ReadVariableOp2N
%lstm_cell_641/MatMul_1/ReadVariableOp%lstm_cell_641/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_727_layer_call_and_return_conditional_losses_3880433

inputs?
,lstm_cell_640_matmul_readvariableop_resource:	d?A
.lstm_cell_640_matmul_1_readvariableop_resource:	2?<
-lstm_cell_640_biasadd_readvariableop_resource:	?
identity??$lstm_cell_640/BiasAdd/ReadVariableOp?#lstm_cell_640/MatMul/ReadVariableOp?%lstm_cell_640/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_640/MatMul/ReadVariableOpReadVariableOp,lstm_cell_640_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_640/MatMulMatMulstrided_slice_2:output:0+lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_640_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_640/MatMul_1MatMulzeros:output:0-lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_640/addAddV2lstm_cell_640/MatMul:product:0 lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_640_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_640/BiasAddBiasAddlstm_cell_640/add:z:0,lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_640/splitSplit&lstm_cell_640/split/split_dim:output:0lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_640/SigmoidSigmoidlstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_1Sigmoidlstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_640/mulMullstm_cell_640/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_640/ReluRelulstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_1Mullstm_cell_640/Sigmoid:y:0 lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_640/add_1AddV2lstm_cell_640/mul:z:0lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_2Sigmoidlstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_640/Relu_1Relulstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_2Mullstm_cell_640/Sigmoid_2:y:0"lstm_cell_640/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_640_matmul_readvariableop_resource.lstm_cell_640_matmul_1_readvariableop_resource-lstm_cell_640_biasadd_readvariableop_resource*
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
while_body_3880349*
condR
while_cond_3880348*K
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
NoOpNoOp%^lstm_cell_640/BiasAdd/ReadVariableOp$^lstm_cell_640/MatMul/ReadVariableOp&^lstm_cell_640/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_640/BiasAdd/ReadVariableOp$lstm_cell_640/BiasAdd/ReadVariableOp2J
#lstm_cell_640/MatMul/ReadVariableOp#lstm_cell_640/MatMul/ReadVariableOp2N
%lstm_cell_640/MatMul_1/ReadVariableOp%lstm_cell_640/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_242_lstm_727_while_cond_3878854L
Hsequential_242_lstm_727_while_sequential_242_lstm_727_while_loop_counterR
Nsequential_242_lstm_727_while_sequential_242_lstm_727_while_maximum_iterations-
)sequential_242_lstm_727_while_placeholder/
+sequential_242_lstm_727_while_placeholder_1/
+sequential_242_lstm_727_while_placeholder_2/
+sequential_242_lstm_727_while_placeholder_3N
Jsequential_242_lstm_727_while_less_sequential_242_lstm_727_strided_slice_1e
asequential_242_lstm_727_while_sequential_242_lstm_727_while_cond_3878854___redundant_placeholder0e
asequential_242_lstm_727_while_sequential_242_lstm_727_while_cond_3878854___redundant_placeholder1e
asequential_242_lstm_727_while_sequential_242_lstm_727_while_cond_3878854___redundant_placeholder2e
asequential_242_lstm_727_while_sequential_242_lstm_727_while_cond_3878854___redundant_placeholder3*
&sequential_242_lstm_727_while_identity
?
"sequential_242/lstm_727/while/LessLess)sequential_242_lstm_727_while_placeholderJsequential_242_lstm_727_while_less_sequential_242_lstm_727_strided_slice_1*
T0*
_output_shapes
: {
&sequential_242/lstm_727/while/IdentityIdentity&sequential_242/lstm_727/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_242_lstm_727_while_identity/sequential_242/lstm_727/while/Identity:output:0*(
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
/__inference_lstm_cell_640_layer_call_fn_3884251

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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3879647o
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
?8
?
while_body_3882971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_640_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_640_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_640_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_640_matmul_readvariableop_resource:	d?G
4while_lstm_cell_640_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_640_biasadd_readvariableop_resource:	???*while/lstm_cell_640/BiasAdd/ReadVariableOp?)while/lstm_cell_640/MatMul/ReadVariableOp?+while/lstm_cell_640/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_640/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_640_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_640/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_640_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_640/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_640/addAddV2$while/lstm_cell_640/MatMul:product:0&while/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_640_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_640/BiasAddBiasAddwhile/lstm_cell_640/add:z:02while/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_640/splitSplit,while/lstm_cell_640/split/split_dim:output:0$while/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_640/SigmoidSigmoid"while/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_1Sigmoid"while/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mulMul!while/lstm_cell_640/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_640/ReluRelu"while/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_1Mulwhile/lstm_cell_640/Sigmoid:y:0&while/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/add_1AddV2while/lstm_cell_640/mul:z:0while/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_2Sigmoid"while/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_640/Relu_1Reluwhile/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_2Mul!while/lstm_cell_640/Sigmoid_2:y:0(while/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_640/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_640/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_640/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_640/BiasAdd/ReadVariableOp*^while/lstm_cell_640/MatMul/ReadVariableOp,^while/lstm_cell_640/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_640_biasadd_readvariableop_resource5while_lstm_cell_640_biasadd_readvariableop_resource_0"n
4while_lstm_cell_640_matmul_1_readvariableop_resource6while_lstm_cell_640_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_640_matmul_readvariableop_resource4while_lstm_cell_640_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_640/BiasAdd/ReadVariableOp*while/lstm_cell_640/BiasAdd/ReadVariableOp2V
)while/lstm_cell_640/MatMul/ReadVariableOp)while/lstm_cell_640/MatMul/ReadVariableOp2Z
+while/lstm_cell_640/MatMul_1/ReadVariableOp+while/lstm_cell_640/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3880056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_641_3880080_0:2(/
while_lstm_cell_641_3880082_0:
(+
while_lstm_cell_641_3880084_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_641_3880080:2(-
while_lstm_cell_641_3880082:
()
while_lstm_cell_641_3880084:(??+while/lstm_cell_641/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_641/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_641_3880080_0while_lstm_cell_641_3880082_0while_lstm_cell_641_3880084_0*
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
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3879997?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_641/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_641/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_641/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_641/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_641_3880080while_lstm_cell_641_3880080_0"<
while_lstm_cell_641_3880082while_lstm_cell_641_3880082_0"<
while_lstm_cell_641_3880084while_lstm_cell_641_3880084_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_641/StatefulPartitionedCall+while/lstm_cell_641/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3884015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3884015___redundant_placeholder05
1while_while_cond_3884015___redundant_placeholder15
1while_while_cond_3884015___redundant_placeholder25
1while_while_cond_3884015___redundant_placeholder3
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
*__inference_lstm_728_layer_call_fn_3883517

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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3880583o
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
?8
?
while_body_3883587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_641_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_641_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_641_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_641_matmul_readvariableop_resource:2(F
4while_lstm_cell_641_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_641_biasadd_readvariableop_resource:(??*while/lstm_cell_641/BiasAdd/ReadVariableOp?)while/lstm_cell_641/MatMul/ReadVariableOp?+while/lstm_cell_641/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_641/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_641_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_641/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_641_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_641/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_641/addAddV2$while/lstm_cell_641/MatMul:product:0&while/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_641_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_641/BiasAddBiasAddwhile/lstm_cell_641/add:z:02while/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_641/splitSplit,while/lstm_cell_641/split/split_dim:output:0$while/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_641/SigmoidSigmoid"while/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_1Sigmoid"while/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mulMul!while/lstm_cell_641/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_641/ReluRelu"while/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_1Mulwhile/lstm_cell_641/Sigmoid:y:0&while/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/add_1AddV2while/lstm_cell_641/mul:z:0while/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_2Sigmoid"while/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_641/Relu_1Reluwhile/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_2Mul!while/lstm_cell_641/Sigmoid_2:y:0(while/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_641/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_641/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_641/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_641/BiasAdd/ReadVariableOp*^while/lstm_cell_641/MatMul/ReadVariableOp,^while/lstm_cell_641/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_641_biasadd_readvariableop_resource5while_lstm_cell_641_biasadd_readvariableop_resource_0"n
4while_lstm_cell_641_matmul_1_readvariableop_resource6while_lstm_cell_641_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_641_matmul_readvariableop_resource4while_lstm_cell_641_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_641/BiasAdd/ReadVariableOp*while/lstm_cell_641/BiasAdd/ReadVariableOp2V
)while/lstm_cell_641/MatMul/ReadVariableOp)while/lstm_cell_641/MatMul/ReadVariableOp2Z
+while/lstm_cell_641/MatMul_1/ReadVariableOp+while/lstm_cell_641/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
K__inference_sequential_242_layer_call_and_return_conditional_losses_3880608

inputs#
lstm_726_3880284:	?#
lstm_726_3880286:	d?
lstm_726_3880288:	?#
lstm_727_3880434:	d?#
lstm_727_3880436:	2?
lstm_727_3880438:	?"
lstm_728_3880584:2("
lstm_728_3880586:
(
lstm_728_3880588:(#
dense_242_3880602:

dense_242_3880604:
identity??!dense_242/StatefulPartitionedCall? lstm_726/StatefulPartitionedCall? lstm_727/StatefulPartitionedCall? lstm_728/StatefulPartitionedCall?
 lstm_726/StatefulPartitionedCallStatefulPartitionedCallinputslstm_726_3880284lstm_726_3880286lstm_726_3880288*
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3880283?
 lstm_727/StatefulPartitionedCallStatefulPartitionedCall)lstm_726/StatefulPartitionedCall:output:0lstm_727_3880434lstm_727_3880436lstm_727_3880438*
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3880433?
 lstm_728/StatefulPartitionedCallStatefulPartitionedCall)lstm_727/StatefulPartitionedCall:output:0lstm_728_3880584lstm_728_3880586lstm_728_3880588*
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3880583?
!dense_242/StatefulPartitionedCallStatefulPartitionedCall)lstm_728/StatefulPartitionedCall:output:0dense_242_3880602dense_242_3880604*
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
F__inference_dense_242_layer_call_and_return_conditional_losses_3880601y
IdentityIdentity*dense_242/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_242/StatefulPartitionedCall!^lstm_726/StatefulPartitionedCall!^lstm_727/StatefulPartitionedCall!^lstm_728/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_242/StatefulPartitionedCall!dense_242/StatefulPartitionedCall2D
 lstm_726/StatefulPartitionedCall lstm_726/StatefulPartitionedCall2D
 lstm_727/StatefulPartitionedCall lstm_727/StatefulPartitionedCall2D
 lstm_728/StatefulPartitionedCall lstm_728/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3883729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3883729___redundant_placeholder05
1while_while_cond_3883729___redundant_placeholder15
1while_while_cond_3883729___redundant_placeholder25
1while_while_cond_3883729___redundant_placeholder3
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
?#
?
while_body_3879515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_640_3879539_0:	d?0
while_lstm_cell_640_3879541_0:	2?,
while_lstm_cell_640_3879543_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_640_3879539:	d?.
while_lstm_cell_640_3879541:	2?*
while_lstm_cell_640_3879543:	???+while/lstm_cell_640/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_640/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_640_3879539_0while_lstm_cell_640_3879541_0while_lstm_cell_640_3879543_0*
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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3879501?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_640/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_640/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_640/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_640/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_640_3879539while_lstm_cell_640_3879539_0"<
while_lstm_cell_640_3879541while_lstm_cell_640_3879541_0"<
while_lstm_cell_640_3879543while_lstm_cell_640_3879543_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_640/StatefulPartitionedCall+while/lstm_cell_640/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3884100

inputs>
,lstm_cell_641_matmul_readvariableop_resource:2(@
.lstm_cell_641_matmul_1_readvariableop_resource:
(;
-lstm_cell_641_biasadd_readvariableop_resource:(
identity??$lstm_cell_641/BiasAdd/ReadVariableOp?#lstm_cell_641/MatMul/ReadVariableOp?%lstm_cell_641/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_641/MatMul/ReadVariableOpReadVariableOp,lstm_cell_641_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_641/MatMulMatMulstrided_slice_2:output:0+lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_641_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_641/MatMul_1MatMulzeros:output:0-lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_641/addAddV2lstm_cell_641/MatMul:product:0 lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_641_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_641/BiasAddBiasAddlstm_cell_641/add:z:0,lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_641/splitSplit&lstm_cell_641/split/split_dim:output:0lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_641/SigmoidSigmoidlstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_1Sigmoidlstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_641/mulMullstm_cell_641/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_641/ReluRelulstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_1Mullstm_cell_641/Sigmoid:y:0 lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_641/add_1AddV2lstm_cell_641/mul:z:0lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_2Sigmoidlstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_641/Relu_1Relulstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_2Mullstm_cell_641/Sigmoid_2:y:0"lstm_cell_641/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_641_matmul_readvariableop_resource.lstm_cell_641_matmul_1_readvariableop_resource-lstm_cell_641_biasadd_readvariableop_resource*
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
while_body_3884016*
condR
while_cond_3884015*K
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
NoOpNoOp%^lstm_cell_641/BiasAdd/ReadVariableOp$^lstm_cell_641/MatMul/ReadVariableOp&^lstm_cell_641/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_641/BiasAdd/ReadVariableOp$lstm_cell_641/BiasAdd/ReadVariableOp2J
#lstm_cell_641/MatMul/ReadVariableOp#lstm_cell_641/MatMul/ReadVariableOp2N
%lstm_cell_641/MatMul_1/ReadVariableOp%lstm_cell_641/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_3879706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_640_3879730_0:	d?0
while_lstm_cell_640_3879732_0:	2?,
while_lstm_cell_640_3879734_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_640_3879730:	d?.
while_lstm_cell_640_3879732:	2?*
while_lstm_cell_640_3879734:	???+while/lstm_cell_640/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_640/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_640_3879730_0while_lstm_cell_640_3879732_0while_lstm_cell_640_3879734_0*
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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3879647?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_640/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_640/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_640/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_640/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_640_3879730while_lstm_cell_640_3879730_0"<
while_lstm_cell_640_3879732while_lstm_cell_640_3879732_0"<
while_lstm_cell_640_3879734while_lstm_cell_640_3879734_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_640/StatefulPartitionedCall+while/lstm_cell_640/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3879865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_641_3879889_0:2(/
while_lstm_cell_641_3879891_0:
(+
while_lstm_cell_641_3879893_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_641_3879889:2(-
while_lstm_cell_641_3879891:
()
while_lstm_cell_641_3879893:(??+while/lstm_cell_641/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_641/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_641_3879889_0while_lstm_cell_641_3879891_0while_lstm_cell_641_3879893_0*
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
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3879851?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_641/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_641/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_641/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_641/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_641_3879889while_lstm_cell_641_3879889_0"<
while_lstm_cell_641_3879891while_lstm_cell_641_3879891_0"<
while_lstm_cell_641_3879893while_lstm_cell_641_3879893_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_641/StatefulPartitionedCall+while/lstm_cell_641/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
??
?
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881825

inputsH
5lstm_726_lstm_cell_639_matmul_readvariableop_resource:	?J
7lstm_726_lstm_cell_639_matmul_1_readvariableop_resource:	d?E
6lstm_726_lstm_cell_639_biasadd_readvariableop_resource:	?H
5lstm_727_lstm_cell_640_matmul_readvariableop_resource:	d?J
7lstm_727_lstm_cell_640_matmul_1_readvariableop_resource:	2?E
6lstm_727_lstm_cell_640_biasadd_readvariableop_resource:	?G
5lstm_728_lstm_cell_641_matmul_readvariableop_resource:2(I
7lstm_728_lstm_cell_641_matmul_1_readvariableop_resource:
(D
6lstm_728_lstm_cell_641_biasadd_readvariableop_resource:(:
(dense_242_matmul_readvariableop_resource:
7
)dense_242_biasadd_readvariableop_resource:
identity?? dense_242/BiasAdd/ReadVariableOp?dense_242/MatMul/ReadVariableOp?-lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp?,lstm_726/lstm_cell_639/MatMul/ReadVariableOp?.lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp?lstm_726/while?-lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp?,lstm_727/lstm_cell_640/MatMul/ReadVariableOp?.lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp?lstm_727/while?-lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp?,lstm_728/lstm_cell_641/MatMul/ReadVariableOp?.lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp?lstm_728/whileD
lstm_726/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_726/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_726/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_726/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_726/strided_sliceStridedSlicelstm_726/Shape:output:0%lstm_726/strided_slice/stack:output:0'lstm_726/strided_slice/stack_1:output:0'lstm_726/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_726/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_726/zeros/packedPacklstm_726/strided_slice:output:0 lstm_726/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_726/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_726/zerosFilllstm_726/zeros/packed:output:0lstm_726/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_726/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_726/zeros_1/packedPacklstm_726/strided_slice:output:0"lstm_726/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_726/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_726/zeros_1Fill lstm_726/zeros_1/packed:output:0lstm_726/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_726/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_726/transpose	Transposeinputs lstm_726/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_726/Shape_1Shapelstm_726/transpose:y:0*
T0*
_output_shapes
:h
lstm_726/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_726/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_726/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_726/strided_slice_1StridedSlicelstm_726/Shape_1:output:0'lstm_726/strided_slice_1/stack:output:0)lstm_726/strided_slice_1/stack_1:output:0)lstm_726/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_726/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_726/TensorArrayV2TensorListReserve-lstm_726/TensorArrayV2/element_shape:output:0!lstm_726/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_726/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_726/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_726/transpose:y:0Glstm_726/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_726/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_726/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_726/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_726/strided_slice_2StridedSlicelstm_726/transpose:y:0'lstm_726/strided_slice_2/stack:output:0)lstm_726/strided_slice_2/stack_1:output:0)lstm_726/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_726/lstm_cell_639/MatMul/ReadVariableOpReadVariableOp5lstm_726_lstm_cell_639_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_726/lstm_cell_639/MatMulMatMul!lstm_726/strided_slice_2:output:04lstm_726/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_726/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp7lstm_726_lstm_cell_639_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_726/lstm_cell_639/MatMul_1MatMullstm_726/zeros:output:06lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_726/lstm_cell_639/addAddV2'lstm_726/lstm_cell_639/MatMul:product:0)lstm_726/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_726/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp6lstm_726_lstm_cell_639_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_726/lstm_cell_639/BiasAddBiasAddlstm_726/lstm_cell_639/add:z:05lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_726/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_726/lstm_cell_639/splitSplit/lstm_726/lstm_cell_639/split/split_dim:output:0'lstm_726/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_726/lstm_cell_639/SigmoidSigmoid%lstm_726/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_726/lstm_cell_639/Sigmoid_1Sigmoid%lstm_726/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_726/lstm_cell_639/mulMul$lstm_726/lstm_cell_639/Sigmoid_1:y:0lstm_726/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_726/lstm_cell_639/ReluRelu%lstm_726/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_726/lstm_cell_639/mul_1Mul"lstm_726/lstm_cell_639/Sigmoid:y:0)lstm_726/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_726/lstm_cell_639/add_1AddV2lstm_726/lstm_cell_639/mul:z:0 lstm_726/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_726/lstm_cell_639/Sigmoid_2Sigmoid%lstm_726/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_726/lstm_cell_639/Relu_1Relu lstm_726/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_726/lstm_cell_639/mul_2Mul$lstm_726/lstm_cell_639/Sigmoid_2:y:0+lstm_726/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_726/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_726/TensorArrayV2_1TensorListReserve/lstm_726/TensorArrayV2_1/element_shape:output:0!lstm_726/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_726/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_726/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_726/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_726/whileWhile$lstm_726/while/loop_counter:output:0*lstm_726/while/maximum_iterations:output:0lstm_726/time:output:0!lstm_726/TensorArrayV2_1:handle:0lstm_726/zeros:output:0lstm_726/zeros_1:output:0!lstm_726/strided_slice_1:output:0@lstm_726/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_726_lstm_cell_639_matmul_readvariableop_resource7lstm_726_lstm_cell_639_matmul_1_readvariableop_resource6lstm_726_lstm_cell_639_biasadd_readvariableop_resource*
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
lstm_726_while_body_3881457*'
condR
lstm_726_while_cond_3881456*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_726/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_726/TensorArrayV2Stack/TensorListStackTensorListStacklstm_726/while:output:3Blstm_726/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_726/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_726/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_726/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_726/strided_slice_3StridedSlice4lstm_726/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_726/strided_slice_3/stack:output:0)lstm_726/strided_slice_3/stack_1:output:0)lstm_726/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_726/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_726/transpose_1	Transpose4lstm_726/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_726/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_726/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_727/ShapeShapelstm_726/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_727/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_727/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_727/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_727/strided_sliceStridedSlicelstm_727/Shape:output:0%lstm_727/strided_slice/stack:output:0'lstm_727/strided_slice/stack_1:output:0'lstm_727/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_727/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_727/zeros/packedPacklstm_727/strided_slice:output:0 lstm_727/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_727/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_727/zerosFilllstm_727/zeros/packed:output:0lstm_727/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_727/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_727/zeros_1/packedPacklstm_727/strided_slice:output:0"lstm_727/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_727/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_727/zeros_1Fill lstm_727/zeros_1/packed:output:0lstm_727/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_727/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_727/transpose	Transposelstm_726/transpose_1:y:0 lstm_727/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_727/Shape_1Shapelstm_727/transpose:y:0*
T0*
_output_shapes
:h
lstm_727/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_727/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_727/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_727/strided_slice_1StridedSlicelstm_727/Shape_1:output:0'lstm_727/strided_slice_1/stack:output:0)lstm_727/strided_slice_1/stack_1:output:0)lstm_727/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_727/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_727/TensorArrayV2TensorListReserve-lstm_727/TensorArrayV2/element_shape:output:0!lstm_727/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_727/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_727/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_727/transpose:y:0Glstm_727/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_727/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_727/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_727/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_727/strided_slice_2StridedSlicelstm_727/transpose:y:0'lstm_727/strided_slice_2/stack:output:0)lstm_727/strided_slice_2/stack_1:output:0)lstm_727/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_727/lstm_cell_640/MatMul/ReadVariableOpReadVariableOp5lstm_727_lstm_cell_640_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_727/lstm_cell_640/MatMulMatMul!lstm_727/strided_slice_2:output:04lstm_727/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_727/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp7lstm_727_lstm_cell_640_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_727/lstm_cell_640/MatMul_1MatMullstm_727/zeros:output:06lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_727/lstm_cell_640/addAddV2'lstm_727/lstm_cell_640/MatMul:product:0)lstm_727/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_727/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp6lstm_727_lstm_cell_640_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_727/lstm_cell_640/BiasAddBiasAddlstm_727/lstm_cell_640/add:z:05lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_727/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_727/lstm_cell_640/splitSplit/lstm_727/lstm_cell_640/split/split_dim:output:0'lstm_727/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_727/lstm_cell_640/SigmoidSigmoid%lstm_727/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_727/lstm_cell_640/Sigmoid_1Sigmoid%lstm_727/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_727/lstm_cell_640/mulMul$lstm_727/lstm_cell_640/Sigmoid_1:y:0lstm_727/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_727/lstm_cell_640/ReluRelu%lstm_727/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_727/lstm_cell_640/mul_1Mul"lstm_727/lstm_cell_640/Sigmoid:y:0)lstm_727/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_727/lstm_cell_640/add_1AddV2lstm_727/lstm_cell_640/mul:z:0 lstm_727/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_727/lstm_cell_640/Sigmoid_2Sigmoid%lstm_727/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_727/lstm_cell_640/Relu_1Relu lstm_727/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_727/lstm_cell_640/mul_2Mul$lstm_727/lstm_cell_640/Sigmoid_2:y:0+lstm_727/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_727/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_727/TensorArrayV2_1TensorListReserve/lstm_727/TensorArrayV2_1/element_shape:output:0!lstm_727/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_727/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_727/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_727/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_727/whileWhile$lstm_727/while/loop_counter:output:0*lstm_727/while/maximum_iterations:output:0lstm_727/time:output:0!lstm_727/TensorArrayV2_1:handle:0lstm_727/zeros:output:0lstm_727/zeros_1:output:0!lstm_727/strided_slice_1:output:0@lstm_727/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_727_lstm_cell_640_matmul_readvariableop_resource7lstm_727_lstm_cell_640_matmul_1_readvariableop_resource6lstm_727_lstm_cell_640_biasadd_readvariableop_resource*
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
lstm_727_while_body_3881596*'
condR
lstm_727_while_cond_3881595*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_727/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_727/TensorArrayV2Stack/TensorListStackTensorListStacklstm_727/while:output:3Blstm_727/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_727/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_727/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_727/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_727/strided_slice_3StridedSlice4lstm_727/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_727/strided_slice_3/stack:output:0)lstm_727/strided_slice_3/stack_1:output:0)lstm_727/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_727/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_727/transpose_1	Transpose4lstm_727/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_727/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_727/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_728/ShapeShapelstm_727/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_728/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_728/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_728/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_728/strided_sliceStridedSlicelstm_728/Shape:output:0%lstm_728/strided_slice/stack:output:0'lstm_728/strided_slice/stack_1:output:0'lstm_728/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_728/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_728/zeros/packedPacklstm_728/strided_slice:output:0 lstm_728/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_728/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_728/zerosFilllstm_728/zeros/packed:output:0lstm_728/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_728/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_728/zeros_1/packedPacklstm_728/strided_slice:output:0"lstm_728/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_728/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_728/zeros_1Fill lstm_728/zeros_1/packed:output:0lstm_728/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_728/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_728/transpose	Transposelstm_727/transpose_1:y:0 lstm_728/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_728/Shape_1Shapelstm_728/transpose:y:0*
T0*
_output_shapes
:h
lstm_728/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_728/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_728/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_728/strided_slice_1StridedSlicelstm_728/Shape_1:output:0'lstm_728/strided_slice_1/stack:output:0)lstm_728/strided_slice_1/stack_1:output:0)lstm_728/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_728/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_728/TensorArrayV2TensorListReserve-lstm_728/TensorArrayV2/element_shape:output:0!lstm_728/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_728/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_728/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_728/transpose:y:0Glstm_728/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_728/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_728/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_728/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_728/strided_slice_2StridedSlicelstm_728/transpose:y:0'lstm_728/strided_slice_2/stack:output:0)lstm_728/strided_slice_2/stack_1:output:0)lstm_728/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_728/lstm_cell_641/MatMul/ReadVariableOpReadVariableOp5lstm_728_lstm_cell_641_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_728/lstm_cell_641/MatMulMatMul!lstm_728/strided_slice_2:output:04lstm_728/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_728/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp7lstm_728_lstm_cell_641_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_728/lstm_cell_641/MatMul_1MatMullstm_728/zeros:output:06lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_728/lstm_cell_641/addAddV2'lstm_728/lstm_cell_641/MatMul:product:0)lstm_728/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_728/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp6lstm_728_lstm_cell_641_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_728/lstm_cell_641/BiasAddBiasAddlstm_728/lstm_cell_641/add:z:05lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_728/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_728/lstm_cell_641/splitSplit/lstm_728/lstm_cell_641/split/split_dim:output:0'lstm_728/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_728/lstm_cell_641/SigmoidSigmoid%lstm_728/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_728/lstm_cell_641/Sigmoid_1Sigmoid%lstm_728/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_728/lstm_cell_641/mulMul$lstm_728/lstm_cell_641/Sigmoid_1:y:0lstm_728/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_728/lstm_cell_641/ReluRelu%lstm_728/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_728/lstm_cell_641/mul_1Mul"lstm_728/lstm_cell_641/Sigmoid:y:0)lstm_728/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_728/lstm_cell_641/add_1AddV2lstm_728/lstm_cell_641/mul:z:0 lstm_728/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_728/lstm_cell_641/Sigmoid_2Sigmoid%lstm_728/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_728/lstm_cell_641/Relu_1Relu lstm_728/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_728/lstm_cell_641/mul_2Mul$lstm_728/lstm_cell_641/Sigmoid_2:y:0+lstm_728/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_728/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_728/TensorArrayV2_1TensorListReserve/lstm_728/TensorArrayV2_1/element_shape:output:0!lstm_728/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_728/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_728/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_728/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_728/whileWhile$lstm_728/while/loop_counter:output:0*lstm_728/while/maximum_iterations:output:0lstm_728/time:output:0!lstm_728/TensorArrayV2_1:handle:0lstm_728/zeros:output:0lstm_728/zeros_1:output:0!lstm_728/strided_slice_1:output:0@lstm_728/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_728_lstm_cell_641_matmul_readvariableop_resource7lstm_728_lstm_cell_641_matmul_1_readvariableop_resource6lstm_728_lstm_cell_641_biasadd_readvariableop_resource*
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
lstm_728_while_body_3881735*'
condR
lstm_728_while_cond_3881734*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_728/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_728/TensorArrayV2Stack/TensorListStackTensorListStacklstm_728/while:output:3Blstm_728/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_728/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_728/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_728/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_728/strided_slice_3StridedSlice4lstm_728/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_728/strided_slice_3/stack:output:0)lstm_728/strided_slice_3/stack_1:output:0)lstm_728/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_728/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_728/transpose_1	Transpose4lstm_728/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_728/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_728/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_242/MatMul/ReadVariableOpReadVariableOp(dense_242_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_242/MatMulMatMul!lstm_728/strided_slice_3:output:0'dense_242/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_242/BiasAdd/ReadVariableOpReadVariableOp)dense_242_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_242/BiasAddBiasAdddense_242/MatMul:product:0(dense_242/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_242/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_242/BiasAdd/ReadVariableOp ^dense_242/MatMul/ReadVariableOp.^lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp-^lstm_726/lstm_cell_639/MatMul/ReadVariableOp/^lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp^lstm_726/while.^lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp-^lstm_727/lstm_cell_640/MatMul/ReadVariableOp/^lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp^lstm_727/while.^lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp-^lstm_728/lstm_cell_641/MatMul/ReadVariableOp/^lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp^lstm_728/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_242/BiasAdd/ReadVariableOp dense_242/BiasAdd/ReadVariableOp2B
dense_242/MatMul/ReadVariableOpdense_242/MatMul/ReadVariableOp2^
-lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp-lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp2\
,lstm_726/lstm_cell_639/MatMul/ReadVariableOp,lstm_726/lstm_cell_639/MatMul/ReadVariableOp2`
.lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp.lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp2 
lstm_726/whilelstm_726/while2^
-lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp-lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp2\
,lstm_727/lstm_cell_640/MatMul/ReadVariableOp,lstm_727/lstm_cell_640/MatMul/ReadVariableOp2`
.lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp.lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp2 
lstm_727/whilelstm_727/while2^
-lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp-lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp2\
,lstm_728/lstm_cell_641/MatMul/ReadVariableOp,lstm_728/lstm_cell_641/MatMul/ReadVariableOp2`
.lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp.lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp2 
lstm_728/whilelstm_728/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882439
inputs_0?
,lstm_cell_639_matmul_readvariableop_resource:	?A
.lstm_cell_639_matmul_1_readvariableop_resource:	d?<
-lstm_cell_639_biasadd_readvariableop_resource:	?
identity??$lstm_cell_639/BiasAdd/ReadVariableOp?#lstm_cell_639/MatMul/ReadVariableOp?%lstm_cell_639/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_639/MatMul/ReadVariableOpReadVariableOp,lstm_cell_639_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_639/MatMulMatMulstrided_slice_2:output:0+lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_639_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_639/MatMul_1MatMulzeros:output:0-lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_639/addAddV2lstm_cell_639/MatMul:product:0 lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_639_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_639/BiasAddBiasAddlstm_cell_639/add:z:0,lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_639/splitSplit&lstm_cell_639/split/split_dim:output:0lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_639/SigmoidSigmoidlstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_1Sigmoidlstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_639/mulMullstm_cell_639/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_639/ReluRelulstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_1Mullstm_cell_639/Sigmoid:y:0 lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_639/add_1AddV2lstm_cell_639/mul:z:0lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_2Sigmoidlstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_639/Relu_1Relulstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_2Mullstm_cell_639/Sigmoid_2:y:0"lstm_cell_639/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_639_matmul_readvariableop_resource.lstm_cell_639_matmul_1_readvariableop_resource-lstm_cell_639_biasadd_readvariableop_resource*
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
while_body_3882355*
condR
while_cond_3882354*K
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
NoOpNoOp%^lstm_cell_639/BiasAdd/ReadVariableOp$^lstm_cell_639/MatMul/ReadVariableOp&^lstm_cell_639/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_639/BiasAdd/ReadVariableOp$lstm_cell_639/BiasAdd/ReadVariableOp2J
#lstm_cell_639/MatMul/ReadVariableOp#lstm_cell_639/MatMul/ReadVariableOp2N
%lstm_cell_639/MatMul_1/ReadVariableOp%lstm_cell_639/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3879851

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
?W
?
 __inference__traced_save_3884556
file_prefix/
+savev2_dense_242_kernel_read_readvariableop-
)savev2_dense_242_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_726_lstm_cell_726_kernel_read_readvariableopF
Bsavev2_lstm_726_lstm_cell_726_recurrent_kernel_read_readvariableop:
6savev2_lstm_726_lstm_cell_726_bias_read_readvariableop<
8savev2_lstm_727_lstm_cell_727_kernel_read_readvariableopF
Bsavev2_lstm_727_lstm_cell_727_recurrent_kernel_read_readvariableop:
6savev2_lstm_727_lstm_cell_727_bias_read_readvariableop<
8savev2_lstm_728_lstm_cell_728_kernel_read_readvariableopF
Bsavev2_lstm_728_lstm_cell_728_recurrent_kernel_read_readvariableop:
6savev2_lstm_728_lstm_cell_728_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_242_kernel_m_read_readvariableop4
0savev2_adam_dense_242_bias_m_read_readvariableopC
?savev2_adam_lstm_726_lstm_cell_726_kernel_m_read_readvariableopM
Isavev2_adam_lstm_726_lstm_cell_726_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_726_lstm_cell_726_bias_m_read_readvariableopC
?savev2_adam_lstm_727_lstm_cell_727_kernel_m_read_readvariableopM
Isavev2_adam_lstm_727_lstm_cell_727_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_727_lstm_cell_727_bias_m_read_readvariableopC
?savev2_adam_lstm_728_lstm_cell_728_kernel_m_read_readvariableopM
Isavev2_adam_lstm_728_lstm_cell_728_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_728_lstm_cell_728_bias_m_read_readvariableop6
2savev2_adam_dense_242_kernel_v_read_readvariableop4
0savev2_adam_dense_242_bias_v_read_readvariableopC
?savev2_adam_lstm_726_lstm_cell_726_kernel_v_read_readvariableopM
Isavev2_adam_lstm_726_lstm_cell_726_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_726_lstm_cell_726_bias_v_read_readvariableopC
?savev2_adam_lstm_727_lstm_cell_727_kernel_v_read_readvariableopM
Isavev2_adam_lstm_727_lstm_cell_727_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_727_lstm_cell_727_bias_v_read_readvariableopC
?savev2_adam_lstm_728_lstm_cell_728_kernel_v_read_readvariableopM
Isavev2_adam_lstm_728_lstm_cell_728_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_728_lstm_cell_728_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_242_kernel_read_readvariableop)savev2_dense_242_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_726_lstm_cell_726_kernel_read_readvariableopBsavev2_lstm_726_lstm_cell_726_recurrent_kernel_read_readvariableop6savev2_lstm_726_lstm_cell_726_bias_read_readvariableop8savev2_lstm_727_lstm_cell_727_kernel_read_readvariableopBsavev2_lstm_727_lstm_cell_727_recurrent_kernel_read_readvariableop6savev2_lstm_727_lstm_cell_727_bias_read_readvariableop8savev2_lstm_728_lstm_cell_728_kernel_read_readvariableopBsavev2_lstm_728_lstm_cell_728_recurrent_kernel_read_readvariableop6savev2_lstm_728_lstm_cell_728_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_242_kernel_m_read_readvariableop0savev2_adam_dense_242_bias_m_read_readvariableop?savev2_adam_lstm_726_lstm_cell_726_kernel_m_read_readvariableopIsavev2_adam_lstm_726_lstm_cell_726_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_726_lstm_cell_726_bias_m_read_readvariableop?savev2_adam_lstm_727_lstm_cell_727_kernel_m_read_readvariableopIsavev2_adam_lstm_727_lstm_cell_727_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_727_lstm_cell_727_bias_m_read_readvariableop?savev2_adam_lstm_728_lstm_cell_728_kernel_m_read_readvariableopIsavev2_adam_lstm_728_lstm_cell_728_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_728_lstm_cell_728_bias_m_read_readvariableop2savev2_adam_dense_242_kernel_v_read_readvariableop0savev2_adam_dense_242_bias_v_read_readvariableop?savev2_adam_lstm_726_lstm_cell_726_kernel_v_read_readvariableopIsavev2_adam_lstm_726_lstm_cell_726_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_726_lstm_cell_726_bias_v_read_readvariableop?savev2_adam_lstm_727_lstm_cell_727_kernel_v_read_readvariableopIsavev2_adam_lstm_727_lstm_cell_727_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_727_lstm_cell_727_bias_v_read_readvariableop?savev2_adam_lstm_728_lstm_cell_728_kernel_v_read_readvariableopIsavev2_adam_lstm_728_lstm_cell_728_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_728_lstm_cell_728_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
*__inference_lstm_728_layer_call_fn_3883506
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3880125o
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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3884283

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
lstm_728_while_cond_3882161.
*lstm_728_while_lstm_728_while_loop_counter4
0lstm_728_while_lstm_728_while_maximum_iterations
lstm_728_while_placeholder 
lstm_728_while_placeholder_1 
lstm_728_while_placeholder_2 
lstm_728_while_placeholder_30
,lstm_728_while_less_lstm_728_strided_slice_1G
Clstm_728_while_lstm_728_while_cond_3882161___redundant_placeholder0G
Clstm_728_while_lstm_728_while_cond_3882161___redundant_placeholder1G
Clstm_728_while_lstm_728_while_cond_3882161___redundant_placeholder2G
Clstm_728_while_lstm_728_while_cond_3882161___redundant_placeholder3
lstm_728_while_identity
?
lstm_728/while/LessLesslstm_728_while_placeholder,lstm_728_while_less_lstm_728_strided_slice_1*
T0*
_output_shapes
: ]
lstm_728/while/IdentityIdentitylstm_728/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_728_while_identity lstm_728/while/Identity:output:0*(
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
while_body_3880349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_640_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_640_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_640_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_640_matmul_readvariableop_resource:	d?G
4while_lstm_cell_640_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_640_biasadd_readvariableop_resource:	???*while/lstm_cell_640/BiasAdd/ReadVariableOp?)while/lstm_cell_640/MatMul/ReadVariableOp?+while/lstm_cell_640/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_640/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_640_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_640/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_640_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_640/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_640/addAddV2$while/lstm_cell_640/MatMul:product:0&while/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_640_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_640/BiasAddBiasAddwhile/lstm_cell_640/add:z:02while/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_640/splitSplit,while/lstm_cell_640/split/split_dim:output:0$while/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_640/SigmoidSigmoid"while/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_1Sigmoid"while/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mulMul!while/lstm_cell_640/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_640/ReluRelu"while/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_1Mulwhile/lstm_cell_640/Sigmoid:y:0&while/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/add_1AddV2while/lstm_cell_640/mul:z:0while/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_2Sigmoid"while/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_640/Relu_1Reluwhile/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_2Mul!while/lstm_cell_640/Sigmoid_2:y:0(while/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_640/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_640/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_640/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_640/BiasAdd/ReadVariableOp*^while/lstm_cell_640/MatMul/ReadVariableOp,^while/lstm_cell_640/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_640_biasadd_readvariableop_resource5while_lstm_cell_640_biasadd_readvariableop_resource_0"n
4while_lstm_cell_640_matmul_1_readvariableop_resource6while_lstm_cell_640_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_640_matmul_readvariableop_resource4while_lstm_cell_640_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_640/BiasAdd/ReadVariableOp*while/lstm_cell_640/BiasAdd/ReadVariableOp2V
)while/lstm_cell_640/MatMul/ReadVariableOp)while/lstm_cell_640/MatMul/ReadVariableOp2Z
+while/lstm_cell_640/MatMul_1/ReadVariableOp+while/lstm_cell_640/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3880498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3880498___redundant_placeholder05
1while_while_cond_3880498___redundant_placeholder15
1while_while_cond_3880498___redundant_placeholder25
1while_while_cond_3880498___redundant_placeholder3
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883484

inputs?
,lstm_cell_640_matmul_readvariableop_resource:	d?A
.lstm_cell_640_matmul_1_readvariableop_resource:	2?<
-lstm_cell_640_biasadd_readvariableop_resource:	?
identity??$lstm_cell_640/BiasAdd/ReadVariableOp?#lstm_cell_640/MatMul/ReadVariableOp?%lstm_cell_640/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_640/MatMul/ReadVariableOpReadVariableOp,lstm_cell_640_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_640/MatMulMatMulstrided_slice_2:output:0+lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_640_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_640/MatMul_1MatMulzeros:output:0-lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_640/addAddV2lstm_cell_640/MatMul:product:0 lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_640_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_640/BiasAddBiasAddlstm_cell_640/add:z:0,lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_640/splitSplit&lstm_cell_640/split/split_dim:output:0lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_640/SigmoidSigmoidlstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_1Sigmoidlstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_640/mulMullstm_cell_640/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_640/ReluRelulstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_1Mullstm_cell_640/Sigmoid:y:0 lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_640/add_1AddV2lstm_cell_640/mul:z:0lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_2Sigmoidlstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_640/Relu_1Relulstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_2Mullstm_cell_640/Sigmoid_2:y:0"lstm_cell_640/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_640_matmul_readvariableop_resource.lstm_cell_640_matmul_1_readvariableop_resource-lstm_cell_640_biasadd_readvariableop_resource*
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
while_body_3883400*
condR
while_cond_3883399*K
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
NoOpNoOp%^lstm_cell_640/BiasAdd/ReadVariableOp$^lstm_cell_640/MatMul/ReadVariableOp&^lstm_cell_640/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_640/BiasAdd/ReadVariableOp$lstm_cell_640/BiasAdd/ReadVariableOp2J
#lstm_cell_640/MatMul/ReadVariableOp#lstm_cell_640/MatMul/ReadVariableOp2N
%lstm_cell_640/MatMul_1/ReadVariableOp%lstm_cell_640/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_728_layer_call_and_return_conditional_losses_3883671
inputs_0>
,lstm_cell_641_matmul_readvariableop_resource:2(@
.lstm_cell_641_matmul_1_readvariableop_resource:
(;
-lstm_cell_641_biasadd_readvariableop_resource:(
identity??$lstm_cell_641/BiasAdd/ReadVariableOp?#lstm_cell_641/MatMul/ReadVariableOp?%lstm_cell_641/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_641/MatMul/ReadVariableOpReadVariableOp,lstm_cell_641_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_641/MatMulMatMulstrided_slice_2:output:0+lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_641_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_641/MatMul_1MatMulzeros:output:0-lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_641/addAddV2lstm_cell_641/MatMul:product:0 lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_641_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_641/BiasAddBiasAddlstm_cell_641/add:z:0,lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_641/splitSplit&lstm_cell_641/split/split_dim:output:0lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_641/SigmoidSigmoidlstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_1Sigmoidlstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_641/mulMullstm_cell_641/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_641/ReluRelulstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_1Mullstm_cell_641/Sigmoid:y:0 lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_641/add_1AddV2lstm_cell_641/mul:z:0lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_641/Sigmoid_2Sigmoidlstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_641/Relu_1Relulstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_641/mul_2Mullstm_cell_641/Sigmoid_2:y:0"lstm_cell_641/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_641_matmul_readvariableop_resource.lstm_cell_641_matmul_1_readvariableop_resource-lstm_cell_641_biasadd_readvariableop_resource*
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
while_body_3883587*
condR
while_cond_3883586*K
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
NoOpNoOp%^lstm_cell_641/BiasAdd/ReadVariableOp$^lstm_cell_641/MatMul/ReadVariableOp&^lstm_cell_641/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_641/BiasAdd/ReadVariableOp$lstm_cell_641/BiasAdd/ReadVariableOp2J
#lstm_cell_641/MatMul/ReadVariableOp#lstm_cell_641/MatMul/ReadVariableOp2N
%lstm_cell_641/MatMul_1/ReadVariableOp%lstm_cell_641/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_726_layer_call_fn_3882263
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3879234|
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
?8
?
E__inference_lstm_727_layer_call_and_return_conditional_losses_3879775

inputs(
lstm_cell_640_3879693:	d?(
lstm_cell_640_3879695:	2?$
lstm_cell_640_3879697:	?
identity??%lstm_cell_640/StatefulPartitionedCall?while;
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
%lstm_cell_640/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_640_3879693lstm_cell_640_3879695lstm_cell_640_3879697*
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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3879647n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_640_3879693lstm_cell_640_3879695lstm_cell_640_3879697*
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
while_body_3879706*
condR
while_cond_3879705*K
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
NoOpNoOp&^lstm_cell_640/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_640/StatefulPartitionedCall%lstm_cell_640/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881197

inputs#
lstm_726_3881170:	?#
lstm_726_3881172:	d?
lstm_726_3881174:	?#
lstm_727_3881177:	d?#
lstm_727_3881179:	2?
lstm_727_3881181:	?"
lstm_728_3881184:2("
lstm_728_3881186:
(
lstm_728_3881188:(#
dense_242_3881191:

dense_242_3881193:
identity??!dense_242/StatefulPartitionedCall? lstm_726/StatefulPartitionedCall? lstm_727/StatefulPartitionedCall? lstm_728/StatefulPartitionedCall?
 lstm_726/StatefulPartitionedCallStatefulPartitionedCallinputslstm_726_3881170lstm_726_3881172lstm_726_3881174*
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3881129?
 lstm_727/StatefulPartitionedCallStatefulPartitionedCall)lstm_726/StatefulPartitionedCall:output:0lstm_727_3881177lstm_727_3881179lstm_727_3881181*
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3880964?
 lstm_728/StatefulPartitionedCallStatefulPartitionedCall)lstm_727/StatefulPartitionedCall:output:0lstm_728_3881184lstm_728_3881186lstm_728_3881188*
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3880799?
!dense_242/StatefulPartitionedCallStatefulPartitionedCall)lstm_728/StatefulPartitionedCall:output:0dense_242_3881191dense_242_3881193*
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
F__inference_dense_242_layer_call_and_return_conditional_losses_3880601y
IdentityIdentity*dense_242/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_242/StatefulPartitionedCall!^lstm_726/StatefulPartitionedCall!^lstm_727/StatefulPartitionedCall!^lstm_728/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_242/StatefulPartitionedCall!dense_242/StatefulPartitionedCall2D
 lstm_726/StatefulPartitionedCall lstm_726/StatefulPartitionedCall2D
 lstm_727/StatefulPartitionedCall lstm_727/StatefulPartitionedCall2D
 lstm_728/StatefulPartitionedCall lstm_728/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3883113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3883113___redundant_placeholder05
1while_while_cond_3883113___redundant_placeholder15
1while_while_cond_3883113___redundant_placeholder25
1while_while_cond_3883113___redundant_placeholder3
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
#__inference__traced_restore_3884686
file_prefix3
!assignvariableop_dense_242_kernel:
/
!assignvariableop_1_dense_242_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_726_lstm_cell_726_kernel:	?M
:assignvariableop_8_lstm_726_lstm_cell_726_recurrent_kernel:	d?=
.assignvariableop_9_lstm_726_lstm_cell_726_bias:	?D
1assignvariableop_10_lstm_727_lstm_cell_727_kernel:	d?N
;assignvariableop_11_lstm_727_lstm_cell_727_recurrent_kernel:	2?>
/assignvariableop_12_lstm_727_lstm_cell_727_bias:	?C
1assignvariableop_13_lstm_728_lstm_cell_728_kernel:2(M
;assignvariableop_14_lstm_728_lstm_cell_728_recurrent_kernel:
(=
/assignvariableop_15_lstm_728_lstm_cell_728_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_242_kernel_m:
7
)assignvariableop_19_adam_dense_242_bias_m:K
8assignvariableop_20_adam_lstm_726_lstm_cell_726_kernel_m:	?U
Bassignvariableop_21_adam_lstm_726_lstm_cell_726_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_726_lstm_cell_726_bias_m:	?K
8assignvariableop_23_adam_lstm_727_lstm_cell_727_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_727_lstm_cell_727_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_727_lstm_cell_727_bias_m:	?J
8assignvariableop_26_adam_lstm_728_lstm_cell_728_kernel_m:2(T
Bassignvariableop_27_adam_lstm_728_lstm_cell_728_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_728_lstm_cell_728_bias_m:(=
+assignvariableop_29_adam_dense_242_kernel_v:
7
)assignvariableop_30_adam_dense_242_bias_v:K
8assignvariableop_31_adam_lstm_726_lstm_cell_726_kernel_v:	?U
Bassignvariableop_32_adam_lstm_726_lstm_cell_726_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_726_lstm_cell_726_bias_v:	?K
8assignvariableop_34_adam_lstm_727_lstm_cell_727_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_727_lstm_cell_727_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_727_lstm_cell_727_bias_v:	?J
8assignvariableop_37_adam_lstm_728_lstm_cell_728_kernel_v:2(T
Bassignvariableop_38_adam_lstm_728_lstm_cell_728_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_728_lstm_cell_728_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_242_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_242_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_726_lstm_cell_726_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_726_lstm_cell_726_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_726_lstm_cell_726_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_727_lstm_cell_727_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_727_lstm_cell_727_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_727_lstm_cell_727_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_728_lstm_cell_728_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_728_lstm_cell_728_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_728_lstm_cell_728_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_242_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_242_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_726_lstm_cell_726_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_726_lstm_cell_726_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_726_lstm_cell_726_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_727_lstm_cell_727_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_727_lstm_cell_727_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_727_lstm_cell_727_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_728_lstm_cell_728_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_728_lstm_cell_728_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_728_lstm_cell_728_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_242_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_242_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_726_lstm_cell_726_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_726_lstm_cell_726_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_726_lstm_cell_726_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_727_lstm_cell_727_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_727_lstm_cell_727_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_727_lstm_cell_727_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_728_lstm_cell_728_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_728_lstm_cell_728_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_728_lstm_cell_728_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
*__inference_lstm_727_layer_call_fn_3882901

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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3880433s
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
?C
?

lstm_728_while_body_3881735.
*lstm_728_while_lstm_728_while_loop_counter4
0lstm_728_while_lstm_728_while_maximum_iterations
lstm_728_while_placeholder 
lstm_728_while_placeholder_1 
lstm_728_while_placeholder_2 
lstm_728_while_placeholder_3-
)lstm_728_while_lstm_728_strided_slice_1_0i
elstm_728_while_tensorarrayv2read_tensorlistgetitem_lstm_728_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_728_while_lstm_cell_641_matmul_readvariableop_resource_0:2(Q
?lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource_0:
(L
>lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource_0:(
lstm_728_while_identity
lstm_728_while_identity_1
lstm_728_while_identity_2
lstm_728_while_identity_3
lstm_728_while_identity_4
lstm_728_while_identity_5+
'lstm_728_while_lstm_728_strided_slice_1g
clstm_728_while_tensorarrayv2read_tensorlistgetitem_lstm_728_tensorarrayunstack_tensorlistfromtensorM
;lstm_728_while_lstm_cell_641_matmul_readvariableop_resource:2(O
=lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource:
(J
<lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource:(??3lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp?2lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp?4lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp?
@lstm_728/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_728/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_728_while_tensorarrayv2read_tensorlistgetitem_lstm_728_tensorarrayunstack_tensorlistfromtensor_0lstm_728_while_placeholderIlstm_728/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_728/while/lstm_cell_641/MatMul/ReadVariableOpReadVariableOp=lstm_728_while_lstm_cell_641_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_728/while/lstm_cell_641/MatMulMatMul9lstm_728/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp?lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_728/while/lstm_cell_641/MatMul_1MatMullstm_728_while_placeholder_2<lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_728/while/lstm_cell_641/addAddV2-lstm_728/while/lstm_cell_641/MatMul:product:0/lstm_728/while/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp>lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_728/while/lstm_cell_641/BiasAddBiasAdd$lstm_728/while/lstm_cell_641/add:z:0;lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_728/while/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_728/while/lstm_cell_641/splitSplit5lstm_728/while/lstm_cell_641/split/split_dim:output:0-lstm_728/while/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_728/while/lstm_cell_641/SigmoidSigmoid+lstm_728/while/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_728/while/lstm_cell_641/Sigmoid_1Sigmoid+lstm_728/while/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_728/while/lstm_cell_641/mulMul*lstm_728/while/lstm_cell_641/Sigmoid_1:y:0lstm_728_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_728/while/lstm_cell_641/ReluRelu+lstm_728/while/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_728/while/lstm_cell_641/mul_1Mul(lstm_728/while/lstm_cell_641/Sigmoid:y:0/lstm_728/while/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_728/while/lstm_cell_641/add_1AddV2$lstm_728/while/lstm_cell_641/mul:z:0&lstm_728/while/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_728/while/lstm_cell_641/Sigmoid_2Sigmoid+lstm_728/while/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_728/while/lstm_cell_641/Relu_1Relu&lstm_728/while/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_728/while/lstm_cell_641/mul_2Mul*lstm_728/while/lstm_cell_641/Sigmoid_2:y:01lstm_728/while/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_728/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_728_while_placeholder_1lstm_728_while_placeholder&lstm_728/while/lstm_cell_641/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_728/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_728/while/addAddV2lstm_728_while_placeholderlstm_728/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_728/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_728/while/add_1AddV2*lstm_728_while_lstm_728_while_loop_counterlstm_728/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_728/while/IdentityIdentitylstm_728/while/add_1:z:0^lstm_728/while/NoOp*
T0*
_output_shapes
: ?
lstm_728/while/Identity_1Identity0lstm_728_while_lstm_728_while_maximum_iterations^lstm_728/while/NoOp*
T0*
_output_shapes
: t
lstm_728/while/Identity_2Identitylstm_728/while/add:z:0^lstm_728/while/NoOp*
T0*
_output_shapes
: ?
lstm_728/while/Identity_3IdentityClstm_728/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_728/while/NoOp*
T0*
_output_shapes
: ?
lstm_728/while/Identity_4Identity&lstm_728/while/lstm_cell_641/mul_2:z:0^lstm_728/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_728/while/Identity_5Identity&lstm_728/while/lstm_cell_641/add_1:z:0^lstm_728/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_728/while/NoOpNoOp4^lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp3^lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp5^lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_728_while_identity lstm_728/while/Identity:output:0"?
lstm_728_while_identity_1"lstm_728/while/Identity_1:output:0"?
lstm_728_while_identity_2"lstm_728/while/Identity_2:output:0"?
lstm_728_while_identity_3"lstm_728/while/Identity_3:output:0"?
lstm_728_while_identity_4"lstm_728/while/Identity_4:output:0"?
lstm_728_while_identity_5"lstm_728/while/Identity_5:output:0"T
'lstm_728_while_lstm_728_strided_slice_1)lstm_728_while_lstm_728_strided_slice_1_0"~
<lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource>lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource_0"?
=lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource?lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource_0"|
;lstm_728_while_lstm_cell_641_matmul_readvariableop_resource=lstm_728_while_lstm_cell_641_matmul_readvariableop_resource_0"?
clstm_728_while_tensorarrayv2read_tensorlistgetitem_lstm_728_tensorarrayunstack_tensorlistfromtensorelstm_728_while_tensorarrayv2read_tensorlistgetitem_lstm_728_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp3lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp2h
2lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp2lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp2l
4lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp4lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_641_layer_call_fn_3884349

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
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3879997o
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
?T
?
*sequential_242_lstm_728_while_body_3878994L
Hsequential_242_lstm_728_while_sequential_242_lstm_728_while_loop_counterR
Nsequential_242_lstm_728_while_sequential_242_lstm_728_while_maximum_iterations-
)sequential_242_lstm_728_while_placeholder/
+sequential_242_lstm_728_while_placeholder_1/
+sequential_242_lstm_728_while_placeholder_2/
+sequential_242_lstm_728_while_placeholder_3K
Gsequential_242_lstm_728_while_sequential_242_lstm_728_strided_slice_1_0?
?sequential_242_lstm_728_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_728_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_242_lstm_728_while_lstm_cell_641_matmul_readvariableop_resource_0:2(`
Nsequential_242_lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource_0:
([
Msequential_242_lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource_0:(*
&sequential_242_lstm_728_while_identity,
(sequential_242_lstm_728_while_identity_1,
(sequential_242_lstm_728_while_identity_2,
(sequential_242_lstm_728_while_identity_3,
(sequential_242_lstm_728_while_identity_4,
(sequential_242_lstm_728_while_identity_5I
Esequential_242_lstm_728_while_sequential_242_lstm_728_strided_slice_1?
?sequential_242_lstm_728_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_728_tensorarrayunstack_tensorlistfromtensor\
Jsequential_242_lstm_728_while_lstm_cell_641_matmul_readvariableop_resource:2(^
Lsequential_242_lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource:
(Y
Ksequential_242_lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource:(??Bsequential_242/lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp?Asequential_242/lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp?Csequential_242/lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp?
Osequential_242/lstm_728/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_242/lstm_728/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_242_lstm_728_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_728_tensorarrayunstack_tensorlistfromtensor_0)sequential_242_lstm_728_while_placeholderXsequential_242/lstm_728/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_242/lstm_728/while/lstm_cell_641/MatMul/ReadVariableOpReadVariableOpLsequential_242_lstm_728_while_lstm_cell_641_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_242/lstm_728/while/lstm_cell_641/MatMulMatMulHsequential_242/lstm_728/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_242/lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_242/lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOpNsequential_242_lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_242/lstm_728/while/lstm_cell_641/MatMul_1MatMul+sequential_242_lstm_728_while_placeholder_2Ksequential_242/lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_242/lstm_728/while/lstm_cell_641/addAddV2<sequential_242/lstm_728/while/lstm_cell_641/MatMul:product:0>sequential_242/lstm_728/while/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_242/lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOpMsequential_242_lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_242/lstm_728/while/lstm_cell_641/BiasAddBiasAdd3sequential_242/lstm_728/while/lstm_cell_641/add:z:0Jsequential_242/lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_242/lstm_728/while/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_242/lstm_728/while/lstm_cell_641/splitSplitDsequential_242/lstm_728/while/lstm_cell_641/split/split_dim:output:0<sequential_242/lstm_728/while/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_242/lstm_728/while/lstm_cell_641/SigmoidSigmoid:sequential_242/lstm_728/while/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_242/lstm_728/while/lstm_cell_641/Sigmoid_1Sigmoid:sequential_242/lstm_728/while/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_242/lstm_728/while/lstm_cell_641/mulMul9sequential_242/lstm_728/while/lstm_cell_641/Sigmoid_1:y:0+sequential_242_lstm_728_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_242/lstm_728/while/lstm_cell_641/ReluRelu:sequential_242/lstm_728/while/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_242/lstm_728/while/lstm_cell_641/mul_1Mul7sequential_242/lstm_728/while/lstm_cell_641/Sigmoid:y:0>sequential_242/lstm_728/while/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_242/lstm_728/while/lstm_cell_641/add_1AddV23sequential_242/lstm_728/while/lstm_cell_641/mul:z:05sequential_242/lstm_728/while/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_242/lstm_728/while/lstm_cell_641/Sigmoid_2Sigmoid:sequential_242/lstm_728/while/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_242/lstm_728/while/lstm_cell_641/Relu_1Relu5sequential_242/lstm_728/while/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_242/lstm_728/while/lstm_cell_641/mul_2Mul9sequential_242/lstm_728/while/lstm_cell_641/Sigmoid_2:y:0@sequential_242/lstm_728/while/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_242/lstm_728/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_242_lstm_728_while_placeholder_1)sequential_242_lstm_728_while_placeholder5sequential_242/lstm_728/while/lstm_cell_641/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_242/lstm_728/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_242/lstm_728/while/addAddV2)sequential_242_lstm_728_while_placeholder,sequential_242/lstm_728/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_242/lstm_728/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_242/lstm_728/while/add_1AddV2Hsequential_242_lstm_728_while_sequential_242_lstm_728_while_loop_counter.sequential_242/lstm_728/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_242/lstm_728/while/IdentityIdentity'sequential_242/lstm_728/while/add_1:z:0#^sequential_242/lstm_728/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_728/while/Identity_1IdentityNsequential_242_lstm_728_while_sequential_242_lstm_728_while_maximum_iterations#^sequential_242/lstm_728/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_728/while/Identity_2Identity%sequential_242/lstm_728/while/add:z:0#^sequential_242/lstm_728/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_728/while/Identity_3IdentityRsequential_242/lstm_728/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_242/lstm_728/while/NoOp*
T0*
_output_shapes
: ?
(sequential_242/lstm_728/while/Identity_4Identity5sequential_242/lstm_728/while/lstm_cell_641/mul_2:z:0#^sequential_242/lstm_728/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_242/lstm_728/while/Identity_5Identity5sequential_242/lstm_728/while/lstm_cell_641/add_1:z:0#^sequential_242/lstm_728/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_242/lstm_728/while/NoOpNoOpC^sequential_242/lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOpB^sequential_242/lstm_728/while/lstm_cell_641/MatMul/ReadVariableOpD^sequential_242/lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_242_lstm_728_while_identity/sequential_242/lstm_728/while/Identity:output:0"]
(sequential_242_lstm_728_while_identity_11sequential_242/lstm_728/while/Identity_1:output:0"]
(sequential_242_lstm_728_while_identity_21sequential_242/lstm_728/while/Identity_2:output:0"]
(sequential_242_lstm_728_while_identity_31sequential_242/lstm_728/while/Identity_3:output:0"]
(sequential_242_lstm_728_while_identity_41sequential_242/lstm_728/while/Identity_4:output:0"]
(sequential_242_lstm_728_while_identity_51sequential_242/lstm_728/while/Identity_5:output:0"?
Ksequential_242_lstm_728_while_lstm_cell_641_biasadd_readvariableop_resourceMsequential_242_lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource_0"?
Lsequential_242_lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resourceNsequential_242_lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource_0"?
Jsequential_242_lstm_728_while_lstm_cell_641_matmul_readvariableop_resourceLsequential_242_lstm_728_while_lstm_cell_641_matmul_readvariableop_resource_0"?
Esequential_242_lstm_728_while_sequential_242_lstm_728_strided_slice_1Gsequential_242_lstm_728_while_sequential_242_lstm_728_strided_slice_1_0"?
?sequential_242_lstm_728_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_728_tensorarrayunstack_tensorlistfromtensor?sequential_242_lstm_728_while_tensorarrayv2read_tensorlistgetitem_sequential_242_lstm_728_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_242/lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOpBsequential_242/lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp2?
Asequential_242/lstm_728/while/lstm_cell_641/MatMul/ReadVariableOpAsequential_242/lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp2?
Csequential_242/lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOpCsequential_242/lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3879997

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
?C
?

lstm_726_while_body_3881884.
*lstm_726_while_lstm_726_while_loop_counter4
0lstm_726_while_lstm_726_while_maximum_iterations
lstm_726_while_placeholder 
lstm_726_while_placeholder_1 
lstm_726_while_placeholder_2 
lstm_726_while_placeholder_3-
)lstm_726_while_lstm_726_strided_slice_1_0i
elstm_726_while_tensorarrayv2read_tensorlistgetitem_lstm_726_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_726_while_lstm_cell_639_matmul_readvariableop_resource_0:	?R
?lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource_0:	d?M
>lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource_0:	?
lstm_726_while_identity
lstm_726_while_identity_1
lstm_726_while_identity_2
lstm_726_while_identity_3
lstm_726_while_identity_4
lstm_726_while_identity_5+
'lstm_726_while_lstm_726_strided_slice_1g
clstm_726_while_tensorarrayv2read_tensorlistgetitem_lstm_726_tensorarrayunstack_tensorlistfromtensorN
;lstm_726_while_lstm_cell_639_matmul_readvariableop_resource:	?P
=lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource:	d?K
<lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource:	???3lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp?2lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp?4lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp?
@lstm_726/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_726/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_726_while_tensorarrayv2read_tensorlistgetitem_lstm_726_tensorarrayunstack_tensorlistfromtensor_0lstm_726_while_placeholderIlstm_726/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_726/while/lstm_cell_639/MatMul/ReadVariableOpReadVariableOp=lstm_726_while_lstm_cell_639_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_726/while/lstm_cell_639/MatMulMatMul9lstm_726/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp?lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_726/while/lstm_cell_639/MatMul_1MatMullstm_726_while_placeholder_2<lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_726/while/lstm_cell_639/addAddV2-lstm_726/while/lstm_cell_639/MatMul:product:0/lstm_726/while/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp>lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_726/while/lstm_cell_639/BiasAddBiasAdd$lstm_726/while/lstm_cell_639/add:z:0;lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_726/while/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_726/while/lstm_cell_639/splitSplit5lstm_726/while/lstm_cell_639/split/split_dim:output:0-lstm_726/while/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_726/while/lstm_cell_639/SigmoidSigmoid+lstm_726/while/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_726/while/lstm_cell_639/Sigmoid_1Sigmoid+lstm_726/while/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_726/while/lstm_cell_639/mulMul*lstm_726/while/lstm_cell_639/Sigmoid_1:y:0lstm_726_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_726/while/lstm_cell_639/ReluRelu+lstm_726/while/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_726/while/lstm_cell_639/mul_1Mul(lstm_726/while/lstm_cell_639/Sigmoid:y:0/lstm_726/while/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_726/while/lstm_cell_639/add_1AddV2$lstm_726/while/lstm_cell_639/mul:z:0&lstm_726/while/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_726/while/lstm_cell_639/Sigmoid_2Sigmoid+lstm_726/while/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_726/while/lstm_cell_639/Relu_1Relu&lstm_726/while/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_726/while/lstm_cell_639/mul_2Mul*lstm_726/while/lstm_cell_639/Sigmoid_2:y:01lstm_726/while/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_726/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_726_while_placeholder_1lstm_726_while_placeholder&lstm_726/while/lstm_cell_639/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_726/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_726/while/addAddV2lstm_726_while_placeholderlstm_726/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_726/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_726/while/add_1AddV2*lstm_726_while_lstm_726_while_loop_counterlstm_726/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_726/while/IdentityIdentitylstm_726/while/add_1:z:0^lstm_726/while/NoOp*
T0*
_output_shapes
: ?
lstm_726/while/Identity_1Identity0lstm_726_while_lstm_726_while_maximum_iterations^lstm_726/while/NoOp*
T0*
_output_shapes
: t
lstm_726/while/Identity_2Identitylstm_726/while/add:z:0^lstm_726/while/NoOp*
T0*
_output_shapes
: ?
lstm_726/while/Identity_3IdentityClstm_726/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_726/while/NoOp*
T0*
_output_shapes
: ?
lstm_726/while/Identity_4Identity&lstm_726/while/lstm_cell_639/mul_2:z:0^lstm_726/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_726/while/Identity_5Identity&lstm_726/while/lstm_cell_639/add_1:z:0^lstm_726/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_726/while/NoOpNoOp4^lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp3^lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp5^lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_726_while_identity lstm_726/while/Identity:output:0"?
lstm_726_while_identity_1"lstm_726/while/Identity_1:output:0"?
lstm_726_while_identity_2"lstm_726/while/Identity_2:output:0"?
lstm_726_while_identity_3"lstm_726/while/Identity_3:output:0"?
lstm_726_while_identity_4"lstm_726/while/Identity_4:output:0"?
lstm_726_while_identity_5"lstm_726/while/Identity_5:output:0"T
'lstm_726_while_lstm_726_strided_slice_1)lstm_726_while_lstm_726_strided_slice_1_0"~
<lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource>lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource_0"?
=lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource?lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource_0"|
;lstm_726_while_lstm_cell_639_matmul_readvariableop_resource=lstm_726_while_lstm_cell_639_matmul_readvariableop_resource_0"?
clstm_726_while_tensorarrayv2read_tensorlistgetitem_lstm_726_tensorarrayunstack_tensorlistfromtensorelstm_726_while_tensorarrayv2read_tensorlistgetitem_lstm_726_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp3lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp2h
2lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp2lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp2l
4lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp4lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3879355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3879355___redundant_placeholder05
1while_while_cond_3879355___redundant_placeholder15
1while_while_cond_3879355___redundant_placeholder25
1while_while_cond_3879355___redundant_placeholder3
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
?#
?
while_body_3879356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_639_3879380_0:	?0
while_lstm_cell_639_3879382_0:	d?,
while_lstm_cell_639_3879384_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_639_3879380:	?.
while_lstm_cell_639_3879382:	d?*
while_lstm_cell_639_3879384:	???+while/lstm_cell_639/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_639/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_639_3879380_0while_lstm_cell_639_3879382_0while_lstm_cell_639_3879384_0*
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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3879297?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_639/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_639/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_639/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_639/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_639_3879380while_lstm_cell_639_3879380_0"<
while_lstm_cell_639_3879382while_lstm_cell_639_3879382_0"<
while_lstm_cell_639_3879384while_lstm_cell_639_3879384_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_639/StatefulPartitionedCall+while/lstm_cell_639/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_726_layer_call_fn_3882296

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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3881129s
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
?
?
/__inference_lstm_cell_640_layer_call_fn_3884234

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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3879501o
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
?8
?
E__inference_lstm_728_layer_call_and_return_conditional_losses_3880125

inputs'
lstm_cell_641_3880043:2('
lstm_cell_641_3880045:
(#
lstm_cell_641_3880047:(
identity??%lstm_cell_641/StatefulPartitionedCall?while;
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
%lstm_cell_641/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_641_3880043lstm_cell_641_3880045lstm_cell_641_3880047*
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
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3879997n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_641_3880043lstm_cell_641_3880045lstm_cell_641_3880047*
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
while_body_3880056*
condR
while_cond_3880055*K
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
NoOpNoOp&^lstm_cell_641/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_641/StatefulPartitionedCall%lstm_cell_641/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_3880348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3880348___redundant_placeholder05
1while_while_cond_3880348___redundant_placeholder15
1while_while_cond_3880348___redundant_placeholder25
1while_while_cond_3880348___redundant_placeholder3
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
*__inference_lstm_727_layer_call_fn_3882912

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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3880964s
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
??
?
K__inference_sequential_242_layer_call_and_return_conditional_losses_3882252

inputsH
5lstm_726_lstm_cell_639_matmul_readvariableop_resource:	?J
7lstm_726_lstm_cell_639_matmul_1_readvariableop_resource:	d?E
6lstm_726_lstm_cell_639_biasadd_readvariableop_resource:	?H
5lstm_727_lstm_cell_640_matmul_readvariableop_resource:	d?J
7lstm_727_lstm_cell_640_matmul_1_readvariableop_resource:	2?E
6lstm_727_lstm_cell_640_biasadd_readvariableop_resource:	?G
5lstm_728_lstm_cell_641_matmul_readvariableop_resource:2(I
7lstm_728_lstm_cell_641_matmul_1_readvariableop_resource:
(D
6lstm_728_lstm_cell_641_biasadd_readvariableop_resource:(:
(dense_242_matmul_readvariableop_resource:
7
)dense_242_biasadd_readvariableop_resource:
identity?? dense_242/BiasAdd/ReadVariableOp?dense_242/MatMul/ReadVariableOp?-lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp?,lstm_726/lstm_cell_639/MatMul/ReadVariableOp?.lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp?lstm_726/while?-lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp?,lstm_727/lstm_cell_640/MatMul/ReadVariableOp?.lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp?lstm_727/while?-lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp?,lstm_728/lstm_cell_641/MatMul/ReadVariableOp?.lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp?lstm_728/whileD
lstm_726/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_726/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_726/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_726/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_726/strided_sliceStridedSlicelstm_726/Shape:output:0%lstm_726/strided_slice/stack:output:0'lstm_726/strided_slice/stack_1:output:0'lstm_726/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_726/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_726/zeros/packedPacklstm_726/strided_slice:output:0 lstm_726/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_726/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_726/zerosFilllstm_726/zeros/packed:output:0lstm_726/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_726/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_726/zeros_1/packedPacklstm_726/strided_slice:output:0"lstm_726/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_726/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_726/zeros_1Fill lstm_726/zeros_1/packed:output:0lstm_726/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_726/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_726/transpose	Transposeinputs lstm_726/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_726/Shape_1Shapelstm_726/transpose:y:0*
T0*
_output_shapes
:h
lstm_726/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_726/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_726/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_726/strided_slice_1StridedSlicelstm_726/Shape_1:output:0'lstm_726/strided_slice_1/stack:output:0)lstm_726/strided_slice_1/stack_1:output:0)lstm_726/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_726/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_726/TensorArrayV2TensorListReserve-lstm_726/TensorArrayV2/element_shape:output:0!lstm_726/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_726/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_726/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_726/transpose:y:0Glstm_726/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_726/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_726/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_726/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_726/strided_slice_2StridedSlicelstm_726/transpose:y:0'lstm_726/strided_slice_2/stack:output:0)lstm_726/strided_slice_2/stack_1:output:0)lstm_726/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_726/lstm_cell_639/MatMul/ReadVariableOpReadVariableOp5lstm_726_lstm_cell_639_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_726/lstm_cell_639/MatMulMatMul!lstm_726/strided_slice_2:output:04lstm_726/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_726/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp7lstm_726_lstm_cell_639_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_726/lstm_cell_639/MatMul_1MatMullstm_726/zeros:output:06lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_726/lstm_cell_639/addAddV2'lstm_726/lstm_cell_639/MatMul:product:0)lstm_726/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_726/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp6lstm_726_lstm_cell_639_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_726/lstm_cell_639/BiasAddBiasAddlstm_726/lstm_cell_639/add:z:05lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_726/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_726/lstm_cell_639/splitSplit/lstm_726/lstm_cell_639/split/split_dim:output:0'lstm_726/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_726/lstm_cell_639/SigmoidSigmoid%lstm_726/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_726/lstm_cell_639/Sigmoid_1Sigmoid%lstm_726/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_726/lstm_cell_639/mulMul$lstm_726/lstm_cell_639/Sigmoid_1:y:0lstm_726/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_726/lstm_cell_639/ReluRelu%lstm_726/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_726/lstm_cell_639/mul_1Mul"lstm_726/lstm_cell_639/Sigmoid:y:0)lstm_726/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_726/lstm_cell_639/add_1AddV2lstm_726/lstm_cell_639/mul:z:0 lstm_726/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_726/lstm_cell_639/Sigmoid_2Sigmoid%lstm_726/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_726/lstm_cell_639/Relu_1Relu lstm_726/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_726/lstm_cell_639/mul_2Mul$lstm_726/lstm_cell_639/Sigmoid_2:y:0+lstm_726/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_726/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_726/TensorArrayV2_1TensorListReserve/lstm_726/TensorArrayV2_1/element_shape:output:0!lstm_726/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_726/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_726/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_726/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_726/whileWhile$lstm_726/while/loop_counter:output:0*lstm_726/while/maximum_iterations:output:0lstm_726/time:output:0!lstm_726/TensorArrayV2_1:handle:0lstm_726/zeros:output:0lstm_726/zeros_1:output:0!lstm_726/strided_slice_1:output:0@lstm_726/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_726_lstm_cell_639_matmul_readvariableop_resource7lstm_726_lstm_cell_639_matmul_1_readvariableop_resource6lstm_726_lstm_cell_639_biasadd_readvariableop_resource*
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
lstm_726_while_body_3881884*'
condR
lstm_726_while_cond_3881883*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_726/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_726/TensorArrayV2Stack/TensorListStackTensorListStacklstm_726/while:output:3Blstm_726/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_726/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_726/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_726/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_726/strided_slice_3StridedSlice4lstm_726/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_726/strided_slice_3/stack:output:0)lstm_726/strided_slice_3/stack_1:output:0)lstm_726/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_726/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_726/transpose_1	Transpose4lstm_726/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_726/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_726/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_727/ShapeShapelstm_726/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_727/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_727/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_727/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_727/strided_sliceStridedSlicelstm_727/Shape:output:0%lstm_727/strided_slice/stack:output:0'lstm_727/strided_slice/stack_1:output:0'lstm_727/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_727/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_727/zeros/packedPacklstm_727/strided_slice:output:0 lstm_727/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_727/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_727/zerosFilllstm_727/zeros/packed:output:0lstm_727/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_727/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_727/zeros_1/packedPacklstm_727/strided_slice:output:0"lstm_727/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_727/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_727/zeros_1Fill lstm_727/zeros_1/packed:output:0lstm_727/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_727/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_727/transpose	Transposelstm_726/transpose_1:y:0 lstm_727/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_727/Shape_1Shapelstm_727/transpose:y:0*
T0*
_output_shapes
:h
lstm_727/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_727/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_727/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_727/strided_slice_1StridedSlicelstm_727/Shape_1:output:0'lstm_727/strided_slice_1/stack:output:0)lstm_727/strided_slice_1/stack_1:output:0)lstm_727/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_727/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_727/TensorArrayV2TensorListReserve-lstm_727/TensorArrayV2/element_shape:output:0!lstm_727/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_727/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_727/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_727/transpose:y:0Glstm_727/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_727/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_727/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_727/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_727/strided_slice_2StridedSlicelstm_727/transpose:y:0'lstm_727/strided_slice_2/stack:output:0)lstm_727/strided_slice_2/stack_1:output:0)lstm_727/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_727/lstm_cell_640/MatMul/ReadVariableOpReadVariableOp5lstm_727_lstm_cell_640_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_727/lstm_cell_640/MatMulMatMul!lstm_727/strided_slice_2:output:04lstm_727/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_727/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp7lstm_727_lstm_cell_640_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_727/lstm_cell_640/MatMul_1MatMullstm_727/zeros:output:06lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_727/lstm_cell_640/addAddV2'lstm_727/lstm_cell_640/MatMul:product:0)lstm_727/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_727/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp6lstm_727_lstm_cell_640_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_727/lstm_cell_640/BiasAddBiasAddlstm_727/lstm_cell_640/add:z:05lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_727/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_727/lstm_cell_640/splitSplit/lstm_727/lstm_cell_640/split/split_dim:output:0'lstm_727/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_727/lstm_cell_640/SigmoidSigmoid%lstm_727/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_727/lstm_cell_640/Sigmoid_1Sigmoid%lstm_727/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_727/lstm_cell_640/mulMul$lstm_727/lstm_cell_640/Sigmoid_1:y:0lstm_727/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_727/lstm_cell_640/ReluRelu%lstm_727/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_727/lstm_cell_640/mul_1Mul"lstm_727/lstm_cell_640/Sigmoid:y:0)lstm_727/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_727/lstm_cell_640/add_1AddV2lstm_727/lstm_cell_640/mul:z:0 lstm_727/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_727/lstm_cell_640/Sigmoid_2Sigmoid%lstm_727/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_727/lstm_cell_640/Relu_1Relu lstm_727/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_727/lstm_cell_640/mul_2Mul$lstm_727/lstm_cell_640/Sigmoid_2:y:0+lstm_727/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_727/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_727/TensorArrayV2_1TensorListReserve/lstm_727/TensorArrayV2_1/element_shape:output:0!lstm_727/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_727/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_727/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_727/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_727/whileWhile$lstm_727/while/loop_counter:output:0*lstm_727/while/maximum_iterations:output:0lstm_727/time:output:0!lstm_727/TensorArrayV2_1:handle:0lstm_727/zeros:output:0lstm_727/zeros_1:output:0!lstm_727/strided_slice_1:output:0@lstm_727/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_727_lstm_cell_640_matmul_readvariableop_resource7lstm_727_lstm_cell_640_matmul_1_readvariableop_resource6lstm_727_lstm_cell_640_biasadd_readvariableop_resource*
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
lstm_727_while_body_3882023*'
condR
lstm_727_while_cond_3882022*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_727/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_727/TensorArrayV2Stack/TensorListStackTensorListStacklstm_727/while:output:3Blstm_727/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_727/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_727/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_727/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_727/strided_slice_3StridedSlice4lstm_727/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_727/strided_slice_3/stack:output:0)lstm_727/strided_slice_3/stack_1:output:0)lstm_727/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_727/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_727/transpose_1	Transpose4lstm_727/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_727/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_727/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_728/ShapeShapelstm_727/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_728/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_728/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_728/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_728/strided_sliceStridedSlicelstm_728/Shape:output:0%lstm_728/strided_slice/stack:output:0'lstm_728/strided_slice/stack_1:output:0'lstm_728/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_728/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_728/zeros/packedPacklstm_728/strided_slice:output:0 lstm_728/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_728/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_728/zerosFilllstm_728/zeros/packed:output:0lstm_728/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_728/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_728/zeros_1/packedPacklstm_728/strided_slice:output:0"lstm_728/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_728/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_728/zeros_1Fill lstm_728/zeros_1/packed:output:0lstm_728/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_728/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_728/transpose	Transposelstm_727/transpose_1:y:0 lstm_728/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_728/Shape_1Shapelstm_728/transpose:y:0*
T0*
_output_shapes
:h
lstm_728/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_728/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_728/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_728/strided_slice_1StridedSlicelstm_728/Shape_1:output:0'lstm_728/strided_slice_1/stack:output:0)lstm_728/strided_slice_1/stack_1:output:0)lstm_728/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_728/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_728/TensorArrayV2TensorListReserve-lstm_728/TensorArrayV2/element_shape:output:0!lstm_728/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_728/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_728/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_728/transpose:y:0Glstm_728/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_728/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_728/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_728/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_728/strided_slice_2StridedSlicelstm_728/transpose:y:0'lstm_728/strided_slice_2/stack:output:0)lstm_728/strided_slice_2/stack_1:output:0)lstm_728/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_728/lstm_cell_641/MatMul/ReadVariableOpReadVariableOp5lstm_728_lstm_cell_641_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_728/lstm_cell_641/MatMulMatMul!lstm_728/strided_slice_2:output:04lstm_728/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_728/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp7lstm_728_lstm_cell_641_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_728/lstm_cell_641/MatMul_1MatMullstm_728/zeros:output:06lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_728/lstm_cell_641/addAddV2'lstm_728/lstm_cell_641/MatMul:product:0)lstm_728/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_728/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp6lstm_728_lstm_cell_641_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_728/lstm_cell_641/BiasAddBiasAddlstm_728/lstm_cell_641/add:z:05lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_728/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_728/lstm_cell_641/splitSplit/lstm_728/lstm_cell_641/split/split_dim:output:0'lstm_728/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_728/lstm_cell_641/SigmoidSigmoid%lstm_728/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_728/lstm_cell_641/Sigmoid_1Sigmoid%lstm_728/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_728/lstm_cell_641/mulMul$lstm_728/lstm_cell_641/Sigmoid_1:y:0lstm_728/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_728/lstm_cell_641/ReluRelu%lstm_728/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_728/lstm_cell_641/mul_1Mul"lstm_728/lstm_cell_641/Sigmoid:y:0)lstm_728/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_728/lstm_cell_641/add_1AddV2lstm_728/lstm_cell_641/mul:z:0 lstm_728/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_728/lstm_cell_641/Sigmoid_2Sigmoid%lstm_728/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_728/lstm_cell_641/Relu_1Relu lstm_728/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_728/lstm_cell_641/mul_2Mul$lstm_728/lstm_cell_641/Sigmoid_2:y:0+lstm_728/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_728/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_728/TensorArrayV2_1TensorListReserve/lstm_728/TensorArrayV2_1/element_shape:output:0!lstm_728/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_728/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_728/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_728/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_728/whileWhile$lstm_728/while/loop_counter:output:0*lstm_728/while/maximum_iterations:output:0lstm_728/time:output:0!lstm_728/TensorArrayV2_1:handle:0lstm_728/zeros:output:0lstm_728/zeros_1:output:0!lstm_728/strided_slice_1:output:0@lstm_728/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_728_lstm_cell_641_matmul_readvariableop_resource7lstm_728_lstm_cell_641_matmul_1_readvariableop_resource6lstm_728_lstm_cell_641_biasadd_readvariableop_resource*
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
lstm_728_while_body_3882162*'
condR
lstm_728_while_cond_3882161*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_728/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_728/TensorArrayV2Stack/TensorListStackTensorListStacklstm_728/while:output:3Blstm_728/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_728/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_728/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_728/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_728/strided_slice_3StridedSlice4lstm_728/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_728/strided_slice_3/stack:output:0)lstm_728/strided_slice_3/stack_1:output:0)lstm_728/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_728/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_728/transpose_1	Transpose4lstm_728/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_728/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_728/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_242/MatMul/ReadVariableOpReadVariableOp(dense_242_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_242/MatMulMatMul!lstm_728/strided_slice_3:output:0'dense_242/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_242/BiasAdd/ReadVariableOpReadVariableOp)dense_242_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_242/BiasAddBiasAdddense_242/MatMul:product:0(dense_242/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_242/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_242/BiasAdd/ReadVariableOp ^dense_242/MatMul/ReadVariableOp.^lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp-^lstm_726/lstm_cell_639/MatMul/ReadVariableOp/^lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp^lstm_726/while.^lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp-^lstm_727/lstm_cell_640/MatMul/ReadVariableOp/^lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp^lstm_727/while.^lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp-^lstm_728/lstm_cell_641/MatMul/ReadVariableOp/^lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp^lstm_728/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_242/BiasAdd/ReadVariableOp dense_242/BiasAdd/ReadVariableOp2B
dense_242/MatMul/ReadVariableOpdense_242/MatMul/ReadVariableOp2^
-lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp-lstm_726/lstm_cell_639/BiasAdd/ReadVariableOp2\
,lstm_726/lstm_cell_639/MatMul/ReadVariableOp,lstm_726/lstm_cell_639/MatMul/ReadVariableOp2`
.lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp.lstm_726/lstm_cell_639/MatMul_1/ReadVariableOp2 
lstm_726/whilelstm_726/while2^
-lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp-lstm_727/lstm_cell_640/BiasAdd/ReadVariableOp2\
,lstm_727/lstm_cell_640/MatMul/ReadVariableOp,lstm_727/lstm_cell_640/MatMul/ReadVariableOp2`
.lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp.lstm_727/lstm_cell_640/MatMul_1/ReadVariableOp2 
lstm_727/whilelstm_727/while2^
-lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp-lstm_728/lstm_cell_641/BiasAdd/ReadVariableOp2\
,lstm_728/lstm_cell_641/MatMul/ReadVariableOp,lstm_728/lstm_cell_641/MatMul/ReadVariableOp2`
.lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp.lstm_728/lstm_cell_641/MatMul_1/ReadVariableOp2 
lstm_728/whilelstm_728/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3882355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_639_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_639_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_639_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_639_matmul_readvariableop_resource:	?G
4while_lstm_cell_639_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_639_biasadd_readvariableop_resource:	???*while/lstm_cell_639/BiasAdd/ReadVariableOp?)while/lstm_cell_639/MatMul/ReadVariableOp?+while/lstm_cell_639/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_639/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_639_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_639/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_639_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_639/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_639/addAddV2$while/lstm_cell_639/MatMul:product:0&while/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_639_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_639/BiasAddBiasAddwhile/lstm_cell_639/add:z:02while/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_639/splitSplit,while/lstm_cell_639/split/split_dim:output:0$while/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_639/SigmoidSigmoid"while/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_1Sigmoid"while/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mulMul!while/lstm_cell_639/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_639/ReluRelu"while/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_1Mulwhile/lstm_cell_639/Sigmoid:y:0&while/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/add_1AddV2while/lstm_cell_639/mul:z:0while/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_2Sigmoid"while/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_639/Relu_1Reluwhile/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_2Mul!while/lstm_cell_639/Sigmoid_2:y:0(while/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_639/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_639/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_639/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_639/BiasAdd/ReadVariableOp*^while/lstm_cell_639/MatMul/ReadVariableOp,^while/lstm_cell_639/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_639_biasadd_readvariableop_resource5while_lstm_cell_639_biasadd_readvariableop_resource_0"n
4while_lstm_cell_639_matmul_1_readvariableop_resource6while_lstm_cell_639_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_639_matmul_readvariableop_resource4while_lstm_cell_639_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_639/BiasAdd/ReadVariableOp*while/lstm_cell_639/BiasAdd/ReadVariableOp2V
)while/lstm_cell_639/MatMul/ReadVariableOp)while/lstm_cell_639/MatMul/ReadVariableOp2Z
+while/lstm_cell_639/MatMul_1/ReadVariableOp+while/lstm_cell_639/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882725

inputs?
,lstm_cell_639_matmul_readvariableop_resource:	?A
.lstm_cell_639_matmul_1_readvariableop_resource:	d?<
-lstm_cell_639_biasadd_readvariableop_resource:	?
identity??$lstm_cell_639/BiasAdd/ReadVariableOp?#lstm_cell_639/MatMul/ReadVariableOp?%lstm_cell_639/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_639/MatMul/ReadVariableOpReadVariableOp,lstm_cell_639_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_639/MatMulMatMulstrided_slice_2:output:0+lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_639_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_639/MatMul_1MatMulzeros:output:0-lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_639/addAddV2lstm_cell_639/MatMul:product:0 lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_639_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_639/BiasAddBiasAddlstm_cell_639/add:z:0,lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_639/splitSplit&lstm_cell_639/split/split_dim:output:0lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_639/SigmoidSigmoidlstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_1Sigmoidlstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_639/mulMullstm_cell_639/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_639/ReluRelulstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_1Mullstm_cell_639/Sigmoid:y:0 lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_639/add_1AddV2lstm_cell_639/mul:z:0lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_639/Sigmoid_2Sigmoidlstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_639/Relu_1Relulstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_639/mul_2Mullstm_cell_639/Sigmoid_2:y:0"lstm_cell_639/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_639_matmul_readvariableop_resource.lstm_cell_639_matmul_1_readvariableop_resource-lstm_cell_639_biasadd_readvariableop_resource*
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
while_body_3882641*
condR
while_cond_3882640*K
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
NoOpNoOp%^lstm_cell_639/BiasAdd/ReadVariableOp$^lstm_cell_639/MatMul/ReadVariableOp&^lstm_cell_639/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_639/BiasAdd/ReadVariableOp$lstm_cell_639/BiasAdd/ReadVariableOp2J
#lstm_cell_639/MatMul/ReadVariableOp#lstm_cell_639/MatMul/ReadVariableOp2N
%lstm_cell_639/MatMul_1/ReadVariableOp%lstm_cell_639/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_727_layer_call_fn_3882879
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3879584|
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
?
while_cond_3882497
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3882497___redundant_placeholder05
1while_while_cond_3882497___redundant_placeholder15
1while_while_cond_3882497___redundant_placeholder25
1while_while_cond_3882497___redundant_placeholder3
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
?C
?

lstm_727_while_body_3881596.
*lstm_727_while_lstm_727_while_loop_counter4
0lstm_727_while_lstm_727_while_maximum_iterations
lstm_727_while_placeholder 
lstm_727_while_placeholder_1 
lstm_727_while_placeholder_2 
lstm_727_while_placeholder_3-
)lstm_727_while_lstm_727_strided_slice_1_0i
elstm_727_while_tensorarrayv2read_tensorlistgetitem_lstm_727_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_727_while_lstm_cell_640_matmul_readvariableop_resource_0:	d?R
?lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource_0:	2?M
>lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource_0:	?
lstm_727_while_identity
lstm_727_while_identity_1
lstm_727_while_identity_2
lstm_727_while_identity_3
lstm_727_while_identity_4
lstm_727_while_identity_5+
'lstm_727_while_lstm_727_strided_slice_1g
clstm_727_while_tensorarrayv2read_tensorlistgetitem_lstm_727_tensorarrayunstack_tensorlistfromtensorN
;lstm_727_while_lstm_cell_640_matmul_readvariableop_resource:	d?P
=lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource:	2?K
<lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource:	???3lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp?2lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp?4lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp?
@lstm_727/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_727/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_727_while_tensorarrayv2read_tensorlistgetitem_lstm_727_tensorarrayunstack_tensorlistfromtensor_0lstm_727_while_placeholderIlstm_727/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_727/while/lstm_cell_640/MatMul/ReadVariableOpReadVariableOp=lstm_727_while_lstm_cell_640_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_727/while/lstm_cell_640/MatMulMatMul9lstm_727/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp?lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_727/while/lstm_cell_640/MatMul_1MatMullstm_727_while_placeholder_2<lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_727/while/lstm_cell_640/addAddV2-lstm_727/while/lstm_cell_640/MatMul:product:0/lstm_727/while/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp>lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_727/while/lstm_cell_640/BiasAddBiasAdd$lstm_727/while/lstm_cell_640/add:z:0;lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_727/while/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_727/while/lstm_cell_640/splitSplit5lstm_727/while/lstm_cell_640/split/split_dim:output:0-lstm_727/while/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_727/while/lstm_cell_640/SigmoidSigmoid+lstm_727/while/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_727/while/lstm_cell_640/Sigmoid_1Sigmoid+lstm_727/while/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_727/while/lstm_cell_640/mulMul*lstm_727/while/lstm_cell_640/Sigmoid_1:y:0lstm_727_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_727/while/lstm_cell_640/ReluRelu+lstm_727/while/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_727/while/lstm_cell_640/mul_1Mul(lstm_727/while/lstm_cell_640/Sigmoid:y:0/lstm_727/while/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_727/while/lstm_cell_640/add_1AddV2$lstm_727/while/lstm_cell_640/mul:z:0&lstm_727/while/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_727/while/lstm_cell_640/Sigmoid_2Sigmoid+lstm_727/while/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_727/while/lstm_cell_640/Relu_1Relu&lstm_727/while/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_727/while/lstm_cell_640/mul_2Mul*lstm_727/while/lstm_cell_640/Sigmoid_2:y:01lstm_727/while/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_727/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_727_while_placeholder_1lstm_727_while_placeholder&lstm_727/while/lstm_cell_640/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_727/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_727/while/addAddV2lstm_727_while_placeholderlstm_727/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_727/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_727/while/add_1AddV2*lstm_727_while_lstm_727_while_loop_counterlstm_727/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_727/while/IdentityIdentitylstm_727/while/add_1:z:0^lstm_727/while/NoOp*
T0*
_output_shapes
: ?
lstm_727/while/Identity_1Identity0lstm_727_while_lstm_727_while_maximum_iterations^lstm_727/while/NoOp*
T0*
_output_shapes
: t
lstm_727/while/Identity_2Identitylstm_727/while/add:z:0^lstm_727/while/NoOp*
T0*
_output_shapes
: ?
lstm_727/while/Identity_3IdentityClstm_727/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_727/while/NoOp*
T0*
_output_shapes
: ?
lstm_727/while/Identity_4Identity&lstm_727/while/lstm_cell_640/mul_2:z:0^lstm_727/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_727/while/Identity_5Identity&lstm_727/while/lstm_cell_640/add_1:z:0^lstm_727/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_727/while/NoOpNoOp4^lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp3^lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp5^lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_727_while_identity lstm_727/while/Identity:output:0"?
lstm_727_while_identity_1"lstm_727/while/Identity_1:output:0"?
lstm_727_while_identity_2"lstm_727/while/Identity_2:output:0"?
lstm_727_while_identity_3"lstm_727/while/Identity_3:output:0"?
lstm_727_while_identity_4"lstm_727/while/Identity_4:output:0"?
lstm_727_while_identity_5"lstm_727/while/Identity_5:output:0"T
'lstm_727_while_lstm_727_strided_slice_1)lstm_727_while_lstm_727_strided_slice_1_0"~
<lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource>lstm_727_while_lstm_cell_640_biasadd_readvariableop_resource_0"?
=lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource?lstm_727_while_lstm_cell_640_matmul_1_readvariableop_resource_0"|
;lstm_727_while_lstm_cell_640_matmul_readvariableop_resource=lstm_727_while_lstm_cell_640_matmul_readvariableop_resource_0"?
clstm_727_while_tensorarrayv2read_tensorlistgetitem_lstm_727_tensorarrayunstack_tensorlistfromtensorelstm_727_while_tensorarrayv2read_tensorlistgetitem_lstm_727_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp3lstm_727/while/lstm_cell_640/BiasAdd/ReadVariableOp2h
2lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp2lstm_727/while/lstm_cell_640/MatMul/ReadVariableOp2l
4lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp4lstm_727/while/lstm_cell_640/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3880055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3880055___redundant_placeholder05
1while_while_cond_3880055___redundant_placeholder15
1while_while_cond_3880055___redundant_placeholder25
1while_while_cond_3880055___redundant_placeholder3
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
while_body_3880880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_640_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_640_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_640_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_640_matmul_readvariableop_resource:	d?G
4while_lstm_cell_640_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_640_biasadd_readvariableop_resource:	???*while/lstm_cell_640/BiasAdd/ReadVariableOp?)while/lstm_cell_640/MatMul/ReadVariableOp?+while/lstm_cell_640/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_640/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_640_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_640/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_640_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_640/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_640/addAddV2$while/lstm_cell_640/MatMul:product:0&while/lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_640_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_640/BiasAddBiasAddwhile/lstm_cell_640/add:z:02while/lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_640/splitSplit,while/lstm_cell_640/split/split_dim:output:0$while/lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_640/SigmoidSigmoid"while/lstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_1Sigmoid"while/lstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mulMul!while/lstm_cell_640/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_640/ReluRelu"while/lstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_1Mulwhile/lstm_cell_640/Sigmoid:y:0&while/lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/add_1AddV2while/lstm_cell_640/mul:z:0while/lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_640/Sigmoid_2Sigmoid"while/lstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_640/Relu_1Reluwhile/lstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_640/mul_2Mul!while/lstm_cell_640/Sigmoid_2:y:0(while/lstm_cell_640/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_640/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_640/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_640/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_640/BiasAdd/ReadVariableOp*^while/lstm_cell_640/MatMul/ReadVariableOp,^while/lstm_cell_640/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_640_biasadd_readvariableop_resource5while_lstm_cell_640_biasadd_readvariableop_resource_0"n
4while_lstm_cell_640_matmul_1_readvariableop_resource6while_lstm_cell_640_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_640_matmul_readvariableop_resource4while_lstm_cell_640_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_640/BiasAdd/ReadVariableOp*while/lstm_cell_640/BiasAdd/ReadVariableOp2V
)while/lstm_cell_640/MatMul/ReadVariableOp)while/lstm_cell_640/MatMul/ReadVariableOp2Z
+while/lstm_cell_640/MatMul_1/ReadVariableOp+while/lstm_cell_640/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_641_layer_call_fn_3884332

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
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3879851o
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
while_body_3883730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_641_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_641_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_641_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_641_matmul_readvariableop_resource:2(F
4while_lstm_cell_641_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_641_biasadd_readvariableop_resource:(??*while/lstm_cell_641/BiasAdd/ReadVariableOp?)while/lstm_cell_641/MatMul/ReadVariableOp?+while/lstm_cell_641/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_641/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_641_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_641/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_641_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_641/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_641/addAddV2$while/lstm_cell_641/MatMul:product:0&while/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_641_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_641/BiasAddBiasAddwhile/lstm_cell_641/add:z:02while/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_641/splitSplit,while/lstm_cell_641/split/split_dim:output:0$while/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_641/SigmoidSigmoid"while/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_1Sigmoid"while/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mulMul!while/lstm_cell_641/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_641/ReluRelu"while/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_1Mulwhile/lstm_cell_641/Sigmoid:y:0&while/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/add_1AddV2while/lstm_cell_641/mul:z:0while/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_641/Sigmoid_2Sigmoid"while/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_641/Relu_1Reluwhile/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_641/mul_2Mul!while/lstm_cell_641/Sigmoid_2:y:0(while/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_641/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_641/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_641/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_641/BiasAdd/ReadVariableOp*^while/lstm_cell_641/MatMul/ReadVariableOp,^while/lstm_cell_641/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_641_biasadd_readvariableop_resource5while_lstm_cell_641_biasadd_readvariableop_resource_0"n
4while_lstm_cell_641_matmul_1_readvariableop_resource6while_lstm_cell_641_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_641_matmul_readvariableop_resource4while_lstm_cell_641_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_641/BiasAdd/ReadVariableOp*while/lstm_cell_641/BiasAdd/ReadVariableOp2V
)while/lstm_cell_641/MatMul/ReadVariableOp)while/lstm_cell_641/MatMul/ReadVariableOp2Z
+while/lstm_cell_641/MatMul_1/ReadVariableOp+while/lstm_cell_641/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
E__inference_lstm_726_layer_call_and_return_conditional_losses_3879425

inputs(
lstm_cell_639_3879343:	?(
lstm_cell_639_3879345:	d?$
lstm_cell_639_3879347:	?
identity??%lstm_cell_639/StatefulPartitionedCall?while;
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
%lstm_cell_639/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_639_3879343lstm_cell_639_3879345lstm_cell_639_3879347*
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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3879297n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_639_3879343lstm_cell_639_3879345lstm_cell_639_3879347*
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
while_body_3879356*
condR
while_cond_3879355*K
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
NoOpNoOp&^lstm_cell_639/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_639/StatefulPartitionedCall%lstm_cell_639/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883198
inputs_0?
,lstm_cell_640_matmul_readvariableop_resource:	d?A
.lstm_cell_640_matmul_1_readvariableop_resource:	2?<
-lstm_cell_640_biasadd_readvariableop_resource:	?
identity??$lstm_cell_640/BiasAdd/ReadVariableOp?#lstm_cell_640/MatMul/ReadVariableOp?%lstm_cell_640/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_640/MatMul/ReadVariableOpReadVariableOp,lstm_cell_640_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_640/MatMulMatMulstrided_slice_2:output:0+lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_640_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_640/MatMul_1MatMulzeros:output:0-lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_640/addAddV2lstm_cell_640/MatMul:product:0 lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_640_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_640/BiasAddBiasAddlstm_cell_640/add:z:0,lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_640/splitSplit&lstm_cell_640/split/split_dim:output:0lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_640/SigmoidSigmoidlstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_1Sigmoidlstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_640/mulMullstm_cell_640/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_640/ReluRelulstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_1Mullstm_cell_640/Sigmoid:y:0 lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_640/add_1AddV2lstm_cell_640/mul:z:0lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_2Sigmoidlstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_640/Relu_1Relulstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_2Mullstm_cell_640/Sigmoid_2:y:0"lstm_cell_640/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_640_matmul_readvariableop_resource.lstm_cell_640_matmul_1_readvariableop_resource-lstm_cell_640_biasadd_readvariableop_resource*
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
while_body_3883114*
condR
while_cond_3883113*K
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
NoOpNoOp%^lstm_cell_640/BiasAdd/ReadVariableOp$^lstm_cell_640/MatMul/ReadVariableOp&^lstm_cell_640/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_640/BiasAdd/ReadVariableOp$lstm_cell_640/BiasAdd/ReadVariableOp2J
#lstm_cell_640/MatMul/ReadVariableOp#lstm_cell_640/MatMul/ReadVariableOp2N
%lstm_cell_640/MatMul_1/ReadVariableOp%lstm_cell_640/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_728_layer_call_fn_3883495
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3879934o
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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3879151

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
?#
?
while_body_3879165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_639_3879189_0:	?0
while_lstm_cell_639_3879191_0:	d?,
while_lstm_cell_639_3879193_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_639_3879189:	?.
while_lstm_cell_639_3879191:	d?*
while_lstm_cell_639_3879193:	???+while/lstm_cell_639/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_639/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_639_3879189_0while_lstm_cell_639_3879191_0while_lstm_cell_639_3879193_0*
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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3879151?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_639/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_639/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_639/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_639/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_639_3879189while_lstm_cell_639_3879189_0"<
while_lstm_cell_639_3879191while_lstm_cell_639_3879191_0"<
while_lstm_cell_639_3879193while_lstm_cell_639_3879193_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_639/StatefulPartitionedCall+while/lstm_cell_639/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_728_while_body_3882162.
*lstm_728_while_lstm_728_while_loop_counter4
0lstm_728_while_lstm_728_while_maximum_iterations
lstm_728_while_placeholder 
lstm_728_while_placeholder_1 
lstm_728_while_placeholder_2 
lstm_728_while_placeholder_3-
)lstm_728_while_lstm_728_strided_slice_1_0i
elstm_728_while_tensorarrayv2read_tensorlistgetitem_lstm_728_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_728_while_lstm_cell_641_matmul_readvariableop_resource_0:2(Q
?lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource_0:
(L
>lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource_0:(
lstm_728_while_identity
lstm_728_while_identity_1
lstm_728_while_identity_2
lstm_728_while_identity_3
lstm_728_while_identity_4
lstm_728_while_identity_5+
'lstm_728_while_lstm_728_strided_slice_1g
clstm_728_while_tensorarrayv2read_tensorlistgetitem_lstm_728_tensorarrayunstack_tensorlistfromtensorM
;lstm_728_while_lstm_cell_641_matmul_readvariableop_resource:2(O
=lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource:
(J
<lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource:(??3lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp?2lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp?4lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp?
@lstm_728/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_728/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_728_while_tensorarrayv2read_tensorlistgetitem_lstm_728_tensorarrayunstack_tensorlistfromtensor_0lstm_728_while_placeholderIlstm_728/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_728/while/lstm_cell_641/MatMul/ReadVariableOpReadVariableOp=lstm_728_while_lstm_cell_641_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_728/while/lstm_cell_641/MatMulMatMul9lstm_728/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOpReadVariableOp?lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_728/while/lstm_cell_641/MatMul_1MatMullstm_728_while_placeholder_2<lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_728/while/lstm_cell_641/addAddV2-lstm_728/while/lstm_cell_641/MatMul:product:0/lstm_728/while/lstm_cell_641/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOpReadVariableOp>lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_728/while/lstm_cell_641/BiasAddBiasAdd$lstm_728/while/lstm_cell_641/add:z:0;lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_728/while/lstm_cell_641/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_728/while/lstm_cell_641/splitSplit5lstm_728/while/lstm_cell_641/split/split_dim:output:0-lstm_728/while/lstm_cell_641/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_728/while/lstm_cell_641/SigmoidSigmoid+lstm_728/while/lstm_cell_641/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_728/while/lstm_cell_641/Sigmoid_1Sigmoid+lstm_728/while/lstm_cell_641/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_728/while/lstm_cell_641/mulMul*lstm_728/while/lstm_cell_641/Sigmoid_1:y:0lstm_728_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_728/while/lstm_cell_641/ReluRelu+lstm_728/while/lstm_cell_641/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_728/while/lstm_cell_641/mul_1Mul(lstm_728/while/lstm_cell_641/Sigmoid:y:0/lstm_728/while/lstm_cell_641/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_728/while/lstm_cell_641/add_1AddV2$lstm_728/while/lstm_cell_641/mul:z:0&lstm_728/while/lstm_cell_641/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_728/while/lstm_cell_641/Sigmoid_2Sigmoid+lstm_728/while/lstm_cell_641/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_728/while/lstm_cell_641/Relu_1Relu&lstm_728/while/lstm_cell_641/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_728/while/lstm_cell_641/mul_2Mul*lstm_728/while/lstm_cell_641/Sigmoid_2:y:01lstm_728/while/lstm_cell_641/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_728/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_728_while_placeholder_1lstm_728_while_placeholder&lstm_728/while/lstm_cell_641/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_728/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_728/while/addAddV2lstm_728_while_placeholderlstm_728/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_728/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_728/while/add_1AddV2*lstm_728_while_lstm_728_while_loop_counterlstm_728/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_728/while/IdentityIdentitylstm_728/while/add_1:z:0^lstm_728/while/NoOp*
T0*
_output_shapes
: ?
lstm_728/while/Identity_1Identity0lstm_728_while_lstm_728_while_maximum_iterations^lstm_728/while/NoOp*
T0*
_output_shapes
: t
lstm_728/while/Identity_2Identitylstm_728/while/add:z:0^lstm_728/while/NoOp*
T0*
_output_shapes
: ?
lstm_728/while/Identity_3IdentityClstm_728/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_728/while/NoOp*
T0*
_output_shapes
: ?
lstm_728/while/Identity_4Identity&lstm_728/while/lstm_cell_641/mul_2:z:0^lstm_728/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_728/while/Identity_5Identity&lstm_728/while/lstm_cell_641/add_1:z:0^lstm_728/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_728/while/NoOpNoOp4^lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp3^lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp5^lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_728_while_identity lstm_728/while/Identity:output:0"?
lstm_728_while_identity_1"lstm_728/while/Identity_1:output:0"?
lstm_728_while_identity_2"lstm_728/while/Identity_2:output:0"?
lstm_728_while_identity_3"lstm_728/while/Identity_3:output:0"?
lstm_728_while_identity_4"lstm_728/while/Identity_4:output:0"?
lstm_728_while_identity_5"lstm_728/while/Identity_5:output:0"T
'lstm_728_while_lstm_728_strided_slice_1)lstm_728_while_lstm_728_strided_slice_1_0"~
<lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource>lstm_728_while_lstm_cell_641_biasadd_readvariableop_resource_0"?
=lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource?lstm_728_while_lstm_cell_641_matmul_1_readvariableop_resource_0"|
;lstm_728_while_lstm_cell_641_matmul_readvariableop_resource=lstm_728_while_lstm_cell_641_matmul_readvariableop_resource_0"?
clstm_728_while_tensorarrayv2read_tensorlistgetitem_lstm_728_tensorarrayunstack_tensorlistfromtensorelstm_728_while_tensorarrayv2read_tensorlistgetitem_lstm_728_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp3lstm_728/while/lstm_cell_641/BiasAdd/ReadVariableOp2h
2lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp2lstm_728/while/lstm_cell_641/MatMul/ReadVariableOp2l
4lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp4lstm_728/while/lstm_cell_641/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3882784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_639_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_639_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_639_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_639_matmul_readvariableop_resource:	?G
4while_lstm_cell_639_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_639_biasadd_readvariableop_resource:	???*while/lstm_cell_639/BiasAdd/ReadVariableOp?)while/lstm_cell_639/MatMul/ReadVariableOp?+while/lstm_cell_639/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_639/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_639_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_639/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_639_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_639/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_639/addAddV2$while/lstm_cell_639/MatMul:product:0&while/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_639_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_639/BiasAddBiasAddwhile/lstm_cell_639/add:z:02while/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_639/splitSplit,while/lstm_cell_639/split/split_dim:output:0$while/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_639/SigmoidSigmoid"while/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_1Sigmoid"while/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mulMul!while/lstm_cell_639/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_639/ReluRelu"while/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_1Mulwhile/lstm_cell_639/Sigmoid:y:0&while/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/add_1AddV2while/lstm_cell_639/mul:z:0while/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_639/Sigmoid_2Sigmoid"while/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_639/Relu_1Reluwhile/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_639/mul_2Mul!while/lstm_cell_639/Sigmoid_2:y:0(while/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_639/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_639/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_639/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_639/BiasAdd/ReadVariableOp*^while/lstm_cell_639/MatMul/ReadVariableOp,^while/lstm_cell_639/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_639_biasadd_readvariableop_resource5while_lstm_cell_639_biasadd_readvariableop_resource_0"n
4while_lstm_cell_639_matmul_1_readvariableop_resource6while_lstm_cell_639_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_639_matmul_readvariableop_resource4while_lstm_cell_639_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_639/BiasAdd/ReadVariableOp*while/lstm_cell_639/BiasAdd/ReadVariableOp2V
)while/lstm_cell_639/MatMul/ReadVariableOp)while/lstm_cell_639/MatMul/ReadVariableOp2Z
+while/lstm_cell_639/MatMul_1/ReadVariableOp+while/lstm_cell_639/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_242_layer_call_and_return_conditional_losses_3880601

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
?

?
lstm_727_while_cond_3882022.
*lstm_727_while_lstm_727_while_loop_counter4
0lstm_727_while_lstm_727_while_maximum_iterations
lstm_727_while_placeholder 
lstm_727_while_placeholder_1 
lstm_727_while_placeholder_2 
lstm_727_while_placeholder_30
,lstm_727_while_less_lstm_727_strided_slice_1G
Clstm_727_while_lstm_727_while_cond_3882022___redundant_placeholder0G
Clstm_727_while_lstm_727_while_cond_3882022___redundant_placeholder1G
Clstm_727_while_lstm_727_while_cond_3882022___redundant_placeholder2G
Clstm_727_while_lstm_727_while_cond_3882022___redundant_placeholder3
lstm_727_while_identity
?
lstm_727/while/LessLesslstm_727_while_placeholder,lstm_727_while_less_lstm_727_strided_slice_1*
T0*
_output_shapes
: ]
lstm_727/while/IdentityIdentitylstm_727/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_727_while_identity lstm_727/while/Identity:output:0*(
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
?C
?

lstm_726_while_body_3881457.
*lstm_726_while_lstm_726_while_loop_counter4
0lstm_726_while_lstm_726_while_maximum_iterations
lstm_726_while_placeholder 
lstm_726_while_placeholder_1 
lstm_726_while_placeholder_2 
lstm_726_while_placeholder_3-
)lstm_726_while_lstm_726_strided_slice_1_0i
elstm_726_while_tensorarrayv2read_tensorlistgetitem_lstm_726_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_726_while_lstm_cell_639_matmul_readvariableop_resource_0:	?R
?lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource_0:	d?M
>lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource_0:	?
lstm_726_while_identity
lstm_726_while_identity_1
lstm_726_while_identity_2
lstm_726_while_identity_3
lstm_726_while_identity_4
lstm_726_while_identity_5+
'lstm_726_while_lstm_726_strided_slice_1g
clstm_726_while_tensorarrayv2read_tensorlistgetitem_lstm_726_tensorarrayunstack_tensorlistfromtensorN
;lstm_726_while_lstm_cell_639_matmul_readvariableop_resource:	?P
=lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource:	d?K
<lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource:	???3lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp?2lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp?4lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp?
@lstm_726/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_726/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_726_while_tensorarrayv2read_tensorlistgetitem_lstm_726_tensorarrayunstack_tensorlistfromtensor_0lstm_726_while_placeholderIlstm_726/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_726/while/lstm_cell_639/MatMul/ReadVariableOpReadVariableOp=lstm_726_while_lstm_cell_639_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_726/while/lstm_cell_639/MatMulMatMul9lstm_726/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOpReadVariableOp?lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_726/while/lstm_cell_639/MatMul_1MatMullstm_726_while_placeholder_2<lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_726/while/lstm_cell_639/addAddV2-lstm_726/while/lstm_cell_639/MatMul:product:0/lstm_726/while/lstm_cell_639/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOpReadVariableOp>lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_726/while/lstm_cell_639/BiasAddBiasAdd$lstm_726/while/lstm_cell_639/add:z:0;lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_726/while/lstm_cell_639/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_726/while/lstm_cell_639/splitSplit5lstm_726/while/lstm_cell_639/split/split_dim:output:0-lstm_726/while/lstm_cell_639/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_726/while/lstm_cell_639/SigmoidSigmoid+lstm_726/while/lstm_cell_639/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_726/while/lstm_cell_639/Sigmoid_1Sigmoid+lstm_726/while/lstm_cell_639/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_726/while/lstm_cell_639/mulMul*lstm_726/while/lstm_cell_639/Sigmoid_1:y:0lstm_726_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_726/while/lstm_cell_639/ReluRelu+lstm_726/while/lstm_cell_639/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_726/while/lstm_cell_639/mul_1Mul(lstm_726/while/lstm_cell_639/Sigmoid:y:0/lstm_726/while/lstm_cell_639/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_726/while/lstm_cell_639/add_1AddV2$lstm_726/while/lstm_cell_639/mul:z:0&lstm_726/while/lstm_cell_639/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_726/while/lstm_cell_639/Sigmoid_2Sigmoid+lstm_726/while/lstm_cell_639/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_726/while/lstm_cell_639/Relu_1Relu&lstm_726/while/lstm_cell_639/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_726/while/lstm_cell_639/mul_2Mul*lstm_726/while/lstm_cell_639/Sigmoid_2:y:01lstm_726/while/lstm_cell_639/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_726/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_726_while_placeholder_1lstm_726_while_placeholder&lstm_726/while/lstm_cell_639/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_726/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_726/while/addAddV2lstm_726_while_placeholderlstm_726/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_726/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_726/while/add_1AddV2*lstm_726_while_lstm_726_while_loop_counterlstm_726/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_726/while/IdentityIdentitylstm_726/while/add_1:z:0^lstm_726/while/NoOp*
T0*
_output_shapes
: ?
lstm_726/while/Identity_1Identity0lstm_726_while_lstm_726_while_maximum_iterations^lstm_726/while/NoOp*
T0*
_output_shapes
: t
lstm_726/while/Identity_2Identitylstm_726/while/add:z:0^lstm_726/while/NoOp*
T0*
_output_shapes
: ?
lstm_726/while/Identity_3IdentityClstm_726/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_726/while/NoOp*
T0*
_output_shapes
: ?
lstm_726/while/Identity_4Identity&lstm_726/while/lstm_cell_639/mul_2:z:0^lstm_726/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_726/while/Identity_5Identity&lstm_726/while/lstm_cell_639/add_1:z:0^lstm_726/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_726/while/NoOpNoOp4^lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp3^lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp5^lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_726_while_identity lstm_726/while/Identity:output:0"?
lstm_726_while_identity_1"lstm_726/while/Identity_1:output:0"?
lstm_726_while_identity_2"lstm_726/while/Identity_2:output:0"?
lstm_726_while_identity_3"lstm_726/while/Identity_3:output:0"?
lstm_726_while_identity_4"lstm_726/while/Identity_4:output:0"?
lstm_726_while_identity_5"lstm_726/while/Identity_5:output:0"T
'lstm_726_while_lstm_726_strided_slice_1)lstm_726_while_lstm_726_strided_slice_1_0"~
<lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource>lstm_726_while_lstm_cell_639_biasadd_readvariableop_resource_0"?
=lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource?lstm_726_while_lstm_cell_639_matmul_1_readvariableop_resource_0"|
;lstm_726_while_lstm_cell_639_matmul_readvariableop_resource=lstm_726_while_lstm_cell_639_matmul_readvariableop_resource_0"?
clstm_726_while_tensorarrayv2read_tensorlistgetitem_lstm_726_tensorarrayunstack_tensorlistfromtensorelstm_726_while_tensorarrayv2read_tensorlistgetitem_lstm_726_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp3lstm_726/while/lstm_cell_639/BiasAdd/ReadVariableOp2h
2lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp2lstm_726/while/lstm_cell_639/MatMul/ReadVariableOp2l
4lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp4lstm_726/while/lstm_cell_639/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3880964

inputs?
,lstm_cell_640_matmul_readvariableop_resource:	d?A
.lstm_cell_640_matmul_1_readvariableop_resource:	2?<
-lstm_cell_640_biasadd_readvariableop_resource:	?
identity??$lstm_cell_640/BiasAdd/ReadVariableOp?#lstm_cell_640/MatMul/ReadVariableOp?%lstm_cell_640/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_640/MatMul/ReadVariableOpReadVariableOp,lstm_cell_640_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_640/MatMulMatMulstrided_slice_2:output:0+lstm_cell_640/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_640/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_640_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_640/MatMul_1MatMulzeros:output:0-lstm_cell_640/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_640/addAddV2lstm_cell_640/MatMul:product:0 lstm_cell_640/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_640/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_640_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_640/BiasAddBiasAddlstm_cell_640/add:z:0,lstm_cell_640/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_640/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_640/splitSplit&lstm_cell_640/split/split_dim:output:0lstm_cell_640/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_640/SigmoidSigmoidlstm_cell_640/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_1Sigmoidlstm_cell_640/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_640/mulMullstm_cell_640/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_640/ReluRelulstm_cell_640/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_1Mullstm_cell_640/Sigmoid:y:0 lstm_cell_640/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_640/add_1AddV2lstm_cell_640/mul:z:0lstm_cell_640/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_640/Sigmoid_2Sigmoidlstm_cell_640/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_640/Relu_1Relulstm_cell_640/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_640/mul_2Mullstm_cell_640/Sigmoid_2:y:0"lstm_cell_640/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_640_matmul_readvariableop_resource.lstm_cell_640_matmul_1_readvariableop_resource-lstm_cell_640_biasadd_readvariableop_resource*
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
while_body_3880880*
condR
while_cond_3880879*K
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
NoOpNoOp%^lstm_cell_640/BiasAdd/ReadVariableOp$^lstm_cell_640/MatMul/ReadVariableOp&^lstm_cell_640/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_640/BiasAdd/ReadVariableOp$lstm_cell_640/BiasAdd/ReadVariableOp2J
#lstm_cell_640/MatMul/ReadVariableOp#lstm_cell_640/MatMul/ReadVariableOp2N
%lstm_cell_640/MatMul_1/ReadVariableOp%lstm_cell_640/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
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
lstm_726_input;
 serving_default_lstm_726_input:0?????????=
	dense_2420
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
2dense_242/kernel
:2dense_242/bias
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
0:.	?2lstm_726/lstm_cell_726/kernel
::8	d?2'lstm_726/lstm_cell_726/recurrent_kernel
*:(?2lstm_726/lstm_cell_726/bias
0:.	d?2lstm_727/lstm_cell_727/kernel
::8	2?2'lstm_727/lstm_cell_727/recurrent_kernel
*:(?2lstm_727/lstm_cell_727/bias
/:-2(2lstm_728/lstm_cell_728/kernel
9:7
(2'lstm_728/lstm_cell_728/recurrent_kernel
):'(2lstm_728/lstm_cell_728/bias
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
2Adam/dense_242/kernel/m
!:2Adam/dense_242/bias/m
5:3	?2$Adam/lstm_726/lstm_cell_726/kernel/m
?:=	d?2.Adam/lstm_726/lstm_cell_726/recurrent_kernel/m
/:-?2"Adam/lstm_726/lstm_cell_726/bias/m
5:3	d?2$Adam/lstm_727/lstm_cell_727/kernel/m
?:=	2?2.Adam/lstm_727/lstm_cell_727/recurrent_kernel/m
/:-?2"Adam/lstm_727/lstm_cell_727/bias/m
4:22(2$Adam/lstm_728/lstm_cell_728/kernel/m
>:<
(2.Adam/lstm_728/lstm_cell_728/recurrent_kernel/m
.:,(2"Adam/lstm_728/lstm_cell_728/bias/m
':%
2Adam/dense_242/kernel/v
!:2Adam/dense_242/bias/v
5:3	?2$Adam/lstm_726/lstm_cell_726/kernel/v
?:=	d?2.Adam/lstm_726/lstm_cell_726/recurrent_kernel/v
/:-?2"Adam/lstm_726/lstm_cell_726/bias/v
5:3	d?2$Adam/lstm_727/lstm_cell_727/kernel/v
?:=	2?2.Adam/lstm_727/lstm_cell_727/recurrent_kernel/v
/:-?2"Adam/lstm_727/lstm_cell_727/bias/v
4:22(2$Adam/lstm_728/lstm_cell_728/kernel/v
>:<
(2.Adam/lstm_728/lstm_cell_728/recurrent_kernel/v
.:,(2"Adam/lstm_728/lstm_cell_728/bias/v
?2?
0__inference_sequential_242_layer_call_fn_3880633
0__inference_sequential_242_layer_call_fn_3881371
0__inference_sequential_242_layer_call_fn_3881398
0__inference_sequential_242_layer_call_fn_3881249?
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
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881825
K__inference_sequential_242_layer_call_and_return_conditional_losses_3882252
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881279
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881309?
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
"__inference__wrapped_model_3879084lstm_726_input"?
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
*__inference_lstm_726_layer_call_fn_3882263
*__inference_lstm_726_layer_call_fn_3882274
*__inference_lstm_726_layer_call_fn_3882285
*__inference_lstm_726_layer_call_fn_3882296?
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882439
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882582
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882725
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882868?
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
*__inference_lstm_727_layer_call_fn_3882879
*__inference_lstm_727_layer_call_fn_3882890
*__inference_lstm_727_layer_call_fn_3882901
*__inference_lstm_727_layer_call_fn_3882912?
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883055
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883198
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883341
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883484?
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
*__inference_lstm_728_layer_call_fn_3883495
*__inference_lstm_728_layer_call_fn_3883506
*__inference_lstm_728_layer_call_fn_3883517
*__inference_lstm_728_layer_call_fn_3883528?
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3883671
E__inference_lstm_728_layer_call_and_return_conditional_losses_3883814
E__inference_lstm_728_layer_call_and_return_conditional_losses_3883957
E__inference_lstm_728_layer_call_and_return_conditional_losses_3884100?
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
+__inference_dense_242_layer_call_fn_3884109?
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
F__inference_dense_242_layer_call_and_return_conditional_losses_3884119?
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
%__inference_signature_wrapper_3881344lstm_726_input"?
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
/__inference_lstm_cell_639_layer_call_fn_3884136
/__inference_lstm_cell_639_layer_call_fn_3884153?
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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3884185
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3884217?
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
/__inference_lstm_cell_640_layer_call_fn_3884234
/__inference_lstm_cell_640_layer_call_fn_3884251?
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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3884283
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3884315?
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
/__inference_lstm_cell_641_layer_call_fn_3884332
/__inference_lstm_cell_641_layer_call_fn_3884349?
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
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3884381
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3884413?
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
"__inference__wrapped_model_3879084?-./012345!";?8
1?.
,?)
lstm_726_input?????????
? "5?2
0
	dense_242#? 
	dense_242??????????
F__inference_dense_242_layer_call_and_return_conditional_losses_3884119\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_242_layer_call_fn_3884109O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882439?-./O?L
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882582?-./O?L
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882725q-./??<
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
E__inference_lstm_726_layer_call_and_return_conditional_losses_3882868q-./??<
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
*__inference_lstm_726_layer_call_fn_3882263}-./O?L
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
*__inference_lstm_726_layer_call_fn_3882274}-./O?L
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
*__inference_lstm_726_layer_call_fn_3882285d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_726_layer_call_fn_3882296d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883055?012O?L
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883198?012O?L
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883341q012??<
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
E__inference_lstm_727_layer_call_and_return_conditional_losses_3883484q012??<
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
*__inference_lstm_727_layer_call_fn_3882879}012O?L
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
*__inference_lstm_727_layer_call_fn_3882890}012O?L
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
*__inference_lstm_727_layer_call_fn_3882901d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_727_layer_call_fn_3882912d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_728_layer_call_and_return_conditional_losses_3883671}345O?L
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3883814}345O?L
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3883957m345??<
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
E__inference_lstm_728_layer_call_and_return_conditional_losses_3884100m345??<
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
*__inference_lstm_728_layer_call_fn_3883495p345O?L
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
*__inference_lstm_728_layer_call_fn_3883506p345O?L
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
*__inference_lstm_728_layer_call_fn_3883517`345??<
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
*__inference_lstm_728_layer_call_fn_3883528`345??<
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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3884185?-./??}
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
J__inference_lstm_cell_639_layer_call_and_return_conditional_losses_3884217?-./??}
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
/__inference_lstm_cell_639_layer_call_fn_3884136?-./??}
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
/__inference_lstm_cell_639_layer_call_fn_3884153?-./??}
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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3884283?012??}
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
J__inference_lstm_cell_640_layer_call_and_return_conditional_losses_3884315?012??}
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
/__inference_lstm_cell_640_layer_call_fn_3884234?012??}
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
/__inference_lstm_cell_640_layer_call_fn_3884251?012??}
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
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3884381?345??}
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
J__inference_lstm_cell_641_layer_call_and_return_conditional_losses_3884413?345??}
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
/__inference_lstm_cell_641_layer_call_fn_3884332?345??}
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
/__inference_lstm_cell_641_layer_call_fn_3884349?345??}
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
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881279y-./012345!"C?@
9?6
,?)
lstm_726_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881309y-./012345!"C?@
9?6
,?)
lstm_726_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_242_layer_call_and_return_conditional_losses_3881825q-./012345!";?8
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
K__inference_sequential_242_layer_call_and_return_conditional_losses_3882252q-./012345!";?8
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
0__inference_sequential_242_layer_call_fn_3880633l-./012345!"C?@
9?6
,?)
lstm_726_input?????????
p 

 
? "???????????
0__inference_sequential_242_layer_call_fn_3881249l-./012345!"C?@
9?6
,?)
lstm_726_input?????????
p

 
? "???????????
0__inference_sequential_242_layer_call_fn_3881371d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_242_layer_call_fn_3881398d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3881344?-./012345!"M?J
? 
C?@
>
lstm_726_input,?)
lstm_726_input?????????"5?2
0
	dense_242#? 
	dense_242?????????