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
dense_299/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_299/kernel
u
$dense_299/kernel/Read/ReadVariableOpReadVariableOpdense_299/kernel*
_output_shapes

:
*
dtype0
t
dense_299/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_299/bias
m
"dense_299/bias/Read/ReadVariableOpReadVariableOpdense_299/bias*
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
lstm_897/lstm_cell_897/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_897/lstm_cell_897/kernel
?
1lstm_897/lstm_cell_897/kernel/Read/ReadVariableOpReadVariableOplstm_897/lstm_cell_897/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_897/lstm_cell_897/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_897/lstm_cell_897/recurrent_kernel
?
;lstm_897/lstm_cell_897/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_897/lstm_cell_897/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_897/lstm_cell_897/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_897/lstm_cell_897/bias
?
/lstm_897/lstm_cell_897/bias/Read/ReadVariableOpReadVariableOplstm_897/lstm_cell_897/bias*
_output_shapes	
:?*
dtype0
?
lstm_898/lstm_cell_898/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_898/lstm_cell_898/kernel
?
1lstm_898/lstm_cell_898/kernel/Read/ReadVariableOpReadVariableOplstm_898/lstm_cell_898/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_898/lstm_cell_898/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_898/lstm_cell_898/recurrent_kernel
?
;lstm_898/lstm_cell_898/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_898/lstm_cell_898/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_898/lstm_cell_898/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_898/lstm_cell_898/bias
?
/lstm_898/lstm_cell_898/bias/Read/ReadVariableOpReadVariableOplstm_898/lstm_cell_898/bias*
_output_shapes	
:?*
dtype0
?
lstm_899/lstm_cell_899/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_899/lstm_cell_899/kernel
?
1lstm_899/lstm_cell_899/kernel/Read/ReadVariableOpReadVariableOplstm_899/lstm_cell_899/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_899/lstm_cell_899/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_899/lstm_cell_899/recurrent_kernel
?
;lstm_899/lstm_cell_899/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_899/lstm_cell_899/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_899/lstm_cell_899/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_899/lstm_cell_899/bias
?
/lstm_899/lstm_cell_899/bias/Read/ReadVariableOpReadVariableOplstm_899/lstm_cell_899/bias*
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
Adam/dense_299/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_299/kernel/m
?
+Adam/dense_299/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_299/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_299/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_299/bias/m
{
)Adam/dense_299/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_299/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_897/lstm_cell_897/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_897/lstm_cell_897/kernel/m
?
8Adam/lstm_897/lstm_cell_897/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_897/lstm_cell_897/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_897/lstm_cell_897/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_897/lstm_cell_897/recurrent_kernel/m
?
BAdam/lstm_897/lstm_cell_897/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_897/lstm_cell_897/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_897/lstm_cell_897/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_897/lstm_cell_897/bias/m
?
6Adam/lstm_897/lstm_cell_897/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_897/lstm_cell_897/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_898/lstm_cell_898/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_898/lstm_cell_898/kernel/m
?
8Adam/lstm_898/lstm_cell_898/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_898/lstm_cell_898/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_898/lstm_cell_898/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_898/lstm_cell_898/recurrent_kernel/m
?
BAdam/lstm_898/lstm_cell_898/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_898/lstm_cell_898/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_898/lstm_cell_898/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_898/lstm_cell_898/bias/m
?
6Adam/lstm_898/lstm_cell_898/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_898/lstm_cell_898/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_899/lstm_cell_899/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_899/lstm_cell_899/kernel/m
?
8Adam/lstm_899/lstm_cell_899/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_899/lstm_cell_899/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_899/lstm_cell_899/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_899/lstm_cell_899/recurrent_kernel/m
?
BAdam/lstm_899/lstm_cell_899/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_899/lstm_cell_899/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_899/lstm_cell_899/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_899/lstm_cell_899/bias/m
?
6Adam/lstm_899/lstm_cell_899/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_899/lstm_cell_899/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_299/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_299/kernel/v
?
+Adam/dense_299/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_299/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_299/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_299/bias/v
{
)Adam/dense_299/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_299/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_897/lstm_cell_897/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_897/lstm_cell_897/kernel/v
?
8Adam/lstm_897/lstm_cell_897/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_897/lstm_cell_897/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_897/lstm_cell_897/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_897/lstm_cell_897/recurrent_kernel/v
?
BAdam/lstm_897/lstm_cell_897/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_897/lstm_cell_897/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_897/lstm_cell_897/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_897/lstm_cell_897/bias/v
?
6Adam/lstm_897/lstm_cell_897/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_897/lstm_cell_897/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_898/lstm_cell_898/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_898/lstm_cell_898/kernel/v
?
8Adam/lstm_898/lstm_cell_898/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_898/lstm_cell_898/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_898/lstm_cell_898/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_898/lstm_cell_898/recurrent_kernel/v
?
BAdam/lstm_898/lstm_cell_898/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_898/lstm_cell_898/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_898/lstm_cell_898/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_898/lstm_cell_898/bias/v
?
6Adam/lstm_898/lstm_cell_898/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_898/lstm_cell_898/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_899/lstm_cell_899/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_899/lstm_cell_899/kernel/v
?
8Adam/lstm_899/lstm_cell_899/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_899/lstm_cell_899/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_899/lstm_cell_899/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_899/lstm_cell_899/recurrent_kernel/v
?
BAdam/lstm_899/lstm_cell_899/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_899/lstm_cell_899/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_899/lstm_cell_899/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_899/lstm_cell_899/bias/v
?
6Adam/lstm_899/lstm_cell_899/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_899/lstm_cell_899/bias/v*
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
VARIABLE_VALUEdense_299/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_299/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_897/lstm_cell_897/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_897/lstm_cell_897/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_897/lstm_cell_897/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_898/lstm_cell_898/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_898/lstm_cell_898/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_898/lstm_cell_898/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_899/lstm_cell_899/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_899/lstm_cell_899/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_899/lstm_cell_899/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_299/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_299/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_897/lstm_cell_897/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_897/lstm_cell_897/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_897/lstm_cell_897/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_898/lstm_cell_898/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_898/lstm_cell_898/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_898/lstm_cell_898/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_899/lstm_cell_899/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_899/lstm_cell_899/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_899/lstm_cell_899/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_299/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_299/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_897/lstm_cell_897/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_897/lstm_cell_897/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_897/lstm_cell_897/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_898/lstm_cell_898/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_898/lstm_cell_898/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_898/lstm_cell_898/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_899/lstm_cell_899/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_899/lstm_cell_899/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_899/lstm_cell_899/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_897_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_897_inputlstm_897/lstm_cell_897/kernel'lstm_897/lstm_cell_897/recurrent_kernellstm_897/lstm_cell_897/biaslstm_898/lstm_cell_898/kernel'lstm_898/lstm_cell_898/recurrent_kernellstm_898/lstm_cell_898/biaslstm_899/lstm_cell_899/kernel'lstm_899/lstm_cell_899/recurrent_kernellstm_899/lstm_cell_899/biasdense_299/kerneldense_299/bias*
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
%__inference_signature_wrapper_4676997
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_299/kernel/Read/ReadVariableOp"dense_299/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_897/lstm_cell_897/kernel/Read/ReadVariableOp;lstm_897/lstm_cell_897/recurrent_kernel/Read/ReadVariableOp/lstm_897/lstm_cell_897/bias/Read/ReadVariableOp1lstm_898/lstm_cell_898/kernel/Read/ReadVariableOp;lstm_898/lstm_cell_898/recurrent_kernel/Read/ReadVariableOp/lstm_898/lstm_cell_898/bias/Read/ReadVariableOp1lstm_899/lstm_cell_899/kernel/Read/ReadVariableOp;lstm_899/lstm_cell_899/recurrent_kernel/Read/ReadVariableOp/lstm_899/lstm_cell_899/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_299/kernel/m/Read/ReadVariableOp)Adam/dense_299/bias/m/Read/ReadVariableOp8Adam/lstm_897/lstm_cell_897/kernel/m/Read/ReadVariableOpBAdam/lstm_897/lstm_cell_897/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_897/lstm_cell_897/bias/m/Read/ReadVariableOp8Adam/lstm_898/lstm_cell_898/kernel/m/Read/ReadVariableOpBAdam/lstm_898/lstm_cell_898/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_898/lstm_cell_898/bias/m/Read/ReadVariableOp8Adam/lstm_899/lstm_cell_899/kernel/m/Read/ReadVariableOpBAdam/lstm_899/lstm_cell_899/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_899/lstm_cell_899/bias/m/Read/ReadVariableOp+Adam/dense_299/kernel/v/Read/ReadVariableOp)Adam/dense_299/bias/v/Read/ReadVariableOp8Adam/lstm_897/lstm_cell_897/kernel/v/Read/ReadVariableOpBAdam/lstm_897/lstm_cell_897/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_897/lstm_cell_897/bias/v/Read/ReadVariableOp8Adam/lstm_898/lstm_cell_898/kernel/v/Read/ReadVariableOpBAdam/lstm_898/lstm_cell_898/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_898/lstm_cell_898/bias/v/Read/ReadVariableOp8Adam/lstm_899/lstm_cell_899/kernel/v/Read/ReadVariableOpBAdam/lstm_899/lstm_cell_899/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_899/lstm_cell_899/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4680209
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_299/kerneldense_299/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_897/lstm_cell_897/kernel'lstm_897/lstm_cell_897/recurrent_kernellstm_897/lstm_cell_897/biaslstm_898/lstm_cell_898/kernel'lstm_898/lstm_cell_898/recurrent_kernellstm_898/lstm_cell_898/biaslstm_899/lstm_cell_899/kernel'lstm_899/lstm_cell_899/recurrent_kernellstm_899/lstm_cell_899/biastotalcountAdam/dense_299/kernel/mAdam/dense_299/bias/m$Adam/lstm_897/lstm_cell_897/kernel/m.Adam/lstm_897/lstm_cell_897/recurrent_kernel/m"Adam/lstm_897/lstm_cell_897/bias/m$Adam/lstm_898/lstm_cell_898/kernel/m.Adam/lstm_898/lstm_cell_898/recurrent_kernel/m"Adam/lstm_898/lstm_cell_898/bias/m$Adam/lstm_899/lstm_cell_899/kernel/m.Adam/lstm_899/lstm_cell_899/recurrent_kernel/m"Adam/lstm_899/lstm_cell_899/bias/mAdam/dense_299/kernel/vAdam/dense_299/bias/v$Adam/lstm_897/lstm_cell_897/kernel/v.Adam/lstm_897/lstm_cell_897/recurrent_kernel/v"Adam/lstm_897/lstm_cell_897/bias/v$Adam/lstm_898/lstm_cell_898/kernel/v.Adam/lstm_898/lstm_cell_898/recurrent_kernel/v"Adam/lstm_898/lstm_cell_898/bias/v$Adam/lstm_899/lstm_cell_899/kernel/v.Adam/lstm_899/lstm_cell_899/recurrent_kernel/v"Adam/lstm_899/lstm_cell_899/bias/v*4
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
#__inference__traced_restore_4680339??+
?C
?

