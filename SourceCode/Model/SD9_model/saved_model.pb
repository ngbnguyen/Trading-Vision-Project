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
dense_171/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_171/kernel
u
$dense_171/kernel/Read/ReadVariableOpReadVariableOpdense_171/kernel*
_output_shapes

:
*
dtype0
t
dense_171/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_171/bias
m
"dense_171/bias/Read/ReadVariableOpReadVariableOpdense_171/bias*
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
lstm_513/lstm_cell_513/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_513/lstm_cell_513/kernel
?
1lstm_513/lstm_cell_513/kernel/Read/ReadVariableOpReadVariableOplstm_513/lstm_cell_513/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_513/lstm_cell_513/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_513/lstm_cell_513/recurrent_kernel
?
;lstm_513/lstm_cell_513/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_513/lstm_cell_513/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_513/lstm_cell_513/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_513/lstm_cell_513/bias
?
/lstm_513/lstm_cell_513/bias/Read/ReadVariableOpReadVariableOplstm_513/lstm_cell_513/bias*
_output_shapes	
:?*
dtype0
?
lstm_514/lstm_cell_514/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_514/lstm_cell_514/kernel
?
1lstm_514/lstm_cell_514/kernel/Read/ReadVariableOpReadVariableOplstm_514/lstm_cell_514/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_514/lstm_cell_514/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_514/lstm_cell_514/recurrent_kernel
?
;lstm_514/lstm_cell_514/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_514/lstm_cell_514/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_514/lstm_cell_514/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_514/lstm_cell_514/bias
?
/lstm_514/lstm_cell_514/bias/Read/ReadVariableOpReadVariableOplstm_514/lstm_cell_514/bias*
_output_shapes	
:?*
dtype0
?
lstm_515/lstm_cell_515/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_515/lstm_cell_515/kernel
?
1lstm_515/lstm_cell_515/kernel/Read/ReadVariableOpReadVariableOplstm_515/lstm_cell_515/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_515/lstm_cell_515/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_515/lstm_cell_515/recurrent_kernel
?
;lstm_515/lstm_cell_515/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_515/lstm_cell_515/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_515/lstm_cell_515/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_515/lstm_cell_515/bias
?
/lstm_515/lstm_cell_515/bias/Read/ReadVariableOpReadVariableOplstm_515/lstm_cell_515/bias*
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
Adam/dense_171/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_171/kernel/m
?
+Adam/dense_171/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_171/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_171/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_171/bias/m
{
)Adam/dense_171/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_171/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_513/lstm_cell_513/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_513/lstm_cell_513/kernel/m
?
8Adam/lstm_513/lstm_cell_513/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_513/lstm_cell_513/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_513/lstm_cell_513/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_513/lstm_cell_513/recurrent_kernel/m
?
BAdam/lstm_513/lstm_cell_513/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_513/lstm_cell_513/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_513/lstm_cell_513/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_513/lstm_cell_513/bias/m
?
6Adam/lstm_513/lstm_cell_513/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_513/lstm_cell_513/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_514/lstm_cell_514/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_514/lstm_cell_514/kernel/m
?
8Adam/lstm_514/lstm_cell_514/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_514/lstm_cell_514/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_514/lstm_cell_514/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_514/lstm_cell_514/recurrent_kernel/m
?
BAdam/lstm_514/lstm_cell_514/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_514/lstm_cell_514/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_514/lstm_cell_514/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_514/lstm_cell_514/bias/m
?
6Adam/lstm_514/lstm_cell_514/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_514/lstm_cell_514/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_515/lstm_cell_515/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_515/lstm_cell_515/kernel/m
?
8Adam/lstm_515/lstm_cell_515/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_515/lstm_cell_515/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_515/lstm_cell_515/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_515/lstm_cell_515/recurrent_kernel/m
?
BAdam/lstm_515/lstm_cell_515/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_515/lstm_cell_515/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_515/lstm_cell_515/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_515/lstm_cell_515/bias/m
?
6Adam/lstm_515/lstm_cell_515/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_515/lstm_cell_515/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_171/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_171/kernel/v
?
+Adam/dense_171/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_171/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_171/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_171/bias/v
{
)Adam/dense_171/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_171/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_513/lstm_cell_513/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_513/lstm_cell_513/kernel/v
?
8Adam/lstm_513/lstm_cell_513/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_513/lstm_cell_513/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_513/lstm_cell_513/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_513/lstm_cell_513/recurrent_kernel/v
?
BAdam/lstm_513/lstm_cell_513/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_513/lstm_cell_513/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_513/lstm_cell_513/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_513/lstm_cell_513/bias/v
?
6Adam/lstm_513/lstm_cell_513/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_513/lstm_cell_513/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_514/lstm_cell_514/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_514/lstm_cell_514/kernel/v
?
8Adam/lstm_514/lstm_cell_514/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_514/lstm_cell_514/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_514/lstm_cell_514/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_514/lstm_cell_514/recurrent_kernel/v
?
BAdam/lstm_514/lstm_cell_514/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_514/lstm_cell_514/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_514/lstm_cell_514/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_514/lstm_cell_514/bias/v
?
6Adam/lstm_514/lstm_cell_514/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_514/lstm_cell_514/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_515/lstm_cell_515/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_515/lstm_cell_515/kernel/v
?
8Adam/lstm_515/lstm_cell_515/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_515/lstm_cell_515/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_515/lstm_cell_515/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_515/lstm_cell_515/recurrent_kernel/v
?
BAdam/lstm_515/lstm_cell_515/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_515/lstm_cell_515/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_515/lstm_cell_515/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_515/lstm_cell_515/bias/v
?
6Adam/lstm_515/lstm_cell_515/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_515/lstm_cell_515/bias/v*
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
VARIABLE_VALUEdense_171/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_171/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_513/lstm_cell_513/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_513/lstm_cell_513/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_513/lstm_cell_513/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_514/lstm_cell_514/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_514/lstm_cell_514/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_514/lstm_cell_514/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_515/lstm_cell_515/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_515/lstm_cell_515/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_515/lstm_cell_515/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_171/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_171/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_513/lstm_cell_513/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_513/lstm_cell_513/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_513/lstm_cell_513/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_514/lstm_cell_514/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_514/lstm_cell_514/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_514/lstm_cell_514/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_515/lstm_cell_515/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_515/lstm_cell_515/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_515/lstm_cell_515/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_171/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_171/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_513/lstm_cell_513/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_513/lstm_cell_513/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_513/lstm_cell_513/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_514/lstm_cell_514/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_514/lstm_cell_514/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_514/lstm_cell_514/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_515/lstm_cell_515/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_515/lstm_cell_515/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_515/lstm_cell_515/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_513_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_513_inputlstm_513/lstm_cell_513/kernel'lstm_513/lstm_cell_513/recurrent_kernellstm_513/lstm_cell_513/biaslstm_514/lstm_cell_514/kernel'lstm_514/lstm_cell_514/recurrent_kernellstm_514/lstm_cell_514/biaslstm_515/lstm_cell_515/kernel'lstm_515/lstm_cell_515/recurrent_kernellstm_515/lstm_cell_515/biasdense_171/kerneldense_171/bias*
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
%__inference_signature_wrapper_3462694
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_171/kernel/Read/ReadVariableOp"dense_171/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_513/lstm_cell_513/kernel/Read/ReadVariableOp;lstm_513/lstm_cell_513/recurrent_kernel/Read/ReadVariableOp/lstm_513/lstm_cell_513/bias/Read/ReadVariableOp1lstm_514/lstm_cell_514/kernel/Read/ReadVariableOp;lstm_514/lstm_cell_514/recurrent_kernel/Read/ReadVariableOp/lstm_514/lstm_cell_514/bias/Read/ReadVariableOp1lstm_515/lstm_cell_515/kernel/Read/ReadVariableOp;lstm_515/lstm_cell_515/recurrent_kernel/Read/ReadVariableOp/lstm_515/lstm_cell_515/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_171/kernel/m/Read/ReadVariableOp)Adam/dense_171/bias/m/Read/ReadVariableOp8Adam/lstm_513/lstm_cell_513/kernel/m/Read/ReadVariableOpBAdam/lstm_513/lstm_cell_513/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_513/lstm_cell_513/bias/m/Read/ReadVariableOp8Adam/lstm_514/lstm_cell_514/kernel/m/Read/ReadVariableOpBAdam/lstm_514/lstm_cell_514/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_514/lstm_cell_514/bias/m/Read/ReadVariableOp8Adam/lstm_515/lstm_cell_515/kernel/m/Read/ReadVariableOpBAdam/lstm_515/lstm_cell_515/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_515/lstm_cell_515/bias/m/Read/ReadVariableOp+Adam/dense_171/kernel/v/Read/ReadVariableOp)Adam/dense_171/bias/v/Read/ReadVariableOp8Adam/lstm_513/lstm_cell_513/kernel/v/Read/ReadVariableOpBAdam/lstm_513/lstm_cell_513/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_513/lstm_cell_513/bias/v/Read/ReadVariableOp8Adam/lstm_514/lstm_cell_514/kernel/v/Read/ReadVariableOpBAdam/lstm_514/lstm_cell_514/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_514/lstm_cell_514/bias/v/Read/ReadVariableOp8Adam/lstm_515/lstm_cell_515/kernel/v/Read/ReadVariableOpBAdam/lstm_515/lstm_cell_515/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_515/lstm_cell_515/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3465906
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_171/kerneldense_171/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_513/lstm_cell_513/kernel'lstm_513/lstm_cell_513/recurrent_kernellstm_513/lstm_cell_513/biaslstm_514/lstm_cell_514/kernel'lstm_514/lstm_cell_514/recurrent_kernellstm_514/lstm_cell_514/biaslstm_515/lstm_cell_515/kernel'lstm_515/lstm_cell_515/recurrent_kernellstm_515/lstm_cell_515/biastotalcountAdam/dense_171/kernel/mAdam/dense_171/bias/m$Adam/lstm_513/lstm_cell_513/kernel/m.Adam/lstm_513/lstm_cell_513/recurrent_kernel/m"Adam/lstm_513/lstm_cell_513/bias/m$Adam/lstm_514/lstm_cell_514/kernel/m.Adam/lstm_514/lstm_cell_514/recurrent_kernel/m"Adam/lstm_514/lstm_cell_514/bias/m$Adam/lstm_515/lstm_cell_515/kernel/m.Adam/lstm_515/lstm_cell_515/recurrent_kernel/m"Adam/lstm_515/lstm_cell_515/bias/mAdam/dense_171/kernel/vAdam/dense_171/bias/v$Adam/lstm_513/lstm_cell_513/kernel/v.Adam/lstm_513/lstm_cell_513/recurrent_kernel/v"Adam/lstm_513/lstm_cell_513/bias/v$Adam/lstm_514/lstm_cell_514/kernel/v.Adam/lstm_514/lstm_cell_514/recurrent_kernel/v"Adam/lstm_514/lstm_cell_514/bias/v$Adam/lstm_515/lstm_cell_515/kernel/v.Adam/lstm_515/lstm_cell_515/recurrent_kernel/v"Adam/lstm_515/lstm_cell_515/bias/v*4
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
#__inference__traced_restore_3466036??+
?#
?
while_body_3460865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_571_3460889_0:	d?0
while_lstm_cell_571_3460891_0:	2?,
while_lstm_cell_571_3460893_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_571_3460889:	d?.
while_lstm_cell_571_3460891:	2?*
while_lstm_cell_571_3460893:	???+while/lstm_cell_571/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_571/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_571_3460889_0while_lstm_cell_571_3460891_0while_lstm_cell_571_3460893_0*
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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3460851?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_571/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_571/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_571/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_571/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_571_3460889while_lstm_cell_571_3460889_0"<
while_lstm_cell_571_3460891while_lstm_cell_571_3460891_0"<
while_lstm_cell_571_3460893while_lstm_cell_571_3460893_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_571/StatefulPartitionedCall+while/lstm_cell_571/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_171_layer_call_fn_3461983
lstm_513_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_513_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_171_layer_call_and_return_conditional_losses_3461958o
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
_user_specified_namelstm_513_input
?J
?
E__inference_lstm_515_layer_call_and_return_conditional_losses_3461933

