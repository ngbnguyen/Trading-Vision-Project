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
dense_254/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_254/kernel
u
$dense_254/kernel/Read/ReadVariableOpReadVariableOpdense_254/kernel*
_output_shapes

:
*
dtype0
t
dense_254/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_254/bias
m
"dense_254/bias/Read/ReadVariableOpReadVariableOpdense_254/bias*
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
lstm_762/lstm_cell_762/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_762/lstm_cell_762/kernel
?
1lstm_762/lstm_cell_762/kernel/Read/ReadVariableOpReadVariableOplstm_762/lstm_cell_762/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_762/lstm_cell_762/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_762/lstm_cell_762/recurrent_kernel
?
;lstm_762/lstm_cell_762/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_762/lstm_cell_762/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_762/lstm_cell_762/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_762/lstm_cell_762/bias
?
/lstm_762/lstm_cell_762/bias/Read/ReadVariableOpReadVariableOplstm_762/lstm_cell_762/bias*
_output_shapes	
:?*
dtype0
?
lstm_763/lstm_cell_763/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_763/lstm_cell_763/kernel
?
1lstm_763/lstm_cell_763/kernel/Read/ReadVariableOpReadVariableOplstm_763/lstm_cell_763/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_763/lstm_cell_763/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_763/lstm_cell_763/recurrent_kernel
?
;lstm_763/lstm_cell_763/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_763/lstm_cell_763/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_763/lstm_cell_763/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_763/lstm_cell_763/bias
?
/lstm_763/lstm_cell_763/bias/Read/ReadVariableOpReadVariableOplstm_763/lstm_cell_763/bias*
_output_shapes	
:?*
dtype0
?
lstm_764/lstm_cell_764/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_764/lstm_cell_764/kernel
?
1lstm_764/lstm_cell_764/kernel/Read/ReadVariableOpReadVariableOplstm_764/lstm_cell_764/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_764/lstm_cell_764/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_764/lstm_cell_764/recurrent_kernel
?
;lstm_764/lstm_cell_764/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_764/lstm_cell_764/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_764/lstm_cell_764/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_764/lstm_cell_764/bias
?
/lstm_764/lstm_cell_764/bias/Read/ReadVariableOpReadVariableOplstm_764/lstm_cell_764/bias*
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
Adam/dense_254/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_254/kernel/m
?
+Adam/dense_254/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_254/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_254/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_254/bias/m
{
)Adam/dense_254/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_254/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_762/lstm_cell_762/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_762/lstm_cell_762/kernel/m
?
8Adam/lstm_762/lstm_cell_762/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_762/lstm_cell_762/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_762/lstm_cell_762/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_762/lstm_cell_762/recurrent_kernel/m
?
BAdam/lstm_762/lstm_cell_762/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_762/lstm_cell_762/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_762/lstm_cell_762/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_762/lstm_cell_762/bias/m
?
6Adam/lstm_762/lstm_cell_762/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_762/lstm_cell_762/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_763/lstm_cell_763/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_763/lstm_cell_763/kernel/m
?
8Adam/lstm_763/lstm_cell_763/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_763/lstm_cell_763/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_763/lstm_cell_763/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_763/lstm_cell_763/recurrent_kernel/m
?
BAdam/lstm_763/lstm_cell_763/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_763/lstm_cell_763/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_763/lstm_cell_763/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_763/lstm_cell_763/bias/m
?
6Adam/lstm_763/lstm_cell_763/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_763/lstm_cell_763/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_764/lstm_cell_764/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_764/lstm_cell_764/kernel/m
?
8Adam/lstm_764/lstm_cell_764/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_764/lstm_cell_764/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_764/lstm_cell_764/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_764/lstm_cell_764/recurrent_kernel/m
?
BAdam/lstm_764/lstm_cell_764/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_764/lstm_cell_764/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_764/lstm_cell_764/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_764/lstm_cell_764/bias/m
?
6Adam/lstm_764/lstm_cell_764/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_764/lstm_cell_764/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_254/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_254/kernel/v
?
+Adam/dense_254/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_254/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_254/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_254/bias/v
{
)Adam/dense_254/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_254/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_762/lstm_cell_762/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_762/lstm_cell_762/kernel/v
?
8Adam/lstm_762/lstm_cell_762/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_762/lstm_cell_762/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_762/lstm_cell_762/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_762/lstm_cell_762/recurrent_kernel/v
?
BAdam/lstm_762/lstm_cell_762/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_762/lstm_cell_762/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_762/lstm_cell_762/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_762/lstm_cell_762/bias/v
?
6Adam/lstm_762/lstm_cell_762/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_762/lstm_cell_762/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_763/lstm_cell_763/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_763/lstm_cell_763/kernel/v
?
8Adam/lstm_763/lstm_cell_763/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_763/lstm_cell_763/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_763/lstm_cell_763/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_763/lstm_cell_763/recurrent_kernel/v
?
BAdam/lstm_763/lstm_cell_763/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_763/lstm_cell_763/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_763/lstm_cell_763/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_763/lstm_cell_763/bias/v
?
6Adam/lstm_763/lstm_cell_763/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_763/lstm_cell_763/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_764/lstm_cell_764/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_764/lstm_cell_764/kernel/v
?
8Adam/lstm_764/lstm_cell_764/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_764/lstm_cell_764/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_764/lstm_cell_764/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_764/lstm_cell_764/recurrent_kernel/v
?
BAdam/lstm_764/lstm_cell_764/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_764/lstm_cell_764/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_764/lstm_cell_764/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_764/lstm_cell_764/bias/v
?
6Adam/lstm_764/lstm_cell_764/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_764/lstm_cell_764/bias/v*
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
VARIABLE_VALUEdense_254/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_254/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_762/lstm_cell_762/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_762/lstm_cell_762/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_762/lstm_cell_762/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_763/lstm_cell_763/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_763/lstm_cell_763/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_763/lstm_cell_763/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_764/lstm_cell_764/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_764/lstm_cell_764/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_764/lstm_cell_764/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_254/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_254/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_762/lstm_cell_762/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_762/lstm_cell_762/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_762/lstm_cell_762/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_763/lstm_cell_763/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_763/lstm_cell_763/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_763/lstm_cell_763/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_764/lstm_cell_764/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_764/lstm_cell_764/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_764/lstm_cell_764/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_254/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_254/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_762/lstm_cell_762/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_762/lstm_cell_762/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_762/lstm_cell_762/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_763/lstm_cell_763/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_763/lstm_cell_763/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_763/lstm_cell_763/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_764/lstm_cell_764/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_764/lstm_cell_764/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_764/lstm_cell_764/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_762_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_762_inputlstm_762/lstm_cell_762/kernel'lstm_762/lstm_cell_762/recurrent_kernellstm_762/lstm_cell_762/biaslstm_763/lstm_cell_763/kernel'lstm_763/lstm_cell_763/recurrent_kernellstm_763/lstm_cell_763/biaslstm_764/lstm_cell_764/kernel'lstm_764/lstm_cell_764/recurrent_kernellstm_764/lstm_cell_764/biasdense_254/kerneldense_254/bias*
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
%__inference_signature_wrapper_4461018
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_254/kernel/Read/ReadVariableOp"dense_254/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_762/lstm_cell_762/kernel/Read/ReadVariableOp;lstm_762/lstm_cell_762/recurrent_kernel/Read/ReadVariableOp/lstm_762/lstm_cell_762/bias/Read/ReadVariableOp1lstm_763/lstm_cell_763/kernel/Read/ReadVariableOp;lstm_763/lstm_cell_763/recurrent_kernel/Read/ReadVariableOp/lstm_763/lstm_cell_763/bias/Read/ReadVariableOp1lstm_764/lstm_cell_764/kernel/Read/ReadVariableOp;lstm_764/lstm_cell_764/recurrent_kernel/Read/ReadVariableOp/lstm_764/lstm_cell_764/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_254/kernel/m/Read/ReadVariableOp)Adam/dense_254/bias/m/Read/ReadVariableOp8Adam/lstm_762/lstm_cell_762/kernel/m/Read/ReadVariableOpBAdam/lstm_762/lstm_cell_762/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_762/lstm_cell_762/bias/m/Read/ReadVariableOp8Adam/lstm_763/lstm_cell_763/kernel/m/Read/ReadVariableOpBAdam/lstm_763/lstm_cell_763/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_763/lstm_cell_763/bias/m/Read/ReadVariableOp8Adam/lstm_764/lstm_cell_764/kernel/m/Read/ReadVariableOpBAdam/lstm_764/lstm_cell_764/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_764/lstm_cell_764/bias/m/Read/ReadVariableOp+Adam/dense_254/kernel/v/Read/ReadVariableOp)Adam/dense_254/bias/v/Read/ReadVariableOp8Adam/lstm_762/lstm_cell_762/kernel/v/Read/ReadVariableOpBAdam/lstm_762/lstm_cell_762/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_762/lstm_cell_762/bias/v/Read/ReadVariableOp8Adam/lstm_763/lstm_cell_763/kernel/v/Read/ReadVariableOpBAdam/lstm_763/lstm_cell_763/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_763/lstm_cell_763/bias/v/Read/ReadVariableOp8Adam/lstm_764/lstm_cell_764/kernel/v/Read/ReadVariableOpBAdam/lstm_764/lstm_cell_764/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_764/lstm_cell_764/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4464230
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_254/kerneldense_254/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_762/lstm_cell_762/kernel'lstm_762/lstm_cell_762/recurrent_kernellstm_762/lstm_cell_762/biaslstm_763/lstm_cell_763/kernel'lstm_763/lstm_cell_763/recurrent_kernellstm_763/lstm_cell_763/biaslstm_764/lstm_cell_764/kernel'lstm_764/lstm_cell_764/recurrent_kernellstm_764/lstm_cell_764/biastotalcountAdam/dense_254/kernel/mAdam/dense_254/bias/m$Adam/lstm_762/lstm_cell_762/kernel/m.Adam/lstm_762/lstm_cell_762/recurrent_kernel/m"Adam/lstm_762/lstm_cell_762/bias/m$Adam/lstm_763/lstm_cell_763/kernel/m.Adam/lstm_763/lstm_cell_763/recurrent_kernel/m"Adam/lstm_763/lstm_cell_763/bias/m$Adam/lstm_764/lstm_cell_764/kernel/m.Adam/lstm_764/lstm_cell_764/recurrent_kernel/m"Adam/lstm_764/lstm_cell_764/bias/mAdam/dense_254/kernel/vAdam/dense_254/bias/v$Adam/lstm_762/lstm_cell_762/kernel/v.Adam/lstm_762/lstm_cell_762/recurrent_kernel/v"Adam/lstm_762/lstm_cell_762/bias/v$Adam/lstm_763/lstm_cell_763/kernel/v.Adam/lstm_763/lstm_cell_763/recurrent_kernel/v"Adam/lstm_763/lstm_cell_763/bias/v$Adam/lstm_764/lstm_cell_764/kernel/v.Adam/lstm_764/lstm_cell_764/recurrent_kernel/v"Adam/lstm_764/lstm_cell_764/bias/v*4
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
#__inference__traced_restore_4464360??+
?
?
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4463957

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
?
?
*__inference_lstm_762_layer_call_fn_4461970

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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4460803s
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
?
*sequential_254_lstm_763_while_cond_4458528L
Hsequential_254_lstm_763_while_sequential_254_lstm_763_while_loop_counterR
Nsequential_254_lstm_763_while_sequential_254_lstm_763_while_maximum_iterations-
)sequential_254_lstm_763_while_placeholder/
+sequential_254_lstm_763_while_placeholder_1/
+sequential_254_lstm_763_while_placeholder_2/
+sequential_254_lstm_763_while_placeholder_3N
Jsequential_254_lstm_763_while_less_sequential_254_lstm_763_strided_slice_1e
asequential_254_lstm_763_while_sequential_254_lstm_763_while_cond_4458528___redundant_placeholder0e
asequential_254_lstm_763_while_sequential_254_lstm_763_while_cond_4458528___redundant_placeholder1e
asequential_254_lstm_763_while_sequential_254_lstm_763_while_cond_4458528___redundant_placeholder2e
asequential_254_lstm_763_while_sequential_254_lstm_763_while_cond_4458528___redundant_placeholder3*
&sequential_254_lstm_763_while_identity
?
"sequential_254/lstm_763/while/LessLess)sequential_254_lstm_763_while_placeholderJsequential_254_lstm_763_while_less_sequential_254_lstm_763_strided_slice_1*
T0*
_output_shapes
: {
&sequential_254/lstm_763/while/IdentityIdentity&sequential_254/lstm_763/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_254_lstm_763_while_identity/sequential_254/lstm_763/while/Identity:output:0*(
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
+__inference_dense_254_layer_call_fn_4463783

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
F__inference_dense_254_layer_call_and_return_conditional_losses_4460275o
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
while_body_4463074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_736_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_736_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_736_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_736_matmul_readvariableop_resource:	d?G
4while_lstm_cell_736_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_736_biasadd_readvariableop_resource:	???*while/lstm_cell_736/BiasAdd/ReadVariableOp?)while/lstm_cell_736/MatMul/ReadVariableOp?+while/lstm_cell_736/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_736/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_736_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_736/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_736_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_736/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_736/addAddV2$while/lstm_cell_736/MatMul:product:0&while/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_736_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_736/BiasAddBiasAddwhile/lstm_cell_736/add:z:02while/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_736/splitSplit,while/lstm_cell_736/split/split_dim:output:0$while/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_736/SigmoidSigmoid"while/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_1Sigmoid"while/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mulMul!while/lstm_cell_736/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_736/ReluRelu"while/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_1Mulwhile/lstm_cell_736/Sigmoid:y:0&while/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/add_1AddV2while/lstm_cell_736/mul:z:0while/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_2Sigmoid"while/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_736/Relu_1Reluwhile/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_2Mul!while/lstm_cell_736/Sigmoid_2:y:0(while/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_736/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_736/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_736/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_736/BiasAdd/ReadVariableOp*^while/lstm_cell_736/MatMul/ReadVariableOp,^while/lstm_cell_736/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_736_biasadd_readvariableop_resource5while_lstm_cell_736_biasadd_readvariableop_resource_0"n
4while_lstm_cell_736_matmul_1_readvariableop_resource6while_lstm_cell_736_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_736_matmul_readvariableop_resource4while_lstm_cell_736_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_736/BiasAdd/ReadVariableOp*while/lstm_cell_736/BiasAdd/ReadVariableOp2V
)while/lstm_cell_736/MatMul/ReadVariableOp)while/lstm_cell_736/MatMul/ReadVariableOp2Z
+while/lstm_cell_736/MatMul_1/ReadVariableOp+while/lstm_cell_736/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4460719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_735_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_735_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_735_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_735_matmul_readvariableop_resource:	?G
4while_lstm_cell_735_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_735_biasadd_readvariableop_resource:	???*while/lstm_cell_735/BiasAdd/ReadVariableOp?)while/lstm_cell_735/MatMul/ReadVariableOp?+while/lstm_cell_735/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_735/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_735_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_735/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_735_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_735/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_735/addAddV2$while/lstm_cell_735/MatMul:product:0&while/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_735_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_735/BiasAddBiasAddwhile/lstm_cell_735/add:z:02while/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_735/splitSplit,while/lstm_cell_735/split/split_dim:output:0$while/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_735/SigmoidSigmoid"while/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_1Sigmoid"while/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mulMul!while/lstm_cell_735/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_735/ReluRelu"while/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_1Mulwhile/lstm_cell_735/Sigmoid:y:0&while/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/add_1AddV2while/lstm_cell_735/mul:z:0while/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_2Sigmoid"while/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_735/Relu_1Reluwhile/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_2Mul!while/lstm_cell_735/Sigmoid_2:y:0(while/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_735/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_735/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_735/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_735/BiasAdd/ReadVariableOp*^while/lstm_cell_735/MatMul/ReadVariableOp,^while/lstm_cell_735/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_735_biasadd_readvariableop_resource5while_lstm_cell_735_biasadd_readvariableop_resource_0"n
4while_lstm_cell_735_matmul_1_readvariableop_resource6while_lstm_cell_735_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_735_matmul_readvariableop_resource4while_lstm_cell_735_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_735/BiasAdd/ReadVariableOp*while/lstm_cell_735/BiasAdd/ReadVariableOp2V
)while/lstm_cell_735/MatMul/ReadVariableOp)while/lstm_cell_735/MatMul/ReadVariableOp2Z
+while/lstm_cell_735/MatMul_1/ReadVariableOp+while/lstm_cell_735/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4459873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_735_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_735_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_735_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_735_matmul_readvariableop_resource:	?G
4while_lstm_cell_735_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_735_biasadd_readvariableop_resource:	???*while/lstm_cell_735/BiasAdd/ReadVariableOp?)while/lstm_cell_735/MatMul/ReadVariableOp?+while/lstm_cell_735/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_735/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_735_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_735/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_735_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_735/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_735/addAddV2$while/lstm_cell_735/MatMul:product:0&while/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_735_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_735/BiasAddBiasAddwhile/lstm_cell_735/add:z:02while/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_735/splitSplit,while/lstm_cell_735/split/split_dim:output:0$while/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_735/SigmoidSigmoid"while/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_1Sigmoid"while/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mulMul!while/lstm_cell_735/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_735/ReluRelu"while/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_1Mulwhile/lstm_cell_735/Sigmoid:y:0&while/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/add_1AddV2while/lstm_cell_735/mul:z:0while/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_2Sigmoid"while/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_735/Relu_1Reluwhile/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_2Mul!while/lstm_cell_735/Sigmoid_2:y:0(while/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_735/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_735/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_735/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_735/BiasAdd/ReadVariableOp*^while/lstm_cell_735/MatMul/ReadVariableOp,^while/lstm_cell_735/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_735_biasadd_readvariableop_resource5while_lstm_cell_735_biasadd_readvariableop_resource_0"n
4while_lstm_cell_735_matmul_1_readvariableop_resource6while_lstm_cell_735_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_735_matmul_readvariableop_resource4while_lstm_cell_735_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_735/BiasAdd/ReadVariableOp*while/lstm_cell_735/BiasAdd/ReadVariableOp2V
)while/lstm_cell_735/MatMul/ReadVariableOp)while/lstm_cell_735/MatMul/ReadVariableOp2Z
+while/lstm_cell_735/MatMul_1/ReadVariableOp+while/lstm_cell_735/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4462172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_735_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_735_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_735_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_735_matmul_readvariableop_resource:	?G
4while_lstm_cell_735_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_735_biasadd_readvariableop_resource:	???*while/lstm_cell_735/BiasAdd/ReadVariableOp?)while/lstm_cell_735/MatMul/ReadVariableOp?+while/lstm_cell_735/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_735/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_735_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_735/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_735_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_735/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_735/addAddV2$while/lstm_cell_735/MatMul:product:0&while/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_735_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_735/BiasAddBiasAddwhile/lstm_cell_735/add:z:02while/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_735/splitSplit,while/lstm_cell_735/split/split_dim:output:0$while/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_735/SigmoidSigmoid"while/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_1Sigmoid"while/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mulMul!while/lstm_cell_735/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_735/ReluRelu"while/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_1Mulwhile/lstm_cell_735/Sigmoid:y:0&while/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/add_1AddV2while/lstm_cell_735/mul:z:0while/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_2Sigmoid"while/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_735/Relu_1Reluwhile/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_2Mul!while/lstm_cell_735/Sigmoid_2:y:0(while/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_735/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_735/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_735/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_735/BiasAdd/ReadVariableOp*^while/lstm_cell_735/MatMul/ReadVariableOp,^while/lstm_cell_735/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_735_biasadd_readvariableop_resource5while_lstm_cell_735_biasadd_readvariableop_resource_0"n
4while_lstm_cell_735_matmul_1_readvariableop_resource6while_lstm_cell_735_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_735_matmul_readvariableop_resource4while_lstm_cell_735_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_735/BiasAdd/ReadVariableOp*while/lstm_cell_735/BiasAdd/ReadVariableOp2V
)while/lstm_cell_735/MatMul/ReadVariableOp)while/lstm_cell_735/MatMul/ReadVariableOp2Z
+while/lstm_cell_735/MatMul_1/ReadVariableOp+while/lstm_cell_735/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
K__inference_sequential_254_layer_call_and_return_conditional_losses_4461499