lstm_897_while_body_4677110.
*lstm_897_while_lstm_897_while_loop_counter4
0lstm_897_while_lstm_897_while_maximum_iterations
lstm_897_while_placeholder 
lstm_897_while_placeholder_1 
lstm_897_while_placeholder_2 
lstm_897_while_placeholder_3-
)lstm_897_while_lstm_897_strided_slice_1_0i
elstm_897_while_tensorarrayv2read_tensorlistgetitem_lstm_897_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_897_while_lstm_cell_771_matmul_readvariableop_resource_0:	?R
?lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?M
>lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
lstm_897_while_identity
lstm_897_while_identity_1
lstm_897_while_identity_2
lstm_897_while_identity_3
lstm_897_while_identity_4
lstm_897_while_identity_5+
'lstm_897_while_lstm_897_strided_slice_1g
clstm_897_while_tensorarrayv2read_tensorlistgetitem_lstm_897_tensorarrayunstack_tensorlistfromtensorN
;lstm_897_while_lstm_cell_771_matmul_readvariableop_resource:	?P
=lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource:	d?K
<lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource:	???3lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp?2lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp?4lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp?
@lstm_897/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_897/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_897_while_tensorarrayv2read_tensorlistgetitem_lstm_897_tensorarrayunstack_tensorlistfromtensor_0lstm_897_while_placeholderIlstm_897/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_897/while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp=lstm_897_while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_897/while/lstm_cell_771/MatMulMatMul9lstm_897/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp?lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_897/while/lstm_cell_771/MatMul_1MatMullstm_897_while_placeholder_2<lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_897/while/lstm_cell_771/addAddV2-lstm_897/while/lstm_cell_771/MatMul:product:0/lstm_897/while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp>lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_897/while/lstm_cell_771/BiasAddBiasAdd$lstm_897/while/lstm_cell_771/add:z:0;lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_897/while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_897/while/lstm_cell_771/splitSplit5lstm_897/while/lstm_cell_771/split/split_dim:output:0-lstm_897/while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_897/while/lstm_cell_771/SigmoidSigmoid+lstm_897/while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_897/while/lstm_cell_771/Sigmoid_1Sigmoid+lstm_897/while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_897/while/lstm_cell_771/mulMul*lstm_897/while/lstm_cell_771/Sigmoid_1:y:0lstm_897_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_897/while/lstm_cell_771/ReluRelu+lstm_897/while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_897/while/lstm_cell_771/mul_1Mul(lstm_897/while/lstm_cell_771/Sigmoid:y:0/lstm_897/while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_897/while/lstm_cell_771/add_1AddV2$lstm_897/while/lstm_cell_771/mul:z:0&lstm_897/while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_897/while/lstm_cell_771/Sigmoid_2Sigmoid+lstm_897/while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_897/while/lstm_cell_771/Relu_1Relu&lstm_897/while/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_897/while/lstm_cell_771/mul_2Mul*lstm_897/while/lstm_cell_771/Sigmoid_2:y:01lstm_897/while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_897/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_897_while_placeholder_1lstm_897_while_placeholder&lstm_897/while/lstm_cell_771/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_897/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_897/while/addAddV2lstm_897_while_placeholderlstm_897/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_897/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_897/while/add_1AddV2*lstm_897_while_lstm_897_while_loop_counterlstm_897/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_897/while/IdentityIdentitylstm_897/while/add_1:z:0^lstm_897/while/NoOp*
T0*
_output_shapes
: ?
lstm_897/while/Identity_1Identity0lstm_897_while_lstm_897_while_maximum_iterations^lstm_897/while/NoOp*
T0*
_output_shapes
: t
lstm_897/while/Identity_2Identitylstm_897/while/add:z:0^lstm_897/while/NoOp*
T0*
_output_shapes
: ?
lstm_897/while/Identity_3IdentityClstm_897/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_897/while/NoOp*
T0*
_output_shapes
: ?
lstm_897/while/Identity_4Identity&lstm_897/while/lstm_cell_771/mul_2:z:0^lstm_897/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_897/while/Identity_5Identity&lstm_897/while/lstm_cell_771/add_1:z:0^lstm_897/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_897/while/NoOpNoOp4^lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp3^lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp5^lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_897_while_identity lstm_897/while/Identity:output:0"?
lstm_897_while_identity_1"lstm_897/while/Identity_1:output:0"?
lstm_897_while_identity_2"lstm_897/while/Identity_2:output:0"?
lstm_897_while_identity_3"lstm_897/while/Identity_3:output:0"?
lstm_897_while_identity_4"lstm_897/while/Identity_4:output:0"?
lstm_897_while_identity_5"lstm_897/while/Identity_5:output:0"T
'lstm_897_while_lstm_897_strided_slice_1)lstm_897_while_lstm_897_strided_slice_1_0"~
<lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource>lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource_0"?
=lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource?lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource_0"|
;lstm_897_while_lstm_cell_771_matmul_readvariableop_resource=lstm_897_while_lstm_cell_771_matmul_readvariableop_resource_0"?
clstm_897_while_tensorarrayv2read_tensorlistgetitem_lstm_897_tensorarrayunstack_tensorlistfromtensorelstm_897_while_tensorarrayv2read_tensorlistgetitem_lstm_897_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp3lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp2h
2lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp2lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp2l
4lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp4lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4678910
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_299_lstm_899_while_cond_4674646L
Hsequential_299_lstm_899_while_sequential_299_lstm_899_while_loop_counterR
Nsequential_299_lstm_899_while_sequential_299_lstm_899_while_maximum_iterations-
)sequential_299_lstm_899_while_placeholder/
+sequential_299_lstm_899_while_placeholder_1/
+sequential_299_lstm_899_while_placeholder_2/
+sequential_299_lstm_899_while_placeholder_3N
Jsequential_299_lstm_899_while_less_sequential_299_lstm_899_strided_slice_1e
asequential_299_lstm_899_while_sequential_299_lstm_899_while_cond_4674646___redundant_placeholder0e
asequential_299_lstm_899_while_sequential_299_lstm_899_while_cond_4674646___redundant_placeholder1e
asequential_299_lstm_899_while_sequential_299_lstm_899_while_cond_4674646___redundant_placeholder2e
asequential_299_lstm_899_while_sequential_299_lstm_899_while_cond_4674646___redundant_placeholder3*
&sequential_299_lstm_899_while_identity
?
"sequential_299/lstm_899/while/LessLess)sequential_299_lstm_899_while_placeholderJsequential_299_lstm_899_while_less_sequential_299_lstm_899_strided_slice_1*
T0*
_output_shapes
: {
&sequential_299/lstm_899/while/IdentityIdentity&sequential_299/lstm_899/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_299_lstm_899_while_identity/sequential_299/lstm_899/while/Identity:output:0*(
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
while_cond_4675708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4675708___redundant_placeholder05
1while_while_cond_4675708___redundant_placeholder15
1while_while_cond_4675708___redundant_placeholder25
1while_while_cond_4675708___redundant_placeholder3
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
*__inference_lstm_897_layer_call_fn_4677916
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4674887|
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
*__inference_lstm_899_layer_call_fn_4679181

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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4676452o
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4675078

inputs(
lstm_cell_771_4674996:	?(
lstm_cell_771_4674998:	d?$
lstm_cell_771_4675000:	?
identity??%lstm_cell_771/StatefulPartitionedCall?while;
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
%lstm_cell_771/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_771_4674996lstm_cell_771_4674998lstm_cell_771_4675000*
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4674950n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_771_4674996lstm_cell_771_4674998lstm_cell_771_4675000*
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
while_body_4675009*
condR
while_cond_4675008*K
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
NoOpNoOp&^lstm_cell_771/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_771/StatefulPartitionedCall%lstm_cell_771/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_898_layer_call_and_return_conditional_losses_4678994

inputs?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4678910*
condR
while_cond_4678909*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4675504

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
?
?
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4680066

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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679753

inputs>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4679669*
condR
while_cond_4679668*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4675167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4675167___redundant_placeholder05
1while_while_cond_4675167___redundant_placeholder15
1while_while_cond_4675167___redundant_placeholder25
1while_while_cond_4675167___redundant_placeholder3
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
?
?
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676850

inputs#
lstm_897_4676823:	?#
lstm_897_4676825:	d?
lstm_897_4676827:	?#
lstm_898_4676830:	d?#
lstm_898_4676832:	2?
lstm_898_4676834:	?"
lstm_899_4676837:2("
lstm_899_4676839:
(
lstm_899_4676841:(#
dense_299_4676844:

dense_299_4676846:
identity??!dense_299/StatefulPartitionedCall? lstm_897/StatefulPartitionedCall? lstm_898/StatefulPartitionedCall? lstm_899/StatefulPartitionedCall?
 lstm_897/StatefulPartitionedCallStatefulPartitionedCallinputslstm_897_4676823lstm_897_4676825lstm_897_4676827*
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4676782?
 lstm_898/StatefulPartitionedCallStatefulPartitionedCall)lstm_897/StatefulPartitionedCall:output:0lstm_898_4676830lstm_898_4676832lstm_898_4676834*
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4676617?
 lstm_899/StatefulPartitionedCallStatefulPartitionedCall)lstm_898/StatefulPartitionedCall:output:0lstm_899_4676837lstm_899_4676839lstm_899_4676841*
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4676452?
!dense_299/StatefulPartitionedCallStatefulPartitionedCall)lstm_899/StatefulPartitionedCall:output:0dense_299_4676844dense_299_4676846*
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
F__inference_dense_299_layer_call_and_return_conditional_losses_4676254y
IdentityIdentity*dense_299/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_299/StatefulPartitionedCall!^lstm_897/StatefulPartitionedCall!^lstm_898/StatefulPartitionedCall!^lstm_899/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_299/StatefulPartitionedCall!dense_299/StatefulPartitionedCall2D
 lstm_897/StatefulPartitionedCall lstm_897/StatefulPartitionedCall2D
 lstm_898/StatefulPartitionedCall lstm_898/StatefulPartitionedCall2D
 lstm_899/StatefulPartitionedCall lstm_899/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678521

inputs?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4678437*
condR
while_cond_4678436*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679324
inputs_0>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4679240*
condR
while_cond_4679239*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_299_layer_call_fn_4677051

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
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676850o
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
?
?
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676962
lstm_897_input#
lstm_897_4676935:	?#
lstm_897_4676937:	d?
lstm_897_4676939:	?#
lstm_898_4676942:	d?#
lstm_898_4676944:	2?
lstm_898_4676946:	?"
lstm_899_4676949:2("
lstm_899_4676951:
(
lstm_899_4676953:(#
dense_299_4676956:

dense_299_4676958:
identity??!dense_299/StatefulPartitionedCall? lstm_897/StatefulPartitionedCall? lstm_898/StatefulPartitionedCall? lstm_899/StatefulPartitionedCall?
 lstm_897/StatefulPartitionedCallStatefulPartitionedCalllstm_897_inputlstm_897_4676935lstm_897_4676937lstm_897_4676939*
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4676782?
 lstm_898/StatefulPartitionedCallStatefulPartitionedCall)lstm_897/StatefulPartitionedCall:output:0lstm_898_4676942lstm_898_4676944lstm_898_4676946*
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4676617?
 lstm_899/StatefulPartitionedCallStatefulPartitionedCall)lstm_898/StatefulPartitionedCall:output:0lstm_899_4676949lstm_899_4676951lstm_899_4676953*
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4676452?
!dense_299/StatefulPartitionedCallStatefulPartitionedCall)lstm_899/StatefulPartitionedCall:output:0dense_299_4676956dense_299_4676958*
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
F__inference_dense_299_layer_call_and_return_conditional_losses_4676254y
IdentityIdentity*dense_299/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_299/StatefulPartitionedCall!^lstm_897/StatefulPartitionedCall!^lstm_898/StatefulPartitionedCall!^lstm_899/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_299/StatefulPartitionedCall!dense_299/StatefulPartitionedCall2D
 lstm_897/StatefulPartitionedCall lstm_897/StatefulPartitionedCall2D
 lstm_898/StatefulPartitionedCall lstm_898/StatefulPartitionedCall2D
 lstm_899/StatefulPartitionedCall lstm_899/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_897_input
?
?
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676932
lstm_897_input#
lstm_897_4676905:	?#
lstm_897_4676907:	d?
lstm_897_4676909:	?#
lstm_898_4676912:	d?#
lstm_898_4676914:	2?
lstm_898_4676916:	?"
lstm_899_4676919:2("
lstm_899_4676921:
(
lstm_899_4676923:(#
dense_299_4676926:

dense_299_4676928:
identity??!dense_299/StatefulPartitionedCall? lstm_897/StatefulPartitionedCall? lstm_898/StatefulPartitionedCall? lstm_899/StatefulPartitionedCall?
 lstm_897/StatefulPartitionedCallStatefulPartitionedCalllstm_897_inputlstm_897_4676905lstm_897_4676907lstm_897_4676909*
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4675936?
 lstm_898/StatefulPartitionedCallStatefulPartitionedCall)lstm_897/StatefulPartitionedCall:output:0lstm_898_4676912lstm_898_4676914lstm_898_4676916*
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4676086?
 lstm_899/StatefulPartitionedCallStatefulPartitionedCall)lstm_898/StatefulPartitionedCall:output:0lstm_899_4676919lstm_899_4676921lstm_899_4676923*
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4676236?
!dense_299/StatefulPartitionedCallStatefulPartitionedCall)lstm_899/StatefulPartitionedCall:output:0dense_299_4676926dense_299_4676928*
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
F__inference_dense_299_layer_call_and_return_conditional_losses_4676254y
IdentityIdentity*dense_299/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_299/StatefulPartitionedCall!^lstm_897/StatefulPartitionedCall!^lstm_898/StatefulPartitionedCall!^lstm_899/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_299/StatefulPartitionedCall!dense_299/StatefulPartitionedCall2D
 lstm_897/StatefulPartitionedCall lstm_897/StatefulPartitionedCall2D
 lstm_898/StatefulPartitionedCall lstm_898/StatefulPartitionedCall2D
 lstm_899/StatefulPartitionedCall lstm_899/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_897_input
?#
?
while_body_4674818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_771_4674842_0:	?0
while_lstm_cell_771_4674844_0:	d?,
while_lstm_cell_771_4674846_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_771_4674842:	?.
while_lstm_cell_771_4674844:	d?*
while_lstm_cell_771_4674846:	???+while/lstm_cell_771/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_771/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_771_4674842_0while_lstm_cell_771_4674844_0while_lstm_cell_771_4674846_0*
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4674804?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_771/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_771/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_771/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_771/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_771_4674842while_lstm_cell_771_4674842_0"<
while_lstm_cell_771_4674844while_lstm_cell_771_4674844_0"<
while_lstm_cell_771_4674846while_lstm_cell_771_4674846_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_771/StatefulPartitionedCall+while/lstm_cell_771/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4675154

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

?
0__inference_sequential_299_layer_call_fn_4676902
lstm_897_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_897_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676850o
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
_user_specified_namelstm_897_input
?J
?
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679610

inputs>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4679526*
condR
while_cond_4679525*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*sequential_299_lstm_897_while_cond_4674368L
Hsequential_299_lstm_897_while_sequential_299_lstm_897_while_loop_counterR
Nsequential_299_lstm_897_while_sequential_299_lstm_897_while_maximum_iterations-
)sequential_299_lstm_897_while_placeholder/
+sequential_299_lstm_897_while_placeholder_1/
+sequential_299_lstm_897_while_placeholder_2/
+sequential_299_lstm_897_while_placeholder_3N
Jsequential_299_lstm_897_while_less_sequential_299_lstm_897_strided_slice_1e
asequential_299_lstm_897_while_sequential_299_lstm_897_while_cond_4674368___redundant_placeholder0e
asequential_299_lstm_897_while_sequential_299_lstm_897_while_cond_4674368___redundant_placeholder1e
asequential_299_lstm_897_while_sequential_299_lstm_897_while_cond_4674368___redundant_placeholder2e
asequential_299_lstm_897_while_sequential_299_lstm_897_while_cond_4674368___redundant_placeholder3*
&sequential_299_lstm_897_while_identity
?
"sequential_299/lstm_897/while/LessLess)sequential_299_lstm_897_while_placeholderJsequential_299_lstm_897_while_less_sequential_299_lstm_897_strided_slice_1*
T0*
_output_shapes
: {
&sequential_299/lstm_897/while/IdentityIdentity&sequential_299/lstm_897/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_299_lstm_897_while_identity/sequential_299/lstm_897/while/Identity:output:0*(
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
*sequential_299_lstm_898_while_cond_4674507L
Hsequential_299_lstm_898_while_sequential_299_lstm_898_while_loop_counterR
Nsequential_299_lstm_898_while_sequential_299_lstm_898_while_maximum_iterations-
)sequential_299_lstm_898_while_placeholder/
+sequential_299_lstm_898_while_placeholder_1/
+sequential_299_lstm_898_while_placeholder_2/
+sequential_299_lstm_898_while_placeholder_3N
Jsequential_299_lstm_898_while_less_sequential_299_lstm_898_strided_slice_1e
asequential_299_lstm_898_while_sequential_299_lstm_898_while_cond_4674507___redundant_placeholder0e
asequential_299_lstm_898_while_sequential_299_lstm_898_while_cond_4674507___redundant_placeholder1e
asequential_299_lstm_898_while_sequential_299_lstm_898_while_cond_4674507___redundant_placeholder2e
asequential_299_lstm_898_while_sequential_299_lstm_898_while_cond_4674507___redundant_placeholder3*
&sequential_299_lstm_898_while_identity
?
"sequential_299/lstm_898/while/LessLess)sequential_299_lstm_898_while_placeholderJsequential_299_lstm_898_while_less_sequential_299_lstm_898_strided_slice_1*
T0*
_output_shapes
: {
&sequential_299/lstm_898/while/IdentityIdentity&sequential_299/lstm_898/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_299_lstm_898_while_identity/sequential_299/lstm_898/while/Identity:output:0*(
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
while_cond_4679525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4679525___redundant_placeholder05
1while_while_cond_4679525___redundant_placeholder15
1while_while_cond_4679525___redundant_placeholder25
1while_while_cond_4679525___redundant_placeholder3
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

lstm_898_while_body_4677676.
*lstm_898_while_lstm_898_while_loop_counter4
0lstm_898_while_lstm_898_while_maximum_iterations
lstm_898_while_placeholder 
lstm_898_while_placeholder_1 
lstm_898_while_placeholder_2 
lstm_898_while_placeholder_3-
)lstm_898_while_lstm_898_strided_slice_1_0i
elstm_898_while_tensorarrayv2read_tensorlistgetitem_lstm_898_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_898_while_lstm_cell_772_matmul_readvariableop_resource_0:	d?R
?lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?M
>lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
lstm_898_while_identity
lstm_898_while_identity_1
lstm_898_while_identity_2
lstm_898_while_identity_3
lstm_898_while_identity_4
lstm_898_while_identity_5+
'lstm_898_while_lstm_898_strided_slice_1g
clstm_898_while_tensorarrayv2read_tensorlistgetitem_lstm_898_tensorarrayunstack_tensorlistfromtensorN
;lstm_898_while_lstm_cell_772_matmul_readvariableop_resource:	d?P
=lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource:	2?K
<lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource:	???3lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp?2lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp?4lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp?
@lstm_898/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_898/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_898_while_tensorarrayv2read_tensorlistgetitem_lstm_898_tensorarrayunstack_tensorlistfromtensor_0lstm_898_while_placeholderIlstm_898/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_898/while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp=lstm_898_while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_898/while/lstm_cell_772/MatMulMatMul9lstm_898/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp?lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_898/while/lstm_cell_772/MatMul_1MatMullstm_898_while_placeholder_2<lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_898/while/lstm_cell_772/addAddV2-lstm_898/while/lstm_cell_772/MatMul:product:0/lstm_898/while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp>lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_898/while/lstm_cell_772/BiasAddBiasAdd$lstm_898/while/lstm_cell_772/add:z:0;lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_898/while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_898/while/lstm_cell_772/splitSplit5lstm_898/while/lstm_cell_772/split/split_dim:output:0-lstm_898/while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_898/while/lstm_cell_772/SigmoidSigmoid+lstm_898/while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_898/while/lstm_cell_772/Sigmoid_1Sigmoid+lstm_898/while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_898/while/lstm_cell_772/mulMul*lstm_898/while/lstm_cell_772/Sigmoid_1:y:0lstm_898_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_898/while/lstm_cell_772/ReluRelu+lstm_898/while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_898/while/lstm_cell_772/mul_1Mul(lstm_898/while/lstm_cell_772/Sigmoid:y:0/lstm_898/while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_898/while/lstm_cell_772/add_1AddV2$lstm_898/while/lstm_cell_772/mul:z:0&lstm_898/while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_898/while/lstm_cell_772/Sigmoid_2Sigmoid+lstm_898/while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_898/while/lstm_cell_772/Relu_1Relu&lstm_898/while/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_898/while/lstm_cell_772/mul_2Mul*lstm_898/while/lstm_cell_772/Sigmoid_2:y:01lstm_898/while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_898/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_898_while_placeholder_1lstm_898_while_placeholder&lstm_898/while/lstm_cell_772/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_898/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_898/while/addAddV2lstm_898_while_placeholderlstm_898/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_898/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_898/while/add_1AddV2*lstm_898_while_lstm_898_while_loop_counterlstm_898/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_898/while/IdentityIdentitylstm_898/while/add_1:z:0^lstm_898/while/NoOp*
T0*
_output_shapes
: ?
lstm_898/while/Identity_1Identity0lstm_898_while_lstm_898_while_maximum_iterations^lstm_898/while/NoOp*
T0*
_output_shapes
: t
lstm_898/while/Identity_2Identitylstm_898/while/add:z:0^lstm_898/while/NoOp*
T0*
_output_shapes
: ?
lstm_898/while/Identity_3IdentityClstm_898/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_898/while/NoOp*
T0*
_output_shapes
: ?
lstm_898/while/Identity_4Identity&lstm_898/while/lstm_cell_772/mul_2:z:0^lstm_898/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_898/while/Identity_5Identity&lstm_898/while/lstm_cell_772/add_1:z:0^lstm_898/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_898/while/NoOpNoOp4^lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp3^lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp5^lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_898_while_identity lstm_898/while/Identity:output:0"?
lstm_898_while_identity_1"lstm_898/while/Identity_1:output:0"?
lstm_898_while_identity_2"lstm_898/while/Identity_2:output:0"?
lstm_898_while_identity_3"lstm_898/while/Identity_3:output:0"?
lstm_898_while_identity_4"lstm_898/while/Identity_4:output:0"?
lstm_898_while_identity_5"lstm_898/while/Identity_5:output:0"T
'lstm_898_while_lstm_898_strided_slice_1)lstm_898_while_lstm_898_strided_slice_1_0"~
<lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource>lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource_0"?
=lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource?lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource_0"|
;lstm_898_while_lstm_cell_772_matmul_readvariableop_resource=lstm_898_while_lstm_cell_772_matmul_readvariableop_resource_0"?
clstm_898_while_tensorarrayv2read_tensorlistgetitem_lstm_898_tensorarrayunstack_tensorlistfromtensorelstm_898_while_tensorarrayv2read_tensorlistgetitem_lstm_898_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp3lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp2h
2lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp2lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp2l
4lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp4lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4678766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4678766___redundant_placeholder05
1while_while_cond_4678766___redundant_placeholder15
1while_while_cond_4678766___redundant_placeholder25
1while_while_cond_4678766___redundant_placeholder3
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
?T
?
*sequential_299_lstm_897_while_body_4674369L
Hsequential_299_lstm_897_while_sequential_299_lstm_897_while_loop_counterR
Nsequential_299_lstm_897_while_sequential_299_lstm_897_while_maximum_iterations-
)sequential_299_lstm_897_while_placeholder/
+sequential_299_lstm_897_while_placeholder_1/
+sequential_299_lstm_897_while_placeholder_2/
+sequential_299_lstm_897_while_placeholder_3K
Gsequential_299_lstm_897_while_sequential_299_lstm_897_strided_slice_1_0?
?sequential_299_lstm_897_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_897_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_299_lstm_897_while_lstm_cell_771_matmul_readvariableop_resource_0:	?a
Nsequential_299_lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?\
Msequential_299_lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource_0:	?*
&sequential_299_lstm_897_while_identity,
(sequential_299_lstm_897_while_identity_1,
(sequential_299_lstm_897_while_identity_2,
(sequential_299_lstm_897_while_identity_3,
(sequential_299_lstm_897_while_identity_4,
(sequential_299_lstm_897_while_identity_5I
Esequential_299_lstm_897_while_sequential_299_lstm_897_strided_slice_1?
?sequential_299_lstm_897_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_897_tensorarrayunstack_tensorlistfromtensor]
Jsequential_299_lstm_897_while_lstm_cell_771_matmul_readvariableop_resource:	?_
Lsequential_299_lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource:	d?Z
Ksequential_299_lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource:	???Bsequential_299/lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp?Asequential_299/lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp?Csequential_299/lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp?
Osequential_299/lstm_897/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_299/lstm_897/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_299_lstm_897_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_897_tensorarrayunstack_tensorlistfromtensor_0)sequential_299_lstm_897_while_placeholderXsequential_299/lstm_897/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_299/lstm_897/while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOpLsequential_299_lstm_897_while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_299/lstm_897/while/lstm_cell_771/MatMulMatMulHsequential_299/lstm_897/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_299/lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_299/lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOpNsequential_299_lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_299/lstm_897/while/lstm_cell_771/MatMul_1MatMul+sequential_299_lstm_897_while_placeholder_2Ksequential_299/lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_299/lstm_897/while/lstm_cell_771/addAddV2<sequential_299/lstm_897/while/lstm_cell_771/MatMul:product:0>sequential_299/lstm_897/while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_299/lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOpMsequential_299_lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_299/lstm_897/while/lstm_cell_771/BiasAddBiasAdd3sequential_299/lstm_897/while/lstm_cell_771/add:z:0Jsequential_299/lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_299/lstm_897/while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_299/lstm_897/while/lstm_cell_771/splitSplitDsequential_299/lstm_897/while/lstm_cell_771/split/split_dim:output:0<sequential_299/lstm_897/while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_299/lstm_897/while/lstm_cell_771/SigmoidSigmoid:sequential_299/lstm_897/while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_299/lstm_897/while/lstm_cell_771/Sigmoid_1Sigmoid:sequential_299/lstm_897/while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_299/lstm_897/while/lstm_cell_771/mulMul9sequential_299/lstm_897/while/lstm_cell_771/Sigmoid_1:y:0+sequential_299_lstm_897_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_299/lstm_897/while/lstm_cell_771/ReluRelu:sequential_299/lstm_897/while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_299/lstm_897/while/lstm_cell_771/mul_1Mul7sequential_299/lstm_897/while/lstm_cell_771/Sigmoid:y:0>sequential_299/lstm_897/while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_299/lstm_897/while/lstm_cell_771/add_1AddV23sequential_299/lstm_897/while/lstm_cell_771/mul:z:05sequential_299/lstm_897/while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_299/lstm_897/while/lstm_cell_771/Sigmoid_2Sigmoid:sequential_299/lstm_897/while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_299/lstm_897/while/lstm_cell_771/Relu_1Relu5sequential_299/lstm_897/while/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_299/lstm_897/while/lstm_cell_771/mul_2Mul9sequential_299/lstm_897/while/lstm_cell_771/Sigmoid_2:y:0@sequential_299/lstm_897/while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_299/lstm_897/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_299_lstm_897_while_placeholder_1)sequential_299_lstm_897_while_placeholder5sequential_299/lstm_897/while/lstm_cell_771/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_299/lstm_897/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_299/lstm_897/while/addAddV2)sequential_299_lstm_897_while_placeholder,sequential_299/lstm_897/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_299/lstm_897/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_299/lstm_897/while/add_1AddV2Hsequential_299_lstm_897_while_sequential_299_lstm_897_while_loop_counter.sequential_299/lstm_897/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_299/lstm_897/while/IdentityIdentity'sequential_299/lstm_897/while/add_1:z:0#^sequential_299/lstm_897/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_897/while/Identity_1IdentityNsequential_299_lstm_897_while_sequential_299_lstm_897_while_maximum_iterations#^sequential_299/lstm_897/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_897/while/Identity_2Identity%sequential_299/lstm_897/while/add:z:0#^sequential_299/lstm_897/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_897/while/Identity_3IdentityRsequential_299/lstm_897/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_299/lstm_897/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_897/while/Identity_4Identity5sequential_299/lstm_897/while/lstm_cell_771/mul_2:z:0#^sequential_299/lstm_897/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_299/lstm_897/while/Identity_5Identity5sequential_299/lstm_897/while/lstm_cell_771/add_1:z:0#^sequential_299/lstm_897/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_299/lstm_897/while/NoOpNoOpC^sequential_299/lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOpB^sequential_299/lstm_897/while/lstm_cell_771/MatMul/ReadVariableOpD^sequential_299/lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_299_lstm_897_while_identity/sequential_299/lstm_897/while/Identity:output:0"]
(sequential_299_lstm_897_while_identity_11sequential_299/lstm_897/while/Identity_1:output:0"]
(sequential_299_lstm_897_while_identity_21sequential_299/lstm_897/while/Identity_2:output:0"]
(sequential_299_lstm_897_while_identity_31sequential_299/lstm_897/while/Identity_3:output:0"]
(sequential_299_lstm_897_while_identity_41sequential_299/lstm_897/while/Identity_4:output:0"]
(sequential_299_lstm_897_while_identity_51sequential_299/lstm_897/while/Identity_5:output:0"?
Ksequential_299_lstm_897_while_lstm_cell_771_biasadd_readvariableop_resourceMsequential_299_lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource_0"?
Lsequential_299_lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resourceNsequential_299_lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource_0"?
Jsequential_299_lstm_897_while_lstm_cell_771_matmul_readvariableop_resourceLsequential_299_lstm_897_while_lstm_cell_771_matmul_readvariableop_resource_0"?
Esequential_299_lstm_897_while_sequential_299_lstm_897_strided_slice_1Gsequential_299_lstm_897_while_sequential_299_lstm_897_strided_slice_1_0"?
?sequential_299_lstm_897_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_897_tensorarrayunstack_tensorlistfromtensor?sequential_299_lstm_897_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_897_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_299/lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOpBsequential_299/lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp2?
Asequential_299/lstm_897/while/lstm_cell_771/MatMul/ReadVariableOpAsequential_299/lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp2?
Csequential_299/lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOpCsequential_299/lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4676236

inputs>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4676152*
condR
while_cond_4676151*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4675650

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
?
*__inference_lstm_898_layer_call_fn_4678554

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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4676086s
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

lstm_899_while_body_4677388.
*lstm_899_while_lstm_899_while_loop_counter4
0lstm_899_while_lstm_899_while_maximum_iterations
lstm_899_while_placeholder 
lstm_899_while_placeholder_1 
lstm_899_while_placeholder_2 
lstm_899_while_placeholder_3-
)lstm_899_while_lstm_899_strided_slice_1_0i
elstm_899_while_tensorarrayv2read_tensorlistgetitem_lstm_899_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_899_while_lstm_cell_773_matmul_readvariableop_resource_0:2(Q
?lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(L
>lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource_0:(
lstm_899_while_identity
lstm_899_while_identity_1
lstm_899_while_identity_2
lstm_899_while_identity_3
lstm_899_while_identity_4
lstm_899_while_identity_5+
'lstm_899_while_lstm_899_strided_slice_1g
clstm_899_while_tensorarrayv2read_tensorlistgetitem_lstm_899_tensorarrayunstack_tensorlistfromtensorM
;lstm_899_while_lstm_cell_773_matmul_readvariableop_resource:2(O
=lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource:
(J
<lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource:(??3lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp?2lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp?4lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp?
@lstm_899/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_899/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_899_while_tensorarrayv2read_tensorlistgetitem_lstm_899_tensorarrayunstack_tensorlistfromtensor_0lstm_899_while_placeholderIlstm_899/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_899/while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp=lstm_899_while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_899/while/lstm_cell_773/MatMulMatMul9lstm_899/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp?lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_899/while/lstm_cell_773/MatMul_1MatMullstm_899_while_placeholder_2<lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_899/while/lstm_cell_773/addAddV2-lstm_899/while/lstm_cell_773/MatMul:product:0/lstm_899/while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp>lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_899/while/lstm_cell_773/BiasAddBiasAdd$lstm_899/while/lstm_cell_773/add:z:0;lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_899/while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_899/while/lstm_cell_773/splitSplit5lstm_899/while/lstm_cell_773/split/split_dim:output:0-lstm_899/while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_899/while/lstm_cell_773/SigmoidSigmoid+lstm_899/while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_899/while/lstm_cell_773/Sigmoid_1Sigmoid+lstm_899/while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_899/while/lstm_cell_773/mulMul*lstm_899/while/lstm_cell_773/Sigmoid_1:y:0lstm_899_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_899/while/lstm_cell_773/ReluRelu+lstm_899/while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_899/while/lstm_cell_773/mul_1Mul(lstm_899/while/lstm_cell_773/Sigmoid:y:0/lstm_899/while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_899/while/lstm_cell_773/add_1AddV2$lstm_899/while/lstm_cell_773/mul:z:0&lstm_899/while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_899/while/lstm_cell_773/Sigmoid_2Sigmoid+lstm_899/while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_899/while/lstm_cell_773/Relu_1Relu&lstm_899/while/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_899/while/lstm_cell_773/mul_2Mul*lstm_899/while/lstm_cell_773/Sigmoid_2:y:01lstm_899/while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_899/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_899_while_placeholder_1lstm_899_while_placeholder&lstm_899/while/lstm_cell_773/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_899/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_899/while/addAddV2lstm_899_while_placeholderlstm_899/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_899/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_899/while/add_1AddV2*lstm_899_while_lstm_899_while_loop_counterlstm_899/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_899/while/IdentityIdentitylstm_899/while/add_1:z:0^lstm_899/while/NoOp*
T0*
_output_shapes
: ?
lstm_899/while/Identity_1Identity0lstm_899_while_lstm_899_while_maximum_iterations^lstm_899/while/NoOp*
T0*
_output_shapes
: t
lstm_899/while/Identity_2Identitylstm_899/while/add:z:0^lstm_899/while/NoOp*
T0*
_output_shapes
: ?
lstm_899/while/Identity_3IdentityClstm_899/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_899/while/NoOp*
T0*
_output_shapes
: ?
lstm_899/while/Identity_4Identity&lstm_899/while/lstm_cell_773/mul_2:z:0^lstm_899/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_899/while/Identity_5Identity&lstm_899/while/lstm_cell_773/add_1:z:0^lstm_899/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_899/while/NoOpNoOp4^lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp3^lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp5^lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_899_while_identity lstm_899/while/Identity:output:0"?
lstm_899_while_identity_1"lstm_899/while/Identity_1:output:0"?
lstm_899_while_identity_2"lstm_899/while/Identity_2:output:0"?
lstm_899_while_identity_3"lstm_899/while/Identity_3:output:0"?
lstm_899_while_identity_4"lstm_899/while/Identity_4:output:0"?
lstm_899_while_identity_5"lstm_899/while/Identity_5:output:0"T
'lstm_899_while_lstm_899_strided_slice_1)lstm_899_while_lstm_899_strided_slice_1_0"~
<lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource>lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource_0"?
=lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource?lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource_0"|
;lstm_899_while_lstm_cell_773_matmul_readvariableop_resource=lstm_899_while_lstm_cell_773_matmul_readvariableop_resource_0"?
clstm_899_while_tensorarrayv2read_tensorlistgetitem_lstm_899_tensorarrayunstack_tensorlistfromtensorelstm_899_while_tensorarrayv2read_tensorlistgetitem_lstm_899_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp3lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp2h
2lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp2lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp2l
4lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp4lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4676697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4676697___redundant_placeholder05
1while_while_cond_4676697___redundant_placeholder15
1while_while_cond_4676697___redundant_placeholder25
1while_while_cond_4676697___redundant_placeholder3
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
while_cond_4678150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4678150___redundant_placeholder05
1while_while_cond_4678150___redundant_placeholder15
1while_while_cond_4678150___redundant_placeholder25
1while_while_cond_4678150___redundant_placeholder3
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
while_cond_4675517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4675517___redundant_placeholder05
1while_while_cond_4675517___redundant_placeholder15
1while_while_cond_4675517___redundant_placeholder25
1while_while_cond_4675517___redundant_placeholder3
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
while_cond_4674817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4674817___redundant_placeholder05
1while_while_cond_4674817___redundant_placeholder15
1while_while_cond_4674817___redundant_placeholder25
1while_while_cond_4674817___redundant_placeholder3
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
while_body_4679240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_771_layer_call_fn_4679789

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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4674804o
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

?
lstm_898_while_cond_4677675.
*lstm_898_while_lstm_898_while_loop_counter4
0lstm_898_while_lstm_898_while_maximum_iterations
lstm_898_while_placeholder 
lstm_898_while_placeholder_1 
lstm_898_while_placeholder_2 
lstm_898_while_placeholder_30
,lstm_898_while_less_lstm_898_strided_slice_1G
Clstm_898_while_lstm_898_while_cond_4677675___redundant_placeholder0G
Clstm_898_while_lstm_898_while_cond_4677675___redundant_placeholder1G
Clstm_898_while_lstm_898_while_cond_4677675___redundant_placeholder2G
Clstm_898_while_lstm_898_while_cond_4677675___redundant_placeholder3
lstm_898_while_identity
?
lstm_898/while/LessLesslstm_898_while_placeholder,lstm_898_while_less_lstm_898_strided_slice_1*
T0*
_output_shapes
: ]
lstm_898/while/IdentityIdentitylstm_898/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_898_while_identity lstm_898/while/Identity:output:0*(
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679467
inputs_0>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4679383*
condR
while_cond_4679382*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_4676368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4675428

inputs(
lstm_cell_772_4675346:	d?(
lstm_cell_772_4675348:	2?$
lstm_cell_772_4675350:	?
identity??%lstm_cell_772/StatefulPartitionedCall?while;
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
%lstm_cell_772/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_772_4675346lstm_cell_772_4675348lstm_cell_772_4675350*
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4675300n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_772_4675346lstm_cell_772_4675348lstm_cell_772_4675350*
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
while_body_4675359*
condR
while_cond_4675358*K
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
NoOpNoOp&^lstm_cell_772/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_772/StatefulPartitionedCall%lstm_cell_772/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_772_layer_call_fn_4679904

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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4675300o
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
?C
?

lstm_897_while_body_4677537.
*lstm_897_while_lstm_897_while_loop_counter4
0lstm_897_while_lstm_897_while_maximum_iterations
lstm_897_while_placeholder 
lstm_897_while_placeholder_1 
lstm_897_while_placeholder_2 
lstm_897_while_placeholder_3-
)lstm_897_while_lstm_897_strided_slice_1_0i
elstm_897_while_tensorarrayv2read_tensorlistgetitem_lstm_897_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_897_while_lstm_cell_771_matmul_readvariableop_resource_0:	?R
?lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?M
>lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
lstm_897_while_identity
lstm_897_while_identity_1
lstm_897_while_identity_2
lstm_897_while_identity_3
lstm_897_while_identity_4
lstm_897_while_identity_5+
'lstm_897_while_lstm_897_strided_slice_1g
clstm_897_while_tensorarrayv2read_tensorlistgetitem_lstm_897_tensorarrayunstack_tensorlistfromtensorN
;lstm_897_while_lstm_cell_771_matmul_readvariableop_resource:	?P
=lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource:	d?K
<lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource:	???3lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp?2lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp?4lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp?
@lstm_897/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_897/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_897_while_tensorarrayv2read_tensorlistgetitem_lstm_897_tensorarrayunstack_tensorlistfromtensor_0lstm_897_while_placeholderIlstm_897/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_897/while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp=lstm_897_while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_897/while/lstm_cell_771/MatMulMatMul9lstm_897/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp?lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_897/while/lstm_cell_771/MatMul_1MatMullstm_897_while_placeholder_2<lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_897/while/lstm_cell_771/addAddV2-lstm_897/while/lstm_cell_771/MatMul:product:0/lstm_897/while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp>lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_897/while/lstm_cell_771/BiasAddBiasAdd$lstm_897/while/lstm_cell_771/add:z:0;lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_897/while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_897/while/lstm_cell_771/splitSplit5lstm_897/while/lstm_cell_771/split/split_dim:output:0-lstm_897/while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_897/while/lstm_cell_771/SigmoidSigmoid+lstm_897/while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_897/while/lstm_cell_771/Sigmoid_1Sigmoid+lstm_897/while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_897/while/lstm_cell_771/mulMul*lstm_897/while/lstm_cell_771/Sigmoid_1:y:0lstm_897_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_897/while/lstm_cell_771/ReluRelu+lstm_897/while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_897/while/lstm_cell_771/mul_1Mul(lstm_897/while/lstm_cell_771/Sigmoid:y:0/lstm_897/while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_897/while/lstm_cell_771/add_1AddV2$lstm_897/while/lstm_cell_771/mul:z:0&lstm_897/while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_897/while/lstm_cell_771/Sigmoid_2Sigmoid+lstm_897/while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_897/while/lstm_cell_771/Relu_1Relu&lstm_897/while/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_897/while/lstm_cell_771/mul_2Mul*lstm_897/while/lstm_cell_771/Sigmoid_2:y:01lstm_897/while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_897/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_897_while_placeholder_1lstm_897_while_placeholder&lstm_897/while/lstm_cell_771/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_897/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_897/while/addAddV2lstm_897_while_placeholderlstm_897/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_897/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_897/while/add_1AddV2*lstm_897_while_lstm_897_while_loop_counterlstm_897/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_897/while/IdentityIdentitylstm_897/while/add_1:z:0^lstm_897/while/NoOp*
T0*
_output_shapes
: ?
lstm_897/while/Identity_1Identity0lstm_897_while_lstm_897_while_maximum_iterations^lstm_897/while/NoOp*
T0*
_output_shapes
: t
lstm_897/while/Identity_2Identitylstm_897/while/add:z:0^lstm_897/while/NoOp*
T0*
_output_shapes
: ?
lstm_897/while/Identity_3IdentityClstm_897/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_897/while/NoOp*
T0*
_output_shapes
: ?
lstm_897/while/Identity_4Identity&lstm_897/while/lstm_cell_771/mul_2:z:0^lstm_897/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_897/while/Identity_5Identity&lstm_897/while/lstm_cell_771/add_1:z:0^lstm_897/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_897/while/NoOpNoOp4^lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp3^lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp5^lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_897_while_identity lstm_897/while/Identity:output:0"?
lstm_897_while_identity_1"lstm_897/while/Identity_1:output:0"?
lstm_897_while_identity_2"lstm_897/while/Identity_2:output:0"?
lstm_897_while_identity_3"lstm_897/while/Identity_3:output:0"?
lstm_897_while_identity_4"lstm_897/while/Identity_4:output:0"?
lstm_897_while_identity_5"lstm_897/while/Identity_5:output:0"T
'lstm_897_while_lstm_897_strided_slice_1)lstm_897_while_lstm_897_strided_slice_1_0"~
<lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource>lstm_897_while_lstm_cell_771_biasadd_readvariableop_resource_0"?
=lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource?lstm_897_while_lstm_cell_771_matmul_1_readvariableop_resource_0"|
;lstm_897_while_lstm_cell_771_matmul_readvariableop_resource=lstm_897_while_lstm_cell_771_matmul_readvariableop_resource_0"?
clstm_897_while_tensorarrayv2read_tensorlistgetitem_lstm_897_tensorarrayunstack_tensorlistfromtensorelstm_897_while_tensorarrayv2read_tensorlistgetitem_lstm_897_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp3lstm_897/while/lstm_cell_771/BiasAdd/ReadVariableOp2h
2lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp2lstm_897/while/lstm_cell_771/MatMul/ReadVariableOp2l
4lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp4lstm_897/while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4675359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_772_4675383_0:	d?0
while_lstm_cell_772_4675385_0:	2?,
while_lstm_cell_772_4675387_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_772_4675383:	d?.
while_lstm_cell_772_4675385:	2?*
while_lstm_cell_772_4675387:	???+while/lstm_cell_772/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_772/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_772_4675383_0while_lstm_cell_772_4675385_0while_lstm_cell_772_4675387_0*
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4675300?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_772/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_772/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_772/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_772/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_772_4675383while_lstm_cell_772_4675383_0"<
while_lstm_cell_772_4675385while_lstm_cell_772_4675385_0"<
while_lstm_cell_772_4675387while_lstm_cell_772_4675387_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_772/StatefulPartitionedCall+while/lstm_cell_772/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4678624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4676151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4676151___redundant_placeholder05
1while_while_cond_4676151___redundant_placeholder15
1while_while_cond_4676151___redundant_placeholder25
1while_while_cond_4676151___redundant_placeholder3
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4675936

inputs?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4675852*
condR
while_cond_4675851*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_897_layer_call_and_return_conditional_losses_4676782

inputs?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4676698*
condR
while_cond_4676697*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4674804

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
*__inference_lstm_899_layer_call_fn_4679148
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4675587o
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
?8
?
while_body_4679669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676261

inputs#
lstm_897_4675937:	?#
lstm_897_4675939:	d?
lstm_897_4675941:	?#
lstm_898_4676087:	d?#
lstm_898_4676089:	2?
lstm_898_4676091:	?"
lstm_899_4676237:2("
lstm_899_4676239:
(
lstm_899_4676241:(#
dense_299_4676255:

dense_299_4676257:
identity??!dense_299/StatefulPartitionedCall? lstm_897/StatefulPartitionedCall? lstm_898/StatefulPartitionedCall? lstm_899/StatefulPartitionedCall?
 lstm_897/StatefulPartitionedCallStatefulPartitionedCallinputslstm_897_4675937lstm_897_4675939lstm_897_4675941*
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4675936?
 lstm_898/StatefulPartitionedCallStatefulPartitionedCall)lstm_897/StatefulPartitionedCall:output:0lstm_898_4676087lstm_898_4676089lstm_898_4676091*
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4676086?
 lstm_899/StatefulPartitionedCallStatefulPartitionedCall)lstm_898/StatefulPartitionedCall:output:0lstm_899_4676237lstm_899_4676239lstm_899_4676241*
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4676236?
!dense_299/StatefulPartitionedCallStatefulPartitionedCall)lstm_899/StatefulPartitionedCall:output:0dense_299_4676255dense_299_4676257*
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
F__inference_dense_299_layer_call_and_return_conditional_losses_4676254y
IdentityIdentity*dense_299/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_299/StatefulPartitionedCall!^lstm_897/StatefulPartitionedCall!^lstm_898/StatefulPartitionedCall!^lstm_899/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_299/StatefulPartitionedCall!dense_299/StatefulPartitionedCall2D
 lstm_897/StatefulPartitionedCall lstm_897/StatefulPartitionedCall2D
 lstm_898/StatefulPartitionedCall lstm_898/StatefulPartitionedCall2D
 lstm_899/StatefulPartitionedCall lstm_899/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4679239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4679239___redundant_placeholder05
1while_while_cond_4679239___redundant_placeholder15
1while_while_cond_4679239___redundant_placeholder25
1while_while_cond_4679239___redundant_placeholder3
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
while_body_4678151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_299_lstm_899_while_body_4674647L
Hsequential_299_lstm_899_while_sequential_299_lstm_899_while_loop_counterR
Nsequential_299_lstm_899_while_sequential_299_lstm_899_while_maximum_iterations-
)sequential_299_lstm_899_while_placeholder/
+sequential_299_lstm_899_while_placeholder_1/
+sequential_299_lstm_899_while_placeholder_2/
+sequential_299_lstm_899_while_placeholder_3K
Gsequential_299_lstm_899_while_sequential_299_lstm_899_strided_slice_1_0?
?sequential_299_lstm_899_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_899_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_299_lstm_899_while_lstm_cell_773_matmul_readvariableop_resource_0:2(`
Nsequential_299_lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource_0:
([
Msequential_299_lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource_0:(*
&sequential_299_lstm_899_while_identity,
(sequential_299_lstm_899_while_identity_1,
(sequential_299_lstm_899_while_identity_2,
(sequential_299_lstm_899_while_identity_3,
(sequential_299_lstm_899_while_identity_4,
(sequential_299_lstm_899_while_identity_5I
Esequential_299_lstm_899_while_sequential_299_lstm_899_strided_slice_1?
?sequential_299_lstm_899_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_899_tensorarrayunstack_tensorlistfromtensor\
Jsequential_299_lstm_899_while_lstm_cell_773_matmul_readvariableop_resource:2(^
Lsequential_299_lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource:
(Y
Ksequential_299_lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource:(??Bsequential_299/lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp?Asequential_299/lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp?Csequential_299/lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp?
Osequential_299/lstm_899/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_299/lstm_899/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_299_lstm_899_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_899_tensorarrayunstack_tensorlistfromtensor_0)sequential_299_lstm_899_while_placeholderXsequential_299/lstm_899/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_299/lstm_899/while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOpLsequential_299_lstm_899_while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_299/lstm_899/while/lstm_cell_773/MatMulMatMulHsequential_299/lstm_899/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_299/lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_299/lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOpNsequential_299_lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_299/lstm_899/while/lstm_cell_773/MatMul_1MatMul+sequential_299_lstm_899_while_placeholder_2Ksequential_299/lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_299/lstm_899/while/lstm_cell_773/addAddV2<sequential_299/lstm_899/while/lstm_cell_773/MatMul:product:0>sequential_299/lstm_899/while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_299/lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOpMsequential_299_lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_299/lstm_899/while/lstm_cell_773/BiasAddBiasAdd3sequential_299/lstm_899/while/lstm_cell_773/add:z:0Jsequential_299/lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_299/lstm_899/while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_299/lstm_899/while/lstm_cell_773/splitSplitDsequential_299/lstm_899/while/lstm_cell_773/split/split_dim:output:0<sequential_299/lstm_899/while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_299/lstm_899/while/lstm_cell_773/SigmoidSigmoid:sequential_299/lstm_899/while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_299/lstm_899/while/lstm_cell_773/Sigmoid_1Sigmoid:sequential_299/lstm_899/while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_299/lstm_899/while/lstm_cell_773/mulMul9sequential_299/lstm_899/while/lstm_cell_773/Sigmoid_1:y:0+sequential_299_lstm_899_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_299/lstm_899/while/lstm_cell_773/ReluRelu:sequential_299/lstm_899/while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_299/lstm_899/while/lstm_cell_773/mul_1Mul7sequential_299/lstm_899/while/lstm_cell_773/Sigmoid:y:0>sequential_299/lstm_899/while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_299/lstm_899/while/lstm_cell_773/add_1AddV23sequential_299/lstm_899/while/lstm_cell_773/mul:z:05sequential_299/lstm_899/while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_299/lstm_899/while/lstm_cell_773/Sigmoid_2Sigmoid:sequential_299/lstm_899/while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_299/lstm_899/while/lstm_cell_773/Relu_1Relu5sequential_299/lstm_899/while/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_299/lstm_899/while/lstm_cell_773/mul_2Mul9sequential_299/lstm_899/while/lstm_cell_773/Sigmoid_2:y:0@sequential_299/lstm_899/while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_299/lstm_899/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_299_lstm_899_while_placeholder_1)sequential_299_lstm_899_while_placeholder5sequential_299/lstm_899/while/lstm_cell_773/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_299/lstm_899/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_299/lstm_899/while/addAddV2)sequential_299_lstm_899_while_placeholder,sequential_299/lstm_899/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_299/lstm_899/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_299/lstm_899/while/add_1AddV2Hsequential_299_lstm_899_while_sequential_299_lstm_899_while_loop_counter.sequential_299/lstm_899/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_299/lstm_899/while/IdentityIdentity'sequential_299/lstm_899/while/add_1:z:0#^sequential_299/lstm_899/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_899/while/Identity_1IdentityNsequential_299_lstm_899_while_sequential_299_lstm_899_while_maximum_iterations#^sequential_299/lstm_899/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_899/while/Identity_2Identity%sequential_299/lstm_899/while/add:z:0#^sequential_299/lstm_899/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_899/while/Identity_3IdentityRsequential_299/lstm_899/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_299/lstm_899/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_899/while/Identity_4Identity5sequential_299/lstm_899/while/lstm_cell_773/mul_2:z:0#^sequential_299/lstm_899/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_299/lstm_899/while/Identity_5Identity5sequential_299/lstm_899/while/lstm_cell_773/add_1:z:0#^sequential_299/lstm_899/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_299/lstm_899/while/NoOpNoOpC^sequential_299/lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOpB^sequential_299/lstm_899/while/lstm_cell_773/MatMul/ReadVariableOpD^sequential_299/lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_299_lstm_899_while_identity/sequential_299/lstm_899/while/Identity:output:0"]
(sequential_299_lstm_899_while_identity_11sequential_299/lstm_899/while/Identity_1:output:0"]
(sequential_299_lstm_899_while_identity_21sequential_299/lstm_899/while/Identity_2:output:0"]
(sequential_299_lstm_899_while_identity_31sequential_299/lstm_899/while/Identity_3:output:0"]
(sequential_299_lstm_899_while_identity_41sequential_299/lstm_899/while/Identity_4:output:0"]
(sequential_299_lstm_899_while_identity_51sequential_299/lstm_899/while/Identity_5:output:0"?
Ksequential_299_lstm_899_while_lstm_cell_773_biasadd_readvariableop_resourceMsequential_299_lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource_0"?
Lsequential_299_lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resourceNsequential_299_lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource_0"?
Jsequential_299_lstm_899_while_lstm_cell_773_matmul_readvariableop_resourceLsequential_299_lstm_899_while_lstm_cell_773_matmul_readvariableop_resource_0"?
Esequential_299_lstm_899_while_sequential_299_lstm_899_strided_slice_1Gsequential_299_lstm_899_while_sequential_299_lstm_899_strided_slice_1_0"?
?sequential_299_lstm_899_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_899_tensorarrayunstack_tensorlistfromtensor?sequential_299_lstm_899_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_899_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_299/lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOpBsequential_299/lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp2?
Asequential_299/lstm_899/while/lstm_cell_773/MatMul/ReadVariableOpAsequential_299/lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp2?
Csequential_299/lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOpCsequential_299/lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678092
inputs_0?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4678008*
condR
while_cond_4678007*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_899_while_body_4677815.
*lstm_899_while_lstm_899_while_loop_counter4
0lstm_899_while_lstm_899_while_maximum_iterations
lstm_899_while_placeholder 
lstm_899_while_placeholder_1 
lstm_899_while_placeholder_2 
lstm_899_while_placeholder_3-
)lstm_899_while_lstm_899_strided_slice_1_0i
elstm_899_while_tensorarrayv2read_tensorlistgetitem_lstm_899_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_899_while_lstm_cell_773_matmul_readvariableop_resource_0:2(Q
?lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(L
>lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource_0:(
lstm_899_while_identity
lstm_899_while_identity_1
lstm_899_while_identity_2
lstm_899_while_identity_3
lstm_899_while_identity_4
lstm_899_while_identity_5+
'lstm_899_while_lstm_899_strided_slice_1g
clstm_899_while_tensorarrayv2read_tensorlistgetitem_lstm_899_tensorarrayunstack_tensorlistfromtensorM
;lstm_899_while_lstm_cell_773_matmul_readvariableop_resource:2(O
=lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource:
(J
<lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource:(??3lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp?2lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp?4lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp?
@lstm_899/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_899/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_899_while_tensorarrayv2read_tensorlistgetitem_lstm_899_tensorarrayunstack_tensorlistfromtensor_0lstm_899_while_placeholderIlstm_899/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_899/while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp=lstm_899_while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_899/while/lstm_cell_773/MatMulMatMul9lstm_899/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp?lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_899/while/lstm_cell_773/MatMul_1MatMullstm_899_while_placeholder_2<lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_899/while/lstm_cell_773/addAddV2-lstm_899/while/lstm_cell_773/MatMul:product:0/lstm_899/while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp>lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_899/while/lstm_cell_773/BiasAddBiasAdd$lstm_899/while/lstm_cell_773/add:z:0;lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_899/while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_899/while/lstm_cell_773/splitSplit5lstm_899/while/lstm_cell_773/split/split_dim:output:0-lstm_899/while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_899/while/lstm_cell_773/SigmoidSigmoid+lstm_899/while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_899/while/lstm_cell_773/Sigmoid_1Sigmoid+lstm_899/while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_899/while/lstm_cell_773/mulMul*lstm_899/while/lstm_cell_773/Sigmoid_1:y:0lstm_899_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_899/while/lstm_cell_773/ReluRelu+lstm_899/while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_899/while/lstm_cell_773/mul_1Mul(lstm_899/while/lstm_cell_773/Sigmoid:y:0/lstm_899/while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_899/while/lstm_cell_773/add_1AddV2$lstm_899/while/lstm_cell_773/mul:z:0&lstm_899/while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_899/while/lstm_cell_773/Sigmoid_2Sigmoid+lstm_899/while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_899/while/lstm_cell_773/Relu_1Relu&lstm_899/while/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_899/while/lstm_cell_773/mul_2Mul*lstm_899/while/lstm_cell_773/Sigmoid_2:y:01lstm_899/while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_899/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_899_while_placeholder_1lstm_899_while_placeholder&lstm_899/while/lstm_cell_773/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_899/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_899/while/addAddV2lstm_899_while_placeholderlstm_899/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_899/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_899/while/add_1AddV2*lstm_899_while_lstm_899_while_loop_counterlstm_899/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_899/while/IdentityIdentitylstm_899/while/add_1:z:0^lstm_899/while/NoOp*
T0*
_output_shapes
: ?
lstm_899/while/Identity_1Identity0lstm_899_while_lstm_899_while_maximum_iterations^lstm_899/while/NoOp*
T0*
_output_shapes
: t
lstm_899/while/Identity_2Identitylstm_899/while/add:z:0^lstm_899/while/NoOp*
T0*
_output_shapes
: ?
lstm_899/while/Identity_3IdentityClstm_899/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_899/while/NoOp*
T0*
_output_shapes
: ?
lstm_899/while/Identity_4Identity&lstm_899/while/lstm_cell_773/mul_2:z:0^lstm_899/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_899/while/Identity_5Identity&lstm_899/while/lstm_cell_773/add_1:z:0^lstm_899/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_899/while/NoOpNoOp4^lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp3^lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp5^lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_899_while_identity lstm_899/while/Identity:output:0"?
lstm_899_while_identity_1"lstm_899/while/Identity_1:output:0"?
lstm_899_while_identity_2"lstm_899/while/Identity_2:output:0"?
lstm_899_while_identity_3"lstm_899/while/Identity_3:output:0"?
lstm_899_while_identity_4"lstm_899/while/Identity_4:output:0"?
lstm_899_while_identity_5"lstm_899/while/Identity_5:output:0"T
'lstm_899_while_lstm_899_strided_slice_1)lstm_899_while_lstm_899_strided_slice_1_0"~
<lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource>lstm_899_while_lstm_cell_773_biasadd_readvariableop_resource_0"?
=lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource?lstm_899_while_lstm_cell_773_matmul_1_readvariableop_resource_0"|
;lstm_899_while_lstm_cell_773_matmul_readvariableop_resource=lstm_899_while_lstm_cell_773_matmul_readvariableop_resource_0"?
clstm_899_while_tensorarrayv2read_tensorlistgetitem_lstm_899_tensorarrayunstack_tensorlistfromtensorelstm_899_while_tensorarrayv2read_tensorlistgetitem_lstm_899_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp3lstm_899/while/lstm_cell_773/BiasAdd/ReadVariableOp2h
2lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp2lstm_899/while/lstm_cell_773/MatMul/ReadVariableOp2l
4lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp4lstm_899/while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4678008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
+__inference_dense_299_layer_call_fn_4679762

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
F__inference_dense_299_layer_call_and_return_conditional_losses_4676254o
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
?
?
/__inference_lstm_cell_773_layer_call_fn_4679985

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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4675504o
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
while_body_4675852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4676533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4678909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4678909___redundant_placeholder05
1while_while_cond_4678909___redundant_placeholder15
1while_while_cond_4678909___redundant_placeholder25
1while_while_cond_4678909___redundant_placeholder3
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4674887

inputs(
lstm_cell_771_4674805:	?(
lstm_cell_771_4674807:	d?$
lstm_cell_771_4674809:	?
identity??%lstm_cell_771/StatefulPartitionedCall?while;
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
%lstm_cell_771/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_771_4674805lstm_cell_771_4674807lstm_cell_771_4674809*
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4674804n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_771_4674805lstm_cell_771_4674807lstm_cell_771_4674809*
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
while_body_4674818*
condR
while_cond_4674817*K
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
NoOpNoOp&^lstm_cell_771/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_771/StatefulPartitionedCall%lstm_cell_771/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678378

inputs?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4678294*
condR
while_cond_4678293*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_898_layer_call_fn_4678532
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4675237|
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
while_body_4679383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4676617

inputs?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4676533*
condR
while_cond_4676532*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_4675009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_771_4675033_0:	?0
while_lstm_cell_771_4675035_0:	d?,
while_lstm_cell_771_4675037_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_771_4675033:	?.
while_lstm_cell_771_4675035:	d?*
while_lstm_cell_771_4675037:	???+while/lstm_cell_771/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_771/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_771_4675033_0while_lstm_cell_771_4675035_0while_lstm_cell_771_4675037_0*
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4674950?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_771/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_771/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_771/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_771/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_771_4675033while_lstm_cell_771_4675033_0"<
while_lstm_cell_771_4675035while_lstm_cell_771_4675035_0"<
while_lstm_cell_771_4675037while_lstm_cell_771_4675037_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_771/StatefulPartitionedCall+while/lstm_cell_771/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4676152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_771_layer_call_fn_4679806

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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4674950o
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
?
/__inference_lstm_cell_773_layer_call_fn_4680002

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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4675650o
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
?
?
*__inference_lstm_899_layer_call_fn_4679170

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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4676236o
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
while_body_4679526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?C
?

lstm_898_while_body_4677249.
*lstm_898_while_lstm_898_while_loop_counter4
0lstm_898_while_lstm_898_while_maximum_iterations
lstm_898_while_placeholder 
lstm_898_while_placeholder_1 
lstm_898_while_placeholder_2 
lstm_898_while_placeholder_3-
)lstm_898_while_lstm_898_strided_slice_1_0i
elstm_898_while_tensorarrayv2read_tensorlistgetitem_lstm_898_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_898_while_lstm_cell_772_matmul_readvariableop_resource_0:	d?R
?lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?M
>lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
lstm_898_while_identity
lstm_898_while_identity_1
lstm_898_while_identity_2
lstm_898_while_identity_3
lstm_898_while_identity_4
lstm_898_while_identity_5+
'lstm_898_while_lstm_898_strided_slice_1g
clstm_898_while_tensorarrayv2read_tensorlistgetitem_lstm_898_tensorarrayunstack_tensorlistfromtensorN
;lstm_898_while_lstm_cell_772_matmul_readvariableop_resource:	d?P
=lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource:	2?K
<lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource:	???3lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp?2lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp?4lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp?
@lstm_898/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_898/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_898_while_tensorarrayv2read_tensorlistgetitem_lstm_898_tensorarrayunstack_tensorlistfromtensor_0lstm_898_while_placeholderIlstm_898/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_898/while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp=lstm_898_while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_898/while/lstm_cell_772/MatMulMatMul9lstm_898/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp?lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_898/while/lstm_cell_772/MatMul_1MatMullstm_898_while_placeholder_2<lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_898/while/lstm_cell_772/addAddV2-lstm_898/while/lstm_cell_772/MatMul:product:0/lstm_898/while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp>lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_898/while/lstm_cell_772/BiasAddBiasAdd$lstm_898/while/lstm_cell_772/add:z:0;lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_898/while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_898/while/lstm_cell_772/splitSplit5lstm_898/while/lstm_cell_772/split/split_dim:output:0-lstm_898/while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_898/while/lstm_cell_772/SigmoidSigmoid+lstm_898/while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_898/while/lstm_cell_772/Sigmoid_1Sigmoid+lstm_898/while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_898/while/lstm_cell_772/mulMul*lstm_898/while/lstm_cell_772/Sigmoid_1:y:0lstm_898_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_898/while/lstm_cell_772/ReluRelu+lstm_898/while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_898/while/lstm_cell_772/mul_1Mul(lstm_898/while/lstm_cell_772/Sigmoid:y:0/lstm_898/while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_898/while/lstm_cell_772/add_1AddV2$lstm_898/while/lstm_cell_772/mul:z:0&lstm_898/while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_898/while/lstm_cell_772/Sigmoid_2Sigmoid+lstm_898/while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_898/while/lstm_cell_772/Relu_1Relu&lstm_898/while/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_898/while/lstm_cell_772/mul_2Mul*lstm_898/while/lstm_cell_772/Sigmoid_2:y:01lstm_898/while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_898/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_898_while_placeholder_1lstm_898_while_placeholder&lstm_898/while/lstm_cell_772/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_898/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_898/while/addAddV2lstm_898_while_placeholderlstm_898/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_898/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_898/while/add_1AddV2*lstm_898_while_lstm_898_while_loop_counterlstm_898/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_898/while/IdentityIdentitylstm_898/while/add_1:z:0^lstm_898/while/NoOp*
T0*
_output_shapes
: ?
lstm_898/while/Identity_1Identity0lstm_898_while_lstm_898_while_maximum_iterations^lstm_898/while/NoOp*
T0*
_output_shapes
: t
lstm_898/while/Identity_2Identitylstm_898/while/add:z:0^lstm_898/while/NoOp*
T0*
_output_shapes
: ?
lstm_898/while/Identity_3IdentityClstm_898/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_898/while/NoOp*
T0*
_output_shapes
: ?
lstm_898/while/Identity_4Identity&lstm_898/while/lstm_cell_772/mul_2:z:0^lstm_898/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_898/while/Identity_5Identity&lstm_898/while/lstm_cell_772/add_1:z:0^lstm_898/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_898/while/NoOpNoOp4^lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp3^lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp5^lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_898_while_identity lstm_898/while/Identity:output:0"?
lstm_898_while_identity_1"lstm_898/while/Identity_1:output:0"?
lstm_898_while_identity_2"lstm_898/while/Identity_2:output:0"?
lstm_898_while_identity_3"lstm_898/while/Identity_3:output:0"?
lstm_898_while_identity_4"lstm_898/while/Identity_4:output:0"?
lstm_898_while_identity_5"lstm_898/while/Identity_5:output:0"T
'lstm_898_while_lstm_898_strided_slice_1)lstm_898_while_lstm_898_strided_slice_1_0"~
<lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource>lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource_0"?
=lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource?lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource_0"|
;lstm_898_while_lstm_cell_772_matmul_readvariableop_resource=lstm_898_while_lstm_cell_772_matmul_readvariableop_resource_0"?
clstm_898_while_tensorarrayv2read_tensorlistgetitem_lstm_898_tensorarrayunstack_tensorlistfromtensorelstm_898_while_tensorarrayv2read_tensorlistgetitem_lstm_898_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp3lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp2h
2lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp2lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp2l
4lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp4lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_4680339
file_prefix3
!assignvariableop_dense_299_kernel:
/
!assignvariableop_1_dense_299_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_897_lstm_cell_897_kernel:	?M
:assignvariableop_8_lstm_897_lstm_cell_897_recurrent_kernel:	d?=
.assignvariableop_9_lstm_897_lstm_cell_897_bias:	?D
1assignvariableop_10_lstm_898_lstm_cell_898_kernel:	d?N
;assignvariableop_11_lstm_898_lstm_cell_898_recurrent_kernel:	2?>
/assignvariableop_12_lstm_898_lstm_cell_898_bias:	?C
1assignvariableop_13_lstm_899_lstm_cell_899_kernel:2(M
;assignvariableop_14_lstm_899_lstm_cell_899_recurrent_kernel:
(=
/assignvariableop_15_lstm_899_lstm_cell_899_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_299_kernel_m:
7
)assignvariableop_19_adam_dense_299_bias_m:K
8assignvariableop_20_adam_lstm_897_lstm_cell_897_kernel_m:	?U
Bassignvariableop_21_adam_lstm_897_lstm_cell_897_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_897_lstm_cell_897_bias_m:	?K
8assignvariableop_23_adam_lstm_898_lstm_cell_898_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_898_lstm_cell_898_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_898_lstm_cell_898_bias_m:	?J
8assignvariableop_26_adam_lstm_899_lstm_cell_899_kernel_m:2(T
Bassignvariableop_27_adam_lstm_899_lstm_cell_899_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_899_lstm_cell_899_bias_m:(=
+assignvariableop_29_adam_dense_299_kernel_v:
7
)assignvariableop_30_adam_dense_299_bias_v:K
8assignvariableop_31_adam_lstm_897_lstm_cell_897_kernel_v:	?U
Bassignvariableop_32_adam_lstm_897_lstm_cell_897_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_897_lstm_cell_897_bias_v:	?K
8assignvariableop_34_adam_lstm_898_lstm_cell_898_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_898_lstm_cell_898_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_898_lstm_cell_898_bias_v:	?J
8assignvariableop_37_adam_lstm_899_lstm_cell_899_kernel_v:2(T
Bassignvariableop_38_adam_lstm_899_lstm_cell_899_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_899_lstm_cell_899_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_299_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_299_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_897_lstm_cell_897_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_897_lstm_cell_897_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_897_lstm_cell_897_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_898_lstm_cell_898_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_898_lstm_cell_898_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_898_lstm_cell_898_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_899_lstm_cell_899_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_899_lstm_cell_899_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_899_lstm_cell_899_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_299_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_299_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_897_lstm_cell_897_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_897_lstm_cell_897_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_897_lstm_cell_897_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_898_lstm_cell_898_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_898_lstm_cell_898_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_898_lstm_cell_898_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_899_lstm_cell_899_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_899_lstm_cell_899_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_899_lstm_cell_899_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_299_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_299_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_897_lstm_cell_897_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_897_lstm_cell_897_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_897_lstm_cell_897_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_898_lstm_cell_898_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_898_lstm_cell_898_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_898_lstm_cell_898_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_899_lstm_cell_899_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_899_lstm_cell_899_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_899_lstm_cell_899_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
E__inference_lstm_898_layer_call_and_return_conditional_losses_4675237

inputs(
lstm_cell_772_4675155:	d?(
lstm_cell_772_4675157:	2?$
lstm_cell_772_4675159:	?
identity??%lstm_cell_772/StatefulPartitionedCall?while;
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
%lstm_cell_772/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_772_4675155lstm_cell_772_4675157lstm_cell_772_4675159*
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4675154n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_772_4675155lstm_cell_772_4675157lstm_cell_772_4675159*
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
while_body_4675168*
condR
while_cond_4675167*K
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
NoOpNoOp&^lstm_cell_772/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_772/StatefulPartitionedCall%lstm_cell_772/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4678623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4678623___redundant_placeholder05
1while_while_cond_4678623___redundant_placeholder15
1while_while_cond_4678623___redundant_placeholder25
1while_while_cond_4678623___redundant_placeholder3
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
while_body_4679053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_299_layer_call_and_return_conditional_losses_4679772

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
?
?
while_cond_4679052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4679052___redundant_placeholder05
1while_while_cond_4679052___redundant_placeholder15
1while_while_cond_4679052___redundant_placeholder25
1while_while_cond_4679052___redundant_placeholder3
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4675778

inputs'
lstm_cell_773_4675696:2('
lstm_cell_773_4675698:
(#
lstm_cell_773_4675700:(
identity??%lstm_cell_773/StatefulPartitionedCall?while;
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
%lstm_cell_773/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_773_4675696lstm_cell_773_4675698lstm_cell_773_4675700*
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4675650n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_773_4675696lstm_cell_773_4675698lstm_cell_773_4675700*
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
while_body_4675709*
condR
while_cond_4675708*K
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
NoOpNoOp&^lstm_cell_773/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_773/StatefulPartitionedCall%lstm_cell_773/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?	
?
F__inference_dense_299_layer_call_and_return_conditional_losses_4676254

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
??
?
K__inference_sequential_299_layer_call_and_return_conditional_losses_4677478

inputsH
5lstm_897_lstm_cell_771_matmul_readvariableop_resource:	?J
7lstm_897_lstm_cell_771_matmul_1_readvariableop_resource:	d?E
6lstm_897_lstm_cell_771_biasadd_readvariableop_resource:	?H
5lstm_898_lstm_cell_772_matmul_readvariableop_resource:	d?J
7lstm_898_lstm_cell_772_matmul_1_readvariableop_resource:	2?E
6lstm_898_lstm_cell_772_biasadd_readvariableop_resource:	?G
5lstm_899_lstm_cell_773_matmul_readvariableop_resource:2(I
7lstm_899_lstm_cell_773_matmul_1_readvariableop_resource:
(D
6lstm_899_lstm_cell_773_biasadd_readvariableop_resource:(:
(dense_299_matmul_readvariableop_resource:
7
)dense_299_biasadd_readvariableop_resource:
identity?? dense_299/BiasAdd/ReadVariableOp?dense_299/MatMul/ReadVariableOp?-lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp?,lstm_897/lstm_cell_771/MatMul/ReadVariableOp?.lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp?lstm_897/while?-lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp?,lstm_898/lstm_cell_772/MatMul/ReadVariableOp?.lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp?lstm_898/while?-lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp?,lstm_899/lstm_cell_773/MatMul/ReadVariableOp?.lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp?lstm_899/whileD
lstm_897/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_897/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_897/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_897/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_897/strided_sliceStridedSlicelstm_897/Shape:output:0%lstm_897/strided_slice/stack:output:0'lstm_897/strided_slice/stack_1:output:0'lstm_897/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_897/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_897/zeros/packedPacklstm_897/strided_slice:output:0 lstm_897/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_897/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_897/zerosFilllstm_897/zeros/packed:output:0lstm_897/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_897/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_897/zeros_1/packedPacklstm_897/strided_slice:output:0"lstm_897/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_897/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_897/zeros_1Fill lstm_897/zeros_1/packed:output:0lstm_897/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_897/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_897/transpose	Transposeinputs lstm_897/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_897/Shape_1Shapelstm_897/transpose:y:0*
T0*
_output_shapes
:h
lstm_897/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_897/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_897/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_897/strided_slice_1StridedSlicelstm_897/Shape_1:output:0'lstm_897/strided_slice_1/stack:output:0)lstm_897/strided_slice_1/stack_1:output:0)lstm_897/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_897/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_897/TensorArrayV2TensorListReserve-lstm_897/TensorArrayV2/element_shape:output:0!lstm_897/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_897/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_897/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_897/transpose:y:0Glstm_897/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_897/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_897/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_897/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_897/strided_slice_2StridedSlicelstm_897/transpose:y:0'lstm_897/strided_slice_2/stack:output:0)lstm_897/strided_slice_2/stack_1:output:0)lstm_897/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_897/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp5lstm_897_lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_897/lstm_cell_771/MatMulMatMul!lstm_897/strided_slice_2:output:04lstm_897/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_897/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp7lstm_897_lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_897/lstm_cell_771/MatMul_1MatMullstm_897/zeros:output:06lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_897/lstm_cell_771/addAddV2'lstm_897/lstm_cell_771/MatMul:product:0)lstm_897/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_897/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp6lstm_897_lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_897/lstm_cell_771/BiasAddBiasAddlstm_897/lstm_cell_771/add:z:05lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_897/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_897/lstm_cell_771/splitSplit/lstm_897/lstm_cell_771/split/split_dim:output:0'lstm_897/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_897/lstm_cell_771/SigmoidSigmoid%lstm_897/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_897/lstm_cell_771/Sigmoid_1Sigmoid%lstm_897/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_897/lstm_cell_771/mulMul$lstm_897/lstm_cell_771/Sigmoid_1:y:0lstm_897/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_897/lstm_cell_771/ReluRelu%lstm_897/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_897/lstm_cell_771/mul_1Mul"lstm_897/lstm_cell_771/Sigmoid:y:0)lstm_897/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_897/lstm_cell_771/add_1AddV2lstm_897/lstm_cell_771/mul:z:0 lstm_897/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_897/lstm_cell_771/Sigmoid_2Sigmoid%lstm_897/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_897/lstm_cell_771/Relu_1Relu lstm_897/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_897/lstm_cell_771/mul_2Mul$lstm_897/lstm_cell_771/Sigmoid_2:y:0+lstm_897/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_897/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_897/TensorArrayV2_1TensorListReserve/lstm_897/TensorArrayV2_1/element_shape:output:0!lstm_897/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_897/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_897/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_897/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_897/whileWhile$lstm_897/while/loop_counter:output:0*lstm_897/while/maximum_iterations:output:0lstm_897/time:output:0!lstm_897/TensorArrayV2_1:handle:0lstm_897/zeros:output:0lstm_897/zeros_1:output:0!lstm_897/strided_slice_1:output:0@lstm_897/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_897_lstm_cell_771_matmul_readvariableop_resource7lstm_897_lstm_cell_771_matmul_1_readvariableop_resource6lstm_897_lstm_cell_771_biasadd_readvariableop_resource*
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
lstm_897_while_body_4677110*'
condR
lstm_897_while_cond_4677109*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_897/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_897/TensorArrayV2Stack/TensorListStackTensorListStacklstm_897/while:output:3Blstm_897/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_897/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_897/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_897/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_897/strided_slice_3StridedSlice4lstm_897/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_897/strided_slice_3/stack:output:0)lstm_897/strided_slice_3/stack_1:output:0)lstm_897/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_897/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_897/transpose_1	Transpose4lstm_897/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_897/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_897/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_898/ShapeShapelstm_897/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_898/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_898/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_898/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_898/strided_sliceStridedSlicelstm_898/Shape:output:0%lstm_898/strided_slice/stack:output:0'lstm_898/strided_slice/stack_1:output:0'lstm_898/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_898/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_898/zeros/packedPacklstm_898/strided_slice:output:0 lstm_898/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_898/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_898/zerosFilllstm_898/zeros/packed:output:0lstm_898/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_898/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_898/zeros_1/packedPacklstm_898/strided_slice:output:0"lstm_898/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_898/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_898/zeros_1Fill lstm_898/zeros_1/packed:output:0lstm_898/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_898/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_898/transpose	Transposelstm_897/transpose_1:y:0 lstm_898/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_898/Shape_1Shapelstm_898/transpose:y:0*
T0*
_output_shapes
:h
lstm_898/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_898/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_898/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_898/strided_slice_1StridedSlicelstm_898/Shape_1:output:0'lstm_898/strided_slice_1/stack:output:0)lstm_898/strided_slice_1/stack_1:output:0)lstm_898/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_898/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_898/TensorArrayV2TensorListReserve-lstm_898/TensorArrayV2/element_shape:output:0!lstm_898/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_898/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_898/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_898/transpose:y:0Glstm_898/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_898/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_898/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_898/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_898/strided_slice_2StridedSlicelstm_898/transpose:y:0'lstm_898/strided_slice_2/stack:output:0)lstm_898/strided_slice_2/stack_1:output:0)lstm_898/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_898/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp5lstm_898_lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_898/lstm_cell_772/MatMulMatMul!lstm_898/strided_slice_2:output:04lstm_898/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_898/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp7lstm_898_lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_898/lstm_cell_772/MatMul_1MatMullstm_898/zeros:output:06lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_898/lstm_cell_772/addAddV2'lstm_898/lstm_cell_772/MatMul:product:0)lstm_898/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_898/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp6lstm_898_lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_898/lstm_cell_772/BiasAddBiasAddlstm_898/lstm_cell_772/add:z:05lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_898/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_898/lstm_cell_772/splitSplit/lstm_898/lstm_cell_772/split/split_dim:output:0'lstm_898/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_898/lstm_cell_772/SigmoidSigmoid%lstm_898/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_898/lstm_cell_772/Sigmoid_1Sigmoid%lstm_898/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_898/lstm_cell_772/mulMul$lstm_898/lstm_cell_772/Sigmoid_1:y:0lstm_898/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_898/lstm_cell_772/ReluRelu%lstm_898/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_898/lstm_cell_772/mul_1Mul"lstm_898/lstm_cell_772/Sigmoid:y:0)lstm_898/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_898/lstm_cell_772/add_1AddV2lstm_898/lstm_cell_772/mul:z:0 lstm_898/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_898/lstm_cell_772/Sigmoid_2Sigmoid%lstm_898/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_898/lstm_cell_772/Relu_1Relu lstm_898/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_898/lstm_cell_772/mul_2Mul$lstm_898/lstm_cell_772/Sigmoid_2:y:0+lstm_898/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_898/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_898/TensorArrayV2_1TensorListReserve/lstm_898/TensorArrayV2_1/element_shape:output:0!lstm_898/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_898/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_898/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_898/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_898/whileWhile$lstm_898/while/loop_counter:output:0*lstm_898/while/maximum_iterations:output:0lstm_898/time:output:0!lstm_898/TensorArrayV2_1:handle:0lstm_898/zeros:output:0lstm_898/zeros_1:output:0!lstm_898/strided_slice_1:output:0@lstm_898/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_898_lstm_cell_772_matmul_readvariableop_resource7lstm_898_lstm_cell_772_matmul_1_readvariableop_resource6lstm_898_lstm_cell_772_biasadd_readvariableop_resource*
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
lstm_898_while_body_4677249*'
condR
lstm_898_while_cond_4677248*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_898/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_898/TensorArrayV2Stack/TensorListStackTensorListStacklstm_898/while:output:3Blstm_898/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_898/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_898/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_898/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_898/strided_slice_3StridedSlice4lstm_898/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_898/strided_slice_3/stack:output:0)lstm_898/strided_slice_3/stack_1:output:0)lstm_898/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_898/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_898/transpose_1	Transpose4lstm_898/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_898/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_898/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_899/ShapeShapelstm_898/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_899/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_899/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_899/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_899/strided_sliceStridedSlicelstm_899/Shape:output:0%lstm_899/strided_slice/stack:output:0'lstm_899/strided_slice/stack_1:output:0'lstm_899/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_899/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_899/zeros/packedPacklstm_899/strided_slice:output:0 lstm_899/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_899/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_899/zerosFilllstm_899/zeros/packed:output:0lstm_899/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_899/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_899/zeros_1/packedPacklstm_899/strided_slice:output:0"lstm_899/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_899/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_899/zeros_1Fill lstm_899/zeros_1/packed:output:0lstm_899/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_899/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_899/transpose	Transposelstm_898/transpose_1:y:0 lstm_899/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_899/Shape_1Shapelstm_899/transpose:y:0*
T0*
_output_shapes
:h
lstm_899/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_899/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_899/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_899/strided_slice_1StridedSlicelstm_899/Shape_1:output:0'lstm_899/strided_slice_1/stack:output:0)lstm_899/strided_slice_1/stack_1:output:0)lstm_899/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_899/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_899/TensorArrayV2TensorListReserve-lstm_899/TensorArrayV2/element_shape:output:0!lstm_899/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_899/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_899/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_899/transpose:y:0Glstm_899/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_899/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_899/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_899/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_899/strided_slice_2StridedSlicelstm_899/transpose:y:0'lstm_899/strided_slice_2/stack:output:0)lstm_899/strided_slice_2/stack_1:output:0)lstm_899/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_899/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp5lstm_899_lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_899/lstm_cell_773/MatMulMatMul!lstm_899/strided_slice_2:output:04lstm_899/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_899/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp7lstm_899_lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_899/lstm_cell_773/MatMul_1MatMullstm_899/zeros:output:06lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_899/lstm_cell_773/addAddV2'lstm_899/lstm_cell_773/MatMul:product:0)lstm_899/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_899/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp6lstm_899_lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_899/lstm_cell_773/BiasAddBiasAddlstm_899/lstm_cell_773/add:z:05lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_899/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_899/lstm_cell_773/splitSplit/lstm_899/lstm_cell_773/split/split_dim:output:0'lstm_899/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_899/lstm_cell_773/SigmoidSigmoid%lstm_899/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_899/lstm_cell_773/Sigmoid_1Sigmoid%lstm_899/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_899/lstm_cell_773/mulMul$lstm_899/lstm_cell_773/Sigmoid_1:y:0lstm_899/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_899/lstm_cell_773/ReluRelu%lstm_899/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_899/lstm_cell_773/mul_1Mul"lstm_899/lstm_cell_773/Sigmoid:y:0)lstm_899/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_899/lstm_cell_773/add_1AddV2lstm_899/lstm_cell_773/mul:z:0 lstm_899/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_899/lstm_cell_773/Sigmoid_2Sigmoid%lstm_899/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_899/lstm_cell_773/Relu_1Relu lstm_899/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_899/lstm_cell_773/mul_2Mul$lstm_899/lstm_cell_773/Sigmoid_2:y:0+lstm_899/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_899/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_899/TensorArrayV2_1TensorListReserve/lstm_899/TensorArrayV2_1/element_shape:output:0!lstm_899/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_899/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_899/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_899/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_899/whileWhile$lstm_899/while/loop_counter:output:0*lstm_899/while/maximum_iterations:output:0lstm_899/time:output:0!lstm_899/TensorArrayV2_1:handle:0lstm_899/zeros:output:0lstm_899/zeros_1:output:0!lstm_899/strided_slice_1:output:0@lstm_899/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_899_lstm_cell_773_matmul_readvariableop_resource7lstm_899_lstm_cell_773_matmul_1_readvariableop_resource6lstm_899_lstm_cell_773_biasadd_readvariableop_resource*
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
lstm_899_while_body_4677388*'
condR
lstm_899_while_cond_4677387*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_899/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_899/TensorArrayV2Stack/TensorListStackTensorListStacklstm_899/while:output:3Blstm_899/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_899/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_899/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_899/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_899/strided_slice_3StridedSlice4lstm_899/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_899/strided_slice_3/stack:output:0)lstm_899/strided_slice_3/stack_1:output:0)lstm_899/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_899/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_899/transpose_1	Transpose4lstm_899/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_899/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_899/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_299/MatMul/ReadVariableOpReadVariableOp(dense_299_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_299/MatMulMatMul!lstm_899/strided_slice_3:output:0'dense_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_299/BiasAdd/ReadVariableOpReadVariableOp)dense_299_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_299/BiasAddBiasAdddense_299/MatMul:product:0(dense_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_299/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_299/BiasAdd/ReadVariableOp ^dense_299/MatMul/ReadVariableOp.^lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp-^lstm_897/lstm_cell_771/MatMul/ReadVariableOp/^lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp^lstm_897/while.^lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp-^lstm_898/lstm_cell_772/MatMul/ReadVariableOp/^lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp^lstm_898/while.^lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp-^lstm_899/lstm_cell_773/MatMul/ReadVariableOp/^lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp^lstm_899/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_299/BiasAdd/ReadVariableOp dense_299/BiasAdd/ReadVariableOp2B
dense_299/MatMul/ReadVariableOpdense_299/MatMul/ReadVariableOp2^
-lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp-lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp2\
,lstm_897/lstm_cell_771/MatMul/ReadVariableOp,lstm_897/lstm_cell_771/MatMul/ReadVariableOp2`
.lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp.lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp2 
lstm_897/whilelstm_897/while2^
-lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp-lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp2\
,lstm_898/lstm_cell_772/MatMul/ReadVariableOp,lstm_898/lstm_cell_772/MatMul/ReadVariableOp2`
.lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp.lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp2 
lstm_898/whilelstm_898/while2^
-lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp-lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp2\
,lstm_899/lstm_cell_773/MatMul/ReadVariableOp,lstm_899/lstm_cell_773/MatMul/ReadVariableOp2`
.lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp.lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp2 
lstm_899/whilelstm_899/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_897_while_cond_4677109.
*lstm_897_while_lstm_897_while_loop_counter4
0lstm_897_while_lstm_897_while_maximum_iterations
lstm_897_while_placeholder 
lstm_897_while_placeholder_1 
lstm_897_while_placeholder_2 
lstm_897_while_placeholder_30
,lstm_897_while_less_lstm_897_strided_slice_1G
Clstm_897_while_lstm_897_while_cond_4677109___redundant_placeholder0G
Clstm_897_while_lstm_897_while_cond_4677109___redundant_placeholder1G
Clstm_897_while_lstm_897_while_cond_4677109___redundant_placeholder2G
Clstm_897_while_lstm_897_while_cond_4677109___redundant_placeholder3
lstm_897_while_identity
?
lstm_897/while/LessLesslstm_897_while_placeholder,lstm_897_while_less_lstm_897_strided_slice_1*
T0*
_output_shapes
: ]
lstm_897/while/IdentityIdentitylstm_897/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_897_while_identity lstm_897/while/Identity:output:0*(
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
while_body_4676002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4675008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4675008___redundant_placeholder05
1while_while_cond_4675008___redundant_placeholder15
1while_while_cond_4675008___redundant_placeholder25
1while_while_cond_4675008___redundant_placeholder3
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
?
*__inference_lstm_898_layer_call_fn_4678543
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4675428|
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4679968

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
?K
?
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678235
inputs_0?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4678151*
condR
while_cond_4678150*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4678436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4678436___redundant_placeholder05
1while_while_cond_4678436___redundant_placeholder15
1while_while_cond_4678436___redundant_placeholder25
1while_while_cond_4678436___redundant_placeholder3
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
while_body_4675709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_773_4675733_0:2(/
while_lstm_cell_773_4675735_0:
(+
while_lstm_cell_773_4675737_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_773_4675733:2(-
while_lstm_cell_773_4675735:
()
while_lstm_cell_773_4675737:(??+while/lstm_cell_773/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_773/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_773_4675733_0while_lstm_cell_773_4675735_0while_lstm_cell_773_4675737_0*
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4675650?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_773/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_773/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_773/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_773/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_773_4675733while_lstm_cell_773_4675733_0"<
while_lstm_cell_773_4675735while_lstm_cell_773_4675735_0"<
while_lstm_cell_773_4675737while_lstm_cell_773_4675737_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_773/StatefulPartitionedCall+while/lstm_cell_773/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4676532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4676532___redundant_placeholder05
1while_while_cond_4676532___redundant_placeholder15
1while_while_cond_4676532___redundant_placeholder25
1while_while_cond_4676532___redundant_placeholder3
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
while_cond_4676367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4676367___redundant_placeholder05
1while_while_cond_4676367___redundant_placeholder15
1while_while_cond_4676367___redundant_placeholder25
1while_while_cond_4676367___redundant_placeholder3
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
0__inference_sequential_299_layer_call_fn_4677024

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
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676261o
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
while_body_4676698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_897_while_cond_4677536.
*lstm_897_while_lstm_897_while_loop_counter4
0lstm_897_while_lstm_897_while_maximum_iterations
lstm_897_while_placeholder 
lstm_897_while_placeholder_1 
lstm_897_while_placeholder_2 
lstm_897_while_placeholder_30
,lstm_897_while_less_lstm_897_strided_slice_1G
Clstm_897_while_lstm_897_while_cond_4677536___redundant_placeholder0G
Clstm_897_while_lstm_897_while_cond_4677536___redundant_placeholder1G
Clstm_897_while_lstm_897_while_cond_4677536___redundant_placeholder2G
Clstm_897_while_lstm_897_while_cond_4677536___redundant_placeholder3
lstm_897_while_identity
?
lstm_897/while/LessLesslstm_897_while_placeholder,lstm_897_while_less_lstm_897_strided_slice_1*
T0*
_output_shapes
: ]
lstm_897/while/IdentityIdentitylstm_897/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_897_while_identity lstm_897/while/Identity:output:0*(
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4679870

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
while_cond_4679668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4679668___redundant_placeholder05
1while_while_cond_4679668___redundant_placeholder15
1while_while_cond_4679668___redundant_placeholder25
1while_while_cond_4679668___redundant_placeholder3
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4678851
inputs_0?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4678767*
condR
while_cond_4678766*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_899_layer_call_and_return_conditional_losses_4676452

inputs>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4676368*
condR
while_cond_4676367*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_898_layer_call_fn_4678565

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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4676617s
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
lstm_899_while_cond_4677814.
*lstm_899_while_lstm_899_while_loop_counter4
0lstm_899_while_lstm_899_while_maximum_iterations
lstm_899_while_placeholder 
lstm_899_while_placeholder_1 
lstm_899_while_placeholder_2 
lstm_899_while_placeholder_30
,lstm_899_while_less_lstm_899_strided_slice_1G
Clstm_899_while_lstm_899_while_cond_4677814___redundant_placeholder0G
Clstm_899_while_lstm_899_while_cond_4677814___redundant_placeholder1G
Clstm_899_while_lstm_899_while_cond_4677814___redundant_placeholder2G
Clstm_899_while_lstm_899_while_cond_4677814___redundant_placeholder3
lstm_899_while_identity
?
lstm_899/while/LessLesslstm_899_while_placeholder,lstm_899_while_less_lstm_899_strided_slice_1*
T0*
_output_shapes
: ]
lstm_899/while/IdentityIdentitylstm_899/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_899_while_identity lstm_899/while/Identity:output:0*(
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
while_body_4675168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_772_4675192_0:	d?0
while_lstm_cell_772_4675194_0:	2?,
while_lstm_cell_772_4675196_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_772_4675192:	d?.
while_lstm_cell_772_4675194:	2?*
while_lstm_cell_772_4675196:	???+while/lstm_cell_772/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_772/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_772_4675192_0while_lstm_cell_772_4675194_0while_lstm_cell_772_4675196_0*
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4675154?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_772/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_772/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_772/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_772/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_772_4675192while_lstm_cell_772_4675192_0"<
while_lstm_cell_772_4675194while_lstm_cell_772_4675194_0"<
while_lstm_cell_772_4675196while_lstm_cell_772_4675196_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_772/StatefulPartitionedCall+while/lstm_cell_772/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
?
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4679936

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
while_body_4678437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4679382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4679382___redundant_placeholder05
1while_while_cond_4679382___redundant_placeholder15
1while_while_cond_4679382___redundant_placeholder25
1while_while_cond_4679382___redundant_placeholder3
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
while_body_4675518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_773_4675542_0:2(/
while_lstm_cell_773_4675544_0:
(+
while_lstm_cell_773_4675546_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_773_4675542:2(-
while_lstm_cell_773_4675544:
()
while_lstm_cell_773_4675546:(??+while/lstm_cell_773/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_773/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_773_4675542_0while_lstm_cell_773_4675544_0while_lstm_cell_773_4675546_0*
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4675504?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_773/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_773/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_773/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_773/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_773_4675542while_lstm_cell_773_4675542_0"<
while_lstm_cell_773_4675544while_lstm_cell_773_4675544_0"<
while_lstm_cell_773_4675546while_lstm_cell_773_4675546_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_773/StatefulPartitionedCall+while/lstm_cell_773/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4679838

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
?8
?
while_body_4678294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_299_lstm_898_while_body_4674508L
Hsequential_299_lstm_898_while_sequential_299_lstm_898_while_loop_counterR
Nsequential_299_lstm_898_while_sequential_299_lstm_898_while_maximum_iterations-
)sequential_299_lstm_898_while_placeholder/
+sequential_299_lstm_898_while_placeholder_1/
+sequential_299_lstm_898_while_placeholder_2/
+sequential_299_lstm_898_while_placeholder_3K
Gsequential_299_lstm_898_while_sequential_299_lstm_898_strided_slice_1_0?
?sequential_299_lstm_898_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_898_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_299_lstm_898_while_lstm_cell_772_matmul_readvariableop_resource_0:	d?a
Nsequential_299_lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?\
Msequential_299_lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource_0:	?*
&sequential_299_lstm_898_while_identity,
(sequential_299_lstm_898_while_identity_1,
(sequential_299_lstm_898_while_identity_2,
(sequential_299_lstm_898_while_identity_3,
(sequential_299_lstm_898_while_identity_4,
(sequential_299_lstm_898_while_identity_5I
Esequential_299_lstm_898_while_sequential_299_lstm_898_strided_slice_1?
?sequential_299_lstm_898_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_898_tensorarrayunstack_tensorlistfromtensor]
Jsequential_299_lstm_898_while_lstm_cell_772_matmul_readvariableop_resource:	d?_
Lsequential_299_lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource:	2?Z
Ksequential_299_lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource:	???Bsequential_299/lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp?Asequential_299/lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp?Csequential_299/lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp?
Osequential_299/lstm_898/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_299/lstm_898/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_299_lstm_898_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_898_tensorarrayunstack_tensorlistfromtensor_0)sequential_299_lstm_898_while_placeholderXsequential_299/lstm_898/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_299/lstm_898/while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOpLsequential_299_lstm_898_while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_299/lstm_898/while/lstm_cell_772/MatMulMatMulHsequential_299/lstm_898/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_299/lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_299/lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOpNsequential_299_lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_299/lstm_898/while/lstm_cell_772/MatMul_1MatMul+sequential_299_lstm_898_while_placeholder_2Ksequential_299/lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_299/lstm_898/while/lstm_cell_772/addAddV2<sequential_299/lstm_898/while/lstm_cell_772/MatMul:product:0>sequential_299/lstm_898/while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_299/lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOpMsequential_299_lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_299/lstm_898/while/lstm_cell_772/BiasAddBiasAdd3sequential_299/lstm_898/while/lstm_cell_772/add:z:0Jsequential_299/lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_299/lstm_898/while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_299/lstm_898/while/lstm_cell_772/splitSplitDsequential_299/lstm_898/while/lstm_cell_772/split/split_dim:output:0<sequential_299/lstm_898/while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_299/lstm_898/while/lstm_cell_772/SigmoidSigmoid:sequential_299/lstm_898/while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_299/lstm_898/while/lstm_cell_772/Sigmoid_1Sigmoid:sequential_299/lstm_898/while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_299/lstm_898/while/lstm_cell_772/mulMul9sequential_299/lstm_898/while/lstm_cell_772/Sigmoid_1:y:0+sequential_299_lstm_898_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_299/lstm_898/while/lstm_cell_772/ReluRelu:sequential_299/lstm_898/while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_299/lstm_898/while/lstm_cell_772/mul_1Mul7sequential_299/lstm_898/while/lstm_cell_772/Sigmoid:y:0>sequential_299/lstm_898/while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_299/lstm_898/while/lstm_cell_772/add_1AddV23sequential_299/lstm_898/while/lstm_cell_772/mul:z:05sequential_299/lstm_898/while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_299/lstm_898/while/lstm_cell_772/Sigmoid_2Sigmoid:sequential_299/lstm_898/while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_299/lstm_898/while/lstm_cell_772/Relu_1Relu5sequential_299/lstm_898/while/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_299/lstm_898/while/lstm_cell_772/mul_2Mul9sequential_299/lstm_898/while/lstm_cell_772/Sigmoid_2:y:0@sequential_299/lstm_898/while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_299/lstm_898/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_299_lstm_898_while_placeholder_1)sequential_299_lstm_898_while_placeholder5sequential_299/lstm_898/while/lstm_cell_772/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_299/lstm_898/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_299/lstm_898/while/addAddV2)sequential_299_lstm_898_while_placeholder,sequential_299/lstm_898/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_299/lstm_898/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_299/lstm_898/while/add_1AddV2Hsequential_299_lstm_898_while_sequential_299_lstm_898_while_loop_counter.sequential_299/lstm_898/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_299/lstm_898/while/IdentityIdentity'sequential_299/lstm_898/while/add_1:z:0#^sequential_299/lstm_898/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_898/while/Identity_1IdentityNsequential_299_lstm_898_while_sequential_299_lstm_898_while_maximum_iterations#^sequential_299/lstm_898/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_898/while/Identity_2Identity%sequential_299/lstm_898/while/add:z:0#^sequential_299/lstm_898/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_898/while/Identity_3IdentityRsequential_299/lstm_898/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_299/lstm_898/while/NoOp*
T0*
_output_shapes
: ?
(sequential_299/lstm_898/while/Identity_4Identity5sequential_299/lstm_898/while/lstm_cell_772/mul_2:z:0#^sequential_299/lstm_898/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_299/lstm_898/while/Identity_5Identity5sequential_299/lstm_898/while/lstm_cell_772/add_1:z:0#^sequential_299/lstm_898/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_299/lstm_898/while/NoOpNoOpC^sequential_299/lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOpB^sequential_299/lstm_898/while/lstm_cell_772/MatMul/ReadVariableOpD^sequential_299/lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_299_lstm_898_while_identity/sequential_299/lstm_898/while/Identity:output:0"]
(sequential_299_lstm_898_while_identity_11sequential_299/lstm_898/while/Identity_1:output:0"]
(sequential_299_lstm_898_while_identity_21sequential_299/lstm_898/while/Identity_2:output:0"]
(sequential_299_lstm_898_while_identity_31sequential_299/lstm_898/while/Identity_3:output:0"]
(sequential_299_lstm_898_while_identity_41sequential_299/lstm_898/while/Identity_4:output:0"]
(sequential_299_lstm_898_while_identity_51sequential_299/lstm_898/while/Identity_5:output:0"?
Ksequential_299_lstm_898_while_lstm_cell_772_biasadd_readvariableop_resourceMsequential_299_lstm_898_while_lstm_cell_772_biasadd_readvariableop_resource_0"?
Lsequential_299_lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resourceNsequential_299_lstm_898_while_lstm_cell_772_matmul_1_readvariableop_resource_0"?
Jsequential_299_lstm_898_while_lstm_cell_772_matmul_readvariableop_resourceLsequential_299_lstm_898_while_lstm_cell_772_matmul_readvariableop_resource_0"?
Esequential_299_lstm_898_while_sequential_299_lstm_898_strided_slice_1Gsequential_299_lstm_898_while_sequential_299_lstm_898_strided_slice_1_0"?
?sequential_299_lstm_898_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_898_tensorarrayunstack_tensorlistfromtensor?sequential_299_lstm_898_while_tensorarrayv2read_tensorlistgetitem_sequential_299_lstm_898_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_299/lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOpBsequential_299/lstm_898/while/lstm_cell_772/BiasAdd/ReadVariableOp2?
Asequential_299/lstm_898/while/lstm_cell_772/MatMul/ReadVariableOpAsequential_299/lstm_898/while/lstm_cell_772/MatMul/ReadVariableOp2?
Csequential_299/lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOpCsequential_299/lstm_898/while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4676001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4676001___redundant_placeholder05
1while_while_cond_4676001___redundant_placeholder15
1while_while_cond_4676001___redundant_placeholder25
1while_while_cond_4676001___redundant_placeholder3
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
while_cond_4675851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4675851___redundant_placeholder05
1while_while_cond_4675851___redundant_placeholder15
1while_while_cond_4675851___redundant_placeholder25
1while_while_cond_4675851___redundant_placeholder3
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
??
?
K__inference_sequential_299_layer_call_and_return_conditional_losses_4677905

inputsH
5lstm_897_lstm_cell_771_matmul_readvariableop_resource:	?J
7lstm_897_lstm_cell_771_matmul_1_readvariableop_resource:	d?E
6lstm_897_lstm_cell_771_biasadd_readvariableop_resource:	?H
5lstm_898_lstm_cell_772_matmul_readvariableop_resource:	d?J
7lstm_898_lstm_cell_772_matmul_1_readvariableop_resource:	2?E
6lstm_898_lstm_cell_772_biasadd_readvariableop_resource:	?G
5lstm_899_lstm_cell_773_matmul_readvariableop_resource:2(I
7lstm_899_lstm_cell_773_matmul_1_readvariableop_resource:
(D
6lstm_899_lstm_cell_773_biasadd_readvariableop_resource:(:
(dense_299_matmul_readvariableop_resource:
7
)dense_299_biasadd_readvariableop_resource:
identity?? dense_299/BiasAdd/ReadVariableOp?dense_299/MatMul/ReadVariableOp?-lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp?,lstm_897/lstm_cell_771/MatMul/ReadVariableOp?.lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp?lstm_897/while?-lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp?,lstm_898/lstm_cell_772/MatMul/ReadVariableOp?.lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp?lstm_898/while?-lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp?,lstm_899/lstm_cell_773/MatMul/ReadVariableOp?.lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp?lstm_899/whileD
lstm_897/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_897/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_897/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_897/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_897/strided_sliceStridedSlicelstm_897/Shape:output:0%lstm_897/strided_slice/stack:output:0'lstm_897/strided_slice/stack_1:output:0'lstm_897/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_897/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_897/zeros/packedPacklstm_897/strided_slice:output:0 lstm_897/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_897/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_897/zerosFilllstm_897/zeros/packed:output:0lstm_897/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_897/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_897/zeros_1/packedPacklstm_897/strided_slice:output:0"lstm_897/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_897/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_897/zeros_1Fill lstm_897/zeros_1/packed:output:0lstm_897/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_897/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_897/transpose	Transposeinputs lstm_897/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_897/Shape_1Shapelstm_897/transpose:y:0*
T0*
_output_shapes
:h
lstm_897/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_897/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_897/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_897/strided_slice_1StridedSlicelstm_897/Shape_1:output:0'lstm_897/strided_slice_1/stack:output:0)lstm_897/strided_slice_1/stack_1:output:0)lstm_897/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_897/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_897/TensorArrayV2TensorListReserve-lstm_897/TensorArrayV2/element_shape:output:0!lstm_897/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_897/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_897/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_897/transpose:y:0Glstm_897/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_897/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_897/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_897/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_897/strided_slice_2StridedSlicelstm_897/transpose:y:0'lstm_897/strided_slice_2/stack:output:0)lstm_897/strided_slice_2/stack_1:output:0)lstm_897/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_897/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp5lstm_897_lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_897/lstm_cell_771/MatMulMatMul!lstm_897/strided_slice_2:output:04lstm_897/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_897/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp7lstm_897_lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_897/lstm_cell_771/MatMul_1MatMullstm_897/zeros:output:06lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_897/lstm_cell_771/addAddV2'lstm_897/lstm_cell_771/MatMul:product:0)lstm_897/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_897/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp6lstm_897_lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_897/lstm_cell_771/BiasAddBiasAddlstm_897/lstm_cell_771/add:z:05lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_897/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_897/lstm_cell_771/splitSplit/lstm_897/lstm_cell_771/split/split_dim:output:0'lstm_897/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_897/lstm_cell_771/SigmoidSigmoid%lstm_897/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_897/lstm_cell_771/Sigmoid_1Sigmoid%lstm_897/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_897/lstm_cell_771/mulMul$lstm_897/lstm_cell_771/Sigmoid_1:y:0lstm_897/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_897/lstm_cell_771/ReluRelu%lstm_897/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_897/lstm_cell_771/mul_1Mul"lstm_897/lstm_cell_771/Sigmoid:y:0)lstm_897/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_897/lstm_cell_771/add_1AddV2lstm_897/lstm_cell_771/mul:z:0 lstm_897/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_897/lstm_cell_771/Sigmoid_2Sigmoid%lstm_897/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_897/lstm_cell_771/Relu_1Relu lstm_897/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_897/lstm_cell_771/mul_2Mul$lstm_897/lstm_cell_771/Sigmoid_2:y:0+lstm_897/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_897/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_897/TensorArrayV2_1TensorListReserve/lstm_897/TensorArrayV2_1/element_shape:output:0!lstm_897/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_897/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_897/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_897/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_897/whileWhile$lstm_897/while/loop_counter:output:0*lstm_897/while/maximum_iterations:output:0lstm_897/time:output:0!lstm_897/TensorArrayV2_1:handle:0lstm_897/zeros:output:0lstm_897/zeros_1:output:0!lstm_897/strided_slice_1:output:0@lstm_897/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_897_lstm_cell_771_matmul_readvariableop_resource7lstm_897_lstm_cell_771_matmul_1_readvariableop_resource6lstm_897_lstm_cell_771_biasadd_readvariableop_resource*
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
lstm_897_while_body_4677537*'
condR
lstm_897_while_cond_4677536*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_897/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_897/TensorArrayV2Stack/TensorListStackTensorListStacklstm_897/while:output:3Blstm_897/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_897/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_897/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_897/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_897/strided_slice_3StridedSlice4lstm_897/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_897/strided_slice_3/stack:output:0)lstm_897/strided_slice_3/stack_1:output:0)lstm_897/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_897/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_897/transpose_1	Transpose4lstm_897/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_897/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_897/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_898/ShapeShapelstm_897/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_898/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_898/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_898/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_898/strided_sliceStridedSlicelstm_898/Shape:output:0%lstm_898/strided_slice/stack:output:0'lstm_898/strided_slice/stack_1:output:0'lstm_898/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_898/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_898/zeros/packedPacklstm_898/strided_slice:output:0 lstm_898/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_898/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_898/zerosFilllstm_898/zeros/packed:output:0lstm_898/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_898/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_898/zeros_1/packedPacklstm_898/strided_slice:output:0"lstm_898/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_898/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_898/zeros_1Fill lstm_898/zeros_1/packed:output:0lstm_898/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_898/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_898/transpose	Transposelstm_897/transpose_1:y:0 lstm_898/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_898/Shape_1Shapelstm_898/transpose:y:0*
T0*
_output_shapes
:h
lstm_898/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_898/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_898/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_898/strided_slice_1StridedSlicelstm_898/Shape_1:output:0'lstm_898/strided_slice_1/stack:output:0)lstm_898/strided_slice_1/stack_1:output:0)lstm_898/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_898/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_898/TensorArrayV2TensorListReserve-lstm_898/TensorArrayV2/element_shape:output:0!lstm_898/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_898/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_898/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_898/transpose:y:0Glstm_898/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_898/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_898/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_898/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_898/strided_slice_2StridedSlicelstm_898/transpose:y:0'lstm_898/strided_slice_2/stack:output:0)lstm_898/strided_slice_2/stack_1:output:0)lstm_898/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_898/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp5lstm_898_lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_898/lstm_cell_772/MatMulMatMul!lstm_898/strided_slice_2:output:04lstm_898/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_898/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp7lstm_898_lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_898/lstm_cell_772/MatMul_1MatMullstm_898/zeros:output:06lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_898/lstm_cell_772/addAddV2'lstm_898/lstm_cell_772/MatMul:product:0)lstm_898/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_898/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp6lstm_898_lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_898/lstm_cell_772/BiasAddBiasAddlstm_898/lstm_cell_772/add:z:05lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_898/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_898/lstm_cell_772/splitSplit/lstm_898/lstm_cell_772/split/split_dim:output:0'lstm_898/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_898/lstm_cell_772/SigmoidSigmoid%lstm_898/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_898/lstm_cell_772/Sigmoid_1Sigmoid%lstm_898/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_898/lstm_cell_772/mulMul$lstm_898/lstm_cell_772/Sigmoid_1:y:0lstm_898/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_898/lstm_cell_772/ReluRelu%lstm_898/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_898/lstm_cell_772/mul_1Mul"lstm_898/lstm_cell_772/Sigmoid:y:0)lstm_898/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_898/lstm_cell_772/add_1AddV2lstm_898/lstm_cell_772/mul:z:0 lstm_898/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_898/lstm_cell_772/Sigmoid_2Sigmoid%lstm_898/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_898/lstm_cell_772/Relu_1Relu lstm_898/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_898/lstm_cell_772/mul_2Mul$lstm_898/lstm_cell_772/Sigmoid_2:y:0+lstm_898/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_898/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_898/TensorArrayV2_1TensorListReserve/lstm_898/TensorArrayV2_1/element_shape:output:0!lstm_898/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_898/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_898/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_898/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_898/whileWhile$lstm_898/while/loop_counter:output:0*lstm_898/while/maximum_iterations:output:0lstm_898/time:output:0!lstm_898/TensorArrayV2_1:handle:0lstm_898/zeros:output:0lstm_898/zeros_1:output:0!lstm_898/strided_slice_1:output:0@lstm_898/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_898_lstm_cell_772_matmul_readvariableop_resource7lstm_898_lstm_cell_772_matmul_1_readvariableop_resource6lstm_898_lstm_cell_772_biasadd_readvariableop_resource*
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
lstm_898_while_body_4677676*'
condR
lstm_898_while_cond_4677675*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_898/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_898/TensorArrayV2Stack/TensorListStackTensorListStacklstm_898/while:output:3Blstm_898/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_898/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_898/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_898/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_898/strided_slice_3StridedSlice4lstm_898/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_898/strided_slice_3/stack:output:0)lstm_898/strided_slice_3/stack_1:output:0)lstm_898/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_898/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_898/transpose_1	Transpose4lstm_898/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_898/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_898/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_899/ShapeShapelstm_898/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_899/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_899/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_899/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_899/strided_sliceStridedSlicelstm_899/Shape:output:0%lstm_899/strided_slice/stack:output:0'lstm_899/strided_slice/stack_1:output:0'lstm_899/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_899/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_899/zeros/packedPacklstm_899/strided_slice:output:0 lstm_899/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_899/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_899/zerosFilllstm_899/zeros/packed:output:0lstm_899/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_899/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_899/zeros_1/packedPacklstm_899/strided_slice:output:0"lstm_899/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_899/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_899/zeros_1Fill lstm_899/zeros_1/packed:output:0lstm_899/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_899/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_899/transpose	Transposelstm_898/transpose_1:y:0 lstm_899/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_899/Shape_1Shapelstm_899/transpose:y:0*
T0*
_output_shapes
:h
lstm_899/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_899/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_899/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_899/strided_slice_1StridedSlicelstm_899/Shape_1:output:0'lstm_899/strided_slice_1/stack:output:0)lstm_899/strided_slice_1/stack_1:output:0)lstm_899/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_899/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_899/TensorArrayV2TensorListReserve-lstm_899/TensorArrayV2/element_shape:output:0!lstm_899/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_899/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_899/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_899/transpose:y:0Glstm_899/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_899/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_899/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_899/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_899/strided_slice_2StridedSlicelstm_899/transpose:y:0'lstm_899/strided_slice_2/stack:output:0)lstm_899/strided_slice_2/stack_1:output:0)lstm_899/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_899/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp5lstm_899_lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_899/lstm_cell_773/MatMulMatMul!lstm_899/strided_slice_2:output:04lstm_899/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_899/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp7lstm_899_lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_899/lstm_cell_773/MatMul_1MatMullstm_899/zeros:output:06lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_899/lstm_cell_773/addAddV2'lstm_899/lstm_cell_773/MatMul:product:0)lstm_899/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_899/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp6lstm_899_lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_899/lstm_cell_773/BiasAddBiasAddlstm_899/lstm_cell_773/add:z:05lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_899/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_899/lstm_cell_773/splitSplit/lstm_899/lstm_cell_773/split/split_dim:output:0'lstm_899/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_899/lstm_cell_773/SigmoidSigmoid%lstm_899/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_899/lstm_cell_773/Sigmoid_1Sigmoid%lstm_899/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_899/lstm_cell_773/mulMul$lstm_899/lstm_cell_773/Sigmoid_1:y:0lstm_899/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_899/lstm_cell_773/ReluRelu%lstm_899/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_899/lstm_cell_773/mul_1Mul"lstm_899/lstm_cell_773/Sigmoid:y:0)lstm_899/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_899/lstm_cell_773/add_1AddV2lstm_899/lstm_cell_773/mul:z:0 lstm_899/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_899/lstm_cell_773/Sigmoid_2Sigmoid%lstm_899/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_899/lstm_cell_773/Relu_1Relu lstm_899/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_899/lstm_cell_773/mul_2Mul$lstm_899/lstm_cell_773/Sigmoid_2:y:0+lstm_899/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_899/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_899/TensorArrayV2_1TensorListReserve/lstm_899/TensorArrayV2_1/element_shape:output:0!lstm_899/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_899/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_899/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_899/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_899/whileWhile$lstm_899/while/loop_counter:output:0*lstm_899/while/maximum_iterations:output:0lstm_899/time:output:0!lstm_899/TensorArrayV2_1:handle:0lstm_899/zeros:output:0lstm_899/zeros_1:output:0!lstm_899/strided_slice_1:output:0@lstm_899/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_899_lstm_cell_773_matmul_readvariableop_resource7lstm_899_lstm_cell_773_matmul_1_readvariableop_resource6lstm_899_lstm_cell_773_biasadd_readvariableop_resource*
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
lstm_899_while_body_4677815*'
condR
lstm_899_while_cond_4677814*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_899/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_899/TensorArrayV2Stack/TensorListStackTensorListStacklstm_899/while:output:3Blstm_899/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_899/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_899/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_899/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_899/strided_slice_3StridedSlice4lstm_899/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_899/strided_slice_3/stack:output:0)lstm_899/strided_slice_3/stack_1:output:0)lstm_899/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_899/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_899/transpose_1	Transpose4lstm_899/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_899/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_899/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_299/MatMul/ReadVariableOpReadVariableOp(dense_299_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_299/MatMulMatMul!lstm_899/strided_slice_3:output:0'dense_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_299/BiasAdd/ReadVariableOpReadVariableOp)dense_299_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_299/BiasAddBiasAdddense_299/MatMul:product:0(dense_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_299/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_299/BiasAdd/ReadVariableOp ^dense_299/MatMul/ReadVariableOp.^lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp-^lstm_897/lstm_cell_771/MatMul/ReadVariableOp/^lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp^lstm_897/while.^lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp-^lstm_898/lstm_cell_772/MatMul/ReadVariableOp/^lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp^lstm_898/while.^lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp-^lstm_899/lstm_cell_773/MatMul/ReadVariableOp/^lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp^lstm_899/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_299/BiasAdd/ReadVariableOp dense_299/BiasAdd/ReadVariableOp2B
dense_299/MatMul/ReadVariableOpdense_299/MatMul/ReadVariableOp2^
-lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp-lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp2\
,lstm_897/lstm_cell_771/MatMul/ReadVariableOp,lstm_897/lstm_cell_771/MatMul/ReadVariableOp2`
.lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp.lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp2 
lstm_897/whilelstm_897/while2^
-lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp-lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp2\
,lstm_898/lstm_cell_772/MatMul/ReadVariableOp,lstm_898/lstm_cell_772/MatMul/ReadVariableOp2`
.lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp.lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp2 
lstm_898/whilelstm_898/while2^
-lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp-lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp2\
,lstm_899/lstm_cell_773/MatMul/ReadVariableOp,lstm_899/lstm_cell_773/MatMul/ReadVariableOp2`
.lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp.lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp2 
lstm_899/whilelstm_899/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_899_layer_call_fn_4679159
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4675778o
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4674950

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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4675587

inputs'
lstm_cell_773_4675505:2('
lstm_cell_773_4675507:
(#
lstm_cell_773_4675509:(
identity??%lstm_cell_773/StatefulPartitionedCall?while;
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
%lstm_cell_773/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_773_4675505lstm_cell_773_4675507lstm_cell_773_4675509*
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4675504n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_773_4675505lstm_cell_773_4675507lstm_cell_773_4675509*
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
while_body_4675518*
condR
while_cond_4675517*K
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
NoOpNoOp&^lstm_cell_773/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_773/StatefulPartitionedCall%lstm_cell_773/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4680034

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
?K
?
E__inference_lstm_898_layer_call_and_return_conditional_losses_4678708
inputs_0?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4678624*
condR
while_cond_4678623*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_299_layer_call_fn_4676286
lstm_897_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_897_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676261o
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
_user_specified_namelstm_897_input
?
?
while_cond_4678007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4678007___redundant_placeholder05
1while_while_cond_4678007___redundant_placeholder15
1while_while_cond_4678007___redundant_placeholder25
1while_while_cond_4678007___redundant_placeholder3
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
??
?
"__inference__wrapped_model_4674737
lstm_897_inputW
Dsequential_299_lstm_897_lstm_cell_771_matmul_readvariableop_resource:	?Y
Fsequential_299_lstm_897_lstm_cell_771_matmul_1_readvariableop_resource:	d?T
Esequential_299_lstm_897_lstm_cell_771_biasadd_readvariableop_resource:	?W
Dsequential_299_lstm_898_lstm_cell_772_matmul_readvariableop_resource:	d?Y
Fsequential_299_lstm_898_lstm_cell_772_matmul_1_readvariableop_resource:	2?T
Esequential_299_lstm_898_lstm_cell_772_biasadd_readvariableop_resource:	?V
Dsequential_299_lstm_899_lstm_cell_773_matmul_readvariableop_resource:2(X
Fsequential_299_lstm_899_lstm_cell_773_matmul_1_readvariableop_resource:
(S
Esequential_299_lstm_899_lstm_cell_773_biasadd_readvariableop_resource:(I
7sequential_299_dense_299_matmul_readvariableop_resource:
F
8sequential_299_dense_299_biasadd_readvariableop_resource:
identity??/sequential_299/dense_299/BiasAdd/ReadVariableOp?.sequential_299/dense_299/MatMul/ReadVariableOp?<sequential_299/lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp?;sequential_299/lstm_897/lstm_cell_771/MatMul/ReadVariableOp?=sequential_299/lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp?sequential_299/lstm_897/while?<sequential_299/lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp?;sequential_299/lstm_898/lstm_cell_772/MatMul/ReadVariableOp?=sequential_299/lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp?sequential_299/lstm_898/while?<sequential_299/lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp?;sequential_299/lstm_899/lstm_cell_773/MatMul/ReadVariableOp?=sequential_299/lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp?sequential_299/lstm_899/while[
sequential_299/lstm_897/ShapeShapelstm_897_input*
T0*
_output_shapes
:u
+sequential_299/lstm_897/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_299/lstm_897/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_299/lstm_897/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_299/lstm_897/strided_sliceStridedSlice&sequential_299/lstm_897/Shape:output:04sequential_299/lstm_897/strided_slice/stack:output:06sequential_299/lstm_897/strided_slice/stack_1:output:06sequential_299/lstm_897/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_299/lstm_897/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_299/lstm_897/zeros/packedPack.sequential_299/lstm_897/strided_slice:output:0/sequential_299/lstm_897/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_299/lstm_897/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_299/lstm_897/zerosFill-sequential_299/lstm_897/zeros/packed:output:0,sequential_299/lstm_897/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_299/lstm_897/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_299/lstm_897/zeros_1/packedPack.sequential_299/lstm_897/strided_slice:output:01sequential_299/lstm_897/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_299/lstm_897/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_299/lstm_897/zeros_1Fill/sequential_299/lstm_897/zeros_1/packed:output:0.sequential_299/lstm_897/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_299/lstm_897/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_299/lstm_897/transpose	Transposelstm_897_input/sequential_299/lstm_897/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_299/lstm_897/Shape_1Shape%sequential_299/lstm_897/transpose:y:0*
T0*
_output_shapes
:w
-sequential_299/lstm_897/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_299/lstm_897/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_299/lstm_897/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_299/lstm_897/strided_slice_1StridedSlice(sequential_299/lstm_897/Shape_1:output:06sequential_299/lstm_897/strided_slice_1/stack:output:08sequential_299/lstm_897/strided_slice_1/stack_1:output:08sequential_299/lstm_897/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_299/lstm_897/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_299/lstm_897/TensorArrayV2TensorListReserve<sequential_299/lstm_897/TensorArrayV2/element_shape:output:00sequential_299/lstm_897/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_299/lstm_897/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_299/lstm_897/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_299/lstm_897/transpose:y:0Vsequential_299/lstm_897/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_299/lstm_897/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_299/lstm_897/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_299/lstm_897/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_299/lstm_897/strided_slice_2StridedSlice%sequential_299/lstm_897/transpose:y:06sequential_299/lstm_897/strided_slice_2/stack:output:08sequential_299/lstm_897/strided_slice_2/stack_1:output:08sequential_299/lstm_897/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_299/lstm_897/lstm_cell_771/MatMul/ReadVariableOpReadVariableOpDsequential_299_lstm_897_lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_299/lstm_897/lstm_cell_771/MatMulMatMul0sequential_299/lstm_897/strided_slice_2:output:0Csequential_299/lstm_897/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_299/lstm_897/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOpFsequential_299_lstm_897_lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_299/lstm_897/lstm_cell_771/MatMul_1MatMul&sequential_299/lstm_897/zeros:output:0Esequential_299/lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_299/lstm_897/lstm_cell_771/addAddV26sequential_299/lstm_897/lstm_cell_771/MatMul:product:08sequential_299/lstm_897/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_299/lstm_897/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOpEsequential_299_lstm_897_lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_299/lstm_897/lstm_cell_771/BiasAddBiasAdd-sequential_299/lstm_897/lstm_cell_771/add:z:0Dsequential_299/lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_299/lstm_897/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_299/lstm_897/lstm_cell_771/splitSplit>sequential_299/lstm_897/lstm_cell_771/split/split_dim:output:06sequential_299/lstm_897/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_299/lstm_897/lstm_cell_771/SigmoidSigmoid4sequential_299/lstm_897/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_299/lstm_897/lstm_cell_771/Sigmoid_1Sigmoid4sequential_299/lstm_897/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_299/lstm_897/lstm_cell_771/mulMul3sequential_299/lstm_897/lstm_cell_771/Sigmoid_1:y:0(sequential_299/lstm_897/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_299/lstm_897/lstm_cell_771/ReluRelu4sequential_299/lstm_897/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_299/lstm_897/lstm_cell_771/mul_1Mul1sequential_299/lstm_897/lstm_cell_771/Sigmoid:y:08sequential_299/lstm_897/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_299/lstm_897/lstm_cell_771/add_1AddV2-sequential_299/lstm_897/lstm_cell_771/mul:z:0/sequential_299/lstm_897/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_299/lstm_897/lstm_cell_771/Sigmoid_2Sigmoid4sequential_299/lstm_897/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_299/lstm_897/lstm_cell_771/Relu_1Relu/sequential_299/lstm_897/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_299/lstm_897/lstm_cell_771/mul_2Mul3sequential_299/lstm_897/lstm_cell_771/Sigmoid_2:y:0:sequential_299/lstm_897/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_299/lstm_897/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_299/lstm_897/TensorArrayV2_1TensorListReserve>sequential_299/lstm_897/TensorArrayV2_1/element_shape:output:00sequential_299/lstm_897/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_299/lstm_897/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_299/lstm_897/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_299/lstm_897/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_299/lstm_897/whileWhile3sequential_299/lstm_897/while/loop_counter:output:09sequential_299/lstm_897/while/maximum_iterations:output:0%sequential_299/lstm_897/time:output:00sequential_299/lstm_897/TensorArrayV2_1:handle:0&sequential_299/lstm_897/zeros:output:0(sequential_299/lstm_897/zeros_1:output:00sequential_299/lstm_897/strided_slice_1:output:0Osequential_299/lstm_897/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_299_lstm_897_lstm_cell_771_matmul_readvariableop_resourceFsequential_299_lstm_897_lstm_cell_771_matmul_1_readvariableop_resourceEsequential_299_lstm_897_lstm_cell_771_biasadd_readvariableop_resource*
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
*sequential_299_lstm_897_while_body_4674369*6
cond.R,
*sequential_299_lstm_897_while_cond_4674368*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_299/lstm_897/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_299/lstm_897/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_299/lstm_897/while:output:3Qsequential_299/lstm_897/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_299/lstm_897/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_299/lstm_897/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_299/lstm_897/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_299/lstm_897/strided_slice_3StridedSliceCsequential_299/lstm_897/TensorArrayV2Stack/TensorListStack:tensor:06sequential_299/lstm_897/strided_slice_3/stack:output:08sequential_299/lstm_897/strided_slice_3/stack_1:output:08sequential_299/lstm_897/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_299/lstm_897/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_299/lstm_897/transpose_1	TransposeCsequential_299/lstm_897/TensorArrayV2Stack/TensorListStack:tensor:01sequential_299/lstm_897/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_299/lstm_897/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_299/lstm_898/ShapeShape'sequential_299/lstm_897/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_299/lstm_898/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_299/lstm_898/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_299/lstm_898/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_299/lstm_898/strided_sliceStridedSlice&sequential_299/lstm_898/Shape:output:04sequential_299/lstm_898/strided_slice/stack:output:06sequential_299/lstm_898/strided_slice/stack_1:output:06sequential_299/lstm_898/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_299/lstm_898/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_299/lstm_898/zeros/packedPack.sequential_299/lstm_898/strided_slice:output:0/sequential_299/lstm_898/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_299/lstm_898/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_299/lstm_898/zerosFill-sequential_299/lstm_898/zeros/packed:output:0,sequential_299/lstm_898/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_299/lstm_898/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_299/lstm_898/zeros_1/packedPack.sequential_299/lstm_898/strided_slice:output:01sequential_299/lstm_898/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_299/lstm_898/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_299/lstm_898/zeros_1Fill/sequential_299/lstm_898/zeros_1/packed:output:0.sequential_299/lstm_898/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_299/lstm_898/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_299/lstm_898/transpose	Transpose'sequential_299/lstm_897/transpose_1:y:0/sequential_299/lstm_898/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_299/lstm_898/Shape_1Shape%sequential_299/lstm_898/transpose:y:0*
T0*
_output_shapes
:w
-sequential_299/lstm_898/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_299/lstm_898/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_299/lstm_898/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_299/lstm_898/strided_slice_1StridedSlice(sequential_299/lstm_898/Shape_1:output:06sequential_299/lstm_898/strided_slice_1/stack:output:08sequential_299/lstm_898/strided_slice_1/stack_1:output:08sequential_299/lstm_898/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_299/lstm_898/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_299/lstm_898/TensorArrayV2TensorListReserve<sequential_299/lstm_898/TensorArrayV2/element_shape:output:00sequential_299/lstm_898/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_299/lstm_898/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_299/lstm_898/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_299/lstm_898/transpose:y:0Vsequential_299/lstm_898/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_299/lstm_898/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_299/lstm_898/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_299/lstm_898/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_299/lstm_898/strided_slice_2StridedSlice%sequential_299/lstm_898/transpose:y:06sequential_299/lstm_898/strided_slice_2/stack:output:08sequential_299/lstm_898/strided_slice_2/stack_1:output:08sequential_299/lstm_898/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_299/lstm_898/lstm_cell_772/MatMul/ReadVariableOpReadVariableOpDsequential_299_lstm_898_lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_299/lstm_898/lstm_cell_772/MatMulMatMul0sequential_299/lstm_898/strided_slice_2:output:0Csequential_299/lstm_898/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_299/lstm_898/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOpFsequential_299_lstm_898_lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_299/lstm_898/lstm_cell_772/MatMul_1MatMul&sequential_299/lstm_898/zeros:output:0Esequential_299/lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_299/lstm_898/lstm_cell_772/addAddV26sequential_299/lstm_898/lstm_cell_772/MatMul:product:08sequential_299/lstm_898/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_299/lstm_898/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOpEsequential_299_lstm_898_lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_299/lstm_898/lstm_cell_772/BiasAddBiasAdd-sequential_299/lstm_898/lstm_cell_772/add:z:0Dsequential_299/lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_299/lstm_898/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_299/lstm_898/lstm_cell_772/splitSplit>sequential_299/lstm_898/lstm_cell_772/split/split_dim:output:06sequential_299/lstm_898/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_299/lstm_898/lstm_cell_772/SigmoidSigmoid4sequential_299/lstm_898/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_299/lstm_898/lstm_cell_772/Sigmoid_1Sigmoid4sequential_299/lstm_898/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_299/lstm_898/lstm_cell_772/mulMul3sequential_299/lstm_898/lstm_cell_772/Sigmoid_1:y:0(sequential_299/lstm_898/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_299/lstm_898/lstm_cell_772/ReluRelu4sequential_299/lstm_898/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_299/lstm_898/lstm_cell_772/mul_1Mul1sequential_299/lstm_898/lstm_cell_772/Sigmoid:y:08sequential_299/lstm_898/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_299/lstm_898/lstm_cell_772/add_1AddV2-sequential_299/lstm_898/lstm_cell_772/mul:z:0/sequential_299/lstm_898/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_299/lstm_898/lstm_cell_772/Sigmoid_2Sigmoid4sequential_299/lstm_898/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_299/lstm_898/lstm_cell_772/Relu_1Relu/sequential_299/lstm_898/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_299/lstm_898/lstm_cell_772/mul_2Mul3sequential_299/lstm_898/lstm_cell_772/Sigmoid_2:y:0:sequential_299/lstm_898/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_299/lstm_898/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_299/lstm_898/TensorArrayV2_1TensorListReserve>sequential_299/lstm_898/TensorArrayV2_1/element_shape:output:00sequential_299/lstm_898/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_299/lstm_898/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_299/lstm_898/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_299/lstm_898/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_299/lstm_898/whileWhile3sequential_299/lstm_898/while/loop_counter:output:09sequential_299/lstm_898/while/maximum_iterations:output:0%sequential_299/lstm_898/time:output:00sequential_299/lstm_898/TensorArrayV2_1:handle:0&sequential_299/lstm_898/zeros:output:0(sequential_299/lstm_898/zeros_1:output:00sequential_299/lstm_898/strided_slice_1:output:0Osequential_299/lstm_898/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_299_lstm_898_lstm_cell_772_matmul_readvariableop_resourceFsequential_299_lstm_898_lstm_cell_772_matmul_1_readvariableop_resourceEsequential_299_lstm_898_lstm_cell_772_biasadd_readvariableop_resource*
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
*sequential_299_lstm_898_while_body_4674508*6
cond.R,
*sequential_299_lstm_898_while_cond_4674507*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_299/lstm_898/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_299/lstm_898/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_299/lstm_898/while:output:3Qsequential_299/lstm_898/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_299/lstm_898/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_299/lstm_898/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_299/lstm_898/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_299/lstm_898/strided_slice_3StridedSliceCsequential_299/lstm_898/TensorArrayV2Stack/TensorListStack:tensor:06sequential_299/lstm_898/strided_slice_3/stack:output:08sequential_299/lstm_898/strided_slice_3/stack_1:output:08sequential_299/lstm_898/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_299/lstm_898/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_299/lstm_898/transpose_1	TransposeCsequential_299/lstm_898/TensorArrayV2Stack/TensorListStack:tensor:01sequential_299/lstm_898/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_299/lstm_898/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_299/lstm_899/ShapeShape'sequential_299/lstm_898/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_299/lstm_899/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_299/lstm_899/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_299/lstm_899/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_299/lstm_899/strided_sliceStridedSlice&sequential_299/lstm_899/Shape:output:04sequential_299/lstm_899/strided_slice/stack:output:06sequential_299/lstm_899/strided_slice/stack_1:output:06sequential_299/lstm_899/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_299/lstm_899/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_299/lstm_899/zeros/packedPack.sequential_299/lstm_899/strided_slice:output:0/sequential_299/lstm_899/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_299/lstm_899/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_299/lstm_899/zerosFill-sequential_299/lstm_899/zeros/packed:output:0,sequential_299/lstm_899/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_299/lstm_899/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_299/lstm_899/zeros_1/packedPack.sequential_299/lstm_899/strided_slice:output:01sequential_299/lstm_899/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_299/lstm_899/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_299/lstm_899/zeros_1Fill/sequential_299/lstm_899/zeros_1/packed:output:0.sequential_299/lstm_899/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_299/lstm_899/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_299/lstm_899/transpose	Transpose'sequential_299/lstm_898/transpose_1:y:0/sequential_299/lstm_899/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_299/lstm_899/Shape_1Shape%sequential_299/lstm_899/transpose:y:0*
T0*
_output_shapes
:w
-sequential_299/lstm_899/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_299/lstm_899/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_299/lstm_899/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_299/lstm_899/strided_slice_1StridedSlice(sequential_299/lstm_899/Shape_1:output:06sequential_299/lstm_899/strided_slice_1/stack:output:08sequential_299/lstm_899/strided_slice_1/stack_1:output:08sequential_299/lstm_899/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_299/lstm_899/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_299/lstm_899/TensorArrayV2TensorListReserve<sequential_299/lstm_899/TensorArrayV2/element_shape:output:00sequential_299/lstm_899/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_299/lstm_899/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_299/lstm_899/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_299/lstm_899/transpose:y:0Vsequential_299/lstm_899/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_299/lstm_899/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_299/lstm_899/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_299/lstm_899/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_299/lstm_899/strided_slice_2StridedSlice%sequential_299/lstm_899/transpose:y:06sequential_299/lstm_899/strided_slice_2/stack:output:08sequential_299/lstm_899/strided_slice_2/stack_1:output:08sequential_299/lstm_899/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_299/lstm_899/lstm_cell_773/MatMul/ReadVariableOpReadVariableOpDsequential_299_lstm_899_lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_299/lstm_899/lstm_cell_773/MatMulMatMul0sequential_299/lstm_899/strided_slice_2:output:0Csequential_299/lstm_899/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_299/lstm_899/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOpFsequential_299_lstm_899_lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_299/lstm_899/lstm_cell_773/MatMul_1MatMul&sequential_299/lstm_899/zeros:output:0Esequential_299/lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_299/lstm_899/lstm_cell_773/addAddV26sequential_299/lstm_899/lstm_cell_773/MatMul:product:08sequential_299/lstm_899/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_299/lstm_899/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOpEsequential_299_lstm_899_lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_299/lstm_899/lstm_cell_773/BiasAddBiasAdd-sequential_299/lstm_899/lstm_cell_773/add:z:0Dsequential_299/lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_299/lstm_899/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_299/lstm_899/lstm_cell_773/splitSplit>sequential_299/lstm_899/lstm_cell_773/split/split_dim:output:06sequential_299/lstm_899/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_299/lstm_899/lstm_cell_773/SigmoidSigmoid4sequential_299/lstm_899/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_299/lstm_899/lstm_cell_773/Sigmoid_1Sigmoid4sequential_299/lstm_899/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_299/lstm_899/lstm_cell_773/mulMul3sequential_299/lstm_899/lstm_cell_773/Sigmoid_1:y:0(sequential_299/lstm_899/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_299/lstm_899/lstm_cell_773/ReluRelu4sequential_299/lstm_899/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_299/lstm_899/lstm_cell_773/mul_1Mul1sequential_299/lstm_899/lstm_cell_773/Sigmoid:y:08sequential_299/lstm_899/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_299/lstm_899/lstm_cell_773/add_1AddV2-sequential_299/lstm_899/lstm_cell_773/mul:z:0/sequential_299/lstm_899/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_299/lstm_899/lstm_cell_773/Sigmoid_2Sigmoid4sequential_299/lstm_899/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_299/lstm_899/lstm_cell_773/Relu_1Relu/sequential_299/lstm_899/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_299/lstm_899/lstm_cell_773/mul_2Mul3sequential_299/lstm_899/lstm_cell_773/Sigmoid_2:y:0:sequential_299/lstm_899/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_299/lstm_899/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_299/lstm_899/TensorArrayV2_1TensorListReserve>sequential_299/lstm_899/TensorArrayV2_1/element_shape:output:00sequential_299/lstm_899/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_299/lstm_899/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_299/lstm_899/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_299/lstm_899/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_299/lstm_899/whileWhile3sequential_299/lstm_899/while/loop_counter:output:09sequential_299/lstm_899/while/maximum_iterations:output:0%sequential_299/lstm_899/time:output:00sequential_299/lstm_899/TensorArrayV2_1:handle:0&sequential_299/lstm_899/zeros:output:0(sequential_299/lstm_899/zeros_1:output:00sequential_299/lstm_899/strided_slice_1:output:0Osequential_299/lstm_899/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_299_lstm_899_lstm_cell_773_matmul_readvariableop_resourceFsequential_299_lstm_899_lstm_cell_773_matmul_1_readvariableop_resourceEsequential_299_lstm_899_lstm_cell_773_biasadd_readvariableop_resource*
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
*sequential_299_lstm_899_while_body_4674647*6
cond.R,
*sequential_299_lstm_899_while_cond_4674646*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_299/lstm_899/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_299/lstm_899/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_299/lstm_899/while:output:3Qsequential_299/lstm_899/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_299/lstm_899/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_299/lstm_899/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_299/lstm_899/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_299/lstm_899/strided_slice_3StridedSliceCsequential_299/lstm_899/TensorArrayV2Stack/TensorListStack:tensor:06sequential_299/lstm_899/strided_slice_3/stack:output:08sequential_299/lstm_899/strided_slice_3/stack_1:output:08sequential_299/lstm_899/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_299/lstm_899/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_299/lstm_899/transpose_1	TransposeCsequential_299/lstm_899/TensorArrayV2Stack/TensorListStack:tensor:01sequential_299/lstm_899/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_299/lstm_899/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_299/dense_299/MatMul/ReadVariableOpReadVariableOp7sequential_299_dense_299_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_299/dense_299/MatMulMatMul0sequential_299/lstm_899/strided_slice_3:output:06sequential_299/dense_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_299/dense_299/BiasAdd/ReadVariableOpReadVariableOp8sequential_299_dense_299_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_299/dense_299/BiasAddBiasAdd)sequential_299/dense_299/MatMul:product:07sequential_299/dense_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_299/dense_299/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_299/dense_299/BiasAdd/ReadVariableOp/^sequential_299/dense_299/MatMul/ReadVariableOp=^sequential_299/lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp<^sequential_299/lstm_897/lstm_cell_771/MatMul/ReadVariableOp>^sequential_299/lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp^sequential_299/lstm_897/while=^sequential_299/lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp<^sequential_299/lstm_898/lstm_cell_772/MatMul/ReadVariableOp>^sequential_299/lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp^sequential_299/lstm_898/while=^sequential_299/lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp<^sequential_299/lstm_899/lstm_cell_773/MatMul/ReadVariableOp>^sequential_299/lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp^sequential_299/lstm_899/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_299/dense_299/BiasAdd/ReadVariableOp/sequential_299/dense_299/BiasAdd/ReadVariableOp2`
.sequential_299/dense_299/MatMul/ReadVariableOp.sequential_299/dense_299/MatMul/ReadVariableOp2|
<sequential_299/lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp<sequential_299/lstm_897/lstm_cell_771/BiasAdd/ReadVariableOp2z
;sequential_299/lstm_897/lstm_cell_771/MatMul/ReadVariableOp;sequential_299/lstm_897/lstm_cell_771/MatMul/ReadVariableOp2~
=sequential_299/lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp=sequential_299/lstm_897/lstm_cell_771/MatMul_1/ReadVariableOp2>
sequential_299/lstm_897/whilesequential_299/lstm_897/while2|
<sequential_299/lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp<sequential_299/lstm_898/lstm_cell_772/BiasAdd/ReadVariableOp2z
;sequential_299/lstm_898/lstm_cell_772/MatMul/ReadVariableOp;sequential_299/lstm_898/lstm_cell_772/MatMul/ReadVariableOp2~
=sequential_299/lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp=sequential_299/lstm_898/lstm_cell_772/MatMul_1/ReadVariableOp2>
sequential_299/lstm_898/whilesequential_299/lstm_898/while2|
<sequential_299/lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp<sequential_299/lstm_899/lstm_cell_773/BiasAdd/ReadVariableOp2z
;sequential_299/lstm_899/lstm_cell_773/MatMul/ReadVariableOp;sequential_299/lstm_899/lstm_cell_773/MatMul/ReadVariableOp2~
=sequential_299/lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp=sequential_299/lstm_899/lstm_cell_773/MatMul_1/ReadVariableOp2>
sequential_299/lstm_899/whilesequential_299/lstm_899/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_897_input
?

?
lstm_899_while_cond_4677387.
*lstm_899_while_lstm_899_while_loop_counter4
0lstm_899_while_lstm_899_while_maximum_iterations
lstm_899_while_placeholder 
lstm_899_while_placeholder_1 
lstm_899_while_placeholder_2 
lstm_899_while_placeholder_30
,lstm_899_while_less_lstm_899_strided_slice_1G
Clstm_899_while_lstm_899_while_cond_4677387___redundant_placeholder0G
Clstm_899_while_lstm_899_while_cond_4677387___redundant_placeholder1G
Clstm_899_while_lstm_899_while_cond_4677387___redundant_placeholder2G
Clstm_899_while_lstm_899_while_cond_4677387___redundant_placeholder3
lstm_899_while_identity
?
lstm_899/while/LessLesslstm_899_while_placeholder,lstm_899_while_less_lstm_899_strided_slice_1*
T0*
_output_shapes
: ]
lstm_899/while/IdentityIdentitylstm_899/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_899_while_identity lstm_899/while/Identity:output:0*(
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4679137

inputs?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4679053*
condR
while_cond_4679052*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4678293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4678293___redundant_placeholder05
1while_while_cond_4678293___redundant_placeholder15
1while_while_cond_4678293___redundant_placeholder25
1while_while_cond_4678293___redundant_placeholder3
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
?W
?
 __inference__traced_save_4680209
file_prefix/
+savev2_dense_299_kernel_read_readvariableop-
)savev2_dense_299_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_897_lstm_cell_897_kernel_read_readvariableopF
Bsavev2_lstm_897_lstm_cell_897_recurrent_kernel_read_readvariableop:
6savev2_lstm_897_lstm_cell_897_bias_read_readvariableop<
8savev2_lstm_898_lstm_cell_898_kernel_read_readvariableopF
Bsavev2_lstm_898_lstm_cell_898_recurrent_kernel_read_readvariableop:
6savev2_lstm_898_lstm_cell_898_bias_read_readvariableop<
8savev2_lstm_899_lstm_cell_899_kernel_read_readvariableopF
Bsavev2_lstm_899_lstm_cell_899_recurrent_kernel_read_readvariableop:
6savev2_lstm_899_lstm_cell_899_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_299_kernel_m_read_readvariableop4
0savev2_adam_dense_299_bias_m_read_readvariableopC
?savev2_adam_lstm_897_lstm_cell_897_kernel_m_read_readvariableopM
Isavev2_adam_lstm_897_lstm_cell_897_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_897_lstm_cell_897_bias_m_read_readvariableopC
?savev2_adam_lstm_898_lstm_cell_898_kernel_m_read_readvariableopM
Isavev2_adam_lstm_898_lstm_cell_898_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_898_lstm_cell_898_bias_m_read_readvariableopC
?savev2_adam_lstm_899_lstm_cell_899_kernel_m_read_readvariableopM
Isavev2_adam_lstm_899_lstm_cell_899_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_899_lstm_cell_899_bias_m_read_readvariableop6
2savev2_adam_dense_299_kernel_v_read_readvariableop4
0savev2_adam_dense_299_bias_v_read_readvariableopC
?savev2_adam_lstm_897_lstm_cell_897_kernel_v_read_readvariableopM
Isavev2_adam_lstm_897_lstm_cell_897_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_897_lstm_cell_897_bias_v_read_readvariableopC
?savev2_adam_lstm_898_lstm_cell_898_kernel_v_read_readvariableopM
Isavev2_adam_lstm_898_lstm_cell_898_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_898_lstm_cell_898_bias_v_read_readvariableopC
?savev2_adam_lstm_899_lstm_cell_899_kernel_v_read_readvariableopM
Isavev2_adam_lstm_899_lstm_cell_899_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_899_lstm_cell_899_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_299_kernel_read_readvariableop)savev2_dense_299_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_897_lstm_cell_897_kernel_read_readvariableopBsavev2_lstm_897_lstm_cell_897_recurrent_kernel_read_readvariableop6savev2_lstm_897_lstm_cell_897_bias_read_readvariableop8savev2_lstm_898_lstm_cell_898_kernel_read_readvariableopBsavev2_lstm_898_lstm_cell_898_recurrent_kernel_read_readvariableop6savev2_lstm_898_lstm_cell_898_bias_read_readvariableop8savev2_lstm_899_lstm_cell_899_kernel_read_readvariableopBsavev2_lstm_899_lstm_cell_899_recurrent_kernel_read_readvariableop6savev2_lstm_899_lstm_cell_899_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_299_kernel_m_read_readvariableop0savev2_adam_dense_299_bias_m_read_readvariableop?savev2_adam_lstm_897_lstm_cell_897_kernel_m_read_readvariableopIsavev2_adam_lstm_897_lstm_cell_897_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_897_lstm_cell_897_bias_m_read_readvariableop?savev2_adam_lstm_898_lstm_cell_898_kernel_m_read_readvariableopIsavev2_adam_lstm_898_lstm_cell_898_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_898_lstm_cell_898_bias_m_read_readvariableop?savev2_adam_lstm_899_lstm_cell_899_kernel_m_read_readvariableopIsavev2_adam_lstm_899_lstm_cell_899_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_899_lstm_cell_899_bias_m_read_readvariableop2savev2_adam_dense_299_kernel_v_read_readvariableop0savev2_adam_dense_299_bias_v_read_readvariableop?savev2_adam_lstm_897_lstm_cell_897_kernel_v_read_readvariableopIsavev2_adam_lstm_897_lstm_cell_897_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_897_lstm_cell_897_bias_v_read_readvariableop?savev2_adam_lstm_898_lstm_cell_898_kernel_v_read_readvariableopIsavev2_adam_lstm_898_lstm_cell_898_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_898_lstm_cell_898_bias_v_read_readvariableop?savev2_adam_lstm_899_lstm_cell_899_kernel_v_read_readvariableopIsavev2_adam_lstm_899_lstm_cell_899_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_899_lstm_cell_899_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4676086

inputs?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4676002*
condR
while_cond_4676001*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_898_while_cond_4677248.
*lstm_898_while_lstm_898_while_loop_counter4
0lstm_898_while_lstm_898_while_maximum_iterations
lstm_898_while_placeholder 
lstm_898_while_placeholder_1 
lstm_898_while_placeholder_2 
lstm_898_while_placeholder_30
,lstm_898_while_less_lstm_898_strided_slice_1G
Clstm_898_while_lstm_898_while_cond_4677248___redundant_placeholder0G
Clstm_898_while_lstm_898_while_cond_4677248___redundant_placeholder1G
Clstm_898_while_lstm_898_while_cond_4677248___redundant_placeholder2G
Clstm_898_while_lstm_898_while_cond_4677248___redundant_placeholder3
lstm_898_while_identity
?
lstm_898/while/LessLesslstm_898_while_placeholder,lstm_898_while_less_lstm_898_strided_slice_1*
T0*
_output_shapes
: ]
lstm_898/while/IdentityIdentitylstm_898/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_898_while_identity lstm_898/while/Identity:output:0*(
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
*__inference_lstm_897_layer_call_fn_4677949

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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4676782s
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
*__inference_lstm_897_layer_call_fn_4677927
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4675078|
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
?
?
while_cond_4675358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4675358___redundant_placeholder05
1while_while_cond_4675358___redundant_placeholder15
1while_while_cond_4675358___redundant_placeholder25
1while_while_cond_4675358___redundant_placeholder3
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
*__inference_lstm_897_layer_call_fn_4677938

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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4675936s
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
?8
?
while_body_4678767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_772_layer_call_fn_4679887

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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4675154o
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
?
?
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4675300

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

?
%__inference_signature_wrapper_4676997
lstm_897_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_897_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4674737o
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
_user_specified_namelstm_897_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_897_input;
 serving_default_lstm_897_input:0?????????=
	dense_2990
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
2dense_299/kernel
:2dense_299/bias
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
0:.	?2lstm_897/lstm_cell_897/kernel
::8	d?2'lstm_897/lstm_cell_897/recurrent_kernel
*:(?2lstm_897/lstm_cell_897/bias
0:.	d?2lstm_898/lstm_cell_898/kernel
::8	2?2'lstm_898/lstm_cell_898/recurrent_kernel
*:(?2lstm_898/lstm_cell_898/bias
/:-2(2lstm_899/lstm_cell_899/kernel
9:7
(2'lstm_899/lstm_cell_899/recurrent_kernel
):'(2lstm_899/lstm_cell_899/bias
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
2Adam/dense_299/kernel/m
!:2Adam/dense_299/bias/m
5:3	?2$Adam/lstm_897/lstm_cell_897/kernel/m
?:=	d?2.Adam/lstm_897/lstm_cell_897/recurrent_kernel/m
/:-?2"Adam/lstm_897/lstm_cell_897/bias/m
5:3	d?2$Adam/lstm_898/lstm_cell_898/kernel/m
?:=	2?2.Adam/lstm_898/lstm_cell_898/recurrent_kernel/m
/:-?2"Adam/lstm_898/lstm_cell_898/bias/m
4:22(2$Adam/lstm_899/lstm_cell_899/kernel/m
>:<
(2.Adam/lstm_899/lstm_cell_899/recurrent_kernel/m
.:,(2"Adam/lstm_899/lstm_cell_899/bias/m
':%
2Adam/dense_299/kernel/v
!:2Adam/dense_299/bias/v
5:3	?2$Adam/lstm_897/lstm_cell_897/kernel/v
?:=	d?2.Adam/lstm_897/lstm_cell_897/recurrent_kernel/v
/:-?2"Adam/lstm_897/lstm_cell_897/bias/v
5:3	d?2$Adam/lstm_898/lstm_cell_898/kernel/v
?:=	2?2.Adam/lstm_898/lstm_cell_898/recurrent_kernel/v
/:-?2"Adam/lstm_898/lstm_cell_898/bias/v
4:22(2$Adam/lstm_899/lstm_cell_899/kernel/v
>:<
(2.Adam/lstm_899/lstm_cell_899/recurrent_kernel/v
.:,(2"Adam/lstm_899/lstm_cell_899/bias/v
?2?
0__inference_sequential_299_layer_call_fn_4676286
0__inference_sequential_299_layer_call_fn_4677024
0__inference_sequential_299_layer_call_fn_4677051
0__inference_sequential_299_layer_call_fn_4676902?
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
K__inference_sequential_299_layer_call_and_return_conditional_losses_4677478
K__inference_sequential_299_layer_call_and_return_conditional_losses_4677905
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676932
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676962?
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
"__inference__wrapped_model_4674737lstm_897_input"?
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
*__inference_lstm_897_layer_call_fn_4677916
*__inference_lstm_897_layer_call_fn_4677927
*__inference_lstm_897_layer_call_fn_4677938
*__inference_lstm_897_layer_call_fn_4677949?
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678092
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678235
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678378
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678521?
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
*__inference_lstm_898_layer_call_fn_4678532
*__inference_lstm_898_layer_call_fn_4678543
*__inference_lstm_898_layer_call_fn_4678554
*__inference_lstm_898_layer_call_fn_4678565?
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4678708
E__inference_lstm_898_layer_call_and_return_conditional_losses_4678851
E__inference_lstm_898_layer_call_and_return_conditional_losses_4678994
E__inference_lstm_898_layer_call_and_return_conditional_losses_4679137?
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
*__inference_lstm_899_layer_call_fn_4679148
*__inference_lstm_899_layer_call_fn_4679159
*__inference_lstm_899_layer_call_fn_4679170
*__inference_lstm_899_layer_call_fn_4679181?
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679324
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679467
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679610
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679753?
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
+__inference_dense_299_layer_call_fn_4679762?
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
F__inference_dense_299_layer_call_and_return_conditional_losses_4679772?
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
%__inference_signature_wrapper_4676997lstm_897_input"?
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
/__inference_lstm_cell_771_layer_call_fn_4679789
/__inference_lstm_cell_771_layer_call_fn_4679806?
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4679838
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4679870?
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
/__inference_lstm_cell_772_layer_call_fn_4679887
/__inference_lstm_cell_772_layer_call_fn_4679904?
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4679936
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4679968?
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
/__inference_lstm_cell_773_layer_call_fn_4679985
/__inference_lstm_cell_773_layer_call_fn_4680002?
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4680034
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4680066?
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
"__inference__wrapped_model_4674737?-./012345!";?8
1?.
,?)
lstm_897_input?????????
? "5?2
0
	dense_299#? 
	dense_299??????????
F__inference_dense_299_layer_call_and_return_conditional_losses_4679772\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_299_layer_call_fn_4679762O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678092?-./O?L
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678235?-./O?L
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678378q-./??<
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
E__inference_lstm_897_layer_call_and_return_conditional_losses_4678521q-./??<
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
*__inference_lstm_897_layer_call_fn_4677916}-./O?L
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
*__inference_lstm_897_layer_call_fn_4677927}-./O?L
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
*__inference_lstm_897_layer_call_fn_4677938d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_897_layer_call_fn_4677949d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_898_layer_call_and_return_conditional_losses_4678708?012O?L
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4678851?012O?L
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4678994q012??<
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
E__inference_lstm_898_layer_call_and_return_conditional_losses_4679137q012??<
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
*__inference_lstm_898_layer_call_fn_4678532}012O?L
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
*__inference_lstm_898_layer_call_fn_4678543}012O?L
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
*__inference_lstm_898_layer_call_fn_4678554d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_898_layer_call_fn_4678565d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679324}345O?L
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679467}345O?L
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679610m345??<
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
E__inference_lstm_899_layer_call_and_return_conditional_losses_4679753m345??<
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
*__inference_lstm_899_layer_call_fn_4679148p345O?L
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
*__inference_lstm_899_layer_call_fn_4679159p345O?L
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
*__inference_lstm_899_layer_call_fn_4679170`345??<
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
*__inference_lstm_899_layer_call_fn_4679181`345??<
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4679838?-./??}
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4679870?-./??}
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
/__inference_lstm_cell_771_layer_call_fn_4679789?-./??}
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
/__inference_lstm_cell_771_layer_call_fn_4679806?-./??}
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4679936?012??}
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4679968?012??}
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
/__inference_lstm_cell_772_layer_call_fn_4679887?012??}
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
/__inference_lstm_cell_772_layer_call_fn_4679904?012??}
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4680034?345??}
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4680066?345??}
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
/__inference_lstm_cell_773_layer_call_fn_4679985?345??}
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
/__inference_lstm_cell_773_layer_call_fn_4680002?345??}
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
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676932y-./012345!"C?@
9?6
,?)
lstm_897_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_299_layer_call_and_return_conditional_losses_4676962y-./012345!"C?@
9?6
,?)
lstm_897_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_299_layer_call_and_return_conditional_losses_4677478q-./012345!";?8
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
K__inference_sequential_299_layer_call_and_return_conditional_losses_4677905q-./012345!";?8
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
0__inference_sequential_299_layer_call_fn_4676286l-./012345!"C?@
9?6
,?)
lstm_897_input?????????
p 

 
? "???????????
0__inference_sequential_299_layer_call_fn_4676902l-./012345!"C?@
9?6
,?)
lstm_897_input?????????
p

 
? "???????????
0__inference_sequential_299_layer_call_fn_4677024d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_299_layer_call_fn_4677051d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4676997?-./012345!"M?J
? 
C?@
>
lstm_897_input,?)
lstm_897_input?????????"5?2
0
	dense_299#? 
	dense_299?????????