inputs>
,lstm_cell_572_matmul_readvariableop_resource:2(@
.lstm_cell_572_matmul_1_readvariableop_resource:
(;
-lstm_cell_572_biasadd_readvariableop_resource:(
identity??$lstm_cell_572/BiasAdd/ReadVariableOp?#lstm_cell_572/MatMul/ReadVariableOp?%lstm_cell_572/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_572/MatMul/ReadVariableOpReadVariableOp,lstm_cell_572_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_572/MatMulMatMulstrided_slice_2:output:0+lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_572_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_572/MatMul_1MatMulzeros:output:0-lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_572/addAddV2lstm_cell_572/MatMul:product:0 lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_572_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_572/BiasAddBiasAddlstm_cell_572/add:z:0,lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_572/splitSplit&lstm_cell_572/split/split_dim:output:0lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_572/SigmoidSigmoidlstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_1Sigmoidlstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_572/mulMullstm_cell_572/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_572/ReluRelulstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_1Mullstm_cell_572/Sigmoid:y:0 lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_572/add_1AddV2lstm_cell_572/mul:z:0lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_2Sigmoidlstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_572/Relu_1Relulstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_2Mullstm_cell_572/Sigmoid_2:y:0"lstm_cell_572/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_572_matmul_readvariableop_resource.lstm_cell_572_matmul_1_readvariableop_resource-lstm_cell_572_biasadd_readvariableop_resource*
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
while_body_3461849*
condR
while_cond_3461848*K
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
NoOpNoOp%^lstm_cell_572/BiasAdd/ReadVariableOp$^lstm_cell_572/MatMul/ReadVariableOp&^lstm_cell_572/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_572/BiasAdd/ReadVariableOp$lstm_cell_572/BiasAdd/ReadVariableOp2J
#lstm_cell_572/MatMul/ReadVariableOp#lstm_cell_572/MatMul/ReadVariableOp2N
%lstm_cell_572/MatMul_1/ReadVariableOp%lstm_cell_572/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3463990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3463990___redundant_placeholder05
1while_while_cond_3463990___redundant_placeholder15
1while_while_cond_3463990___redundant_placeholder25
1while_while_cond_3463990___redundant_placeholder3
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
while_body_3461699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_571_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_571_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_571_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_571_matmul_readvariableop_resource:	d?G
4while_lstm_cell_571_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_571_biasadd_readvariableop_resource:	???*while/lstm_cell_571/BiasAdd/ReadVariableOp?)while/lstm_cell_571/MatMul/ReadVariableOp?+while/lstm_cell_571/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_571/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_571_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_571/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_571_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_571/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_571/addAddV2$while/lstm_cell_571/MatMul:product:0&while/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_571_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_571/BiasAddBiasAddwhile/lstm_cell_571/add:z:02while/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_571/splitSplit,while/lstm_cell_571/split/split_dim:output:0$while/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_571/SigmoidSigmoid"while/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_1Sigmoid"while/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mulMul!while/lstm_cell_571/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_571/ReluRelu"while/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_1Mulwhile/lstm_cell_571/Sigmoid:y:0&while/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/add_1AddV2while/lstm_cell_571/mul:z:0while/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_2Sigmoid"while/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_571/Relu_1Reluwhile/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_2Mul!while/lstm_cell_571/Sigmoid_2:y:0(while/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_571/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_571/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_571/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_571/BiasAdd/ReadVariableOp*^while/lstm_cell_571/MatMul/ReadVariableOp,^while/lstm_cell_571/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_571_biasadd_readvariableop_resource5while_lstm_cell_571_biasadd_readvariableop_resource_0"n
4while_lstm_cell_571_matmul_1_readvariableop_resource6while_lstm_cell_571_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_571_matmul_readvariableop_resource4while_lstm_cell_571_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_571/BiasAdd/ReadVariableOp*while/lstm_cell_571/BiasAdd/ReadVariableOp2V
)while/lstm_cell_571/MatMul/ReadVariableOp)while/lstm_cell_571/MatMul/ReadVariableOp2Z
+while/lstm_cell_571/MatMul_1/ReadVariableOp+while/lstm_cell_571/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3462314

inputs?
,lstm_cell_571_matmul_readvariableop_resource:	d?A
.lstm_cell_571_matmul_1_readvariableop_resource:	2?<
-lstm_cell_571_biasadd_readvariableop_resource:	?
identity??$lstm_cell_571/BiasAdd/ReadVariableOp?#lstm_cell_571/MatMul/ReadVariableOp?%lstm_cell_571/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_571/MatMul/ReadVariableOpReadVariableOp,lstm_cell_571_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_571/MatMulMatMulstrided_slice_2:output:0+lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_571_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_571/MatMul_1MatMulzeros:output:0-lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_571/addAddV2lstm_cell_571/MatMul:product:0 lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_571_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_571/BiasAddBiasAddlstm_cell_571/add:z:0,lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_571/splitSplit&lstm_cell_571/split/split_dim:output:0lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_571/SigmoidSigmoidlstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_1Sigmoidlstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_571/mulMullstm_cell_571/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_571/ReluRelulstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_1Mullstm_cell_571/Sigmoid:y:0 lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_571/add_1AddV2lstm_cell_571/mul:z:0lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_2Sigmoidlstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_571/Relu_1Relulstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_2Mullstm_cell_571/Sigmoid_2:y:0"lstm_cell_571/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_571_matmul_readvariableop_resource.lstm_cell_571_matmul_1_readvariableop_resource-lstm_cell_571_biasadd_readvariableop_resource*
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
while_body_3462230*
condR
while_cond_3462229*K
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
NoOpNoOp%^lstm_cell_571/BiasAdd/ReadVariableOp$^lstm_cell_571/MatMul/ReadVariableOp&^lstm_cell_571/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_571/BiasAdd/ReadVariableOp$lstm_cell_571/BiasAdd/ReadVariableOp2J
#lstm_cell_571/MatMul/ReadVariableOp#lstm_cell_571/MatMul/ReadVariableOp2N
%lstm_cell_571/MatMul_1/ReadVariableOp%lstm_cell_571/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_515_while_body_3463512.
*lstm_515_while_lstm_515_while_loop_counter4
0lstm_515_while_lstm_515_while_maximum_iterations
lstm_515_while_placeholder 
lstm_515_while_placeholder_1 
lstm_515_while_placeholder_2 
lstm_515_while_placeholder_3-
)lstm_515_while_lstm_515_strided_slice_1_0i
elstm_515_while_tensorarrayv2read_tensorlistgetitem_lstm_515_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_515_while_lstm_cell_572_matmul_readvariableop_resource_0:2(Q
?lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource_0:
(L
>lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource_0:(
lstm_515_while_identity
lstm_515_while_identity_1
lstm_515_while_identity_2
lstm_515_while_identity_3
lstm_515_while_identity_4
lstm_515_while_identity_5+
'lstm_515_while_lstm_515_strided_slice_1g
clstm_515_while_tensorarrayv2read_tensorlistgetitem_lstm_515_tensorarrayunstack_tensorlistfromtensorM
;lstm_515_while_lstm_cell_572_matmul_readvariableop_resource:2(O
=lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource:
(J
<lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource:(??3lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp?2lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp?4lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp?
@lstm_515/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_515/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_515_while_tensorarrayv2read_tensorlistgetitem_lstm_515_tensorarrayunstack_tensorlistfromtensor_0lstm_515_while_placeholderIlstm_515/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_515/while/lstm_cell_572/MatMul/ReadVariableOpReadVariableOp=lstm_515_while_lstm_cell_572_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_515/while/lstm_cell_572/MatMulMatMul9lstm_515/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp?lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_515/while/lstm_cell_572/MatMul_1MatMullstm_515_while_placeholder_2<lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_515/while/lstm_cell_572/addAddV2-lstm_515/while/lstm_cell_572/MatMul:product:0/lstm_515/while/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp>lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_515/while/lstm_cell_572/BiasAddBiasAdd$lstm_515/while/lstm_cell_572/add:z:0;lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_515/while/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_515/while/lstm_cell_572/splitSplit5lstm_515/while/lstm_cell_572/split/split_dim:output:0-lstm_515/while/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_515/while/lstm_cell_572/SigmoidSigmoid+lstm_515/while/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_515/while/lstm_cell_572/Sigmoid_1Sigmoid+lstm_515/while/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_515/while/lstm_cell_572/mulMul*lstm_515/while/lstm_cell_572/Sigmoid_1:y:0lstm_515_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_515/while/lstm_cell_572/ReluRelu+lstm_515/while/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_515/while/lstm_cell_572/mul_1Mul(lstm_515/while/lstm_cell_572/Sigmoid:y:0/lstm_515/while/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_515/while/lstm_cell_572/add_1AddV2$lstm_515/while/lstm_cell_572/mul:z:0&lstm_515/while/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_515/while/lstm_cell_572/Sigmoid_2Sigmoid+lstm_515/while/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_515/while/lstm_cell_572/Relu_1Relu&lstm_515/while/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_515/while/lstm_cell_572/mul_2Mul*lstm_515/while/lstm_cell_572/Sigmoid_2:y:01lstm_515/while/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_515/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_515_while_placeholder_1lstm_515_while_placeholder&lstm_515/while/lstm_cell_572/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_515/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_515/while/addAddV2lstm_515_while_placeholderlstm_515/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_515/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_515/while/add_1AddV2*lstm_515_while_lstm_515_while_loop_counterlstm_515/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_515/while/IdentityIdentitylstm_515/while/add_1:z:0^lstm_515/while/NoOp*
T0*
_output_shapes
: ?
lstm_515/while/Identity_1Identity0lstm_515_while_lstm_515_while_maximum_iterations^lstm_515/while/NoOp*
T0*
_output_shapes
: t
lstm_515/while/Identity_2Identitylstm_515/while/add:z:0^lstm_515/while/NoOp*
T0*
_output_shapes
: ?
lstm_515/while/Identity_3IdentityClstm_515/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_515/while/NoOp*
T0*
_output_shapes
: ?
lstm_515/while/Identity_4Identity&lstm_515/while/lstm_cell_572/mul_2:z:0^lstm_515/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_515/while/Identity_5Identity&lstm_515/while/lstm_cell_572/add_1:z:0^lstm_515/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_515/while/NoOpNoOp4^lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp3^lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp5^lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_515_while_identity lstm_515/while/Identity:output:0"?
lstm_515_while_identity_1"lstm_515/while/Identity_1:output:0"?
lstm_515_while_identity_2"lstm_515/while/Identity_2:output:0"?
lstm_515_while_identity_3"lstm_515/while/Identity_3:output:0"?
lstm_515_while_identity_4"lstm_515/while/Identity_4:output:0"?
lstm_515_while_identity_5"lstm_515/while/Identity_5:output:0"T
'lstm_515_while_lstm_515_strided_slice_1)lstm_515_while_lstm_515_strided_slice_1_0"~
<lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource>lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource_0"?
=lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource?lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource_0"|
;lstm_515_while_lstm_cell_572_matmul_readvariableop_resource=lstm_515_while_lstm_cell_572_matmul_readvariableop_resource_0"?
clstm_515_while_tensorarrayv2read_tensorlistgetitem_lstm_515_tensorarrayunstack_tensorlistfromtensorelstm_515_while_tensorarrayv2read_tensorlistgetitem_lstm_515_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp3lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp2h
2lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp2lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp2l
4lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp4lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3461475

inputs'
lstm_cell_572_3461393:2('
lstm_cell_572_3461395:
(#
lstm_cell_572_3461397:(
identity??%lstm_cell_572/StatefulPartitionedCall?while;
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
%lstm_cell_572/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_572_3461393lstm_cell_572_3461395lstm_cell_572_3461397*
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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3461347n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_572_3461393lstm_cell_572_3461395lstm_cell_572_3461397*
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
while_body_3461406*
condR
while_cond_3461405*K
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
NoOpNoOp&^lstm_cell_572/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_572/StatefulPartitionedCall%lstm_cell_572/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3465080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_572_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_572_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_572_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_572_matmul_readvariableop_resource:2(F
4while_lstm_cell_572_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_572_biasadd_readvariableop_resource:(??*while/lstm_cell_572/BiasAdd/ReadVariableOp?)while/lstm_cell_572/MatMul/ReadVariableOp?+while/lstm_cell_572/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_572/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_572_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_572/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_572_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_572/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_572/addAddV2$while/lstm_cell_572/MatMul:product:0&while/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_572_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_572/BiasAddBiasAddwhile/lstm_cell_572/add:z:02while/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_572/splitSplit,while/lstm_cell_572/split/split_dim:output:0$while/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_572/SigmoidSigmoid"while/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_1Sigmoid"while/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mulMul!while/lstm_cell_572/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_572/ReluRelu"while/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_1Mulwhile/lstm_cell_572/Sigmoid:y:0&while/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/add_1AddV2while/lstm_cell_572/mul:z:0while/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_2Sigmoid"while/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_572/Relu_1Reluwhile/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_2Mul!while/lstm_cell_572/Sigmoid_2:y:0(while/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_572/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_572/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_572/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_572/BiasAdd/ReadVariableOp*^while/lstm_cell_572/MatMul/ReadVariableOp,^while/lstm_cell_572/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_572_biasadd_readvariableop_resource5while_lstm_cell_572_biasadd_readvariableop_resource_0"n
4while_lstm_cell_572_matmul_1_readvariableop_resource6while_lstm_cell_572_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_572_matmul_readvariableop_resource4while_lstm_cell_572_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_572/BiasAdd/ReadVariableOp*while/lstm_cell_572/BiasAdd/ReadVariableOp2V
)while/lstm_cell_572/MatMul/ReadVariableOp)while/lstm_cell_572/MatMul/ReadVariableOp2Z
+while/lstm_cell_572/MatMul_1/ReadVariableOp+while/lstm_cell_572/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_514_while_cond_3462945.
*lstm_514_while_lstm_514_while_loop_counter4
0lstm_514_while_lstm_514_while_maximum_iterations
lstm_514_while_placeholder 
lstm_514_while_placeholder_1 
lstm_514_while_placeholder_2 
lstm_514_while_placeholder_30
,lstm_514_while_less_lstm_514_strided_slice_1G
Clstm_514_while_lstm_514_while_cond_3462945___redundant_placeholder0G
Clstm_514_while_lstm_514_while_cond_3462945___redundant_placeholder1G
Clstm_514_while_lstm_514_while_cond_3462945___redundant_placeholder2G
Clstm_514_while_lstm_514_while_cond_3462945___redundant_placeholder3
lstm_514_while_identity
?
lstm_514/while/LessLesslstm_514_while_placeholder,lstm_514_while_less_lstm_514_strided_slice_1*
T0*
_output_shapes
: ]
lstm_514/while/IdentityIdentitylstm_514/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_514_while_identity lstm_514/while/Identity:output:0*(
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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3465535

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
?
?
/__inference_lstm_cell_570_layer_call_fn_3465486

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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3460501o
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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3465665

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
?J
?
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464834

inputs?
,lstm_cell_571_matmul_readvariableop_resource:	d?A
.lstm_cell_571_matmul_1_readvariableop_resource:	2?<
-lstm_cell_571_biasadd_readvariableop_resource:	?
identity??$lstm_cell_571/BiasAdd/ReadVariableOp?#lstm_cell_571/MatMul/ReadVariableOp?%lstm_cell_571/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_571/MatMul/ReadVariableOpReadVariableOp,lstm_cell_571_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_571/MatMulMatMulstrided_slice_2:output:0+lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_571_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_571/MatMul_1MatMulzeros:output:0-lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_571/addAddV2lstm_cell_571/MatMul:product:0 lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_571_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_571/BiasAddBiasAddlstm_cell_571/add:z:0,lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_571/splitSplit&lstm_cell_571/split/split_dim:output:0lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_571/SigmoidSigmoidlstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_1Sigmoidlstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_571/mulMullstm_cell_571/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_571/ReluRelulstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_1Mullstm_cell_571/Sigmoid:y:0 lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_571/add_1AddV2lstm_cell_571/mul:z:0lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_2Sigmoidlstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_571/Relu_1Relulstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_2Mullstm_cell_571/Sigmoid_2:y:0"lstm_cell_571/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_571_matmul_readvariableop_resource.lstm_cell_571_matmul_1_readvariableop_resource-lstm_cell_571_biasadd_readvariableop_resource*
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
while_body_3464750*
condR
while_cond_3464749*K
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
NoOpNoOp%^lstm_cell_571/BiasAdd/ReadVariableOp$^lstm_cell_571/MatMul/ReadVariableOp&^lstm_cell_571/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_571/BiasAdd/ReadVariableOp$lstm_cell_571/BiasAdd/ReadVariableOp2J
#lstm_cell_571/MatMul/ReadVariableOp#lstm_cell_571/MatMul/ReadVariableOp2N
%lstm_cell_571/MatMul_1/ReadVariableOp%lstm_cell_571/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3460501

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
while_body_3463705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_570_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_570_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_570_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_570_matmul_readvariableop_resource:	?G
4while_lstm_cell_570_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_570_biasadd_readvariableop_resource:	???*while/lstm_cell_570/BiasAdd/ReadVariableOp?)while/lstm_cell_570/MatMul/ReadVariableOp?+while/lstm_cell_570/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_570/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_570_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_570/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_570_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_570/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_570/addAddV2$while/lstm_cell_570/MatMul:product:0&while/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_570_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_570/BiasAddBiasAddwhile/lstm_cell_570/add:z:02while/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_570/splitSplit,while/lstm_cell_570/split/split_dim:output:0$while/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_570/SigmoidSigmoid"while/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_1Sigmoid"while/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mulMul!while/lstm_cell_570/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_570/ReluRelu"while/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_1Mulwhile/lstm_cell_570/Sigmoid:y:0&while/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/add_1AddV2while/lstm_cell_570/mul:z:0while/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_2Sigmoid"while/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_570/Relu_1Reluwhile/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_2Mul!while/lstm_cell_570/Sigmoid_2:y:0(while/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_570/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_570/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_570/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_570/BiasAdd/ReadVariableOp*^while/lstm_cell_570/MatMul/ReadVariableOp,^while/lstm_cell_570/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_570_biasadd_readvariableop_resource5while_lstm_cell_570_biasadd_readvariableop_resource_0"n
4while_lstm_cell_570_matmul_1_readvariableop_resource6while_lstm_cell_570_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_570_matmul_readvariableop_resource4while_lstm_cell_570_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_570/BiasAdd/ReadVariableOp*while/lstm_cell_570/BiasAdd/ReadVariableOp2V
)while/lstm_cell_570/MatMul/ReadVariableOp)while/lstm_cell_570/MatMul/ReadVariableOp2Z
+while/lstm_cell_570/MatMul_1/ReadVariableOp+while/lstm_cell_570/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3465366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_572_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_572_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_572_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_572_matmul_readvariableop_resource:2(F
4while_lstm_cell_572_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_572_biasadd_readvariableop_resource:(??*while/lstm_cell_572/BiasAdd/ReadVariableOp?)while/lstm_cell_572/MatMul/ReadVariableOp?+while/lstm_cell_572/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_572/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_572_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_572/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_572_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_572/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_572/addAddV2$while/lstm_cell_572/MatMul:product:0&while/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_572_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_572/BiasAddBiasAddwhile/lstm_cell_572/add:z:02while/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_572/splitSplit,while/lstm_cell_572/split/split_dim:output:0$while/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_572/SigmoidSigmoid"while/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_1Sigmoid"while/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mulMul!while/lstm_cell_572/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_572/ReluRelu"while/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_1Mulwhile/lstm_cell_572/Sigmoid:y:0&while/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/add_1AddV2while/lstm_cell_572/mul:z:0while/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_2Sigmoid"while/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_572/Relu_1Reluwhile/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_2Mul!while/lstm_cell_572/Sigmoid_2:y:0(while/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_572/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_572/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_572/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_572/BiasAdd/ReadVariableOp*^while/lstm_cell_572/MatMul/ReadVariableOp,^while/lstm_cell_572/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_572_biasadd_readvariableop_resource5while_lstm_cell_572_biasadd_readvariableop_resource_0"n
4while_lstm_cell_572_matmul_1_readvariableop_resource6while_lstm_cell_572_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_572_matmul_readvariableop_resource4while_lstm_cell_572_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_572/BiasAdd/ReadVariableOp*while/lstm_cell_572/BiasAdd/ReadVariableOp2V
)while/lstm_cell_572/MatMul/ReadVariableOp)while/lstm_cell_572/MatMul/ReadVariableOp2Z
+while/lstm_cell_572/MatMul_1/ReadVariableOp+while/lstm_cell_572/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465307

inputs>
,lstm_cell_572_matmul_readvariableop_resource:2(@
.lstm_cell_572_matmul_1_readvariableop_resource:
(;
-lstm_cell_572_biasadd_readvariableop_resource:(
identity??$lstm_cell_572/BiasAdd/ReadVariableOp?#lstm_cell_572/MatMul/ReadVariableOp?%lstm_cell_572/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_572/MatMul/ReadVariableOpReadVariableOp,lstm_cell_572_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_572/MatMulMatMulstrided_slice_2:output:0+lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_572_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_572/MatMul_1MatMulzeros:output:0-lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_572/addAddV2lstm_cell_572/MatMul:product:0 lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_572_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_572/BiasAddBiasAddlstm_cell_572/add:z:0,lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_572/splitSplit&lstm_cell_572/split/split_dim:output:0lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_572/SigmoidSigmoidlstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_1Sigmoidlstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_572/mulMullstm_cell_572/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_572/ReluRelulstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_1Mullstm_cell_572/Sigmoid:y:0 lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_572/add_1AddV2lstm_cell_572/mul:z:0lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_2Sigmoidlstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_572/Relu_1Relulstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_2Mullstm_cell_572/Sigmoid_2:y:0"lstm_cell_572/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_572_matmul_readvariableop_resource.lstm_cell_572_matmul_1_readvariableop_resource-lstm_cell_572_biasadd_readvariableop_resource*
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
while_body_3465223*
condR
while_cond_3465222*K
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
NoOpNoOp%^lstm_cell_572/BiasAdd/ReadVariableOp$^lstm_cell_572/MatMul/ReadVariableOp&^lstm_cell_572/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_572/BiasAdd/ReadVariableOp$lstm_cell_572/BiasAdd/ReadVariableOp2J
#lstm_cell_572/MatMul/ReadVariableOp#lstm_cell_572/MatMul/ReadVariableOp2N
%lstm_cell_572/MatMul_1/ReadVariableOp%lstm_cell_572/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_171_lstm_513_while_body_3460066L
Hsequential_171_lstm_513_while_sequential_171_lstm_513_while_loop_counterR
Nsequential_171_lstm_513_while_sequential_171_lstm_513_while_maximum_iterations-
)sequential_171_lstm_513_while_placeholder/
+sequential_171_lstm_513_while_placeholder_1/
+sequential_171_lstm_513_while_placeholder_2/
+sequential_171_lstm_513_while_placeholder_3K
Gsequential_171_lstm_513_while_sequential_171_lstm_513_strided_slice_1_0?
?sequential_171_lstm_513_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_513_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_171_lstm_513_while_lstm_cell_570_matmul_readvariableop_resource_0:	?a
Nsequential_171_lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource_0:	d?\
Msequential_171_lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource_0:	?*
&sequential_171_lstm_513_while_identity,
(sequential_171_lstm_513_while_identity_1,
(sequential_171_lstm_513_while_identity_2,
(sequential_171_lstm_513_while_identity_3,
(sequential_171_lstm_513_while_identity_4,
(sequential_171_lstm_513_while_identity_5I
Esequential_171_lstm_513_while_sequential_171_lstm_513_strided_slice_1?
?sequential_171_lstm_513_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_513_tensorarrayunstack_tensorlistfromtensor]
Jsequential_171_lstm_513_while_lstm_cell_570_matmul_readvariableop_resource:	?_
Lsequential_171_lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource:	d?Z
Ksequential_171_lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource:	???Bsequential_171/lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp?Asequential_171/lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp?Csequential_171/lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp?
Osequential_171/lstm_513/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_171/lstm_513/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_171_lstm_513_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_513_tensorarrayunstack_tensorlistfromtensor_0)sequential_171_lstm_513_while_placeholderXsequential_171/lstm_513/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_171/lstm_513/while/lstm_cell_570/MatMul/ReadVariableOpReadVariableOpLsequential_171_lstm_513_while_lstm_cell_570_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_171/lstm_513/while/lstm_cell_570/MatMulMatMulHsequential_171/lstm_513/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_171/lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_171/lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOpNsequential_171_lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_171/lstm_513/while/lstm_cell_570/MatMul_1MatMul+sequential_171_lstm_513_while_placeholder_2Ksequential_171/lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_171/lstm_513/while/lstm_cell_570/addAddV2<sequential_171/lstm_513/while/lstm_cell_570/MatMul:product:0>sequential_171/lstm_513/while/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_171/lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOpMsequential_171_lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_171/lstm_513/while/lstm_cell_570/BiasAddBiasAdd3sequential_171/lstm_513/while/lstm_cell_570/add:z:0Jsequential_171/lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_171/lstm_513/while/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_171/lstm_513/while/lstm_cell_570/splitSplitDsequential_171/lstm_513/while/lstm_cell_570/split/split_dim:output:0<sequential_171/lstm_513/while/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_171/lstm_513/while/lstm_cell_570/SigmoidSigmoid:sequential_171/lstm_513/while/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_171/lstm_513/while/lstm_cell_570/Sigmoid_1Sigmoid:sequential_171/lstm_513/while/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_171/lstm_513/while/lstm_cell_570/mulMul9sequential_171/lstm_513/while/lstm_cell_570/Sigmoid_1:y:0+sequential_171_lstm_513_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_171/lstm_513/while/lstm_cell_570/ReluRelu:sequential_171/lstm_513/while/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_171/lstm_513/while/lstm_cell_570/mul_1Mul7sequential_171/lstm_513/while/lstm_cell_570/Sigmoid:y:0>sequential_171/lstm_513/while/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_171/lstm_513/while/lstm_cell_570/add_1AddV23sequential_171/lstm_513/while/lstm_cell_570/mul:z:05sequential_171/lstm_513/while/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_171/lstm_513/while/lstm_cell_570/Sigmoid_2Sigmoid:sequential_171/lstm_513/while/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_171/lstm_513/while/lstm_cell_570/Relu_1Relu5sequential_171/lstm_513/while/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_171/lstm_513/while/lstm_cell_570/mul_2Mul9sequential_171/lstm_513/while/lstm_cell_570/Sigmoid_2:y:0@sequential_171/lstm_513/while/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_171/lstm_513/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_171_lstm_513_while_placeholder_1)sequential_171_lstm_513_while_placeholder5sequential_171/lstm_513/while/lstm_cell_570/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_171/lstm_513/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_171/lstm_513/while/addAddV2)sequential_171_lstm_513_while_placeholder,sequential_171/lstm_513/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_171/lstm_513/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_171/lstm_513/while/add_1AddV2Hsequential_171_lstm_513_while_sequential_171_lstm_513_while_loop_counter.sequential_171/lstm_513/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_171/lstm_513/while/IdentityIdentity'sequential_171/lstm_513/while/add_1:z:0#^sequential_171/lstm_513/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_513/while/Identity_1IdentityNsequential_171_lstm_513_while_sequential_171_lstm_513_while_maximum_iterations#^sequential_171/lstm_513/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_513/while/Identity_2Identity%sequential_171/lstm_513/while/add:z:0#^sequential_171/lstm_513/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_513/while/Identity_3IdentityRsequential_171/lstm_513/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_171/lstm_513/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_513/while/Identity_4Identity5sequential_171/lstm_513/while/lstm_cell_570/mul_2:z:0#^sequential_171/lstm_513/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_171/lstm_513/while/Identity_5Identity5sequential_171/lstm_513/while/lstm_cell_570/add_1:z:0#^sequential_171/lstm_513/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_171/lstm_513/while/NoOpNoOpC^sequential_171/lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOpB^sequential_171/lstm_513/while/lstm_cell_570/MatMul/ReadVariableOpD^sequential_171/lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_171_lstm_513_while_identity/sequential_171/lstm_513/while/Identity:output:0"]
(sequential_171_lstm_513_while_identity_11sequential_171/lstm_513/while/Identity_1:output:0"]
(sequential_171_lstm_513_while_identity_21sequential_171/lstm_513/while/Identity_2:output:0"]
(sequential_171_lstm_513_while_identity_31sequential_171/lstm_513/while/Identity_3:output:0"]
(sequential_171_lstm_513_while_identity_41sequential_171/lstm_513/while/Identity_4:output:0"]
(sequential_171_lstm_513_while_identity_51sequential_171/lstm_513/while/Identity_5:output:0"?
Ksequential_171_lstm_513_while_lstm_cell_570_biasadd_readvariableop_resourceMsequential_171_lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource_0"?
Lsequential_171_lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resourceNsequential_171_lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource_0"?
Jsequential_171_lstm_513_while_lstm_cell_570_matmul_readvariableop_resourceLsequential_171_lstm_513_while_lstm_cell_570_matmul_readvariableop_resource_0"?
Esequential_171_lstm_513_while_sequential_171_lstm_513_strided_slice_1Gsequential_171_lstm_513_while_sequential_171_lstm_513_strided_slice_1_0"?
?sequential_171_lstm_513_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_513_tensorarrayunstack_tensorlistfromtensor?sequential_171_lstm_513_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_513_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_171/lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOpBsequential_171/lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp2?
Asequential_171/lstm_513/while/lstm_cell_570/MatMul/ReadVariableOpAsequential_171/lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp2?
Csequential_171/lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOpCsequential_171/lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3463847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3463847___redundant_placeholder05
1while_while_cond_3463847___redundant_placeholder15
1while_while_cond_3463847___redundant_placeholder25
1while_while_cond_3463847___redundant_placeholder3
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

lstm_515_while_body_3463085.
*lstm_515_while_lstm_515_while_loop_counter4
0lstm_515_while_lstm_515_while_maximum_iterations
lstm_515_while_placeholder 
lstm_515_while_placeholder_1 
lstm_515_while_placeholder_2 
lstm_515_while_placeholder_3-
)lstm_515_while_lstm_515_strided_slice_1_0i
elstm_515_while_tensorarrayv2read_tensorlistgetitem_lstm_515_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_515_while_lstm_cell_572_matmul_readvariableop_resource_0:2(Q
?lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource_0:
(L
>lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource_0:(
lstm_515_while_identity
lstm_515_while_identity_1
lstm_515_while_identity_2
lstm_515_while_identity_3
lstm_515_while_identity_4
lstm_515_while_identity_5+
'lstm_515_while_lstm_515_strided_slice_1g
clstm_515_while_tensorarrayv2read_tensorlistgetitem_lstm_515_tensorarrayunstack_tensorlistfromtensorM
;lstm_515_while_lstm_cell_572_matmul_readvariableop_resource:2(O
=lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource:
(J
<lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource:(??3lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp?2lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp?4lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp?
@lstm_515/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_515/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_515_while_tensorarrayv2read_tensorlistgetitem_lstm_515_tensorarrayunstack_tensorlistfromtensor_0lstm_515_while_placeholderIlstm_515/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_515/while/lstm_cell_572/MatMul/ReadVariableOpReadVariableOp=lstm_515_while_lstm_cell_572_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_515/while/lstm_cell_572/MatMulMatMul9lstm_515/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp?lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_515/while/lstm_cell_572/MatMul_1MatMullstm_515_while_placeholder_2<lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_515/while/lstm_cell_572/addAddV2-lstm_515/while/lstm_cell_572/MatMul:product:0/lstm_515/while/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp>lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_515/while/lstm_cell_572/BiasAddBiasAdd$lstm_515/while/lstm_cell_572/add:z:0;lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_515/while/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_515/while/lstm_cell_572/splitSplit5lstm_515/while/lstm_cell_572/split/split_dim:output:0-lstm_515/while/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_515/while/lstm_cell_572/SigmoidSigmoid+lstm_515/while/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_515/while/lstm_cell_572/Sigmoid_1Sigmoid+lstm_515/while/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_515/while/lstm_cell_572/mulMul*lstm_515/while/lstm_cell_572/Sigmoid_1:y:0lstm_515_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_515/while/lstm_cell_572/ReluRelu+lstm_515/while/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_515/while/lstm_cell_572/mul_1Mul(lstm_515/while/lstm_cell_572/Sigmoid:y:0/lstm_515/while/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_515/while/lstm_cell_572/add_1AddV2$lstm_515/while/lstm_cell_572/mul:z:0&lstm_515/while/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_515/while/lstm_cell_572/Sigmoid_2Sigmoid+lstm_515/while/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_515/while/lstm_cell_572/Relu_1Relu&lstm_515/while/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_515/while/lstm_cell_572/mul_2Mul*lstm_515/while/lstm_cell_572/Sigmoid_2:y:01lstm_515/while/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_515/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_515_while_placeholder_1lstm_515_while_placeholder&lstm_515/while/lstm_cell_572/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_515/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_515/while/addAddV2lstm_515_while_placeholderlstm_515/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_515/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_515/while/add_1AddV2*lstm_515_while_lstm_515_while_loop_counterlstm_515/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_515/while/IdentityIdentitylstm_515/while/add_1:z:0^lstm_515/while/NoOp*
T0*
_output_shapes
: ?
lstm_515/while/Identity_1Identity0lstm_515_while_lstm_515_while_maximum_iterations^lstm_515/while/NoOp*
T0*
_output_shapes
: t
lstm_515/while/Identity_2Identitylstm_515/while/add:z:0^lstm_515/while/NoOp*
T0*
_output_shapes
: ?
lstm_515/while/Identity_3IdentityClstm_515/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_515/while/NoOp*
T0*
_output_shapes
: ?
lstm_515/while/Identity_4Identity&lstm_515/while/lstm_cell_572/mul_2:z:0^lstm_515/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_515/while/Identity_5Identity&lstm_515/while/lstm_cell_572/add_1:z:0^lstm_515/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_515/while/NoOpNoOp4^lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp3^lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp5^lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_515_while_identity lstm_515/while/Identity:output:0"?
lstm_515_while_identity_1"lstm_515/while/Identity_1:output:0"?
lstm_515_while_identity_2"lstm_515/while/Identity_2:output:0"?
lstm_515_while_identity_3"lstm_515/while/Identity_3:output:0"?
lstm_515_while_identity_4"lstm_515/while/Identity_4:output:0"?
lstm_515_while_identity_5"lstm_515/while/Identity_5:output:0"T
'lstm_515_while_lstm_515_strided_slice_1)lstm_515_while_lstm_515_strided_slice_1_0"~
<lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource>lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource_0"?
=lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource?lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource_0"|
;lstm_515_while_lstm_cell_572_matmul_readvariableop_resource=lstm_515_while_lstm_cell_572_matmul_readvariableop_resource_0"?
clstm_515_while_tensorarrayv2read_tensorlistgetitem_lstm_515_tensorarrayunstack_tensorlistfromtensorelstm_515_while_tensorarrayv2read_tensorlistgetitem_lstm_515_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp3lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp2h
2lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp2lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp2l
4lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp4lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_513_layer_call_fn_3463635

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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3461633s
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
?#
?
while_body_3461056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_571_3461080_0:	d?0
while_lstm_cell_571_3461082_0:	2?,
while_lstm_cell_571_3461084_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_571_3461080:	d?.
while_lstm_cell_571_3461082:	2?*
while_lstm_cell_571_3461084:	???+while/lstm_cell_571/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_571/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_571_3461080_0while_lstm_cell_571_3461082_0while_lstm_cell_571_3461084_0*
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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3460997?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_571/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_571/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_571/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_571/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_571_3461080while_lstm_cell_571_3461080_0"<
while_lstm_cell_571_3461082while_lstm_cell_571_3461082_0"<
while_lstm_cell_571_3461084while_lstm_cell_571_3461084_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_571/StatefulPartitionedCall+while/lstm_cell_571/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_514_layer_call_fn_3464229
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3460934|
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
while_body_3461849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_572_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_572_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_572_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_572_matmul_readvariableop_resource:2(F
4while_lstm_cell_572_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_572_biasadd_readvariableop_resource:(??*while/lstm_cell_572/BiasAdd/ReadVariableOp?)while/lstm_cell_572/MatMul/ReadVariableOp?+while/lstm_cell_572/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_572/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_572_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_572/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_572_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_572/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_572/addAddV2$while/lstm_cell_572/MatMul:product:0&while/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_572_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_572/BiasAddBiasAddwhile/lstm_cell_572/add:z:02while/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_572/splitSplit,while/lstm_cell_572/split/split_dim:output:0$while/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_572/SigmoidSigmoid"while/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_1Sigmoid"while/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mulMul!while/lstm_cell_572/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_572/ReluRelu"while/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_1Mulwhile/lstm_cell_572/Sigmoid:y:0&while/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/add_1AddV2while/lstm_cell_572/mul:z:0while/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_2Sigmoid"while/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_572/Relu_1Reluwhile/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_2Mul!while/lstm_cell_572/Sigmoid_2:y:0(while/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_572/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_572/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_572/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_572/BiasAdd/ReadVariableOp*^while/lstm_cell_572/MatMul/ReadVariableOp,^while/lstm_cell_572/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_572_biasadd_readvariableop_resource5while_lstm_cell_572_biasadd_readvariableop_resource_0"n
4while_lstm_cell_572_matmul_1_readvariableop_resource6while_lstm_cell_572_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_572_matmul_readvariableop_resource4while_lstm_cell_572_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_572/BiasAdd/ReadVariableOp*while/lstm_cell_572/BiasAdd/ReadVariableOp2V
)while/lstm_cell_572/MatMul/ReadVariableOp)while/lstm_cell_572/MatMul/ReadVariableOp2Z
+while/lstm_cell_572/MatMul_1/ReadVariableOp+while/lstm_cell_572/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_513_while_body_3462807.
*lstm_513_while_lstm_513_while_loop_counter4
0lstm_513_while_lstm_513_while_maximum_iterations
lstm_513_while_placeholder 
lstm_513_while_placeholder_1 
lstm_513_while_placeholder_2 
lstm_513_while_placeholder_3-
)lstm_513_while_lstm_513_strided_slice_1_0i
elstm_513_while_tensorarrayv2read_tensorlistgetitem_lstm_513_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_513_while_lstm_cell_570_matmul_readvariableop_resource_0:	?R
?lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource_0:	d?M
>lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource_0:	?
lstm_513_while_identity
lstm_513_while_identity_1
lstm_513_while_identity_2
lstm_513_while_identity_3
lstm_513_while_identity_4
lstm_513_while_identity_5+
'lstm_513_while_lstm_513_strided_slice_1g
clstm_513_while_tensorarrayv2read_tensorlistgetitem_lstm_513_tensorarrayunstack_tensorlistfromtensorN
;lstm_513_while_lstm_cell_570_matmul_readvariableop_resource:	?P
=lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource:	d?K
<lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource:	???3lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp?2lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp?4lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp?
@lstm_513/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_513/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_513_while_tensorarrayv2read_tensorlistgetitem_lstm_513_tensorarrayunstack_tensorlistfromtensor_0lstm_513_while_placeholderIlstm_513/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_513/while/lstm_cell_570/MatMul/ReadVariableOpReadVariableOp=lstm_513_while_lstm_cell_570_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_513/while/lstm_cell_570/MatMulMatMul9lstm_513/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp?lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_513/while/lstm_cell_570/MatMul_1MatMullstm_513_while_placeholder_2<lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_513/while/lstm_cell_570/addAddV2-lstm_513/while/lstm_cell_570/MatMul:product:0/lstm_513/while/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp>lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_513/while/lstm_cell_570/BiasAddBiasAdd$lstm_513/while/lstm_cell_570/add:z:0;lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_513/while/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_513/while/lstm_cell_570/splitSplit5lstm_513/while/lstm_cell_570/split/split_dim:output:0-lstm_513/while/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_513/while/lstm_cell_570/SigmoidSigmoid+lstm_513/while/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_513/while/lstm_cell_570/Sigmoid_1Sigmoid+lstm_513/while/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_513/while/lstm_cell_570/mulMul*lstm_513/while/lstm_cell_570/Sigmoid_1:y:0lstm_513_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_513/while/lstm_cell_570/ReluRelu+lstm_513/while/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_513/while/lstm_cell_570/mul_1Mul(lstm_513/while/lstm_cell_570/Sigmoid:y:0/lstm_513/while/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_513/while/lstm_cell_570/add_1AddV2$lstm_513/while/lstm_cell_570/mul:z:0&lstm_513/while/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_513/while/lstm_cell_570/Sigmoid_2Sigmoid+lstm_513/while/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_513/while/lstm_cell_570/Relu_1Relu&lstm_513/while/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_513/while/lstm_cell_570/mul_2Mul*lstm_513/while/lstm_cell_570/Sigmoid_2:y:01lstm_513/while/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_513/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_513_while_placeholder_1lstm_513_while_placeholder&lstm_513/while/lstm_cell_570/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_513/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_513/while/addAddV2lstm_513_while_placeholderlstm_513/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_513/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_513/while/add_1AddV2*lstm_513_while_lstm_513_while_loop_counterlstm_513/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_513/while/IdentityIdentitylstm_513/while/add_1:z:0^lstm_513/while/NoOp*
T0*
_output_shapes
: ?
lstm_513/while/Identity_1Identity0lstm_513_while_lstm_513_while_maximum_iterations^lstm_513/while/NoOp*
T0*
_output_shapes
: t
lstm_513/while/Identity_2Identitylstm_513/while/add:z:0^lstm_513/while/NoOp*
T0*
_output_shapes
: ?
lstm_513/while/Identity_3IdentityClstm_513/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_513/while/NoOp*
T0*
_output_shapes
: ?
lstm_513/while/Identity_4Identity&lstm_513/while/lstm_cell_570/mul_2:z:0^lstm_513/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_513/while/Identity_5Identity&lstm_513/while/lstm_cell_570/add_1:z:0^lstm_513/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_513/while/NoOpNoOp4^lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp3^lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp5^lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_513_while_identity lstm_513/while/Identity:output:0"?
lstm_513_while_identity_1"lstm_513/while/Identity_1:output:0"?
lstm_513_while_identity_2"lstm_513/while/Identity_2:output:0"?
lstm_513_while_identity_3"lstm_513/while/Identity_3:output:0"?
lstm_513_while_identity_4"lstm_513/while/Identity_4:output:0"?
lstm_513_while_identity_5"lstm_513/while/Identity_5:output:0"T
'lstm_513_while_lstm_513_strided_slice_1)lstm_513_while_lstm_513_strided_slice_1_0"~
<lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource>lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource_0"?
=lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource?lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource_0"|
;lstm_513_while_lstm_cell_570_matmul_readvariableop_resource=lstm_513_while_lstm_cell_570_matmul_readvariableop_resource_0"?
clstm_513_while_tensorarrayv2read_tensorlistgetitem_lstm_513_tensorarrayunstack_tensorlistfromtensorelstm_513_while_tensorarrayv2read_tensorlistgetitem_lstm_513_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp3lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp2h
2lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp2lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp2l
4lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp4lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_171_layer_call_and_return_conditional_losses_3461958

inputs#
lstm_513_3461634:	?#
lstm_513_3461636:	d?
lstm_513_3461638:	?#
lstm_514_3461784:	d?#
lstm_514_3461786:	2?
lstm_514_3461788:	?"
lstm_515_3461934:2("
lstm_515_3461936:
(
lstm_515_3461938:(#
dense_171_3461952:

dense_171_3461954:
identity??!dense_171/StatefulPartitionedCall? lstm_513/StatefulPartitionedCall? lstm_514/StatefulPartitionedCall? lstm_515/StatefulPartitionedCall?
 lstm_513/StatefulPartitionedCallStatefulPartitionedCallinputslstm_513_3461634lstm_513_3461636lstm_513_3461638*
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3461633?
 lstm_514/StatefulPartitionedCallStatefulPartitionedCall)lstm_513/StatefulPartitionedCall:output:0lstm_514_3461784lstm_514_3461786lstm_514_3461788*
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3461783?
 lstm_515/StatefulPartitionedCallStatefulPartitionedCall)lstm_514/StatefulPartitionedCall:output:0lstm_515_3461934lstm_515_3461936lstm_515_3461938*
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3461933?
!dense_171/StatefulPartitionedCallStatefulPartitionedCall)lstm_515/StatefulPartitionedCall:output:0dense_171_3461952dense_171_3461954*
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
F__inference_dense_171_layer_call_and_return_conditional_losses_3461951y
IdentityIdentity*dense_171/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_171/StatefulPartitionedCall!^lstm_513/StatefulPartitionedCall!^lstm_514/StatefulPartitionedCall!^lstm_515/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2D
 lstm_513/StatefulPartitionedCall lstm_513/StatefulPartitionedCall2D
 lstm_514/StatefulPartitionedCall lstm_514/StatefulPartitionedCall2D
 lstm_515/StatefulPartitionedCall lstm_515/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_514_layer_call_and_return_conditional_losses_3461783

inputs?
,lstm_cell_571_matmul_readvariableop_resource:	d?A
.lstm_cell_571_matmul_1_readvariableop_resource:	2?<
-lstm_cell_571_biasadd_readvariableop_resource:	?
identity??$lstm_cell_571/BiasAdd/ReadVariableOp?#lstm_cell_571/MatMul/ReadVariableOp?%lstm_cell_571/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_571/MatMul/ReadVariableOpReadVariableOp,lstm_cell_571_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_571/MatMulMatMulstrided_slice_2:output:0+lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_571_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_571/MatMul_1MatMulzeros:output:0-lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_571/addAddV2lstm_cell_571/MatMul:product:0 lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_571_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_571/BiasAddBiasAddlstm_cell_571/add:z:0,lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_571/splitSplit&lstm_cell_571/split/split_dim:output:0lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_571/SigmoidSigmoidlstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_1Sigmoidlstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_571/mulMullstm_cell_571/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_571/ReluRelulstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_1Mullstm_cell_571/Sigmoid:y:0 lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_571/add_1AddV2lstm_cell_571/mul:z:0lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_2Sigmoidlstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_571/Relu_1Relulstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_2Mullstm_cell_571/Sigmoid_2:y:0"lstm_cell_571/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_571_matmul_readvariableop_resource.lstm_cell_571_matmul_1_readvariableop_resource-lstm_cell_571_biasadd_readvariableop_resource*
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
while_body_3461699*
condR
while_cond_3461698*K
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
NoOpNoOp%^lstm_cell_571/BiasAdd/ReadVariableOp$^lstm_cell_571/MatMul/ReadVariableOp&^lstm_cell_571/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_571/BiasAdd/ReadVariableOp$lstm_cell_571/BiasAdd/ReadVariableOp2J
#lstm_cell_571/MatMul/ReadVariableOp#lstm_cell_571/MatMul/ReadVariableOp2N
%lstm_cell_571/MatMul_1/ReadVariableOp%lstm_cell_571/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3464750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_571_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_571_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_571_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_571_matmul_readvariableop_resource:	d?G
4while_lstm_cell_571_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_571_biasadd_readvariableop_resource:	???*while/lstm_cell_571/BiasAdd/ReadVariableOp?)while/lstm_cell_571/MatMul/ReadVariableOp?+while/lstm_cell_571/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_571/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_571_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_571/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_571_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_571/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_571/addAddV2$while/lstm_cell_571/MatMul:product:0&while/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_571_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_571/BiasAddBiasAddwhile/lstm_cell_571/add:z:02while/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_571/splitSplit,while/lstm_cell_571/split/split_dim:output:0$while/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_571/SigmoidSigmoid"while/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_1Sigmoid"while/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mulMul!while/lstm_cell_571/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_571/ReluRelu"while/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_1Mulwhile/lstm_cell_571/Sigmoid:y:0&while/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/add_1AddV2while/lstm_cell_571/mul:z:0while/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_2Sigmoid"while/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_571/Relu_1Reluwhile/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_2Mul!while/lstm_cell_571/Sigmoid_2:y:0(while/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_571/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_571/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_571/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_571/BiasAdd/ReadVariableOp*^while/lstm_cell_571/MatMul/ReadVariableOp,^while/lstm_cell_571/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_571_biasadd_readvariableop_resource5while_lstm_cell_571_biasadd_readvariableop_resource_0"n
4while_lstm_cell_571_matmul_1_readvariableop_resource6while_lstm_cell_571_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_571_matmul_readvariableop_resource4while_lstm_cell_571_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_571/BiasAdd/ReadVariableOp*while/lstm_cell_571/BiasAdd/ReadVariableOp2V
)while/lstm_cell_571/MatMul/ReadVariableOp)while/lstm_cell_571/MatMul/ReadVariableOp2Z
+while/lstm_cell_571/MatMul_1/ReadVariableOp+while/lstm_cell_571/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_513_layer_call_fn_3463624
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3460775|
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
while_cond_3464463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3464463___redundant_placeholder05
1while_while_cond_3464463___redundant_placeholder15
1while_while_cond_3464463___redundant_placeholder25
1while_while_cond_3464463___redundant_placeholder3
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
*sequential_171_lstm_515_while_body_3460344L
Hsequential_171_lstm_515_while_sequential_171_lstm_515_while_loop_counterR
Nsequential_171_lstm_515_while_sequential_171_lstm_515_while_maximum_iterations-
)sequential_171_lstm_515_while_placeholder/
+sequential_171_lstm_515_while_placeholder_1/
+sequential_171_lstm_515_while_placeholder_2/
+sequential_171_lstm_515_while_placeholder_3K
Gsequential_171_lstm_515_while_sequential_171_lstm_515_strided_slice_1_0?
?sequential_171_lstm_515_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_515_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_171_lstm_515_while_lstm_cell_572_matmul_readvariableop_resource_0:2(`
Nsequential_171_lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource_0:
([
Msequential_171_lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource_0:(*
&sequential_171_lstm_515_while_identity,
(sequential_171_lstm_515_while_identity_1,
(sequential_171_lstm_515_while_identity_2,
(sequential_171_lstm_515_while_identity_3,
(sequential_171_lstm_515_while_identity_4,
(sequential_171_lstm_515_while_identity_5I
Esequential_171_lstm_515_while_sequential_171_lstm_515_strided_slice_1?
?sequential_171_lstm_515_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_515_tensorarrayunstack_tensorlistfromtensor\
Jsequential_171_lstm_515_while_lstm_cell_572_matmul_readvariableop_resource:2(^
Lsequential_171_lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource:
(Y
Ksequential_171_lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource:(??Bsequential_171/lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp?Asequential_171/lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp?Csequential_171/lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp?
Osequential_171/lstm_515/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_171/lstm_515/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_171_lstm_515_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_515_tensorarrayunstack_tensorlistfromtensor_0)sequential_171_lstm_515_while_placeholderXsequential_171/lstm_515/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_171/lstm_515/while/lstm_cell_572/MatMul/ReadVariableOpReadVariableOpLsequential_171_lstm_515_while_lstm_cell_572_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_171/lstm_515/while/lstm_cell_572/MatMulMatMulHsequential_171/lstm_515/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_171/lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_171/lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOpNsequential_171_lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_171/lstm_515/while/lstm_cell_572/MatMul_1MatMul+sequential_171_lstm_515_while_placeholder_2Ksequential_171/lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_171/lstm_515/while/lstm_cell_572/addAddV2<sequential_171/lstm_515/while/lstm_cell_572/MatMul:product:0>sequential_171/lstm_515/while/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_171/lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOpMsequential_171_lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_171/lstm_515/while/lstm_cell_572/BiasAddBiasAdd3sequential_171/lstm_515/while/lstm_cell_572/add:z:0Jsequential_171/lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_171/lstm_515/while/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_171/lstm_515/while/lstm_cell_572/splitSplitDsequential_171/lstm_515/while/lstm_cell_572/split/split_dim:output:0<sequential_171/lstm_515/while/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_171/lstm_515/while/lstm_cell_572/SigmoidSigmoid:sequential_171/lstm_515/while/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_171/lstm_515/while/lstm_cell_572/Sigmoid_1Sigmoid:sequential_171/lstm_515/while/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_171/lstm_515/while/lstm_cell_572/mulMul9sequential_171/lstm_515/while/lstm_cell_572/Sigmoid_1:y:0+sequential_171_lstm_515_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_171/lstm_515/while/lstm_cell_572/ReluRelu:sequential_171/lstm_515/while/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_171/lstm_515/while/lstm_cell_572/mul_1Mul7sequential_171/lstm_515/while/lstm_cell_572/Sigmoid:y:0>sequential_171/lstm_515/while/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_171/lstm_515/while/lstm_cell_572/add_1AddV23sequential_171/lstm_515/while/lstm_cell_572/mul:z:05sequential_171/lstm_515/while/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_171/lstm_515/while/lstm_cell_572/Sigmoid_2Sigmoid:sequential_171/lstm_515/while/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_171/lstm_515/while/lstm_cell_572/Relu_1Relu5sequential_171/lstm_515/while/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_171/lstm_515/while/lstm_cell_572/mul_2Mul9sequential_171/lstm_515/while/lstm_cell_572/Sigmoid_2:y:0@sequential_171/lstm_515/while/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_171/lstm_515/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_171_lstm_515_while_placeholder_1)sequential_171_lstm_515_while_placeholder5sequential_171/lstm_515/while/lstm_cell_572/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_171/lstm_515/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_171/lstm_515/while/addAddV2)sequential_171_lstm_515_while_placeholder,sequential_171/lstm_515/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_171/lstm_515/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_171/lstm_515/while/add_1AddV2Hsequential_171_lstm_515_while_sequential_171_lstm_515_while_loop_counter.sequential_171/lstm_515/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_171/lstm_515/while/IdentityIdentity'sequential_171/lstm_515/while/add_1:z:0#^sequential_171/lstm_515/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_515/while/Identity_1IdentityNsequential_171_lstm_515_while_sequential_171_lstm_515_while_maximum_iterations#^sequential_171/lstm_515/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_515/while/Identity_2Identity%sequential_171/lstm_515/while/add:z:0#^sequential_171/lstm_515/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_515/while/Identity_3IdentityRsequential_171/lstm_515/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_171/lstm_515/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_515/while/Identity_4Identity5sequential_171/lstm_515/while/lstm_cell_572/mul_2:z:0#^sequential_171/lstm_515/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_171/lstm_515/while/Identity_5Identity5sequential_171/lstm_515/while/lstm_cell_572/add_1:z:0#^sequential_171/lstm_515/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_171/lstm_515/while/NoOpNoOpC^sequential_171/lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOpB^sequential_171/lstm_515/while/lstm_cell_572/MatMul/ReadVariableOpD^sequential_171/lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_171_lstm_515_while_identity/sequential_171/lstm_515/while/Identity:output:0"]
(sequential_171_lstm_515_while_identity_11sequential_171/lstm_515/while/Identity_1:output:0"]
(sequential_171_lstm_515_while_identity_21sequential_171/lstm_515/while/Identity_2:output:0"]
(sequential_171_lstm_515_while_identity_31sequential_171/lstm_515/while/Identity_3:output:0"]
(sequential_171_lstm_515_while_identity_41sequential_171/lstm_515/while/Identity_4:output:0"]
(sequential_171_lstm_515_while_identity_51sequential_171/lstm_515/while/Identity_5:output:0"?
Ksequential_171_lstm_515_while_lstm_cell_572_biasadd_readvariableop_resourceMsequential_171_lstm_515_while_lstm_cell_572_biasadd_readvariableop_resource_0"?
Lsequential_171_lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resourceNsequential_171_lstm_515_while_lstm_cell_572_matmul_1_readvariableop_resource_0"?
Jsequential_171_lstm_515_while_lstm_cell_572_matmul_readvariableop_resourceLsequential_171_lstm_515_while_lstm_cell_572_matmul_readvariableop_resource_0"?
Esequential_171_lstm_515_while_sequential_171_lstm_515_strided_slice_1Gsequential_171_lstm_515_while_sequential_171_lstm_515_strided_slice_1_0"?
?sequential_171_lstm_515_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_515_tensorarrayunstack_tensorlistfromtensor?sequential_171_lstm_515_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_515_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_171/lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOpBsequential_171/lstm_515/while/lstm_cell_572/BiasAdd/ReadVariableOp2?
Asequential_171/lstm_515/while/lstm_cell_572/MatMul/ReadVariableOpAsequential_171/lstm_515/while/lstm_cell_572/MatMul/ReadVariableOp2?
Csequential_171/lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOpCsequential_171/lstm_515/while/lstm_cell_572/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3463848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_570_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_570_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_570_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_570_matmul_readvariableop_resource:	?G
4while_lstm_cell_570_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_570_biasadd_readvariableop_resource:	???*while/lstm_cell_570/BiasAdd/ReadVariableOp?)while/lstm_cell_570/MatMul/ReadVariableOp?+while/lstm_cell_570/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_570/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_570_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_570/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_570_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_570/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_570/addAddV2$while/lstm_cell_570/MatMul:product:0&while/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_570_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_570/BiasAddBiasAddwhile/lstm_cell_570/add:z:02while/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_570/splitSplit,while/lstm_cell_570/split/split_dim:output:0$while/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_570/SigmoidSigmoid"while/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_1Sigmoid"while/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mulMul!while/lstm_cell_570/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_570/ReluRelu"while/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_1Mulwhile/lstm_cell_570/Sigmoid:y:0&while/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/add_1AddV2while/lstm_cell_570/mul:z:0while/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_2Sigmoid"while/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_570/Relu_1Reluwhile/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_2Mul!while/lstm_cell_570/Sigmoid_2:y:0(while/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_570/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_570/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_570/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_570/BiasAdd/ReadVariableOp*^while/lstm_cell_570/MatMul/ReadVariableOp,^while/lstm_cell_570/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_570_biasadd_readvariableop_resource5while_lstm_cell_570_biasadd_readvariableop_resource_0"n
4while_lstm_cell_570_matmul_1_readvariableop_resource6while_lstm_cell_570_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_570_matmul_readvariableop_resource4while_lstm_cell_570_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_570/BiasAdd/ReadVariableOp*while/lstm_cell_570/BiasAdd/ReadVariableOp2V
)while/lstm_cell_570/MatMul/ReadVariableOp)while/lstm_cell_570/MatMul/ReadVariableOp2Z
+while/lstm_cell_570/MatMul_1/ReadVariableOp+while/lstm_cell_570/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3461698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3461698___redundant_placeholder05
1while_while_cond_3461698___redundant_placeholder15
1while_while_cond_3461698___redundant_placeholder25
1while_while_cond_3461698___redundant_placeholder3
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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3460851

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
?
*__inference_lstm_513_layer_call_fn_3463613
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3460584|
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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3460647

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
K__inference_sequential_171_layer_call_and_return_conditional_losses_3462629
lstm_513_input#
lstm_513_3462602:	?#
lstm_513_3462604:	d?
lstm_513_3462606:	?#
lstm_514_3462609:	d?#
lstm_514_3462611:	2?
lstm_514_3462613:	?"
lstm_515_3462616:2("
lstm_515_3462618:
(
lstm_515_3462620:(#
dense_171_3462623:

dense_171_3462625:
identity??!dense_171/StatefulPartitionedCall? lstm_513/StatefulPartitionedCall? lstm_514/StatefulPartitionedCall? lstm_515/StatefulPartitionedCall?
 lstm_513/StatefulPartitionedCallStatefulPartitionedCalllstm_513_inputlstm_513_3462602lstm_513_3462604lstm_513_3462606*
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3461633?
 lstm_514/StatefulPartitionedCallStatefulPartitionedCall)lstm_513/StatefulPartitionedCall:output:0lstm_514_3462609lstm_514_3462611lstm_514_3462613*
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3461783?
 lstm_515/StatefulPartitionedCallStatefulPartitionedCall)lstm_514/StatefulPartitionedCall:output:0lstm_515_3462616lstm_515_3462618lstm_515_3462620*
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3461933?
!dense_171/StatefulPartitionedCallStatefulPartitionedCall)lstm_515/StatefulPartitionedCall:output:0dense_171_3462623dense_171_3462625*
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
F__inference_dense_171_layer_call_and_return_conditional_losses_3461951y
IdentityIdentity*dense_171/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_171/StatefulPartitionedCall!^lstm_513/StatefulPartitionedCall!^lstm_514/StatefulPartitionedCall!^lstm_515/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2D
 lstm_513/StatefulPartitionedCall lstm_513/StatefulPartitionedCall2D
 lstm_514/StatefulPartitionedCall lstm_514/StatefulPartitionedCall2D
 lstm_515/StatefulPartitionedCall lstm_515/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_513_input
?K
?
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465164
inputs_0>
,lstm_cell_572_matmul_readvariableop_resource:2(@
.lstm_cell_572_matmul_1_readvariableop_resource:
(;
-lstm_cell_572_biasadd_readvariableop_resource:(
identity??$lstm_cell_572/BiasAdd/ReadVariableOp?#lstm_cell_572/MatMul/ReadVariableOp?%lstm_cell_572/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_572/MatMul/ReadVariableOpReadVariableOp,lstm_cell_572_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_572/MatMulMatMulstrided_slice_2:output:0+lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_572_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_572/MatMul_1MatMulzeros:output:0-lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_572/addAddV2lstm_cell_572/MatMul:product:0 lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_572_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_572/BiasAddBiasAddlstm_cell_572/add:z:0,lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_572/splitSplit&lstm_cell_572/split/split_dim:output:0lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_572/SigmoidSigmoidlstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_1Sigmoidlstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_572/mulMullstm_cell_572/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_572/ReluRelulstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_1Mullstm_cell_572/Sigmoid:y:0 lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_572/add_1AddV2lstm_cell_572/mul:z:0lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_2Sigmoidlstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_572/Relu_1Relulstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_2Mullstm_cell_572/Sigmoid_2:y:0"lstm_cell_572/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_572_matmul_readvariableop_resource.lstm_cell_572_matmul_1_readvariableop_resource-lstm_cell_572_biasadd_readvariableop_resource*
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
while_body_3465080*
condR
while_cond_3465079*K
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
NoOpNoOp%^lstm_cell_572/BiasAdd/ReadVariableOp$^lstm_cell_572/MatMul/ReadVariableOp&^lstm_cell_572/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_572/BiasAdd/ReadVariableOp$lstm_cell_572/BiasAdd/ReadVariableOp2J
#lstm_cell_572/MatMul/ReadVariableOp#lstm_cell_572/MatMul/ReadVariableOp2N
%lstm_cell_572/MatMul_1/ReadVariableOp%lstm_cell_572/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_3461215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_572_3461239_0:2(/
while_lstm_cell_572_3461241_0:
(+
while_lstm_cell_572_3461243_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_572_3461239:2(-
while_lstm_cell_572_3461241:
()
while_lstm_cell_572_3461243:(??+while/lstm_cell_572/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_572/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_572_3461239_0while_lstm_cell_572_3461241_0while_lstm_cell_572_3461243_0*
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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3461201?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_572/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_572/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_572/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_572/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_572_3461239while_lstm_cell_572_3461239_0"<
while_lstm_cell_572_3461241while_lstm_cell_572_3461241_0"<
while_lstm_cell_572_3461243while_lstm_cell_572_3461243_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_572/StatefulPartitionedCall+while/lstm_cell_572/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_513_while_body_3463234.
*lstm_513_while_lstm_513_while_loop_counter4
0lstm_513_while_lstm_513_while_maximum_iterations
lstm_513_while_placeholder 
lstm_513_while_placeholder_1 
lstm_513_while_placeholder_2 
lstm_513_while_placeholder_3-
)lstm_513_while_lstm_513_strided_slice_1_0i
elstm_513_while_tensorarrayv2read_tensorlistgetitem_lstm_513_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_513_while_lstm_cell_570_matmul_readvariableop_resource_0:	?R
?lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource_0:	d?M
>lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource_0:	?
lstm_513_while_identity
lstm_513_while_identity_1
lstm_513_while_identity_2
lstm_513_while_identity_3
lstm_513_while_identity_4
lstm_513_while_identity_5+
'lstm_513_while_lstm_513_strided_slice_1g
clstm_513_while_tensorarrayv2read_tensorlistgetitem_lstm_513_tensorarrayunstack_tensorlistfromtensorN
;lstm_513_while_lstm_cell_570_matmul_readvariableop_resource:	?P
=lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource:	d?K
<lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource:	???3lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp?2lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp?4lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp?
@lstm_513/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_513/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_513_while_tensorarrayv2read_tensorlistgetitem_lstm_513_tensorarrayunstack_tensorlistfromtensor_0lstm_513_while_placeholderIlstm_513/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_513/while/lstm_cell_570/MatMul/ReadVariableOpReadVariableOp=lstm_513_while_lstm_cell_570_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_513/while/lstm_cell_570/MatMulMatMul9lstm_513/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp?lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_513/while/lstm_cell_570/MatMul_1MatMullstm_513_while_placeholder_2<lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_513/while/lstm_cell_570/addAddV2-lstm_513/while/lstm_cell_570/MatMul:product:0/lstm_513/while/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp>lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_513/while/lstm_cell_570/BiasAddBiasAdd$lstm_513/while/lstm_cell_570/add:z:0;lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_513/while/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_513/while/lstm_cell_570/splitSplit5lstm_513/while/lstm_cell_570/split/split_dim:output:0-lstm_513/while/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_513/while/lstm_cell_570/SigmoidSigmoid+lstm_513/while/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_513/while/lstm_cell_570/Sigmoid_1Sigmoid+lstm_513/while/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_513/while/lstm_cell_570/mulMul*lstm_513/while/lstm_cell_570/Sigmoid_1:y:0lstm_513_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_513/while/lstm_cell_570/ReluRelu+lstm_513/while/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_513/while/lstm_cell_570/mul_1Mul(lstm_513/while/lstm_cell_570/Sigmoid:y:0/lstm_513/while/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_513/while/lstm_cell_570/add_1AddV2$lstm_513/while/lstm_cell_570/mul:z:0&lstm_513/while/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_513/while/lstm_cell_570/Sigmoid_2Sigmoid+lstm_513/while/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_513/while/lstm_cell_570/Relu_1Relu&lstm_513/while/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_513/while/lstm_cell_570/mul_2Mul*lstm_513/while/lstm_cell_570/Sigmoid_2:y:01lstm_513/while/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_513/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_513_while_placeholder_1lstm_513_while_placeholder&lstm_513/while/lstm_cell_570/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_513/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_513/while/addAddV2lstm_513_while_placeholderlstm_513/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_513/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_513/while/add_1AddV2*lstm_513_while_lstm_513_while_loop_counterlstm_513/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_513/while/IdentityIdentitylstm_513/while/add_1:z:0^lstm_513/while/NoOp*
T0*
_output_shapes
: ?
lstm_513/while/Identity_1Identity0lstm_513_while_lstm_513_while_maximum_iterations^lstm_513/while/NoOp*
T0*
_output_shapes
: t
lstm_513/while/Identity_2Identitylstm_513/while/add:z:0^lstm_513/while/NoOp*
T0*
_output_shapes
: ?
lstm_513/while/Identity_3IdentityClstm_513/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_513/while/NoOp*
T0*
_output_shapes
: ?
lstm_513/while/Identity_4Identity&lstm_513/while/lstm_cell_570/mul_2:z:0^lstm_513/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_513/while/Identity_5Identity&lstm_513/while/lstm_cell_570/add_1:z:0^lstm_513/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_513/while/NoOpNoOp4^lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp3^lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp5^lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_513_while_identity lstm_513/while/Identity:output:0"?
lstm_513_while_identity_1"lstm_513/while/Identity_1:output:0"?
lstm_513_while_identity_2"lstm_513/while/Identity_2:output:0"?
lstm_513_while_identity_3"lstm_513/while/Identity_3:output:0"?
lstm_513_while_identity_4"lstm_513/while/Identity_4:output:0"?
lstm_513_while_identity_5"lstm_513/while/Identity_5:output:0"T
'lstm_513_while_lstm_513_strided_slice_1)lstm_513_while_lstm_513_strided_slice_1_0"~
<lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource>lstm_513_while_lstm_cell_570_biasadd_readvariableop_resource_0"?
=lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource?lstm_513_while_lstm_cell_570_matmul_1_readvariableop_resource_0"|
;lstm_513_while_lstm_cell_570_matmul_readvariableop_resource=lstm_513_while_lstm_cell_570_matmul_readvariableop_resource_0"?
clstm_513_while_tensorarrayv2read_tensorlistgetitem_lstm_513_tensorarrayunstack_tensorlistfromtensorelstm_513_while_tensorarrayv2read_tensorlistgetitem_lstm_513_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp3lstm_513/while/lstm_cell_570/BiasAdd/ReadVariableOp2h
2lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp2lstm_513/while/lstm_cell_570/MatMul/ReadVariableOp2l
4lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp4lstm_513/while/lstm_cell_570/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_171_layer_call_and_return_conditional_losses_3462659
lstm_513_input#
lstm_513_3462632:	?#
lstm_513_3462634:	d?
lstm_513_3462636:	?#
lstm_514_3462639:	d?#
lstm_514_3462641:	2?
lstm_514_3462643:	?"
lstm_515_3462646:2("
lstm_515_3462648:
(
lstm_515_3462650:(#
dense_171_3462653:

dense_171_3462655:
identity??!dense_171/StatefulPartitionedCall? lstm_513/StatefulPartitionedCall? lstm_514/StatefulPartitionedCall? lstm_515/StatefulPartitionedCall?
 lstm_513/StatefulPartitionedCallStatefulPartitionedCalllstm_513_inputlstm_513_3462632lstm_513_3462634lstm_513_3462636*
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3462479?
 lstm_514/StatefulPartitionedCallStatefulPartitionedCall)lstm_513/StatefulPartitionedCall:output:0lstm_514_3462639lstm_514_3462641lstm_514_3462643*
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3462314?
 lstm_515/StatefulPartitionedCallStatefulPartitionedCall)lstm_514/StatefulPartitionedCall:output:0lstm_515_3462646lstm_515_3462648lstm_515_3462650*
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3462149?
!dense_171/StatefulPartitionedCallStatefulPartitionedCall)lstm_515/StatefulPartitionedCall:output:0dense_171_3462653dense_171_3462655*
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
F__inference_dense_171_layer_call_and_return_conditional_losses_3461951y
IdentityIdentity*dense_171/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_171/StatefulPartitionedCall!^lstm_513/StatefulPartitionedCall!^lstm_514/StatefulPartitionedCall!^lstm_515/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2D
 lstm_513/StatefulPartitionedCall lstm_513/StatefulPartitionedCall2D
 lstm_514/StatefulPartitionedCall lstm_514/StatefulPartitionedCall2D
 lstm_515/StatefulPartitionedCall lstm_515/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_513_input
?8
?
while_body_3464134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_570_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_570_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_570_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_570_matmul_readvariableop_resource:	?G
4while_lstm_cell_570_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_570_biasadd_readvariableop_resource:	???*while/lstm_cell_570/BiasAdd/ReadVariableOp?)while/lstm_cell_570/MatMul/ReadVariableOp?+while/lstm_cell_570/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_570/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_570_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_570/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_570_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_570/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_570/addAddV2$while/lstm_cell_570/MatMul:product:0&while/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_570_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_570/BiasAddBiasAddwhile/lstm_cell_570/add:z:02while/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_570/splitSplit,while/lstm_cell_570/split/split_dim:output:0$while/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_570/SigmoidSigmoid"while/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_1Sigmoid"while/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mulMul!while/lstm_cell_570/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_570/ReluRelu"while/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_1Mulwhile/lstm_cell_570/Sigmoid:y:0&while/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/add_1AddV2while/lstm_cell_570/mul:z:0while/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_2Sigmoid"while/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_570/Relu_1Reluwhile/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_2Mul!while/lstm_cell_570/Sigmoid_2:y:0(while/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_570/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_570/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_570/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_570/BiasAdd/ReadVariableOp*^while/lstm_cell_570/MatMul/ReadVariableOp,^while/lstm_cell_570/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_570_biasadd_readvariableop_resource5while_lstm_cell_570_biasadd_readvariableop_resource_0"n
4while_lstm_cell_570_matmul_1_readvariableop_resource6while_lstm_cell_570_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_570_matmul_readvariableop_resource4while_lstm_cell_570_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_570/BiasAdd/ReadVariableOp*while/lstm_cell_570/BiasAdd/ReadVariableOp2V
)while/lstm_cell_570/MatMul/ReadVariableOp)while/lstm_cell_570/MatMul/ReadVariableOp2Z
+while/lstm_cell_570/MatMul_1/ReadVariableOp+while/lstm_cell_570/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3463932
inputs_0?
,lstm_cell_570_matmul_readvariableop_resource:	?A
.lstm_cell_570_matmul_1_readvariableop_resource:	d?<
-lstm_cell_570_biasadd_readvariableop_resource:	?
identity??$lstm_cell_570/BiasAdd/ReadVariableOp?#lstm_cell_570/MatMul/ReadVariableOp?%lstm_cell_570/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_570/MatMul/ReadVariableOpReadVariableOp,lstm_cell_570_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_570/MatMulMatMulstrided_slice_2:output:0+lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_570_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_570/MatMul_1MatMulzeros:output:0-lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_570/addAddV2lstm_cell_570/MatMul:product:0 lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_570_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_570/BiasAddBiasAddlstm_cell_570/add:z:0,lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_570/splitSplit&lstm_cell_570/split/split_dim:output:0lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_570/SigmoidSigmoidlstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_1Sigmoidlstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_570/mulMullstm_cell_570/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_570/ReluRelulstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_1Mullstm_cell_570/Sigmoid:y:0 lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_570/add_1AddV2lstm_cell_570/mul:z:0lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_2Sigmoidlstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_570/Relu_1Relulstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_2Mullstm_cell_570/Sigmoid_2:y:0"lstm_cell_570/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_570_matmul_readvariableop_resource.lstm_cell_570_matmul_1_readvariableop_resource-lstm_cell_570_biasadd_readvariableop_resource*
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
while_body_3463848*
condR
while_cond_3463847*K
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
NoOpNoOp%^lstm_cell_570/BiasAdd/ReadVariableOp$^lstm_cell_570/MatMul/ReadVariableOp&^lstm_cell_570/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_570/BiasAdd/ReadVariableOp$lstm_cell_570/BiasAdd/ReadVariableOp2J
#lstm_cell_570/MatMul/ReadVariableOp#lstm_cell_570/MatMul/ReadVariableOp2N
%lstm_cell_570/MatMul_1/ReadVariableOp%lstm_cell_570/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
K__inference_sequential_171_layer_call_and_return_conditional_losses_3463602

inputsH
5lstm_513_lstm_cell_570_matmul_readvariableop_resource:	?J
7lstm_513_lstm_cell_570_matmul_1_readvariableop_resource:	d?E
6lstm_513_lstm_cell_570_biasadd_readvariableop_resource:	?H
5lstm_514_lstm_cell_571_matmul_readvariableop_resource:	d?J
7lstm_514_lstm_cell_571_matmul_1_readvariableop_resource:	2?E
6lstm_514_lstm_cell_571_biasadd_readvariableop_resource:	?G
5lstm_515_lstm_cell_572_matmul_readvariableop_resource:2(I
7lstm_515_lstm_cell_572_matmul_1_readvariableop_resource:
(D
6lstm_515_lstm_cell_572_biasadd_readvariableop_resource:(:
(dense_171_matmul_readvariableop_resource:
7
)dense_171_biasadd_readvariableop_resource:
identity?? dense_171/BiasAdd/ReadVariableOp?dense_171/MatMul/ReadVariableOp?-lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp?,lstm_513/lstm_cell_570/MatMul/ReadVariableOp?.lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp?lstm_513/while?-lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp?,lstm_514/lstm_cell_571/MatMul/ReadVariableOp?.lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp?lstm_514/while?-lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp?,lstm_515/lstm_cell_572/MatMul/ReadVariableOp?.lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp?lstm_515/whileD
lstm_513/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_513/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_513/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_513/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_513/strided_sliceStridedSlicelstm_513/Shape:output:0%lstm_513/strided_slice/stack:output:0'lstm_513/strided_slice/stack_1:output:0'lstm_513/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_513/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_513/zeros/packedPacklstm_513/strided_slice:output:0 lstm_513/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_513/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_513/zerosFilllstm_513/zeros/packed:output:0lstm_513/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_513/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_513/zeros_1/packedPacklstm_513/strided_slice:output:0"lstm_513/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_513/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_513/zeros_1Fill lstm_513/zeros_1/packed:output:0lstm_513/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_513/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_513/transpose	Transposeinputs lstm_513/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_513/Shape_1Shapelstm_513/transpose:y:0*
T0*
_output_shapes
:h
lstm_513/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_513/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_513/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_513/strided_slice_1StridedSlicelstm_513/Shape_1:output:0'lstm_513/strided_slice_1/stack:output:0)lstm_513/strided_slice_1/stack_1:output:0)lstm_513/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_513/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_513/TensorArrayV2TensorListReserve-lstm_513/TensorArrayV2/element_shape:output:0!lstm_513/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_513/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_513/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_513/transpose:y:0Glstm_513/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_513/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_513/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_513/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_513/strided_slice_2StridedSlicelstm_513/transpose:y:0'lstm_513/strided_slice_2/stack:output:0)lstm_513/strided_slice_2/stack_1:output:0)lstm_513/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_513/lstm_cell_570/MatMul/ReadVariableOpReadVariableOp5lstm_513_lstm_cell_570_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_513/lstm_cell_570/MatMulMatMul!lstm_513/strided_slice_2:output:04lstm_513/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_513/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp7lstm_513_lstm_cell_570_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_513/lstm_cell_570/MatMul_1MatMullstm_513/zeros:output:06lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_513/lstm_cell_570/addAddV2'lstm_513/lstm_cell_570/MatMul:product:0)lstm_513/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_513/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp6lstm_513_lstm_cell_570_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_513/lstm_cell_570/BiasAddBiasAddlstm_513/lstm_cell_570/add:z:05lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_513/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_513/lstm_cell_570/splitSplit/lstm_513/lstm_cell_570/split/split_dim:output:0'lstm_513/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_513/lstm_cell_570/SigmoidSigmoid%lstm_513/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_513/lstm_cell_570/Sigmoid_1Sigmoid%lstm_513/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_513/lstm_cell_570/mulMul$lstm_513/lstm_cell_570/Sigmoid_1:y:0lstm_513/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_513/lstm_cell_570/ReluRelu%lstm_513/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_513/lstm_cell_570/mul_1Mul"lstm_513/lstm_cell_570/Sigmoid:y:0)lstm_513/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_513/lstm_cell_570/add_1AddV2lstm_513/lstm_cell_570/mul:z:0 lstm_513/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_513/lstm_cell_570/Sigmoid_2Sigmoid%lstm_513/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_513/lstm_cell_570/Relu_1Relu lstm_513/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_513/lstm_cell_570/mul_2Mul$lstm_513/lstm_cell_570/Sigmoid_2:y:0+lstm_513/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_513/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_513/TensorArrayV2_1TensorListReserve/lstm_513/TensorArrayV2_1/element_shape:output:0!lstm_513/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_513/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_513/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_513/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_513/whileWhile$lstm_513/while/loop_counter:output:0*lstm_513/while/maximum_iterations:output:0lstm_513/time:output:0!lstm_513/TensorArrayV2_1:handle:0lstm_513/zeros:output:0lstm_513/zeros_1:output:0!lstm_513/strided_slice_1:output:0@lstm_513/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_513_lstm_cell_570_matmul_readvariableop_resource7lstm_513_lstm_cell_570_matmul_1_readvariableop_resource6lstm_513_lstm_cell_570_biasadd_readvariableop_resource*
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
lstm_513_while_body_3463234*'
condR
lstm_513_while_cond_3463233*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_513/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_513/TensorArrayV2Stack/TensorListStackTensorListStacklstm_513/while:output:3Blstm_513/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_513/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_513/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_513/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_513/strided_slice_3StridedSlice4lstm_513/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_513/strided_slice_3/stack:output:0)lstm_513/strided_slice_3/stack_1:output:0)lstm_513/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_513/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_513/transpose_1	Transpose4lstm_513/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_513/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_513/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_514/ShapeShapelstm_513/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_514/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_514/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_514/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_514/strided_sliceStridedSlicelstm_514/Shape:output:0%lstm_514/strided_slice/stack:output:0'lstm_514/strided_slice/stack_1:output:0'lstm_514/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_514/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_514/zeros/packedPacklstm_514/strided_slice:output:0 lstm_514/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_514/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_514/zerosFilllstm_514/zeros/packed:output:0lstm_514/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_514/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_514/zeros_1/packedPacklstm_514/strided_slice:output:0"lstm_514/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_514/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_514/zeros_1Fill lstm_514/zeros_1/packed:output:0lstm_514/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_514/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_514/transpose	Transposelstm_513/transpose_1:y:0 lstm_514/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_514/Shape_1Shapelstm_514/transpose:y:0*
T0*
_output_shapes
:h
lstm_514/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_514/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_514/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_514/strided_slice_1StridedSlicelstm_514/Shape_1:output:0'lstm_514/strided_slice_1/stack:output:0)lstm_514/strided_slice_1/stack_1:output:0)lstm_514/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_514/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_514/TensorArrayV2TensorListReserve-lstm_514/TensorArrayV2/element_shape:output:0!lstm_514/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_514/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_514/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_514/transpose:y:0Glstm_514/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_514/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_514/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_514/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_514/strided_slice_2StridedSlicelstm_514/transpose:y:0'lstm_514/strided_slice_2/stack:output:0)lstm_514/strided_slice_2/stack_1:output:0)lstm_514/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_514/lstm_cell_571/MatMul/ReadVariableOpReadVariableOp5lstm_514_lstm_cell_571_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_514/lstm_cell_571/MatMulMatMul!lstm_514/strided_slice_2:output:04lstm_514/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_514/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp7lstm_514_lstm_cell_571_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_514/lstm_cell_571/MatMul_1MatMullstm_514/zeros:output:06lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_514/lstm_cell_571/addAddV2'lstm_514/lstm_cell_571/MatMul:product:0)lstm_514/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_514/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp6lstm_514_lstm_cell_571_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_514/lstm_cell_571/BiasAddBiasAddlstm_514/lstm_cell_571/add:z:05lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_514/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_514/lstm_cell_571/splitSplit/lstm_514/lstm_cell_571/split/split_dim:output:0'lstm_514/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_514/lstm_cell_571/SigmoidSigmoid%lstm_514/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_514/lstm_cell_571/Sigmoid_1Sigmoid%lstm_514/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_514/lstm_cell_571/mulMul$lstm_514/lstm_cell_571/Sigmoid_1:y:0lstm_514/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_514/lstm_cell_571/ReluRelu%lstm_514/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_514/lstm_cell_571/mul_1Mul"lstm_514/lstm_cell_571/Sigmoid:y:0)lstm_514/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_514/lstm_cell_571/add_1AddV2lstm_514/lstm_cell_571/mul:z:0 lstm_514/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_514/lstm_cell_571/Sigmoid_2Sigmoid%lstm_514/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_514/lstm_cell_571/Relu_1Relu lstm_514/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_514/lstm_cell_571/mul_2Mul$lstm_514/lstm_cell_571/Sigmoid_2:y:0+lstm_514/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_514/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_514/TensorArrayV2_1TensorListReserve/lstm_514/TensorArrayV2_1/element_shape:output:0!lstm_514/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_514/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_514/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_514/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_514/whileWhile$lstm_514/while/loop_counter:output:0*lstm_514/while/maximum_iterations:output:0lstm_514/time:output:0!lstm_514/TensorArrayV2_1:handle:0lstm_514/zeros:output:0lstm_514/zeros_1:output:0!lstm_514/strided_slice_1:output:0@lstm_514/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_514_lstm_cell_571_matmul_readvariableop_resource7lstm_514_lstm_cell_571_matmul_1_readvariableop_resource6lstm_514_lstm_cell_571_biasadd_readvariableop_resource*
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
lstm_514_while_body_3463373*'
condR
lstm_514_while_cond_3463372*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_514/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_514/TensorArrayV2Stack/TensorListStackTensorListStacklstm_514/while:output:3Blstm_514/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_514/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_514/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_514/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_514/strided_slice_3StridedSlice4lstm_514/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_514/strided_slice_3/stack:output:0)lstm_514/strided_slice_3/stack_1:output:0)lstm_514/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_514/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_514/transpose_1	Transpose4lstm_514/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_514/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_514/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_515/ShapeShapelstm_514/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_515/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_515/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_515/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_515/strided_sliceStridedSlicelstm_515/Shape:output:0%lstm_515/strided_slice/stack:output:0'lstm_515/strided_slice/stack_1:output:0'lstm_515/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_515/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_515/zeros/packedPacklstm_515/strided_slice:output:0 lstm_515/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_515/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_515/zerosFilllstm_515/zeros/packed:output:0lstm_515/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_515/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_515/zeros_1/packedPacklstm_515/strided_slice:output:0"lstm_515/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_515/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_515/zeros_1Fill lstm_515/zeros_1/packed:output:0lstm_515/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_515/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_515/transpose	Transposelstm_514/transpose_1:y:0 lstm_515/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_515/Shape_1Shapelstm_515/transpose:y:0*
T0*
_output_shapes
:h
lstm_515/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_515/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_515/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_515/strided_slice_1StridedSlicelstm_515/Shape_1:output:0'lstm_515/strided_slice_1/stack:output:0)lstm_515/strided_slice_1/stack_1:output:0)lstm_515/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_515/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_515/TensorArrayV2TensorListReserve-lstm_515/TensorArrayV2/element_shape:output:0!lstm_515/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_515/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_515/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_515/transpose:y:0Glstm_515/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_515/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_515/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_515/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_515/strided_slice_2StridedSlicelstm_515/transpose:y:0'lstm_515/strided_slice_2/stack:output:0)lstm_515/strided_slice_2/stack_1:output:0)lstm_515/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_515/lstm_cell_572/MatMul/ReadVariableOpReadVariableOp5lstm_515_lstm_cell_572_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_515/lstm_cell_572/MatMulMatMul!lstm_515/strided_slice_2:output:04lstm_515/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_515/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp7lstm_515_lstm_cell_572_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_515/lstm_cell_572/MatMul_1MatMullstm_515/zeros:output:06lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_515/lstm_cell_572/addAddV2'lstm_515/lstm_cell_572/MatMul:product:0)lstm_515/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_515/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp6lstm_515_lstm_cell_572_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_515/lstm_cell_572/BiasAddBiasAddlstm_515/lstm_cell_572/add:z:05lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_515/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_515/lstm_cell_572/splitSplit/lstm_515/lstm_cell_572/split/split_dim:output:0'lstm_515/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_515/lstm_cell_572/SigmoidSigmoid%lstm_515/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_515/lstm_cell_572/Sigmoid_1Sigmoid%lstm_515/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_515/lstm_cell_572/mulMul$lstm_515/lstm_cell_572/Sigmoid_1:y:0lstm_515/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_515/lstm_cell_572/ReluRelu%lstm_515/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_515/lstm_cell_572/mul_1Mul"lstm_515/lstm_cell_572/Sigmoid:y:0)lstm_515/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_515/lstm_cell_572/add_1AddV2lstm_515/lstm_cell_572/mul:z:0 lstm_515/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_515/lstm_cell_572/Sigmoid_2Sigmoid%lstm_515/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_515/lstm_cell_572/Relu_1Relu lstm_515/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_515/lstm_cell_572/mul_2Mul$lstm_515/lstm_cell_572/Sigmoid_2:y:0+lstm_515/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_515/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_515/TensorArrayV2_1TensorListReserve/lstm_515/TensorArrayV2_1/element_shape:output:0!lstm_515/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_515/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_515/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_515/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_515/whileWhile$lstm_515/while/loop_counter:output:0*lstm_515/while/maximum_iterations:output:0lstm_515/time:output:0!lstm_515/TensorArrayV2_1:handle:0lstm_515/zeros:output:0lstm_515/zeros_1:output:0!lstm_515/strided_slice_1:output:0@lstm_515/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_515_lstm_cell_572_matmul_readvariableop_resource7lstm_515_lstm_cell_572_matmul_1_readvariableop_resource6lstm_515_lstm_cell_572_biasadd_readvariableop_resource*
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
lstm_515_while_body_3463512*'
condR
lstm_515_while_cond_3463511*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_515/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_515/TensorArrayV2Stack/TensorListStackTensorListStacklstm_515/while:output:3Blstm_515/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_515/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_515/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_515/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_515/strided_slice_3StridedSlice4lstm_515/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_515/strided_slice_3/stack:output:0)lstm_515/strided_slice_3/stack_1:output:0)lstm_515/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_515/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_515/transpose_1	Transpose4lstm_515/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_515/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_515/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_171/MatMul/ReadVariableOpReadVariableOp(dense_171_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_171/MatMulMatMul!lstm_515/strided_slice_3:output:0'dense_171/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_171/BiasAdd/ReadVariableOpReadVariableOp)dense_171_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_171/BiasAddBiasAdddense_171/MatMul:product:0(dense_171/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_171/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_171/BiasAdd/ReadVariableOp ^dense_171/MatMul/ReadVariableOp.^lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp-^lstm_513/lstm_cell_570/MatMul/ReadVariableOp/^lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp^lstm_513/while.^lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp-^lstm_514/lstm_cell_571/MatMul/ReadVariableOp/^lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp^lstm_514/while.^lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp-^lstm_515/lstm_cell_572/MatMul/ReadVariableOp/^lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp^lstm_515/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_171/BiasAdd/ReadVariableOp dense_171/BiasAdd/ReadVariableOp2B
dense_171/MatMul/ReadVariableOpdense_171/MatMul/ReadVariableOp2^
-lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp-lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp2\
,lstm_513/lstm_cell_570/MatMul/ReadVariableOp,lstm_513/lstm_cell_570/MatMul/ReadVariableOp2`
.lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp.lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp2 
lstm_513/whilelstm_513/while2^
-lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp-lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp2\
,lstm_514/lstm_cell_571/MatMul/ReadVariableOp,lstm_514/lstm_cell_571/MatMul/ReadVariableOp2`
.lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp.lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp2 
lstm_514/whilelstm_514/while2^
-lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp-lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp2\
,lstm_515/lstm_cell_572/MatMul/ReadVariableOp,lstm_515/lstm_cell_572/MatMul/ReadVariableOp2`
.lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp.lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp2 
lstm_515/whilelstm_515/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3464321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_571_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_571_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_571_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_571_matmul_readvariableop_resource:	d?G
4while_lstm_cell_571_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_571_biasadd_readvariableop_resource:	???*while/lstm_cell_571/BiasAdd/ReadVariableOp?)while/lstm_cell_571/MatMul/ReadVariableOp?+while/lstm_cell_571/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_571/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_571_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_571/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_571_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_571/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_571/addAddV2$while/lstm_cell_571/MatMul:product:0&while/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_571_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_571/BiasAddBiasAddwhile/lstm_cell_571/add:z:02while/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_571/splitSplit,while/lstm_cell_571/split/split_dim:output:0$while/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_571/SigmoidSigmoid"while/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_1Sigmoid"while/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mulMul!while/lstm_cell_571/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_571/ReluRelu"while/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_1Mulwhile/lstm_cell_571/Sigmoid:y:0&while/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/add_1AddV2while/lstm_cell_571/mul:z:0while/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_2Sigmoid"while/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_571/Relu_1Reluwhile/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_2Mul!while/lstm_cell_571/Sigmoid_2:y:0(while/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_571/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_571/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_571/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_571/BiasAdd/ReadVariableOp*^while/lstm_cell_571/MatMul/ReadVariableOp,^while/lstm_cell_571/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_571_biasadd_readvariableop_resource5while_lstm_cell_571_biasadd_readvariableop_resource_0"n
4while_lstm_cell_571_matmul_1_readvariableop_resource6while_lstm_cell_571_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_571_matmul_readvariableop_resource4while_lstm_cell_571_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_571/BiasAdd/ReadVariableOp*while/lstm_cell_571/BiasAdd/ReadVariableOp2V
)while/lstm_cell_571/MatMul/ReadVariableOp)while/lstm_cell_571/MatMul/ReadVariableOp2Z
+while/lstm_cell_571/MatMul_1/ReadVariableOp+while/lstm_cell_571/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_513_layer_call_fn_3463646

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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3462479s
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
?
E__inference_lstm_513_layer_call_and_return_conditional_losses_3460775

inputs(
lstm_cell_570_3460693:	?(
lstm_cell_570_3460695:	d?$
lstm_cell_570_3460697:	?
identity??%lstm_cell_570/StatefulPartitionedCall?while;
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
%lstm_cell_570/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_570_3460693lstm_cell_570_3460695lstm_cell_570_3460697*
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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3460647n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_570_3460693lstm_cell_570_3460695lstm_cell_570_3460697*
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
while_body_3460706*
condR
while_cond_3460705*K
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
NoOpNoOp&^lstm_cell_570/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_570/StatefulPartitionedCall%lstm_cell_570/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_3462694
lstm_513_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_513_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3460434o
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
_user_specified_namelstm_513_input
?T
?
*sequential_171_lstm_514_while_body_3460205L
Hsequential_171_lstm_514_while_sequential_171_lstm_514_while_loop_counterR
Nsequential_171_lstm_514_while_sequential_171_lstm_514_while_maximum_iterations-
)sequential_171_lstm_514_while_placeholder/
+sequential_171_lstm_514_while_placeholder_1/
+sequential_171_lstm_514_while_placeholder_2/
+sequential_171_lstm_514_while_placeholder_3K
Gsequential_171_lstm_514_while_sequential_171_lstm_514_strided_slice_1_0?
?sequential_171_lstm_514_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_514_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_171_lstm_514_while_lstm_cell_571_matmul_readvariableop_resource_0:	d?a
Nsequential_171_lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource_0:	2?\
Msequential_171_lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource_0:	?*
&sequential_171_lstm_514_while_identity,
(sequential_171_lstm_514_while_identity_1,
(sequential_171_lstm_514_while_identity_2,
(sequential_171_lstm_514_while_identity_3,
(sequential_171_lstm_514_while_identity_4,
(sequential_171_lstm_514_while_identity_5I
Esequential_171_lstm_514_while_sequential_171_lstm_514_strided_slice_1?
?sequential_171_lstm_514_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_514_tensorarrayunstack_tensorlistfromtensor]
Jsequential_171_lstm_514_while_lstm_cell_571_matmul_readvariableop_resource:	d?_
Lsequential_171_lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource:	2?Z
Ksequential_171_lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource:	???Bsequential_171/lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp?Asequential_171/lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp?Csequential_171/lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp?
Osequential_171/lstm_514/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_171/lstm_514/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_171_lstm_514_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_514_tensorarrayunstack_tensorlistfromtensor_0)sequential_171_lstm_514_while_placeholderXsequential_171/lstm_514/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_171/lstm_514/while/lstm_cell_571/MatMul/ReadVariableOpReadVariableOpLsequential_171_lstm_514_while_lstm_cell_571_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_171/lstm_514/while/lstm_cell_571/MatMulMatMulHsequential_171/lstm_514/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_171/lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_171/lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOpNsequential_171_lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_171/lstm_514/while/lstm_cell_571/MatMul_1MatMul+sequential_171_lstm_514_while_placeholder_2Ksequential_171/lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_171/lstm_514/while/lstm_cell_571/addAddV2<sequential_171/lstm_514/while/lstm_cell_571/MatMul:product:0>sequential_171/lstm_514/while/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_171/lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOpMsequential_171_lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_171/lstm_514/while/lstm_cell_571/BiasAddBiasAdd3sequential_171/lstm_514/while/lstm_cell_571/add:z:0Jsequential_171/lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_171/lstm_514/while/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_171/lstm_514/while/lstm_cell_571/splitSplitDsequential_171/lstm_514/while/lstm_cell_571/split/split_dim:output:0<sequential_171/lstm_514/while/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_171/lstm_514/while/lstm_cell_571/SigmoidSigmoid:sequential_171/lstm_514/while/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_171/lstm_514/while/lstm_cell_571/Sigmoid_1Sigmoid:sequential_171/lstm_514/while/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_171/lstm_514/while/lstm_cell_571/mulMul9sequential_171/lstm_514/while/lstm_cell_571/Sigmoid_1:y:0+sequential_171_lstm_514_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_171/lstm_514/while/lstm_cell_571/ReluRelu:sequential_171/lstm_514/while/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_171/lstm_514/while/lstm_cell_571/mul_1Mul7sequential_171/lstm_514/while/lstm_cell_571/Sigmoid:y:0>sequential_171/lstm_514/while/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_171/lstm_514/while/lstm_cell_571/add_1AddV23sequential_171/lstm_514/while/lstm_cell_571/mul:z:05sequential_171/lstm_514/while/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_171/lstm_514/while/lstm_cell_571/Sigmoid_2Sigmoid:sequential_171/lstm_514/while/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_171/lstm_514/while/lstm_cell_571/Relu_1Relu5sequential_171/lstm_514/while/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_171/lstm_514/while/lstm_cell_571/mul_2Mul9sequential_171/lstm_514/while/lstm_cell_571/Sigmoid_2:y:0@sequential_171/lstm_514/while/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_171/lstm_514/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_171_lstm_514_while_placeholder_1)sequential_171_lstm_514_while_placeholder5sequential_171/lstm_514/while/lstm_cell_571/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_171/lstm_514/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_171/lstm_514/while/addAddV2)sequential_171_lstm_514_while_placeholder,sequential_171/lstm_514/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_171/lstm_514/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_171/lstm_514/while/add_1AddV2Hsequential_171_lstm_514_while_sequential_171_lstm_514_while_loop_counter.sequential_171/lstm_514/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_171/lstm_514/while/IdentityIdentity'sequential_171/lstm_514/while/add_1:z:0#^sequential_171/lstm_514/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_514/while/Identity_1IdentityNsequential_171_lstm_514_while_sequential_171_lstm_514_while_maximum_iterations#^sequential_171/lstm_514/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_514/while/Identity_2Identity%sequential_171/lstm_514/while/add:z:0#^sequential_171/lstm_514/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_514/while/Identity_3IdentityRsequential_171/lstm_514/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_171/lstm_514/while/NoOp*
T0*
_output_shapes
: ?
(sequential_171/lstm_514/while/Identity_4Identity5sequential_171/lstm_514/while/lstm_cell_571/mul_2:z:0#^sequential_171/lstm_514/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_171/lstm_514/while/Identity_5Identity5sequential_171/lstm_514/while/lstm_cell_571/add_1:z:0#^sequential_171/lstm_514/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_171/lstm_514/while/NoOpNoOpC^sequential_171/lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOpB^sequential_171/lstm_514/while/lstm_cell_571/MatMul/ReadVariableOpD^sequential_171/lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_171_lstm_514_while_identity/sequential_171/lstm_514/while/Identity:output:0"]
(sequential_171_lstm_514_while_identity_11sequential_171/lstm_514/while/Identity_1:output:0"]
(sequential_171_lstm_514_while_identity_21sequential_171/lstm_514/while/Identity_2:output:0"]
(sequential_171_lstm_514_while_identity_31sequential_171/lstm_514/while/Identity_3:output:0"]
(sequential_171_lstm_514_while_identity_41sequential_171/lstm_514/while/Identity_4:output:0"]
(sequential_171_lstm_514_while_identity_51sequential_171/lstm_514/while/Identity_5:output:0"?
Ksequential_171_lstm_514_while_lstm_cell_571_biasadd_readvariableop_resourceMsequential_171_lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource_0"?
Lsequential_171_lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resourceNsequential_171_lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource_0"?
Jsequential_171_lstm_514_while_lstm_cell_571_matmul_readvariableop_resourceLsequential_171_lstm_514_while_lstm_cell_571_matmul_readvariableop_resource_0"?
Esequential_171_lstm_514_while_sequential_171_lstm_514_strided_slice_1Gsequential_171_lstm_514_while_sequential_171_lstm_514_strided_slice_1_0"?
?sequential_171_lstm_514_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_514_tensorarrayunstack_tensorlistfromtensor?sequential_171_lstm_514_while_tensorarrayv2read_tensorlistgetitem_sequential_171_lstm_514_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_171/lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOpBsequential_171/lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp2?
Asequential_171/lstm_514/while/lstm_cell_571/MatMul/ReadVariableOpAsequential_171/lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp2?
Csequential_171/lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOpCsequential_171/lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3462065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_572_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_572_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_572_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_572_matmul_readvariableop_resource:2(F
4while_lstm_cell_572_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_572_biasadd_readvariableop_resource:(??*while/lstm_cell_572/BiasAdd/ReadVariableOp?)while/lstm_cell_572/MatMul/ReadVariableOp?+while/lstm_cell_572/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_572/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_572_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_572/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_572_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_572/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_572/addAddV2$while/lstm_cell_572/MatMul:product:0&while/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_572_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_572/BiasAddBiasAddwhile/lstm_cell_572/add:z:02while/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_572/splitSplit,while/lstm_cell_572/split/split_dim:output:0$while/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_572/SigmoidSigmoid"while/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_1Sigmoid"while/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mulMul!while/lstm_cell_572/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_572/ReluRelu"while/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_1Mulwhile/lstm_cell_572/Sigmoid:y:0&while/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/add_1AddV2while/lstm_cell_572/mul:z:0while/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_2Sigmoid"while/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_572/Relu_1Reluwhile/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_2Mul!while/lstm_cell_572/Sigmoid_2:y:0(while/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_572/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_572/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_572/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_572/BiasAdd/ReadVariableOp*^while/lstm_cell_572/MatMul/ReadVariableOp,^while/lstm_cell_572/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_572_biasadd_readvariableop_resource5while_lstm_cell_572_biasadd_readvariableop_resource_0"n
4while_lstm_cell_572_matmul_1_readvariableop_resource6while_lstm_cell_572_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_572_matmul_readvariableop_resource4while_lstm_cell_572_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_572/BiasAdd/ReadVariableOp*while/lstm_cell_572/BiasAdd/ReadVariableOp2V
)while/lstm_cell_572/MatMul/ReadVariableOp)while/lstm_cell_572/MatMul/ReadVariableOp2Z
+while/lstm_cell_572/MatMul_1/ReadVariableOp+while/lstm_cell_572/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3461201

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
while_body_3465223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_572_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_572_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_572_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_572_matmul_readvariableop_resource:2(F
4while_lstm_cell_572_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_572_biasadd_readvariableop_resource:(??*while/lstm_cell_572/BiasAdd/ReadVariableOp?)while/lstm_cell_572/MatMul/ReadVariableOp?+while/lstm_cell_572/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_572/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_572_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_572/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_572_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_572/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_572/addAddV2$while/lstm_cell_572/MatMul:product:0&while/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_572_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_572/BiasAddBiasAddwhile/lstm_cell_572/add:z:02while/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_572/splitSplit,while/lstm_cell_572/split/split_dim:output:0$while/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_572/SigmoidSigmoid"while/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_1Sigmoid"while/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mulMul!while/lstm_cell_572/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_572/ReluRelu"while/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_1Mulwhile/lstm_cell_572/Sigmoid:y:0&while/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/add_1AddV2while/lstm_cell_572/mul:z:0while/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_2Sigmoid"while/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_572/Relu_1Reluwhile/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_2Mul!while/lstm_cell_572/Sigmoid_2:y:0(while/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_572/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_572/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_572/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_572/BiasAdd/ReadVariableOp*^while/lstm_cell_572/MatMul/ReadVariableOp,^while/lstm_cell_572/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_572_biasadd_readvariableop_resource5while_lstm_cell_572_biasadd_readvariableop_resource_0"n
4while_lstm_cell_572_matmul_1_readvariableop_resource6while_lstm_cell_572_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_572_matmul_readvariableop_resource4while_lstm_cell_572_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_572/BiasAdd/ReadVariableOp*while/lstm_cell_572/BiasAdd/ReadVariableOp2V
)while/lstm_cell_572/MatMul/ReadVariableOp)while/lstm_cell_572/MatMul/ReadVariableOp2Z
+while/lstm_cell_572/MatMul_1/ReadVariableOp+while/lstm_cell_572/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_515_layer_call_fn_3464878

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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3462149o
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
while_cond_3465365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3465365___redundant_placeholder05
1while_while_cond_3465365___redundant_placeholder15
1while_while_cond_3465365___redundant_placeholder25
1while_while_cond_3465365___redundant_placeholder3
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
F__inference_dense_171_layer_call_and_return_conditional_losses_3465469

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
?
*sequential_171_lstm_514_while_cond_3460204L
Hsequential_171_lstm_514_while_sequential_171_lstm_514_while_loop_counterR
Nsequential_171_lstm_514_while_sequential_171_lstm_514_while_maximum_iterations-
)sequential_171_lstm_514_while_placeholder/
+sequential_171_lstm_514_while_placeholder_1/
+sequential_171_lstm_514_while_placeholder_2/
+sequential_171_lstm_514_while_placeholder_3N
Jsequential_171_lstm_514_while_less_sequential_171_lstm_514_strided_slice_1e
asequential_171_lstm_514_while_sequential_171_lstm_514_while_cond_3460204___redundant_placeholder0e
asequential_171_lstm_514_while_sequential_171_lstm_514_while_cond_3460204___redundant_placeholder1e
asequential_171_lstm_514_while_sequential_171_lstm_514_while_cond_3460204___redundant_placeholder2e
asequential_171_lstm_514_while_sequential_171_lstm_514_while_cond_3460204___redundant_placeholder3*
&sequential_171_lstm_514_while_identity
?
"sequential_171/lstm_514/while/LessLess)sequential_171_lstm_514_while_placeholderJsequential_171_lstm_514_while_less_sequential_171_lstm_514_strided_slice_1*
T0*
_output_shapes
: {
&sequential_171/lstm_514/while/IdentityIdentity&sequential_171/lstm_514/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_171_lstm_514_while_identity/sequential_171/lstm_514/while/Identity:output:0*(
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
while_body_3462395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_570_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_570_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_570_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_570_matmul_readvariableop_resource:	?G
4while_lstm_cell_570_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_570_biasadd_readvariableop_resource:	???*while/lstm_cell_570/BiasAdd/ReadVariableOp?)while/lstm_cell_570/MatMul/ReadVariableOp?+while/lstm_cell_570/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_570/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_570_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_570/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_570_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_570/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_570/addAddV2$while/lstm_cell_570/MatMul:product:0&while/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_570_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_570/BiasAddBiasAddwhile/lstm_cell_570/add:z:02while/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_570/splitSplit,while/lstm_cell_570/split/split_dim:output:0$while/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_570/SigmoidSigmoid"while/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_1Sigmoid"while/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mulMul!while/lstm_cell_570/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_570/ReluRelu"while/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_1Mulwhile/lstm_cell_570/Sigmoid:y:0&while/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/add_1AddV2while/lstm_cell_570/mul:z:0while/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_2Sigmoid"while/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_570/Relu_1Reluwhile/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_2Mul!while/lstm_cell_570/Sigmoid_2:y:0(while/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_570/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_570/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_570/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_570/BiasAdd/ReadVariableOp*^while/lstm_cell_570/MatMul/ReadVariableOp,^while/lstm_cell_570/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_570_biasadd_readvariableop_resource5while_lstm_cell_570_biasadd_readvariableop_resource_0"n
4while_lstm_cell_570_matmul_1_readvariableop_resource6while_lstm_cell_570_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_570_matmul_readvariableop_resource4while_lstm_cell_570_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_570/BiasAdd/ReadVariableOp*while/lstm_cell_570/BiasAdd/ReadVariableOp2V
)while/lstm_cell_570/MatMul/ReadVariableOp)while/lstm_cell_570/MatMul/ReadVariableOp2Z
+while/lstm_cell_570/MatMul_1/ReadVariableOp+while/lstm_cell_570/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465450

inputs>
,lstm_cell_572_matmul_readvariableop_resource:2(@
.lstm_cell_572_matmul_1_readvariableop_resource:
(;
-lstm_cell_572_biasadd_readvariableop_resource:(
identity??$lstm_cell_572/BiasAdd/ReadVariableOp?#lstm_cell_572/MatMul/ReadVariableOp?%lstm_cell_572/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_572/MatMul/ReadVariableOpReadVariableOp,lstm_cell_572_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_572/MatMulMatMulstrided_slice_2:output:0+lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_572_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_572/MatMul_1MatMulzeros:output:0-lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_572/addAddV2lstm_cell_572/MatMul:product:0 lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_572_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_572/BiasAddBiasAddlstm_cell_572/add:z:0,lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_572/splitSplit&lstm_cell_572/split/split_dim:output:0lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_572/SigmoidSigmoidlstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_1Sigmoidlstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_572/mulMullstm_cell_572/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_572/ReluRelulstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_1Mullstm_cell_572/Sigmoid:y:0 lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_572/add_1AddV2lstm_cell_572/mul:z:0lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_2Sigmoidlstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_572/Relu_1Relulstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_2Mullstm_cell_572/Sigmoid_2:y:0"lstm_cell_572/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_572_matmul_readvariableop_resource.lstm_cell_572_matmul_1_readvariableop_resource-lstm_cell_572_biasadd_readvariableop_resource*
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
while_body_3465366*
condR
while_cond_3465365*K
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
NoOpNoOp%^lstm_cell_572/BiasAdd/ReadVariableOp$^lstm_cell_572/MatMul/ReadVariableOp&^lstm_cell_572/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_572/BiasAdd/ReadVariableOp$lstm_cell_572/BiasAdd/ReadVariableOp2J
#lstm_cell_572/MatMul/ReadVariableOp#lstm_cell_572/MatMul/ReadVariableOp2N
%lstm_cell_572/MatMul_1/ReadVariableOp%lstm_cell_572/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_3460706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_570_3460730_0:	?0
while_lstm_cell_570_3460732_0:	d?,
while_lstm_cell_570_3460734_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_570_3460730:	?.
while_lstm_cell_570_3460732:	d?*
while_lstm_cell_570_3460734:	???+while/lstm_cell_570/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_570/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_570_3460730_0while_lstm_cell_570_3460732_0while_lstm_cell_570_3460734_0*
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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3460647?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_570/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_570/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_570/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_570/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_570_3460730while_lstm_cell_570_3460730_0"<
while_lstm_cell_570_3460732while_lstm_cell_570_3460732_0"<
while_lstm_cell_570_3460734while_lstm_cell_570_3460734_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_570/StatefulPartitionedCall+while/lstm_cell_570/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3462394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3462394___redundant_placeholder05
1while_while_cond_3462394___redundant_placeholder15
1while_while_cond_3462394___redundant_placeholder25
1while_while_cond_3462394___redundant_placeholder3
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
while_body_3463991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_570_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_570_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_570_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_570_matmul_readvariableop_resource:	?G
4while_lstm_cell_570_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_570_biasadd_readvariableop_resource:	???*while/lstm_cell_570/BiasAdd/ReadVariableOp?)while/lstm_cell_570/MatMul/ReadVariableOp?+while/lstm_cell_570/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_570/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_570_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_570/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_570_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_570/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_570/addAddV2$while/lstm_cell_570/MatMul:product:0&while/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_570_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_570/BiasAddBiasAddwhile/lstm_cell_570/add:z:02while/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_570/splitSplit,while/lstm_cell_570/split/split_dim:output:0$while/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_570/SigmoidSigmoid"while/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_1Sigmoid"while/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mulMul!while/lstm_cell_570/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_570/ReluRelu"while/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_1Mulwhile/lstm_cell_570/Sigmoid:y:0&while/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/add_1AddV2while/lstm_cell_570/mul:z:0while/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_2Sigmoid"while/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_570/Relu_1Reluwhile/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_2Mul!while/lstm_cell_570/Sigmoid_2:y:0(while/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_570/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_570/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_570/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_570/BiasAdd/ReadVariableOp*^while/lstm_cell_570/MatMul/ReadVariableOp,^while/lstm_cell_570/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_570_biasadd_readvariableop_resource5while_lstm_cell_570_biasadd_readvariableop_resource_0"n
4while_lstm_cell_570_matmul_1_readvariableop_resource6while_lstm_cell_570_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_570_matmul_readvariableop_resource4while_lstm_cell_570_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_570/BiasAdd/ReadVariableOp*while/lstm_cell_570/BiasAdd/ReadVariableOp2V
)while/lstm_cell_570/MatMul/ReadVariableOp)while/lstm_cell_570/MatMul/ReadVariableOp2Z
+while/lstm_cell_570/MatMul_1/ReadVariableOp+while/lstm_cell_570/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3464133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3464133___redundant_placeholder05
1while_while_cond_3464133___redundant_placeholder15
1while_while_cond_3464133___redundant_placeholder25
1while_while_cond_3464133___redundant_placeholder3
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
0__inference_sequential_171_layer_call_fn_3462748

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
K__inference_sequential_171_layer_call_and_return_conditional_losses_3462547o
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

?
lstm_514_while_cond_3463372.
*lstm_514_while_lstm_514_while_loop_counter4
0lstm_514_while_lstm_514_while_maximum_iterations
lstm_514_while_placeholder 
lstm_514_while_placeholder_1 
lstm_514_while_placeholder_2 
lstm_514_while_placeholder_30
,lstm_514_while_less_lstm_514_strided_slice_1G
Clstm_514_while_lstm_514_while_cond_3463372___redundant_placeholder0G
Clstm_514_while_lstm_514_while_cond_3463372___redundant_placeholder1G
Clstm_514_while_lstm_514_while_cond_3463372___redundant_placeholder2G
Clstm_514_while_lstm_514_while_cond_3463372___redundant_placeholder3
lstm_514_while_identity
?
lstm_514/while/LessLesslstm_514_while_placeholder,lstm_514_while_less_lstm_514_strided_slice_1*
T0*
_output_shapes
: ]
lstm_514/while/IdentityIdentitylstm_514/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_514_while_identity lstm_514/while/Identity:output:0*(
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
/__inference_lstm_cell_572_layer_call_fn_3465699

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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3461347o
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
?
?
while_cond_3462229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3462229___redundant_placeholder05
1while_while_cond_3462229___redundant_placeholder15
1while_while_cond_3462229___redundant_placeholder25
1while_while_cond_3462229___redundant_placeholder3
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
while_body_3464937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_572_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_572_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_572_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_572_matmul_readvariableop_resource:2(F
4while_lstm_cell_572_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_572_biasadd_readvariableop_resource:(??*while/lstm_cell_572/BiasAdd/ReadVariableOp?)while/lstm_cell_572/MatMul/ReadVariableOp?+while/lstm_cell_572/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_572/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_572_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_572/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_572_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_572/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_572/addAddV2$while/lstm_cell_572/MatMul:product:0&while/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_572_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_572/BiasAddBiasAddwhile/lstm_cell_572/add:z:02while/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_572/splitSplit,while/lstm_cell_572/split/split_dim:output:0$while/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_572/SigmoidSigmoid"while/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_1Sigmoid"while/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mulMul!while/lstm_cell_572/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_572/ReluRelu"while/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_1Mulwhile/lstm_cell_572/Sigmoid:y:0&while/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/add_1AddV2while/lstm_cell_572/mul:z:0while/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_572/Sigmoid_2Sigmoid"while/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_572/Relu_1Reluwhile/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_572/mul_2Mul!while/lstm_cell_572/Sigmoid_2:y:0(while/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_572/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_572/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_572/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_572/BiasAdd/ReadVariableOp*^while/lstm_cell_572/MatMul/ReadVariableOp,^while/lstm_cell_572/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_572_biasadd_readvariableop_resource5while_lstm_cell_572_biasadd_readvariableop_resource_0"n
4while_lstm_cell_572_matmul_1_readvariableop_resource6while_lstm_cell_572_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_572_matmul_readvariableop_resource4while_lstm_cell_572_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_572/BiasAdd/ReadVariableOp*while/lstm_cell_572/BiasAdd/ReadVariableOp2V
)while/lstm_cell_572/MatMul/ReadVariableOp)while/lstm_cell_572/MatMul/ReadVariableOp2Z
+while/lstm_cell_572/MatMul_1/ReadVariableOp+while/lstm_cell_572/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3465633

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
while_body_3461406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_572_3461430_0:2(/
while_lstm_cell_572_3461432_0:
(+
while_lstm_cell_572_3461434_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_572_3461430:2(-
while_lstm_cell_572_3461432:
()
while_lstm_cell_572_3461434:(??+while/lstm_cell_572/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_572/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_572_3461430_0while_lstm_cell_572_3461432_0while_lstm_cell_572_3461434_0*
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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3461347?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_572/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_572/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_572/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_572/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_572_3461430while_lstm_cell_572_3461430_0"<
while_lstm_cell_572_3461432while_lstm_cell_572_3461432_0"<
while_lstm_cell_572_3461434while_lstm_cell_572_3461434_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_572/StatefulPartitionedCall+while/lstm_cell_572/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464548
inputs_0?
,lstm_cell_571_matmul_readvariableop_resource:	d?A
.lstm_cell_571_matmul_1_readvariableop_resource:	2?<
-lstm_cell_571_biasadd_readvariableop_resource:	?
identity??$lstm_cell_571/BiasAdd/ReadVariableOp?#lstm_cell_571/MatMul/ReadVariableOp?%lstm_cell_571/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_571/MatMul/ReadVariableOpReadVariableOp,lstm_cell_571_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_571/MatMulMatMulstrided_slice_2:output:0+lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_571_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_571/MatMul_1MatMulzeros:output:0-lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_571/addAddV2lstm_cell_571/MatMul:product:0 lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_571_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_571/BiasAddBiasAddlstm_cell_571/add:z:0,lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_571/splitSplit&lstm_cell_571/split/split_dim:output:0lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_571/SigmoidSigmoidlstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_1Sigmoidlstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_571/mulMullstm_cell_571/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_571/ReluRelulstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_1Mullstm_cell_571/Sigmoid:y:0 lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_571/add_1AddV2lstm_cell_571/mul:z:0lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_2Sigmoidlstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_571/Relu_1Relulstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_2Mullstm_cell_571/Sigmoid_2:y:0"lstm_cell_571/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_571_matmul_readvariableop_resource.lstm_cell_571_matmul_1_readvariableop_resource-lstm_cell_571_biasadd_readvariableop_resource*
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
while_body_3464464*
condR
while_cond_3464463*K
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
NoOpNoOp%^lstm_cell_571/BiasAdd/ReadVariableOp$^lstm_cell_571/MatMul/ReadVariableOp&^lstm_cell_571/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_571/BiasAdd/ReadVariableOp$lstm_cell_571/BiasAdd/ReadVariableOp2J
#lstm_cell_571/MatMul/ReadVariableOp#lstm_cell_571/MatMul/ReadVariableOp2N
%lstm_cell_571/MatMul_1/ReadVariableOp%lstm_cell_571/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?
"__inference__wrapped_model_3460434
lstm_513_inputW
Dsequential_171_lstm_513_lstm_cell_570_matmul_readvariableop_resource:	?Y
Fsequential_171_lstm_513_lstm_cell_570_matmul_1_readvariableop_resource:	d?T
Esequential_171_lstm_513_lstm_cell_570_biasadd_readvariableop_resource:	?W
Dsequential_171_lstm_514_lstm_cell_571_matmul_readvariableop_resource:	d?Y
Fsequential_171_lstm_514_lstm_cell_571_matmul_1_readvariableop_resource:	2?T
Esequential_171_lstm_514_lstm_cell_571_biasadd_readvariableop_resource:	?V
Dsequential_171_lstm_515_lstm_cell_572_matmul_readvariableop_resource:2(X
Fsequential_171_lstm_515_lstm_cell_572_matmul_1_readvariableop_resource:
(S
Esequential_171_lstm_515_lstm_cell_572_biasadd_readvariableop_resource:(I
7sequential_171_dense_171_matmul_readvariableop_resource:
F
8sequential_171_dense_171_biasadd_readvariableop_resource:
identity??/sequential_171/dense_171/BiasAdd/ReadVariableOp?.sequential_171/dense_171/MatMul/ReadVariableOp?<sequential_171/lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp?;sequential_171/lstm_513/lstm_cell_570/MatMul/ReadVariableOp?=sequential_171/lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp?sequential_171/lstm_513/while?<sequential_171/lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp?;sequential_171/lstm_514/lstm_cell_571/MatMul/ReadVariableOp?=sequential_171/lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp?sequential_171/lstm_514/while?<sequential_171/lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp?;sequential_171/lstm_515/lstm_cell_572/MatMul/ReadVariableOp?=sequential_171/lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp?sequential_171/lstm_515/while[
sequential_171/lstm_513/ShapeShapelstm_513_input*
T0*
_output_shapes
:u
+sequential_171/lstm_513/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_171/lstm_513/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_171/lstm_513/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_171/lstm_513/strided_sliceStridedSlice&sequential_171/lstm_513/Shape:output:04sequential_171/lstm_513/strided_slice/stack:output:06sequential_171/lstm_513/strided_slice/stack_1:output:06sequential_171/lstm_513/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_171/lstm_513/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_171/lstm_513/zeros/packedPack.sequential_171/lstm_513/strided_slice:output:0/sequential_171/lstm_513/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_171/lstm_513/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_171/lstm_513/zerosFill-sequential_171/lstm_513/zeros/packed:output:0,sequential_171/lstm_513/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_171/lstm_513/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_171/lstm_513/zeros_1/packedPack.sequential_171/lstm_513/strided_slice:output:01sequential_171/lstm_513/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_171/lstm_513/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_171/lstm_513/zeros_1Fill/sequential_171/lstm_513/zeros_1/packed:output:0.sequential_171/lstm_513/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_171/lstm_513/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_171/lstm_513/transpose	Transposelstm_513_input/sequential_171/lstm_513/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_171/lstm_513/Shape_1Shape%sequential_171/lstm_513/transpose:y:0*
T0*
_output_shapes
:w
-sequential_171/lstm_513/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_171/lstm_513/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_171/lstm_513/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_171/lstm_513/strided_slice_1StridedSlice(sequential_171/lstm_513/Shape_1:output:06sequential_171/lstm_513/strided_slice_1/stack:output:08sequential_171/lstm_513/strided_slice_1/stack_1:output:08sequential_171/lstm_513/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_171/lstm_513/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_171/lstm_513/TensorArrayV2TensorListReserve<sequential_171/lstm_513/TensorArrayV2/element_shape:output:00sequential_171/lstm_513/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_171/lstm_513/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_171/lstm_513/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_171/lstm_513/transpose:y:0Vsequential_171/lstm_513/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_171/lstm_513/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_171/lstm_513/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_171/lstm_513/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_171/lstm_513/strided_slice_2StridedSlice%sequential_171/lstm_513/transpose:y:06sequential_171/lstm_513/strided_slice_2/stack:output:08sequential_171/lstm_513/strided_slice_2/stack_1:output:08sequential_171/lstm_513/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_171/lstm_513/lstm_cell_570/MatMul/ReadVariableOpReadVariableOpDsequential_171_lstm_513_lstm_cell_570_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_171/lstm_513/lstm_cell_570/MatMulMatMul0sequential_171/lstm_513/strided_slice_2:output:0Csequential_171/lstm_513/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_171/lstm_513/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOpFsequential_171_lstm_513_lstm_cell_570_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_171/lstm_513/lstm_cell_570/MatMul_1MatMul&sequential_171/lstm_513/zeros:output:0Esequential_171/lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_171/lstm_513/lstm_cell_570/addAddV26sequential_171/lstm_513/lstm_cell_570/MatMul:product:08sequential_171/lstm_513/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_171/lstm_513/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOpEsequential_171_lstm_513_lstm_cell_570_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_171/lstm_513/lstm_cell_570/BiasAddBiasAdd-sequential_171/lstm_513/lstm_cell_570/add:z:0Dsequential_171/lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_171/lstm_513/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_171/lstm_513/lstm_cell_570/splitSplit>sequential_171/lstm_513/lstm_cell_570/split/split_dim:output:06sequential_171/lstm_513/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_171/lstm_513/lstm_cell_570/SigmoidSigmoid4sequential_171/lstm_513/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_171/lstm_513/lstm_cell_570/Sigmoid_1Sigmoid4sequential_171/lstm_513/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_171/lstm_513/lstm_cell_570/mulMul3sequential_171/lstm_513/lstm_cell_570/Sigmoid_1:y:0(sequential_171/lstm_513/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_171/lstm_513/lstm_cell_570/ReluRelu4sequential_171/lstm_513/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_171/lstm_513/lstm_cell_570/mul_1Mul1sequential_171/lstm_513/lstm_cell_570/Sigmoid:y:08sequential_171/lstm_513/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_171/lstm_513/lstm_cell_570/add_1AddV2-sequential_171/lstm_513/lstm_cell_570/mul:z:0/sequential_171/lstm_513/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_171/lstm_513/lstm_cell_570/Sigmoid_2Sigmoid4sequential_171/lstm_513/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_171/lstm_513/lstm_cell_570/Relu_1Relu/sequential_171/lstm_513/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_171/lstm_513/lstm_cell_570/mul_2Mul3sequential_171/lstm_513/lstm_cell_570/Sigmoid_2:y:0:sequential_171/lstm_513/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_171/lstm_513/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_171/lstm_513/TensorArrayV2_1TensorListReserve>sequential_171/lstm_513/TensorArrayV2_1/element_shape:output:00sequential_171/lstm_513/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_171/lstm_513/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_171/lstm_513/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_171/lstm_513/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_171/lstm_513/whileWhile3sequential_171/lstm_513/while/loop_counter:output:09sequential_171/lstm_513/while/maximum_iterations:output:0%sequential_171/lstm_513/time:output:00sequential_171/lstm_513/TensorArrayV2_1:handle:0&sequential_171/lstm_513/zeros:output:0(sequential_171/lstm_513/zeros_1:output:00sequential_171/lstm_513/strided_slice_1:output:0Osequential_171/lstm_513/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_171_lstm_513_lstm_cell_570_matmul_readvariableop_resourceFsequential_171_lstm_513_lstm_cell_570_matmul_1_readvariableop_resourceEsequential_171_lstm_513_lstm_cell_570_biasadd_readvariableop_resource*
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
*sequential_171_lstm_513_while_body_3460066*6
cond.R,
*sequential_171_lstm_513_while_cond_3460065*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_171/lstm_513/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_171/lstm_513/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_171/lstm_513/while:output:3Qsequential_171/lstm_513/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_171/lstm_513/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_171/lstm_513/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_171/lstm_513/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_171/lstm_513/strided_slice_3StridedSliceCsequential_171/lstm_513/TensorArrayV2Stack/TensorListStack:tensor:06sequential_171/lstm_513/strided_slice_3/stack:output:08sequential_171/lstm_513/strided_slice_3/stack_1:output:08sequential_171/lstm_513/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_171/lstm_513/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_171/lstm_513/transpose_1	TransposeCsequential_171/lstm_513/TensorArrayV2Stack/TensorListStack:tensor:01sequential_171/lstm_513/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_171/lstm_513/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_171/lstm_514/ShapeShape'sequential_171/lstm_513/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_171/lstm_514/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_171/lstm_514/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_171/lstm_514/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_171/lstm_514/strided_sliceStridedSlice&sequential_171/lstm_514/Shape:output:04sequential_171/lstm_514/strided_slice/stack:output:06sequential_171/lstm_514/strided_slice/stack_1:output:06sequential_171/lstm_514/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_171/lstm_514/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_171/lstm_514/zeros/packedPack.sequential_171/lstm_514/strided_slice:output:0/sequential_171/lstm_514/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_171/lstm_514/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_171/lstm_514/zerosFill-sequential_171/lstm_514/zeros/packed:output:0,sequential_171/lstm_514/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_171/lstm_514/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_171/lstm_514/zeros_1/packedPack.sequential_171/lstm_514/strided_slice:output:01sequential_171/lstm_514/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_171/lstm_514/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_171/lstm_514/zeros_1Fill/sequential_171/lstm_514/zeros_1/packed:output:0.sequential_171/lstm_514/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_171/lstm_514/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_171/lstm_514/transpose	Transpose'sequential_171/lstm_513/transpose_1:y:0/sequential_171/lstm_514/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_171/lstm_514/Shape_1Shape%sequential_171/lstm_514/transpose:y:0*
T0*
_output_shapes
:w
-sequential_171/lstm_514/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_171/lstm_514/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_171/lstm_514/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_171/lstm_514/strided_slice_1StridedSlice(sequential_171/lstm_514/Shape_1:output:06sequential_171/lstm_514/strided_slice_1/stack:output:08sequential_171/lstm_514/strided_slice_1/stack_1:output:08sequential_171/lstm_514/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_171/lstm_514/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_171/lstm_514/TensorArrayV2TensorListReserve<sequential_171/lstm_514/TensorArrayV2/element_shape:output:00sequential_171/lstm_514/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_171/lstm_514/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_171/lstm_514/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_171/lstm_514/transpose:y:0Vsequential_171/lstm_514/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_171/lstm_514/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_171/lstm_514/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_171/lstm_514/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_171/lstm_514/strided_slice_2StridedSlice%sequential_171/lstm_514/transpose:y:06sequential_171/lstm_514/strided_slice_2/stack:output:08sequential_171/lstm_514/strided_slice_2/stack_1:output:08sequential_171/lstm_514/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_171/lstm_514/lstm_cell_571/MatMul/ReadVariableOpReadVariableOpDsequential_171_lstm_514_lstm_cell_571_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_171/lstm_514/lstm_cell_571/MatMulMatMul0sequential_171/lstm_514/strided_slice_2:output:0Csequential_171/lstm_514/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_171/lstm_514/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOpFsequential_171_lstm_514_lstm_cell_571_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_171/lstm_514/lstm_cell_571/MatMul_1MatMul&sequential_171/lstm_514/zeros:output:0Esequential_171/lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_171/lstm_514/lstm_cell_571/addAddV26sequential_171/lstm_514/lstm_cell_571/MatMul:product:08sequential_171/lstm_514/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_171/lstm_514/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOpEsequential_171_lstm_514_lstm_cell_571_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_171/lstm_514/lstm_cell_571/BiasAddBiasAdd-sequential_171/lstm_514/lstm_cell_571/add:z:0Dsequential_171/lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_171/lstm_514/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_171/lstm_514/lstm_cell_571/splitSplit>sequential_171/lstm_514/lstm_cell_571/split/split_dim:output:06sequential_171/lstm_514/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_171/lstm_514/lstm_cell_571/SigmoidSigmoid4sequential_171/lstm_514/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_171/lstm_514/lstm_cell_571/Sigmoid_1Sigmoid4sequential_171/lstm_514/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_171/lstm_514/lstm_cell_571/mulMul3sequential_171/lstm_514/lstm_cell_571/Sigmoid_1:y:0(sequential_171/lstm_514/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_171/lstm_514/lstm_cell_571/ReluRelu4sequential_171/lstm_514/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_171/lstm_514/lstm_cell_571/mul_1Mul1sequential_171/lstm_514/lstm_cell_571/Sigmoid:y:08sequential_171/lstm_514/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_171/lstm_514/lstm_cell_571/add_1AddV2-sequential_171/lstm_514/lstm_cell_571/mul:z:0/sequential_171/lstm_514/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_171/lstm_514/lstm_cell_571/Sigmoid_2Sigmoid4sequential_171/lstm_514/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_171/lstm_514/lstm_cell_571/Relu_1Relu/sequential_171/lstm_514/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_171/lstm_514/lstm_cell_571/mul_2Mul3sequential_171/lstm_514/lstm_cell_571/Sigmoid_2:y:0:sequential_171/lstm_514/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_171/lstm_514/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_171/lstm_514/TensorArrayV2_1TensorListReserve>sequential_171/lstm_514/TensorArrayV2_1/element_shape:output:00sequential_171/lstm_514/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_171/lstm_514/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_171/lstm_514/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_171/lstm_514/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_171/lstm_514/whileWhile3sequential_171/lstm_514/while/loop_counter:output:09sequential_171/lstm_514/while/maximum_iterations:output:0%sequential_171/lstm_514/time:output:00sequential_171/lstm_514/TensorArrayV2_1:handle:0&sequential_171/lstm_514/zeros:output:0(sequential_171/lstm_514/zeros_1:output:00sequential_171/lstm_514/strided_slice_1:output:0Osequential_171/lstm_514/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_171_lstm_514_lstm_cell_571_matmul_readvariableop_resourceFsequential_171_lstm_514_lstm_cell_571_matmul_1_readvariableop_resourceEsequential_171_lstm_514_lstm_cell_571_biasadd_readvariableop_resource*
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
*sequential_171_lstm_514_while_body_3460205*6
cond.R,
*sequential_171_lstm_514_while_cond_3460204*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_171/lstm_514/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_171/lstm_514/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_171/lstm_514/while:output:3Qsequential_171/lstm_514/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_171/lstm_514/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_171/lstm_514/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_171/lstm_514/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_171/lstm_514/strided_slice_3StridedSliceCsequential_171/lstm_514/TensorArrayV2Stack/TensorListStack:tensor:06sequential_171/lstm_514/strided_slice_3/stack:output:08sequential_171/lstm_514/strided_slice_3/stack_1:output:08sequential_171/lstm_514/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_171/lstm_514/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_171/lstm_514/transpose_1	TransposeCsequential_171/lstm_514/TensorArrayV2Stack/TensorListStack:tensor:01sequential_171/lstm_514/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_171/lstm_514/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_171/lstm_515/ShapeShape'sequential_171/lstm_514/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_171/lstm_515/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_171/lstm_515/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_171/lstm_515/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_171/lstm_515/strided_sliceStridedSlice&sequential_171/lstm_515/Shape:output:04sequential_171/lstm_515/strided_slice/stack:output:06sequential_171/lstm_515/strided_slice/stack_1:output:06sequential_171/lstm_515/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_171/lstm_515/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_171/lstm_515/zeros/packedPack.sequential_171/lstm_515/strided_slice:output:0/sequential_171/lstm_515/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_171/lstm_515/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_171/lstm_515/zerosFill-sequential_171/lstm_515/zeros/packed:output:0,sequential_171/lstm_515/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_171/lstm_515/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_171/lstm_515/zeros_1/packedPack.sequential_171/lstm_515/strided_slice:output:01sequential_171/lstm_515/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_171/lstm_515/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_171/lstm_515/zeros_1Fill/sequential_171/lstm_515/zeros_1/packed:output:0.sequential_171/lstm_515/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_171/lstm_515/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_171/lstm_515/transpose	Transpose'sequential_171/lstm_514/transpose_1:y:0/sequential_171/lstm_515/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_171/lstm_515/Shape_1Shape%sequential_171/lstm_515/transpose:y:0*
T0*
_output_shapes
:w
-sequential_171/lstm_515/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_171/lstm_515/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_171/lstm_515/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_171/lstm_515/strided_slice_1StridedSlice(sequential_171/lstm_515/Shape_1:output:06sequential_171/lstm_515/strided_slice_1/stack:output:08sequential_171/lstm_515/strided_slice_1/stack_1:output:08sequential_171/lstm_515/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_171/lstm_515/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_171/lstm_515/TensorArrayV2TensorListReserve<sequential_171/lstm_515/TensorArrayV2/element_shape:output:00sequential_171/lstm_515/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_171/lstm_515/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_171/lstm_515/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_171/lstm_515/transpose:y:0Vsequential_171/lstm_515/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_171/lstm_515/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_171/lstm_515/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_171/lstm_515/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_171/lstm_515/strided_slice_2StridedSlice%sequential_171/lstm_515/transpose:y:06sequential_171/lstm_515/strided_slice_2/stack:output:08sequential_171/lstm_515/strided_slice_2/stack_1:output:08sequential_171/lstm_515/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_171/lstm_515/lstm_cell_572/MatMul/ReadVariableOpReadVariableOpDsequential_171_lstm_515_lstm_cell_572_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_171/lstm_515/lstm_cell_572/MatMulMatMul0sequential_171/lstm_515/strided_slice_2:output:0Csequential_171/lstm_515/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_171/lstm_515/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOpFsequential_171_lstm_515_lstm_cell_572_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_171/lstm_515/lstm_cell_572/MatMul_1MatMul&sequential_171/lstm_515/zeros:output:0Esequential_171/lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_171/lstm_515/lstm_cell_572/addAddV26sequential_171/lstm_515/lstm_cell_572/MatMul:product:08sequential_171/lstm_515/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_171/lstm_515/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOpEsequential_171_lstm_515_lstm_cell_572_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_171/lstm_515/lstm_cell_572/BiasAddBiasAdd-sequential_171/lstm_515/lstm_cell_572/add:z:0Dsequential_171/lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_171/lstm_515/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_171/lstm_515/lstm_cell_572/splitSplit>sequential_171/lstm_515/lstm_cell_572/split/split_dim:output:06sequential_171/lstm_515/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_171/lstm_515/lstm_cell_572/SigmoidSigmoid4sequential_171/lstm_515/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_171/lstm_515/lstm_cell_572/Sigmoid_1Sigmoid4sequential_171/lstm_515/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_171/lstm_515/lstm_cell_572/mulMul3sequential_171/lstm_515/lstm_cell_572/Sigmoid_1:y:0(sequential_171/lstm_515/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_171/lstm_515/lstm_cell_572/ReluRelu4sequential_171/lstm_515/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_171/lstm_515/lstm_cell_572/mul_1Mul1sequential_171/lstm_515/lstm_cell_572/Sigmoid:y:08sequential_171/lstm_515/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_171/lstm_515/lstm_cell_572/add_1AddV2-sequential_171/lstm_515/lstm_cell_572/mul:z:0/sequential_171/lstm_515/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_171/lstm_515/lstm_cell_572/Sigmoid_2Sigmoid4sequential_171/lstm_515/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_171/lstm_515/lstm_cell_572/Relu_1Relu/sequential_171/lstm_515/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_171/lstm_515/lstm_cell_572/mul_2Mul3sequential_171/lstm_515/lstm_cell_572/Sigmoid_2:y:0:sequential_171/lstm_515/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_171/lstm_515/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_171/lstm_515/TensorArrayV2_1TensorListReserve>sequential_171/lstm_515/TensorArrayV2_1/element_shape:output:00sequential_171/lstm_515/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_171/lstm_515/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_171/lstm_515/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_171/lstm_515/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_171/lstm_515/whileWhile3sequential_171/lstm_515/while/loop_counter:output:09sequential_171/lstm_515/while/maximum_iterations:output:0%sequential_171/lstm_515/time:output:00sequential_171/lstm_515/TensorArrayV2_1:handle:0&sequential_171/lstm_515/zeros:output:0(sequential_171/lstm_515/zeros_1:output:00sequential_171/lstm_515/strided_slice_1:output:0Osequential_171/lstm_515/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_171_lstm_515_lstm_cell_572_matmul_readvariableop_resourceFsequential_171_lstm_515_lstm_cell_572_matmul_1_readvariableop_resourceEsequential_171_lstm_515_lstm_cell_572_biasadd_readvariableop_resource*
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
*sequential_171_lstm_515_while_body_3460344*6
cond.R,
*sequential_171_lstm_515_while_cond_3460343*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_171/lstm_515/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_171/lstm_515/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_171/lstm_515/while:output:3Qsequential_171/lstm_515/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_171/lstm_515/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_171/lstm_515/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_171/lstm_515/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_171/lstm_515/strided_slice_3StridedSliceCsequential_171/lstm_515/TensorArrayV2Stack/TensorListStack:tensor:06sequential_171/lstm_515/strided_slice_3/stack:output:08sequential_171/lstm_515/strided_slice_3/stack_1:output:08sequential_171/lstm_515/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_171/lstm_515/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_171/lstm_515/transpose_1	TransposeCsequential_171/lstm_515/TensorArrayV2Stack/TensorListStack:tensor:01sequential_171/lstm_515/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_171/lstm_515/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_171/dense_171/MatMul/ReadVariableOpReadVariableOp7sequential_171_dense_171_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_171/dense_171/MatMulMatMul0sequential_171/lstm_515/strided_slice_3:output:06sequential_171/dense_171/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_171/dense_171/BiasAdd/ReadVariableOpReadVariableOp8sequential_171_dense_171_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_171/dense_171/BiasAddBiasAdd)sequential_171/dense_171/MatMul:product:07sequential_171/dense_171/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_171/dense_171/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_171/dense_171/BiasAdd/ReadVariableOp/^sequential_171/dense_171/MatMul/ReadVariableOp=^sequential_171/lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp<^sequential_171/lstm_513/lstm_cell_570/MatMul/ReadVariableOp>^sequential_171/lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp^sequential_171/lstm_513/while=^sequential_171/lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp<^sequential_171/lstm_514/lstm_cell_571/MatMul/ReadVariableOp>^sequential_171/lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp^sequential_171/lstm_514/while=^sequential_171/lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp<^sequential_171/lstm_515/lstm_cell_572/MatMul/ReadVariableOp>^sequential_171/lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp^sequential_171/lstm_515/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_171/dense_171/BiasAdd/ReadVariableOp/sequential_171/dense_171/BiasAdd/ReadVariableOp2`
.sequential_171/dense_171/MatMul/ReadVariableOp.sequential_171/dense_171/MatMul/ReadVariableOp2|
<sequential_171/lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp<sequential_171/lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp2z
;sequential_171/lstm_513/lstm_cell_570/MatMul/ReadVariableOp;sequential_171/lstm_513/lstm_cell_570/MatMul/ReadVariableOp2~
=sequential_171/lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp=sequential_171/lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp2>
sequential_171/lstm_513/whilesequential_171/lstm_513/while2|
<sequential_171/lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp<sequential_171/lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp2z
;sequential_171/lstm_514/lstm_cell_571/MatMul/ReadVariableOp;sequential_171/lstm_514/lstm_cell_571/MatMul/ReadVariableOp2~
=sequential_171/lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp=sequential_171/lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp2>
sequential_171/lstm_514/whilesequential_171/lstm_514/while2|
<sequential_171/lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp<sequential_171/lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp2z
;sequential_171/lstm_515/lstm_cell_572/MatMul/ReadVariableOp;sequential_171/lstm_515/lstm_cell_572/MatMul/ReadVariableOp2~
=sequential_171/lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp=sequential_171/lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp2>
sequential_171/lstm_515/whilesequential_171/lstm_515/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_513_input
?
?
*sequential_171_lstm_515_while_cond_3460343L
Hsequential_171_lstm_515_while_sequential_171_lstm_515_while_loop_counterR
Nsequential_171_lstm_515_while_sequential_171_lstm_515_while_maximum_iterations-
)sequential_171_lstm_515_while_placeholder/
+sequential_171_lstm_515_while_placeholder_1/
+sequential_171_lstm_515_while_placeholder_2/
+sequential_171_lstm_515_while_placeholder_3N
Jsequential_171_lstm_515_while_less_sequential_171_lstm_515_strided_slice_1e
asequential_171_lstm_515_while_sequential_171_lstm_515_while_cond_3460343___redundant_placeholder0e
asequential_171_lstm_515_while_sequential_171_lstm_515_while_cond_3460343___redundant_placeholder1e
asequential_171_lstm_515_while_sequential_171_lstm_515_while_cond_3460343___redundant_placeholder2e
asequential_171_lstm_515_while_sequential_171_lstm_515_while_cond_3460343___redundant_placeholder3*
&sequential_171_lstm_515_while_identity
?
"sequential_171/lstm_515/while/LessLess)sequential_171_lstm_515_while_placeholderJsequential_171_lstm_515_while_less_sequential_171_lstm_515_strided_slice_1*
T0*
_output_shapes
: {
&sequential_171/lstm_515/while/IdentityIdentity&sequential_171/lstm_515/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_171_lstm_515_while_identity/sequential_171/lstm_515/while/Identity:output:0*(
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3463789
inputs_0?
,lstm_cell_570_matmul_readvariableop_resource:	?A
.lstm_cell_570_matmul_1_readvariableop_resource:	d?<
-lstm_cell_570_biasadd_readvariableop_resource:	?
identity??$lstm_cell_570/BiasAdd/ReadVariableOp?#lstm_cell_570/MatMul/ReadVariableOp?%lstm_cell_570/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_570/MatMul/ReadVariableOpReadVariableOp,lstm_cell_570_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_570/MatMulMatMulstrided_slice_2:output:0+lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_570_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_570/MatMul_1MatMulzeros:output:0-lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_570/addAddV2lstm_cell_570/MatMul:product:0 lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_570_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_570/BiasAddBiasAddlstm_cell_570/add:z:0,lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_570/splitSplit&lstm_cell_570/split/split_dim:output:0lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_570/SigmoidSigmoidlstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_1Sigmoidlstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_570/mulMullstm_cell_570/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_570/ReluRelulstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_1Mullstm_cell_570/Sigmoid:y:0 lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_570/add_1AddV2lstm_cell_570/mul:z:0lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_2Sigmoidlstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_570/Relu_1Relulstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_2Mullstm_cell_570/Sigmoid_2:y:0"lstm_cell_570/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_570_matmul_readvariableop_resource.lstm_cell_570_matmul_1_readvariableop_resource-lstm_cell_570_biasadd_readvariableop_resource*
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
while_body_3463705*
condR
while_cond_3463704*K
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
NoOpNoOp%^lstm_cell_570/BiasAdd/ReadVariableOp$^lstm_cell_570/MatMul/ReadVariableOp&^lstm_cell_570/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_570/BiasAdd/ReadVariableOp$lstm_cell_570/BiasAdd/ReadVariableOp2J
#lstm_cell_570/MatMul/ReadVariableOp#lstm_cell_570/MatMul/ReadVariableOp2N
%lstm_cell_570/MatMul_1/ReadVariableOp%lstm_cell_570/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_3464607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_571_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_571_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_571_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_571_matmul_readvariableop_resource:	d?G
4while_lstm_cell_571_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_571_biasadd_readvariableop_resource:	???*while/lstm_cell_571/BiasAdd/ReadVariableOp?)while/lstm_cell_571/MatMul/ReadVariableOp?+while/lstm_cell_571/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_571/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_571_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_571/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_571_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_571/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_571/addAddV2$while/lstm_cell_571/MatMul:product:0&while/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_571_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_571/BiasAddBiasAddwhile/lstm_cell_571/add:z:02while/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_571/splitSplit,while/lstm_cell_571/split/split_dim:output:0$while/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_571/SigmoidSigmoid"while/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_1Sigmoid"while/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mulMul!while/lstm_cell_571/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_571/ReluRelu"while/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_1Mulwhile/lstm_cell_571/Sigmoid:y:0&while/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/add_1AddV2while/lstm_cell_571/mul:z:0while/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_2Sigmoid"while/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_571/Relu_1Reluwhile/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_2Mul!while/lstm_cell_571/Sigmoid_2:y:0(while/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_571/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_571/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_571/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_571/BiasAdd/ReadVariableOp*^while/lstm_cell_571/MatMul/ReadVariableOp,^while/lstm_cell_571/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_571_biasadd_readvariableop_resource5while_lstm_cell_571_biasadd_readvariableop_resource_0"n
4while_lstm_cell_571_matmul_1_readvariableop_resource6while_lstm_cell_571_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_571_matmul_readvariableop_resource4while_lstm_cell_571_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_571/BiasAdd/ReadVariableOp*while/lstm_cell_571/BiasAdd/ReadVariableOp2V
)while/lstm_cell_571/MatMul/ReadVariableOp)while/lstm_cell_571/MatMul/ReadVariableOp2Z
+while/lstm_cell_571/MatMul_1/ReadVariableOp+while/lstm_cell_571/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3464606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3464606___redundant_placeholder05
1while_while_cond_3464606___redundant_placeholder15
1while_while_cond_3464606___redundant_placeholder25
1while_while_cond_3464606___redundant_placeholder3
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
*__inference_lstm_514_layer_call_fn_3464262

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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3462314s
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
?
?
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3461347

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
while_cond_3463704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3463704___redundant_placeholder05
1while_while_cond_3463704___redundant_placeholder15
1while_while_cond_3463704___redundant_placeholder25
1while_while_cond_3463704___redundant_placeholder3
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
while_cond_3461055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3461055___redundant_placeholder05
1while_while_cond_3461055___redundant_placeholder15
1while_while_cond_3461055___redundant_placeholder25
1while_while_cond_3461055___redundant_placeholder3
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
?
/__inference_lstm_cell_572_layer_call_fn_3465682

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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3461201o
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
?
?
while_cond_3462064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3462064___redundant_placeholder05
1while_while_cond_3462064___redundant_placeholder15
1while_while_cond_3462064___redundant_placeholder25
1while_while_cond_3462064___redundant_placeholder3
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
*__inference_lstm_515_layer_call_fn_3464845
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3461284o
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
while_cond_3461405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3461405___redundant_placeholder05
1while_while_cond_3461405___redundant_placeholder15
1while_while_cond_3461405___redundant_placeholder25
1while_while_cond_3461405___redundant_placeholder3
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
F__inference_dense_171_layer_call_and_return_conditional_losses_3461951

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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464691

inputs?
,lstm_cell_571_matmul_readvariableop_resource:	d?A
.lstm_cell_571_matmul_1_readvariableop_resource:	2?<
-lstm_cell_571_biasadd_readvariableop_resource:	?
identity??$lstm_cell_571/BiasAdd/ReadVariableOp?#lstm_cell_571/MatMul/ReadVariableOp?%lstm_cell_571/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_571/MatMul/ReadVariableOpReadVariableOp,lstm_cell_571_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_571/MatMulMatMulstrided_slice_2:output:0+lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_571_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_571/MatMul_1MatMulzeros:output:0-lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_571/addAddV2lstm_cell_571/MatMul:product:0 lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_571_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_571/BiasAddBiasAddlstm_cell_571/add:z:0,lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_571/splitSplit&lstm_cell_571/split/split_dim:output:0lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_571/SigmoidSigmoidlstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_1Sigmoidlstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_571/mulMullstm_cell_571/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_571/ReluRelulstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_1Mullstm_cell_571/Sigmoid:y:0 lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_571/add_1AddV2lstm_cell_571/mul:z:0lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_2Sigmoidlstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_571/Relu_1Relulstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_2Mullstm_cell_571/Sigmoid_2:y:0"lstm_cell_571/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_571_matmul_readvariableop_resource.lstm_cell_571_matmul_1_readvariableop_resource-lstm_cell_571_biasadd_readvariableop_resource*
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
while_body_3464607*
condR
while_cond_3464606*K
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
NoOpNoOp%^lstm_cell_571/BiasAdd/ReadVariableOp$^lstm_cell_571/MatMul/ReadVariableOp&^lstm_cell_571/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_571/BiasAdd/ReadVariableOp$lstm_cell_571/BiasAdd/ReadVariableOp2J
#lstm_cell_571/MatMul/ReadVariableOp#lstm_cell_571/MatMul/ReadVariableOp2N
%lstm_cell_571/MatMul_1/ReadVariableOp%lstm_cell_571/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3464936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3464936___redundant_placeholder05
1while_while_cond_3464936___redundant_placeholder15
1while_while_cond_3464936___redundant_placeholder25
1while_while_cond_3464936___redundant_placeholder3
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
/__inference_lstm_cell_570_layer_call_fn_3465503

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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3460647o
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3462149

inputs>
,lstm_cell_572_matmul_readvariableop_resource:2(@
.lstm_cell_572_matmul_1_readvariableop_resource:
(;
-lstm_cell_572_biasadd_readvariableop_resource:(
identity??$lstm_cell_572/BiasAdd/ReadVariableOp?#lstm_cell_572/MatMul/ReadVariableOp?%lstm_cell_572/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_572/MatMul/ReadVariableOpReadVariableOp,lstm_cell_572_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_572/MatMulMatMulstrided_slice_2:output:0+lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_572_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_572/MatMul_1MatMulzeros:output:0-lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_572/addAddV2lstm_cell_572/MatMul:product:0 lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_572_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_572/BiasAddBiasAddlstm_cell_572/add:z:0,lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_572/splitSplit&lstm_cell_572/split/split_dim:output:0lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_572/SigmoidSigmoidlstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_1Sigmoidlstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_572/mulMullstm_cell_572/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_572/ReluRelulstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_1Mullstm_cell_572/Sigmoid:y:0 lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_572/add_1AddV2lstm_cell_572/mul:z:0lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_2Sigmoidlstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_572/Relu_1Relulstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_2Mullstm_cell_572/Sigmoid_2:y:0"lstm_cell_572/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_572_matmul_readvariableop_resource.lstm_cell_572_matmul_1_readvariableop_resource-lstm_cell_572_biasadd_readvariableop_resource*
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
while_body_3462065*
condR
while_cond_3462064*K
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
NoOpNoOp%^lstm_cell_572/BiasAdd/ReadVariableOp$^lstm_cell_572/MatMul/ReadVariableOp&^lstm_cell_572/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_572/BiasAdd/ReadVariableOp$lstm_cell_572/BiasAdd/ReadVariableOp2J
#lstm_cell_572/MatMul/ReadVariableOp#lstm_cell_572/MatMul/ReadVariableOp2N
%lstm_cell_572/MatMul_1/ReadVariableOp%lstm_cell_572/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_514_while_body_3462946.
*lstm_514_while_lstm_514_while_loop_counter4
0lstm_514_while_lstm_514_while_maximum_iterations
lstm_514_while_placeholder 
lstm_514_while_placeholder_1 
lstm_514_while_placeholder_2 
lstm_514_while_placeholder_3-
)lstm_514_while_lstm_514_strided_slice_1_0i
elstm_514_while_tensorarrayv2read_tensorlistgetitem_lstm_514_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_514_while_lstm_cell_571_matmul_readvariableop_resource_0:	d?R
?lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource_0:	2?M
>lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource_0:	?
lstm_514_while_identity
lstm_514_while_identity_1
lstm_514_while_identity_2
lstm_514_while_identity_3
lstm_514_while_identity_4
lstm_514_while_identity_5+
'lstm_514_while_lstm_514_strided_slice_1g
clstm_514_while_tensorarrayv2read_tensorlistgetitem_lstm_514_tensorarrayunstack_tensorlistfromtensorN
;lstm_514_while_lstm_cell_571_matmul_readvariableop_resource:	d?P
=lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource:	2?K
<lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource:	???3lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp?2lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp?4lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp?
@lstm_514/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_514/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_514_while_tensorarrayv2read_tensorlistgetitem_lstm_514_tensorarrayunstack_tensorlistfromtensor_0lstm_514_while_placeholderIlstm_514/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_514/while/lstm_cell_571/MatMul/ReadVariableOpReadVariableOp=lstm_514_while_lstm_cell_571_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_514/while/lstm_cell_571/MatMulMatMul9lstm_514/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp?lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_514/while/lstm_cell_571/MatMul_1MatMullstm_514_while_placeholder_2<lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_514/while/lstm_cell_571/addAddV2-lstm_514/while/lstm_cell_571/MatMul:product:0/lstm_514/while/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp>lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_514/while/lstm_cell_571/BiasAddBiasAdd$lstm_514/while/lstm_cell_571/add:z:0;lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_514/while/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_514/while/lstm_cell_571/splitSplit5lstm_514/while/lstm_cell_571/split/split_dim:output:0-lstm_514/while/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_514/while/lstm_cell_571/SigmoidSigmoid+lstm_514/while/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_514/while/lstm_cell_571/Sigmoid_1Sigmoid+lstm_514/while/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_514/while/lstm_cell_571/mulMul*lstm_514/while/lstm_cell_571/Sigmoid_1:y:0lstm_514_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_514/while/lstm_cell_571/ReluRelu+lstm_514/while/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_514/while/lstm_cell_571/mul_1Mul(lstm_514/while/lstm_cell_571/Sigmoid:y:0/lstm_514/while/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_514/while/lstm_cell_571/add_1AddV2$lstm_514/while/lstm_cell_571/mul:z:0&lstm_514/while/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_514/while/lstm_cell_571/Sigmoid_2Sigmoid+lstm_514/while/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_514/while/lstm_cell_571/Relu_1Relu&lstm_514/while/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_514/while/lstm_cell_571/mul_2Mul*lstm_514/while/lstm_cell_571/Sigmoid_2:y:01lstm_514/while/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_514/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_514_while_placeholder_1lstm_514_while_placeholder&lstm_514/while/lstm_cell_571/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_514/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_514/while/addAddV2lstm_514_while_placeholderlstm_514/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_514/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_514/while/add_1AddV2*lstm_514_while_lstm_514_while_loop_counterlstm_514/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_514/while/IdentityIdentitylstm_514/while/add_1:z:0^lstm_514/while/NoOp*
T0*
_output_shapes
: ?
lstm_514/while/Identity_1Identity0lstm_514_while_lstm_514_while_maximum_iterations^lstm_514/while/NoOp*
T0*
_output_shapes
: t
lstm_514/while/Identity_2Identitylstm_514/while/add:z:0^lstm_514/while/NoOp*
T0*
_output_shapes
: ?
lstm_514/while/Identity_3IdentityClstm_514/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_514/while/NoOp*
T0*
_output_shapes
: ?
lstm_514/while/Identity_4Identity&lstm_514/while/lstm_cell_571/mul_2:z:0^lstm_514/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_514/while/Identity_5Identity&lstm_514/while/lstm_cell_571/add_1:z:0^lstm_514/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_514/while/NoOpNoOp4^lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp3^lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp5^lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_514_while_identity lstm_514/while/Identity:output:0"?
lstm_514_while_identity_1"lstm_514/while/Identity_1:output:0"?
lstm_514_while_identity_2"lstm_514/while/Identity_2:output:0"?
lstm_514_while_identity_3"lstm_514/while/Identity_3:output:0"?
lstm_514_while_identity_4"lstm_514/while/Identity_4:output:0"?
lstm_514_while_identity_5"lstm_514/while/Identity_5:output:0"T
'lstm_514_while_lstm_514_strided_slice_1)lstm_514_while_lstm_514_strided_slice_1_0"~
<lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource>lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource_0"?
=lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource?lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource_0"|
;lstm_514_while_lstm_cell_571_matmul_readvariableop_resource=lstm_514_while_lstm_cell_571_matmul_readvariableop_resource_0"?
clstm_514_while_tensorarrayv2read_tensorlistgetitem_lstm_514_tensorarrayunstack_tensorlistfromtensorelstm_514_while_tensorarrayv2read_tensorlistgetitem_lstm_514_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp3lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp2h
2lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp2lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp2l
4lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp4lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3464075

inputs?
,lstm_cell_570_matmul_readvariableop_resource:	?A
.lstm_cell_570_matmul_1_readvariableop_resource:	d?<
-lstm_cell_570_biasadd_readvariableop_resource:	?
identity??$lstm_cell_570/BiasAdd/ReadVariableOp?#lstm_cell_570/MatMul/ReadVariableOp?%lstm_cell_570/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_570/MatMul/ReadVariableOpReadVariableOp,lstm_cell_570_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_570/MatMulMatMulstrided_slice_2:output:0+lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_570_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_570/MatMul_1MatMulzeros:output:0-lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_570/addAddV2lstm_cell_570/MatMul:product:0 lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_570_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_570/BiasAddBiasAddlstm_cell_570/add:z:0,lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_570/splitSplit&lstm_cell_570/split/split_dim:output:0lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_570/SigmoidSigmoidlstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_1Sigmoidlstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_570/mulMullstm_cell_570/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_570/ReluRelulstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_1Mullstm_cell_570/Sigmoid:y:0 lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_570/add_1AddV2lstm_cell_570/mul:z:0lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_2Sigmoidlstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_570/Relu_1Relulstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_2Mullstm_cell_570/Sigmoid_2:y:0"lstm_cell_570/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_570_matmul_readvariableop_resource.lstm_cell_570_matmul_1_readvariableop_resource-lstm_cell_570_biasadd_readvariableop_resource*
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
while_body_3463991*
condR
while_cond_3463990*K
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
NoOpNoOp%^lstm_cell_570/BiasAdd/ReadVariableOp$^lstm_cell_570/MatMul/ReadVariableOp&^lstm_cell_570/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_570/BiasAdd/ReadVariableOp$lstm_cell_570/BiasAdd/ReadVariableOp2J
#lstm_cell_570/MatMul/ReadVariableOp#lstm_cell_570/MatMul/ReadVariableOp2N
%lstm_cell_570/MatMul_1/ReadVariableOp%lstm_cell_570/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3461848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3461848___redundant_placeholder05
1while_while_cond_3461848___redundant_placeholder15
1while_while_cond_3461848___redundant_placeholder25
1while_while_cond_3461848___redundant_placeholder3
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
*__inference_lstm_514_layer_call_fn_3464251

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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3461783s
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
while_cond_3460864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3460864___redundant_placeholder05
1while_while_cond_3460864___redundant_placeholder15
1while_while_cond_3460864___redundant_placeholder25
1while_while_cond_3460864___redundant_placeholder3
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
*__inference_lstm_514_layer_call_fn_3464240
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3461125|
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
?

?
0__inference_sequential_171_layer_call_fn_3462599
lstm_513_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_513_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_171_layer_call_and_return_conditional_losses_3462547o
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
_user_specified_namelstm_513_input
?8
?
E__inference_lstm_513_layer_call_and_return_conditional_losses_3460584

inputs(
lstm_cell_570_3460502:	?(
lstm_cell_570_3460504:	d?$
lstm_cell_570_3460506:	?
identity??%lstm_cell_570/StatefulPartitionedCall?while;
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
%lstm_cell_570/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_570_3460502lstm_cell_570_3460504lstm_cell_570_3460506*
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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3460501n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_570_3460502lstm_cell_570_3460504lstm_cell_570_3460506*
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
while_body_3460515*
condR
while_cond_3460514*K
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
NoOpNoOp&^lstm_cell_570/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_570/StatefulPartitionedCall%lstm_cell_570/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464405
inputs_0?
,lstm_cell_571_matmul_readvariableop_resource:	d?A
.lstm_cell_571_matmul_1_readvariableop_resource:	2?<
-lstm_cell_571_biasadd_readvariableop_resource:	?
identity??$lstm_cell_571/BiasAdd/ReadVariableOp?#lstm_cell_571/MatMul/ReadVariableOp?%lstm_cell_571/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_571/MatMul/ReadVariableOpReadVariableOp,lstm_cell_571_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_571/MatMulMatMulstrided_slice_2:output:0+lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_571_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_571/MatMul_1MatMulzeros:output:0-lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_571/addAddV2lstm_cell_571/MatMul:product:0 lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_571_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_571/BiasAddBiasAddlstm_cell_571/add:z:0,lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_571/splitSplit&lstm_cell_571/split/split_dim:output:0lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_571/SigmoidSigmoidlstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_1Sigmoidlstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_571/mulMullstm_cell_571/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_571/ReluRelulstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_1Mullstm_cell_571/Sigmoid:y:0 lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_571/add_1AddV2lstm_cell_571/mul:z:0lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_571/Sigmoid_2Sigmoidlstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_571/Relu_1Relulstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_571/mul_2Mullstm_cell_571/Sigmoid_2:y:0"lstm_cell_571/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_571_matmul_readvariableop_resource.lstm_cell_571_matmul_1_readvariableop_resource-lstm_cell_571_biasadd_readvariableop_resource*
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
while_body_3464321*
condR
while_cond_3464320*K
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
NoOpNoOp%^lstm_cell_571/BiasAdd/ReadVariableOp$^lstm_cell_571/MatMul/ReadVariableOp&^lstm_cell_571/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_571/BiasAdd/ReadVariableOp$lstm_cell_571/BiasAdd/ReadVariableOp2J
#lstm_cell_571/MatMul/ReadVariableOp#lstm_cell_571/MatMul/ReadVariableOp2N
%lstm_cell_571/MatMul_1/ReadVariableOp%lstm_cell_571/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_515_layer_call_fn_3464856
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3461475o
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
?K
?
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465021
inputs_0>
,lstm_cell_572_matmul_readvariableop_resource:2(@
.lstm_cell_572_matmul_1_readvariableop_resource:
(;
-lstm_cell_572_biasadd_readvariableop_resource:(
identity??$lstm_cell_572/BiasAdd/ReadVariableOp?#lstm_cell_572/MatMul/ReadVariableOp?%lstm_cell_572/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_572/MatMul/ReadVariableOpReadVariableOp,lstm_cell_572_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_572/MatMulMatMulstrided_slice_2:output:0+lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_572_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_572/MatMul_1MatMulzeros:output:0-lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_572/addAddV2lstm_cell_572/MatMul:product:0 lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_572_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_572/BiasAddBiasAddlstm_cell_572/add:z:0,lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_572/splitSplit&lstm_cell_572/split/split_dim:output:0lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_572/SigmoidSigmoidlstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_1Sigmoidlstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_572/mulMullstm_cell_572/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_572/ReluRelulstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_1Mullstm_cell_572/Sigmoid:y:0 lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_572/add_1AddV2lstm_cell_572/mul:z:0lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_572/Sigmoid_2Sigmoidlstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_572/Relu_1Relulstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_572/mul_2Mullstm_cell_572/Sigmoid_2:y:0"lstm_cell_572/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_572_matmul_readvariableop_resource.lstm_cell_572_matmul_1_readvariableop_resource-lstm_cell_572_biasadd_readvariableop_resource*
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
while_body_3464937*
condR
while_cond_3464936*K
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
NoOpNoOp%^lstm_cell_572/BiasAdd/ReadVariableOp$^lstm_cell_572/MatMul/ReadVariableOp&^lstm_cell_572/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_572/BiasAdd/ReadVariableOp$lstm_cell_572/BiasAdd/ReadVariableOp2J
#lstm_cell_572/MatMul/ReadVariableOp#lstm_cell_572/MatMul/ReadVariableOp2N
%lstm_cell_572/MatMul_1/ReadVariableOp%lstm_cell_572/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_3464464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_571_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_571_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_571_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_571_matmul_readvariableop_resource:	d?G
4while_lstm_cell_571_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_571_biasadd_readvariableop_resource:	???*while/lstm_cell_571/BiasAdd/ReadVariableOp?)while/lstm_cell_571/MatMul/ReadVariableOp?+while/lstm_cell_571/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_571/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_571_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_571/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_571_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_571/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_571/addAddV2$while/lstm_cell_571/MatMul:product:0&while/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_571_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_571/BiasAddBiasAddwhile/lstm_cell_571/add:z:02while/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_571/splitSplit,while/lstm_cell_571/split/split_dim:output:0$while/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_571/SigmoidSigmoid"while/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_1Sigmoid"while/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mulMul!while/lstm_cell_571/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_571/ReluRelu"while/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_1Mulwhile/lstm_cell_571/Sigmoid:y:0&while/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/add_1AddV2while/lstm_cell_571/mul:z:0while/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_2Sigmoid"while/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_571/Relu_1Reluwhile/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_2Mul!while/lstm_cell_571/Sigmoid_2:y:0(while/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_571/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_571/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_571/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_571/BiasAdd/ReadVariableOp*^while/lstm_cell_571/MatMul/ReadVariableOp,^while/lstm_cell_571/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_571_biasadd_readvariableop_resource5while_lstm_cell_571_biasadd_readvariableop_resource_0"n
4while_lstm_cell_571_matmul_1_readvariableop_resource6while_lstm_cell_571_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_571_matmul_readvariableop_resource4while_lstm_cell_571_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_571/BiasAdd/ReadVariableOp*while/lstm_cell_571/BiasAdd/ReadVariableOp2V
)while/lstm_cell_571/MatMul/ReadVariableOp)while/lstm_cell_571/MatMul/ReadVariableOp2Z
+while/lstm_cell_571/MatMul_1/ReadVariableOp+while/lstm_cell_571/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_171_layer_call_fn_3462721

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
K__inference_sequential_171_layer_call_and_return_conditional_losses_3461958o
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

?
lstm_513_while_cond_3462806.
*lstm_513_while_lstm_513_while_loop_counter4
0lstm_513_while_lstm_513_while_maximum_iterations
lstm_513_while_placeholder 
lstm_513_while_placeholder_1 
lstm_513_while_placeholder_2 
lstm_513_while_placeholder_30
,lstm_513_while_less_lstm_513_strided_slice_1G
Clstm_513_while_lstm_513_while_cond_3462806___redundant_placeholder0G
Clstm_513_while_lstm_513_while_cond_3462806___redundant_placeholder1G
Clstm_513_while_lstm_513_while_cond_3462806___redundant_placeholder2G
Clstm_513_while_lstm_513_while_cond_3462806___redundant_placeholder3
lstm_513_while_identity
?
lstm_513/while/LessLesslstm_513_while_placeholder,lstm_513_while_less_lstm_513_strided_slice_1*
T0*
_output_shapes
: ]
lstm_513/while/IdentityIdentitylstm_513/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_513_while_identity lstm_513/while/Identity:output:0*(
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
while_cond_3465222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3465222___redundant_placeholder05
1while_while_cond_3465222___redundant_placeholder15
1while_while_cond_3465222___redundant_placeholder25
1while_while_cond_3465222___redundant_placeholder3
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
+__inference_dense_171_layer_call_fn_3465459

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
F__inference_dense_171_layer_call_and_return_conditional_losses_3461951o
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
??
?
K__inference_sequential_171_layer_call_and_return_conditional_losses_3463175

inputsH
5lstm_513_lstm_cell_570_matmul_readvariableop_resource:	?J
7lstm_513_lstm_cell_570_matmul_1_readvariableop_resource:	d?E
6lstm_513_lstm_cell_570_biasadd_readvariableop_resource:	?H
5lstm_514_lstm_cell_571_matmul_readvariableop_resource:	d?J
7lstm_514_lstm_cell_571_matmul_1_readvariableop_resource:	2?E
6lstm_514_lstm_cell_571_biasadd_readvariableop_resource:	?G
5lstm_515_lstm_cell_572_matmul_readvariableop_resource:2(I
7lstm_515_lstm_cell_572_matmul_1_readvariableop_resource:
(D
6lstm_515_lstm_cell_572_biasadd_readvariableop_resource:(:
(dense_171_matmul_readvariableop_resource:
7
)dense_171_biasadd_readvariableop_resource:
identity?? dense_171/BiasAdd/ReadVariableOp?dense_171/MatMul/ReadVariableOp?-lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp?,lstm_513/lstm_cell_570/MatMul/ReadVariableOp?.lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp?lstm_513/while?-lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp?,lstm_514/lstm_cell_571/MatMul/ReadVariableOp?.lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp?lstm_514/while?-lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp?,lstm_515/lstm_cell_572/MatMul/ReadVariableOp?.lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp?lstm_515/whileD
lstm_513/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_513/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_513/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_513/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_513/strided_sliceStridedSlicelstm_513/Shape:output:0%lstm_513/strided_slice/stack:output:0'lstm_513/strided_slice/stack_1:output:0'lstm_513/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_513/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_513/zeros/packedPacklstm_513/strided_slice:output:0 lstm_513/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_513/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_513/zerosFilllstm_513/zeros/packed:output:0lstm_513/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_513/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_513/zeros_1/packedPacklstm_513/strided_slice:output:0"lstm_513/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_513/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_513/zeros_1Fill lstm_513/zeros_1/packed:output:0lstm_513/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_513/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_513/transpose	Transposeinputs lstm_513/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_513/Shape_1Shapelstm_513/transpose:y:0*
T0*
_output_shapes
:h
lstm_513/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_513/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_513/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_513/strided_slice_1StridedSlicelstm_513/Shape_1:output:0'lstm_513/strided_slice_1/stack:output:0)lstm_513/strided_slice_1/stack_1:output:0)lstm_513/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_513/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_513/TensorArrayV2TensorListReserve-lstm_513/TensorArrayV2/element_shape:output:0!lstm_513/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_513/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_513/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_513/transpose:y:0Glstm_513/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_513/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_513/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_513/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_513/strided_slice_2StridedSlicelstm_513/transpose:y:0'lstm_513/strided_slice_2/stack:output:0)lstm_513/strided_slice_2/stack_1:output:0)lstm_513/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_513/lstm_cell_570/MatMul/ReadVariableOpReadVariableOp5lstm_513_lstm_cell_570_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_513/lstm_cell_570/MatMulMatMul!lstm_513/strided_slice_2:output:04lstm_513/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_513/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp7lstm_513_lstm_cell_570_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_513/lstm_cell_570/MatMul_1MatMullstm_513/zeros:output:06lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_513/lstm_cell_570/addAddV2'lstm_513/lstm_cell_570/MatMul:product:0)lstm_513/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_513/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp6lstm_513_lstm_cell_570_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_513/lstm_cell_570/BiasAddBiasAddlstm_513/lstm_cell_570/add:z:05lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_513/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_513/lstm_cell_570/splitSplit/lstm_513/lstm_cell_570/split/split_dim:output:0'lstm_513/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_513/lstm_cell_570/SigmoidSigmoid%lstm_513/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_513/lstm_cell_570/Sigmoid_1Sigmoid%lstm_513/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_513/lstm_cell_570/mulMul$lstm_513/lstm_cell_570/Sigmoid_1:y:0lstm_513/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_513/lstm_cell_570/ReluRelu%lstm_513/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_513/lstm_cell_570/mul_1Mul"lstm_513/lstm_cell_570/Sigmoid:y:0)lstm_513/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_513/lstm_cell_570/add_1AddV2lstm_513/lstm_cell_570/mul:z:0 lstm_513/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_513/lstm_cell_570/Sigmoid_2Sigmoid%lstm_513/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_513/lstm_cell_570/Relu_1Relu lstm_513/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_513/lstm_cell_570/mul_2Mul$lstm_513/lstm_cell_570/Sigmoid_2:y:0+lstm_513/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_513/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_513/TensorArrayV2_1TensorListReserve/lstm_513/TensorArrayV2_1/element_shape:output:0!lstm_513/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_513/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_513/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_513/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_513/whileWhile$lstm_513/while/loop_counter:output:0*lstm_513/while/maximum_iterations:output:0lstm_513/time:output:0!lstm_513/TensorArrayV2_1:handle:0lstm_513/zeros:output:0lstm_513/zeros_1:output:0!lstm_513/strided_slice_1:output:0@lstm_513/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_513_lstm_cell_570_matmul_readvariableop_resource7lstm_513_lstm_cell_570_matmul_1_readvariableop_resource6lstm_513_lstm_cell_570_biasadd_readvariableop_resource*
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
lstm_513_while_body_3462807*'
condR
lstm_513_while_cond_3462806*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_513/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_513/TensorArrayV2Stack/TensorListStackTensorListStacklstm_513/while:output:3Blstm_513/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_513/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_513/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_513/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_513/strided_slice_3StridedSlice4lstm_513/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_513/strided_slice_3/stack:output:0)lstm_513/strided_slice_3/stack_1:output:0)lstm_513/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_513/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_513/transpose_1	Transpose4lstm_513/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_513/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_513/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_514/ShapeShapelstm_513/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_514/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_514/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_514/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_514/strided_sliceStridedSlicelstm_514/Shape:output:0%lstm_514/strided_slice/stack:output:0'lstm_514/strided_slice/stack_1:output:0'lstm_514/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_514/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_514/zeros/packedPacklstm_514/strided_slice:output:0 lstm_514/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_514/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_514/zerosFilllstm_514/zeros/packed:output:0lstm_514/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_514/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_514/zeros_1/packedPacklstm_514/strided_slice:output:0"lstm_514/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_514/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_514/zeros_1Fill lstm_514/zeros_1/packed:output:0lstm_514/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_514/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_514/transpose	Transposelstm_513/transpose_1:y:0 lstm_514/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_514/Shape_1Shapelstm_514/transpose:y:0*
T0*
_output_shapes
:h
lstm_514/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_514/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_514/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_514/strided_slice_1StridedSlicelstm_514/Shape_1:output:0'lstm_514/strided_slice_1/stack:output:0)lstm_514/strided_slice_1/stack_1:output:0)lstm_514/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_514/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_514/TensorArrayV2TensorListReserve-lstm_514/TensorArrayV2/element_shape:output:0!lstm_514/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_514/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_514/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_514/transpose:y:0Glstm_514/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_514/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_514/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_514/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_514/strided_slice_2StridedSlicelstm_514/transpose:y:0'lstm_514/strided_slice_2/stack:output:0)lstm_514/strided_slice_2/stack_1:output:0)lstm_514/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_514/lstm_cell_571/MatMul/ReadVariableOpReadVariableOp5lstm_514_lstm_cell_571_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_514/lstm_cell_571/MatMulMatMul!lstm_514/strided_slice_2:output:04lstm_514/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_514/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp7lstm_514_lstm_cell_571_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_514/lstm_cell_571/MatMul_1MatMullstm_514/zeros:output:06lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_514/lstm_cell_571/addAddV2'lstm_514/lstm_cell_571/MatMul:product:0)lstm_514/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_514/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp6lstm_514_lstm_cell_571_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_514/lstm_cell_571/BiasAddBiasAddlstm_514/lstm_cell_571/add:z:05lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_514/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_514/lstm_cell_571/splitSplit/lstm_514/lstm_cell_571/split/split_dim:output:0'lstm_514/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_514/lstm_cell_571/SigmoidSigmoid%lstm_514/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_514/lstm_cell_571/Sigmoid_1Sigmoid%lstm_514/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_514/lstm_cell_571/mulMul$lstm_514/lstm_cell_571/Sigmoid_1:y:0lstm_514/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_514/lstm_cell_571/ReluRelu%lstm_514/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_514/lstm_cell_571/mul_1Mul"lstm_514/lstm_cell_571/Sigmoid:y:0)lstm_514/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_514/lstm_cell_571/add_1AddV2lstm_514/lstm_cell_571/mul:z:0 lstm_514/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_514/lstm_cell_571/Sigmoid_2Sigmoid%lstm_514/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_514/lstm_cell_571/Relu_1Relu lstm_514/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_514/lstm_cell_571/mul_2Mul$lstm_514/lstm_cell_571/Sigmoid_2:y:0+lstm_514/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_514/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_514/TensorArrayV2_1TensorListReserve/lstm_514/TensorArrayV2_1/element_shape:output:0!lstm_514/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_514/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_514/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_514/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_514/whileWhile$lstm_514/while/loop_counter:output:0*lstm_514/while/maximum_iterations:output:0lstm_514/time:output:0!lstm_514/TensorArrayV2_1:handle:0lstm_514/zeros:output:0lstm_514/zeros_1:output:0!lstm_514/strided_slice_1:output:0@lstm_514/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_514_lstm_cell_571_matmul_readvariableop_resource7lstm_514_lstm_cell_571_matmul_1_readvariableop_resource6lstm_514_lstm_cell_571_biasadd_readvariableop_resource*
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
lstm_514_while_body_3462946*'
condR
lstm_514_while_cond_3462945*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_514/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_514/TensorArrayV2Stack/TensorListStackTensorListStacklstm_514/while:output:3Blstm_514/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_514/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_514/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_514/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_514/strided_slice_3StridedSlice4lstm_514/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_514/strided_slice_3/stack:output:0)lstm_514/strided_slice_3/stack_1:output:0)lstm_514/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_514/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_514/transpose_1	Transpose4lstm_514/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_514/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_514/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_515/ShapeShapelstm_514/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_515/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_515/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_515/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_515/strided_sliceStridedSlicelstm_515/Shape:output:0%lstm_515/strided_slice/stack:output:0'lstm_515/strided_slice/stack_1:output:0'lstm_515/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_515/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_515/zeros/packedPacklstm_515/strided_slice:output:0 lstm_515/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_515/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_515/zerosFilllstm_515/zeros/packed:output:0lstm_515/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_515/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_515/zeros_1/packedPacklstm_515/strided_slice:output:0"lstm_515/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_515/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_515/zeros_1Fill lstm_515/zeros_1/packed:output:0lstm_515/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_515/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_515/transpose	Transposelstm_514/transpose_1:y:0 lstm_515/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_515/Shape_1Shapelstm_515/transpose:y:0*
T0*
_output_shapes
:h
lstm_515/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_515/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_515/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_515/strided_slice_1StridedSlicelstm_515/Shape_1:output:0'lstm_515/strided_slice_1/stack:output:0)lstm_515/strided_slice_1/stack_1:output:0)lstm_515/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_515/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_515/TensorArrayV2TensorListReserve-lstm_515/TensorArrayV2/element_shape:output:0!lstm_515/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_515/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_515/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_515/transpose:y:0Glstm_515/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_515/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_515/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_515/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_515/strided_slice_2StridedSlicelstm_515/transpose:y:0'lstm_515/strided_slice_2/stack:output:0)lstm_515/strided_slice_2/stack_1:output:0)lstm_515/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_515/lstm_cell_572/MatMul/ReadVariableOpReadVariableOp5lstm_515_lstm_cell_572_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_515/lstm_cell_572/MatMulMatMul!lstm_515/strided_slice_2:output:04lstm_515/lstm_cell_572/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_515/lstm_cell_572/MatMul_1/ReadVariableOpReadVariableOp7lstm_515_lstm_cell_572_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_515/lstm_cell_572/MatMul_1MatMullstm_515/zeros:output:06lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_515/lstm_cell_572/addAddV2'lstm_515/lstm_cell_572/MatMul:product:0)lstm_515/lstm_cell_572/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_515/lstm_cell_572/BiasAdd/ReadVariableOpReadVariableOp6lstm_515_lstm_cell_572_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_515/lstm_cell_572/BiasAddBiasAddlstm_515/lstm_cell_572/add:z:05lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_515/lstm_cell_572/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_515/lstm_cell_572/splitSplit/lstm_515/lstm_cell_572/split/split_dim:output:0'lstm_515/lstm_cell_572/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_515/lstm_cell_572/SigmoidSigmoid%lstm_515/lstm_cell_572/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_515/lstm_cell_572/Sigmoid_1Sigmoid%lstm_515/lstm_cell_572/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_515/lstm_cell_572/mulMul$lstm_515/lstm_cell_572/Sigmoid_1:y:0lstm_515/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_515/lstm_cell_572/ReluRelu%lstm_515/lstm_cell_572/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_515/lstm_cell_572/mul_1Mul"lstm_515/lstm_cell_572/Sigmoid:y:0)lstm_515/lstm_cell_572/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_515/lstm_cell_572/add_1AddV2lstm_515/lstm_cell_572/mul:z:0 lstm_515/lstm_cell_572/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_515/lstm_cell_572/Sigmoid_2Sigmoid%lstm_515/lstm_cell_572/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_515/lstm_cell_572/Relu_1Relu lstm_515/lstm_cell_572/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_515/lstm_cell_572/mul_2Mul$lstm_515/lstm_cell_572/Sigmoid_2:y:0+lstm_515/lstm_cell_572/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_515/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_515/TensorArrayV2_1TensorListReserve/lstm_515/TensorArrayV2_1/element_shape:output:0!lstm_515/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_515/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_515/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_515/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_515/whileWhile$lstm_515/while/loop_counter:output:0*lstm_515/while/maximum_iterations:output:0lstm_515/time:output:0!lstm_515/TensorArrayV2_1:handle:0lstm_515/zeros:output:0lstm_515/zeros_1:output:0!lstm_515/strided_slice_1:output:0@lstm_515/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_515_lstm_cell_572_matmul_readvariableop_resource7lstm_515_lstm_cell_572_matmul_1_readvariableop_resource6lstm_515_lstm_cell_572_biasadd_readvariableop_resource*
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
lstm_515_while_body_3463085*'
condR
lstm_515_while_cond_3463084*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_515/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_515/TensorArrayV2Stack/TensorListStackTensorListStacklstm_515/while:output:3Blstm_515/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_515/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_515/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_515/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_515/strided_slice_3StridedSlice4lstm_515/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_515/strided_slice_3/stack:output:0)lstm_515/strided_slice_3/stack_1:output:0)lstm_515/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_515/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_515/transpose_1	Transpose4lstm_515/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_515/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_515/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_171/MatMul/ReadVariableOpReadVariableOp(dense_171_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_171/MatMulMatMul!lstm_515/strided_slice_3:output:0'dense_171/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_171/BiasAdd/ReadVariableOpReadVariableOp)dense_171_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_171/BiasAddBiasAdddense_171/MatMul:product:0(dense_171/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_171/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_171/BiasAdd/ReadVariableOp ^dense_171/MatMul/ReadVariableOp.^lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp-^lstm_513/lstm_cell_570/MatMul/ReadVariableOp/^lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp^lstm_513/while.^lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp-^lstm_514/lstm_cell_571/MatMul/ReadVariableOp/^lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp^lstm_514/while.^lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp-^lstm_515/lstm_cell_572/MatMul/ReadVariableOp/^lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp^lstm_515/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_171/BiasAdd/ReadVariableOp dense_171/BiasAdd/ReadVariableOp2B
dense_171/MatMul/ReadVariableOpdense_171/MatMul/ReadVariableOp2^
-lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp-lstm_513/lstm_cell_570/BiasAdd/ReadVariableOp2\
,lstm_513/lstm_cell_570/MatMul/ReadVariableOp,lstm_513/lstm_cell_570/MatMul/ReadVariableOp2`
.lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp.lstm_513/lstm_cell_570/MatMul_1/ReadVariableOp2 
lstm_513/whilelstm_513/while2^
-lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp-lstm_514/lstm_cell_571/BiasAdd/ReadVariableOp2\
,lstm_514/lstm_cell_571/MatMul/ReadVariableOp,lstm_514/lstm_cell_571/MatMul/ReadVariableOp2`
.lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp.lstm_514/lstm_cell_571/MatMul_1/ReadVariableOp2 
lstm_514/whilelstm_514/while2^
-lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp-lstm_515/lstm_cell_572/BiasAdd/ReadVariableOp2\
,lstm_515/lstm_cell_572/MatMul/ReadVariableOp,lstm_515/lstm_cell_572/MatMul/ReadVariableOp2`
.lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp.lstm_515/lstm_cell_572/MatMul_1/ReadVariableOp2 
lstm_515/whilelstm_515/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_3465906
file_prefix/
+savev2_dense_171_kernel_read_readvariableop-
)savev2_dense_171_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_513_lstm_cell_513_kernel_read_readvariableopF
Bsavev2_lstm_513_lstm_cell_513_recurrent_kernel_read_readvariableop:
6savev2_lstm_513_lstm_cell_513_bias_read_readvariableop<
8savev2_lstm_514_lstm_cell_514_kernel_read_readvariableopF
Bsavev2_lstm_514_lstm_cell_514_recurrent_kernel_read_readvariableop:
6savev2_lstm_514_lstm_cell_514_bias_read_readvariableop<
8savev2_lstm_515_lstm_cell_515_kernel_read_readvariableopF
Bsavev2_lstm_515_lstm_cell_515_recurrent_kernel_read_readvariableop:
6savev2_lstm_515_lstm_cell_515_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_171_kernel_m_read_readvariableop4
0savev2_adam_dense_171_bias_m_read_readvariableopC
?savev2_adam_lstm_513_lstm_cell_513_kernel_m_read_readvariableopM
Isavev2_adam_lstm_513_lstm_cell_513_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_513_lstm_cell_513_bias_m_read_readvariableopC
?savev2_adam_lstm_514_lstm_cell_514_kernel_m_read_readvariableopM
Isavev2_adam_lstm_514_lstm_cell_514_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_514_lstm_cell_514_bias_m_read_readvariableopC
?savev2_adam_lstm_515_lstm_cell_515_kernel_m_read_readvariableopM
Isavev2_adam_lstm_515_lstm_cell_515_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_515_lstm_cell_515_bias_m_read_readvariableop6
2savev2_adam_dense_171_kernel_v_read_readvariableop4
0savev2_adam_dense_171_bias_v_read_readvariableopC
?savev2_adam_lstm_513_lstm_cell_513_kernel_v_read_readvariableopM
Isavev2_adam_lstm_513_lstm_cell_513_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_513_lstm_cell_513_bias_v_read_readvariableopC
?savev2_adam_lstm_514_lstm_cell_514_kernel_v_read_readvariableopM
Isavev2_adam_lstm_514_lstm_cell_514_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_514_lstm_cell_514_bias_v_read_readvariableopC
?savev2_adam_lstm_515_lstm_cell_515_kernel_v_read_readvariableopM
Isavev2_adam_lstm_515_lstm_cell_515_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_515_lstm_cell_515_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_171_kernel_read_readvariableop)savev2_dense_171_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_513_lstm_cell_513_kernel_read_readvariableopBsavev2_lstm_513_lstm_cell_513_recurrent_kernel_read_readvariableop6savev2_lstm_513_lstm_cell_513_bias_read_readvariableop8savev2_lstm_514_lstm_cell_514_kernel_read_readvariableopBsavev2_lstm_514_lstm_cell_514_recurrent_kernel_read_readvariableop6savev2_lstm_514_lstm_cell_514_bias_read_readvariableop8savev2_lstm_515_lstm_cell_515_kernel_read_readvariableopBsavev2_lstm_515_lstm_cell_515_recurrent_kernel_read_readvariableop6savev2_lstm_515_lstm_cell_515_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_171_kernel_m_read_readvariableop0savev2_adam_dense_171_bias_m_read_readvariableop?savev2_adam_lstm_513_lstm_cell_513_kernel_m_read_readvariableopIsavev2_adam_lstm_513_lstm_cell_513_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_513_lstm_cell_513_bias_m_read_readvariableop?savev2_adam_lstm_514_lstm_cell_514_kernel_m_read_readvariableopIsavev2_adam_lstm_514_lstm_cell_514_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_514_lstm_cell_514_bias_m_read_readvariableop?savev2_adam_lstm_515_lstm_cell_515_kernel_m_read_readvariableopIsavev2_adam_lstm_515_lstm_cell_515_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_515_lstm_cell_515_bias_m_read_readvariableop2savev2_adam_dense_171_kernel_v_read_readvariableop0savev2_adam_dense_171_bias_v_read_readvariableop?savev2_adam_lstm_513_lstm_cell_513_kernel_v_read_readvariableopIsavev2_adam_lstm_513_lstm_cell_513_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_513_lstm_cell_513_bias_v_read_readvariableop?savev2_adam_lstm_514_lstm_cell_514_kernel_v_read_readvariableopIsavev2_adam_lstm_514_lstm_cell_514_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_514_lstm_cell_514_bias_v_read_readvariableop?savev2_adam_lstm_515_lstm_cell_515_kernel_v_read_readvariableopIsavev2_adam_lstm_515_lstm_cell_515_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_515_lstm_cell_515_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3461633

inputs?
,lstm_cell_570_matmul_readvariableop_resource:	?A
.lstm_cell_570_matmul_1_readvariableop_resource:	d?<
-lstm_cell_570_biasadd_readvariableop_resource:	?
identity??$lstm_cell_570/BiasAdd/ReadVariableOp?#lstm_cell_570/MatMul/ReadVariableOp?%lstm_cell_570/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_570/MatMul/ReadVariableOpReadVariableOp,lstm_cell_570_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_570/MatMulMatMulstrided_slice_2:output:0+lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_570_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_570/MatMul_1MatMulzeros:output:0-lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_570/addAddV2lstm_cell_570/MatMul:product:0 lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_570_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_570/BiasAddBiasAddlstm_cell_570/add:z:0,lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_570/splitSplit&lstm_cell_570/split/split_dim:output:0lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_570/SigmoidSigmoidlstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_1Sigmoidlstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_570/mulMullstm_cell_570/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_570/ReluRelulstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_1Mullstm_cell_570/Sigmoid:y:0 lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_570/add_1AddV2lstm_cell_570/mul:z:0lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_2Sigmoidlstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_570/Relu_1Relulstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_2Mullstm_cell_570/Sigmoid_2:y:0"lstm_cell_570/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_570_matmul_readvariableop_resource.lstm_cell_570_matmul_1_readvariableop_resource-lstm_cell_570_biasadd_readvariableop_resource*
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
while_body_3461549*
condR
while_cond_3461548*K
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
NoOpNoOp%^lstm_cell_570/BiasAdd/ReadVariableOp$^lstm_cell_570/MatMul/ReadVariableOp&^lstm_cell_570/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_570/BiasAdd/ReadVariableOp$lstm_cell_570/BiasAdd/ReadVariableOp2J
#lstm_cell_570/MatMul/ReadVariableOp#lstm_cell_570/MatMul/ReadVariableOp2N
%lstm_cell_570/MatMul_1/ReadVariableOp%lstm_cell_570/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3462230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_571_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_571_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_571_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_571_matmul_readvariableop_resource:	d?G
4while_lstm_cell_571_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_571_biasadd_readvariableop_resource:	???*while/lstm_cell_571/BiasAdd/ReadVariableOp?)while/lstm_cell_571/MatMul/ReadVariableOp?+while/lstm_cell_571/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_571/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_571_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_571/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_571_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_571/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_571/addAddV2$while/lstm_cell_571/MatMul:product:0&while/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_571_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_571/BiasAddBiasAddwhile/lstm_cell_571/add:z:02while/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_571/splitSplit,while/lstm_cell_571/split/split_dim:output:0$while/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_571/SigmoidSigmoid"while/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_1Sigmoid"while/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mulMul!while/lstm_cell_571/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_571/ReluRelu"while/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_1Mulwhile/lstm_cell_571/Sigmoid:y:0&while/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/add_1AddV2while/lstm_cell_571/mul:z:0while/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_571/Sigmoid_2Sigmoid"while/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_571/Relu_1Reluwhile/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_571/mul_2Mul!while/lstm_cell_571/Sigmoid_2:y:0(while/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_571/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_571/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_571/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_571/BiasAdd/ReadVariableOp*^while/lstm_cell_571/MatMul/ReadVariableOp,^while/lstm_cell_571/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_571_biasadd_readvariableop_resource5while_lstm_cell_571_biasadd_readvariableop_resource_0"n
4while_lstm_cell_571_matmul_1_readvariableop_resource6while_lstm_cell_571_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_571_matmul_readvariableop_resource4while_lstm_cell_571_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_571/BiasAdd/ReadVariableOp*while/lstm_cell_571/BiasAdd/ReadVariableOp2V
)while/lstm_cell_571/MatMul/ReadVariableOp)while/lstm_cell_571/MatMul/ReadVariableOp2Z
+while/lstm_cell_571/MatMul_1/ReadVariableOp+while/lstm_cell_571/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_3466036
file_prefix3
!assignvariableop_dense_171_kernel:
/
!assignvariableop_1_dense_171_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_513_lstm_cell_513_kernel:	?M
:assignvariableop_8_lstm_513_lstm_cell_513_recurrent_kernel:	d?=
.assignvariableop_9_lstm_513_lstm_cell_513_bias:	?D
1assignvariableop_10_lstm_514_lstm_cell_514_kernel:	d?N
;assignvariableop_11_lstm_514_lstm_cell_514_recurrent_kernel:	2?>
/assignvariableop_12_lstm_514_lstm_cell_514_bias:	?C
1assignvariableop_13_lstm_515_lstm_cell_515_kernel:2(M
;assignvariableop_14_lstm_515_lstm_cell_515_recurrent_kernel:
(=
/assignvariableop_15_lstm_515_lstm_cell_515_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_171_kernel_m:
7
)assignvariableop_19_adam_dense_171_bias_m:K
8assignvariableop_20_adam_lstm_513_lstm_cell_513_kernel_m:	?U
Bassignvariableop_21_adam_lstm_513_lstm_cell_513_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_513_lstm_cell_513_bias_m:	?K
8assignvariableop_23_adam_lstm_514_lstm_cell_514_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_514_lstm_cell_514_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_514_lstm_cell_514_bias_m:	?J
8assignvariableop_26_adam_lstm_515_lstm_cell_515_kernel_m:2(T
Bassignvariableop_27_adam_lstm_515_lstm_cell_515_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_515_lstm_cell_515_bias_m:(=
+assignvariableop_29_adam_dense_171_kernel_v:
7
)assignvariableop_30_adam_dense_171_bias_v:K
8assignvariableop_31_adam_lstm_513_lstm_cell_513_kernel_v:	?U
Bassignvariableop_32_adam_lstm_513_lstm_cell_513_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_513_lstm_cell_513_bias_v:	?K
8assignvariableop_34_adam_lstm_514_lstm_cell_514_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_514_lstm_cell_514_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_514_lstm_cell_514_bias_v:	?J
8assignvariableop_37_adam_lstm_515_lstm_cell_515_kernel_v:2(T
Bassignvariableop_38_adam_lstm_515_lstm_cell_515_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_515_lstm_cell_515_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_171_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_171_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_513_lstm_cell_513_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_513_lstm_cell_513_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_513_lstm_cell_513_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_514_lstm_cell_514_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_514_lstm_cell_514_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_514_lstm_cell_514_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_515_lstm_cell_515_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_515_lstm_cell_515_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_515_lstm_cell_515_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_171_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_171_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_513_lstm_cell_513_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_513_lstm_cell_513_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_513_lstm_cell_513_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_514_lstm_cell_514_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_514_lstm_cell_514_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_514_lstm_cell_514_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_515_lstm_cell_515_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_515_lstm_cell_515_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_515_lstm_cell_515_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_171_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_171_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_513_lstm_cell_513_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_513_lstm_cell_513_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_513_lstm_cell_513_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_514_lstm_cell_514_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_514_lstm_cell_514_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_514_lstm_cell_514_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_515_lstm_cell_515_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_515_lstm_cell_515_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_515_lstm_cell_515_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3465567

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
?
E__inference_lstm_514_layer_call_and_return_conditional_losses_3460934

inputs(
lstm_cell_571_3460852:	d?(
lstm_cell_571_3460854:	2?$
lstm_cell_571_3460856:	?
identity??%lstm_cell_571/StatefulPartitionedCall?while;
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
%lstm_cell_571/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_571_3460852lstm_cell_571_3460854lstm_cell_571_3460856*
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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3460851n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_571_3460852lstm_cell_571_3460854lstm_cell_571_3460856*
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
while_body_3460865*
condR
while_cond_3460864*K
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
NoOpNoOp&^lstm_cell_571/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_571/StatefulPartitionedCall%lstm_cell_571/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_3460515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_570_3460539_0:	?0
while_lstm_cell_570_3460541_0:	d?,
while_lstm_cell_570_3460543_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_570_3460539:	?.
while_lstm_cell_570_3460541:	d?*
while_lstm_cell_570_3460543:	???+while/lstm_cell_570/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_570/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_570_3460539_0while_lstm_cell_570_3460541_0while_lstm_cell_570_3460543_0*
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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3460501?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_570/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_570/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_570/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_570/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_570_3460539while_lstm_cell_570_3460539_0"<
while_lstm_cell_570_3460541while_lstm_cell_570_3460541_0"<
while_lstm_cell_570_3460543while_lstm_cell_570_3460543_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_570/StatefulPartitionedCall+while/lstm_cell_570/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3464749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3464749___redundant_placeholder05
1while_while_cond_3464749___redundant_placeholder15
1while_while_cond_3464749___redundant_placeholder25
1while_while_cond_3464749___redundant_placeholder3
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3462479

inputs?
,lstm_cell_570_matmul_readvariableop_resource:	?A
.lstm_cell_570_matmul_1_readvariableop_resource:	d?<
-lstm_cell_570_biasadd_readvariableop_resource:	?
identity??$lstm_cell_570/BiasAdd/ReadVariableOp?#lstm_cell_570/MatMul/ReadVariableOp?%lstm_cell_570/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_570/MatMul/ReadVariableOpReadVariableOp,lstm_cell_570_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_570/MatMulMatMulstrided_slice_2:output:0+lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_570_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_570/MatMul_1MatMulzeros:output:0-lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_570/addAddV2lstm_cell_570/MatMul:product:0 lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_570_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_570/BiasAddBiasAddlstm_cell_570/add:z:0,lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_570/splitSplit&lstm_cell_570/split/split_dim:output:0lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_570/SigmoidSigmoidlstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_1Sigmoidlstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_570/mulMullstm_cell_570/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_570/ReluRelulstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_1Mullstm_cell_570/Sigmoid:y:0 lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_570/add_1AddV2lstm_cell_570/mul:z:0lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_2Sigmoidlstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_570/Relu_1Relulstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_2Mullstm_cell_570/Sigmoid_2:y:0"lstm_cell_570/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_570_matmul_readvariableop_resource.lstm_cell_570_matmul_1_readvariableop_resource-lstm_cell_570_biasadd_readvariableop_resource*
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
while_body_3462395*
condR
while_cond_3462394*K
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
NoOpNoOp%^lstm_cell_570/BiasAdd/ReadVariableOp$^lstm_cell_570/MatMul/ReadVariableOp&^lstm_cell_570/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_570/BiasAdd/ReadVariableOp$lstm_cell_570/BiasAdd/ReadVariableOp2J
#lstm_cell_570/MatMul/ReadVariableOp#lstm_cell_570/MatMul/ReadVariableOp2N
%lstm_cell_570/MatMul_1/ReadVariableOp%lstm_cell_570/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3460997

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
while_cond_3460514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3460514___redundant_placeholder05
1while_while_cond_3460514___redundant_placeholder15
1while_while_cond_3460514___redundant_placeholder25
1while_while_cond_3460514___redundant_placeholder3
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
while_cond_3465079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3465079___redundant_placeholder05
1while_while_cond_3465079___redundant_placeholder15
1while_while_cond_3465079___redundant_placeholder25
1while_while_cond_3465079___redundant_placeholder3
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
while_cond_3460705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3460705___redundant_placeholder05
1while_while_cond_3460705___redundant_placeholder15
1while_while_cond_3460705___redundant_placeholder25
1while_while_cond_3460705___redundant_placeholder3
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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3465763

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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3464218

inputs?
,lstm_cell_570_matmul_readvariableop_resource:	?A
.lstm_cell_570_matmul_1_readvariableop_resource:	d?<
-lstm_cell_570_biasadd_readvariableop_resource:	?
identity??$lstm_cell_570/BiasAdd/ReadVariableOp?#lstm_cell_570/MatMul/ReadVariableOp?%lstm_cell_570/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_570/MatMul/ReadVariableOpReadVariableOp,lstm_cell_570_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_570/MatMulMatMulstrided_slice_2:output:0+lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_570_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_570/MatMul_1MatMulzeros:output:0-lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_570/addAddV2lstm_cell_570/MatMul:product:0 lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_570_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_570/BiasAddBiasAddlstm_cell_570/add:z:0,lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_570/splitSplit&lstm_cell_570/split/split_dim:output:0lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_570/SigmoidSigmoidlstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_1Sigmoidlstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_570/mulMullstm_cell_570/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_570/ReluRelulstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_1Mullstm_cell_570/Sigmoid:y:0 lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_570/add_1AddV2lstm_cell_570/mul:z:0lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_570/Sigmoid_2Sigmoidlstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_570/Relu_1Relulstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_570/mul_2Mullstm_cell_570/Sigmoid_2:y:0"lstm_cell_570/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_570_matmul_readvariableop_resource.lstm_cell_570_matmul_1_readvariableop_resource-lstm_cell_570_biasadd_readvariableop_resource*
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
while_body_3464134*
condR
while_cond_3464133*K
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
NoOpNoOp%^lstm_cell_570/BiasAdd/ReadVariableOp$^lstm_cell_570/MatMul/ReadVariableOp&^lstm_cell_570/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_570/BiasAdd/ReadVariableOp$lstm_cell_570/BiasAdd/ReadVariableOp2J
#lstm_cell_570/MatMul/ReadVariableOp#lstm_cell_570/MatMul/ReadVariableOp2N
%lstm_cell_570/MatMul_1/ReadVariableOp%lstm_cell_570/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_514_layer_call_and_return_conditional_losses_3461125

inputs(
lstm_cell_571_3461043:	d?(
lstm_cell_571_3461045:	2?$
lstm_cell_571_3461047:	?
identity??%lstm_cell_571/StatefulPartitionedCall?while;
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
%lstm_cell_571/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_571_3461043lstm_cell_571_3461045lstm_cell_571_3461047*
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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3460997n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_571_3461043lstm_cell_571_3461045lstm_cell_571_3461047*
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
while_body_3461056*
condR
while_cond_3461055*K
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
NoOpNoOp&^lstm_cell_571/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_571/StatefulPartitionedCall%lstm_cell_571/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3465731

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
?
while_cond_3461548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3461548___redundant_placeholder05
1while_while_cond_3461548___redundant_placeholder15
1while_while_cond_3461548___redundant_placeholder25
1while_while_cond_3461548___redundant_placeholder3
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
lstm_515_while_cond_3463084.
*lstm_515_while_lstm_515_while_loop_counter4
0lstm_515_while_lstm_515_while_maximum_iterations
lstm_515_while_placeholder 
lstm_515_while_placeholder_1 
lstm_515_while_placeholder_2 
lstm_515_while_placeholder_30
,lstm_515_while_less_lstm_515_strided_slice_1G
Clstm_515_while_lstm_515_while_cond_3463084___redundant_placeholder0G
Clstm_515_while_lstm_515_while_cond_3463084___redundant_placeholder1G
Clstm_515_while_lstm_515_while_cond_3463084___redundant_placeholder2G
Clstm_515_while_lstm_515_while_cond_3463084___redundant_placeholder3
lstm_515_while_identity
?
lstm_515/while/LessLesslstm_515_while_placeholder,lstm_515_while_less_lstm_515_strided_slice_1*
T0*
_output_shapes
: ]
lstm_515/while/IdentityIdentitylstm_515/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_515_while_identity lstm_515/while/Identity:output:0*(
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3461284

inputs'
lstm_cell_572_3461202:2('
lstm_cell_572_3461204:
(#
lstm_cell_572_3461206:(
identity??%lstm_cell_572/StatefulPartitionedCall?while;
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
%lstm_cell_572/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_572_3461202lstm_cell_572_3461204lstm_cell_572_3461206*
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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3461201n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_572_3461202lstm_cell_572_3461204lstm_cell_572_3461206*
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
while_body_3461215*
condR
while_cond_3461214*K
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
NoOpNoOp&^lstm_cell_572/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_572/StatefulPartitionedCall%lstm_cell_572/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
lstm_515_while_cond_3463511.
*lstm_515_while_lstm_515_while_loop_counter4
0lstm_515_while_lstm_515_while_maximum_iterations
lstm_515_while_placeholder 
lstm_515_while_placeholder_1 
lstm_515_while_placeholder_2 
lstm_515_while_placeholder_30
,lstm_515_while_less_lstm_515_strided_slice_1G
Clstm_515_while_lstm_515_while_cond_3463511___redundant_placeholder0G
Clstm_515_while_lstm_515_while_cond_3463511___redundant_placeholder1G
Clstm_515_while_lstm_515_while_cond_3463511___redundant_placeholder2G
Clstm_515_while_lstm_515_while_cond_3463511___redundant_placeholder3
lstm_515_while_identity
?
lstm_515/while/LessLesslstm_515_while_placeholder,lstm_515_while_less_lstm_515_strided_slice_1*
T0*
_output_shapes
: ]
lstm_515/while/IdentityIdentitylstm_515/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_515_while_identity lstm_515/while/Identity:output:0*(
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
while_body_3461549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_570_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_570_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_570_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_570_matmul_readvariableop_resource:	?G
4while_lstm_cell_570_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_570_biasadd_readvariableop_resource:	???*while/lstm_cell_570/BiasAdd/ReadVariableOp?)while/lstm_cell_570/MatMul/ReadVariableOp?+while/lstm_cell_570/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_570/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_570_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_570/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_570/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_570/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_570_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_570/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_570/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_570/addAddV2$while/lstm_cell_570/MatMul:product:0&while/lstm_cell_570/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_570/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_570_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_570/BiasAddBiasAddwhile/lstm_cell_570/add:z:02while/lstm_cell_570/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_570/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_570/splitSplit,while/lstm_cell_570/split/split_dim:output:0$while/lstm_cell_570/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_570/SigmoidSigmoid"while/lstm_cell_570/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_1Sigmoid"while/lstm_cell_570/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mulMul!while/lstm_cell_570/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_570/ReluRelu"while/lstm_cell_570/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_1Mulwhile/lstm_cell_570/Sigmoid:y:0&while/lstm_cell_570/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/add_1AddV2while/lstm_cell_570/mul:z:0while/lstm_cell_570/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_570/Sigmoid_2Sigmoid"while/lstm_cell_570/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_570/Relu_1Reluwhile/lstm_cell_570/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_570/mul_2Mul!while/lstm_cell_570/Sigmoid_2:y:0(while/lstm_cell_570/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_570/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_570/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_570/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_570/BiasAdd/ReadVariableOp*^while/lstm_cell_570/MatMul/ReadVariableOp,^while/lstm_cell_570/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_570_biasadd_readvariableop_resource5while_lstm_cell_570_biasadd_readvariableop_resource_0"n
4while_lstm_cell_570_matmul_1_readvariableop_resource6while_lstm_cell_570_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_570_matmul_readvariableop_resource4while_lstm_cell_570_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_570/BiasAdd/ReadVariableOp*while/lstm_cell_570/BiasAdd/ReadVariableOp2V
)while/lstm_cell_570/MatMul/ReadVariableOp)while/lstm_cell_570/MatMul/ReadVariableOp2Z
+while/lstm_cell_570/MatMul_1/ReadVariableOp+while/lstm_cell_570/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_513_while_cond_3463233.
*lstm_513_while_lstm_513_while_loop_counter4
0lstm_513_while_lstm_513_while_maximum_iterations
lstm_513_while_placeholder 
lstm_513_while_placeholder_1 
lstm_513_while_placeholder_2 
lstm_513_while_placeholder_30
,lstm_513_while_less_lstm_513_strided_slice_1G
Clstm_513_while_lstm_513_while_cond_3463233___redundant_placeholder0G
Clstm_513_while_lstm_513_while_cond_3463233___redundant_placeholder1G
Clstm_513_while_lstm_513_while_cond_3463233___redundant_placeholder2G
Clstm_513_while_lstm_513_while_cond_3463233___redundant_placeholder3
lstm_513_while_identity
?
lstm_513/while/LessLesslstm_513_while_placeholder,lstm_513_while_less_lstm_513_strided_slice_1*
T0*
_output_shapes
: ]
lstm_513/while/IdentityIdentitylstm_513/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_513_while_identity lstm_513/while/Identity:output:0*(
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
while_cond_3461214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3461214___redundant_placeholder05
1while_while_cond_3461214___redundant_placeholder15
1while_while_cond_3461214___redundant_placeholder25
1while_while_cond_3461214___redundant_placeholder3
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

lstm_514_while_body_3463373.
*lstm_514_while_lstm_514_while_loop_counter4
0lstm_514_while_lstm_514_while_maximum_iterations
lstm_514_while_placeholder 
lstm_514_while_placeholder_1 
lstm_514_while_placeholder_2 
lstm_514_while_placeholder_3-
)lstm_514_while_lstm_514_strided_slice_1_0i
elstm_514_while_tensorarrayv2read_tensorlistgetitem_lstm_514_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_514_while_lstm_cell_571_matmul_readvariableop_resource_0:	d?R
?lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource_0:	2?M
>lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource_0:	?
lstm_514_while_identity
lstm_514_while_identity_1
lstm_514_while_identity_2
lstm_514_while_identity_3
lstm_514_while_identity_4
lstm_514_while_identity_5+
'lstm_514_while_lstm_514_strided_slice_1g
clstm_514_while_tensorarrayv2read_tensorlistgetitem_lstm_514_tensorarrayunstack_tensorlistfromtensorN
;lstm_514_while_lstm_cell_571_matmul_readvariableop_resource:	d?P
=lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource:	2?K
<lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource:	???3lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp?2lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp?4lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp?
@lstm_514/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_514/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_514_while_tensorarrayv2read_tensorlistgetitem_lstm_514_tensorarrayunstack_tensorlistfromtensor_0lstm_514_while_placeholderIlstm_514/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_514/while/lstm_cell_571/MatMul/ReadVariableOpReadVariableOp=lstm_514_while_lstm_cell_571_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_514/while/lstm_cell_571/MatMulMatMul9lstm_514/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOpReadVariableOp?lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_514/while/lstm_cell_571/MatMul_1MatMullstm_514_while_placeholder_2<lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_514/while/lstm_cell_571/addAddV2-lstm_514/while/lstm_cell_571/MatMul:product:0/lstm_514/while/lstm_cell_571/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOpReadVariableOp>lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_514/while/lstm_cell_571/BiasAddBiasAdd$lstm_514/while/lstm_cell_571/add:z:0;lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_514/while/lstm_cell_571/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_514/while/lstm_cell_571/splitSplit5lstm_514/while/lstm_cell_571/split/split_dim:output:0-lstm_514/while/lstm_cell_571/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_514/while/lstm_cell_571/SigmoidSigmoid+lstm_514/while/lstm_cell_571/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_514/while/lstm_cell_571/Sigmoid_1Sigmoid+lstm_514/while/lstm_cell_571/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_514/while/lstm_cell_571/mulMul*lstm_514/while/lstm_cell_571/Sigmoid_1:y:0lstm_514_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_514/while/lstm_cell_571/ReluRelu+lstm_514/while/lstm_cell_571/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_514/while/lstm_cell_571/mul_1Mul(lstm_514/while/lstm_cell_571/Sigmoid:y:0/lstm_514/while/lstm_cell_571/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_514/while/lstm_cell_571/add_1AddV2$lstm_514/while/lstm_cell_571/mul:z:0&lstm_514/while/lstm_cell_571/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_514/while/lstm_cell_571/Sigmoid_2Sigmoid+lstm_514/while/lstm_cell_571/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_514/while/lstm_cell_571/Relu_1Relu&lstm_514/while/lstm_cell_571/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_514/while/lstm_cell_571/mul_2Mul*lstm_514/while/lstm_cell_571/Sigmoid_2:y:01lstm_514/while/lstm_cell_571/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_514/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_514_while_placeholder_1lstm_514_while_placeholder&lstm_514/while/lstm_cell_571/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_514/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_514/while/addAddV2lstm_514_while_placeholderlstm_514/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_514/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_514/while/add_1AddV2*lstm_514_while_lstm_514_while_loop_counterlstm_514/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_514/while/IdentityIdentitylstm_514/while/add_1:z:0^lstm_514/while/NoOp*
T0*
_output_shapes
: ?
lstm_514/while/Identity_1Identity0lstm_514_while_lstm_514_while_maximum_iterations^lstm_514/while/NoOp*
T0*
_output_shapes
: t
lstm_514/while/Identity_2Identitylstm_514/while/add:z:0^lstm_514/while/NoOp*
T0*
_output_shapes
: ?
lstm_514/while/Identity_3IdentityClstm_514/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_514/while/NoOp*
T0*
_output_shapes
: ?
lstm_514/while/Identity_4Identity&lstm_514/while/lstm_cell_571/mul_2:z:0^lstm_514/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_514/while/Identity_5Identity&lstm_514/while/lstm_cell_571/add_1:z:0^lstm_514/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_514/while/NoOpNoOp4^lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp3^lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp5^lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_514_while_identity lstm_514/while/Identity:output:0"?
lstm_514_while_identity_1"lstm_514/while/Identity_1:output:0"?
lstm_514_while_identity_2"lstm_514/while/Identity_2:output:0"?
lstm_514_while_identity_3"lstm_514/while/Identity_3:output:0"?
lstm_514_while_identity_4"lstm_514/while/Identity_4:output:0"?
lstm_514_while_identity_5"lstm_514/while/Identity_5:output:0"T
'lstm_514_while_lstm_514_strided_slice_1)lstm_514_while_lstm_514_strided_slice_1_0"~
<lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource>lstm_514_while_lstm_cell_571_biasadd_readvariableop_resource_0"?
=lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource?lstm_514_while_lstm_cell_571_matmul_1_readvariableop_resource_0"|
;lstm_514_while_lstm_cell_571_matmul_readvariableop_resource=lstm_514_while_lstm_cell_571_matmul_readvariableop_resource_0"?
clstm_514_while_tensorarrayv2read_tensorlistgetitem_lstm_514_tensorarrayunstack_tensorlistfromtensorelstm_514_while_tensorarrayv2read_tensorlistgetitem_lstm_514_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp3lstm_514/while/lstm_cell_571/BiasAdd/ReadVariableOp2h
2lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp2lstm_514/while/lstm_cell_571/MatMul/ReadVariableOp2l
4lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp4lstm_514/while/lstm_cell_571/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_571_layer_call_fn_3465584

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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3460851o
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
?
?
/__inference_lstm_cell_571_layer_call_fn_3465601

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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3460997o
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
?
?
*__inference_lstm_515_layer_call_fn_3464867

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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3461933o
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
?
*sequential_171_lstm_513_while_cond_3460065L
Hsequential_171_lstm_513_while_sequential_171_lstm_513_while_loop_counterR
Nsequential_171_lstm_513_while_sequential_171_lstm_513_while_maximum_iterations-
)sequential_171_lstm_513_while_placeholder/
+sequential_171_lstm_513_while_placeholder_1/
+sequential_171_lstm_513_while_placeholder_2/
+sequential_171_lstm_513_while_placeholder_3N
Jsequential_171_lstm_513_while_less_sequential_171_lstm_513_strided_slice_1e
asequential_171_lstm_513_while_sequential_171_lstm_513_while_cond_3460065___redundant_placeholder0e
asequential_171_lstm_513_while_sequential_171_lstm_513_while_cond_3460065___redundant_placeholder1e
asequential_171_lstm_513_while_sequential_171_lstm_513_while_cond_3460065___redundant_placeholder2e
asequential_171_lstm_513_while_sequential_171_lstm_513_while_cond_3460065___redundant_placeholder3*
&sequential_171_lstm_513_while_identity
?
"sequential_171/lstm_513/while/LessLess)sequential_171_lstm_513_while_placeholderJsequential_171_lstm_513_while_less_sequential_171_lstm_513_strided_slice_1*
T0*
_output_shapes
: {
&sequential_171/lstm_513/while/IdentityIdentity&sequential_171/lstm_513/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_171_lstm_513_while_identity/sequential_171/lstm_513/while/Identity:output:0*(
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
K__inference_sequential_171_layer_call_and_return_conditional_losses_3462547

inputs#
lstm_513_3462520:	?#
lstm_513_3462522:	d?
lstm_513_3462524:	?#
lstm_514_3462527:	d?#
lstm_514_3462529:	2?
lstm_514_3462531:	?"
lstm_515_3462534:2("
lstm_515_3462536:
(
lstm_515_3462538:(#
dense_171_3462541:

dense_171_3462543:
identity??!dense_171/StatefulPartitionedCall? lstm_513/StatefulPartitionedCall? lstm_514/StatefulPartitionedCall? lstm_515/StatefulPartitionedCall?
 lstm_513/StatefulPartitionedCallStatefulPartitionedCallinputslstm_513_3462520lstm_513_3462522lstm_513_3462524*
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3462479?
 lstm_514/StatefulPartitionedCallStatefulPartitionedCall)lstm_513/StatefulPartitionedCall:output:0lstm_514_3462527lstm_514_3462529lstm_514_3462531*
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3462314?
 lstm_515/StatefulPartitionedCallStatefulPartitionedCall)lstm_514/StatefulPartitionedCall:output:0lstm_515_3462534lstm_515_3462536lstm_515_3462538*
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3462149?
!dense_171/StatefulPartitionedCallStatefulPartitionedCall)lstm_515/StatefulPartitionedCall:output:0dense_171_3462541dense_171_3462543*
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
F__inference_dense_171_layer_call_and_return_conditional_losses_3461951y
IdentityIdentity*dense_171/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_171/StatefulPartitionedCall!^lstm_513/StatefulPartitionedCall!^lstm_514/StatefulPartitionedCall!^lstm_515/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2D
 lstm_513/StatefulPartitionedCall lstm_513/StatefulPartitionedCall2D
 lstm_514/StatefulPartitionedCall lstm_514/StatefulPartitionedCall2D
 lstm_515/StatefulPartitionedCall lstm_515/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3464320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3464320___redundant_placeholder05
1while_while_cond_3464320___redundant_placeholder15
1while_while_cond_3464320___redundant_placeholder25
1while_while_cond_3464320___redundant_placeholder3
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
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_513_input;
 serving_default_lstm_513_input:0?????????=
	dense_1710
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
2dense_171/kernel
:2dense_171/bias
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
0:.	?2lstm_513/lstm_cell_513/kernel
::8	d?2'lstm_513/lstm_cell_513/recurrent_kernel
*:(?2lstm_513/lstm_cell_513/bias
0:.	d?2lstm_514/lstm_cell_514/kernel
::8	2?2'lstm_514/lstm_cell_514/recurrent_kernel
*:(?2lstm_514/lstm_cell_514/bias
/:-2(2lstm_515/lstm_cell_515/kernel
9:7
(2'lstm_515/lstm_cell_515/recurrent_kernel
):'(2lstm_515/lstm_cell_515/bias
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
2Adam/dense_171/kernel/m
!:2Adam/dense_171/bias/m
5:3	?2$Adam/lstm_513/lstm_cell_513/kernel/m
?:=	d?2.Adam/lstm_513/lstm_cell_513/recurrent_kernel/m
/:-?2"Adam/lstm_513/lstm_cell_513/bias/m
5:3	d?2$Adam/lstm_514/lstm_cell_514/kernel/m
?:=	2?2.Adam/lstm_514/lstm_cell_514/recurrent_kernel/m
/:-?2"Adam/lstm_514/lstm_cell_514/bias/m
4:22(2$Adam/lstm_515/lstm_cell_515/kernel/m
>:<
(2.Adam/lstm_515/lstm_cell_515/recurrent_kernel/m
.:,(2"Adam/lstm_515/lstm_cell_515/bias/m
':%
2Adam/dense_171/kernel/v
!:2Adam/dense_171/bias/v
5:3	?2$Adam/lstm_513/lstm_cell_513/kernel/v
?:=	d?2.Adam/lstm_513/lstm_cell_513/recurrent_kernel/v
/:-?2"Adam/lstm_513/lstm_cell_513/bias/v
5:3	d?2$Adam/lstm_514/lstm_cell_514/kernel/v
?:=	2?2.Adam/lstm_514/lstm_cell_514/recurrent_kernel/v
/:-?2"Adam/lstm_514/lstm_cell_514/bias/v
4:22(2$Adam/lstm_515/lstm_cell_515/kernel/v
>:<
(2.Adam/lstm_515/lstm_cell_515/recurrent_kernel/v
.:,(2"Adam/lstm_515/lstm_cell_515/bias/v
?2?
0__inference_sequential_171_layer_call_fn_3461983
0__inference_sequential_171_layer_call_fn_3462721
0__inference_sequential_171_layer_call_fn_3462748
0__inference_sequential_171_layer_call_fn_3462599?
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
K__inference_sequential_171_layer_call_and_return_conditional_losses_3463175
K__inference_sequential_171_layer_call_and_return_conditional_losses_3463602
K__inference_sequential_171_layer_call_and_return_conditional_losses_3462629
K__inference_sequential_171_layer_call_and_return_conditional_losses_3462659?
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
"__inference__wrapped_model_3460434lstm_513_input"?
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
*__inference_lstm_513_layer_call_fn_3463613
*__inference_lstm_513_layer_call_fn_3463624
*__inference_lstm_513_layer_call_fn_3463635
*__inference_lstm_513_layer_call_fn_3463646?
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3463789
E__inference_lstm_513_layer_call_and_return_conditional_losses_3463932
E__inference_lstm_513_layer_call_and_return_conditional_losses_3464075
E__inference_lstm_513_layer_call_and_return_conditional_losses_3464218?
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
*__inference_lstm_514_layer_call_fn_3464229
*__inference_lstm_514_layer_call_fn_3464240
*__inference_lstm_514_layer_call_fn_3464251
*__inference_lstm_514_layer_call_fn_3464262?
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464405
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464548
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464691
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464834?
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
*__inference_lstm_515_layer_call_fn_3464845
*__inference_lstm_515_layer_call_fn_3464856
*__inference_lstm_515_layer_call_fn_3464867
*__inference_lstm_515_layer_call_fn_3464878?
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465021
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465164
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465307
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465450?
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
+__inference_dense_171_layer_call_fn_3465459?
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
F__inference_dense_171_layer_call_and_return_conditional_losses_3465469?
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
%__inference_signature_wrapper_3462694lstm_513_input"?
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
/__inference_lstm_cell_570_layer_call_fn_3465486
/__inference_lstm_cell_570_layer_call_fn_3465503?
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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3465535
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3465567?
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
/__inference_lstm_cell_571_layer_call_fn_3465584
/__inference_lstm_cell_571_layer_call_fn_3465601?
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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3465633
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3465665?
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
/__inference_lstm_cell_572_layer_call_fn_3465682
/__inference_lstm_cell_572_layer_call_fn_3465699?
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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3465731
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3465763?
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
"__inference__wrapped_model_3460434?-./012345!";?8
1?.
,?)
lstm_513_input?????????
? "5?2
0
	dense_171#? 
	dense_171??????????
F__inference_dense_171_layer_call_and_return_conditional_losses_3465469\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_171_layer_call_fn_3465459O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_513_layer_call_and_return_conditional_losses_3463789?-./O?L
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3463932?-./O?L
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3464075q-./??<
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
E__inference_lstm_513_layer_call_and_return_conditional_losses_3464218q-./??<
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
*__inference_lstm_513_layer_call_fn_3463613}-./O?L
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
*__inference_lstm_513_layer_call_fn_3463624}-./O?L
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
*__inference_lstm_513_layer_call_fn_3463635d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_513_layer_call_fn_3463646d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464405?012O?L
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464548?012O?L
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464691q012??<
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
E__inference_lstm_514_layer_call_and_return_conditional_losses_3464834q012??<
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
*__inference_lstm_514_layer_call_fn_3464229}012O?L
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
*__inference_lstm_514_layer_call_fn_3464240}012O?L
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
*__inference_lstm_514_layer_call_fn_3464251d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_514_layer_call_fn_3464262d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465021}345O?L
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465164}345O?L
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465307m345??<
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
E__inference_lstm_515_layer_call_and_return_conditional_losses_3465450m345??<
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
*__inference_lstm_515_layer_call_fn_3464845p345O?L
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
*__inference_lstm_515_layer_call_fn_3464856p345O?L
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
*__inference_lstm_515_layer_call_fn_3464867`345??<
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
*__inference_lstm_515_layer_call_fn_3464878`345??<
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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3465535?-./??}
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
J__inference_lstm_cell_570_layer_call_and_return_conditional_losses_3465567?-./??}
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
/__inference_lstm_cell_570_layer_call_fn_3465486?-./??}
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
/__inference_lstm_cell_570_layer_call_fn_3465503?-./??}
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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3465633?012??}
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
J__inference_lstm_cell_571_layer_call_and_return_conditional_losses_3465665?012??}
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
/__inference_lstm_cell_571_layer_call_fn_3465584?012??}
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
/__inference_lstm_cell_571_layer_call_fn_3465601?012??}
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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3465731?345??}
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
J__inference_lstm_cell_572_layer_call_and_return_conditional_losses_3465763?345??}
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
/__inference_lstm_cell_572_layer_call_fn_3465682?345??}
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
/__inference_lstm_cell_572_layer_call_fn_3465699?345??}
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
K__inference_sequential_171_layer_call_and_return_conditional_losses_3462629y-./012345!"C?@
9?6
,?)
lstm_513_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_171_layer_call_and_return_conditional_losses_3462659y-./012345!"C?@
9?6
,?)
lstm_513_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_171_layer_call_and_return_conditional_losses_3463175q-./012345!";?8
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
K__inference_sequential_171_layer_call_and_return_conditional_losses_3463602q-./012345!";?8
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
0__inference_sequential_171_layer_call_fn_3461983l-./012345!"C?@
9?6
,?)
lstm_513_input?????????
p 

 
? "???????????
0__inference_sequential_171_layer_call_fn_3462599l-./012345!"C?@
9?6
,?)
lstm_513_input?????????
p

 
? "???????????
0__inference_sequential_171_layer_call_fn_3462721d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_171_layer_call_fn_3462748d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3462694?-./012345!"M?J
? 
C?@
>
lstm_513_input,?)
lstm_513_input?????????"5?2
0
	dense_171#? 
	dense_171?????????