inputsH
5lstm_762_lstm_cell_735_matmul_readvariableop_resource:	?J
7lstm_762_lstm_cell_735_matmul_1_readvariableop_resource:	d?E
6lstm_762_lstm_cell_735_biasadd_readvariableop_resource:	?H
5lstm_763_lstm_cell_736_matmul_readvariableop_resource:	d?J
7lstm_763_lstm_cell_736_matmul_1_readvariableop_resource:	2?E
6lstm_763_lstm_cell_736_biasadd_readvariableop_resource:	?G
5lstm_764_lstm_cell_737_matmul_readvariableop_resource:2(I
7lstm_764_lstm_cell_737_matmul_1_readvariableop_resource:
(D
6lstm_764_lstm_cell_737_biasadd_readvariableop_resource:(:
(dense_254_matmul_readvariableop_resource:
7
)dense_254_biasadd_readvariableop_resource:
identity?? dense_254/BiasAdd/ReadVariableOp?dense_254/MatMul/ReadVariableOp?-lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp?,lstm_762/lstm_cell_735/MatMul/ReadVariableOp?.lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp?lstm_762/while?-lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp?,lstm_763/lstm_cell_736/MatMul/ReadVariableOp?.lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp?lstm_763/while?-lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp?,lstm_764/lstm_cell_737/MatMul/ReadVariableOp?.lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp?lstm_764/whileD
lstm_762/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_762/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_762/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_762/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_762/strided_sliceStridedSlicelstm_762/Shape:output:0%lstm_762/strided_slice/stack:output:0'lstm_762/strided_slice/stack_1:output:0'lstm_762/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_762/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_762/zeros/packedPacklstm_762/strided_slice:output:0 lstm_762/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_762/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_762/zerosFilllstm_762/zeros/packed:output:0lstm_762/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_762/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_762/zeros_1/packedPacklstm_762/strided_slice:output:0"lstm_762/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_762/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_762/zeros_1Fill lstm_762/zeros_1/packed:output:0lstm_762/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_762/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_762/transpose	Transposeinputs lstm_762/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_762/Shape_1Shapelstm_762/transpose:y:0*
T0*
_output_shapes
:h
lstm_762/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_762/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_762/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_762/strided_slice_1StridedSlicelstm_762/Shape_1:output:0'lstm_762/strided_slice_1/stack:output:0)lstm_762/strided_slice_1/stack_1:output:0)lstm_762/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_762/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_762/TensorArrayV2TensorListReserve-lstm_762/TensorArrayV2/element_shape:output:0!lstm_762/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_762/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_762/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_762/transpose:y:0Glstm_762/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_762/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_762/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_762/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_762/strided_slice_2StridedSlicelstm_762/transpose:y:0'lstm_762/strided_slice_2/stack:output:0)lstm_762/strided_slice_2/stack_1:output:0)lstm_762/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_762/lstm_cell_735/MatMul/ReadVariableOpReadVariableOp5lstm_762_lstm_cell_735_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_762/lstm_cell_735/MatMulMatMul!lstm_762/strided_slice_2:output:04lstm_762/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_762/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp7lstm_762_lstm_cell_735_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_762/lstm_cell_735/MatMul_1MatMullstm_762/zeros:output:06lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_762/lstm_cell_735/addAddV2'lstm_762/lstm_cell_735/MatMul:product:0)lstm_762/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_762/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp6lstm_762_lstm_cell_735_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_762/lstm_cell_735/BiasAddBiasAddlstm_762/lstm_cell_735/add:z:05lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_762/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_762/lstm_cell_735/splitSplit/lstm_762/lstm_cell_735/split/split_dim:output:0'lstm_762/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_762/lstm_cell_735/SigmoidSigmoid%lstm_762/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_762/lstm_cell_735/Sigmoid_1Sigmoid%lstm_762/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_762/lstm_cell_735/mulMul$lstm_762/lstm_cell_735/Sigmoid_1:y:0lstm_762/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_762/lstm_cell_735/ReluRelu%lstm_762/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_762/lstm_cell_735/mul_1Mul"lstm_762/lstm_cell_735/Sigmoid:y:0)lstm_762/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_762/lstm_cell_735/add_1AddV2lstm_762/lstm_cell_735/mul:z:0 lstm_762/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_762/lstm_cell_735/Sigmoid_2Sigmoid%lstm_762/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_762/lstm_cell_735/Relu_1Relu lstm_762/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_762/lstm_cell_735/mul_2Mul$lstm_762/lstm_cell_735/Sigmoid_2:y:0+lstm_762/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_762/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_762/TensorArrayV2_1TensorListReserve/lstm_762/TensorArrayV2_1/element_shape:output:0!lstm_762/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_762/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_762/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_762/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_762/whileWhile$lstm_762/while/loop_counter:output:0*lstm_762/while/maximum_iterations:output:0lstm_762/time:output:0!lstm_762/TensorArrayV2_1:handle:0lstm_762/zeros:output:0lstm_762/zeros_1:output:0!lstm_762/strided_slice_1:output:0@lstm_762/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_762_lstm_cell_735_matmul_readvariableop_resource7lstm_762_lstm_cell_735_matmul_1_readvariableop_resource6lstm_762_lstm_cell_735_biasadd_readvariableop_resource*
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
lstm_762_while_body_4461131*'
condR
lstm_762_while_cond_4461130*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_762/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_762/TensorArrayV2Stack/TensorListStackTensorListStacklstm_762/while:output:3Blstm_762/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_762/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_762/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_762/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_762/strided_slice_3StridedSlice4lstm_762/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_762/strided_slice_3/stack:output:0)lstm_762/strided_slice_3/stack_1:output:0)lstm_762/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_762/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_762/transpose_1	Transpose4lstm_762/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_762/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_762/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_763/ShapeShapelstm_762/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_763/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_763/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_763/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_763/strided_sliceStridedSlicelstm_763/Shape:output:0%lstm_763/strided_slice/stack:output:0'lstm_763/strided_slice/stack_1:output:0'lstm_763/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_763/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_763/zeros/packedPacklstm_763/strided_slice:output:0 lstm_763/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_763/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_763/zerosFilllstm_763/zeros/packed:output:0lstm_763/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_763/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_763/zeros_1/packedPacklstm_763/strided_slice:output:0"lstm_763/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_763/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_763/zeros_1Fill lstm_763/zeros_1/packed:output:0lstm_763/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_763/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_763/transpose	Transposelstm_762/transpose_1:y:0 lstm_763/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_763/Shape_1Shapelstm_763/transpose:y:0*
T0*
_output_shapes
:h
lstm_763/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_763/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_763/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_763/strided_slice_1StridedSlicelstm_763/Shape_1:output:0'lstm_763/strided_slice_1/stack:output:0)lstm_763/strided_slice_1/stack_1:output:0)lstm_763/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_763/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_763/TensorArrayV2TensorListReserve-lstm_763/TensorArrayV2/element_shape:output:0!lstm_763/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_763/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_763/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_763/transpose:y:0Glstm_763/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_763/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_763/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_763/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_763/strided_slice_2StridedSlicelstm_763/transpose:y:0'lstm_763/strided_slice_2/stack:output:0)lstm_763/strided_slice_2/stack_1:output:0)lstm_763/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_763/lstm_cell_736/MatMul/ReadVariableOpReadVariableOp5lstm_763_lstm_cell_736_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_763/lstm_cell_736/MatMulMatMul!lstm_763/strided_slice_2:output:04lstm_763/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_763/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp7lstm_763_lstm_cell_736_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_763/lstm_cell_736/MatMul_1MatMullstm_763/zeros:output:06lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_763/lstm_cell_736/addAddV2'lstm_763/lstm_cell_736/MatMul:product:0)lstm_763/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_763/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp6lstm_763_lstm_cell_736_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_763/lstm_cell_736/BiasAddBiasAddlstm_763/lstm_cell_736/add:z:05lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_763/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_763/lstm_cell_736/splitSplit/lstm_763/lstm_cell_736/split/split_dim:output:0'lstm_763/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_763/lstm_cell_736/SigmoidSigmoid%lstm_763/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_763/lstm_cell_736/Sigmoid_1Sigmoid%lstm_763/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_763/lstm_cell_736/mulMul$lstm_763/lstm_cell_736/Sigmoid_1:y:0lstm_763/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_763/lstm_cell_736/ReluRelu%lstm_763/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_763/lstm_cell_736/mul_1Mul"lstm_763/lstm_cell_736/Sigmoid:y:0)lstm_763/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_763/lstm_cell_736/add_1AddV2lstm_763/lstm_cell_736/mul:z:0 lstm_763/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_763/lstm_cell_736/Sigmoid_2Sigmoid%lstm_763/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_763/lstm_cell_736/Relu_1Relu lstm_763/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_763/lstm_cell_736/mul_2Mul$lstm_763/lstm_cell_736/Sigmoid_2:y:0+lstm_763/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_763/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_763/TensorArrayV2_1TensorListReserve/lstm_763/TensorArrayV2_1/element_shape:output:0!lstm_763/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_763/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_763/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_763/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_763/whileWhile$lstm_763/while/loop_counter:output:0*lstm_763/while/maximum_iterations:output:0lstm_763/time:output:0!lstm_763/TensorArrayV2_1:handle:0lstm_763/zeros:output:0lstm_763/zeros_1:output:0!lstm_763/strided_slice_1:output:0@lstm_763/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_763_lstm_cell_736_matmul_readvariableop_resource7lstm_763_lstm_cell_736_matmul_1_readvariableop_resource6lstm_763_lstm_cell_736_biasadd_readvariableop_resource*
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
lstm_763_while_body_4461270*'
condR
lstm_763_while_cond_4461269*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_763/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_763/TensorArrayV2Stack/TensorListStackTensorListStacklstm_763/while:output:3Blstm_763/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_763/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_763/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_763/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_763/strided_slice_3StridedSlice4lstm_763/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_763/strided_slice_3/stack:output:0)lstm_763/strided_slice_3/stack_1:output:0)lstm_763/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_763/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_763/transpose_1	Transpose4lstm_763/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_763/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_763/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_764/ShapeShapelstm_763/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_764/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_764/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_764/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_764/strided_sliceStridedSlicelstm_764/Shape:output:0%lstm_764/strided_slice/stack:output:0'lstm_764/strided_slice/stack_1:output:0'lstm_764/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_764/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_764/zeros/packedPacklstm_764/strided_slice:output:0 lstm_764/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_764/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_764/zerosFilllstm_764/zeros/packed:output:0lstm_764/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_764/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_764/zeros_1/packedPacklstm_764/strided_slice:output:0"lstm_764/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_764/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_764/zeros_1Fill lstm_764/zeros_1/packed:output:0lstm_764/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_764/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_764/transpose	Transposelstm_763/transpose_1:y:0 lstm_764/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_764/Shape_1Shapelstm_764/transpose:y:0*
T0*
_output_shapes
:h
lstm_764/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_764/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_764/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_764/strided_slice_1StridedSlicelstm_764/Shape_1:output:0'lstm_764/strided_slice_1/stack:output:0)lstm_764/strided_slice_1/stack_1:output:0)lstm_764/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_764/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_764/TensorArrayV2TensorListReserve-lstm_764/TensorArrayV2/element_shape:output:0!lstm_764/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_764/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_764/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_764/transpose:y:0Glstm_764/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_764/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_764/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_764/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_764/strided_slice_2StridedSlicelstm_764/transpose:y:0'lstm_764/strided_slice_2/stack:output:0)lstm_764/strided_slice_2/stack_1:output:0)lstm_764/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_764/lstm_cell_737/MatMul/ReadVariableOpReadVariableOp5lstm_764_lstm_cell_737_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_764/lstm_cell_737/MatMulMatMul!lstm_764/strided_slice_2:output:04lstm_764/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_764/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp7lstm_764_lstm_cell_737_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_764/lstm_cell_737/MatMul_1MatMullstm_764/zeros:output:06lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_764/lstm_cell_737/addAddV2'lstm_764/lstm_cell_737/MatMul:product:0)lstm_764/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_764/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp6lstm_764_lstm_cell_737_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_764/lstm_cell_737/BiasAddBiasAddlstm_764/lstm_cell_737/add:z:05lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_764/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_764/lstm_cell_737/splitSplit/lstm_764/lstm_cell_737/split/split_dim:output:0'lstm_764/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_764/lstm_cell_737/SigmoidSigmoid%lstm_764/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_764/lstm_cell_737/Sigmoid_1Sigmoid%lstm_764/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_764/lstm_cell_737/mulMul$lstm_764/lstm_cell_737/Sigmoid_1:y:0lstm_764/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_764/lstm_cell_737/ReluRelu%lstm_764/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_764/lstm_cell_737/mul_1Mul"lstm_764/lstm_cell_737/Sigmoid:y:0)lstm_764/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_764/lstm_cell_737/add_1AddV2lstm_764/lstm_cell_737/mul:z:0 lstm_764/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_764/lstm_cell_737/Sigmoid_2Sigmoid%lstm_764/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_764/lstm_cell_737/Relu_1Relu lstm_764/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_764/lstm_cell_737/mul_2Mul$lstm_764/lstm_cell_737/Sigmoid_2:y:0+lstm_764/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_764/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_764/TensorArrayV2_1TensorListReserve/lstm_764/TensorArrayV2_1/element_shape:output:0!lstm_764/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_764/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_764/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_764/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_764/whileWhile$lstm_764/while/loop_counter:output:0*lstm_764/while/maximum_iterations:output:0lstm_764/time:output:0!lstm_764/TensorArrayV2_1:handle:0lstm_764/zeros:output:0lstm_764/zeros_1:output:0!lstm_764/strided_slice_1:output:0@lstm_764/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_764_lstm_cell_737_matmul_readvariableop_resource7lstm_764_lstm_cell_737_matmul_1_readvariableop_resource6lstm_764_lstm_cell_737_biasadd_readvariableop_resource*
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
lstm_764_while_body_4461409*'
condR
lstm_764_while_cond_4461408*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_764/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_764/TensorArrayV2Stack/TensorListStackTensorListStacklstm_764/while:output:3Blstm_764/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_764/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_764/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_764/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_764/strided_slice_3StridedSlice4lstm_764/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_764/strided_slice_3/stack:output:0)lstm_764/strided_slice_3/stack_1:output:0)lstm_764/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_764/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_764/transpose_1	Transpose4lstm_764/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_764/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_764/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_254/MatMul/ReadVariableOpReadVariableOp(dense_254_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_254/MatMulMatMul!lstm_764/strided_slice_3:output:0'dense_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_254/BiasAdd/ReadVariableOpReadVariableOp)dense_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_254/BiasAddBiasAdddense_254/MatMul:product:0(dense_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_254/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_254/BiasAdd/ReadVariableOp ^dense_254/MatMul/ReadVariableOp.^lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp-^lstm_762/lstm_cell_735/MatMul/ReadVariableOp/^lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp^lstm_762/while.^lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp-^lstm_763/lstm_cell_736/MatMul/ReadVariableOp/^lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp^lstm_763/while.^lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp-^lstm_764/lstm_cell_737/MatMul/ReadVariableOp/^lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp^lstm_764/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_254/BiasAdd/ReadVariableOp dense_254/BiasAdd/ReadVariableOp2B
dense_254/MatMul/ReadVariableOpdense_254/MatMul/ReadVariableOp2^
-lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp-lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp2\
,lstm_762/lstm_cell_735/MatMul/ReadVariableOp,lstm_762/lstm_cell_735/MatMul/ReadVariableOp2`
.lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp.lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp2 
lstm_762/whilelstm_762/while2^
-lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp-lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp2\
,lstm_763/lstm_cell_736/MatMul/ReadVariableOp,lstm_763/lstm_cell_736/MatMul/ReadVariableOp2`
.lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp.lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp2 
lstm_763/whilelstm_763/while2^
-lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp-lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp2\
,lstm_764/lstm_cell_737/MatMul/ReadVariableOp,lstm_764/lstm_cell_737/MatMul/ReadVariableOp2`
.lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp.lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp2 
lstm_764/whilelstm_764/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4463690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_737_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_737_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_737_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_737_matmul_readvariableop_resource:2(F
4while_lstm_cell_737_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_737_biasadd_readvariableop_resource:(??*while/lstm_cell_737/BiasAdd/ReadVariableOp?)while/lstm_cell_737/MatMul/ReadVariableOp?+while/lstm_cell_737/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_737/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_737_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_737/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_737_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_737/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_737/addAddV2$while/lstm_cell_737/MatMul:product:0&while/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_737_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_737/BiasAddBiasAddwhile/lstm_cell_737/add:z:02while/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_737/splitSplit,while/lstm_cell_737/split/split_dim:output:0$while/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_737/SigmoidSigmoid"while/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_1Sigmoid"while/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mulMul!while/lstm_cell_737/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_737/ReluRelu"while/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_1Mulwhile/lstm_cell_737/Sigmoid:y:0&while/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/add_1AddV2while/lstm_cell_737/mul:z:0while/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_2Sigmoid"while/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_737/Relu_1Reluwhile/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_2Mul!while/lstm_cell_737/Sigmoid_2:y:0(while/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_737/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_737/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_737/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_737/BiasAdd/ReadVariableOp*^while/lstm_cell_737/MatMul/ReadVariableOp,^while/lstm_cell_737/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_737_biasadd_readvariableop_resource5while_lstm_cell_737_biasadd_readvariableop_resource_0"n
4while_lstm_cell_737_matmul_1_readvariableop_resource6while_lstm_cell_737_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_737_matmul_readvariableop_resource4while_lstm_cell_737_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_737/BiasAdd/ReadVariableOp*while/lstm_cell_737/BiasAdd/ReadVariableOp2V
)while/lstm_cell_737/MatMul/ReadVariableOp)while/lstm_cell_737/MatMul/ReadVariableOp2Z
+while/lstm_cell_737/MatMul_1/ReadVariableOp+while/lstm_cell_737/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_763_layer_call_fn_4462553
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4459258|
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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4458971

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
?
*__inference_lstm_763_layer_call_fn_4462564
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4459449|
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
while_cond_4459188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459188___redundant_placeholder05
1while_while_cond_4459188___redundant_placeholder15
1while_while_cond_4459188___redundant_placeholder25
1while_while_cond_4459188___redundant_placeholder3
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
?C
?

lstm_764_while_body_4461409.
*lstm_764_while_lstm_764_while_loop_counter4
0lstm_764_while_lstm_764_while_maximum_iterations
lstm_764_while_placeholder 
lstm_764_while_placeholder_1 
lstm_764_while_placeholder_2 
lstm_764_while_placeholder_3-
)lstm_764_while_lstm_764_strided_slice_1_0i
elstm_764_while_tensorarrayv2read_tensorlistgetitem_lstm_764_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_764_while_lstm_cell_737_matmul_readvariableop_resource_0:2(Q
?lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource_0:
(L
>lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource_0:(
lstm_764_while_identity
lstm_764_while_identity_1
lstm_764_while_identity_2
lstm_764_while_identity_3
lstm_764_while_identity_4
lstm_764_while_identity_5+
'lstm_764_while_lstm_764_strided_slice_1g
clstm_764_while_tensorarrayv2read_tensorlistgetitem_lstm_764_tensorarrayunstack_tensorlistfromtensorM
;lstm_764_while_lstm_cell_737_matmul_readvariableop_resource:2(O
=lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource:
(J
<lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource:(??3lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp?2lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp?4lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp?
@lstm_764/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_764/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_764_while_tensorarrayv2read_tensorlistgetitem_lstm_764_tensorarrayunstack_tensorlistfromtensor_0lstm_764_while_placeholderIlstm_764/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_764/while/lstm_cell_737/MatMul/ReadVariableOpReadVariableOp=lstm_764_while_lstm_cell_737_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_764/while/lstm_cell_737/MatMulMatMul9lstm_764/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp?lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_764/while/lstm_cell_737/MatMul_1MatMullstm_764_while_placeholder_2<lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_764/while/lstm_cell_737/addAddV2-lstm_764/while/lstm_cell_737/MatMul:product:0/lstm_764/while/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp>lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_764/while/lstm_cell_737/BiasAddBiasAdd$lstm_764/while/lstm_cell_737/add:z:0;lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_764/while/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_764/while/lstm_cell_737/splitSplit5lstm_764/while/lstm_cell_737/split/split_dim:output:0-lstm_764/while/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_764/while/lstm_cell_737/SigmoidSigmoid+lstm_764/while/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_764/while/lstm_cell_737/Sigmoid_1Sigmoid+lstm_764/while/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_764/while/lstm_cell_737/mulMul*lstm_764/while/lstm_cell_737/Sigmoid_1:y:0lstm_764_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_764/while/lstm_cell_737/ReluRelu+lstm_764/while/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_764/while/lstm_cell_737/mul_1Mul(lstm_764/while/lstm_cell_737/Sigmoid:y:0/lstm_764/while/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_764/while/lstm_cell_737/add_1AddV2$lstm_764/while/lstm_cell_737/mul:z:0&lstm_764/while/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_764/while/lstm_cell_737/Sigmoid_2Sigmoid+lstm_764/while/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_764/while/lstm_cell_737/Relu_1Relu&lstm_764/while/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_764/while/lstm_cell_737/mul_2Mul*lstm_764/while/lstm_cell_737/Sigmoid_2:y:01lstm_764/while/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_764/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_764_while_placeholder_1lstm_764_while_placeholder&lstm_764/while/lstm_cell_737/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_764/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_764/while/addAddV2lstm_764_while_placeholderlstm_764/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_764/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_764/while/add_1AddV2*lstm_764_while_lstm_764_while_loop_counterlstm_764/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_764/while/IdentityIdentitylstm_764/while/add_1:z:0^lstm_764/while/NoOp*
T0*
_output_shapes
: ?
lstm_764/while/Identity_1Identity0lstm_764_while_lstm_764_while_maximum_iterations^lstm_764/while/NoOp*
T0*
_output_shapes
: t
lstm_764/while/Identity_2Identitylstm_764/while/add:z:0^lstm_764/while/NoOp*
T0*
_output_shapes
: ?
lstm_764/while/Identity_3IdentityClstm_764/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_764/while/NoOp*
T0*
_output_shapes
: ?
lstm_764/while/Identity_4Identity&lstm_764/while/lstm_cell_737/mul_2:z:0^lstm_764/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_764/while/Identity_5Identity&lstm_764/while/lstm_cell_737/add_1:z:0^lstm_764/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_764/while/NoOpNoOp4^lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp3^lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp5^lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_764_while_identity lstm_764/while/Identity:output:0"?
lstm_764_while_identity_1"lstm_764/while/Identity_1:output:0"?
lstm_764_while_identity_2"lstm_764/while/Identity_2:output:0"?
lstm_764_while_identity_3"lstm_764/while/Identity_3:output:0"?
lstm_764_while_identity_4"lstm_764/while/Identity_4:output:0"?
lstm_764_while_identity_5"lstm_764/while/Identity_5:output:0"T
'lstm_764_while_lstm_764_strided_slice_1)lstm_764_while_lstm_764_strided_slice_1_0"~
<lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource>lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource_0"?
=lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource?lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource_0"|
;lstm_764_while_lstm_cell_737_matmul_readvariableop_resource=lstm_764_while_lstm_cell_737_matmul_readvariableop_resource_0"?
clstm_764_while_tensorarrayv2read_tensorlistgetitem_lstm_764_tensorarrayunstack_tensorlistfromtensorelstm_764_while_tensorarrayv2read_tensorlistgetitem_lstm_764_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp3lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp2h
2lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp2lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp2l
4lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp4lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_4459730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_737_4459754_0:2(/
while_lstm_cell_737_4459756_0:
(+
while_lstm_cell_737_4459758_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_737_4459754:2(-
while_lstm_cell_737_4459756:
()
while_lstm_cell_737_4459758:(??+while/lstm_cell_737/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_737/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_737_4459754_0while_lstm_cell_737_4459756_0while_lstm_cell_737_4459758_0*
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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4459671?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_737/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_737/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_737/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_737/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_737_4459754while_lstm_cell_737_4459754_0"<
while_lstm_cell_737_4459756while_lstm_cell_737_4459756_0"<
while_lstm_cell_737_4459758while_lstm_cell_737_4459758_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_737/StatefulPartitionedCall+while/lstm_cell_737/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4463260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4463260___redundant_placeholder05
1while_while_cond_4463260___redundant_placeholder15
1while_while_cond_4463260___redundant_placeholder25
1while_while_cond_4463260___redundant_placeholder3
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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4459671

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
?
?
while_cond_4459538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459538___redundant_placeholder05
1while_while_cond_4459538___redundant_placeholder15
1while_while_cond_4459538___redundant_placeholder25
1while_while_cond_4459538___redundant_placeholder3
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
?
*__inference_lstm_764_layer_call_fn_4463169
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4459608o
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
?W
?
 __inference__traced_save_4464230
file_prefix/
+savev2_dense_254_kernel_read_readvariableop-
)savev2_dense_254_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_762_lstm_cell_762_kernel_read_readvariableopF
Bsavev2_lstm_762_lstm_cell_762_recurrent_kernel_read_readvariableop:
6savev2_lstm_762_lstm_cell_762_bias_read_readvariableop<
8savev2_lstm_763_lstm_cell_763_kernel_read_readvariableopF
Bsavev2_lstm_763_lstm_cell_763_recurrent_kernel_read_readvariableop:
6savev2_lstm_763_lstm_cell_763_bias_read_readvariableop<
8savev2_lstm_764_lstm_cell_764_kernel_read_readvariableopF
Bsavev2_lstm_764_lstm_cell_764_recurrent_kernel_read_readvariableop:
6savev2_lstm_764_lstm_cell_764_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_254_kernel_m_read_readvariableop4
0savev2_adam_dense_254_bias_m_read_readvariableopC
?savev2_adam_lstm_762_lstm_cell_762_kernel_m_read_readvariableopM
Isavev2_adam_lstm_762_lstm_cell_762_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_762_lstm_cell_762_bias_m_read_readvariableopC
?savev2_adam_lstm_763_lstm_cell_763_kernel_m_read_readvariableopM
Isavev2_adam_lstm_763_lstm_cell_763_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_763_lstm_cell_763_bias_m_read_readvariableopC
?savev2_adam_lstm_764_lstm_cell_764_kernel_m_read_readvariableopM
Isavev2_adam_lstm_764_lstm_cell_764_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_764_lstm_cell_764_bias_m_read_readvariableop6
2savev2_adam_dense_254_kernel_v_read_readvariableop4
0savev2_adam_dense_254_bias_v_read_readvariableopC
?savev2_adam_lstm_762_lstm_cell_762_kernel_v_read_readvariableopM
Isavev2_adam_lstm_762_lstm_cell_762_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_762_lstm_cell_762_bias_v_read_readvariableopC
?savev2_adam_lstm_763_lstm_cell_763_kernel_v_read_readvariableopM
Isavev2_adam_lstm_763_lstm_cell_763_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_763_lstm_cell_763_bias_v_read_readvariableopC
?savev2_adam_lstm_764_lstm_cell_764_kernel_v_read_readvariableopM
Isavev2_adam_lstm_764_lstm_cell_764_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_764_lstm_cell_764_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_254_kernel_read_readvariableop)savev2_dense_254_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_762_lstm_cell_762_kernel_read_readvariableopBsavev2_lstm_762_lstm_cell_762_recurrent_kernel_read_readvariableop6savev2_lstm_762_lstm_cell_762_bias_read_readvariableop8savev2_lstm_763_lstm_cell_763_kernel_read_readvariableopBsavev2_lstm_763_lstm_cell_763_recurrent_kernel_read_readvariableop6savev2_lstm_763_lstm_cell_763_bias_read_readvariableop8savev2_lstm_764_lstm_cell_764_kernel_read_readvariableopBsavev2_lstm_764_lstm_cell_764_recurrent_kernel_read_readvariableop6savev2_lstm_764_lstm_cell_764_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_254_kernel_m_read_readvariableop0savev2_adam_dense_254_bias_m_read_readvariableop?savev2_adam_lstm_762_lstm_cell_762_kernel_m_read_readvariableopIsavev2_adam_lstm_762_lstm_cell_762_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_762_lstm_cell_762_bias_m_read_readvariableop?savev2_adam_lstm_763_lstm_cell_763_kernel_m_read_readvariableopIsavev2_adam_lstm_763_lstm_cell_763_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_763_lstm_cell_763_bias_m_read_readvariableop?savev2_adam_lstm_764_lstm_cell_764_kernel_m_read_readvariableopIsavev2_adam_lstm_764_lstm_cell_764_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_764_lstm_cell_764_bias_m_read_readvariableop2savev2_adam_dense_254_kernel_v_read_readvariableop0savev2_adam_dense_254_bias_v_read_readvariableop?savev2_adam_lstm_762_lstm_cell_762_kernel_v_read_readvariableopIsavev2_adam_lstm_762_lstm_cell_762_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_762_lstm_cell_762_bias_v_read_readvariableop?savev2_adam_lstm_763_lstm_cell_763_kernel_v_read_readvariableopIsavev2_adam_lstm_763_lstm_cell_763_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_763_lstm_cell_763_bias_v_read_readvariableop?savev2_adam_lstm_764_lstm_cell_764_kernel_v_read_readvariableopIsavev2_adam_lstm_764_lstm_cell_764_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_764_lstm_cell_764_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?J
?
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463774

inputs>
,lstm_cell_737_matmul_readvariableop_resource:2(@
.lstm_cell_737_matmul_1_readvariableop_resource:
(;
-lstm_cell_737_biasadd_readvariableop_resource:(
identity??$lstm_cell_737/BiasAdd/ReadVariableOp?#lstm_cell_737/MatMul/ReadVariableOp?%lstm_cell_737/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_737/MatMul/ReadVariableOpReadVariableOp,lstm_cell_737_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_737/MatMulMatMulstrided_slice_2:output:0+lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_737_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_737/MatMul_1MatMulzeros:output:0-lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_737/addAddV2lstm_cell_737/MatMul:product:0 lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_737_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_737/BiasAddBiasAddlstm_cell_737/add:z:0,lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_737/splitSplit&lstm_cell_737/split/split_dim:output:0lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_737/SigmoidSigmoidlstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_1Sigmoidlstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_737/mulMullstm_cell_737/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_737/ReluRelulstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_1Mullstm_cell_737/Sigmoid:y:0 lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_737/add_1AddV2lstm_cell_737/mul:z:0lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_2Sigmoidlstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_737/Relu_1Relulstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_2Mullstm_cell_737/Sigmoid_2:y:0"lstm_cell_737/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_737_matmul_readvariableop_resource.lstm_cell_737_matmul_1_readvariableop_resource-lstm_cell_737_biasadd_readvariableop_resource*
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
while_body_4463690*
condR
while_cond_4463689*K
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
NoOpNoOp%^lstm_cell_737/BiasAdd/ReadVariableOp$^lstm_cell_737/MatMul/ReadVariableOp&^lstm_cell_737/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_737/BiasAdd/ReadVariableOp$lstm_cell_737/BiasAdd/ReadVariableOp2J
#lstm_cell_737/MatMul/ReadVariableOp#lstm_cell_737/MatMul/ReadVariableOp2N
%lstm_cell_737/MatMul_1/ReadVariableOp%lstm_cell_737/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_735_layer_call_fn_4463810

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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4458825o
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
?C
?

lstm_762_while_body_4461558.
*lstm_762_while_lstm_762_while_loop_counter4
0lstm_762_while_lstm_762_while_maximum_iterations
lstm_762_while_placeholder 
lstm_762_while_placeholder_1 
lstm_762_while_placeholder_2 
lstm_762_while_placeholder_3-
)lstm_762_while_lstm_762_strided_slice_1_0i
elstm_762_while_tensorarrayv2read_tensorlistgetitem_lstm_762_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_762_while_lstm_cell_735_matmul_readvariableop_resource_0:	?R
?lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource_0:	d?M
>lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource_0:	?
lstm_762_while_identity
lstm_762_while_identity_1
lstm_762_while_identity_2
lstm_762_while_identity_3
lstm_762_while_identity_4
lstm_762_while_identity_5+
'lstm_762_while_lstm_762_strided_slice_1g
clstm_762_while_tensorarrayv2read_tensorlistgetitem_lstm_762_tensorarrayunstack_tensorlistfromtensorN
;lstm_762_while_lstm_cell_735_matmul_readvariableop_resource:	?P
=lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource:	d?K
<lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource:	???3lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp?2lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp?4lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp?
@lstm_762/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_762/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_762_while_tensorarrayv2read_tensorlistgetitem_lstm_762_tensorarrayunstack_tensorlistfromtensor_0lstm_762_while_placeholderIlstm_762/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_762/while/lstm_cell_735/MatMul/ReadVariableOpReadVariableOp=lstm_762_while_lstm_cell_735_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_762/while/lstm_cell_735/MatMulMatMul9lstm_762/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp?lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_762/while/lstm_cell_735/MatMul_1MatMullstm_762_while_placeholder_2<lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_762/while/lstm_cell_735/addAddV2-lstm_762/while/lstm_cell_735/MatMul:product:0/lstm_762/while/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp>lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_762/while/lstm_cell_735/BiasAddBiasAdd$lstm_762/while/lstm_cell_735/add:z:0;lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_762/while/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_762/while/lstm_cell_735/splitSplit5lstm_762/while/lstm_cell_735/split/split_dim:output:0-lstm_762/while/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_762/while/lstm_cell_735/SigmoidSigmoid+lstm_762/while/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_762/while/lstm_cell_735/Sigmoid_1Sigmoid+lstm_762/while/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_762/while/lstm_cell_735/mulMul*lstm_762/while/lstm_cell_735/Sigmoid_1:y:0lstm_762_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_762/while/lstm_cell_735/ReluRelu+lstm_762/while/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_762/while/lstm_cell_735/mul_1Mul(lstm_762/while/lstm_cell_735/Sigmoid:y:0/lstm_762/while/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_762/while/lstm_cell_735/add_1AddV2$lstm_762/while/lstm_cell_735/mul:z:0&lstm_762/while/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_762/while/lstm_cell_735/Sigmoid_2Sigmoid+lstm_762/while/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_762/while/lstm_cell_735/Relu_1Relu&lstm_762/while/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_762/while/lstm_cell_735/mul_2Mul*lstm_762/while/lstm_cell_735/Sigmoid_2:y:01lstm_762/while/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_762/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_762_while_placeholder_1lstm_762_while_placeholder&lstm_762/while/lstm_cell_735/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_762/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_762/while/addAddV2lstm_762_while_placeholderlstm_762/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_762/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_762/while/add_1AddV2*lstm_762_while_lstm_762_while_loop_counterlstm_762/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_762/while/IdentityIdentitylstm_762/while/add_1:z:0^lstm_762/while/NoOp*
T0*
_output_shapes
: ?
lstm_762/while/Identity_1Identity0lstm_762_while_lstm_762_while_maximum_iterations^lstm_762/while/NoOp*
T0*
_output_shapes
: t
lstm_762/while/Identity_2Identitylstm_762/while/add:z:0^lstm_762/while/NoOp*
T0*
_output_shapes
: ?
lstm_762/while/Identity_3IdentityClstm_762/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_762/while/NoOp*
T0*
_output_shapes
: ?
lstm_762/while/Identity_4Identity&lstm_762/while/lstm_cell_735/mul_2:z:0^lstm_762/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_762/while/Identity_5Identity&lstm_762/while/lstm_cell_735/add_1:z:0^lstm_762/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_762/while/NoOpNoOp4^lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp3^lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp5^lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_762_while_identity lstm_762/while/Identity:output:0"?
lstm_762_while_identity_1"lstm_762/while/Identity_1:output:0"?
lstm_762_while_identity_2"lstm_762/while/Identity_2:output:0"?
lstm_762_while_identity_3"lstm_762/while/Identity_3:output:0"?
lstm_762_while_identity_4"lstm_762/while/Identity_4:output:0"?
lstm_762_while_identity_5"lstm_762/while/Identity_5:output:0"T
'lstm_762_while_lstm_762_strided_slice_1)lstm_762_while_lstm_762_strided_slice_1_0"~
<lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource>lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource_0"?
=lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource?lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource_0"|
;lstm_762_while_lstm_cell_735_matmul_readvariableop_resource=lstm_762_while_lstm_cell_735_matmul_readvariableop_resource_0"?
clstm_762_while_tensorarrayv2read_tensorlistgetitem_lstm_762_tensorarrayunstack_tensorlistfromtensorelstm_762_while_tensorarrayv2read_tensorlistgetitem_lstm_762_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp3lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp2h
2lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp2lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp2l
4lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp4lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_4458839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_735_4458863_0:	?0
while_lstm_cell_735_4458865_0:	d?,
while_lstm_cell_735_4458867_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_735_4458863:	?.
while_lstm_cell_735_4458865:	d?*
while_lstm_cell_735_4458867:	???+while/lstm_cell_735/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_735/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_735_4458863_0while_lstm_cell_735_4458865_0while_lstm_cell_735_4458867_0*
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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4458825?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_735/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_735/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_735/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_735/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_735_4458863while_lstm_cell_735_4458863_0"<
while_lstm_cell_735_4458865while_lstm_cell_735_4458865_0"<
while_lstm_cell_735_4458867while_lstm_cell_735_4458867_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_735/StatefulPartitionedCall+while/lstm_cell_735/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_762_while_cond_4461130.
*lstm_762_while_lstm_762_while_loop_counter4
0lstm_762_while_lstm_762_while_maximum_iterations
lstm_762_while_placeholder 
lstm_762_while_placeholder_1 
lstm_762_while_placeholder_2 
lstm_762_while_placeholder_30
,lstm_762_while_less_lstm_762_strided_slice_1G
Clstm_762_while_lstm_762_while_cond_4461130___redundant_placeholder0G
Clstm_762_while_lstm_762_while_cond_4461130___redundant_placeholder1G
Clstm_762_while_lstm_762_while_cond_4461130___redundant_placeholder2G
Clstm_762_while_lstm_762_while_cond_4461130___redundant_placeholder3
lstm_762_while_identity
?
lstm_762/while/LessLesslstm_762_while_placeholder,lstm_762_while_less_lstm_762_strided_slice_1*
T0*
_output_shapes
: ]
lstm_762/while/IdentityIdentitylstm_762/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_762_while_identity lstm_762/while/Identity:output:0*(
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
?
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460871

inputs#
lstm_762_4460844:	?#
lstm_762_4460846:	d?
lstm_762_4460848:	?#
lstm_763_4460851:	d?#
lstm_763_4460853:	2?
lstm_763_4460855:	?"
lstm_764_4460858:2("
lstm_764_4460860:
(
lstm_764_4460862:(#
dense_254_4460865:

dense_254_4460867:
identity??!dense_254/StatefulPartitionedCall? lstm_762/StatefulPartitionedCall? lstm_763/StatefulPartitionedCall? lstm_764/StatefulPartitionedCall?
 lstm_762/StatefulPartitionedCallStatefulPartitionedCallinputslstm_762_4460844lstm_762_4460846lstm_762_4460848*
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4460803?
 lstm_763/StatefulPartitionedCallStatefulPartitionedCall)lstm_762/StatefulPartitionedCall:output:0lstm_763_4460851lstm_763_4460853lstm_763_4460855*
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4460638?
 lstm_764/StatefulPartitionedCallStatefulPartitionedCall)lstm_763/StatefulPartitionedCall:output:0lstm_764_4460858lstm_764_4460860lstm_764_4460862*
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4460473?
!dense_254/StatefulPartitionedCallStatefulPartitionedCall)lstm_764/StatefulPartitionedCall:output:0dense_254_4460865dense_254_4460867*
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
F__inference_dense_254_layer_call_and_return_conditional_losses_4460275y
IdentityIdentity*dense_254/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_254/StatefulPartitionedCall!^lstm_762/StatefulPartitionedCall!^lstm_763/StatefulPartitionedCall!^lstm_764/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_254/StatefulPartitionedCall!dense_254/StatefulPartitionedCall2D
 lstm_762/StatefulPartitionedCall lstm_762/StatefulPartitionedCall2D
 lstm_763/StatefulPartitionedCall lstm_763/StatefulPartitionedCall2D
 lstm_764/StatefulPartitionedCall lstm_764/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_763_layer_call_and_return_conditional_losses_4460638

inputs?
,lstm_cell_736_matmul_readvariableop_resource:	d?A
.lstm_cell_736_matmul_1_readvariableop_resource:	2?<
-lstm_cell_736_biasadd_readvariableop_resource:	?
identity??$lstm_cell_736/BiasAdd/ReadVariableOp?#lstm_cell_736/MatMul/ReadVariableOp?%lstm_cell_736/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_736/MatMul/ReadVariableOpReadVariableOp,lstm_cell_736_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_736/MatMulMatMulstrided_slice_2:output:0+lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_736_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_736/MatMul_1MatMulzeros:output:0-lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_736/addAddV2lstm_cell_736/MatMul:product:0 lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_736_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_736/BiasAddBiasAddlstm_cell_736/add:z:0,lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_736/splitSplit&lstm_cell_736/split/split_dim:output:0lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_736/SigmoidSigmoidlstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_1Sigmoidlstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_736/mulMullstm_cell_736/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_736/ReluRelulstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_1Mullstm_cell_736/Sigmoid:y:0 lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_736/add_1AddV2lstm_cell_736/mul:z:0lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_2Sigmoidlstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_736/Relu_1Relulstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_2Mullstm_cell_736/Sigmoid_2:y:0"lstm_cell_736/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_736_matmul_readvariableop_resource.lstm_cell_736_matmul_1_readvariableop_resource-lstm_cell_736_biasadd_readvariableop_resource*
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
while_body_4460554*
condR
while_cond_4460553*K
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
NoOpNoOp%^lstm_cell_736/BiasAdd/ReadVariableOp$^lstm_cell_736/MatMul/ReadVariableOp&^lstm_cell_736/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_736/BiasAdd/ReadVariableOp$lstm_cell_736/BiasAdd/ReadVariableOp2J
#lstm_cell_736/MatMul/ReadVariableOp#lstm_cell_736/MatMul/ReadVariableOp2N
%lstm_cell_736/MatMul_1/ReadVariableOp%lstm_cell_736/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_762_layer_call_and_return_conditional_losses_4459099

inputs(
lstm_cell_735_4459017:	?(
lstm_cell_735_4459019:	d?$
lstm_cell_735_4459021:	?
identity??%lstm_cell_735/StatefulPartitionedCall?while;
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
%lstm_cell_735/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_735_4459017lstm_cell_735_4459019lstm_cell_735_4459021*
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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4458971n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_735_4459017lstm_cell_735_4459019lstm_cell_735_4459021*
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
while_body_4459030*
condR
while_cond_4459029*K
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
NoOpNoOp&^lstm_cell_735/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_735/StatefulPartitionedCall%lstm_cell_735/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_762_layer_call_and_return_conditional_losses_4458908

inputs(
lstm_cell_735_4458826:	?(
lstm_cell_735_4458828:	d?$
lstm_cell_735_4458830:	?
identity??%lstm_cell_735/StatefulPartitionedCall?while;
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
%lstm_cell_735/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_735_4458826lstm_cell_735_4458828lstm_cell_735_4458830*
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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4458825n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_735_4458826lstm_cell_735_4458828lstm_cell_735_4458830*
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
while_body_4458839*
condR
while_cond_4458838*K
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
NoOpNoOp&^lstm_cell_735/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_735/StatefulPartitionedCall%lstm_cell_735/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_763_layer_call_fn_4462586

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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4460638s
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
?

?
lstm_764_while_cond_4461408.
*lstm_764_while_lstm_764_while_loop_counter4
0lstm_764_while_lstm_764_while_maximum_iterations
lstm_764_while_placeholder 
lstm_764_while_placeholder_1 
lstm_764_while_placeholder_2 
lstm_764_while_placeholder_30
,lstm_764_while_less_lstm_764_strided_slice_1G
Clstm_764_while_lstm_764_while_cond_4461408___redundant_placeholder0G
Clstm_764_while_lstm_764_while_cond_4461408___redundant_placeholder1G
Clstm_764_while_lstm_764_while_cond_4461408___redundant_placeholder2G
Clstm_764_while_lstm_764_while_cond_4461408___redundant_placeholder3
lstm_764_while_identity
?
lstm_764/while/LessLesslstm_764_while_placeholder,lstm_764_while_less_lstm_764_strided_slice_1*
T0*
_output_shapes
: ]
lstm_764/while/IdentityIdentitylstm_764/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_764_while_identity lstm_764/while/Identity:output:0*(
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
K__inference_sequential_254_layer_call_and_return_conditional_losses_4461926

inputsH
5lstm_762_lstm_cell_735_matmul_readvariableop_resource:	?J
7lstm_762_lstm_cell_735_matmul_1_readvariableop_resource:	d?E
6lstm_762_lstm_cell_735_biasadd_readvariableop_resource:	?H
5lstm_763_lstm_cell_736_matmul_readvariableop_resource:	d?J
7lstm_763_lstm_cell_736_matmul_1_readvariableop_resource:	2?E
6lstm_763_lstm_cell_736_biasadd_readvariableop_resource:	?G
5lstm_764_lstm_cell_737_matmul_readvariableop_resource:2(I
7lstm_764_lstm_cell_737_matmul_1_readvariableop_resource:
(D
6lstm_764_lstm_cell_737_biasadd_readvariableop_resource:(:
(dense_254_matmul_readvariableop_resource:
7
)dense_254_biasadd_readvariableop_resource:
identity?? dense_254/BiasAdd/ReadVariableOp?dense_254/MatMul/ReadVariableOp?-lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp?,lstm_762/lstm_cell_735/MatMul/ReadVariableOp?.lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp?lstm_762/while?-lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp?,lstm_763/lstm_cell_736/MatMul/ReadVariableOp?.lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp?lstm_763/while?-lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp?,lstm_764/lstm_cell_737/MatMul/ReadVariableOp?.lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp?lstm_764/whileD
lstm_762/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_762/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_762/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_762/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_762/strided_sliceStridedSlicelstm_762/Shape:output:0%lstm_762/strided_slice/stack:output:0'lstm_762/strided_slice/stack_1:output:0'lstm_762/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_762/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_762/zeros/packedPacklstm_762/strided_slice:output:0 lstm_762/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_762/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_762/zerosFilllstm_762/zeros/packed:output:0lstm_762/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_762/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_762/zeros_1/packedPacklstm_762/strided_slice:output:0"lstm_762/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_762/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_762/zeros_1Fill lstm_762/zeros_1/packed:output:0lstm_762/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_762/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_762/transpose	Transposeinputs lstm_762/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_762/Shape_1Shapelstm_762/transpose:y:0*
T0*
_output_shapes
:h
lstm_762/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_762/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_762/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_762/strided_slice_1StridedSlicelstm_762/Shape_1:output:0'lstm_762/strided_slice_1/stack:output:0)lstm_762/strided_slice_1/stack_1:output:0)lstm_762/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_762/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_762/TensorArrayV2TensorListReserve-lstm_762/TensorArrayV2/element_shape:output:0!lstm_762/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_762/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_762/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_762/transpose:y:0Glstm_762/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_762/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_762/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_762/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_762/strided_slice_2StridedSlicelstm_762/transpose:y:0'lstm_762/strided_slice_2/stack:output:0)lstm_762/strided_slice_2/stack_1:output:0)lstm_762/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_762/lstm_cell_735/MatMul/ReadVariableOpReadVariableOp5lstm_762_lstm_cell_735_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_762/lstm_cell_735/MatMulMatMul!lstm_762/strided_slice_2:output:04lstm_762/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_762/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp7lstm_762_lstm_cell_735_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_762/lstm_cell_735/MatMul_1MatMullstm_762/zeros:output:06lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_762/lstm_cell_735/addAddV2'lstm_762/lstm_cell_735/MatMul:product:0)lstm_762/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_762/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp6lstm_762_lstm_cell_735_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_762/lstm_cell_735/BiasAddBiasAddlstm_762/lstm_cell_735/add:z:05lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_762/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_762/lstm_cell_735/splitSplit/lstm_762/lstm_cell_735/split/split_dim:output:0'lstm_762/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_762/lstm_cell_735/SigmoidSigmoid%lstm_762/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_762/lstm_cell_735/Sigmoid_1Sigmoid%lstm_762/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_762/lstm_cell_735/mulMul$lstm_762/lstm_cell_735/Sigmoid_1:y:0lstm_762/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_762/lstm_cell_735/ReluRelu%lstm_762/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_762/lstm_cell_735/mul_1Mul"lstm_762/lstm_cell_735/Sigmoid:y:0)lstm_762/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_762/lstm_cell_735/add_1AddV2lstm_762/lstm_cell_735/mul:z:0 lstm_762/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_762/lstm_cell_735/Sigmoid_2Sigmoid%lstm_762/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_762/lstm_cell_735/Relu_1Relu lstm_762/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_762/lstm_cell_735/mul_2Mul$lstm_762/lstm_cell_735/Sigmoid_2:y:0+lstm_762/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_762/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_762/TensorArrayV2_1TensorListReserve/lstm_762/TensorArrayV2_1/element_shape:output:0!lstm_762/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_762/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_762/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_762/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_762/whileWhile$lstm_762/while/loop_counter:output:0*lstm_762/while/maximum_iterations:output:0lstm_762/time:output:0!lstm_762/TensorArrayV2_1:handle:0lstm_762/zeros:output:0lstm_762/zeros_1:output:0!lstm_762/strided_slice_1:output:0@lstm_762/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_762_lstm_cell_735_matmul_readvariableop_resource7lstm_762_lstm_cell_735_matmul_1_readvariableop_resource6lstm_762_lstm_cell_735_biasadd_readvariableop_resource*
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
lstm_762_while_body_4461558*'
condR
lstm_762_while_cond_4461557*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_762/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_762/TensorArrayV2Stack/TensorListStackTensorListStacklstm_762/while:output:3Blstm_762/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_762/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_762/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_762/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_762/strided_slice_3StridedSlice4lstm_762/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_762/strided_slice_3/stack:output:0)lstm_762/strided_slice_3/stack_1:output:0)lstm_762/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_762/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_762/transpose_1	Transpose4lstm_762/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_762/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_762/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_763/ShapeShapelstm_762/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_763/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_763/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_763/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_763/strided_sliceStridedSlicelstm_763/Shape:output:0%lstm_763/strided_slice/stack:output:0'lstm_763/strided_slice/stack_1:output:0'lstm_763/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_763/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_763/zeros/packedPacklstm_763/strided_slice:output:0 lstm_763/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_763/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_763/zerosFilllstm_763/zeros/packed:output:0lstm_763/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_763/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_763/zeros_1/packedPacklstm_763/strided_slice:output:0"lstm_763/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_763/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_763/zeros_1Fill lstm_763/zeros_1/packed:output:0lstm_763/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_763/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_763/transpose	Transposelstm_762/transpose_1:y:0 lstm_763/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_763/Shape_1Shapelstm_763/transpose:y:0*
T0*
_output_shapes
:h
lstm_763/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_763/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_763/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_763/strided_slice_1StridedSlicelstm_763/Shape_1:output:0'lstm_763/strided_slice_1/stack:output:0)lstm_763/strided_slice_1/stack_1:output:0)lstm_763/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_763/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_763/TensorArrayV2TensorListReserve-lstm_763/TensorArrayV2/element_shape:output:0!lstm_763/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_763/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_763/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_763/transpose:y:0Glstm_763/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_763/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_763/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_763/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_763/strided_slice_2StridedSlicelstm_763/transpose:y:0'lstm_763/strided_slice_2/stack:output:0)lstm_763/strided_slice_2/stack_1:output:0)lstm_763/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_763/lstm_cell_736/MatMul/ReadVariableOpReadVariableOp5lstm_763_lstm_cell_736_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_763/lstm_cell_736/MatMulMatMul!lstm_763/strided_slice_2:output:04lstm_763/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_763/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp7lstm_763_lstm_cell_736_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_763/lstm_cell_736/MatMul_1MatMullstm_763/zeros:output:06lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_763/lstm_cell_736/addAddV2'lstm_763/lstm_cell_736/MatMul:product:0)lstm_763/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_763/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp6lstm_763_lstm_cell_736_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_763/lstm_cell_736/BiasAddBiasAddlstm_763/lstm_cell_736/add:z:05lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_763/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_763/lstm_cell_736/splitSplit/lstm_763/lstm_cell_736/split/split_dim:output:0'lstm_763/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_763/lstm_cell_736/SigmoidSigmoid%lstm_763/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_763/lstm_cell_736/Sigmoid_1Sigmoid%lstm_763/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_763/lstm_cell_736/mulMul$lstm_763/lstm_cell_736/Sigmoid_1:y:0lstm_763/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_763/lstm_cell_736/ReluRelu%lstm_763/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_763/lstm_cell_736/mul_1Mul"lstm_763/lstm_cell_736/Sigmoid:y:0)lstm_763/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_763/lstm_cell_736/add_1AddV2lstm_763/lstm_cell_736/mul:z:0 lstm_763/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_763/lstm_cell_736/Sigmoid_2Sigmoid%lstm_763/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_763/lstm_cell_736/Relu_1Relu lstm_763/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_763/lstm_cell_736/mul_2Mul$lstm_763/lstm_cell_736/Sigmoid_2:y:0+lstm_763/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_763/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_763/TensorArrayV2_1TensorListReserve/lstm_763/TensorArrayV2_1/element_shape:output:0!lstm_763/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_763/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_763/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_763/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_763/whileWhile$lstm_763/while/loop_counter:output:0*lstm_763/while/maximum_iterations:output:0lstm_763/time:output:0!lstm_763/TensorArrayV2_1:handle:0lstm_763/zeros:output:0lstm_763/zeros_1:output:0!lstm_763/strided_slice_1:output:0@lstm_763/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_763_lstm_cell_736_matmul_readvariableop_resource7lstm_763_lstm_cell_736_matmul_1_readvariableop_resource6lstm_763_lstm_cell_736_biasadd_readvariableop_resource*
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
lstm_763_while_body_4461697*'
condR
lstm_763_while_cond_4461696*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_763/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_763/TensorArrayV2Stack/TensorListStackTensorListStacklstm_763/while:output:3Blstm_763/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_763/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_763/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_763/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_763/strided_slice_3StridedSlice4lstm_763/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_763/strided_slice_3/stack:output:0)lstm_763/strided_slice_3/stack_1:output:0)lstm_763/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_763/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_763/transpose_1	Transpose4lstm_763/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_763/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_763/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_764/ShapeShapelstm_763/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_764/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_764/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_764/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_764/strided_sliceStridedSlicelstm_764/Shape:output:0%lstm_764/strided_slice/stack:output:0'lstm_764/strided_slice/stack_1:output:0'lstm_764/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_764/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_764/zeros/packedPacklstm_764/strided_slice:output:0 lstm_764/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_764/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_764/zerosFilllstm_764/zeros/packed:output:0lstm_764/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_764/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_764/zeros_1/packedPacklstm_764/strided_slice:output:0"lstm_764/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_764/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_764/zeros_1Fill lstm_764/zeros_1/packed:output:0lstm_764/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_764/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_764/transpose	Transposelstm_763/transpose_1:y:0 lstm_764/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_764/Shape_1Shapelstm_764/transpose:y:0*
T0*
_output_shapes
:h
lstm_764/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_764/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_764/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_764/strided_slice_1StridedSlicelstm_764/Shape_1:output:0'lstm_764/strided_slice_1/stack:output:0)lstm_764/strided_slice_1/stack_1:output:0)lstm_764/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_764/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_764/TensorArrayV2TensorListReserve-lstm_764/TensorArrayV2/element_shape:output:0!lstm_764/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_764/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_764/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_764/transpose:y:0Glstm_764/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_764/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_764/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_764/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_764/strided_slice_2StridedSlicelstm_764/transpose:y:0'lstm_764/strided_slice_2/stack:output:0)lstm_764/strided_slice_2/stack_1:output:0)lstm_764/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_764/lstm_cell_737/MatMul/ReadVariableOpReadVariableOp5lstm_764_lstm_cell_737_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_764/lstm_cell_737/MatMulMatMul!lstm_764/strided_slice_2:output:04lstm_764/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_764/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp7lstm_764_lstm_cell_737_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_764/lstm_cell_737/MatMul_1MatMullstm_764/zeros:output:06lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_764/lstm_cell_737/addAddV2'lstm_764/lstm_cell_737/MatMul:product:0)lstm_764/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_764/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp6lstm_764_lstm_cell_737_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_764/lstm_cell_737/BiasAddBiasAddlstm_764/lstm_cell_737/add:z:05lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_764/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_764/lstm_cell_737/splitSplit/lstm_764/lstm_cell_737/split/split_dim:output:0'lstm_764/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_764/lstm_cell_737/SigmoidSigmoid%lstm_764/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_764/lstm_cell_737/Sigmoid_1Sigmoid%lstm_764/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_764/lstm_cell_737/mulMul$lstm_764/lstm_cell_737/Sigmoid_1:y:0lstm_764/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_764/lstm_cell_737/ReluRelu%lstm_764/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_764/lstm_cell_737/mul_1Mul"lstm_764/lstm_cell_737/Sigmoid:y:0)lstm_764/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_764/lstm_cell_737/add_1AddV2lstm_764/lstm_cell_737/mul:z:0 lstm_764/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_764/lstm_cell_737/Sigmoid_2Sigmoid%lstm_764/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_764/lstm_cell_737/Relu_1Relu lstm_764/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_764/lstm_cell_737/mul_2Mul$lstm_764/lstm_cell_737/Sigmoid_2:y:0+lstm_764/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_764/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_764/TensorArrayV2_1TensorListReserve/lstm_764/TensorArrayV2_1/element_shape:output:0!lstm_764/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_764/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_764/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_764/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_764/whileWhile$lstm_764/while/loop_counter:output:0*lstm_764/while/maximum_iterations:output:0lstm_764/time:output:0!lstm_764/TensorArrayV2_1:handle:0lstm_764/zeros:output:0lstm_764/zeros_1:output:0!lstm_764/strided_slice_1:output:0@lstm_764/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_764_lstm_cell_737_matmul_readvariableop_resource7lstm_764_lstm_cell_737_matmul_1_readvariableop_resource6lstm_764_lstm_cell_737_biasadd_readvariableop_resource*
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
lstm_764_while_body_4461836*'
condR
lstm_764_while_cond_4461835*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_764/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_764/TensorArrayV2Stack/TensorListStackTensorListStacklstm_764/while:output:3Blstm_764/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_764/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_764/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_764/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_764/strided_slice_3StridedSlice4lstm_764/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_764/strided_slice_3/stack:output:0)lstm_764/strided_slice_3/stack_1:output:0)lstm_764/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_764/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_764/transpose_1	Transpose4lstm_764/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_764/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_764/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_254/MatMul/ReadVariableOpReadVariableOp(dense_254_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_254/MatMulMatMul!lstm_764/strided_slice_3:output:0'dense_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_254/BiasAdd/ReadVariableOpReadVariableOp)dense_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_254/BiasAddBiasAdddense_254/MatMul:product:0(dense_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_254/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_254/BiasAdd/ReadVariableOp ^dense_254/MatMul/ReadVariableOp.^lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp-^lstm_762/lstm_cell_735/MatMul/ReadVariableOp/^lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp^lstm_762/while.^lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp-^lstm_763/lstm_cell_736/MatMul/ReadVariableOp/^lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp^lstm_763/while.^lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp-^lstm_764/lstm_cell_737/MatMul/ReadVariableOp/^lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp^lstm_764/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_254/BiasAdd/ReadVariableOp dense_254/BiasAdd/ReadVariableOp2B
dense_254/MatMul/ReadVariableOpdense_254/MatMul/ReadVariableOp2^
-lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp-lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp2\
,lstm_762/lstm_cell_735/MatMul/ReadVariableOp,lstm_762/lstm_cell_735/MatMul/ReadVariableOp2`
.lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp.lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp2 
lstm_762/whilelstm_762/while2^
-lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp-lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp2\
,lstm_763/lstm_cell_736/MatMul/ReadVariableOp,lstm_763/lstm_cell_736/MatMul/ReadVariableOp2`
.lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp.lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp2 
lstm_763/whilelstm_763/while2^
-lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp-lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp2\
,lstm_764/lstm_cell_737/MatMul/ReadVariableOp,lstm_764/lstm_cell_737/MatMul/ReadVariableOp2`
.lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp.lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp2 
lstm_764/whilelstm_764/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4462029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_735_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_735_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_735_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_735_matmul_readvariableop_resource:	?G
4while_lstm_cell_735_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_735_biasadd_readvariableop_resource:	???*while/lstm_cell_735/BiasAdd/ReadVariableOp?)while/lstm_cell_735/MatMul/ReadVariableOp?+while/lstm_cell_735/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_735/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_735_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_735/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_735_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_735/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_735/addAddV2$while/lstm_cell_735/MatMul:product:0&while/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_735_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_735/BiasAddBiasAddwhile/lstm_cell_735/add:z:02while/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_735/splitSplit,while/lstm_cell_735/split/split_dim:output:0$while/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_735/SigmoidSigmoid"while/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_1Sigmoid"while/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mulMul!while/lstm_cell_735/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_735/ReluRelu"while/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_1Mulwhile/lstm_cell_735/Sigmoid:y:0&while/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/add_1AddV2while/lstm_cell_735/mul:z:0while/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_2Sigmoid"while/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_735/Relu_1Reluwhile/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_2Mul!while/lstm_cell_735/Sigmoid_2:y:0(while/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_735/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_735/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_735/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_735/BiasAdd/ReadVariableOp*^while/lstm_cell_735/MatMul/ReadVariableOp,^while/lstm_cell_735/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_735_biasadd_readvariableop_resource5while_lstm_cell_735_biasadd_readvariableop_resource_0"n
4while_lstm_cell_735_matmul_1_readvariableop_resource6while_lstm_cell_735_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_735_matmul_readvariableop_resource4while_lstm_cell_735_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_735/BiasAdd/ReadVariableOp*while/lstm_cell_735/BiasAdd/ReadVariableOp2V
)while/lstm_cell_735/MatMul/ReadVariableOp)while/lstm_cell_735/MatMul/ReadVariableOp2Z
+while/lstm_cell_735/MatMul_1/ReadVariableOp+while/lstm_cell_735/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462113
inputs_0?
,lstm_cell_735_matmul_readvariableop_resource:	?A
.lstm_cell_735_matmul_1_readvariableop_resource:	d?<
-lstm_cell_735_biasadd_readvariableop_resource:	?
identity??$lstm_cell_735/BiasAdd/ReadVariableOp?#lstm_cell_735/MatMul/ReadVariableOp?%lstm_cell_735/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_735/MatMul/ReadVariableOpReadVariableOp,lstm_cell_735_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_735/MatMulMatMulstrided_slice_2:output:0+lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_735_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_735/MatMul_1MatMulzeros:output:0-lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_735/addAddV2lstm_cell_735/MatMul:product:0 lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_735_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_735/BiasAddBiasAddlstm_cell_735/add:z:0,lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_735/splitSplit&lstm_cell_735/split/split_dim:output:0lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_735/SigmoidSigmoidlstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_1Sigmoidlstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_735/mulMullstm_cell_735/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_735/ReluRelulstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_1Mullstm_cell_735/Sigmoid:y:0 lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_735/add_1AddV2lstm_cell_735/mul:z:0lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_2Sigmoidlstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_735/Relu_1Relulstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_2Mullstm_cell_735/Sigmoid_2:y:0"lstm_cell_735/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_735_matmul_readvariableop_resource.lstm_cell_735_matmul_1_readvariableop_resource-lstm_cell_735_biasadd_readvariableop_resource*
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
while_body_4462029*
condR
while_cond_4462028*K
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
NoOpNoOp%^lstm_cell_735/BiasAdd/ReadVariableOp$^lstm_cell_735/MatMul/ReadVariableOp&^lstm_cell_735/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_735/BiasAdd/ReadVariableOp$lstm_cell_735/BiasAdd/ReadVariableOp2J
#lstm_cell_735/MatMul/ReadVariableOp#lstm_cell_735/MatMul/ReadVariableOp2N
%lstm_cell_735/MatMul_1/ReadVariableOp%lstm_cell_735/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4464087

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

?
%__inference_signature_wrapper_4461018
lstm_762_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_762_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4458758o
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
_user_specified_namelstm_762_input
?
?
while_cond_4459872
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459872___redundant_placeholder05
1while_while_cond_4459872___redundant_placeholder15
1while_while_cond_4459872___redundant_placeholder25
1while_while_cond_4459872___redundant_placeholder3
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
?
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460282

inputs#
lstm_762_4459958:	?#
lstm_762_4459960:	d?
lstm_762_4459962:	?#
lstm_763_4460108:	d?#
lstm_763_4460110:	2?
lstm_763_4460112:	?"
lstm_764_4460258:2("
lstm_764_4460260:
(
lstm_764_4460262:(#
dense_254_4460276:

dense_254_4460278:
identity??!dense_254/StatefulPartitionedCall? lstm_762/StatefulPartitionedCall? lstm_763/StatefulPartitionedCall? lstm_764/StatefulPartitionedCall?
 lstm_762/StatefulPartitionedCallStatefulPartitionedCallinputslstm_762_4459958lstm_762_4459960lstm_762_4459962*
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4459957?
 lstm_763/StatefulPartitionedCallStatefulPartitionedCall)lstm_762/StatefulPartitionedCall:output:0lstm_763_4460108lstm_763_4460110lstm_763_4460112*
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4460107?
 lstm_764/StatefulPartitionedCallStatefulPartitionedCall)lstm_763/StatefulPartitionedCall:output:0lstm_764_4460258lstm_764_4460260lstm_764_4460262*
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4460257?
!dense_254/StatefulPartitionedCallStatefulPartitionedCall)lstm_764/StatefulPartitionedCall:output:0dense_254_4460276dense_254_4460278*
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
F__inference_dense_254_layer_call_and_return_conditional_losses_4460275y
IdentityIdentity*dense_254/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_254/StatefulPartitionedCall!^lstm_762/StatefulPartitionedCall!^lstm_763/StatefulPartitionedCall!^lstm_764/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_254/StatefulPartitionedCall!dense_254/StatefulPartitionedCall2D
 lstm_762/StatefulPartitionedCall lstm_762/StatefulPartitionedCall2D
 lstm_763/StatefulPartitionedCall lstm_763/StatefulPartitionedCall2D
 lstm_764/StatefulPartitionedCall lstm_764/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_762_layer_call_and_return_conditional_losses_4460803

inputs?
,lstm_cell_735_matmul_readvariableop_resource:	?A
.lstm_cell_735_matmul_1_readvariableop_resource:	d?<
-lstm_cell_735_biasadd_readvariableop_resource:	?
identity??$lstm_cell_735/BiasAdd/ReadVariableOp?#lstm_cell_735/MatMul/ReadVariableOp?%lstm_cell_735/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_735/MatMul/ReadVariableOpReadVariableOp,lstm_cell_735_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_735/MatMulMatMulstrided_slice_2:output:0+lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_735_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_735/MatMul_1MatMulzeros:output:0-lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_735/addAddV2lstm_cell_735/MatMul:product:0 lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_735_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_735/BiasAddBiasAddlstm_cell_735/add:z:0,lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_735/splitSplit&lstm_cell_735/split/split_dim:output:0lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_735/SigmoidSigmoidlstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_1Sigmoidlstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_735/mulMullstm_cell_735/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_735/ReluRelulstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_1Mullstm_cell_735/Sigmoid:y:0 lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_735/add_1AddV2lstm_cell_735/mul:z:0lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_2Sigmoidlstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_735/Relu_1Relulstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_2Mullstm_cell_735/Sigmoid_2:y:0"lstm_cell_735/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_735_matmul_readvariableop_resource.lstm_cell_735_matmul_1_readvariableop_resource-lstm_cell_735_biasadd_readvariableop_resource*
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
while_body_4460719*
condR
while_cond_4460718*K
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
NoOpNoOp%^lstm_cell_735/BiasAdd/ReadVariableOp$^lstm_cell_735/MatMul/ReadVariableOp&^lstm_cell_735/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_735/BiasAdd/ReadVariableOp$lstm_cell_735/BiasAdd/ReadVariableOp2J
#lstm_cell_735/MatMul/ReadVariableOp#lstm_cell_735/MatMul/ReadVariableOp2N
%lstm_cell_735/MatMul_1/ReadVariableOp%lstm_cell_735/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4463859

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
*__inference_lstm_762_layer_call_fn_4461948
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4459099|
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
?

?
lstm_763_while_cond_4461269.
*lstm_763_while_lstm_763_while_loop_counter4
0lstm_763_while_lstm_763_while_maximum_iterations
lstm_763_while_placeholder 
lstm_763_while_placeholder_1 
lstm_763_while_placeholder_2 
lstm_763_while_placeholder_30
,lstm_763_while_less_lstm_763_strided_slice_1G
Clstm_763_while_lstm_763_while_cond_4461269___redundant_placeholder0G
Clstm_763_while_lstm_763_while_cond_4461269___redundant_placeholder1G
Clstm_763_while_lstm_763_while_cond_4461269___redundant_placeholder2G
Clstm_763_while_lstm_763_while_cond_4461269___redundant_placeholder3
lstm_763_while_identity
?
lstm_763/while/LessLesslstm_763_while_placeholder,lstm_763_while_less_lstm_763_strided_slice_1*
T0*
_output_shapes
: ]
lstm_763/while/IdentityIdentitylstm_763/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_763_while_identity lstm_763/while/Identity:output:0*(
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
/__inference_lstm_cell_736_layer_call_fn_4463925

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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4459321o
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
while_body_4462458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_735_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_735_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_735_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_735_matmul_readvariableop_resource:	?G
4while_lstm_cell_735_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_735_biasadd_readvariableop_resource:	???*while/lstm_cell_735/BiasAdd/ReadVariableOp?)while/lstm_cell_735/MatMul/ReadVariableOp?+while/lstm_cell_735/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_735/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_735_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_735/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_735_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_735/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_735/addAddV2$while/lstm_cell_735/MatMul:product:0&while/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_735_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_735/BiasAddBiasAddwhile/lstm_cell_735/add:z:02while/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_735/splitSplit,while/lstm_cell_735/split/split_dim:output:0$while/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_735/SigmoidSigmoid"while/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_1Sigmoid"while/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mulMul!while/lstm_cell_735/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_735/ReluRelu"while/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_1Mulwhile/lstm_cell_735/Sigmoid:y:0&while/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/add_1AddV2while/lstm_cell_735/mul:z:0while/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_2Sigmoid"while/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_735/Relu_1Reluwhile/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_2Mul!while/lstm_cell_735/Sigmoid_2:y:0(while/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_735/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_735/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_735/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_735/BiasAdd/ReadVariableOp*^while/lstm_cell_735/MatMul/ReadVariableOp,^while/lstm_cell_735/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_735_biasadd_readvariableop_resource5while_lstm_cell_735_biasadd_readvariableop_resource_0"n
4while_lstm_cell_735_matmul_1_readvariableop_resource6while_lstm_cell_735_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_735_matmul_readvariableop_resource4while_lstm_cell_735_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_735/BiasAdd/ReadVariableOp*while/lstm_cell_735/BiasAdd/ReadVariableOp2V
)while/lstm_cell_735/MatMul/ReadVariableOp)while/lstm_cell_735/MatMul/ReadVariableOp2Z
+while/lstm_cell_735/MatMul_1/ReadVariableOp+while/lstm_cell_735/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
0__inference_sequential_254_layer_call_fn_4460307
lstm_762_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_762_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460282o
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
_user_specified_namelstm_762_input
?
?
*__inference_lstm_763_layer_call_fn_4462575

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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4460107s
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
while_cond_4462930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4462930___redundant_placeholder05
1while_while_cond_4462930___redundant_placeholder15
1while_while_cond_4462930___redundant_placeholder25
1while_while_cond_4462930___redundant_placeholder3
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
while_cond_4460172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460172___redundant_placeholder05
1while_while_cond_4460172___redundant_placeholder15
1while_while_cond_4460172___redundant_placeholder25
1while_while_cond_4460172___redundant_placeholder3
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
while_cond_4460718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460718___redundant_placeholder05
1while_while_cond_4460718___redundant_placeholder15
1while_while_cond_4460718___redundant_placeholder25
1while_while_cond_4460718___redundant_placeholder3
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
*sequential_254_lstm_762_while_cond_4458389L
Hsequential_254_lstm_762_while_sequential_254_lstm_762_while_loop_counterR
Nsequential_254_lstm_762_while_sequential_254_lstm_762_while_maximum_iterations-
)sequential_254_lstm_762_while_placeholder/
+sequential_254_lstm_762_while_placeholder_1/
+sequential_254_lstm_762_while_placeholder_2/
+sequential_254_lstm_762_while_placeholder_3N
Jsequential_254_lstm_762_while_less_sequential_254_lstm_762_strided_slice_1e
asequential_254_lstm_762_while_sequential_254_lstm_762_while_cond_4458389___redundant_placeholder0e
asequential_254_lstm_762_while_sequential_254_lstm_762_while_cond_4458389___redundant_placeholder1e
asequential_254_lstm_762_while_sequential_254_lstm_762_while_cond_4458389___redundant_placeholder2e
asequential_254_lstm_762_while_sequential_254_lstm_762_while_cond_4458389___redundant_placeholder3*
&sequential_254_lstm_762_while_identity
?
"sequential_254/lstm_762/while/LessLess)sequential_254_lstm_762_while_placeholderJsequential_254_lstm_762_while_less_sequential_254_lstm_762_strided_slice_1*
T0*
_output_shapes
: {
&sequential_254/lstm_762/while/IdentityIdentity&sequential_254/lstm_762/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_254_lstm_762_while_identity/sequential_254/lstm_762/while/Identity:output:0*(
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
F__inference_dense_254_layer_call_and_return_conditional_losses_4460275

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
?
?
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4459321

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
?8
?
while_body_4462645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_736_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_736_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_736_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_736_matmul_readvariableop_resource:	d?G
4while_lstm_cell_736_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_736_biasadd_readvariableop_resource:	???*while/lstm_cell_736/BiasAdd/ReadVariableOp?)while/lstm_cell_736/MatMul/ReadVariableOp?+while/lstm_cell_736/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_736/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_736_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_736/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_736_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_736/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_736/addAddV2$while/lstm_cell_736/MatMul:product:0&while/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_736_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_736/BiasAddBiasAddwhile/lstm_cell_736/add:z:02while/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_736/splitSplit,while/lstm_cell_736/split/split_dim:output:0$while/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_736/SigmoidSigmoid"while/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_1Sigmoid"while/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mulMul!while/lstm_cell_736/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_736/ReluRelu"while/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_1Mulwhile/lstm_cell_736/Sigmoid:y:0&while/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/add_1AddV2while/lstm_cell_736/mul:z:0while/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_2Sigmoid"while/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_736/Relu_1Reluwhile/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_2Mul!while/lstm_cell_736/Sigmoid_2:y:0(while/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_736/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_736/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_736/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_736/BiasAdd/ReadVariableOp*^while/lstm_cell_736/MatMul/ReadVariableOp,^while/lstm_cell_736/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_736_biasadd_readvariableop_resource5while_lstm_cell_736_biasadd_readvariableop_resource_0"n
4while_lstm_cell_736_matmul_1_readvariableop_resource6while_lstm_cell_736_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_736_matmul_readvariableop_resource4while_lstm_cell_736_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_736/BiasAdd/ReadVariableOp*while/lstm_cell_736/BiasAdd/ReadVariableOp2V
)while/lstm_cell_736/MatMul/ReadVariableOp)while/lstm_cell_736/MatMul/ReadVariableOp2Z
+while/lstm_cell_736/MatMul_1/ReadVariableOp+while/lstm_cell_736/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4463404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_737_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_737_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_737_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_737_matmul_readvariableop_resource:2(F
4while_lstm_cell_737_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_737_biasadd_readvariableop_resource:(??*while/lstm_cell_737/BiasAdd/ReadVariableOp?)while/lstm_cell_737/MatMul/ReadVariableOp?+while/lstm_cell_737/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_737/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_737_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_737/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_737_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_737/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_737/addAddV2$while/lstm_cell_737/MatMul:product:0&while/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_737_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_737/BiasAddBiasAddwhile/lstm_cell_737/add:z:02while/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_737/splitSplit,while/lstm_cell_737/split/split_dim:output:0$while/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_737/SigmoidSigmoid"while/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_1Sigmoid"while/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mulMul!while/lstm_cell_737/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_737/ReluRelu"while/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_1Mulwhile/lstm_cell_737/Sigmoid:y:0&while/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/add_1AddV2while/lstm_cell_737/mul:z:0while/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_2Sigmoid"while/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_737/Relu_1Reluwhile/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_2Mul!while/lstm_cell_737/Sigmoid_2:y:0(while/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_737/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_737/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_737/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_737/BiasAdd/ReadVariableOp*^while/lstm_cell_737/MatMul/ReadVariableOp,^while/lstm_cell_737/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_737_biasadd_readvariableop_resource5while_lstm_cell_737_biasadd_readvariableop_resource_0"n
4while_lstm_cell_737_matmul_1_readvariableop_resource6while_lstm_cell_737_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_737_matmul_readvariableop_resource4while_lstm_cell_737_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_737/BiasAdd/ReadVariableOp*while/lstm_cell_737/BiasAdd/ReadVariableOp2V
)while/lstm_cell_737/MatMul/ReadVariableOp)while/lstm_cell_737/MatMul/ReadVariableOp2Z
+while/lstm_cell_737/MatMul_1/ReadVariableOp+while/lstm_cell_737/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_762_layer_call_fn_4461959

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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4459957s
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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4459525

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
?
?
while_cond_4462314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4462314___redundant_placeholder05
1while_while_cond_4462314___redundant_placeholder15
1while_while_cond_4462314___redundant_placeholder25
1while_while_cond_4462314___redundant_placeholder3
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
while_cond_4462028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4462028___redundant_placeholder05
1while_while_cond_4462028___redundant_placeholder15
1while_while_cond_4462028___redundant_placeholder25
1while_while_cond_4462028___redundant_placeholder3
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
while_cond_4460553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460553___redundant_placeholder05
1while_while_cond_4460553___redundant_placeholder15
1while_while_cond_4460553___redundant_placeholder25
1while_while_cond_4460553___redundant_placeholder3
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
*sequential_254_lstm_764_while_cond_4458667L
Hsequential_254_lstm_764_while_sequential_254_lstm_764_while_loop_counterR
Nsequential_254_lstm_764_while_sequential_254_lstm_764_while_maximum_iterations-
)sequential_254_lstm_764_while_placeholder/
+sequential_254_lstm_764_while_placeholder_1/
+sequential_254_lstm_764_while_placeholder_2/
+sequential_254_lstm_764_while_placeholder_3N
Jsequential_254_lstm_764_while_less_sequential_254_lstm_764_strided_slice_1e
asequential_254_lstm_764_while_sequential_254_lstm_764_while_cond_4458667___redundant_placeholder0e
asequential_254_lstm_764_while_sequential_254_lstm_764_while_cond_4458667___redundant_placeholder1e
asequential_254_lstm_764_while_sequential_254_lstm_764_while_cond_4458667___redundant_placeholder2e
asequential_254_lstm_764_while_sequential_254_lstm_764_while_cond_4458667___redundant_placeholder3*
&sequential_254_lstm_764_while_identity
?
"sequential_254/lstm_764/while/LessLess)sequential_254_lstm_764_while_placeholderJsequential_254_lstm_764_while_less_sequential_254_lstm_764_strided_slice_1*
T0*
_output_shapes
: {
&sequential_254/lstm_764/while/IdentityIdentity&sequential_254/lstm_764/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_254_lstm_764_while_identity/sequential_254/lstm_764/while/Identity:output:0*(
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
while_body_4462788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_736_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_736_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_736_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_736_matmul_readvariableop_resource:	d?G
4while_lstm_cell_736_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_736_biasadd_readvariableop_resource:	???*while/lstm_cell_736/BiasAdd/ReadVariableOp?)while/lstm_cell_736/MatMul/ReadVariableOp?+while/lstm_cell_736/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_736/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_736_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_736/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_736_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_736/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_736/addAddV2$while/lstm_cell_736/MatMul:product:0&while/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_736_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_736/BiasAddBiasAddwhile/lstm_cell_736/add:z:02while/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_736/splitSplit,while/lstm_cell_736/split/split_dim:output:0$while/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_736/SigmoidSigmoid"while/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_1Sigmoid"while/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mulMul!while/lstm_cell_736/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_736/ReluRelu"while/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_1Mulwhile/lstm_cell_736/Sigmoid:y:0&while/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/add_1AddV2while/lstm_cell_736/mul:z:0while/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_2Sigmoid"while/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_736/Relu_1Reluwhile/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_2Mul!while/lstm_cell_736/Sigmoid_2:y:0(while/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_736/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_736/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_736/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_736/BiasAdd/ReadVariableOp*^while/lstm_cell_736/MatMul/ReadVariableOp,^while/lstm_cell_736/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_736_biasadd_readvariableop_resource5while_lstm_cell_736_biasadd_readvariableop_resource_0"n
4while_lstm_cell_736_matmul_1_readvariableop_resource6while_lstm_cell_736_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_736_matmul_readvariableop_resource4while_lstm_cell_736_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_736/BiasAdd/ReadVariableOp*while/lstm_cell_736/BiasAdd/ReadVariableOp2V
)while/lstm_cell_736/MatMul/ReadVariableOp)while/lstm_cell_736/MatMul/ReadVariableOp2Z
+while/lstm_cell_736/MatMul_1/ReadVariableOp+while/lstm_cell_736/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_763_while_cond_4461696.
*lstm_763_while_lstm_763_while_loop_counter4
0lstm_763_while_lstm_763_while_maximum_iterations
lstm_763_while_placeholder 
lstm_763_while_placeholder_1 
lstm_763_while_placeholder_2 
lstm_763_while_placeholder_30
,lstm_763_while_less_lstm_763_strided_slice_1G
Clstm_763_while_lstm_763_while_cond_4461696___redundant_placeholder0G
Clstm_763_while_lstm_763_while_cond_4461696___redundant_placeholder1G
Clstm_763_while_lstm_763_while_cond_4461696___redundant_placeholder2G
Clstm_763_while_lstm_763_while_cond_4461696___redundant_placeholder3
lstm_763_while_identity
?
lstm_763/while/LessLesslstm_763_while_placeholder,lstm_763_while_less_lstm_763_strided_slice_1*
T0*
_output_shapes
: ]
lstm_763/while/IdentityIdentitylstm_763/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_763_while_identity lstm_763/while/Identity:output:0*(
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
while_body_4462315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_735_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_735_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_735_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_735_matmul_readvariableop_resource:	?G
4while_lstm_cell_735_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_735_biasadd_readvariableop_resource:	???*while/lstm_cell_735/BiasAdd/ReadVariableOp?)while/lstm_cell_735/MatMul/ReadVariableOp?+while/lstm_cell_735/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_735/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_735_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_735/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_735_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_735/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_735/addAddV2$while/lstm_cell_735/MatMul:product:0&while/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_735_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_735/BiasAddBiasAddwhile/lstm_cell_735/add:z:02while/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_735/splitSplit,while/lstm_cell_735/split/split_dim:output:0$while/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_735/SigmoidSigmoid"while/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_1Sigmoid"while/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mulMul!while/lstm_cell_735/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_735/ReluRelu"while/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_1Mulwhile/lstm_cell_735/Sigmoid:y:0&while/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/add_1AddV2while/lstm_cell_735/mul:z:0while/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_735/Sigmoid_2Sigmoid"while/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_735/Relu_1Reluwhile/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_735/mul_2Mul!while/lstm_cell_735/Sigmoid_2:y:0(while/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_735/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_735/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_735/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_735/BiasAdd/ReadVariableOp*^while/lstm_cell_735/MatMul/ReadVariableOp,^while/lstm_cell_735/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_735_biasadd_readvariableop_resource5while_lstm_cell_735_biasadd_readvariableop_resource_0"n
4while_lstm_cell_735_matmul_1_readvariableop_resource6while_lstm_cell_735_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_735_matmul_readvariableop_resource4while_lstm_cell_735_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_735/BiasAdd/ReadVariableOp*while/lstm_cell_735/BiasAdd/ReadVariableOp2V
)while/lstm_cell_735/MatMul/ReadVariableOp)while/lstm_cell_735/MatMul/ReadVariableOp2Z
+while/lstm_cell_735/MatMul_1/ReadVariableOp+while/lstm_cell_735/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4460107

inputs?
,lstm_cell_736_matmul_readvariableop_resource:	d?A
.lstm_cell_736_matmul_1_readvariableop_resource:	2?<
-lstm_cell_736_biasadd_readvariableop_resource:	?
identity??$lstm_cell_736/BiasAdd/ReadVariableOp?#lstm_cell_736/MatMul/ReadVariableOp?%lstm_cell_736/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_736/MatMul/ReadVariableOpReadVariableOp,lstm_cell_736_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_736/MatMulMatMulstrided_slice_2:output:0+lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_736_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_736/MatMul_1MatMulzeros:output:0-lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_736/addAddV2lstm_cell_736/MatMul:product:0 lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_736_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_736/BiasAddBiasAddlstm_cell_736/add:z:0,lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_736/splitSplit&lstm_cell_736/split/split_dim:output:0lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_736/SigmoidSigmoidlstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_1Sigmoidlstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_736/mulMullstm_cell_736/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_736/ReluRelulstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_1Mullstm_cell_736/Sigmoid:y:0 lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_736/add_1AddV2lstm_cell_736/mul:z:0lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_2Sigmoidlstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_736/Relu_1Relulstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_2Mullstm_cell_736/Sigmoid_2:y:0"lstm_cell_736/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_736_matmul_readvariableop_resource.lstm_cell_736_matmul_1_readvariableop_resource-lstm_cell_736_biasadd_readvariableop_resource*
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
while_body_4460023*
condR
while_cond_4460022*K
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
NoOpNoOp%^lstm_cell_736/BiasAdd/ReadVariableOp$^lstm_cell_736/MatMul/ReadVariableOp&^lstm_cell_736/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_736/BiasAdd/ReadVariableOp$lstm_cell_736/BiasAdd/ReadVariableOp2J
#lstm_cell_736/MatMul/ReadVariableOp#lstm_cell_736/MatMul/ReadVariableOp2N
%lstm_cell_736/MatMul_1/ReadVariableOp%lstm_cell_736/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4463073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4463073___redundant_placeholder05
1while_while_cond_4463073___redundant_placeholder15
1while_while_cond_4463073___redundant_placeholder25
1while_while_cond_4463073___redundant_placeholder3
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
while_cond_4459379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459379___redundant_placeholder05
1while_while_cond_4459379___redundant_placeholder15
1while_while_cond_4459379___redundant_placeholder25
1while_while_cond_4459379___redundant_placeholder3
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
while_cond_4459029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459029___redundant_placeholder05
1while_while_cond_4459029___redundant_placeholder15
1while_while_cond_4459029___redundant_placeholder25
1while_while_cond_4459029___redundant_placeholder3
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
while_body_4460173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_737_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_737_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_737_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_737_matmul_readvariableop_resource:2(F
4while_lstm_cell_737_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_737_biasadd_readvariableop_resource:(??*while/lstm_cell_737/BiasAdd/ReadVariableOp?)while/lstm_cell_737/MatMul/ReadVariableOp?+while/lstm_cell_737/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_737/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_737_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_737/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_737_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_737/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_737/addAddV2$while/lstm_cell_737/MatMul:product:0&while/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_737_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_737/BiasAddBiasAddwhile/lstm_cell_737/add:z:02while/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_737/splitSplit,while/lstm_cell_737/split/split_dim:output:0$while/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_737/SigmoidSigmoid"while/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_1Sigmoid"while/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mulMul!while/lstm_cell_737/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_737/ReluRelu"while/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_1Mulwhile/lstm_cell_737/Sigmoid:y:0&while/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/add_1AddV2while/lstm_cell_737/mul:z:0while/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_2Sigmoid"while/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_737/Relu_1Reluwhile/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_2Mul!while/lstm_cell_737/Sigmoid_2:y:0(while/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_737/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_737/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_737/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_737/BiasAdd/ReadVariableOp*^while/lstm_cell_737/MatMul/ReadVariableOp,^while/lstm_cell_737/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_737_biasadd_readvariableop_resource5while_lstm_cell_737_biasadd_readvariableop_resource_0"n
4while_lstm_cell_737_matmul_1_readvariableop_resource6while_lstm_cell_737_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_737_matmul_readvariableop_resource4while_lstm_cell_737_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_737/BiasAdd/ReadVariableOp*while/lstm_cell_737/BiasAdd/ReadVariableOp2V
)while/lstm_cell_737/MatMul/ReadVariableOp)while/lstm_cell_737/MatMul/ReadVariableOp2Z
+while/lstm_cell_737/MatMul_1/ReadVariableOp+while/lstm_cell_737/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4459729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4459729___redundant_placeholder05
1while_while_cond_4459729___redundant_placeholder15
1while_while_cond_4459729___redundant_placeholder25
1while_while_cond_4459729___redundant_placeholder3
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
??
?
#__inference__traced_restore_4464360
file_prefix3
!assignvariableop_dense_254_kernel:
/
!assignvariableop_1_dense_254_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_762_lstm_cell_762_kernel:	?M
:assignvariableop_8_lstm_762_lstm_cell_762_recurrent_kernel:	d?=
.assignvariableop_9_lstm_762_lstm_cell_762_bias:	?D
1assignvariableop_10_lstm_763_lstm_cell_763_kernel:	d?N
;assignvariableop_11_lstm_763_lstm_cell_763_recurrent_kernel:	2?>
/assignvariableop_12_lstm_763_lstm_cell_763_bias:	?C
1assignvariableop_13_lstm_764_lstm_cell_764_kernel:2(M
;assignvariableop_14_lstm_764_lstm_cell_764_recurrent_kernel:
(=
/assignvariableop_15_lstm_764_lstm_cell_764_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_254_kernel_m:
7
)assignvariableop_19_adam_dense_254_bias_m:K
8assignvariableop_20_adam_lstm_762_lstm_cell_762_kernel_m:	?U
Bassignvariableop_21_adam_lstm_762_lstm_cell_762_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_762_lstm_cell_762_bias_m:	?K
8assignvariableop_23_adam_lstm_763_lstm_cell_763_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_763_lstm_cell_763_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_763_lstm_cell_763_bias_m:	?J
8assignvariableop_26_adam_lstm_764_lstm_cell_764_kernel_m:2(T
Bassignvariableop_27_adam_lstm_764_lstm_cell_764_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_764_lstm_cell_764_bias_m:(=
+assignvariableop_29_adam_dense_254_kernel_v:
7
)assignvariableop_30_adam_dense_254_bias_v:K
8assignvariableop_31_adam_lstm_762_lstm_cell_762_kernel_v:	?U
Bassignvariableop_32_adam_lstm_762_lstm_cell_762_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_762_lstm_cell_762_bias_v:	?K
8assignvariableop_34_adam_lstm_763_lstm_cell_763_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_763_lstm_cell_763_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_763_lstm_cell_763_bias_v:	?J
8assignvariableop_37_adam_lstm_764_lstm_cell_764_kernel_v:2(T
Bassignvariableop_38_adam_lstm_764_lstm_cell_764_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_764_lstm_cell_764_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_254_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_254_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_762_lstm_cell_762_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_762_lstm_cell_762_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_762_lstm_cell_762_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_763_lstm_cell_763_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_763_lstm_cell_763_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_763_lstm_cell_763_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_764_lstm_cell_764_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_764_lstm_cell_764_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_764_lstm_cell_764_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_254_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_254_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_762_lstm_cell_762_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_762_lstm_cell_762_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_762_lstm_cell_762_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_763_lstm_cell_763_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_763_lstm_cell_763_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_763_lstm_cell_763_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_764_lstm_cell_764_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_764_lstm_cell_764_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_764_lstm_cell_764_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_254_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_254_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_762_lstm_cell_762_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_762_lstm_cell_762_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_762_lstm_cell_762_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_763_lstm_cell_763_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_763_lstm_cell_763_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_763_lstm_cell_763_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_764_lstm_cell_764_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_764_lstm_cell_764_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_764_lstm_cell_764_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4458825

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
?T
?
*sequential_254_lstm_763_while_body_4458529L
Hsequential_254_lstm_763_while_sequential_254_lstm_763_while_loop_counterR
Nsequential_254_lstm_763_while_sequential_254_lstm_763_while_maximum_iterations-
)sequential_254_lstm_763_while_placeholder/
+sequential_254_lstm_763_while_placeholder_1/
+sequential_254_lstm_763_while_placeholder_2/
+sequential_254_lstm_763_while_placeholder_3K
Gsequential_254_lstm_763_while_sequential_254_lstm_763_strided_slice_1_0?
?sequential_254_lstm_763_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_763_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_254_lstm_763_while_lstm_cell_736_matmul_readvariableop_resource_0:	d?a
Nsequential_254_lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource_0:	2?\
Msequential_254_lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource_0:	?*
&sequential_254_lstm_763_while_identity,
(sequential_254_lstm_763_while_identity_1,
(sequential_254_lstm_763_while_identity_2,
(sequential_254_lstm_763_while_identity_3,
(sequential_254_lstm_763_while_identity_4,
(sequential_254_lstm_763_while_identity_5I
Esequential_254_lstm_763_while_sequential_254_lstm_763_strided_slice_1?
?sequential_254_lstm_763_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_763_tensorarrayunstack_tensorlistfromtensor]
Jsequential_254_lstm_763_while_lstm_cell_736_matmul_readvariableop_resource:	d?_
Lsequential_254_lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource:	2?Z
Ksequential_254_lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource:	???Bsequential_254/lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp?Asequential_254/lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp?Csequential_254/lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp?
Osequential_254/lstm_763/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_254/lstm_763/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_254_lstm_763_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_763_tensorarrayunstack_tensorlistfromtensor_0)sequential_254_lstm_763_while_placeholderXsequential_254/lstm_763/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_254/lstm_763/while/lstm_cell_736/MatMul/ReadVariableOpReadVariableOpLsequential_254_lstm_763_while_lstm_cell_736_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_254/lstm_763/while/lstm_cell_736/MatMulMatMulHsequential_254/lstm_763/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_254/lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_254/lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOpNsequential_254_lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_254/lstm_763/while/lstm_cell_736/MatMul_1MatMul+sequential_254_lstm_763_while_placeholder_2Ksequential_254/lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_254/lstm_763/while/lstm_cell_736/addAddV2<sequential_254/lstm_763/while/lstm_cell_736/MatMul:product:0>sequential_254/lstm_763/while/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_254/lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOpMsequential_254_lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_254/lstm_763/while/lstm_cell_736/BiasAddBiasAdd3sequential_254/lstm_763/while/lstm_cell_736/add:z:0Jsequential_254/lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_254/lstm_763/while/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_254/lstm_763/while/lstm_cell_736/splitSplitDsequential_254/lstm_763/while/lstm_cell_736/split/split_dim:output:0<sequential_254/lstm_763/while/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_254/lstm_763/while/lstm_cell_736/SigmoidSigmoid:sequential_254/lstm_763/while/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_254/lstm_763/while/lstm_cell_736/Sigmoid_1Sigmoid:sequential_254/lstm_763/while/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_254/lstm_763/while/lstm_cell_736/mulMul9sequential_254/lstm_763/while/lstm_cell_736/Sigmoid_1:y:0+sequential_254_lstm_763_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_254/lstm_763/while/lstm_cell_736/ReluRelu:sequential_254/lstm_763/while/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_254/lstm_763/while/lstm_cell_736/mul_1Mul7sequential_254/lstm_763/while/lstm_cell_736/Sigmoid:y:0>sequential_254/lstm_763/while/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_254/lstm_763/while/lstm_cell_736/add_1AddV23sequential_254/lstm_763/while/lstm_cell_736/mul:z:05sequential_254/lstm_763/while/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_254/lstm_763/while/lstm_cell_736/Sigmoid_2Sigmoid:sequential_254/lstm_763/while/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_254/lstm_763/while/lstm_cell_736/Relu_1Relu5sequential_254/lstm_763/while/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_254/lstm_763/while/lstm_cell_736/mul_2Mul9sequential_254/lstm_763/while/lstm_cell_736/Sigmoid_2:y:0@sequential_254/lstm_763/while/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_254/lstm_763/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_254_lstm_763_while_placeholder_1)sequential_254_lstm_763_while_placeholder5sequential_254/lstm_763/while/lstm_cell_736/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_254/lstm_763/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_254/lstm_763/while/addAddV2)sequential_254_lstm_763_while_placeholder,sequential_254/lstm_763/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_254/lstm_763/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_254/lstm_763/while/add_1AddV2Hsequential_254_lstm_763_while_sequential_254_lstm_763_while_loop_counter.sequential_254/lstm_763/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_254/lstm_763/while/IdentityIdentity'sequential_254/lstm_763/while/add_1:z:0#^sequential_254/lstm_763/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_763/while/Identity_1IdentityNsequential_254_lstm_763_while_sequential_254_lstm_763_while_maximum_iterations#^sequential_254/lstm_763/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_763/while/Identity_2Identity%sequential_254/lstm_763/while/add:z:0#^sequential_254/lstm_763/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_763/while/Identity_3IdentityRsequential_254/lstm_763/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_254/lstm_763/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_763/while/Identity_4Identity5sequential_254/lstm_763/while/lstm_cell_736/mul_2:z:0#^sequential_254/lstm_763/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_254/lstm_763/while/Identity_5Identity5sequential_254/lstm_763/while/lstm_cell_736/add_1:z:0#^sequential_254/lstm_763/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_254/lstm_763/while/NoOpNoOpC^sequential_254/lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOpB^sequential_254/lstm_763/while/lstm_cell_736/MatMul/ReadVariableOpD^sequential_254/lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_254_lstm_763_while_identity/sequential_254/lstm_763/while/Identity:output:0"]
(sequential_254_lstm_763_while_identity_11sequential_254/lstm_763/while/Identity_1:output:0"]
(sequential_254_lstm_763_while_identity_21sequential_254/lstm_763/while/Identity_2:output:0"]
(sequential_254_lstm_763_while_identity_31sequential_254/lstm_763/while/Identity_3:output:0"]
(sequential_254_lstm_763_while_identity_41sequential_254/lstm_763/while/Identity_4:output:0"]
(sequential_254_lstm_763_while_identity_51sequential_254/lstm_763/while/Identity_5:output:0"?
Ksequential_254_lstm_763_while_lstm_cell_736_biasadd_readvariableop_resourceMsequential_254_lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource_0"?
Lsequential_254_lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resourceNsequential_254_lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource_0"?
Jsequential_254_lstm_763_while_lstm_cell_736_matmul_readvariableop_resourceLsequential_254_lstm_763_while_lstm_cell_736_matmul_readvariableop_resource_0"?
Esequential_254_lstm_763_while_sequential_254_lstm_763_strided_slice_1Gsequential_254_lstm_763_while_sequential_254_lstm_763_strided_slice_1_0"?
?sequential_254_lstm_763_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_763_tensorarrayunstack_tensorlistfromtensor?sequential_254_lstm_763_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_763_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_254/lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOpBsequential_254/lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp2?
Asequential_254/lstm_763/while/lstm_cell_736/MatMul/ReadVariableOpAsequential_254/lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp2?
Csequential_254/lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOpCsequential_254/lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4460022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460022___redundant_placeholder05
1while_while_cond_4460022___redundant_placeholder15
1while_while_cond_4460022___redundant_placeholder25
1while_while_cond_4460022___redundant_placeholder3
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
?K
?
E__inference_lstm_763_layer_call_and_return_conditional_losses_4462872
inputs_0?
,lstm_cell_736_matmul_readvariableop_resource:	d?A
.lstm_cell_736_matmul_1_readvariableop_resource:	2?<
-lstm_cell_736_biasadd_readvariableop_resource:	?
identity??$lstm_cell_736/BiasAdd/ReadVariableOp?#lstm_cell_736/MatMul/ReadVariableOp?%lstm_cell_736/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_736/MatMul/ReadVariableOpReadVariableOp,lstm_cell_736_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_736/MatMulMatMulstrided_slice_2:output:0+lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_736_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_736/MatMul_1MatMulzeros:output:0-lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_736/addAddV2lstm_cell_736/MatMul:product:0 lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_736_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_736/BiasAddBiasAddlstm_cell_736/add:z:0,lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_736/splitSplit&lstm_cell_736/split/split_dim:output:0lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_736/SigmoidSigmoidlstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_1Sigmoidlstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_736/mulMullstm_cell_736/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_736/ReluRelulstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_1Mullstm_cell_736/Sigmoid:y:0 lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_736/add_1AddV2lstm_cell_736/mul:z:0lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_2Sigmoidlstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_736/Relu_1Relulstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_2Mullstm_cell_736/Sigmoid_2:y:0"lstm_cell_736/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_736_matmul_readvariableop_resource.lstm_cell_736_matmul_1_readvariableop_resource-lstm_cell_736_biasadd_readvariableop_resource*
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
while_body_4462788*
condR
while_cond_4462787*K
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
NoOpNoOp%^lstm_cell_736/BiasAdd/ReadVariableOp$^lstm_cell_736/MatMul/ReadVariableOp&^lstm_cell_736/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_736/BiasAdd/ReadVariableOp$lstm_cell_736/BiasAdd/ReadVariableOp2J
#lstm_cell_736/MatMul/ReadVariableOp#lstm_cell_736/MatMul/ReadVariableOp2N
%lstm_cell_736/MatMul_1/ReadVariableOp%lstm_cell_736/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_764_while_cond_4461835.
*lstm_764_while_lstm_764_while_loop_counter4
0lstm_764_while_lstm_764_while_maximum_iterations
lstm_764_while_placeholder 
lstm_764_while_placeholder_1 
lstm_764_while_placeholder_2 
lstm_764_while_placeholder_30
,lstm_764_while_less_lstm_764_strided_slice_1G
Clstm_764_while_lstm_764_while_cond_4461835___redundant_placeholder0G
Clstm_764_while_lstm_764_while_cond_4461835___redundant_placeholder1G
Clstm_764_while_lstm_764_while_cond_4461835___redundant_placeholder2G
Clstm_764_while_lstm_764_while_cond_4461835___redundant_placeholder3
lstm_764_while_identity
?
lstm_764/while/LessLesslstm_764_while_placeholder,lstm_764_while_less_lstm_764_strided_slice_1*
T0*
_output_shapes
: ]
lstm_764/while/IdentityIdentitylstm_764/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_764_while_identity lstm_764/while/Identity:output:0*(
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
/__inference_lstm_cell_736_layer_call_fn_4463908

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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4459175o
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
while_cond_4462644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4462644___redundant_placeholder05
1while_while_cond_4462644___redundant_placeholder15
1while_while_cond_4462644___redundant_placeholder25
1while_while_cond_4462644___redundant_placeholder3
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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4463891

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
?C
?

lstm_763_while_body_4461270.
*lstm_763_while_lstm_763_while_loop_counter4
0lstm_763_while_lstm_763_while_maximum_iterations
lstm_763_while_placeholder 
lstm_763_while_placeholder_1 
lstm_763_while_placeholder_2 
lstm_763_while_placeholder_3-
)lstm_763_while_lstm_763_strided_slice_1_0i
elstm_763_while_tensorarrayv2read_tensorlistgetitem_lstm_763_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_763_while_lstm_cell_736_matmul_readvariableop_resource_0:	d?R
?lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource_0:	2?M
>lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource_0:	?
lstm_763_while_identity
lstm_763_while_identity_1
lstm_763_while_identity_2
lstm_763_while_identity_3
lstm_763_while_identity_4
lstm_763_while_identity_5+
'lstm_763_while_lstm_763_strided_slice_1g
clstm_763_while_tensorarrayv2read_tensorlistgetitem_lstm_763_tensorarrayunstack_tensorlistfromtensorN
;lstm_763_while_lstm_cell_736_matmul_readvariableop_resource:	d?P
=lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource:	2?K
<lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource:	???3lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp?2lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp?4lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp?
@lstm_763/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_763/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_763_while_tensorarrayv2read_tensorlistgetitem_lstm_763_tensorarrayunstack_tensorlistfromtensor_0lstm_763_while_placeholderIlstm_763/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_763/while/lstm_cell_736/MatMul/ReadVariableOpReadVariableOp=lstm_763_while_lstm_cell_736_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_763/while/lstm_cell_736/MatMulMatMul9lstm_763/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp?lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_763/while/lstm_cell_736/MatMul_1MatMullstm_763_while_placeholder_2<lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_763/while/lstm_cell_736/addAddV2-lstm_763/while/lstm_cell_736/MatMul:product:0/lstm_763/while/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp>lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_763/while/lstm_cell_736/BiasAddBiasAdd$lstm_763/while/lstm_cell_736/add:z:0;lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_763/while/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_763/while/lstm_cell_736/splitSplit5lstm_763/while/lstm_cell_736/split/split_dim:output:0-lstm_763/while/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_763/while/lstm_cell_736/SigmoidSigmoid+lstm_763/while/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_763/while/lstm_cell_736/Sigmoid_1Sigmoid+lstm_763/while/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_763/while/lstm_cell_736/mulMul*lstm_763/while/lstm_cell_736/Sigmoid_1:y:0lstm_763_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_763/while/lstm_cell_736/ReluRelu+lstm_763/while/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_763/while/lstm_cell_736/mul_1Mul(lstm_763/while/lstm_cell_736/Sigmoid:y:0/lstm_763/while/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_763/while/lstm_cell_736/add_1AddV2$lstm_763/while/lstm_cell_736/mul:z:0&lstm_763/while/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_763/while/lstm_cell_736/Sigmoid_2Sigmoid+lstm_763/while/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_763/while/lstm_cell_736/Relu_1Relu&lstm_763/while/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_763/while/lstm_cell_736/mul_2Mul*lstm_763/while/lstm_cell_736/Sigmoid_2:y:01lstm_763/while/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_763/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_763_while_placeholder_1lstm_763_while_placeholder&lstm_763/while/lstm_cell_736/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_763/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_763/while/addAddV2lstm_763_while_placeholderlstm_763/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_763/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_763/while/add_1AddV2*lstm_763_while_lstm_763_while_loop_counterlstm_763/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_763/while/IdentityIdentitylstm_763/while/add_1:z:0^lstm_763/while/NoOp*
T0*
_output_shapes
: ?
lstm_763/while/Identity_1Identity0lstm_763_while_lstm_763_while_maximum_iterations^lstm_763/while/NoOp*
T0*
_output_shapes
: t
lstm_763/while/Identity_2Identitylstm_763/while/add:z:0^lstm_763/while/NoOp*
T0*
_output_shapes
: ?
lstm_763/while/Identity_3IdentityClstm_763/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_763/while/NoOp*
T0*
_output_shapes
: ?
lstm_763/while/Identity_4Identity&lstm_763/while/lstm_cell_736/mul_2:z:0^lstm_763/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_763/while/Identity_5Identity&lstm_763/while/lstm_cell_736/add_1:z:0^lstm_763/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_763/while/NoOpNoOp4^lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp3^lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp5^lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_763_while_identity lstm_763/while/Identity:output:0"?
lstm_763_while_identity_1"lstm_763/while/Identity_1:output:0"?
lstm_763_while_identity_2"lstm_763/while/Identity_2:output:0"?
lstm_763_while_identity_3"lstm_763/while/Identity_3:output:0"?
lstm_763_while_identity_4"lstm_763/while/Identity_4:output:0"?
lstm_763_while_identity_5"lstm_763/while/Identity_5:output:0"T
'lstm_763_while_lstm_763_strided_slice_1)lstm_763_while_lstm_763_strided_slice_1_0"~
<lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource>lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource_0"?
=lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource?lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource_0"|
;lstm_763_while_lstm_cell_736_matmul_readvariableop_resource=lstm_763_while_lstm_cell_736_matmul_readvariableop_resource_0"?
clstm_763_while_tensorarrayv2read_tensorlistgetitem_lstm_763_tensorarrayunstack_tensorlistfromtensorelstm_763_while_tensorarrayv2read_tensorlistgetitem_lstm_763_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp3lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp2h
2lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp2lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp2l
4lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp4lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4459799

inputs'
lstm_cell_737_4459717:2('
lstm_cell_737_4459719:
(#
lstm_cell_737_4459721:(
identity??%lstm_cell_737/StatefulPartitionedCall?while;
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
%lstm_cell_737/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_737_4459717lstm_cell_737_4459719lstm_cell_737_4459721*
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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4459671n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_737_4459717lstm_cell_737_4459719lstm_cell_737_4459721*
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
while_body_4459730*
condR
while_cond_4459729*K
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
NoOpNoOp&^lstm_cell_737/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_737/StatefulPartitionedCall%lstm_cell_737/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_737_layer_call_fn_4464023

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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4459671o
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
?
?
/__inference_lstm_cell_735_layer_call_fn_4463827

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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4458971o
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4460257

inputs>
,lstm_cell_737_matmul_readvariableop_resource:2(@
.lstm_cell_737_matmul_1_readvariableop_resource:
(;
-lstm_cell_737_biasadd_readvariableop_resource:(
identity??$lstm_cell_737/BiasAdd/ReadVariableOp?#lstm_cell_737/MatMul/ReadVariableOp?%lstm_cell_737/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_737/MatMul/ReadVariableOpReadVariableOp,lstm_cell_737_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_737/MatMulMatMulstrided_slice_2:output:0+lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_737_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_737/MatMul_1MatMulzeros:output:0-lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_737/addAddV2lstm_cell_737/MatMul:product:0 lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_737_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_737/BiasAddBiasAddlstm_cell_737/add:z:0,lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_737/splitSplit&lstm_cell_737/split/split_dim:output:0lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_737/SigmoidSigmoidlstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_1Sigmoidlstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_737/mulMullstm_cell_737/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_737/ReluRelulstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_1Mullstm_cell_737/Sigmoid:y:0 lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_737/add_1AddV2lstm_cell_737/mul:z:0lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_2Sigmoidlstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_737/Relu_1Relulstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_2Mullstm_cell_737/Sigmoid_2:y:0"lstm_cell_737/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_737_matmul_readvariableop_resource.lstm_cell_737_matmul_1_readvariableop_resource-lstm_cell_737_biasadd_readvariableop_resource*
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
while_body_4460173*
condR
while_cond_4460172*K
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
NoOpNoOp%^lstm_cell_737/BiasAdd/ReadVariableOp$^lstm_cell_737/MatMul/ReadVariableOp&^lstm_cell_737/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_737/BiasAdd/ReadVariableOp$lstm_cell_737/BiasAdd/ReadVariableOp2J
#lstm_cell_737/MatMul/ReadVariableOp#lstm_cell_737/MatMul/ReadVariableOp2N
%lstm_cell_737/MatMul_1/ReadVariableOp%lstm_cell_737/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_764_layer_call_and_return_conditional_losses_4460473

inputs>
,lstm_cell_737_matmul_readvariableop_resource:2(@
.lstm_cell_737_matmul_1_readvariableop_resource:
(;
-lstm_cell_737_biasadd_readvariableop_resource:(
identity??$lstm_cell_737/BiasAdd/ReadVariableOp?#lstm_cell_737/MatMul/ReadVariableOp?%lstm_cell_737/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_737/MatMul/ReadVariableOpReadVariableOp,lstm_cell_737_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_737/MatMulMatMulstrided_slice_2:output:0+lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_737_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_737/MatMul_1MatMulzeros:output:0-lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_737/addAddV2lstm_cell_737/MatMul:product:0 lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_737_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_737/BiasAddBiasAddlstm_cell_737/add:z:0,lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_737/splitSplit&lstm_cell_737/split/split_dim:output:0lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_737/SigmoidSigmoidlstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_1Sigmoidlstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_737/mulMullstm_cell_737/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_737/ReluRelulstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_1Mullstm_cell_737/Sigmoid:y:0 lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_737/add_1AddV2lstm_cell_737/mul:z:0lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_2Sigmoidlstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_737/Relu_1Relulstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_2Mullstm_cell_737/Sigmoid_2:y:0"lstm_cell_737/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_737_matmul_readvariableop_resource.lstm_cell_737_matmul_1_readvariableop_resource-lstm_cell_737_biasadd_readvariableop_resource*
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
while_body_4460389*
condR
while_cond_4460388*K
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
NoOpNoOp%^lstm_cell_737/BiasAdd/ReadVariableOp$^lstm_cell_737/MatMul/ReadVariableOp&^lstm_cell_737/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_737/BiasAdd/ReadVariableOp$lstm_cell_737/BiasAdd/ReadVariableOp2J
#lstm_cell_737/MatMul/ReadVariableOp#lstm_cell_737/MatMul/ReadVariableOp2N
%lstm_cell_737/MatMul_1/ReadVariableOp%lstm_cell_737/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_254_lstm_764_while_body_4458668L
Hsequential_254_lstm_764_while_sequential_254_lstm_764_while_loop_counterR
Nsequential_254_lstm_764_while_sequential_254_lstm_764_while_maximum_iterations-
)sequential_254_lstm_764_while_placeholder/
+sequential_254_lstm_764_while_placeholder_1/
+sequential_254_lstm_764_while_placeholder_2/
+sequential_254_lstm_764_while_placeholder_3K
Gsequential_254_lstm_764_while_sequential_254_lstm_764_strided_slice_1_0?
?sequential_254_lstm_764_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_764_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_254_lstm_764_while_lstm_cell_737_matmul_readvariableop_resource_0:2(`
Nsequential_254_lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource_0:
([
Msequential_254_lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource_0:(*
&sequential_254_lstm_764_while_identity,
(sequential_254_lstm_764_while_identity_1,
(sequential_254_lstm_764_while_identity_2,
(sequential_254_lstm_764_while_identity_3,
(sequential_254_lstm_764_while_identity_4,
(sequential_254_lstm_764_while_identity_5I
Esequential_254_lstm_764_while_sequential_254_lstm_764_strided_slice_1?
?sequential_254_lstm_764_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_764_tensorarrayunstack_tensorlistfromtensor\
Jsequential_254_lstm_764_while_lstm_cell_737_matmul_readvariableop_resource:2(^
Lsequential_254_lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource:
(Y
Ksequential_254_lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource:(??Bsequential_254/lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp?Asequential_254/lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp?Csequential_254/lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp?
Osequential_254/lstm_764/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_254/lstm_764/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_254_lstm_764_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_764_tensorarrayunstack_tensorlistfromtensor_0)sequential_254_lstm_764_while_placeholderXsequential_254/lstm_764/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_254/lstm_764/while/lstm_cell_737/MatMul/ReadVariableOpReadVariableOpLsequential_254_lstm_764_while_lstm_cell_737_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_254/lstm_764/while/lstm_cell_737/MatMulMatMulHsequential_254/lstm_764/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_254/lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_254/lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOpNsequential_254_lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_254/lstm_764/while/lstm_cell_737/MatMul_1MatMul+sequential_254_lstm_764_while_placeholder_2Ksequential_254/lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_254/lstm_764/while/lstm_cell_737/addAddV2<sequential_254/lstm_764/while/lstm_cell_737/MatMul:product:0>sequential_254/lstm_764/while/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_254/lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOpMsequential_254_lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_254/lstm_764/while/lstm_cell_737/BiasAddBiasAdd3sequential_254/lstm_764/while/lstm_cell_737/add:z:0Jsequential_254/lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_254/lstm_764/while/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_254/lstm_764/while/lstm_cell_737/splitSplitDsequential_254/lstm_764/while/lstm_cell_737/split/split_dim:output:0<sequential_254/lstm_764/while/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_254/lstm_764/while/lstm_cell_737/SigmoidSigmoid:sequential_254/lstm_764/while/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_254/lstm_764/while/lstm_cell_737/Sigmoid_1Sigmoid:sequential_254/lstm_764/while/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_254/lstm_764/while/lstm_cell_737/mulMul9sequential_254/lstm_764/while/lstm_cell_737/Sigmoid_1:y:0+sequential_254_lstm_764_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_254/lstm_764/while/lstm_cell_737/ReluRelu:sequential_254/lstm_764/while/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_254/lstm_764/while/lstm_cell_737/mul_1Mul7sequential_254/lstm_764/while/lstm_cell_737/Sigmoid:y:0>sequential_254/lstm_764/while/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_254/lstm_764/while/lstm_cell_737/add_1AddV23sequential_254/lstm_764/while/lstm_cell_737/mul:z:05sequential_254/lstm_764/while/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_254/lstm_764/while/lstm_cell_737/Sigmoid_2Sigmoid:sequential_254/lstm_764/while/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_254/lstm_764/while/lstm_cell_737/Relu_1Relu5sequential_254/lstm_764/while/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_254/lstm_764/while/lstm_cell_737/mul_2Mul9sequential_254/lstm_764/while/lstm_cell_737/Sigmoid_2:y:0@sequential_254/lstm_764/while/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_254/lstm_764/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_254_lstm_764_while_placeholder_1)sequential_254_lstm_764_while_placeholder5sequential_254/lstm_764/while/lstm_cell_737/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_254/lstm_764/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_254/lstm_764/while/addAddV2)sequential_254_lstm_764_while_placeholder,sequential_254/lstm_764/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_254/lstm_764/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_254/lstm_764/while/add_1AddV2Hsequential_254_lstm_764_while_sequential_254_lstm_764_while_loop_counter.sequential_254/lstm_764/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_254/lstm_764/while/IdentityIdentity'sequential_254/lstm_764/while/add_1:z:0#^sequential_254/lstm_764/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_764/while/Identity_1IdentityNsequential_254_lstm_764_while_sequential_254_lstm_764_while_maximum_iterations#^sequential_254/lstm_764/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_764/while/Identity_2Identity%sequential_254/lstm_764/while/add:z:0#^sequential_254/lstm_764/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_764/while/Identity_3IdentityRsequential_254/lstm_764/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_254/lstm_764/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_764/while/Identity_4Identity5sequential_254/lstm_764/while/lstm_cell_737/mul_2:z:0#^sequential_254/lstm_764/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_254/lstm_764/while/Identity_5Identity5sequential_254/lstm_764/while/lstm_cell_737/add_1:z:0#^sequential_254/lstm_764/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_254/lstm_764/while/NoOpNoOpC^sequential_254/lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOpB^sequential_254/lstm_764/while/lstm_cell_737/MatMul/ReadVariableOpD^sequential_254/lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_254_lstm_764_while_identity/sequential_254/lstm_764/while/Identity:output:0"]
(sequential_254_lstm_764_while_identity_11sequential_254/lstm_764/while/Identity_1:output:0"]
(sequential_254_lstm_764_while_identity_21sequential_254/lstm_764/while/Identity_2:output:0"]
(sequential_254_lstm_764_while_identity_31sequential_254/lstm_764/while/Identity_3:output:0"]
(sequential_254_lstm_764_while_identity_41sequential_254/lstm_764/while/Identity_4:output:0"]
(sequential_254_lstm_764_while_identity_51sequential_254/lstm_764/while/Identity_5:output:0"?
Ksequential_254_lstm_764_while_lstm_cell_737_biasadd_readvariableop_resourceMsequential_254_lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource_0"?
Lsequential_254_lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resourceNsequential_254_lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource_0"?
Jsequential_254_lstm_764_while_lstm_cell_737_matmul_readvariableop_resourceLsequential_254_lstm_764_while_lstm_cell_737_matmul_readvariableop_resource_0"?
Esequential_254_lstm_764_while_sequential_254_lstm_764_strided_slice_1Gsequential_254_lstm_764_while_sequential_254_lstm_764_strided_slice_1_0"?
?sequential_254_lstm_764_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_764_tensorarrayunstack_tensorlistfromtensor?sequential_254_lstm_764_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_764_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_254/lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOpBsequential_254/lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp2?
Asequential_254/lstm_764/while/lstm_cell_737/MatMul/ReadVariableOpAsequential_254/lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp2?
Csequential_254/lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOpCsequential_254/lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
*__inference_lstm_764_layer_call_fn_4463191

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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4460257o
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
while_cond_4462787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4462787___redundant_placeholder05
1while_while_cond_4462787___redundant_placeholder15
1while_while_cond_4462787___redundant_placeholder25
1while_while_cond_4462787___redundant_placeholder3
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
?
E__inference_lstm_764_layer_call_and_return_conditional_losses_4459608

inputs'
lstm_cell_737_4459526:2('
lstm_cell_737_4459528:
(#
lstm_cell_737_4459530:(
identity??%lstm_cell_737/StatefulPartitionedCall?while;
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
%lstm_cell_737/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_737_4459526lstm_cell_737_4459528lstm_cell_737_4459530*
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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4459525n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_737_4459526lstm_cell_737_4459528lstm_cell_737_4459530*
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
while_body_4459539*
condR
while_cond_4459538*K
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
NoOpNoOp&^lstm_cell_737/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_737/StatefulPartitionedCall%lstm_cell_737/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_762_layer_call_fn_4461937
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4458908|
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
?
?
*__inference_lstm_764_layer_call_fn_4463202

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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4460473o
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
?
E__inference_lstm_763_layer_call_and_return_conditional_losses_4459449

inputs(
lstm_cell_736_4459367:	d?(
lstm_cell_736_4459369:	2?$
lstm_cell_736_4459371:	?
identity??%lstm_cell_736/StatefulPartitionedCall?while;
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
%lstm_cell_736/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_736_4459367lstm_cell_736_4459369lstm_cell_736_4459371*
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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4459321n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_736_4459367lstm_cell_736_4459369lstm_cell_736_4459371*
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
while_body_4459380*
condR
while_cond_4459379*K
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
NoOpNoOp&^lstm_cell_736/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_736/StatefulPartitionedCall%lstm_cell_736/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4462171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4462171___redundant_placeholder05
1while_while_cond_4462171___redundant_placeholder15
1while_while_cond_4462171___redundant_placeholder25
1while_while_cond_4462171___redundant_placeholder3
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4463158

inputs?
,lstm_cell_736_matmul_readvariableop_resource:	d?A
.lstm_cell_736_matmul_1_readvariableop_resource:	2?<
-lstm_cell_736_biasadd_readvariableop_resource:	?
identity??$lstm_cell_736/BiasAdd/ReadVariableOp?#lstm_cell_736/MatMul/ReadVariableOp?%lstm_cell_736/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_736/MatMul/ReadVariableOpReadVariableOp,lstm_cell_736_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_736/MatMulMatMulstrided_slice_2:output:0+lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_736_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_736/MatMul_1MatMulzeros:output:0-lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_736/addAddV2lstm_cell_736/MatMul:product:0 lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_736_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_736/BiasAddBiasAddlstm_cell_736/add:z:0,lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_736/splitSplit&lstm_cell_736/split/split_dim:output:0lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_736/SigmoidSigmoidlstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_1Sigmoidlstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_736/mulMullstm_cell_736/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_736/ReluRelulstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_1Mullstm_cell_736/Sigmoid:y:0 lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_736/add_1AddV2lstm_cell_736/mul:z:0lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_2Sigmoidlstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_736/Relu_1Relulstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_2Mullstm_cell_736/Sigmoid_2:y:0"lstm_cell_736/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_736_matmul_readvariableop_resource.lstm_cell_736_matmul_1_readvariableop_resource-lstm_cell_736_biasadd_readvariableop_resource*
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
while_body_4463074*
condR
while_cond_4463073*K
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
NoOpNoOp%^lstm_cell_736/BiasAdd/ReadVariableOp$^lstm_cell_736/MatMul/ReadVariableOp&^lstm_cell_736/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_736/BiasAdd/ReadVariableOp$lstm_cell_736/BiasAdd/ReadVariableOp2J
#lstm_cell_736/MatMul/ReadVariableOp#lstm_cell_736/MatMul/ReadVariableOp2N
%lstm_cell_736/MatMul_1/ReadVariableOp%lstm_cell_736/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_4459189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_736_4459213_0:	d?0
while_lstm_cell_736_4459215_0:	2?,
while_lstm_cell_736_4459217_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_736_4459213:	d?.
while_lstm_cell_736_4459215:	2?*
while_lstm_cell_736_4459217:	???+while/lstm_cell_736/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_736/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_736_4459213_0while_lstm_cell_736_4459215_0while_lstm_cell_736_4459217_0*
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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4459175?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_736/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_736/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_736/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_736/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_736_4459213while_lstm_cell_736_4459213_0"<
while_lstm_cell_736_4459215while_lstm_cell_736_4459215_0"<
while_lstm_cell_736_4459217while_lstm_cell_736_4459217_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_736/StatefulPartitionedCall+while/lstm_cell_736/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4459258

inputs(
lstm_cell_736_4459176:	d?(
lstm_cell_736_4459178:	2?$
lstm_cell_736_4459180:	?
identity??%lstm_cell_736/StatefulPartitionedCall?while;
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
%lstm_cell_736/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_736_4459176lstm_cell_736_4459178lstm_cell_736_4459180*
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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4459175n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_736_4459176lstm_cell_736_4459178lstm_cell_736_4459180*
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
while_body_4459189*
condR
while_cond_4459188*K
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
NoOpNoOp&^lstm_cell_736/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_736/StatefulPartitionedCall%lstm_cell_736/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_254_layer_call_fn_4461072

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
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460871o
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
while_cond_4460388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4460388___redundant_placeholder05
1while_while_cond_4460388___redundant_placeholder15
1while_while_cond_4460388___redundant_placeholder25
1while_while_cond_4460388___redundant_placeholder3
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463345
inputs_0>
,lstm_cell_737_matmul_readvariableop_resource:2(@
.lstm_cell_737_matmul_1_readvariableop_resource:
(;
-lstm_cell_737_biasadd_readvariableop_resource:(
identity??$lstm_cell_737/BiasAdd/ReadVariableOp?#lstm_cell_737/MatMul/ReadVariableOp?%lstm_cell_737/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_737/MatMul/ReadVariableOpReadVariableOp,lstm_cell_737_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_737/MatMulMatMulstrided_slice_2:output:0+lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_737_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_737/MatMul_1MatMulzeros:output:0-lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_737/addAddV2lstm_cell_737/MatMul:product:0 lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_737_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_737/BiasAddBiasAddlstm_cell_737/add:z:0,lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_737/splitSplit&lstm_cell_737/split/split_dim:output:0lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_737/SigmoidSigmoidlstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_1Sigmoidlstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_737/mulMullstm_cell_737/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_737/ReluRelulstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_1Mullstm_cell_737/Sigmoid:y:0 lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_737/add_1AddV2lstm_cell_737/mul:z:0lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_2Sigmoidlstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_737/Relu_1Relulstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_2Mullstm_cell_737/Sigmoid_2:y:0"lstm_cell_737/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_737_matmul_readvariableop_resource.lstm_cell_737_matmul_1_readvariableop_resource-lstm_cell_737_biasadd_readvariableop_resource*
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
while_body_4463261*
condR
while_cond_4463260*K
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
NoOpNoOp%^lstm_cell_737/BiasAdd/ReadVariableOp$^lstm_cell_737/MatMul/ReadVariableOp&^lstm_cell_737/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_737/BiasAdd/ReadVariableOp$lstm_cell_737/BiasAdd/ReadVariableOp2J
#lstm_cell_737/MatMul/ReadVariableOp#lstm_cell_737/MatMul/ReadVariableOp2N
%lstm_cell_737/MatMul_1/ReadVariableOp%lstm_cell_737/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?	
?
F__inference_dense_254_layer_call_and_return_conditional_losses_4463793

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
while_body_4463547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_737_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_737_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_737_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_737_matmul_readvariableop_resource:2(F
4while_lstm_cell_737_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_737_biasadd_readvariableop_resource:(??*while/lstm_cell_737/BiasAdd/ReadVariableOp?)while/lstm_cell_737/MatMul/ReadVariableOp?+while/lstm_cell_737/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_737/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_737_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_737/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_737_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_737/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_737/addAddV2$while/lstm_cell_737/MatMul:product:0&while/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_737_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_737/BiasAddBiasAddwhile/lstm_cell_737/add:z:02while/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_737/splitSplit,while/lstm_cell_737/split/split_dim:output:0$while/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_737/SigmoidSigmoid"while/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_1Sigmoid"while/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mulMul!while/lstm_cell_737/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_737/ReluRelu"while/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_1Mulwhile/lstm_cell_737/Sigmoid:y:0&while/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/add_1AddV2while/lstm_cell_737/mul:z:0while/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_2Sigmoid"while/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_737/Relu_1Reluwhile/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_2Mul!while/lstm_cell_737/Sigmoid_2:y:0(while/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_737/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_737/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_737/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_737/BiasAdd/ReadVariableOp*^while/lstm_cell_737/MatMul/ReadVariableOp,^while/lstm_cell_737/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_737_biasadd_readvariableop_resource5while_lstm_cell_737_biasadd_readvariableop_resource_0"n
4while_lstm_cell_737_matmul_1_readvariableop_resource6while_lstm_cell_737_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_737_matmul_readvariableop_resource4while_lstm_cell_737_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_737/BiasAdd/ReadVariableOp*while/lstm_cell_737/BiasAdd/ReadVariableOp2V
)while/lstm_cell_737/MatMul/ReadVariableOp)while/lstm_cell_737/MatMul/ReadVariableOp2Z
+while/lstm_cell_737/MatMul_1/ReadVariableOp+while/lstm_cell_737/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4459957

inputs?
,lstm_cell_735_matmul_readvariableop_resource:	?A
.lstm_cell_735_matmul_1_readvariableop_resource:	d?<
-lstm_cell_735_biasadd_readvariableop_resource:	?
identity??$lstm_cell_735/BiasAdd/ReadVariableOp?#lstm_cell_735/MatMul/ReadVariableOp?%lstm_cell_735/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_735/MatMul/ReadVariableOpReadVariableOp,lstm_cell_735_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_735/MatMulMatMulstrided_slice_2:output:0+lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_735_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_735/MatMul_1MatMulzeros:output:0-lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_735/addAddV2lstm_cell_735/MatMul:product:0 lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_735_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_735/BiasAddBiasAddlstm_cell_735/add:z:0,lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_735/splitSplit&lstm_cell_735/split/split_dim:output:0lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_735/SigmoidSigmoidlstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_1Sigmoidlstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_735/mulMullstm_cell_735/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_735/ReluRelulstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_1Mullstm_cell_735/Sigmoid:y:0 lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_735/add_1AddV2lstm_cell_735/mul:z:0lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_2Sigmoidlstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_735/Relu_1Relulstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_2Mullstm_cell_735/Sigmoid_2:y:0"lstm_cell_735/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_735_matmul_readvariableop_resource.lstm_cell_735_matmul_1_readvariableop_resource-lstm_cell_735_biasadd_readvariableop_resource*
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
while_body_4459873*
condR
while_cond_4459872*K
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
NoOpNoOp%^lstm_cell_735/BiasAdd/ReadVariableOp$^lstm_cell_735/MatMul/ReadVariableOp&^lstm_cell_735/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_735/BiasAdd/ReadVariableOp$lstm_cell_735/BiasAdd/ReadVariableOp2J
#lstm_cell_735/MatMul/ReadVariableOp#lstm_cell_735/MatMul/ReadVariableOp2N
%lstm_cell_735/MatMul_1/ReadVariableOp%lstm_cell_735/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4459380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_736_4459404_0:	d?0
while_lstm_cell_736_4459406_0:	2?,
while_lstm_cell_736_4459408_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_736_4459404:	d?.
while_lstm_cell_736_4459406:	2?*
while_lstm_cell_736_4459408:	???+while/lstm_cell_736/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_736/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_736_4459404_0while_lstm_cell_736_4459406_0while_lstm_cell_736_4459408_0*
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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4459321?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_736/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_736/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_736/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_736/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_736_4459404while_lstm_cell_736_4459404_0"<
while_lstm_cell_736_4459406while_lstm_cell_736_4459406_0"<
while_lstm_cell_736_4459408while_lstm_cell_736_4459408_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_736/StatefulPartitionedCall+while/lstm_cell_736/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_762_while_body_4461131.
*lstm_762_while_lstm_762_while_loop_counter4
0lstm_762_while_lstm_762_while_maximum_iterations
lstm_762_while_placeholder 
lstm_762_while_placeholder_1 
lstm_762_while_placeholder_2 
lstm_762_while_placeholder_3-
)lstm_762_while_lstm_762_strided_slice_1_0i
elstm_762_while_tensorarrayv2read_tensorlistgetitem_lstm_762_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_762_while_lstm_cell_735_matmul_readvariableop_resource_0:	?R
?lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource_0:	d?M
>lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource_0:	?
lstm_762_while_identity
lstm_762_while_identity_1
lstm_762_while_identity_2
lstm_762_while_identity_3
lstm_762_while_identity_4
lstm_762_while_identity_5+
'lstm_762_while_lstm_762_strided_slice_1g
clstm_762_while_tensorarrayv2read_tensorlistgetitem_lstm_762_tensorarrayunstack_tensorlistfromtensorN
;lstm_762_while_lstm_cell_735_matmul_readvariableop_resource:	?P
=lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource:	d?K
<lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource:	???3lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp?2lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp?4lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp?
@lstm_762/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_762/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_762_while_tensorarrayv2read_tensorlistgetitem_lstm_762_tensorarrayunstack_tensorlistfromtensor_0lstm_762_while_placeholderIlstm_762/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_762/while/lstm_cell_735/MatMul/ReadVariableOpReadVariableOp=lstm_762_while_lstm_cell_735_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_762/while/lstm_cell_735/MatMulMatMul9lstm_762/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp?lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_762/while/lstm_cell_735/MatMul_1MatMullstm_762_while_placeholder_2<lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_762/while/lstm_cell_735/addAddV2-lstm_762/while/lstm_cell_735/MatMul:product:0/lstm_762/while/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp>lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_762/while/lstm_cell_735/BiasAddBiasAdd$lstm_762/while/lstm_cell_735/add:z:0;lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_762/while/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_762/while/lstm_cell_735/splitSplit5lstm_762/while/lstm_cell_735/split/split_dim:output:0-lstm_762/while/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_762/while/lstm_cell_735/SigmoidSigmoid+lstm_762/while/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_762/while/lstm_cell_735/Sigmoid_1Sigmoid+lstm_762/while/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_762/while/lstm_cell_735/mulMul*lstm_762/while/lstm_cell_735/Sigmoid_1:y:0lstm_762_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_762/while/lstm_cell_735/ReluRelu+lstm_762/while/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_762/while/lstm_cell_735/mul_1Mul(lstm_762/while/lstm_cell_735/Sigmoid:y:0/lstm_762/while/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_762/while/lstm_cell_735/add_1AddV2$lstm_762/while/lstm_cell_735/mul:z:0&lstm_762/while/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_762/while/lstm_cell_735/Sigmoid_2Sigmoid+lstm_762/while/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_762/while/lstm_cell_735/Relu_1Relu&lstm_762/while/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_762/while/lstm_cell_735/mul_2Mul*lstm_762/while/lstm_cell_735/Sigmoid_2:y:01lstm_762/while/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_762/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_762_while_placeholder_1lstm_762_while_placeholder&lstm_762/while/lstm_cell_735/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_762/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_762/while/addAddV2lstm_762_while_placeholderlstm_762/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_762/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_762/while/add_1AddV2*lstm_762_while_lstm_762_while_loop_counterlstm_762/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_762/while/IdentityIdentitylstm_762/while/add_1:z:0^lstm_762/while/NoOp*
T0*
_output_shapes
: ?
lstm_762/while/Identity_1Identity0lstm_762_while_lstm_762_while_maximum_iterations^lstm_762/while/NoOp*
T0*
_output_shapes
: t
lstm_762/while/Identity_2Identitylstm_762/while/add:z:0^lstm_762/while/NoOp*
T0*
_output_shapes
: ?
lstm_762/while/Identity_3IdentityClstm_762/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_762/while/NoOp*
T0*
_output_shapes
: ?
lstm_762/while/Identity_4Identity&lstm_762/while/lstm_cell_735/mul_2:z:0^lstm_762/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_762/while/Identity_5Identity&lstm_762/while/lstm_cell_735/add_1:z:0^lstm_762/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_762/while/NoOpNoOp4^lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp3^lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp5^lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_762_while_identity lstm_762/while/Identity:output:0"?
lstm_762_while_identity_1"lstm_762/while/Identity_1:output:0"?
lstm_762_while_identity_2"lstm_762/while/Identity_2:output:0"?
lstm_762_while_identity_3"lstm_762/while/Identity_3:output:0"?
lstm_762_while_identity_4"lstm_762/while/Identity_4:output:0"?
lstm_762_while_identity_5"lstm_762/while/Identity_5:output:0"T
'lstm_762_while_lstm_762_strided_slice_1)lstm_762_while_lstm_762_strided_slice_1_0"~
<lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource>lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource_0"?
=lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource?lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource_0"|
;lstm_762_while_lstm_cell_735_matmul_readvariableop_resource=lstm_762_while_lstm_cell_735_matmul_readvariableop_resource_0"?
clstm_762_while_tensorarrayv2read_tensorlistgetitem_lstm_762_tensorarrayunstack_tensorlistfromtensorelstm_762_while_tensorarrayv2read_tensorlistgetitem_lstm_762_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp3lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp2h
2lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp2lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp2l
4lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp4lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_764_while_body_4461836.
*lstm_764_while_lstm_764_while_loop_counter4
0lstm_764_while_lstm_764_while_maximum_iterations
lstm_764_while_placeholder 
lstm_764_while_placeholder_1 
lstm_764_while_placeholder_2 
lstm_764_while_placeholder_3-
)lstm_764_while_lstm_764_strided_slice_1_0i
elstm_764_while_tensorarrayv2read_tensorlistgetitem_lstm_764_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_764_while_lstm_cell_737_matmul_readvariableop_resource_0:2(Q
?lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource_0:
(L
>lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource_0:(
lstm_764_while_identity
lstm_764_while_identity_1
lstm_764_while_identity_2
lstm_764_while_identity_3
lstm_764_while_identity_4
lstm_764_while_identity_5+
'lstm_764_while_lstm_764_strided_slice_1g
clstm_764_while_tensorarrayv2read_tensorlistgetitem_lstm_764_tensorarrayunstack_tensorlistfromtensorM
;lstm_764_while_lstm_cell_737_matmul_readvariableop_resource:2(O
=lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource:
(J
<lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource:(??3lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp?2lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp?4lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp?
@lstm_764/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_764/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_764_while_tensorarrayv2read_tensorlistgetitem_lstm_764_tensorarrayunstack_tensorlistfromtensor_0lstm_764_while_placeholderIlstm_764/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_764/while/lstm_cell_737/MatMul/ReadVariableOpReadVariableOp=lstm_764_while_lstm_cell_737_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_764/while/lstm_cell_737/MatMulMatMul9lstm_764/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp?lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_764/while/lstm_cell_737/MatMul_1MatMullstm_764_while_placeholder_2<lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_764/while/lstm_cell_737/addAddV2-lstm_764/while/lstm_cell_737/MatMul:product:0/lstm_764/while/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp>lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_764/while/lstm_cell_737/BiasAddBiasAdd$lstm_764/while/lstm_cell_737/add:z:0;lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_764/while/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_764/while/lstm_cell_737/splitSplit5lstm_764/while/lstm_cell_737/split/split_dim:output:0-lstm_764/while/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_764/while/lstm_cell_737/SigmoidSigmoid+lstm_764/while/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_764/while/lstm_cell_737/Sigmoid_1Sigmoid+lstm_764/while/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_764/while/lstm_cell_737/mulMul*lstm_764/while/lstm_cell_737/Sigmoid_1:y:0lstm_764_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_764/while/lstm_cell_737/ReluRelu+lstm_764/while/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_764/while/lstm_cell_737/mul_1Mul(lstm_764/while/lstm_cell_737/Sigmoid:y:0/lstm_764/while/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_764/while/lstm_cell_737/add_1AddV2$lstm_764/while/lstm_cell_737/mul:z:0&lstm_764/while/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_764/while/lstm_cell_737/Sigmoid_2Sigmoid+lstm_764/while/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_764/while/lstm_cell_737/Relu_1Relu&lstm_764/while/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_764/while/lstm_cell_737/mul_2Mul*lstm_764/while/lstm_cell_737/Sigmoid_2:y:01lstm_764/while/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_764/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_764_while_placeholder_1lstm_764_while_placeholder&lstm_764/while/lstm_cell_737/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_764/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_764/while/addAddV2lstm_764_while_placeholderlstm_764/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_764/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_764/while/add_1AddV2*lstm_764_while_lstm_764_while_loop_counterlstm_764/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_764/while/IdentityIdentitylstm_764/while/add_1:z:0^lstm_764/while/NoOp*
T0*
_output_shapes
: ?
lstm_764/while/Identity_1Identity0lstm_764_while_lstm_764_while_maximum_iterations^lstm_764/while/NoOp*
T0*
_output_shapes
: t
lstm_764/while/Identity_2Identitylstm_764/while/add:z:0^lstm_764/while/NoOp*
T0*
_output_shapes
: ?
lstm_764/while/Identity_3IdentityClstm_764/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_764/while/NoOp*
T0*
_output_shapes
: ?
lstm_764/while/Identity_4Identity&lstm_764/while/lstm_cell_737/mul_2:z:0^lstm_764/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_764/while/Identity_5Identity&lstm_764/while/lstm_cell_737/add_1:z:0^lstm_764/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_764/while/NoOpNoOp4^lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp3^lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp5^lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_764_while_identity lstm_764/while/Identity:output:0"?
lstm_764_while_identity_1"lstm_764/while/Identity_1:output:0"?
lstm_764_while_identity_2"lstm_764/while/Identity_2:output:0"?
lstm_764_while_identity_3"lstm_764/while/Identity_3:output:0"?
lstm_764_while_identity_4"lstm_764/while/Identity_4:output:0"?
lstm_764_while_identity_5"lstm_764/while/Identity_5:output:0"T
'lstm_764_while_lstm_764_strided_slice_1)lstm_764_while_lstm_764_strided_slice_1_0"~
<lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource>lstm_764_while_lstm_cell_737_biasadd_readvariableop_resource_0"?
=lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource?lstm_764_while_lstm_cell_737_matmul_1_readvariableop_resource_0"|
;lstm_764_while_lstm_cell_737_matmul_readvariableop_resource=lstm_764_while_lstm_cell_737_matmul_readvariableop_resource_0"?
clstm_764_while_tensorarrayv2read_tensorlistgetitem_lstm_764_tensorarrayunstack_tensorlistfromtensorelstm_764_while_tensorarrayv2read_tensorlistgetitem_lstm_764_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp3lstm_764/while/lstm_cell_737/BiasAdd/ReadVariableOp2h
2lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp2lstm_764/while/lstm_cell_737/MatMul/ReadVariableOp2l
4lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp4lstm_764/while/lstm_cell_737/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4463546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4463546___redundant_placeholder05
1while_while_cond_4463546___redundant_placeholder15
1while_while_cond_4463546___redundant_placeholder25
1while_while_cond_4463546___redundant_placeholder3
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
?
*__inference_lstm_764_layer_call_fn_4463180
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4459799o
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
?
while_cond_4462457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4462457___redundant_placeholder05
1while_while_cond_4462457___redundant_placeholder15
1while_while_cond_4462457___redundant_placeholder25
1while_while_cond_4462457___redundant_placeholder3
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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4459175

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
?
?
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4464055

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
while_body_4459539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_737_4459563_0:2(/
while_lstm_cell_737_4459565_0:
(+
while_lstm_cell_737_4459567_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_737_4459563:2(-
while_lstm_cell_737_4459565:
()
while_lstm_cell_737_4459567:(??+while/lstm_cell_737/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_737/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_737_4459563_0while_lstm_cell_737_4459565_0while_lstm_cell_737_4459567_0*
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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4459525?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_737/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_737/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_737/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_737/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_737_4459563while_lstm_cell_737_4459563_0"<
while_lstm_cell_737_4459565while_lstm_cell_737_4459565_0"<
while_lstm_cell_737_4459567while_lstm_cell_737_4459567_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_737/StatefulPartitionedCall+while/lstm_cell_737/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4460389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_737_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_737_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_737_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_737_matmul_readvariableop_resource:2(F
4while_lstm_cell_737_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_737_biasadd_readvariableop_resource:(??*while/lstm_cell_737/BiasAdd/ReadVariableOp?)while/lstm_cell_737/MatMul/ReadVariableOp?+while/lstm_cell_737/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_737/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_737_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_737/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_737_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_737/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_737/addAddV2$while/lstm_cell_737/MatMul:product:0&while/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_737_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_737/BiasAddBiasAddwhile/lstm_cell_737/add:z:02while/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_737/splitSplit,while/lstm_cell_737/split/split_dim:output:0$while/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_737/SigmoidSigmoid"while/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_1Sigmoid"while/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mulMul!while/lstm_cell_737/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_737/ReluRelu"while/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_1Mulwhile/lstm_cell_737/Sigmoid:y:0&while/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/add_1AddV2while/lstm_cell_737/mul:z:0while/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_2Sigmoid"while/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_737/Relu_1Reluwhile/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_2Mul!while/lstm_cell_737/Sigmoid_2:y:0(while/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_737/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_737/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_737/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_737/BiasAdd/ReadVariableOp*^while/lstm_cell_737/MatMul/ReadVariableOp,^while/lstm_cell_737/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_737_biasadd_readvariableop_resource5while_lstm_cell_737_biasadd_readvariableop_resource_0"n
4while_lstm_cell_737_matmul_1_readvariableop_resource6while_lstm_cell_737_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_737_matmul_readvariableop_resource4while_lstm_cell_737_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_737/BiasAdd/ReadVariableOp*while/lstm_cell_737/BiasAdd/ReadVariableOp2V
)while/lstm_cell_737/MatMul/ReadVariableOp)while/lstm_cell_737/MatMul/ReadVariableOp2Z
+while/lstm_cell_737/MatMul_1/ReadVariableOp+while/lstm_cell_737/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463631

inputs>
,lstm_cell_737_matmul_readvariableop_resource:2(@
.lstm_cell_737_matmul_1_readvariableop_resource:
(;
-lstm_cell_737_biasadd_readvariableop_resource:(
identity??$lstm_cell_737/BiasAdd/ReadVariableOp?#lstm_cell_737/MatMul/ReadVariableOp?%lstm_cell_737/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_737/MatMul/ReadVariableOpReadVariableOp,lstm_cell_737_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_737/MatMulMatMulstrided_slice_2:output:0+lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_737_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_737/MatMul_1MatMulzeros:output:0-lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_737/addAddV2lstm_cell_737/MatMul:product:0 lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_737_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_737/BiasAddBiasAddlstm_cell_737/add:z:0,lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_737/splitSplit&lstm_cell_737/split/split_dim:output:0lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_737/SigmoidSigmoidlstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_1Sigmoidlstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_737/mulMullstm_cell_737/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_737/ReluRelulstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_1Mullstm_cell_737/Sigmoid:y:0 lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_737/add_1AddV2lstm_cell_737/mul:z:0lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_2Sigmoidlstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_737/Relu_1Relulstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_2Mullstm_cell_737/Sigmoid_2:y:0"lstm_cell_737/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_737_matmul_readvariableop_resource.lstm_cell_737_matmul_1_readvariableop_resource-lstm_cell_737_biasadd_readvariableop_resource*
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
while_body_4463547*
condR
while_cond_4463546*K
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
NoOpNoOp%^lstm_cell_737/BiasAdd/ReadVariableOp$^lstm_cell_737/MatMul/ReadVariableOp&^lstm_cell_737/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_737/BiasAdd/ReadVariableOp$lstm_cell_737/BiasAdd/ReadVariableOp2J
#lstm_cell_737/MatMul/ReadVariableOp#lstm_cell_737/MatMul/ReadVariableOp2N
%lstm_cell_737/MatMul_1/ReadVariableOp%lstm_cell_737/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460953
lstm_762_input#
lstm_762_4460926:	?#
lstm_762_4460928:	d?
lstm_762_4460930:	?#
lstm_763_4460933:	d?#
lstm_763_4460935:	2?
lstm_763_4460937:	?"
lstm_764_4460940:2("
lstm_764_4460942:
(
lstm_764_4460944:(#
dense_254_4460947:

dense_254_4460949:
identity??!dense_254/StatefulPartitionedCall? lstm_762/StatefulPartitionedCall? lstm_763/StatefulPartitionedCall? lstm_764/StatefulPartitionedCall?
 lstm_762/StatefulPartitionedCallStatefulPartitionedCalllstm_762_inputlstm_762_4460926lstm_762_4460928lstm_762_4460930*
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4459957?
 lstm_763/StatefulPartitionedCallStatefulPartitionedCall)lstm_762/StatefulPartitionedCall:output:0lstm_763_4460933lstm_763_4460935lstm_763_4460937*
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4460107?
 lstm_764/StatefulPartitionedCallStatefulPartitionedCall)lstm_763/StatefulPartitionedCall:output:0lstm_764_4460940lstm_764_4460942lstm_764_4460944*
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4460257?
!dense_254/StatefulPartitionedCallStatefulPartitionedCall)lstm_764/StatefulPartitionedCall:output:0dense_254_4460947dense_254_4460949*
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
F__inference_dense_254_layer_call_and_return_conditional_losses_4460275y
IdentityIdentity*dense_254/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_254/StatefulPartitionedCall!^lstm_762/StatefulPartitionedCall!^lstm_763/StatefulPartitionedCall!^lstm_764/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_254/StatefulPartitionedCall!dense_254/StatefulPartitionedCall2D
 lstm_762/StatefulPartitionedCall lstm_762/StatefulPartitionedCall2D
 lstm_763/StatefulPartitionedCall lstm_763/StatefulPartitionedCall2D
 lstm_764/StatefulPartitionedCall lstm_764/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_762_input
?
?
while_cond_4463689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4463689___redundant_placeholder05
1while_while_cond_4463689___redundant_placeholder15
1while_while_cond_4463689___redundant_placeholder25
1while_while_cond_4463689___redundant_placeholder3
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
?C
?

lstm_763_while_body_4461697.
*lstm_763_while_lstm_763_while_loop_counter4
0lstm_763_while_lstm_763_while_maximum_iterations
lstm_763_while_placeholder 
lstm_763_while_placeholder_1 
lstm_763_while_placeholder_2 
lstm_763_while_placeholder_3-
)lstm_763_while_lstm_763_strided_slice_1_0i
elstm_763_while_tensorarrayv2read_tensorlistgetitem_lstm_763_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_763_while_lstm_cell_736_matmul_readvariableop_resource_0:	d?R
?lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource_0:	2?M
>lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource_0:	?
lstm_763_while_identity
lstm_763_while_identity_1
lstm_763_while_identity_2
lstm_763_while_identity_3
lstm_763_while_identity_4
lstm_763_while_identity_5+
'lstm_763_while_lstm_763_strided_slice_1g
clstm_763_while_tensorarrayv2read_tensorlistgetitem_lstm_763_tensorarrayunstack_tensorlistfromtensorN
;lstm_763_while_lstm_cell_736_matmul_readvariableop_resource:	d?P
=lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource:	2?K
<lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource:	???3lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp?2lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp?4lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp?
@lstm_763/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_763/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_763_while_tensorarrayv2read_tensorlistgetitem_lstm_763_tensorarrayunstack_tensorlistfromtensor_0lstm_763_while_placeholderIlstm_763/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_763/while/lstm_cell_736/MatMul/ReadVariableOpReadVariableOp=lstm_763_while_lstm_cell_736_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_763/while/lstm_cell_736/MatMulMatMul9lstm_763/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp?lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_763/while/lstm_cell_736/MatMul_1MatMullstm_763_while_placeholder_2<lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_763/while/lstm_cell_736/addAddV2-lstm_763/while/lstm_cell_736/MatMul:product:0/lstm_763/while/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp>lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_763/while/lstm_cell_736/BiasAddBiasAdd$lstm_763/while/lstm_cell_736/add:z:0;lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_763/while/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_763/while/lstm_cell_736/splitSplit5lstm_763/while/lstm_cell_736/split/split_dim:output:0-lstm_763/while/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_763/while/lstm_cell_736/SigmoidSigmoid+lstm_763/while/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_763/while/lstm_cell_736/Sigmoid_1Sigmoid+lstm_763/while/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_763/while/lstm_cell_736/mulMul*lstm_763/while/lstm_cell_736/Sigmoid_1:y:0lstm_763_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_763/while/lstm_cell_736/ReluRelu+lstm_763/while/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_763/while/lstm_cell_736/mul_1Mul(lstm_763/while/lstm_cell_736/Sigmoid:y:0/lstm_763/while/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_763/while/lstm_cell_736/add_1AddV2$lstm_763/while/lstm_cell_736/mul:z:0&lstm_763/while/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_763/while/lstm_cell_736/Sigmoid_2Sigmoid+lstm_763/while/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_763/while/lstm_cell_736/Relu_1Relu&lstm_763/while/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_763/while/lstm_cell_736/mul_2Mul*lstm_763/while/lstm_cell_736/Sigmoid_2:y:01lstm_763/while/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_763/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_763_while_placeholder_1lstm_763_while_placeholder&lstm_763/while/lstm_cell_736/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_763/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_763/while/addAddV2lstm_763_while_placeholderlstm_763/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_763/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_763/while/add_1AddV2*lstm_763_while_lstm_763_while_loop_counterlstm_763/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_763/while/IdentityIdentitylstm_763/while/add_1:z:0^lstm_763/while/NoOp*
T0*
_output_shapes
: ?
lstm_763/while/Identity_1Identity0lstm_763_while_lstm_763_while_maximum_iterations^lstm_763/while/NoOp*
T0*
_output_shapes
: t
lstm_763/while/Identity_2Identitylstm_763/while/add:z:0^lstm_763/while/NoOp*
T0*
_output_shapes
: ?
lstm_763/while/Identity_3IdentityClstm_763/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_763/while/NoOp*
T0*
_output_shapes
: ?
lstm_763/while/Identity_4Identity&lstm_763/while/lstm_cell_736/mul_2:z:0^lstm_763/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_763/while/Identity_5Identity&lstm_763/while/lstm_cell_736/add_1:z:0^lstm_763/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_763/while/NoOpNoOp4^lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp3^lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp5^lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_763_while_identity lstm_763/while/Identity:output:0"?
lstm_763_while_identity_1"lstm_763/while/Identity_1:output:0"?
lstm_763_while_identity_2"lstm_763/while/Identity_2:output:0"?
lstm_763_while_identity_3"lstm_763/while/Identity_3:output:0"?
lstm_763_while_identity_4"lstm_763/while/Identity_4:output:0"?
lstm_763_while_identity_5"lstm_763/while/Identity_5:output:0"T
'lstm_763_while_lstm_763_strided_slice_1)lstm_763_while_lstm_763_strided_slice_1_0"~
<lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource>lstm_763_while_lstm_cell_736_biasadd_readvariableop_resource_0"?
=lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource?lstm_763_while_lstm_cell_736_matmul_1_readvariableop_resource_0"|
;lstm_763_while_lstm_cell_736_matmul_readvariableop_resource=lstm_763_while_lstm_cell_736_matmul_readvariableop_resource_0"?
clstm_763_while_tensorarrayv2read_tensorlistgetitem_lstm_763_tensorarrayunstack_tensorlistfromtensorelstm_763_while_tensorarrayv2read_tensorlistgetitem_lstm_763_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp3lstm_763/while/lstm_cell_736/BiasAdd/ReadVariableOp2h
2lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp2lstm_763/while/lstm_cell_736/MatMul/ReadVariableOp2l
4lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp4lstm_763/while/lstm_cell_736/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4460023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_736_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_736_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_736_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_736_matmul_readvariableop_resource:	d?G
4while_lstm_cell_736_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_736_biasadd_readvariableop_resource:	???*while/lstm_cell_736/BiasAdd/ReadVariableOp?)while/lstm_cell_736/MatMul/ReadVariableOp?+while/lstm_cell_736/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_736/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_736_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_736/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_736_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_736/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_736/addAddV2$while/lstm_cell_736/MatMul:product:0&while/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_736_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_736/BiasAddBiasAddwhile/lstm_cell_736/add:z:02while/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_736/splitSplit,while/lstm_cell_736/split/split_dim:output:0$while/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_736/SigmoidSigmoid"while/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_1Sigmoid"while/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mulMul!while/lstm_cell_736/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_736/ReluRelu"while/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_1Mulwhile/lstm_cell_736/Sigmoid:y:0&while/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/add_1AddV2while/lstm_cell_736/mul:z:0while/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_2Sigmoid"while/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_736/Relu_1Reluwhile/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_2Mul!while/lstm_cell_736/Sigmoid_2:y:0(while/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_736/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_736/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_736/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_736/BiasAdd/ReadVariableOp*^while/lstm_cell_736/MatMul/ReadVariableOp,^while/lstm_cell_736/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_736_biasadd_readvariableop_resource5while_lstm_cell_736_biasadd_readvariableop_resource_0"n
4while_lstm_cell_736_matmul_1_readvariableop_resource6while_lstm_cell_736_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_736_matmul_readvariableop_resource4while_lstm_cell_736_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_736/BiasAdd/ReadVariableOp*while/lstm_cell_736/BiasAdd/ReadVariableOp2V
)while/lstm_cell_736/MatMul/ReadVariableOp)while/lstm_cell_736/MatMul/ReadVariableOp2Z
+while/lstm_cell_736/MatMul_1/ReadVariableOp+while/lstm_cell_736/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460983
lstm_762_input#
lstm_762_4460956:	?#
lstm_762_4460958:	d?
lstm_762_4460960:	?#
lstm_763_4460963:	d?#
lstm_763_4460965:	2?
lstm_763_4460967:	?"
lstm_764_4460970:2("
lstm_764_4460972:
(
lstm_764_4460974:(#
dense_254_4460977:

dense_254_4460979:
identity??!dense_254/StatefulPartitionedCall? lstm_762/StatefulPartitionedCall? lstm_763/StatefulPartitionedCall? lstm_764/StatefulPartitionedCall?
 lstm_762/StatefulPartitionedCallStatefulPartitionedCalllstm_762_inputlstm_762_4460956lstm_762_4460958lstm_762_4460960*
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4460803?
 lstm_763/StatefulPartitionedCallStatefulPartitionedCall)lstm_762/StatefulPartitionedCall:output:0lstm_763_4460963lstm_763_4460965lstm_763_4460967*
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4460638?
 lstm_764/StatefulPartitionedCallStatefulPartitionedCall)lstm_763/StatefulPartitionedCall:output:0lstm_764_4460970lstm_764_4460972lstm_764_4460974*
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4460473?
!dense_254/StatefulPartitionedCallStatefulPartitionedCall)lstm_764/StatefulPartitionedCall:output:0dense_254_4460977dense_254_4460979*
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
F__inference_dense_254_layer_call_and_return_conditional_losses_4460275y
IdentityIdentity*dense_254/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_254/StatefulPartitionedCall!^lstm_762/StatefulPartitionedCall!^lstm_763/StatefulPartitionedCall!^lstm_764/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_254/StatefulPartitionedCall!dense_254/StatefulPartitionedCall2D
 lstm_762/StatefulPartitionedCall lstm_762/StatefulPartitionedCall2D
 lstm_763/StatefulPartitionedCall lstm_763/StatefulPartitionedCall2D
 lstm_764/StatefulPartitionedCall lstm_764/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_762_input
?J
?
E__inference_lstm_763_layer_call_and_return_conditional_losses_4463015

inputs?
,lstm_cell_736_matmul_readvariableop_resource:	d?A
.lstm_cell_736_matmul_1_readvariableop_resource:	2?<
-lstm_cell_736_biasadd_readvariableop_resource:	?
identity??$lstm_cell_736/BiasAdd/ReadVariableOp?#lstm_cell_736/MatMul/ReadVariableOp?%lstm_cell_736/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_736/MatMul/ReadVariableOpReadVariableOp,lstm_cell_736_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_736/MatMulMatMulstrided_slice_2:output:0+lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_736_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_736/MatMul_1MatMulzeros:output:0-lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_736/addAddV2lstm_cell_736/MatMul:product:0 lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_736_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_736/BiasAddBiasAddlstm_cell_736/add:z:0,lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_736/splitSplit&lstm_cell_736/split/split_dim:output:0lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_736/SigmoidSigmoidlstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_1Sigmoidlstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_736/mulMullstm_cell_736/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_736/ReluRelulstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_1Mullstm_cell_736/Sigmoid:y:0 lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_736/add_1AddV2lstm_cell_736/mul:z:0lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_2Sigmoidlstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_736/Relu_1Relulstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_2Mullstm_cell_736/Sigmoid_2:y:0"lstm_cell_736/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_736_matmul_readvariableop_resource.lstm_cell_736_matmul_1_readvariableop_resource-lstm_cell_736_biasadd_readvariableop_resource*
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
while_body_4462931*
condR
while_cond_4462930*K
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
NoOpNoOp%^lstm_cell_736/BiasAdd/ReadVariableOp$^lstm_cell_736/MatMul/ReadVariableOp&^lstm_cell_736/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_736/BiasAdd/ReadVariableOp$lstm_cell_736/BiasAdd/ReadVariableOp2J
#lstm_cell_736/MatMul/ReadVariableOp#lstm_cell_736/MatMul/ReadVariableOp2N
%lstm_cell_736/MatMul_1/ReadVariableOp%lstm_cell_736/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_737_layer_call_fn_4464006

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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4459525o
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
?

?
0__inference_sequential_254_layer_call_fn_4461045

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
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460282o
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
?J
?
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462542

inputs?
,lstm_cell_735_matmul_readvariableop_resource:	?A
.lstm_cell_735_matmul_1_readvariableop_resource:	d?<
-lstm_cell_735_biasadd_readvariableop_resource:	?
identity??$lstm_cell_735/BiasAdd/ReadVariableOp?#lstm_cell_735/MatMul/ReadVariableOp?%lstm_cell_735/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_735/MatMul/ReadVariableOpReadVariableOp,lstm_cell_735_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_735/MatMulMatMulstrided_slice_2:output:0+lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_735_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_735/MatMul_1MatMulzeros:output:0-lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_735/addAddV2lstm_cell_735/MatMul:product:0 lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_735_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_735/BiasAddBiasAddlstm_cell_735/add:z:0,lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_735/splitSplit&lstm_cell_735/split/split_dim:output:0lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_735/SigmoidSigmoidlstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_1Sigmoidlstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_735/mulMullstm_cell_735/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_735/ReluRelulstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_1Mullstm_cell_735/Sigmoid:y:0 lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_735/add_1AddV2lstm_cell_735/mul:z:0lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_2Sigmoidlstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_735/Relu_1Relulstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_2Mullstm_cell_735/Sigmoid_2:y:0"lstm_cell_735/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_735_matmul_readvariableop_resource.lstm_cell_735_matmul_1_readvariableop_resource-lstm_cell_735_biasadd_readvariableop_resource*
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
while_body_4462458*
condR
while_cond_4462457*K
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
NoOpNoOp%^lstm_cell_735/BiasAdd/ReadVariableOp$^lstm_cell_735/MatMul/ReadVariableOp&^lstm_cell_735/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_735/BiasAdd/ReadVariableOp$lstm_cell_735/BiasAdd/ReadVariableOp2J
#lstm_cell_735/MatMul/ReadVariableOp#lstm_cell_735/MatMul/ReadVariableOp2N
%lstm_cell_735/MatMul_1/ReadVariableOp%lstm_cell_735/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4460554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_736_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_736_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_736_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_736_matmul_readvariableop_resource:	d?G
4while_lstm_cell_736_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_736_biasadd_readvariableop_resource:	???*while/lstm_cell_736/BiasAdd/ReadVariableOp?)while/lstm_cell_736/MatMul/ReadVariableOp?+while/lstm_cell_736/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_736/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_736_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_736/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_736_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_736/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_736/addAddV2$while/lstm_cell_736/MatMul:product:0&while/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_736_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_736/BiasAddBiasAddwhile/lstm_cell_736/add:z:02while/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_736/splitSplit,while/lstm_cell_736/split/split_dim:output:0$while/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_736/SigmoidSigmoid"while/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_1Sigmoid"while/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mulMul!while/lstm_cell_736/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_736/ReluRelu"while/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_1Mulwhile/lstm_cell_736/Sigmoid:y:0&while/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/add_1AddV2while/lstm_cell_736/mul:z:0while/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_2Sigmoid"while/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_736/Relu_1Reluwhile/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_2Mul!while/lstm_cell_736/Sigmoid_2:y:0(while/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_736/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_736/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_736/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_736/BiasAdd/ReadVariableOp*^while/lstm_cell_736/MatMul/ReadVariableOp,^while/lstm_cell_736/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_736_biasadd_readvariableop_resource5while_lstm_cell_736_biasadd_readvariableop_resource_0"n
4while_lstm_cell_736_matmul_1_readvariableop_resource6while_lstm_cell_736_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_736_matmul_readvariableop_resource4while_lstm_cell_736_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_736/BiasAdd/ReadVariableOp*while/lstm_cell_736/BiasAdd/ReadVariableOp2V
)while/lstm_cell_736/MatMul/ReadVariableOp)while/lstm_cell_736/MatMul/ReadVariableOp2Z
+while/lstm_cell_736/MatMul_1/ReadVariableOp+while/lstm_cell_736/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4462931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_736_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_736_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_736_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_736_matmul_readvariableop_resource:	d?G
4while_lstm_cell_736_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_736_biasadd_readvariableop_resource:	???*while/lstm_cell_736/BiasAdd/ReadVariableOp?)while/lstm_cell_736/MatMul/ReadVariableOp?+while/lstm_cell_736/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_736/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_736_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_736/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_736_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_736/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_736/addAddV2$while/lstm_cell_736/MatMul:product:0&while/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_736_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_736/BiasAddBiasAddwhile/lstm_cell_736/add:z:02while/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_736/splitSplit,while/lstm_cell_736/split/split_dim:output:0$while/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_736/SigmoidSigmoid"while/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_1Sigmoid"while/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mulMul!while/lstm_cell_736/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_736/ReluRelu"while/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_1Mulwhile/lstm_cell_736/Sigmoid:y:0&while/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/add_1AddV2while/lstm_cell_736/mul:z:0while/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_736/Sigmoid_2Sigmoid"while/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_736/Relu_1Reluwhile/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_736/mul_2Mul!while/lstm_cell_736/Sigmoid_2:y:0(while/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_736/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_736/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_736/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_736/BiasAdd/ReadVariableOp*^while/lstm_cell_736/MatMul/ReadVariableOp,^while/lstm_cell_736/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_736_biasadd_readvariableop_resource5while_lstm_cell_736_biasadd_readvariableop_resource_0"n
4while_lstm_cell_736_matmul_1_readvariableop_resource6while_lstm_cell_736_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_736_matmul_readvariableop_resource4while_lstm_cell_736_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_736/BiasAdd/ReadVariableOp*while/lstm_cell_736/BiasAdd/ReadVariableOp2V
)while/lstm_cell_736/MatMul/ReadVariableOp)while/lstm_cell_736/MatMul/ReadVariableOp2Z
+while/lstm_cell_736/MatMul_1/ReadVariableOp+while/lstm_cell_736/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_762_while_cond_4461557.
*lstm_762_while_lstm_762_while_loop_counter4
0lstm_762_while_lstm_762_while_maximum_iterations
lstm_762_while_placeholder 
lstm_762_while_placeholder_1 
lstm_762_while_placeholder_2 
lstm_762_while_placeholder_30
,lstm_762_while_less_lstm_762_strided_slice_1G
Clstm_762_while_lstm_762_while_cond_4461557___redundant_placeholder0G
Clstm_762_while_lstm_762_while_cond_4461557___redundant_placeholder1G
Clstm_762_while_lstm_762_while_cond_4461557___redundant_placeholder2G
Clstm_762_while_lstm_762_while_cond_4461557___redundant_placeholder3
lstm_762_while_identity
?
lstm_762/while/LessLesslstm_762_while_placeholder,lstm_762_while_less_lstm_762_strided_slice_1*
T0*
_output_shapes
: ]
lstm_762/while/IdentityIdentitylstm_762/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_762_while_identity lstm_762/while/Identity:output:0*(
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4462729
inputs_0?
,lstm_cell_736_matmul_readvariableop_resource:	d?A
.lstm_cell_736_matmul_1_readvariableop_resource:	2?<
-lstm_cell_736_biasadd_readvariableop_resource:	?
identity??$lstm_cell_736/BiasAdd/ReadVariableOp?#lstm_cell_736/MatMul/ReadVariableOp?%lstm_cell_736/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_736/MatMul/ReadVariableOpReadVariableOp,lstm_cell_736_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_736/MatMulMatMulstrided_slice_2:output:0+lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_736_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_736/MatMul_1MatMulzeros:output:0-lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_736/addAddV2lstm_cell_736/MatMul:product:0 lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_736_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_736/BiasAddBiasAddlstm_cell_736/add:z:0,lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_736/splitSplit&lstm_cell_736/split/split_dim:output:0lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_736/SigmoidSigmoidlstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_1Sigmoidlstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_736/mulMullstm_cell_736/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_736/ReluRelulstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_1Mullstm_cell_736/Sigmoid:y:0 lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_736/add_1AddV2lstm_cell_736/mul:z:0lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_736/Sigmoid_2Sigmoidlstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_736/Relu_1Relulstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_736/mul_2Mullstm_cell_736/Sigmoid_2:y:0"lstm_cell_736/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_736_matmul_readvariableop_resource.lstm_cell_736_matmul_1_readvariableop_resource-lstm_cell_736_biasadd_readvariableop_resource*
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
while_body_4462645*
condR
while_cond_4462644*K
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
NoOpNoOp%^lstm_cell_736/BiasAdd/ReadVariableOp$^lstm_cell_736/MatMul/ReadVariableOp&^lstm_cell_736/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_736/BiasAdd/ReadVariableOp$lstm_cell_736/BiasAdd/ReadVariableOp2J
#lstm_cell_736/MatMul/ReadVariableOp#lstm_cell_736/MatMul/ReadVariableOp2N
%lstm_cell_736/MatMul_1/ReadVariableOp%lstm_cell_736/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?
"__inference__wrapped_model_4458758
lstm_762_inputW
Dsequential_254_lstm_762_lstm_cell_735_matmul_readvariableop_resource:	?Y
Fsequential_254_lstm_762_lstm_cell_735_matmul_1_readvariableop_resource:	d?T
Esequential_254_lstm_762_lstm_cell_735_biasadd_readvariableop_resource:	?W
Dsequential_254_lstm_763_lstm_cell_736_matmul_readvariableop_resource:	d?Y
Fsequential_254_lstm_763_lstm_cell_736_matmul_1_readvariableop_resource:	2?T
Esequential_254_lstm_763_lstm_cell_736_biasadd_readvariableop_resource:	?V
Dsequential_254_lstm_764_lstm_cell_737_matmul_readvariableop_resource:2(X
Fsequential_254_lstm_764_lstm_cell_737_matmul_1_readvariableop_resource:
(S
Esequential_254_lstm_764_lstm_cell_737_biasadd_readvariableop_resource:(I
7sequential_254_dense_254_matmul_readvariableop_resource:
F
8sequential_254_dense_254_biasadd_readvariableop_resource:
identity??/sequential_254/dense_254/BiasAdd/ReadVariableOp?.sequential_254/dense_254/MatMul/ReadVariableOp?<sequential_254/lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp?;sequential_254/lstm_762/lstm_cell_735/MatMul/ReadVariableOp?=sequential_254/lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp?sequential_254/lstm_762/while?<sequential_254/lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp?;sequential_254/lstm_763/lstm_cell_736/MatMul/ReadVariableOp?=sequential_254/lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp?sequential_254/lstm_763/while?<sequential_254/lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp?;sequential_254/lstm_764/lstm_cell_737/MatMul/ReadVariableOp?=sequential_254/lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp?sequential_254/lstm_764/while[
sequential_254/lstm_762/ShapeShapelstm_762_input*
T0*
_output_shapes
:u
+sequential_254/lstm_762/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_254/lstm_762/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_254/lstm_762/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_254/lstm_762/strided_sliceStridedSlice&sequential_254/lstm_762/Shape:output:04sequential_254/lstm_762/strided_slice/stack:output:06sequential_254/lstm_762/strided_slice/stack_1:output:06sequential_254/lstm_762/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_254/lstm_762/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_254/lstm_762/zeros/packedPack.sequential_254/lstm_762/strided_slice:output:0/sequential_254/lstm_762/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_254/lstm_762/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_254/lstm_762/zerosFill-sequential_254/lstm_762/zeros/packed:output:0,sequential_254/lstm_762/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_254/lstm_762/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_254/lstm_762/zeros_1/packedPack.sequential_254/lstm_762/strided_slice:output:01sequential_254/lstm_762/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_254/lstm_762/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_254/lstm_762/zeros_1Fill/sequential_254/lstm_762/zeros_1/packed:output:0.sequential_254/lstm_762/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_254/lstm_762/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_254/lstm_762/transpose	Transposelstm_762_input/sequential_254/lstm_762/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_254/lstm_762/Shape_1Shape%sequential_254/lstm_762/transpose:y:0*
T0*
_output_shapes
:w
-sequential_254/lstm_762/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_254/lstm_762/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_254/lstm_762/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_254/lstm_762/strided_slice_1StridedSlice(sequential_254/lstm_762/Shape_1:output:06sequential_254/lstm_762/strided_slice_1/stack:output:08sequential_254/lstm_762/strided_slice_1/stack_1:output:08sequential_254/lstm_762/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_254/lstm_762/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_254/lstm_762/TensorArrayV2TensorListReserve<sequential_254/lstm_762/TensorArrayV2/element_shape:output:00sequential_254/lstm_762/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_254/lstm_762/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_254/lstm_762/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_254/lstm_762/transpose:y:0Vsequential_254/lstm_762/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_254/lstm_762/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_254/lstm_762/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_254/lstm_762/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_254/lstm_762/strided_slice_2StridedSlice%sequential_254/lstm_762/transpose:y:06sequential_254/lstm_762/strided_slice_2/stack:output:08sequential_254/lstm_762/strided_slice_2/stack_1:output:08sequential_254/lstm_762/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_254/lstm_762/lstm_cell_735/MatMul/ReadVariableOpReadVariableOpDsequential_254_lstm_762_lstm_cell_735_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_254/lstm_762/lstm_cell_735/MatMulMatMul0sequential_254/lstm_762/strided_slice_2:output:0Csequential_254/lstm_762/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_254/lstm_762/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOpFsequential_254_lstm_762_lstm_cell_735_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_254/lstm_762/lstm_cell_735/MatMul_1MatMul&sequential_254/lstm_762/zeros:output:0Esequential_254/lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_254/lstm_762/lstm_cell_735/addAddV26sequential_254/lstm_762/lstm_cell_735/MatMul:product:08sequential_254/lstm_762/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_254/lstm_762/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOpEsequential_254_lstm_762_lstm_cell_735_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_254/lstm_762/lstm_cell_735/BiasAddBiasAdd-sequential_254/lstm_762/lstm_cell_735/add:z:0Dsequential_254/lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_254/lstm_762/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_254/lstm_762/lstm_cell_735/splitSplit>sequential_254/lstm_762/lstm_cell_735/split/split_dim:output:06sequential_254/lstm_762/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_254/lstm_762/lstm_cell_735/SigmoidSigmoid4sequential_254/lstm_762/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_254/lstm_762/lstm_cell_735/Sigmoid_1Sigmoid4sequential_254/lstm_762/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_254/lstm_762/lstm_cell_735/mulMul3sequential_254/lstm_762/lstm_cell_735/Sigmoid_1:y:0(sequential_254/lstm_762/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_254/lstm_762/lstm_cell_735/ReluRelu4sequential_254/lstm_762/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_254/lstm_762/lstm_cell_735/mul_1Mul1sequential_254/lstm_762/lstm_cell_735/Sigmoid:y:08sequential_254/lstm_762/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_254/lstm_762/lstm_cell_735/add_1AddV2-sequential_254/lstm_762/lstm_cell_735/mul:z:0/sequential_254/lstm_762/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_254/lstm_762/lstm_cell_735/Sigmoid_2Sigmoid4sequential_254/lstm_762/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_254/lstm_762/lstm_cell_735/Relu_1Relu/sequential_254/lstm_762/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_254/lstm_762/lstm_cell_735/mul_2Mul3sequential_254/lstm_762/lstm_cell_735/Sigmoid_2:y:0:sequential_254/lstm_762/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_254/lstm_762/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_254/lstm_762/TensorArrayV2_1TensorListReserve>sequential_254/lstm_762/TensorArrayV2_1/element_shape:output:00sequential_254/lstm_762/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_254/lstm_762/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_254/lstm_762/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_254/lstm_762/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_254/lstm_762/whileWhile3sequential_254/lstm_762/while/loop_counter:output:09sequential_254/lstm_762/while/maximum_iterations:output:0%sequential_254/lstm_762/time:output:00sequential_254/lstm_762/TensorArrayV2_1:handle:0&sequential_254/lstm_762/zeros:output:0(sequential_254/lstm_762/zeros_1:output:00sequential_254/lstm_762/strided_slice_1:output:0Osequential_254/lstm_762/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_254_lstm_762_lstm_cell_735_matmul_readvariableop_resourceFsequential_254_lstm_762_lstm_cell_735_matmul_1_readvariableop_resourceEsequential_254_lstm_762_lstm_cell_735_biasadd_readvariableop_resource*
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
*sequential_254_lstm_762_while_body_4458390*6
cond.R,
*sequential_254_lstm_762_while_cond_4458389*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_254/lstm_762/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_254/lstm_762/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_254/lstm_762/while:output:3Qsequential_254/lstm_762/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_254/lstm_762/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_254/lstm_762/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_254/lstm_762/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_254/lstm_762/strided_slice_3StridedSliceCsequential_254/lstm_762/TensorArrayV2Stack/TensorListStack:tensor:06sequential_254/lstm_762/strided_slice_3/stack:output:08sequential_254/lstm_762/strided_slice_3/stack_1:output:08sequential_254/lstm_762/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_254/lstm_762/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_254/lstm_762/transpose_1	TransposeCsequential_254/lstm_762/TensorArrayV2Stack/TensorListStack:tensor:01sequential_254/lstm_762/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_254/lstm_762/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_254/lstm_763/ShapeShape'sequential_254/lstm_762/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_254/lstm_763/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_254/lstm_763/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_254/lstm_763/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_254/lstm_763/strided_sliceStridedSlice&sequential_254/lstm_763/Shape:output:04sequential_254/lstm_763/strided_slice/stack:output:06sequential_254/lstm_763/strided_slice/stack_1:output:06sequential_254/lstm_763/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_254/lstm_763/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_254/lstm_763/zeros/packedPack.sequential_254/lstm_763/strided_slice:output:0/sequential_254/lstm_763/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_254/lstm_763/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_254/lstm_763/zerosFill-sequential_254/lstm_763/zeros/packed:output:0,sequential_254/lstm_763/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_254/lstm_763/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_254/lstm_763/zeros_1/packedPack.sequential_254/lstm_763/strided_slice:output:01sequential_254/lstm_763/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_254/lstm_763/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_254/lstm_763/zeros_1Fill/sequential_254/lstm_763/zeros_1/packed:output:0.sequential_254/lstm_763/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_254/lstm_763/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_254/lstm_763/transpose	Transpose'sequential_254/lstm_762/transpose_1:y:0/sequential_254/lstm_763/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_254/lstm_763/Shape_1Shape%sequential_254/lstm_763/transpose:y:0*
T0*
_output_shapes
:w
-sequential_254/lstm_763/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_254/lstm_763/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_254/lstm_763/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_254/lstm_763/strided_slice_1StridedSlice(sequential_254/lstm_763/Shape_1:output:06sequential_254/lstm_763/strided_slice_1/stack:output:08sequential_254/lstm_763/strided_slice_1/stack_1:output:08sequential_254/lstm_763/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_254/lstm_763/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_254/lstm_763/TensorArrayV2TensorListReserve<sequential_254/lstm_763/TensorArrayV2/element_shape:output:00sequential_254/lstm_763/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_254/lstm_763/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_254/lstm_763/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_254/lstm_763/transpose:y:0Vsequential_254/lstm_763/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_254/lstm_763/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_254/lstm_763/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_254/lstm_763/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_254/lstm_763/strided_slice_2StridedSlice%sequential_254/lstm_763/transpose:y:06sequential_254/lstm_763/strided_slice_2/stack:output:08sequential_254/lstm_763/strided_slice_2/stack_1:output:08sequential_254/lstm_763/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_254/lstm_763/lstm_cell_736/MatMul/ReadVariableOpReadVariableOpDsequential_254_lstm_763_lstm_cell_736_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_254/lstm_763/lstm_cell_736/MatMulMatMul0sequential_254/lstm_763/strided_slice_2:output:0Csequential_254/lstm_763/lstm_cell_736/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_254/lstm_763/lstm_cell_736/MatMul_1/ReadVariableOpReadVariableOpFsequential_254_lstm_763_lstm_cell_736_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_254/lstm_763/lstm_cell_736/MatMul_1MatMul&sequential_254/lstm_763/zeros:output:0Esequential_254/lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_254/lstm_763/lstm_cell_736/addAddV26sequential_254/lstm_763/lstm_cell_736/MatMul:product:08sequential_254/lstm_763/lstm_cell_736/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_254/lstm_763/lstm_cell_736/BiasAdd/ReadVariableOpReadVariableOpEsequential_254_lstm_763_lstm_cell_736_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_254/lstm_763/lstm_cell_736/BiasAddBiasAdd-sequential_254/lstm_763/lstm_cell_736/add:z:0Dsequential_254/lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_254/lstm_763/lstm_cell_736/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_254/lstm_763/lstm_cell_736/splitSplit>sequential_254/lstm_763/lstm_cell_736/split/split_dim:output:06sequential_254/lstm_763/lstm_cell_736/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_254/lstm_763/lstm_cell_736/SigmoidSigmoid4sequential_254/lstm_763/lstm_cell_736/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_254/lstm_763/lstm_cell_736/Sigmoid_1Sigmoid4sequential_254/lstm_763/lstm_cell_736/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_254/lstm_763/lstm_cell_736/mulMul3sequential_254/lstm_763/lstm_cell_736/Sigmoid_1:y:0(sequential_254/lstm_763/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_254/lstm_763/lstm_cell_736/ReluRelu4sequential_254/lstm_763/lstm_cell_736/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_254/lstm_763/lstm_cell_736/mul_1Mul1sequential_254/lstm_763/lstm_cell_736/Sigmoid:y:08sequential_254/lstm_763/lstm_cell_736/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_254/lstm_763/lstm_cell_736/add_1AddV2-sequential_254/lstm_763/lstm_cell_736/mul:z:0/sequential_254/lstm_763/lstm_cell_736/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_254/lstm_763/lstm_cell_736/Sigmoid_2Sigmoid4sequential_254/lstm_763/lstm_cell_736/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_254/lstm_763/lstm_cell_736/Relu_1Relu/sequential_254/lstm_763/lstm_cell_736/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_254/lstm_763/lstm_cell_736/mul_2Mul3sequential_254/lstm_763/lstm_cell_736/Sigmoid_2:y:0:sequential_254/lstm_763/lstm_cell_736/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_254/lstm_763/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_254/lstm_763/TensorArrayV2_1TensorListReserve>sequential_254/lstm_763/TensorArrayV2_1/element_shape:output:00sequential_254/lstm_763/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_254/lstm_763/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_254/lstm_763/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_254/lstm_763/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_254/lstm_763/whileWhile3sequential_254/lstm_763/while/loop_counter:output:09sequential_254/lstm_763/while/maximum_iterations:output:0%sequential_254/lstm_763/time:output:00sequential_254/lstm_763/TensorArrayV2_1:handle:0&sequential_254/lstm_763/zeros:output:0(sequential_254/lstm_763/zeros_1:output:00sequential_254/lstm_763/strided_slice_1:output:0Osequential_254/lstm_763/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_254_lstm_763_lstm_cell_736_matmul_readvariableop_resourceFsequential_254_lstm_763_lstm_cell_736_matmul_1_readvariableop_resourceEsequential_254_lstm_763_lstm_cell_736_biasadd_readvariableop_resource*
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
*sequential_254_lstm_763_while_body_4458529*6
cond.R,
*sequential_254_lstm_763_while_cond_4458528*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_254/lstm_763/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_254/lstm_763/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_254/lstm_763/while:output:3Qsequential_254/lstm_763/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_254/lstm_763/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_254/lstm_763/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_254/lstm_763/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_254/lstm_763/strided_slice_3StridedSliceCsequential_254/lstm_763/TensorArrayV2Stack/TensorListStack:tensor:06sequential_254/lstm_763/strided_slice_3/stack:output:08sequential_254/lstm_763/strided_slice_3/stack_1:output:08sequential_254/lstm_763/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_254/lstm_763/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_254/lstm_763/transpose_1	TransposeCsequential_254/lstm_763/TensorArrayV2Stack/TensorListStack:tensor:01sequential_254/lstm_763/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_254/lstm_763/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_254/lstm_764/ShapeShape'sequential_254/lstm_763/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_254/lstm_764/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_254/lstm_764/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_254/lstm_764/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_254/lstm_764/strided_sliceStridedSlice&sequential_254/lstm_764/Shape:output:04sequential_254/lstm_764/strided_slice/stack:output:06sequential_254/lstm_764/strided_slice/stack_1:output:06sequential_254/lstm_764/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_254/lstm_764/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_254/lstm_764/zeros/packedPack.sequential_254/lstm_764/strided_slice:output:0/sequential_254/lstm_764/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_254/lstm_764/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_254/lstm_764/zerosFill-sequential_254/lstm_764/zeros/packed:output:0,sequential_254/lstm_764/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_254/lstm_764/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_254/lstm_764/zeros_1/packedPack.sequential_254/lstm_764/strided_slice:output:01sequential_254/lstm_764/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_254/lstm_764/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_254/lstm_764/zeros_1Fill/sequential_254/lstm_764/zeros_1/packed:output:0.sequential_254/lstm_764/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_254/lstm_764/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_254/lstm_764/transpose	Transpose'sequential_254/lstm_763/transpose_1:y:0/sequential_254/lstm_764/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_254/lstm_764/Shape_1Shape%sequential_254/lstm_764/transpose:y:0*
T0*
_output_shapes
:w
-sequential_254/lstm_764/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_254/lstm_764/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_254/lstm_764/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_254/lstm_764/strided_slice_1StridedSlice(sequential_254/lstm_764/Shape_1:output:06sequential_254/lstm_764/strided_slice_1/stack:output:08sequential_254/lstm_764/strided_slice_1/stack_1:output:08sequential_254/lstm_764/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_254/lstm_764/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_254/lstm_764/TensorArrayV2TensorListReserve<sequential_254/lstm_764/TensorArrayV2/element_shape:output:00sequential_254/lstm_764/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_254/lstm_764/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_254/lstm_764/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_254/lstm_764/transpose:y:0Vsequential_254/lstm_764/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_254/lstm_764/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_254/lstm_764/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_254/lstm_764/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_254/lstm_764/strided_slice_2StridedSlice%sequential_254/lstm_764/transpose:y:06sequential_254/lstm_764/strided_slice_2/stack:output:08sequential_254/lstm_764/strided_slice_2/stack_1:output:08sequential_254/lstm_764/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_254/lstm_764/lstm_cell_737/MatMul/ReadVariableOpReadVariableOpDsequential_254_lstm_764_lstm_cell_737_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_254/lstm_764/lstm_cell_737/MatMulMatMul0sequential_254/lstm_764/strided_slice_2:output:0Csequential_254/lstm_764/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_254/lstm_764/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOpFsequential_254_lstm_764_lstm_cell_737_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_254/lstm_764/lstm_cell_737/MatMul_1MatMul&sequential_254/lstm_764/zeros:output:0Esequential_254/lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_254/lstm_764/lstm_cell_737/addAddV26sequential_254/lstm_764/lstm_cell_737/MatMul:product:08sequential_254/lstm_764/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_254/lstm_764/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOpEsequential_254_lstm_764_lstm_cell_737_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_254/lstm_764/lstm_cell_737/BiasAddBiasAdd-sequential_254/lstm_764/lstm_cell_737/add:z:0Dsequential_254/lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_254/lstm_764/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_254/lstm_764/lstm_cell_737/splitSplit>sequential_254/lstm_764/lstm_cell_737/split/split_dim:output:06sequential_254/lstm_764/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_254/lstm_764/lstm_cell_737/SigmoidSigmoid4sequential_254/lstm_764/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_254/lstm_764/lstm_cell_737/Sigmoid_1Sigmoid4sequential_254/lstm_764/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_254/lstm_764/lstm_cell_737/mulMul3sequential_254/lstm_764/lstm_cell_737/Sigmoid_1:y:0(sequential_254/lstm_764/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_254/lstm_764/lstm_cell_737/ReluRelu4sequential_254/lstm_764/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_254/lstm_764/lstm_cell_737/mul_1Mul1sequential_254/lstm_764/lstm_cell_737/Sigmoid:y:08sequential_254/lstm_764/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_254/lstm_764/lstm_cell_737/add_1AddV2-sequential_254/lstm_764/lstm_cell_737/mul:z:0/sequential_254/lstm_764/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_254/lstm_764/lstm_cell_737/Sigmoid_2Sigmoid4sequential_254/lstm_764/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_254/lstm_764/lstm_cell_737/Relu_1Relu/sequential_254/lstm_764/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_254/lstm_764/lstm_cell_737/mul_2Mul3sequential_254/lstm_764/lstm_cell_737/Sigmoid_2:y:0:sequential_254/lstm_764/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_254/lstm_764/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_254/lstm_764/TensorArrayV2_1TensorListReserve>sequential_254/lstm_764/TensorArrayV2_1/element_shape:output:00sequential_254/lstm_764/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_254/lstm_764/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_254/lstm_764/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_254/lstm_764/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_254/lstm_764/whileWhile3sequential_254/lstm_764/while/loop_counter:output:09sequential_254/lstm_764/while/maximum_iterations:output:0%sequential_254/lstm_764/time:output:00sequential_254/lstm_764/TensorArrayV2_1:handle:0&sequential_254/lstm_764/zeros:output:0(sequential_254/lstm_764/zeros_1:output:00sequential_254/lstm_764/strided_slice_1:output:0Osequential_254/lstm_764/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_254_lstm_764_lstm_cell_737_matmul_readvariableop_resourceFsequential_254_lstm_764_lstm_cell_737_matmul_1_readvariableop_resourceEsequential_254_lstm_764_lstm_cell_737_biasadd_readvariableop_resource*
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
*sequential_254_lstm_764_while_body_4458668*6
cond.R,
*sequential_254_lstm_764_while_cond_4458667*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_254/lstm_764/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_254/lstm_764/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_254/lstm_764/while:output:3Qsequential_254/lstm_764/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_254/lstm_764/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_254/lstm_764/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_254/lstm_764/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_254/lstm_764/strided_slice_3StridedSliceCsequential_254/lstm_764/TensorArrayV2Stack/TensorListStack:tensor:06sequential_254/lstm_764/strided_slice_3/stack:output:08sequential_254/lstm_764/strided_slice_3/stack_1:output:08sequential_254/lstm_764/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_254/lstm_764/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_254/lstm_764/transpose_1	TransposeCsequential_254/lstm_764/TensorArrayV2Stack/TensorListStack:tensor:01sequential_254/lstm_764/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_254/lstm_764/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_254/dense_254/MatMul/ReadVariableOpReadVariableOp7sequential_254_dense_254_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_254/dense_254/MatMulMatMul0sequential_254/lstm_764/strided_slice_3:output:06sequential_254/dense_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_254/dense_254/BiasAdd/ReadVariableOpReadVariableOp8sequential_254_dense_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_254/dense_254/BiasAddBiasAdd)sequential_254/dense_254/MatMul:product:07sequential_254/dense_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_254/dense_254/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_254/dense_254/BiasAdd/ReadVariableOp/^sequential_254/dense_254/MatMul/ReadVariableOp=^sequential_254/lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp<^sequential_254/lstm_762/lstm_cell_735/MatMul/ReadVariableOp>^sequential_254/lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp^sequential_254/lstm_762/while=^sequential_254/lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp<^sequential_254/lstm_763/lstm_cell_736/MatMul/ReadVariableOp>^sequential_254/lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp^sequential_254/lstm_763/while=^sequential_254/lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp<^sequential_254/lstm_764/lstm_cell_737/MatMul/ReadVariableOp>^sequential_254/lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp^sequential_254/lstm_764/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_254/dense_254/BiasAdd/ReadVariableOp/sequential_254/dense_254/BiasAdd/ReadVariableOp2`
.sequential_254/dense_254/MatMul/ReadVariableOp.sequential_254/dense_254/MatMul/ReadVariableOp2|
<sequential_254/lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp<sequential_254/lstm_762/lstm_cell_735/BiasAdd/ReadVariableOp2z
;sequential_254/lstm_762/lstm_cell_735/MatMul/ReadVariableOp;sequential_254/lstm_762/lstm_cell_735/MatMul/ReadVariableOp2~
=sequential_254/lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp=sequential_254/lstm_762/lstm_cell_735/MatMul_1/ReadVariableOp2>
sequential_254/lstm_762/whilesequential_254/lstm_762/while2|
<sequential_254/lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp<sequential_254/lstm_763/lstm_cell_736/BiasAdd/ReadVariableOp2z
;sequential_254/lstm_763/lstm_cell_736/MatMul/ReadVariableOp;sequential_254/lstm_763/lstm_cell_736/MatMul/ReadVariableOp2~
=sequential_254/lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp=sequential_254/lstm_763/lstm_cell_736/MatMul_1/ReadVariableOp2>
sequential_254/lstm_763/whilesequential_254/lstm_763/while2|
<sequential_254/lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp<sequential_254/lstm_764/lstm_cell_737/BiasAdd/ReadVariableOp2z
;sequential_254/lstm_764/lstm_cell_737/MatMul/ReadVariableOp;sequential_254/lstm_764/lstm_cell_737/MatMul/ReadVariableOp2~
=sequential_254/lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp=sequential_254/lstm_764/lstm_cell_737/MatMul_1/ReadVariableOp2>
sequential_254/lstm_764/whilesequential_254/lstm_764/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_762_input
?

?
0__inference_sequential_254_layer_call_fn_4460923
lstm_762_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_762_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460871o
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
_user_specified_namelstm_762_input
?
?
while_cond_4458838
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4458838___redundant_placeholder05
1while_while_cond_4458838___redundant_placeholder15
1while_while_cond_4458838___redundant_placeholder25
1while_while_cond_4458838___redundant_placeholder3
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
while_body_4463261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_737_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_737_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_737_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_737_matmul_readvariableop_resource:2(F
4while_lstm_cell_737_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_737_biasadd_readvariableop_resource:(??*while/lstm_cell_737/BiasAdd/ReadVariableOp?)while/lstm_cell_737/MatMul/ReadVariableOp?+while/lstm_cell_737/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_737/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_737_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_737/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_737_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_737/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_737/addAddV2$while/lstm_cell_737/MatMul:product:0&while/lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_737_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_737/BiasAddBiasAddwhile/lstm_cell_737/add:z:02while/lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_737/splitSplit,while/lstm_cell_737/split/split_dim:output:0$while/lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_737/SigmoidSigmoid"while/lstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_1Sigmoid"while/lstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mulMul!while/lstm_cell_737/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_737/ReluRelu"while/lstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_1Mulwhile/lstm_cell_737/Sigmoid:y:0&while/lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/add_1AddV2while/lstm_cell_737/mul:z:0while/lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_737/Sigmoid_2Sigmoid"while/lstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_737/Relu_1Reluwhile/lstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_737/mul_2Mul!while/lstm_cell_737/Sigmoid_2:y:0(while/lstm_cell_737/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_737/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_737/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_737/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_737/BiasAdd/ReadVariableOp*^while/lstm_cell_737/MatMul/ReadVariableOp,^while/lstm_cell_737/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_737_biasadd_readvariableop_resource5while_lstm_cell_737_biasadd_readvariableop_resource_0"n
4while_lstm_cell_737_matmul_1_readvariableop_resource6while_lstm_cell_737_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_737_matmul_readvariableop_resource4while_lstm_cell_737_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_737/BiasAdd/ReadVariableOp*while/lstm_cell_737/BiasAdd/ReadVariableOp2V
)while/lstm_cell_737/MatMul/ReadVariableOp)while/lstm_cell_737/MatMul/ReadVariableOp2Z
+while/lstm_cell_737/MatMul_1/ReadVariableOp+while/lstm_cell_737/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462399

inputs?
,lstm_cell_735_matmul_readvariableop_resource:	?A
.lstm_cell_735_matmul_1_readvariableop_resource:	d?<
-lstm_cell_735_biasadd_readvariableop_resource:	?
identity??$lstm_cell_735/BiasAdd/ReadVariableOp?#lstm_cell_735/MatMul/ReadVariableOp?%lstm_cell_735/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_735/MatMul/ReadVariableOpReadVariableOp,lstm_cell_735_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_735/MatMulMatMulstrided_slice_2:output:0+lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_735_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_735/MatMul_1MatMulzeros:output:0-lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_735/addAddV2lstm_cell_735/MatMul:product:0 lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_735_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_735/BiasAddBiasAddlstm_cell_735/add:z:0,lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_735/splitSplit&lstm_cell_735/split/split_dim:output:0lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_735/SigmoidSigmoidlstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_1Sigmoidlstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_735/mulMullstm_cell_735/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_735/ReluRelulstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_1Mullstm_cell_735/Sigmoid:y:0 lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_735/add_1AddV2lstm_cell_735/mul:z:0lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_2Sigmoidlstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_735/Relu_1Relulstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_2Mullstm_cell_735/Sigmoid_2:y:0"lstm_cell_735/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_735_matmul_readvariableop_resource.lstm_cell_735_matmul_1_readvariableop_resource-lstm_cell_735_biasadd_readvariableop_resource*
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
while_body_4462315*
condR
while_cond_4462314*K
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
NoOpNoOp%^lstm_cell_735/BiasAdd/ReadVariableOp$^lstm_cell_735/MatMul/ReadVariableOp&^lstm_cell_735/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_735/BiasAdd/ReadVariableOp$lstm_cell_735/BiasAdd/ReadVariableOp2J
#lstm_cell_735/MatMul/ReadVariableOp#lstm_cell_735/MatMul/ReadVariableOp2N
%lstm_cell_735/MatMul_1/ReadVariableOp%lstm_cell_735/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_254_lstm_762_while_body_4458390L
Hsequential_254_lstm_762_while_sequential_254_lstm_762_while_loop_counterR
Nsequential_254_lstm_762_while_sequential_254_lstm_762_while_maximum_iterations-
)sequential_254_lstm_762_while_placeholder/
+sequential_254_lstm_762_while_placeholder_1/
+sequential_254_lstm_762_while_placeholder_2/
+sequential_254_lstm_762_while_placeholder_3K
Gsequential_254_lstm_762_while_sequential_254_lstm_762_strided_slice_1_0?
?sequential_254_lstm_762_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_762_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_254_lstm_762_while_lstm_cell_735_matmul_readvariableop_resource_0:	?a
Nsequential_254_lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource_0:	d?\
Msequential_254_lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource_0:	?*
&sequential_254_lstm_762_while_identity,
(sequential_254_lstm_762_while_identity_1,
(sequential_254_lstm_762_while_identity_2,
(sequential_254_lstm_762_while_identity_3,
(sequential_254_lstm_762_while_identity_4,
(sequential_254_lstm_762_while_identity_5I
Esequential_254_lstm_762_while_sequential_254_lstm_762_strided_slice_1?
?sequential_254_lstm_762_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_762_tensorarrayunstack_tensorlistfromtensor]
Jsequential_254_lstm_762_while_lstm_cell_735_matmul_readvariableop_resource:	?_
Lsequential_254_lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource:	d?Z
Ksequential_254_lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource:	???Bsequential_254/lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp?Asequential_254/lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp?Csequential_254/lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp?
Osequential_254/lstm_762/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_254/lstm_762/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_254_lstm_762_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_762_tensorarrayunstack_tensorlistfromtensor_0)sequential_254_lstm_762_while_placeholderXsequential_254/lstm_762/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_254/lstm_762/while/lstm_cell_735/MatMul/ReadVariableOpReadVariableOpLsequential_254_lstm_762_while_lstm_cell_735_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_254/lstm_762/while/lstm_cell_735/MatMulMatMulHsequential_254/lstm_762/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_254/lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_254/lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOpNsequential_254_lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_254/lstm_762/while/lstm_cell_735/MatMul_1MatMul+sequential_254_lstm_762_while_placeholder_2Ksequential_254/lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_254/lstm_762/while/lstm_cell_735/addAddV2<sequential_254/lstm_762/while/lstm_cell_735/MatMul:product:0>sequential_254/lstm_762/while/lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_254/lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOpMsequential_254_lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_254/lstm_762/while/lstm_cell_735/BiasAddBiasAdd3sequential_254/lstm_762/while/lstm_cell_735/add:z:0Jsequential_254/lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_254/lstm_762/while/lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_254/lstm_762/while/lstm_cell_735/splitSplitDsequential_254/lstm_762/while/lstm_cell_735/split/split_dim:output:0<sequential_254/lstm_762/while/lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_254/lstm_762/while/lstm_cell_735/SigmoidSigmoid:sequential_254/lstm_762/while/lstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_254/lstm_762/while/lstm_cell_735/Sigmoid_1Sigmoid:sequential_254/lstm_762/while/lstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_254/lstm_762/while/lstm_cell_735/mulMul9sequential_254/lstm_762/while/lstm_cell_735/Sigmoid_1:y:0+sequential_254_lstm_762_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_254/lstm_762/while/lstm_cell_735/ReluRelu:sequential_254/lstm_762/while/lstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_254/lstm_762/while/lstm_cell_735/mul_1Mul7sequential_254/lstm_762/while/lstm_cell_735/Sigmoid:y:0>sequential_254/lstm_762/while/lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_254/lstm_762/while/lstm_cell_735/add_1AddV23sequential_254/lstm_762/while/lstm_cell_735/mul:z:05sequential_254/lstm_762/while/lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_254/lstm_762/while/lstm_cell_735/Sigmoid_2Sigmoid:sequential_254/lstm_762/while/lstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_254/lstm_762/while/lstm_cell_735/Relu_1Relu5sequential_254/lstm_762/while/lstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_254/lstm_762/while/lstm_cell_735/mul_2Mul9sequential_254/lstm_762/while/lstm_cell_735/Sigmoid_2:y:0@sequential_254/lstm_762/while/lstm_cell_735/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_254/lstm_762/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_254_lstm_762_while_placeholder_1)sequential_254_lstm_762_while_placeholder5sequential_254/lstm_762/while/lstm_cell_735/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_254/lstm_762/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_254/lstm_762/while/addAddV2)sequential_254_lstm_762_while_placeholder,sequential_254/lstm_762/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_254/lstm_762/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_254/lstm_762/while/add_1AddV2Hsequential_254_lstm_762_while_sequential_254_lstm_762_while_loop_counter.sequential_254/lstm_762/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_254/lstm_762/while/IdentityIdentity'sequential_254/lstm_762/while/add_1:z:0#^sequential_254/lstm_762/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_762/while/Identity_1IdentityNsequential_254_lstm_762_while_sequential_254_lstm_762_while_maximum_iterations#^sequential_254/lstm_762/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_762/while/Identity_2Identity%sequential_254/lstm_762/while/add:z:0#^sequential_254/lstm_762/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_762/while/Identity_3IdentityRsequential_254/lstm_762/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_254/lstm_762/while/NoOp*
T0*
_output_shapes
: ?
(sequential_254/lstm_762/while/Identity_4Identity5sequential_254/lstm_762/while/lstm_cell_735/mul_2:z:0#^sequential_254/lstm_762/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_254/lstm_762/while/Identity_5Identity5sequential_254/lstm_762/while/lstm_cell_735/add_1:z:0#^sequential_254/lstm_762/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_254/lstm_762/while/NoOpNoOpC^sequential_254/lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOpB^sequential_254/lstm_762/while/lstm_cell_735/MatMul/ReadVariableOpD^sequential_254/lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_254_lstm_762_while_identity/sequential_254/lstm_762/while/Identity:output:0"]
(sequential_254_lstm_762_while_identity_11sequential_254/lstm_762/while/Identity_1:output:0"]
(sequential_254_lstm_762_while_identity_21sequential_254/lstm_762/while/Identity_2:output:0"]
(sequential_254_lstm_762_while_identity_31sequential_254/lstm_762/while/Identity_3:output:0"]
(sequential_254_lstm_762_while_identity_41sequential_254/lstm_762/while/Identity_4:output:0"]
(sequential_254_lstm_762_while_identity_51sequential_254/lstm_762/while/Identity_5:output:0"?
Ksequential_254_lstm_762_while_lstm_cell_735_biasadd_readvariableop_resourceMsequential_254_lstm_762_while_lstm_cell_735_biasadd_readvariableop_resource_0"?
Lsequential_254_lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resourceNsequential_254_lstm_762_while_lstm_cell_735_matmul_1_readvariableop_resource_0"?
Jsequential_254_lstm_762_while_lstm_cell_735_matmul_readvariableop_resourceLsequential_254_lstm_762_while_lstm_cell_735_matmul_readvariableop_resource_0"?
Esequential_254_lstm_762_while_sequential_254_lstm_762_strided_slice_1Gsequential_254_lstm_762_while_sequential_254_lstm_762_strided_slice_1_0"?
?sequential_254_lstm_762_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_762_tensorarrayunstack_tensorlistfromtensor?sequential_254_lstm_762_while_tensorarrayv2read_tensorlistgetitem_sequential_254_lstm_762_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_254/lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOpBsequential_254/lstm_762/while/lstm_cell_735/BiasAdd/ReadVariableOp2?
Asequential_254/lstm_762/while/lstm_cell_735/MatMul/ReadVariableOpAsequential_254/lstm_762/while/lstm_cell_735/MatMul/ReadVariableOp2?
Csequential_254/lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOpCsequential_254/lstm_762/while/lstm_cell_735/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462256
inputs_0?
,lstm_cell_735_matmul_readvariableop_resource:	?A
.lstm_cell_735_matmul_1_readvariableop_resource:	d?<
-lstm_cell_735_biasadd_readvariableop_resource:	?
identity??$lstm_cell_735/BiasAdd/ReadVariableOp?#lstm_cell_735/MatMul/ReadVariableOp?%lstm_cell_735/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_735/MatMul/ReadVariableOpReadVariableOp,lstm_cell_735_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_735/MatMulMatMulstrided_slice_2:output:0+lstm_cell_735/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_735/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_735_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_735/MatMul_1MatMulzeros:output:0-lstm_cell_735/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_735/addAddV2lstm_cell_735/MatMul:product:0 lstm_cell_735/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_735/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_735_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_735/BiasAddBiasAddlstm_cell_735/add:z:0,lstm_cell_735/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_735/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_735/splitSplit&lstm_cell_735/split/split_dim:output:0lstm_cell_735/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_735/SigmoidSigmoidlstm_cell_735/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_1Sigmoidlstm_cell_735/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_735/mulMullstm_cell_735/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_735/ReluRelulstm_cell_735/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_1Mullstm_cell_735/Sigmoid:y:0 lstm_cell_735/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_735/add_1AddV2lstm_cell_735/mul:z:0lstm_cell_735/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_735/Sigmoid_2Sigmoidlstm_cell_735/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_735/Relu_1Relulstm_cell_735/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_735/mul_2Mullstm_cell_735/Sigmoid_2:y:0"lstm_cell_735/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_735_matmul_readvariableop_resource.lstm_cell_735_matmul_1_readvariableop_resource-lstm_cell_735_biasadd_readvariableop_resource*
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
while_body_4462172*
condR
while_cond_4462171*K
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
NoOpNoOp%^lstm_cell_735/BiasAdd/ReadVariableOp$^lstm_cell_735/MatMul/ReadVariableOp&^lstm_cell_735/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_735/BiasAdd/ReadVariableOp$lstm_cell_735/BiasAdd/ReadVariableOp2J
#lstm_cell_735/MatMul/ReadVariableOp#lstm_cell_735/MatMul/ReadVariableOp2N
%lstm_cell_735/MatMul_1/ReadVariableOp%lstm_cell_735/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463488
inputs_0>
,lstm_cell_737_matmul_readvariableop_resource:2(@
.lstm_cell_737_matmul_1_readvariableop_resource:
(;
-lstm_cell_737_biasadd_readvariableop_resource:(
identity??$lstm_cell_737/BiasAdd/ReadVariableOp?#lstm_cell_737/MatMul/ReadVariableOp?%lstm_cell_737/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_737/MatMul/ReadVariableOpReadVariableOp,lstm_cell_737_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_737/MatMulMatMulstrided_slice_2:output:0+lstm_cell_737/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_737/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_737_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_737/MatMul_1MatMulzeros:output:0-lstm_cell_737/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_737/addAddV2lstm_cell_737/MatMul:product:0 lstm_cell_737/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_737/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_737_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_737/BiasAddBiasAddlstm_cell_737/add:z:0,lstm_cell_737/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_737/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_737/splitSplit&lstm_cell_737/split/split_dim:output:0lstm_cell_737/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_737/SigmoidSigmoidlstm_cell_737/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_1Sigmoidlstm_cell_737/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_737/mulMullstm_cell_737/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_737/ReluRelulstm_cell_737/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_1Mullstm_cell_737/Sigmoid:y:0 lstm_cell_737/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_737/add_1AddV2lstm_cell_737/mul:z:0lstm_cell_737/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_737/Sigmoid_2Sigmoidlstm_cell_737/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_737/Relu_1Relulstm_cell_737/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_737/mul_2Mullstm_cell_737/Sigmoid_2:y:0"lstm_cell_737/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_737_matmul_readvariableop_resource.lstm_cell_737_matmul_1_readvariableop_resource-lstm_cell_737_biasadd_readvariableop_resource*
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
while_body_4463404*
condR
while_cond_4463403*K
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
NoOpNoOp%^lstm_cell_737/BiasAdd/ReadVariableOp$^lstm_cell_737/MatMul/ReadVariableOp&^lstm_cell_737/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_737/BiasAdd/ReadVariableOp$lstm_cell_737/BiasAdd/ReadVariableOp2J
#lstm_cell_737/MatMul/ReadVariableOp#lstm_cell_737/MatMul/ReadVariableOp2N
%lstm_cell_737/MatMul_1/ReadVariableOp%lstm_cell_737/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4463403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4463403___redundant_placeholder05
1while_while_cond_4463403___redundant_placeholder15
1while_while_cond_4463403___redundant_placeholder25
1while_while_cond_4463403___redundant_placeholder3
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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4463989

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
while_body_4459030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_735_4459054_0:	?0
while_lstm_cell_735_4459056_0:	d?,
while_lstm_cell_735_4459058_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_735_4459054:	?.
while_lstm_cell_735_4459056:	d?*
while_lstm_cell_735_4459058:	???+while/lstm_cell_735/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_735/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_735_4459054_0while_lstm_cell_735_4459056_0while_lstm_cell_735_4459058_0*
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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4458971?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_735/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_735/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_735/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_735/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_735_4459054while_lstm_cell_735_4459054_0"<
while_lstm_cell_735_4459056while_lstm_cell_735_4459056_0"<
while_lstm_cell_735_4459058while_lstm_cell_735_4459058_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_735/StatefulPartitionedCall+while/lstm_cell_735/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
M
lstm_762_input;
 serving_default_lstm_762_input:0?????????=
	dense_2540
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
2dense_254/kernel
:2dense_254/bias
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
0:.	?2lstm_762/lstm_cell_762/kernel
::8	d?2'lstm_762/lstm_cell_762/recurrent_kernel
*:(?2lstm_762/lstm_cell_762/bias
0:.	d?2lstm_763/lstm_cell_763/kernel
::8	2?2'lstm_763/lstm_cell_763/recurrent_kernel
*:(?2lstm_763/lstm_cell_763/bias
/:-2(2lstm_764/lstm_cell_764/kernel
9:7
(2'lstm_764/lstm_cell_764/recurrent_kernel
):'(2lstm_764/lstm_cell_764/bias
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
2Adam/dense_254/kernel/m
!:2Adam/dense_254/bias/m
5:3	?2$Adam/lstm_762/lstm_cell_762/kernel/m
?:=	d?2.Adam/lstm_762/lstm_cell_762/recurrent_kernel/m
/:-?2"Adam/lstm_762/lstm_cell_762/bias/m
5:3	d?2$Adam/lstm_763/lstm_cell_763/kernel/m
?:=	2?2.Adam/lstm_763/lstm_cell_763/recurrent_kernel/m
/:-?2"Adam/lstm_763/lstm_cell_763/bias/m
4:22(2$Adam/lstm_764/lstm_cell_764/kernel/m
>:<
(2.Adam/lstm_764/lstm_cell_764/recurrent_kernel/m
.:,(2"Adam/lstm_764/lstm_cell_764/bias/m
':%
2Adam/dense_254/kernel/v
!:2Adam/dense_254/bias/v
5:3	?2$Adam/lstm_762/lstm_cell_762/kernel/v
?:=	d?2.Adam/lstm_762/lstm_cell_762/recurrent_kernel/v
/:-?2"Adam/lstm_762/lstm_cell_762/bias/v
5:3	d?2$Adam/lstm_763/lstm_cell_763/kernel/v
?:=	2?2.Adam/lstm_763/lstm_cell_763/recurrent_kernel/v
/:-?2"Adam/lstm_763/lstm_cell_763/bias/v
4:22(2$Adam/lstm_764/lstm_cell_764/kernel/v
>:<
(2.Adam/lstm_764/lstm_cell_764/recurrent_kernel/v
.:,(2"Adam/lstm_764/lstm_cell_764/bias/v
?2?
0__inference_sequential_254_layer_call_fn_4460307
0__inference_sequential_254_layer_call_fn_4461045
0__inference_sequential_254_layer_call_fn_4461072
0__inference_sequential_254_layer_call_fn_4460923?
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
K__inference_sequential_254_layer_call_and_return_conditional_losses_4461499
K__inference_sequential_254_layer_call_and_return_conditional_losses_4461926
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460953
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460983?
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
"__inference__wrapped_model_4458758lstm_762_input"?
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
*__inference_lstm_762_layer_call_fn_4461937
*__inference_lstm_762_layer_call_fn_4461948
*__inference_lstm_762_layer_call_fn_4461959
*__inference_lstm_762_layer_call_fn_4461970?
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462113
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462256
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462399
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462542?
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
*__inference_lstm_763_layer_call_fn_4462553
*__inference_lstm_763_layer_call_fn_4462564
*__inference_lstm_763_layer_call_fn_4462575
*__inference_lstm_763_layer_call_fn_4462586?
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4462729
E__inference_lstm_763_layer_call_and_return_conditional_losses_4462872
E__inference_lstm_763_layer_call_and_return_conditional_losses_4463015
E__inference_lstm_763_layer_call_and_return_conditional_losses_4463158?
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
*__inference_lstm_764_layer_call_fn_4463169
*__inference_lstm_764_layer_call_fn_4463180
*__inference_lstm_764_layer_call_fn_4463191
*__inference_lstm_764_layer_call_fn_4463202?
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463345
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463488
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463631
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463774?
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
+__inference_dense_254_layer_call_fn_4463783?
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
F__inference_dense_254_layer_call_and_return_conditional_losses_4463793?
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
%__inference_signature_wrapper_4461018lstm_762_input"?
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
/__inference_lstm_cell_735_layer_call_fn_4463810
/__inference_lstm_cell_735_layer_call_fn_4463827?
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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4463859
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4463891?
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
/__inference_lstm_cell_736_layer_call_fn_4463908
/__inference_lstm_cell_736_layer_call_fn_4463925?
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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4463957
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4463989?
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
/__inference_lstm_cell_737_layer_call_fn_4464006
/__inference_lstm_cell_737_layer_call_fn_4464023?
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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4464055
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4464087?
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
"__inference__wrapped_model_4458758?-./012345!";?8
1?.
,?)
lstm_762_input?????????
? "5?2
0
	dense_254#? 
	dense_254??????????
F__inference_dense_254_layer_call_and_return_conditional_losses_4463793\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_254_layer_call_fn_4463783O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462113?-./O?L
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462256?-./O?L
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462399q-./??<
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
E__inference_lstm_762_layer_call_and_return_conditional_losses_4462542q-./??<
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
*__inference_lstm_762_layer_call_fn_4461937}-./O?L
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
*__inference_lstm_762_layer_call_fn_4461948}-./O?L
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
*__inference_lstm_762_layer_call_fn_4461959d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_762_layer_call_fn_4461970d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_763_layer_call_and_return_conditional_losses_4462729?012O?L
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4462872?012O?L
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4463015q012??<
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
E__inference_lstm_763_layer_call_and_return_conditional_losses_4463158q012??<
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
*__inference_lstm_763_layer_call_fn_4462553}012O?L
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
*__inference_lstm_763_layer_call_fn_4462564}012O?L
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
*__inference_lstm_763_layer_call_fn_4462575d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_763_layer_call_fn_4462586d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463345}345O?L
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463488}345O?L
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463631m345??<
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
E__inference_lstm_764_layer_call_and_return_conditional_losses_4463774m345??<
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
*__inference_lstm_764_layer_call_fn_4463169p345O?L
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
*__inference_lstm_764_layer_call_fn_4463180p345O?L
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
*__inference_lstm_764_layer_call_fn_4463191`345??<
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
*__inference_lstm_764_layer_call_fn_4463202`345??<
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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4463859?-./??}
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
J__inference_lstm_cell_735_layer_call_and_return_conditional_losses_4463891?-./??}
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
/__inference_lstm_cell_735_layer_call_fn_4463810?-./??}
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
/__inference_lstm_cell_735_layer_call_fn_4463827?-./??}
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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4463957?012??}
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
J__inference_lstm_cell_736_layer_call_and_return_conditional_losses_4463989?012??}
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
/__inference_lstm_cell_736_layer_call_fn_4463908?012??}
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
/__inference_lstm_cell_736_layer_call_fn_4463925?012??}
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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4464055?345??}
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
J__inference_lstm_cell_737_layer_call_and_return_conditional_losses_4464087?345??}
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
/__inference_lstm_cell_737_layer_call_fn_4464006?345??}
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
/__inference_lstm_cell_737_layer_call_fn_4464023?345??}
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
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460953y-./012345!"C?@
9?6
,?)
lstm_762_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_254_layer_call_and_return_conditional_losses_4460983y-./012345!"C?@
9?6
,?)
lstm_762_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_254_layer_call_and_return_conditional_losses_4461499q-./012345!";?8
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
K__inference_sequential_254_layer_call_and_return_conditional_losses_4461926q-./012345!";?8
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
0__inference_sequential_254_layer_call_fn_4460307l-./012345!"C?@
9?6
,?)
lstm_762_input?????????
p 

 
? "???????????
0__inference_sequential_254_layer_call_fn_4460923l-./012345!"C?@
9?6
,?)
lstm_762_input?????????
p

 
? "???????????
0__inference_sequential_254_layer_call_fn_4461045d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_254_layer_call_fn_4461072d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4461018?-./012345!"M?J
? 
C?@
>
lstm_762_input,?)
lstm_762_input?????????"5?2
0
	dense_254#? 
	dense_254?????????