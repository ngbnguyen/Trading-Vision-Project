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
dense_230/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_230/kernel
u
$dense_230/kernel/Read/ReadVariableOpReadVariableOpdense_230/kernel*
_output_shapes

:
*
dtype0
t
dense_230/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_230/bias
m
"dense_230/bias/Read/ReadVariableOpReadVariableOpdense_230/bias*
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
lstm_690/lstm_cell_690/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_690/lstm_cell_690/kernel
?
1lstm_690/lstm_cell_690/kernel/Read/ReadVariableOpReadVariableOplstm_690/lstm_cell_690/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_690/lstm_cell_690/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_690/lstm_cell_690/recurrent_kernel
?
;lstm_690/lstm_cell_690/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_690/lstm_cell_690/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_690/lstm_cell_690/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_690/lstm_cell_690/bias
?
/lstm_690/lstm_cell_690/bias/Read/ReadVariableOpReadVariableOplstm_690/lstm_cell_690/bias*
_output_shapes	
:?*
dtype0
?
lstm_691/lstm_cell_691/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_691/lstm_cell_691/kernel
?
1lstm_691/lstm_cell_691/kernel/Read/ReadVariableOpReadVariableOplstm_691/lstm_cell_691/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_691/lstm_cell_691/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_691/lstm_cell_691/recurrent_kernel
?
;lstm_691/lstm_cell_691/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_691/lstm_cell_691/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_691/lstm_cell_691/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_691/lstm_cell_691/bias
?
/lstm_691/lstm_cell_691/bias/Read/ReadVariableOpReadVariableOplstm_691/lstm_cell_691/bias*
_output_shapes	
:?*
dtype0
?
lstm_692/lstm_cell_692/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_692/lstm_cell_692/kernel
?
1lstm_692/lstm_cell_692/kernel/Read/ReadVariableOpReadVariableOplstm_692/lstm_cell_692/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_692/lstm_cell_692/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_692/lstm_cell_692/recurrent_kernel
?
;lstm_692/lstm_cell_692/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_692/lstm_cell_692/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_692/lstm_cell_692/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_692/lstm_cell_692/bias
?
/lstm_692/lstm_cell_692/bias/Read/ReadVariableOpReadVariableOplstm_692/lstm_cell_692/bias*
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
Adam/dense_230/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_230/kernel/m
?
+Adam/dense_230/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_230/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_230/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_230/bias/m
{
)Adam/dense_230/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_230/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_690/lstm_cell_690/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_690/lstm_cell_690/kernel/m
?
8Adam/lstm_690/lstm_cell_690/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_690/lstm_cell_690/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_690/lstm_cell_690/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_690/lstm_cell_690/recurrent_kernel/m
?
BAdam/lstm_690/lstm_cell_690/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_690/lstm_cell_690/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_690/lstm_cell_690/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_690/lstm_cell_690/bias/m
?
6Adam/lstm_690/lstm_cell_690/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_690/lstm_cell_690/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_691/lstm_cell_691/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_691/lstm_cell_691/kernel/m
?
8Adam/lstm_691/lstm_cell_691/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_691/lstm_cell_691/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_691/lstm_cell_691/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_691/lstm_cell_691/recurrent_kernel/m
?
BAdam/lstm_691/lstm_cell_691/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_691/lstm_cell_691/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_691/lstm_cell_691/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_691/lstm_cell_691/bias/m
?
6Adam/lstm_691/lstm_cell_691/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_691/lstm_cell_691/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_692/lstm_cell_692/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_692/lstm_cell_692/kernel/m
?
8Adam/lstm_692/lstm_cell_692/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_692/lstm_cell_692/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_692/lstm_cell_692/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_692/lstm_cell_692/recurrent_kernel/m
?
BAdam/lstm_692/lstm_cell_692/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_692/lstm_cell_692/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_692/lstm_cell_692/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_692/lstm_cell_692/bias/m
?
6Adam/lstm_692/lstm_cell_692/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_692/lstm_cell_692/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_230/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_230/kernel/v
?
+Adam/dense_230/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_230/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_230/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_230/bias/v
{
)Adam/dense_230/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_230/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_690/lstm_cell_690/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_690/lstm_cell_690/kernel/v
?
8Adam/lstm_690/lstm_cell_690/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_690/lstm_cell_690/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_690/lstm_cell_690/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_690/lstm_cell_690/recurrent_kernel/v
?
BAdam/lstm_690/lstm_cell_690/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_690/lstm_cell_690/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_690/lstm_cell_690/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_690/lstm_cell_690/bias/v
?
6Adam/lstm_690/lstm_cell_690/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_690/lstm_cell_690/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_691/lstm_cell_691/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_691/lstm_cell_691/kernel/v
?
8Adam/lstm_691/lstm_cell_691/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_691/lstm_cell_691/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_691/lstm_cell_691/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_691/lstm_cell_691/recurrent_kernel/v
?
BAdam/lstm_691/lstm_cell_691/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_691/lstm_cell_691/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_691/lstm_cell_691/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_691/lstm_cell_691/bias/v
?
6Adam/lstm_691/lstm_cell_691/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_691/lstm_cell_691/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_692/lstm_cell_692/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_692/lstm_cell_692/kernel/v
?
8Adam/lstm_692/lstm_cell_692/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_692/lstm_cell_692/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_692/lstm_cell_692/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_692/lstm_cell_692/recurrent_kernel/v
?
BAdam/lstm_692/lstm_cell_692/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_692/lstm_cell_692/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_692/lstm_cell_692/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_692/lstm_cell_692/bias/v
?
6Adam/lstm_692/lstm_cell_692/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_692/lstm_cell_692/bias/v*
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
VARIABLE_VALUEdense_230/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_230/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_690/lstm_cell_690/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_690/lstm_cell_690/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_690/lstm_cell_690/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_691/lstm_cell_691/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_691/lstm_cell_691/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_691/lstm_cell_691/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_692/lstm_cell_692/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_692/lstm_cell_692/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_692/lstm_cell_692/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_230/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_230/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_690/lstm_cell_690/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_690/lstm_cell_690/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_690/lstm_cell_690/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_691/lstm_cell_691/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_691/lstm_cell_691/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_691/lstm_cell_691/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_692/lstm_cell_692/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_692/lstm_cell_692/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_692/lstm_cell_692/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_230/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_230/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_690/lstm_cell_690/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_690/lstm_cell_690/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_690/lstm_cell_690/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_691/lstm_cell_691/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_691/lstm_cell_691/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_691/lstm_cell_691/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_692/lstm_cell_692/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_692/lstm_cell_692/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_692/lstm_cell_692/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_690_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_690_inputlstm_690/lstm_cell_690/kernel'lstm_690/lstm_cell_690/recurrent_kernellstm_690/lstm_cell_690/biaslstm_691/lstm_cell_691/kernel'lstm_691/lstm_cell_691/recurrent_kernellstm_691/lstm_cell_691/biaslstm_692/lstm_cell_692/kernel'lstm_692/lstm_cell_692/recurrent_kernellstm_692/lstm_cell_692/biasdense_230/kerneldense_230/bias*
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
%__inference_signature_wrapper_3826864
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_230/kernel/Read/ReadVariableOp"dense_230/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_690/lstm_cell_690/kernel/Read/ReadVariableOp;lstm_690/lstm_cell_690/recurrent_kernel/Read/ReadVariableOp/lstm_690/lstm_cell_690/bias/Read/ReadVariableOp1lstm_691/lstm_cell_691/kernel/Read/ReadVariableOp;lstm_691/lstm_cell_691/recurrent_kernel/Read/ReadVariableOp/lstm_691/lstm_cell_691/bias/Read/ReadVariableOp1lstm_692/lstm_cell_692/kernel/Read/ReadVariableOp;lstm_692/lstm_cell_692/recurrent_kernel/Read/ReadVariableOp/lstm_692/lstm_cell_692/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_230/kernel/m/Read/ReadVariableOp)Adam/dense_230/bias/m/Read/ReadVariableOp8Adam/lstm_690/lstm_cell_690/kernel/m/Read/ReadVariableOpBAdam/lstm_690/lstm_cell_690/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_690/lstm_cell_690/bias/m/Read/ReadVariableOp8Adam/lstm_691/lstm_cell_691/kernel/m/Read/ReadVariableOpBAdam/lstm_691/lstm_cell_691/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_691/lstm_cell_691/bias/m/Read/ReadVariableOp8Adam/lstm_692/lstm_cell_692/kernel/m/Read/ReadVariableOpBAdam/lstm_692/lstm_cell_692/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_692/lstm_cell_692/bias/m/Read/ReadVariableOp+Adam/dense_230/kernel/v/Read/ReadVariableOp)Adam/dense_230/bias/v/Read/ReadVariableOp8Adam/lstm_690/lstm_cell_690/kernel/v/Read/ReadVariableOpBAdam/lstm_690/lstm_cell_690/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_690/lstm_cell_690/bias/v/Read/ReadVariableOp8Adam/lstm_691/lstm_cell_691/kernel/v/Read/ReadVariableOpBAdam/lstm_691/lstm_cell_691/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_691/lstm_cell_691/bias/v/Read/ReadVariableOp8Adam/lstm_692/lstm_cell_692/kernel/v/Read/ReadVariableOpBAdam/lstm_692/lstm_cell_692/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_692/lstm_cell_692/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3830076
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_230/kerneldense_230/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_690/lstm_cell_690/kernel'lstm_690/lstm_cell_690/recurrent_kernellstm_690/lstm_cell_690/biaslstm_691/lstm_cell_691/kernel'lstm_691/lstm_cell_691/recurrent_kernellstm_691/lstm_cell_691/biaslstm_692/lstm_cell_692/kernel'lstm_692/lstm_cell_692/recurrent_kernellstm_692/lstm_cell_692/biastotalcountAdam/dense_230/kernel/mAdam/dense_230/bias/m$Adam/lstm_690/lstm_cell_690/kernel/m.Adam/lstm_690/lstm_cell_690/recurrent_kernel/m"Adam/lstm_690/lstm_cell_690/bias/m$Adam/lstm_691/lstm_cell_691/kernel/m.Adam/lstm_691/lstm_cell_691/recurrent_kernel/m"Adam/lstm_691/lstm_cell_691/bias/m$Adam/lstm_692/lstm_cell_692/kernel/m.Adam/lstm_692/lstm_cell_692/recurrent_kernel/m"Adam/lstm_692/lstm_cell_692/bias/mAdam/dense_230/kernel/vAdam/dense_230/bias/v$Adam/lstm_690/lstm_cell_690/kernel/v.Adam/lstm_690/lstm_cell_690/recurrent_kernel/v"Adam/lstm_690/lstm_cell_690/bias/v$Adam/lstm_691/lstm_cell_691/kernel/v.Adam/lstm_691/lstm_cell_691/recurrent_kernel/v"Adam/lstm_691/lstm_cell_691/bias/v$Adam/lstm_692/lstm_cell_692/kernel/v.Adam/lstm_692/lstm_cell_692/recurrent_kernel/v"Adam/lstm_692/lstm_cell_692/bias/v*4
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
#__inference__traced_restore_3830206??+
?T
?
*sequential_230_lstm_691_while_body_3824375L
Hsequential_230_lstm_691_while_sequential_230_lstm_691_while_loop_counterR
Nsequential_230_lstm_691_while_sequential_230_lstm_691_while_maximum_iterations-
)sequential_230_lstm_691_while_placeholder/
+sequential_230_lstm_691_while_placeholder_1/
+sequential_230_lstm_691_while_placeholder_2/
+sequential_230_lstm_691_while_placeholder_3K
Gsequential_230_lstm_691_while_sequential_230_lstm_691_strided_slice_1_0?
?sequential_230_lstm_691_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_691_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_230_lstm_691_while_lstm_cell_631_matmul_readvariableop_resource_0:	d?a
Nsequential_230_lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource_0:	2?\
Msequential_230_lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource_0:	?*
&sequential_230_lstm_691_while_identity,
(sequential_230_lstm_691_while_identity_1,
(sequential_230_lstm_691_while_identity_2,
(sequential_230_lstm_691_while_identity_3,
(sequential_230_lstm_691_while_identity_4,
(sequential_230_lstm_691_while_identity_5I
Esequential_230_lstm_691_while_sequential_230_lstm_691_strided_slice_1?
?sequential_230_lstm_691_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_691_tensorarrayunstack_tensorlistfromtensor]
Jsequential_230_lstm_691_while_lstm_cell_631_matmul_readvariableop_resource:	d?_
Lsequential_230_lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource:	2?Z
Ksequential_230_lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource:	???Bsequential_230/lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp?Asequential_230/lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp?Csequential_230/lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp?
Osequential_230/lstm_691/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_230/lstm_691/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_230_lstm_691_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_691_tensorarrayunstack_tensorlistfromtensor_0)sequential_230_lstm_691_while_placeholderXsequential_230/lstm_691/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_230/lstm_691/while/lstm_cell_631/MatMul/ReadVariableOpReadVariableOpLsequential_230_lstm_691_while_lstm_cell_631_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_230/lstm_691/while/lstm_cell_631/MatMulMatMulHsequential_230/lstm_691/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_230/lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_230/lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOpNsequential_230_lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_230/lstm_691/while/lstm_cell_631/MatMul_1MatMul+sequential_230_lstm_691_while_placeholder_2Ksequential_230/lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_230/lstm_691/while/lstm_cell_631/addAddV2<sequential_230/lstm_691/while/lstm_cell_631/MatMul:product:0>sequential_230/lstm_691/while/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_230/lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOpMsequential_230_lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_230/lstm_691/while/lstm_cell_631/BiasAddBiasAdd3sequential_230/lstm_691/while/lstm_cell_631/add:z:0Jsequential_230/lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_230/lstm_691/while/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_230/lstm_691/while/lstm_cell_631/splitSplitDsequential_230/lstm_691/while/lstm_cell_631/split/split_dim:output:0<sequential_230/lstm_691/while/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_230/lstm_691/while/lstm_cell_631/SigmoidSigmoid:sequential_230/lstm_691/while/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_230/lstm_691/while/lstm_cell_631/Sigmoid_1Sigmoid:sequential_230/lstm_691/while/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_230/lstm_691/while/lstm_cell_631/mulMul9sequential_230/lstm_691/while/lstm_cell_631/Sigmoid_1:y:0+sequential_230_lstm_691_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_230/lstm_691/while/lstm_cell_631/ReluRelu:sequential_230/lstm_691/while/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_230/lstm_691/while/lstm_cell_631/mul_1Mul7sequential_230/lstm_691/while/lstm_cell_631/Sigmoid:y:0>sequential_230/lstm_691/while/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_230/lstm_691/while/lstm_cell_631/add_1AddV23sequential_230/lstm_691/while/lstm_cell_631/mul:z:05sequential_230/lstm_691/while/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_230/lstm_691/while/lstm_cell_631/Sigmoid_2Sigmoid:sequential_230/lstm_691/while/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_230/lstm_691/while/lstm_cell_631/Relu_1Relu5sequential_230/lstm_691/while/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_230/lstm_691/while/lstm_cell_631/mul_2Mul9sequential_230/lstm_691/while/lstm_cell_631/Sigmoid_2:y:0@sequential_230/lstm_691/while/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_230/lstm_691/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_230_lstm_691_while_placeholder_1)sequential_230_lstm_691_while_placeholder5sequential_230/lstm_691/while/lstm_cell_631/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_230/lstm_691/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_230/lstm_691/while/addAddV2)sequential_230_lstm_691_while_placeholder,sequential_230/lstm_691/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_230/lstm_691/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_230/lstm_691/while/add_1AddV2Hsequential_230_lstm_691_while_sequential_230_lstm_691_while_loop_counter.sequential_230/lstm_691/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_230/lstm_691/while/IdentityIdentity'sequential_230/lstm_691/while/add_1:z:0#^sequential_230/lstm_691/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_691/while/Identity_1IdentityNsequential_230_lstm_691_while_sequential_230_lstm_691_while_maximum_iterations#^sequential_230/lstm_691/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_691/while/Identity_2Identity%sequential_230/lstm_691/while/add:z:0#^sequential_230/lstm_691/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_691/while/Identity_3IdentityRsequential_230/lstm_691/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_230/lstm_691/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_691/while/Identity_4Identity5sequential_230/lstm_691/while/lstm_cell_631/mul_2:z:0#^sequential_230/lstm_691/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_230/lstm_691/while/Identity_5Identity5sequential_230/lstm_691/while/lstm_cell_631/add_1:z:0#^sequential_230/lstm_691/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_230/lstm_691/while/NoOpNoOpC^sequential_230/lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOpB^sequential_230/lstm_691/while/lstm_cell_631/MatMul/ReadVariableOpD^sequential_230/lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_230_lstm_691_while_identity/sequential_230/lstm_691/while/Identity:output:0"]
(sequential_230_lstm_691_while_identity_11sequential_230/lstm_691/while/Identity_1:output:0"]
(sequential_230_lstm_691_while_identity_21sequential_230/lstm_691/while/Identity_2:output:0"]
(sequential_230_lstm_691_while_identity_31sequential_230/lstm_691/while/Identity_3:output:0"]
(sequential_230_lstm_691_while_identity_41sequential_230/lstm_691/while/Identity_4:output:0"]
(sequential_230_lstm_691_while_identity_51sequential_230/lstm_691/while/Identity_5:output:0"?
Ksequential_230_lstm_691_while_lstm_cell_631_biasadd_readvariableop_resourceMsequential_230_lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource_0"?
Lsequential_230_lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resourceNsequential_230_lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource_0"?
Jsequential_230_lstm_691_while_lstm_cell_631_matmul_readvariableop_resourceLsequential_230_lstm_691_while_lstm_cell_631_matmul_readvariableop_resource_0"?
Esequential_230_lstm_691_while_sequential_230_lstm_691_strided_slice_1Gsequential_230_lstm_691_while_sequential_230_lstm_691_strided_slice_1_0"?
?sequential_230_lstm_691_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_691_tensorarrayunstack_tensorlistfromtensor?sequential_230_lstm_691_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_691_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_230/lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOpBsequential_230/lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp2?
Asequential_230/lstm_691/while/lstm_cell_631/MatMul/ReadVariableOpAsequential_230/lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp2?
Csequential_230/lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOpCsequential_230/lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3824945

inputs(
lstm_cell_630_3824863:	?(
lstm_cell_630_3824865:	d?$
lstm_cell_630_3824867:	?
identity??%lstm_cell_630/StatefulPartitionedCall?while;
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
%lstm_cell_630/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_630_3824863lstm_cell_630_3824865lstm_cell_630_3824867*
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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3824817n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_630_3824863lstm_cell_630_3824865lstm_cell_630_3824867*
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
while_body_3824876*
condR
while_cond_3824875*K
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
NoOpNoOp&^lstm_cell_630/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_630/StatefulPartitionedCall%lstm_cell_630/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*sequential_230_lstm_690_while_cond_3824235L
Hsequential_230_lstm_690_while_sequential_230_lstm_690_while_loop_counterR
Nsequential_230_lstm_690_while_sequential_230_lstm_690_while_maximum_iterations-
)sequential_230_lstm_690_while_placeholder/
+sequential_230_lstm_690_while_placeholder_1/
+sequential_230_lstm_690_while_placeholder_2/
+sequential_230_lstm_690_while_placeholder_3N
Jsequential_230_lstm_690_while_less_sequential_230_lstm_690_strided_slice_1e
asequential_230_lstm_690_while_sequential_230_lstm_690_while_cond_3824235___redundant_placeholder0e
asequential_230_lstm_690_while_sequential_230_lstm_690_while_cond_3824235___redundant_placeholder1e
asequential_230_lstm_690_while_sequential_230_lstm_690_while_cond_3824235___redundant_placeholder2e
asequential_230_lstm_690_while_sequential_230_lstm_690_while_cond_3824235___redundant_placeholder3*
&sequential_230_lstm_690_while_identity
?
"sequential_230/lstm_690/while/LessLess)sequential_230_lstm_690_while_placeholderJsequential_230_lstm_690_while_less_sequential_230_lstm_690_strided_slice_1*
T0*
_output_shapes
: {
&sequential_230/lstm_690/while/IdentityIdentity&sequential_230/lstm_690/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_230_lstm_690_while_identity/sequential_230/lstm_690/while/Identity:output:0*(
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
*__inference_lstm_691_layer_call_fn_3828421

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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3825953s
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

lstm_691_while_body_3827116.
*lstm_691_while_lstm_691_while_loop_counter4
0lstm_691_while_lstm_691_while_maximum_iterations
lstm_691_while_placeholder 
lstm_691_while_placeholder_1 
lstm_691_while_placeholder_2 
lstm_691_while_placeholder_3-
)lstm_691_while_lstm_691_strided_slice_1_0i
elstm_691_while_tensorarrayv2read_tensorlistgetitem_lstm_691_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_691_while_lstm_cell_631_matmul_readvariableop_resource_0:	d?R
?lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource_0:	2?M
>lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource_0:	?
lstm_691_while_identity
lstm_691_while_identity_1
lstm_691_while_identity_2
lstm_691_while_identity_3
lstm_691_while_identity_4
lstm_691_while_identity_5+
'lstm_691_while_lstm_691_strided_slice_1g
clstm_691_while_tensorarrayv2read_tensorlistgetitem_lstm_691_tensorarrayunstack_tensorlistfromtensorN
;lstm_691_while_lstm_cell_631_matmul_readvariableop_resource:	d?P
=lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource:	2?K
<lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource:	???3lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp?2lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp?4lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp?
@lstm_691/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_691/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_691_while_tensorarrayv2read_tensorlistgetitem_lstm_691_tensorarrayunstack_tensorlistfromtensor_0lstm_691_while_placeholderIlstm_691/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_691/while/lstm_cell_631/MatMul/ReadVariableOpReadVariableOp=lstm_691_while_lstm_cell_631_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_691/while/lstm_cell_631/MatMulMatMul9lstm_691/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp?lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_691/while/lstm_cell_631/MatMul_1MatMullstm_691_while_placeholder_2<lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_691/while/lstm_cell_631/addAddV2-lstm_691/while/lstm_cell_631/MatMul:product:0/lstm_691/while/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp>lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_691/while/lstm_cell_631/BiasAddBiasAdd$lstm_691/while/lstm_cell_631/add:z:0;lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_691/while/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_691/while/lstm_cell_631/splitSplit5lstm_691/while/lstm_cell_631/split/split_dim:output:0-lstm_691/while/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_691/while/lstm_cell_631/SigmoidSigmoid+lstm_691/while/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_691/while/lstm_cell_631/Sigmoid_1Sigmoid+lstm_691/while/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_691/while/lstm_cell_631/mulMul*lstm_691/while/lstm_cell_631/Sigmoid_1:y:0lstm_691_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_691/while/lstm_cell_631/ReluRelu+lstm_691/while/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_691/while/lstm_cell_631/mul_1Mul(lstm_691/while/lstm_cell_631/Sigmoid:y:0/lstm_691/while/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_691/while/lstm_cell_631/add_1AddV2$lstm_691/while/lstm_cell_631/mul:z:0&lstm_691/while/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_691/while/lstm_cell_631/Sigmoid_2Sigmoid+lstm_691/while/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_691/while/lstm_cell_631/Relu_1Relu&lstm_691/while/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_691/while/lstm_cell_631/mul_2Mul*lstm_691/while/lstm_cell_631/Sigmoid_2:y:01lstm_691/while/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_691/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_691_while_placeholder_1lstm_691_while_placeholder&lstm_691/while/lstm_cell_631/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_691/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_691/while/addAddV2lstm_691_while_placeholderlstm_691/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_691/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_691/while/add_1AddV2*lstm_691_while_lstm_691_while_loop_counterlstm_691/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_691/while/IdentityIdentitylstm_691/while/add_1:z:0^lstm_691/while/NoOp*
T0*
_output_shapes
: ?
lstm_691/while/Identity_1Identity0lstm_691_while_lstm_691_while_maximum_iterations^lstm_691/while/NoOp*
T0*
_output_shapes
: t
lstm_691/while/Identity_2Identitylstm_691/while/add:z:0^lstm_691/while/NoOp*
T0*
_output_shapes
: ?
lstm_691/while/Identity_3IdentityClstm_691/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_691/while/NoOp*
T0*
_output_shapes
: ?
lstm_691/while/Identity_4Identity&lstm_691/while/lstm_cell_631/mul_2:z:0^lstm_691/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_691/while/Identity_5Identity&lstm_691/while/lstm_cell_631/add_1:z:0^lstm_691/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_691/while/NoOpNoOp4^lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp3^lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp5^lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_691_while_identity lstm_691/while/Identity:output:0"?
lstm_691_while_identity_1"lstm_691/while/Identity_1:output:0"?
lstm_691_while_identity_2"lstm_691/while/Identity_2:output:0"?
lstm_691_while_identity_3"lstm_691/while/Identity_3:output:0"?
lstm_691_while_identity_4"lstm_691/while/Identity_4:output:0"?
lstm_691_while_identity_5"lstm_691/while/Identity_5:output:0"T
'lstm_691_while_lstm_691_strided_slice_1)lstm_691_while_lstm_691_strided_slice_1_0"~
<lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource>lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource_0"?
=lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource?lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource_0"|
;lstm_691_while_lstm_cell_631_matmul_readvariableop_resource=lstm_691_while_lstm_cell_631_matmul_readvariableop_resource_0"?
clstm_691_while_tensorarrayv2read_tensorlistgetitem_lstm_691_tensorarrayunstack_tensorlistfromtensorelstm_691_while_tensorarrayv2read_tensorlistgetitem_lstm_691_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp3lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp2h
2lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp2lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp2l
4lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp4lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?K
?
E__inference_lstm_690_layer_call_and_return_conditional_losses_3828102
inputs_0?
,lstm_cell_630_matmul_readvariableop_resource:	?A
.lstm_cell_630_matmul_1_readvariableop_resource:	d?<
-lstm_cell_630_biasadd_readvariableop_resource:	?
identity??$lstm_cell_630/BiasAdd/ReadVariableOp?#lstm_cell_630/MatMul/ReadVariableOp?%lstm_cell_630/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_630/MatMul/ReadVariableOpReadVariableOp,lstm_cell_630_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_630/MatMulMatMulstrided_slice_2:output:0+lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_630_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_630/MatMul_1MatMulzeros:output:0-lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_630/addAddV2lstm_cell_630/MatMul:product:0 lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_630_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_630/BiasAddBiasAddlstm_cell_630/add:z:0,lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_630/splitSplit&lstm_cell_630/split/split_dim:output:0lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_630/SigmoidSigmoidlstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_1Sigmoidlstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_630/mulMullstm_cell_630/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_630/ReluRelulstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_1Mullstm_cell_630/Sigmoid:y:0 lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_630/add_1AddV2lstm_cell_630/mul:z:0lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_2Sigmoidlstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_630/Relu_1Relulstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_2Mullstm_cell_630/Sigmoid_2:y:0"lstm_cell_630/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_630_matmul_readvariableop_resource.lstm_cell_630_matmul_1_readvariableop_resource-lstm_cell_630_biasadd_readvariableop_resource*
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
while_body_3828018*
condR
while_cond_3828017*K
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
NoOpNoOp%^lstm_cell_630/BiasAdd/ReadVariableOp$^lstm_cell_630/MatMul/ReadVariableOp&^lstm_cell_630/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_630/BiasAdd/ReadVariableOp$lstm_cell_630/BiasAdd/ReadVariableOp2J
#lstm_cell_630/MatMul/ReadVariableOp#lstm_cell_630/MatMul/ReadVariableOp2N
%lstm_cell_630/MatMul_1/ReadVariableOp%lstm_cell_630/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_3828018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_630_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_630_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_630_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_630_matmul_readvariableop_resource:	?G
4while_lstm_cell_630_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_630_biasadd_readvariableop_resource:	???*while/lstm_cell_630/BiasAdd/ReadVariableOp?)while/lstm_cell_630/MatMul/ReadVariableOp?+while/lstm_cell_630/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_630/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_630_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_630/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_630_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_630/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_630/addAddV2$while/lstm_cell_630/MatMul:product:0&while/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_630_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_630/BiasAddBiasAddwhile/lstm_cell_630/add:z:02while/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_630/splitSplit,while/lstm_cell_630/split/split_dim:output:0$while/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_630/SigmoidSigmoid"while/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_1Sigmoid"while/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mulMul!while/lstm_cell_630/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_630/ReluRelu"while/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_1Mulwhile/lstm_cell_630/Sigmoid:y:0&while/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/add_1AddV2while/lstm_cell_630/mul:z:0while/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_2Sigmoid"while/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_630/Relu_1Reluwhile/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_2Mul!while/lstm_cell_630/Sigmoid_2:y:0(while/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_630/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_630/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_630/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_630/BiasAdd/ReadVariableOp*^while/lstm_cell_630/MatMul/ReadVariableOp,^while/lstm_cell_630/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_630_biasadd_readvariableop_resource5while_lstm_cell_630_biasadd_readvariableop_resource_0"n
4while_lstm_cell_630_matmul_1_readvariableop_resource6while_lstm_cell_630_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_630_matmul_readvariableop_resource4while_lstm_cell_630_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_630/BiasAdd/ReadVariableOp*while/lstm_cell_630/BiasAdd/ReadVariableOp2V
)while/lstm_cell_630/MatMul/ReadVariableOp)while/lstm_cell_630/MatMul/ReadVariableOp2Z
+while/lstm_cell_630/MatMul_1/ReadVariableOp+while/lstm_cell_630/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3828575
inputs_0?
,lstm_cell_631_matmul_readvariableop_resource:	d?A
.lstm_cell_631_matmul_1_readvariableop_resource:	2?<
-lstm_cell_631_biasadd_readvariableop_resource:	?
identity??$lstm_cell_631/BiasAdd/ReadVariableOp?#lstm_cell_631/MatMul/ReadVariableOp?%lstm_cell_631/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_631/MatMul/ReadVariableOpReadVariableOp,lstm_cell_631_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_631/MatMulMatMulstrided_slice_2:output:0+lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_631_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_631/MatMul_1MatMulzeros:output:0-lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_631/addAddV2lstm_cell_631/MatMul:product:0 lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_631_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_631/BiasAddBiasAddlstm_cell_631/add:z:0,lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_631/splitSplit&lstm_cell_631/split/split_dim:output:0lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_631/SigmoidSigmoidlstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_1Sigmoidlstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_631/mulMullstm_cell_631/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_631/ReluRelulstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_1Mullstm_cell_631/Sigmoid:y:0 lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_631/add_1AddV2lstm_cell_631/mul:z:0lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_2Sigmoidlstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_631/Relu_1Relulstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_2Mullstm_cell_631/Sigmoid_2:y:0"lstm_cell_631/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_631_matmul_readvariableop_resource.lstm_cell_631_matmul_1_readvariableop_resource-lstm_cell_631_biasadd_readvariableop_resource*
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
while_body_3828491*
condR
while_cond_3828490*K
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
NoOpNoOp%^lstm_cell_631/BiasAdd/ReadVariableOp$^lstm_cell_631/MatMul/ReadVariableOp&^lstm_cell_631/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_631/BiasAdd/ReadVariableOp$lstm_cell_631/BiasAdd/ReadVariableOp2J
#lstm_cell_631/MatMul/ReadVariableOp#lstm_cell_631/MatMul/ReadVariableOp2N
%lstm_cell_631/MatMul_1/ReadVariableOp%lstm_cell_631/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_3829249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3829249___redundant_placeholder05
1while_while_cond_3829249___redundant_placeholder15
1while_while_cond_3829249___redundant_placeholder25
1while_while_cond_3829249___redundant_placeholder3
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
while_cond_3824875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3824875___redundant_placeholder05
1while_while_cond_3824875___redundant_placeholder15
1while_while_cond_3824875___redundant_placeholder25
1while_while_cond_3824875___redundant_placeholder3
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
*sequential_230_lstm_691_while_cond_3824374L
Hsequential_230_lstm_691_while_sequential_230_lstm_691_while_loop_counterR
Nsequential_230_lstm_691_while_sequential_230_lstm_691_while_maximum_iterations-
)sequential_230_lstm_691_while_placeholder/
+sequential_230_lstm_691_while_placeholder_1/
+sequential_230_lstm_691_while_placeholder_2/
+sequential_230_lstm_691_while_placeholder_3N
Jsequential_230_lstm_691_while_less_sequential_230_lstm_691_strided_slice_1e
asequential_230_lstm_691_while_sequential_230_lstm_691_while_cond_3824374___redundant_placeholder0e
asequential_230_lstm_691_while_sequential_230_lstm_691_while_cond_3824374___redundant_placeholder1e
asequential_230_lstm_691_while_sequential_230_lstm_691_while_cond_3824374___redundant_placeholder2e
asequential_230_lstm_691_while_sequential_230_lstm_691_while_cond_3824374___redundant_placeholder3*
&sequential_230_lstm_691_while_identity
?
"sequential_230/lstm_691/while/LessLess)sequential_230_lstm_691_while_placeholderJsequential_230_lstm_691_while_less_sequential_230_lstm_691_strided_slice_1*
T0*
_output_shapes
: {
&sequential_230/lstm_691/while/IdentityIdentity&sequential_230/lstm_691/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_230_lstm_691_while_identity/sequential_230/lstm_691/while/Identity:output:0*(
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
*sequential_230_lstm_690_while_body_3824236L
Hsequential_230_lstm_690_while_sequential_230_lstm_690_while_loop_counterR
Nsequential_230_lstm_690_while_sequential_230_lstm_690_while_maximum_iterations-
)sequential_230_lstm_690_while_placeholder/
+sequential_230_lstm_690_while_placeholder_1/
+sequential_230_lstm_690_while_placeholder_2/
+sequential_230_lstm_690_while_placeholder_3K
Gsequential_230_lstm_690_while_sequential_230_lstm_690_strided_slice_1_0?
?sequential_230_lstm_690_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_690_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_230_lstm_690_while_lstm_cell_630_matmul_readvariableop_resource_0:	?a
Nsequential_230_lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource_0:	d?\
Msequential_230_lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource_0:	?*
&sequential_230_lstm_690_while_identity,
(sequential_230_lstm_690_while_identity_1,
(sequential_230_lstm_690_while_identity_2,
(sequential_230_lstm_690_while_identity_3,
(sequential_230_lstm_690_while_identity_4,
(sequential_230_lstm_690_while_identity_5I
Esequential_230_lstm_690_while_sequential_230_lstm_690_strided_slice_1?
?sequential_230_lstm_690_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_690_tensorarrayunstack_tensorlistfromtensor]
Jsequential_230_lstm_690_while_lstm_cell_630_matmul_readvariableop_resource:	?_
Lsequential_230_lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource:	d?Z
Ksequential_230_lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource:	???Bsequential_230/lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp?Asequential_230/lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp?Csequential_230/lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp?
Osequential_230/lstm_690/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_230/lstm_690/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_230_lstm_690_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_690_tensorarrayunstack_tensorlistfromtensor_0)sequential_230_lstm_690_while_placeholderXsequential_230/lstm_690/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_230/lstm_690/while/lstm_cell_630/MatMul/ReadVariableOpReadVariableOpLsequential_230_lstm_690_while_lstm_cell_630_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_230/lstm_690/while/lstm_cell_630/MatMulMatMulHsequential_230/lstm_690/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_230/lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_230/lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOpNsequential_230_lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_230/lstm_690/while/lstm_cell_630/MatMul_1MatMul+sequential_230_lstm_690_while_placeholder_2Ksequential_230/lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_230/lstm_690/while/lstm_cell_630/addAddV2<sequential_230/lstm_690/while/lstm_cell_630/MatMul:product:0>sequential_230/lstm_690/while/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_230/lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOpMsequential_230_lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_230/lstm_690/while/lstm_cell_630/BiasAddBiasAdd3sequential_230/lstm_690/while/lstm_cell_630/add:z:0Jsequential_230/lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_230/lstm_690/while/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_230/lstm_690/while/lstm_cell_630/splitSplitDsequential_230/lstm_690/while/lstm_cell_630/split/split_dim:output:0<sequential_230/lstm_690/while/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_230/lstm_690/while/lstm_cell_630/SigmoidSigmoid:sequential_230/lstm_690/while/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_230/lstm_690/while/lstm_cell_630/Sigmoid_1Sigmoid:sequential_230/lstm_690/while/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_230/lstm_690/while/lstm_cell_630/mulMul9sequential_230/lstm_690/while/lstm_cell_630/Sigmoid_1:y:0+sequential_230_lstm_690_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_230/lstm_690/while/lstm_cell_630/ReluRelu:sequential_230/lstm_690/while/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_230/lstm_690/while/lstm_cell_630/mul_1Mul7sequential_230/lstm_690/while/lstm_cell_630/Sigmoid:y:0>sequential_230/lstm_690/while/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_230/lstm_690/while/lstm_cell_630/add_1AddV23sequential_230/lstm_690/while/lstm_cell_630/mul:z:05sequential_230/lstm_690/while/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_230/lstm_690/while/lstm_cell_630/Sigmoid_2Sigmoid:sequential_230/lstm_690/while/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_230/lstm_690/while/lstm_cell_630/Relu_1Relu5sequential_230/lstm_690/while/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_230/lstm_690/while/lstm_cell_630/mul_2Mul9sequential_230/lstm_690/while/lstm_cell_630/Sigmoid_2:y:0@sequential_230/lstm_690/while/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_230/lstm_690/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_230_lstm_690_while_placeholder_1)sequential_230_lstm_690_while_placeholder5sequential_230/lstm_690/while/lstm_cell_630/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_230/lstm_690/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_230/lstm_690/while/addAddV2)sequential_230_lstm_690_while_placeholder,sequential_230/lstm_690/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_230/lstm_690/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_230/lstm_690/while/add_1AddV2Hsequential_230_lstm_690_while_sequential_230_lstm_690_while_loop_counter.sequential_230/lstm_690/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_230/lstm_690/while/IdentityIdentity'sequential_230/lstm_690/while/add_1:z:0#^sequential_230/lstm_690/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_690/while/Identity_1IdentityNsequential_230_lstm_690_while_sequential_230_lstm_690_while_maximum_iterations#^sequential_230/lstm_690/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_690/while/Identity_2Identity%sequential_230/lstm_690/while/add:z:0#^sequential_230/lstm_690/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_690/while/Identity_3IdentityRsequential_230/lstm_690/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_230/lstm_690/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_690/while/Identity_4Identity5sequential_230/lstm_690/while/lstm_cell_630/mul_2:z:0#^sequential_230/lstm_690/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_230/lstm_690/while/Identity_5Identity5sequential_230/lstm_690/while/lstm_cell_630/add_1:z:0#^sequential_230/lstm_690/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_230/lstm_690/while/NoOpNoOpC^sequential_230/lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOpB^sequential_230/lstm_690/while/lstm_cell_630/MatMul/ReadVariableOpD^sequential_230/lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_230_lstm_690_while_identity/sequential_230/lstm_690/while/Identity:output:0"]
(sequential_230_lstm_690_while_identity_11sequential_230/lstm_690/while/Identity_1:output:0"]
(sequential_230_lstm_690_while_identity_21sequential_230/lstm_690/while/Identity_2:output:0"]
(sequential_230_lstm_690_while_identity_31sequential_230/lstm_690/while/Identity_3:output:0"]
(sequential_230_lstm_690_while_identity_41sequential_230/lstm_690/while/Identity_4:output:0"]
(sequential_230_lstm_690_while_identity_51sequential_230/lstm_690/while/Identity_5:output:0"?
Ksequential_230_lstm_690_while_lstm_cell_630_biasadd_readvariableop_resourceMsequential_230_lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource_0"?
Lsequential_230_lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resourceNsequential_230_lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource_0"?
Jsequential_230_lstm_690_while_lstm_cell_630_matmul_readvariableop_resourceLsequential_230_lstm_690_while_lstm_cell_630_matmul_readvariableop_resource_0"?
Esequential_230_lstm_690_while_sequential_230_lstm_690_strided_slice_1Gsequential_230_lstm_690_while_sequential_230_lstm_690_strided_slice_1_0"?
?sequential_230_lstm_690_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_690_tensorarrayunstack_tensorlistfromtensor?sequential_230_lstm_690_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_690_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_230/lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOpBsequential_230/lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp2?
Asequential_230/lstm_690/while/lstm_cell_630/MatMul/ReadVariableOpAsequential_230/lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp2?
Csequential_230/lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOpCsequential_230/lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3825517

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
while_cond_3826234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3826234___redundant_placeholder05
1while_while_cond_3826234___redundant_placeholder15
1while_while_cond_3826234___redundant_placeholder25
1while_while_cond_3826234___redundant_placeholder3
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3825371

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
while_cond_3828776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3828776___redundant_placeholder05
1while_while_cond_3828776___redundant_placeholder15
1while_while_cond_3828776___redundant_placeholder25
1while_while_cond_3828776___redundant_placeholder3
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
/__inference_lstm_cell_630_layer_call_fn_3829656

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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3824671o
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
while_cond_3829392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3829392___redundant_placeholder05
1while_while_cond_3829392___redundant_placeholder15
1while_while_cond_3829392___redundant_placeholder25
1while_while_cond_3829392___redundant_placeholder3
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
while_body_3825035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_631_3825059_0:	d?0
while_lstm_cell_631_3825061_0:	2?,
while_lstm_cell_631_3825063_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_631_3825059:	d?.
while_lstm_cell_631_3825061:	2?*
while_lstm_cell_631_3825063:	???+while/lstm_cell_631/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_631/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_631_3825059_0while_lstm_cell_631_3825061_0while_lstm_cell_631_3825063_0*
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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3825021?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_631/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_631/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_631/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_631/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_631_3825059while_lstm_cell_631_3825059_0"<
while_lstm_cell_631_3825061while_lstm_cell_631_3825061_0"<
while_lstm_cell_631_3825063while_lstm_cell_631_3825063_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_631/StatefulPartitionedCall+while/lstm_cell_631/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3828160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3828160___redundant_placeholder05
1while_while_cond_3828160___redundant_placeholder15
1while_while_cond_3828160___redundant_placeholder25
1while_while_cond_3828160___redundant_placeholder3
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
0__inference_sequential_230_layer_call_fn_3826891

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
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826128o
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
lstm_691_while_cond_3827115.
*lstm_691_while_lstm_691_while_loop_counter4
0lstm_691_while_lstm_691_while_maximum_iterations
lstm_691_while_placeholder 
lstm_691_while_placeholder_1 
lstm_691_while_placeholder_2 
lstm_691_while_placeholder_30
,lstm_691_while_less_lstm_691_strided_slice_1G
Clstm_691_while_lstm_691_while_cond_3827115___redundant_placeholder0G
Clstm_691_while_lstm_691_while_cond_3827115___redundant_placeholder1G
Clstm_691_while_lstm_691_while_cond_3827115___redundant_placeholder2G
Clstm_691_while_lstm_691_while_cond_3827115___redundant_placeholder3
lstm_691_while_identity
?
lstm_691/while/LessLesslstm_691_while_placeholder,lstm_691_while_less_lstm_691_strided_slice_1*
T0*
_output_shapes
: ]
lstm_691/while/IdentityIdentitylstm_691/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_691_while_identity lstm_691/while/Identity:output:0*(
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
F__inference_dense_230_layer_call_and_return_conditional_losses_3829639

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
?K
?
E__inference_lstm_691_layer_call_and_return_conditional_losses_3828718
inputs_0?
,lstm_cell_631_matmul_readvariableop_resource:	d?A
.lstm_cell_631_matmul_1_readvariableop_resource:	2?<
-lstm_cell_631_biasadd_readvariableop_resource:	?
identity??$lstm_cell_631/BiasAdd/ReadVariableOp?#lstm_cell_631/MatMul/ReadVariableOp?%lstm_cell_631/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_631/MatMul/ReadVariableOpReadVariableOp,lstm_cell_631_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_631/MatMulMatMulstrided_slice_2:output:0+lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_631_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_631/MatMul_1MatMulzeros:output:0-lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_631/addAddV2lstm_cell_631/MatMul:product:0 lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_631_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_631/BiasAddBiasAddlstm_cell_631/add:z:0,lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_631/splitSplit&lstm_cell_631/split/split_dim:output:0lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_631/SigmoidSigmoidlstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_1Sigmoidlstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_631/mulMullstm_cell_631/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_631/ReluRelulstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_1Mullstm_cell_631/Sigmoid:y:0 lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_631/add_1AddV2lstm_cell_631/mul:z:0lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_2Sigmoidlstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_631/Relu_1Relulstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_2Mullstm_cell_631/Sigmoid_2:y:0"lstm_cell_631/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_631_matmul_readvariableop_resource.lstm_cell_631_matmul_1_readvariableop_resource-lstm_cell_631_biasadd_readvariableop_resource*
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
while_body_3828634*
condR
while_cond_3828633*K
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
NoOpNoOp%^lstm_cell_631/BiasAdd/ReadVariableOp$^lstm_cell_631/MatMul/ReadVariableOp&^lstm_cell_631/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_631/BiasAdd/ReadVariableOp$lstm_cell_631/BiasAdd/ReadVariableOp2J
#lstm_cell_631/MatMul/ReadVariableOp#lstm_cell_631/MatMul/ReadVariableOp2N
%lstm_cell_631/MatMul_1/ReadVariableOp%lstm_cell_631/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3826019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_632_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_632_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_632_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_632_matmul_readvariableop_resource:2(F
4while_lstm_cell_632_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_632_biasadd_readvariableop_resource:(??*while/lstm_cell_632/BiasAdd/ReadVariableOp?)while/lstm_cell_632/MatMul/ReadVariableOp?+while/lstm_cell_632/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_632/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_632_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_632/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_632_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_632/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_632/addAddV2$while/lstm_cell_632/MatMul:product:0&while/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_632_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_632/BiasAddBiasAddwhile/lstm_cell_632/add:z:02while/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_632/splitSplit,while/lstm_cell_632/split/split_dim:output:0$while/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_632/SigmoidSigmoid"while/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_1Sigmoid"while/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mulMul!while/lstm_cell_632/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_632/ReluRelu"while/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_1Mulwhile/lstm_cell_632/Sigmoid:y:0&while/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/add_1AddV2while/lstm_cell_632/mul:z:0while/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_2Sigmoid"while/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_632/Relu_1Reluwhile/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_2Mul!while/lstm_cell_632/Sigmoid_2:y:0(while/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_632/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_632/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_632/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_632/BiasAdd/ReadVariableOp*^while/lstm_cell_632/MatMul/ReadVariableOp,^while/lstm_cell_632/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_632_biasadd_readvariableop_resource5while_lstm_cell_632_biasadd_readvariableop_resource_0"n
4while_lstm_cell_632_matmul_1_readvariableop_resource6while_lstm_cell_632_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_632_matmul_readvariableop_resource4while_lstm_cell_632_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_632/BiasAdd/ReadVariableOp*while/lstm_cell_632/BiasAdd/ReadVariableOp2V
)while/lstm_cell_632/MatMul/ReadVariableOp)while/lstm_cell_632/MatMul/ReadVariableOp2Z
+while/lstm_cell_632/MatMul_1/ReadVariableOp+while/lstm_cell_632/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3829933

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
?
?
*__inference_lstm_692_layer_call_fn_3829048

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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3826319o
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3828388

inputs?
,lstm_cell_630_matmul_readvariableop_resource:	?A
.lstm_cell_630_matmul_1_readvariableop_resource:	d?<
-lstm_cell_630_biasadd_readvariableop_resource:	?
identity??$lstm_cell_630/BiasAdd/ReadVariableOp?#lstm_cell_630/MatMul/ReadVariableOp?%lstm_cell_630/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_630/MatMul/ReadVariableOpReadVariableOp,lstm_cell_630_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_630/MatMulMatMulstrided_slice_2:output:0+lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_630_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_630/MatMul_1MatMulzeros:output:0-lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_630/addAddV2lstm_cell_630/MatMul:product:0 lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_630_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_630/BiasAddBiasAddlstm_cell_630/add:z:0,lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_630/splitSplit&lstm_cell_630/split/split_dim:output:0lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_630/SigmoidSigmoidlstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_1Sigmoidlstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_630/mulMullstm_cell_630/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_630/ReluRelulstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_1Mullstm_cell_630/Sigmoid:y:0 lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_630/add_1AddV2lstm_cell_630/mul:z:0lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_2Sigmoidlstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_630/Relu_1Relulstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_2Mullstm_cell_630/Sigmoid_2:y:0"lstm_cell_630/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_630_matmul_readvariableop_resource.lstm_cell_630_matmul_1_readvariableop_resource-lstm_cell_630_biasadd_readvariableop_resource*
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
while_body_3828304*
condR
while_cond_3828303*K
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
NoOpNoOp%^lstm_cell_630/BiasAdd/ReadVariableOp$^lstm_cell_630/MatMul/ReadVariableOp&^lstm_cell_630/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_630/BiasAdd/ReadVariableOp$lstm_cell_630/BiasAdd/ReadVariableOp2J
#lstm_cell_630/MatMul/ReadVariableOp#lstm_cell_630/MatMul/ReadVariableOp2N
%lstm_cell_630/MatMul_1/ReadVariableOp%lstm_cell_630/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3826018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3826018___redundant_placeholder05
1while_while_cond_3826018___redundant_placeholder15
1while_while_cond_3826018___redundant_placeholder25
1while_while_cond_3826018___redundant_placeholder3
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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3825167

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
?C
?

lstm_690_while_body_3827404.
*lstm_690_while_lstm_690_while_loop_counter4
0lstm_690_while_lstm_690_while_maximum_iterations
lstm_690_while_placeholder 
lstm_690_while_placeholder_1 
lstm_690_while_placeholder_2 
lstm_690_while_placeholder_3-
)lstm_690_while_lstm_690_strided_slice_1_0i
elstm_690_while_tensorarrayv2read_tensorlistgetitem_lstm_690_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_690_while_lstm_cell_630_matmul_readvariableop_resource_0:	?R
?lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource_0:	d?M
>lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource_0:	?
lstm_690_while_identity
lstm_690_while_identity_1
lstm_690_while_identity_2
lstm_690_while_identity_3
lstm_690_while_identity_4
lstm_690_while_identity_5+
'lstm_690_while_lstm_690_strided_slice_1g
clstm_690_while_tensorarrayv2read_tensorlistgetitem_lstm_690_tensorarrayunstack_tensorlistfromtensorN
;lstm_690_while_lstm_cell_630_matmul_readvariableop_resource:	?P
=lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource:	d?K
<lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource:	???3lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp?2lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp?4lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp?
@lstm_690/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_690/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_690_while_tensorarrayv2read_tensorlistgetitem_lstm_690_tensorarrayunstack_tensorlistfromtensor_0lstm_690_while_placeholderIlstm_690/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_690/while/lstm_cell_630/MatMul/ReadVariableOpReadVariableOp=lstm_690_while_lstm_cell_630_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_690/while/lstm_cell_630/MatMulMatMul9lstm_690/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp?lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_690/while/lstm_cell_630/MatMul_1MatMullstm_690_while_placeholder_2<lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_690/while/lstm_cell_630/addAddV2-lstm_690/while/lstm_cell_630/MatMul:product:0/lstm_690/while/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp>lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_690/while/lstm_cell_630/BiasAddBiasAdd$lstm_690/while/lstm_cell_630/add:z:0;lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_690/while/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_690/while/lstm_cell_630/splitSplit5lstm_690/while/lstm_cell_630/split/split_dim:output:0-lstm_690/while/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_690/while/lstm_cell_630/SigmoidSigmoid+lstm_690/while/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_690/while/lstm_cell_630/Sigmoid_1Sigmoid+lstm_690/while/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_690/while/lstm_cell_630/mulMul*lstm_690/while/lstm_cell_630/Sigmoid_1:y:0lstm_690_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_690/while/lstm_cell_630/ReluRelu+lstm_690/while/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_690/while/lstm_cell_630/mul_1Mul(lstm_690/while/lstm_cell_630/Sigmoid:y:0/lstm_690/while/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_690/while/lstm_cell_630/add_1AddV2$lstm_690/while/lstm_cell_630/mul:z:0&lstm_690/while/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_690/while/lstm_cell_630/Sigmoid_2Sigmoid+lstm_690/while/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_690/while/lstm_cell_630/Relu_1Relu&lstm_690/while/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_690/while/lstm_cell_630/mul_2Mul*lstm_690/while/lstm_cell_630/Sigmoid_2:y:01lstm_690/while/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_690/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_690_while_placeholder_1lstm_690_while_placeholder&lstm_690/while/lstm_cell_630/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_690/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_690/while/addAddV2lstm_690_while_placeholderlstm_690/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_690/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_690/while/add_1AddV2*lstm_690_while_lstm_690_while_loop_counterlstm_690/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_690/while/IdentityIdentitylstm_690/while/add_1:z:0^lstm_690/while/NoOp*
T0*
_output_shapes
: ?
lstm_690/while/Identity_1Identity0lstm_690_while_lstm_690_while_maximum_iterations^lstm_690/while/NoOp*
T0*
_output_shapes
: t
lstm_690/while/Identity_2Identitylstm_690/while/add:z:0^lstm_690/while/NoOp*
T0*
_output_shapes
: ?
lstm_690/while/Identity_3IdentityClstm_690/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_690/while/NoOp*
T0*
_output_shapes
: ?
lstm_690/while/Identity_4Identity&lstm_690/while/lstm_cell_630/mul_2:z:0^lstm_690/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_690/while/Identity_5Identity&lstm_690/while/lstm_cell_630/add_1:z:0^lstm_690/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_690/while/NoOpNoOp4^lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp3^lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp5^lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_690_while_identity lstm_690/while/Identity:output:0"?
lstm_690_while_identity_1"lstm_690/while/Identity_1:output:0"?
lstm_690_while_identity_2"lstm_690/while/Identity_2:output:0"?
lstm_690_while_identity_3"lstm_690/while/Identity_3:output:0"?
lstm_690_while_identity_4"lstm_690/while/Identity_4:output:0"?
lstm_690_while_identity_5"lstm_690/while/Identity_5:output:0"T
'lstm_690_while_lstm_690_strided_slice_1)lstm_690_while_lstm_690_strided_slice_1_0"~
<lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource>lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource_0"?
=lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource?lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource_0"|
;lstm_690_while_lstm_cell_630_matmul_readvariableop_resource=lstm_690_while_lstm_cell_630_matmul_readvariableop_resource_0"?
clstm_690_while_tensorarrayv2read_tensorlistgetitem_lstm_690_tensorarrayunstack_tensorlistfromtensorelstm_690_while_tensorarrayv2read_tensorlistgetitem_lstm_690_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp3lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp2h
2lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp2lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp2l
4lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp4lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_230_lstm_692_while_body_3824514L
Hsequential_230_lstm_692_while_sequential_230_lstm_692_while_loop_counterR
Nsequential_230_lstm_692_while_sequential_230_lstm_692_while_maximum_iterations-
)sequential_230_lstm_692_while_placeholder/
+sequential_230_lstm_692_while_placeholder_1/
+sequential_230_lstm_692_while_placeholder_2/
+sequential_230_lstm_692_while_placeholder_3K
Gsequential_230_lstm_692_while_sequential_230_lstm_692_strided_slice_1_0?
?sequential_230_lstm_692_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_692_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_230_lstm_692_while_lstm_cell_632_matmul_readvariableop_resource_0:2(`
Nsequential_230_lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource_0:
([
Msequential_230_lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource_0:(*
&sequential_230_lstm_692_while_identity,
(sequential_230_lstm_692_while_identity_1,
(sequential_230_lstm_692_while_identity_2,
(sequential_230_lstm_692_while_identity_3,
(sequential_230_lstm_692_while_identity_4,
(sequential_230_lstm_692_while_identity_5I
Esequential_230_lstm_692_while_sequential_230_lstm_692_strided_slice_1?
?sequential_230_lstm_692_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_692_tensorarrayunstack_tensorlistfromtensor\
Jsequential_230_lstm_692_while_lstm_cell_632_matmul_readvariableop_resource:2(^
Lsequential_230_lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource:
(Y
Ksequential_230_lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource:(??Bsequential_230/lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp?Asequential_230/lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp?Csequential_230/lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp?
Osequential_230/lstm_692/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_230/lstm_692/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_230_lstm_692_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_692_tensorarrayunstack_tensorlistfromtensor_0)sequential_230_lstm_692_while_placeholderXsequential_230/lstm_692/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_230/lstm_692/while/lstm_cell_632/MatMul/ReadVariableOpReadVariableOpLsequential_230_lstm_692_while_lstm_cell_632_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_230/lstm_692/while/lstm_cell_632/MatMulMatMulHsequential_230/lstm_692/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_230/lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_230/lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOpNsequential_230_lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_230/lstm_692/while/lstm_cell_632/MatMul_1MatMul+sequential_230_lstm_692_while_placeholder_2Ksequential_230/lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_230/lstm_692/while/lstm_cell_632/addAddV2<sequential_230/lstm_692/while/lstm_cell_632/MatMul:product:0>sequential_230/lstm_692/while/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_230/lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOpMsequential_230_lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_230/lstm_692/while/lstm_cell_632/BiasAddBiasAdd3sequential_230/lstm_692/while/lstm_cell_632/add:z:0Jsequential_230/lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_230/lstm_692/while/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_230/lstm_692/while/lstm_cell_632/splitSplitDsequential_230/lstm_692/while/lstm_cell_632/split/split_dim:output:0<sequential_230/lstm_692/while/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_230/lstm_692/while/lstm_cell_632/SigmoidSigmoid:sequential_230/lstm_692/while/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_230/lstm_692/while/lstm_cell_632/Sigmoid_1Sigmoid:sequential_230/lstm_692/while/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_230/lstm_692/while/lstm_cell_632/mulMul9sequential_230/lstm_692/while/lstm_cell_632/Sigmoid_1:y:0+sequential_230_lstm_692_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_230/lstm_692/while/lstm_cell_632/ReluRelu:sequential_230/lstm_692/while/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_230/lstm_692/while/lstm_cell_632/mul_1Mul7sequential_230/lstm_692/while/lstm_cell_632/Sigmoid:y:0>sequential_230/lstm_692/while/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_230/lstm_692/while/lstm_cell_632/add_1AddV23sequential_230/lstm_692/while/lstm_cell_632/mul:z:05sequential_230/lstm_692/while/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_230/lstm_692/while/lstm_cell_632/Sigmoid_2Sigmoid:sequential_230/lstm_692/while/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_230/lstm_692/while/lstm_cell_632/Relu_1Relu5sequential_230/lstm_692/while/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_230/lstm_692/while/lstm_cell_632/mul_2Mul9sequential_230/lstm_692/while/lstm_cell_632/Sigmoid_2:y:0@sequential_230/lstm_692/while/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_230/lstm_692/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_230_lstm_692_while_placeholder_1)sequential_230_lstm_692_while_placeholder5sequential_230/lstm_692/while/lstm_cell_632/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_230/lstm_692/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_230/lstm_692/while/addAddV2)sequential_230_lstm_692_while_placeholder,sequential_230/lstm_692/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_230/lstm_692/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_230/lstm_692/while/add_1AddV2Hsequential_230_lstm_692_while_sequential_230_lstm_692_while_loop_counter.sequential_230/lstm_692/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_230/lstm_692/while/IdentityIdentity'sequential_230/lstm_692/while/add_1:z:0#^sequential_230/lstm_692/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_692/while/Identity_1IdentityNsequential_230_lstm_692_while_sequential_230_lstm_692_while_maximum_iterations#^sequential_230/lstm_692/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_692/while/Identity_2Identity%sequential_230/lstm_692/while/add:z:0#^sequential_230/lstm_692/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_692/while/Identity_3IdentityRsequential_230/lstm_692/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_230/lstm_692/while/NoOp*
T0*
_output_shapes
: ?
(sequential_230/lstm_692/while/Identity_4Identity5sequential_230/lstm_692/while/lstm_cell_632/mul_2:z:0#^sequential_230/lstm_692/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_230/lstm_692/while/Identity_5Identity5sequential_230/lstm_692/while/lstm_cell_632/add_1:z:0#^sequential_230/lstm_692/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_230/lstm_692/while/NoOpNoOpC^sequential_230/lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOpB^sequential_230/lstm_692/while/lstm_cell_632/MatMul/ReadVariableOpD^sequential_230/lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_230_lstm_692_while_identity/sequential_230/lstm_692/while/Identity:output:0"]
(sequential_230_lstm_692_while_identity_11sequential_230/lstm_692/while/Identity_1:output:0"]
(sequential_230_lstm_692_while_identity_21sequential_230/lstm_692/while/Identity_2:output:0"]
(sequential_230_lstm_692_while_identity_31sequential_230/lstm_692/while/Identity_3:output:0"]
(sequential_230_lstm_692_while_identity_41sequential_230/lstm_692/while/Identity_4:output:0"]
(sequential_230_lstm_692_while_identity_51sequential_230/lstm_692/while/Identity_5:output:0"?
Ksequential_230_lstm_692_while_lstm_cell_632_biasadd_readvariableop_resourceMsequential_230_lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource_0"?
Lsequential_230_lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resourceNsequential_230_lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource_0"?
Jsequential_230_lstm_692_while_lstm_cell_632_matmul_readvariableop_resourceLsequential_230_lstm_692_while_lstm_cell_632_matmul_readvariableop_resource_0"?
Esequential_230_lstm_692_while_sequential_230_lstm_692_strided_slice_1Gsequential_230_lstm_692_while_sequential_230_lstm_692_strided_slice_1_0"?
?sequential_230_lstm_692_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_692_tensorarrayunstack_tensorlistfromtensor?sequential_230_lstm_692_while_tensorarrayv2read_tensorlistgetitem_sequential_230_lstm_692_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_230/lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOpBsequential_230/lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp2?
Asequential_230/lstm_692/while/lstm_cell_632/MatMul/ReadVariableOpAsequential_230/lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp2?
Csequential_230/lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOpCsequential_230/lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3824671

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
?J
?
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829620

inputs>
,lstm_cell_632_matmul_readvariableop_resource:2(@
.lstm_cell_632_matmul_1_readvariableop_resource:
(;
-lstm_cell_632_biasadd_readvariableop_resource:(
identity??$lstm_cell_632/BiasAdd/ReadVariableOp?#lstm_cell_632/MatMul/ReadVariableOp?%lstm_cell_632/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_632/MatMul/ReadVariableOpReadVariableOp,lstm_cell_632_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_632/MatMulMatMulstrided_slice_2:output:0+lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_632_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_632/MatMul_1MatMulzeros:output:0-lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_632/addAddV2lstm_cell_632/MatMul:product:0 lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_632_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_632/BiasAddBiasAddlstm_cell_632/add:z:0,lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_632/splitSplit&lstm_cell_632/split/split_dim:output:0lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_632/SigmoidSigmoidlstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_1Sigmoidlstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_632/mulMullstm_cell_632/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_632/ReluRelulstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_1Mullstm_cell_632/Sigmoid:y:0 lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_632/add_1AddV2lstm_cell_632/mul:z:0lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_2Sigmoidlstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_632/Relu_1Relulstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_2Mullstm_cell_632/Sigmoid_2:y:0"lstm_cell_632/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_632_matmul_readvariableop_resource.lstm_cell_632_matmul_1_readvariableop_resource-lstm_cell_632_biasadd_readvariableop_resource*
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
while_body_3829536*
condR
while_cond_3829535*K
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
NoOpNoOp%^lstm_cell_632/BiasAdd/ReadVariableOp$^lstm_cell_632/MatMul/ReadVariableOp&^lstm_cell_632/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_632/BiasAdd/ReadVariableOp$lstm_cell_632/BiasAdd/ReadVariableOp2J
#lstm_cell_632/MatMul/ReadVariableOp#lstm_cell_632/MatMul/ReadVariableOp2N
%lstm_cell_632/MatMul_1/ReadVariableOp%lstm_cell_632/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_230_layer_call_fn_3826769
lstm_690_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_690_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826717o
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
_user_specified_namelstm_690_input
?
?
*__inference_lstm_690_layer_call_fn_3827783
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3824754|
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
?
*__inference_lstm_690_layer_call_fn_3827794
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3824945|
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
?
*__inference_lstm_691_layer_call_fn_3828410
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3825295|
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
*__inference_lstm_690_layer_call_fn_3827805

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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3825803s
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
while_cond_3829535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3829535___redundant_placeholder05
1while_while_cond_3829535___redundant_placeholder15
1while_while_cond_3829535___redundant_placeholder25
1while_while_cond_3829535___redundant_placeholder3
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
while_cond_3827874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3827874___redundant_placeholder05
1while_while_cond_3827874___redundant_placeholder15
1while_while_cond_3827874___redundant_placeholder25
1while_while_cond_3827874___redundant_placeholder3
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
while_body_3825576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_632_3825600_0:2(/
while_lstm_cell_632_3825602_0:
(+
while_lstm_cell_632_3825604_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_632_3825600:2(-
while_lstm_cell_632_3825602:
()
while_lstm_cell_632_3825604:(??+while/lstm_cell_632/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_632/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_632_3825600_0while_lstm_cell_632_3825602_0while_lstm_cell_632_3825604_0*
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3825517?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_632/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_632/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_632/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_632/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_632_3825600while_lstm_cell_632_3825600_0"<
while_lstm_cell_632_3825602while_lstm_cell_632_3825602_0"<
while_lstm_cell_632_3825604while_lstm_cell_632_3825604_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_632/StatefulPartitionedCall+while/lstm_cell_632/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_630_layer_call_fn_3829673

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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3824817o
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
while_cond_3828919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3828919___redundant_placeholder05
1while_while_cond_3828919___redundant_placeholder15
1while_while_cond_3828919___redundant_placeholder25
1while_while_cond_3828919___redundant_placeholder3
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

lstm_691_while_body_3827543.
*lstm_691_while_lstm_691_while_loop_counter4
0lstm_691_while_lstm_691_while_maximum_iterations
lstm_691_while_placeholder 
lstm_691_while_placeholder_1 
lstm_691_while_placeholder_2 
lstm_691_while_placeholder_3-
)lstm_691_while_lstm_691_strided_slice_1_0i
elstm_691_while_tensorarrayv2read_tensorlistgetitem_lstm_691_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_691_while_lstm_cell_631_matmul_readvariableop_resource_0:	d?R
?lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource_0:	2?M
>lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource_0:	?
lstm_691_while_identity
lstm_691_while_identity_1
lstm_691_while_identity_2
lstm_691_while_identity_3
lstm_691_while_identity_4
lstm_691_while_identity_5+
'lstm_691_while_lstm_691_strided_slice_1g
clstm_691_while_tensorarrayv2read_tensorlistgetitem_lstm_691_tensorarrayunstack_tensorlistfromtensorN
;lstm_691_while_lstm_cell_631_matmul_readvariableop_resource:	d?P
=lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource:	2?K
<lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource:	???3lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp?2lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp?4lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp?
@lstm_691/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_691/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_691_while_tensorarrayv2read_tensorlistgetitem_lstm_691_tensorarrayunstack_tensorlistfromtensor_0lstm_691_while_placeholderIlstm_691/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_691/while/lstm_cell_631/MatMul/ReadVariableOpReadVariableOp=lstm_691_while_lstm_cell_631_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_691/while/lstm_cell_631/MatMulMatMul9lstm_691/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp?lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_691/while/lstm_cell_631/MatMul_1MatMullstm_691_while_placeholder_2<lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_691/while/lstm_cell_631/addAddV2-lstm_691/while/lstm_cell_631/MatMul:product:0/lstm_691/while/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp>lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_691/while/lstm_cell_631/BiasAddBiasAdd$lstm_691/while/lstm_cell_631/add:z:0;lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_691/while/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_691/while/lstm_cell_631/splitSplit5lstm_691/while/lstm_cell_631/split/split_dim:output:0-lstm_691/while/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_691/while/lstm_cell_631/SigmoidSigmoid+lstm_691/while/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_691/while/lstm_cell_631/Sigmoid_1Sigmoid+lstm_691/while/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_691/while/lstm_cell_631/mulMul*lstm_691/while/lstm_cell_631/Sigmoid_1:y:0lstm_691_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_691/while/lstm_cell_631/ReluRelu+lstm_691/while/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_691/while/lstm_cell_631/mul_1Mul(lstm_691/while/lstm_cell_631/Sigmoid:y:0/lstm_691/while/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_691/while/lstm_cell_631/add_1AddV2$lstm_691/while/lstm_cell_631/mul:z:0&lstm_691/while/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_691/while/lstm_cell_631/Sigmoid_2Sigmoid+lstm_691/while/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_691/while/lstm_cell_631/Relu_1Relu&lstm_691/while/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_691/while/lstm_cell_631/mul_2Mul*lstm_691/while/lstm_cell_631/Sigmoid_2:y:01lstm_691/while/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_691/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_691_while_placeholder_1lstm_691_while_placeholder&lstm_691/while/lstm_cell_631/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_691/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_691/while/addAddV2lstm_691_while_placeholderlstm_691/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_691/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_691/while/add_1AddV2*lstm_691_while_lstm_691_while_loop_counterlstm_691/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_691/while/IdentityIdentitylstm_691/while/add_1:z:0^lstm_691/while/NoOp*
T0*
_output_shapes
: ?
lstm_691/while/Identity_1Identity0lstm_691_while_lstm_691_while_maximum_iterations^lstm_691/while/NoOp*
T0*
_output_shapes
: t
lstm_691/while/Identity_2Identitylstm_691/while/add:z:0^lstm_691/while/NoOp*
T0*
_output_shapes
: ?
lstm_691/while/Identity_3IdentityClstm_691/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_691/while/NoOp*
T0*
_output_shapes
: ?
lstm_691/while/Identity_4Identity&lstm_691/while/lstm_cell_631/mul_2:z:0^lstm_691/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_691/while/Identity_5Identity&lstm_691/while/lstm_cell_631/add_1:z:0^lstm_691/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_691/while/NoOpNoOp4^lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp3^lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp5^lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_691_while_identity lstm_691/while/Identity:output:0"?
lstm_691_while_identity_1"lstm_691/while/Identity_1:output:0"?
lstm_691_while_identity_2"lstm_691/while/Identity_2:output:0"?
lstm_691_while_identity_3"lstm_691/while/Identity_3:output:0"?
lstm_691_while_identity_4"lstm_691/while/Identity_4:output:0"?
lstm_691_while_identity_5"lstm_691/while/Identity_5:output:0"T
'lstm_691_while_lstm_691_strided_slice_1)lstm_691_while_lstm_691_strided_slice_1_0"~
<lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource>lstm_691_while_lstm_cell_631_biasadd_readvariableop_resource_0"?
=lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource?lstm_691_while_lstm_cell_631_matmul_1_readvariableop_resource_0"|
;lstm_691_while_lstm_cell_631_matmul_readvariableop_resource=lstm_691_while_lstm_cell_631_matmul_readvariableop_resource_0"?
clstm_691_while_tensorarrayv2read_tensorlistgetitem_lstm_691_tensorarrayunstack_tensorlistfromtensorelstm_691_while_tensorarrayv2read_tensorlistgetitem_lstm_691_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp3lstm_691/while/lstm_cell_631/BiasAdd/ReadVariableOp2h
2lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp2lstm_691/while/lstm_cell_631/MatMul/ReadVariableOp2l
4lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp4lstm_691/while/lstm_cell_631/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?K
?
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829334
inputs_0>
,lstm_cell_632_matmul_readvariableop_resource:2(@
.lstm_cell_632_matmul_1_readvariableop_resource:
(;
-lstm_cell_632_biasadd_readvariableop_resource:(
identity??$lstm_cell_632/BiasAdd/ReadVariableOp?#lstm_cell_632/MatMul/ReadVariableOp?%lstm_cell_632/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_632/MatMul/ReadVariableOpReadVariableOp,lstm_cell_632_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_632/MatMulMatMulstrided_slice_2:output:0+lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_632_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_632/MatMul_1MatMulzeros:output:0-lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_632/addAddV2lstm_cell_632/MatMul:product:0 lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_632_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_632/BiasAddBiasAddlstm_cell_632/add:z:0,lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_632/splitSplit&lstm_cell_632/split/split_dim:output:0lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_632/SigmoidSigmoidlstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_1Sigmoidlstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_632/mulMullstm_cell_632/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_632/ReluRelulstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_1Mullstm_cell_632/Sigmoid:y:0 lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_632/add_1AddV2lstm_cell_632/mul:z:0lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_2Sigmoidlstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_632/Relu_1Relulstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_2Mullstm_cell_632/Sigmoid_2:y:0"lstm_cell_632/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_632_matmul_readvariableop_resource.lstm_cell_632_matmul_1_readvariableop_resource-lstm_cell_632_biasadd_readvariableop_resource*
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
while_body_3829250*
condR
while_cond_3829249*K
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
NoOpNoOp%^lstm_cell_632/BiasAdd/ReadVariableOp$^lstm_cell_632/MatMul/ReadVariableOp&^lstm_cell_632/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_632/BiasAdd/ReadVariableOp$lstm_cell_632/BiasAdd/ReadVariableOp2J
#lstm_cell_632/MatMul/ReadVariableOp#lstm_cell_632/MatMul/ReadVariableOp2N
%lstm_cell_632/MatMul_1/ReadVariableOp%lstm_cell_632/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_3825225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3825225___redundant_placeholder05
1while_while_cond_3825225___redundant_placeholder15
1while_while_cond_3825225___redundant_placeholder25
1while_while_cond_3825225___redundant_placeholder3
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829191
inputs_0>
,lstm_cell_632_matmul_readvariableop_resource:2(@
.lstm_cell_632_matmul_1_readvariableop_resource:
(;
-lstm_cell_632_biasadd_readvariableop_resource:(
identity??$lstm_cell_632/BiasAdd/ReadVariableOp?#lstm_cell_632/MatMul/ReadVariableOp?%lstm_cell_632/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_632/MatMul/ReadVariableOpReadVariableOp,lstm_cell_632_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_632/MatMulMatMulstrided_slice_2:output:0+lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_632_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_632/MatMul_1MatMulzeros:output:0-lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_632/addAddV2lstm_cell_632/MatMul:product:0 lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_632_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_632/BiasAddBiasAddlstm_cell_632/add:z:0,lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_632/splitSplit&lstm_cell_632/split/split_dim:output:0lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_632/SigmoidSigmoidlstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_1Sigmoidlstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_632/mulMullstm_cell_632/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_632/ReluRelulstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_1Mullstm_cell_632/Sigmoid:y:0 lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_632/add_1AddV2lstm_cell_632/mul:z:0lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_2Sigmoidlstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_632/Relu_1Relulstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_2Mullstm_cell_632/Sigmoid_2:y:0"lstm_cell_632/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_632_matmul_readvariableop_resource.lstm_cell_632_matmul_1_readvariableop_resource-lstm_cell_632_biasadd_readvariableop_resource*
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
while_body_3829107*
condR
while_cond_3829106*K
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
NoOpNoOp%^lstm_cell_632/BiasAdd/ReadVariableOp$^lstm_cell_632/MatMul/ReadVariableOp&^lstm_cell_632/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_632/BiasAdd/ReadVariableOp$lstm_cell_632/BiasAdd/ReadVariableOp2J
#lstm_cell_632/MatMul/ReadVariableOp#lstm_cell_632/MatMul/ReadVariableOp2N
%lstm_cell_632/MatMul_1/ReadVariableOp%lstm_cell_632/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_3828304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_630_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_630_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_630_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_630_matmul_readvariableop_resource:	?G
4while_lstm_cell_630_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_630_biasadd_readvariableop_resource:	???*while/lstm_cell_630/BiasAdd/ReadVariableOp?)while/lstm_cell_630/MatMul/ReadVariableOp?+while/lstm_cell_630/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_630/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_630_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_630/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_630_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_630/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_630/addAddV2$while/lstm_cell_630/MatMul:product:0&while/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_630_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_630/BiasAddBiasAddwhile/lstm_cell_630/add:z:02while/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_630/splitSplit,while/lstm_cell_630/split/split_dim:output:0$while/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_630/SigmoidSigmoid"while/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_1Sigmoid"while/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mulMul!while/lstm_cell_630/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_630/ReluRelu"while/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_1Mulwhile/lstm_cell_630/Sigmoid:y:0&while/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/add_1AddV2while/lstm_cell_630/mul:z:0while/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_2Sigmoid"while/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_630/Relu_1Reluwhile/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_2Mul!while/lstm_cell_630/Sigmoid_2:y:0(while/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_630/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_630/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_630/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_630/BiasAdd/ReadVariableOp*^while/lstm_cell_630/MatMul/ReadVariableOp,^while/lstm_cell_630/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_630_biasadd_readvariableop_resource5while_lstm_cell_630_biasadd_readvariableop_resource_0"n
4while_lstm_cell_630_matmul_1_readvariableop_resource6while_lstm_cell_630_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_630_matmul_readvariableop_resource4while_lstm_cell_630_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_630/BiasAdd/ReadVariableOp*while/lstm_cell_630/BiasAdd/ReadVariableOp2V
)while/lstm_cell_630/MatMul/ReadVariableOp)while/lstm_cell_630/MatMul/ReadVariableOp2Z
+while/lstm_cell_630/MatMul_1/ReadVariableOp+while/lstm_cell_630/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3828491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_631_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_631_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_631_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_631_matmul_readvariableop_resource:	d?G
4while_lstm_cell_631_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_631_biasadd_readvariableop_resource:	???*while/lstm_cell_631/BiasAdd/ReadVariableOp?)while/lstm_cell_631/MatMul/ReadVariableOp?+while/lstm_cell_631/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_631/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_631_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_631/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_631_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_631/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_631/addAddV2$while/lstm_cell_631/MatMul:product:0&while/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_631_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_631/BiasAddBiasAddwhile/lstm_cell_631/add:z:02while/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_631/splitSplit,while/lstm_cell_631/split/split_dim:output:0$while/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_631/SigmoidSigmoid"while/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_1Sigmoid"while/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mulMul!while/lstm_cell_631/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_631/ReluRelu"while/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_1Mulwhile/lstm_cell_631/Sigmoid:y:0&while/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/add_1AddV2while/lstm_cell_631/mul:z:0while/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_2Sigmoid"while/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_631/Relu_1Reluwhile/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_2Mul!while/lstm_cell_631/Sigmoid_2:y:0(while/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_631/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_631/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_631/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_631/BiasAdd/ReadVariableOp*^while/lstm_cell_631/MatMul/ReadVariableOp,^while/lstm_cell_631/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_631_biasadd_readvariableop_resource5while_lstm_cell_631_biasadd_readvariableop_resource_0"n
4while_lstm_cell_631_matmul_1_readvariableop_resource6while_lstm_cell_631_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_631_matmul_readvariableop_resource4while_lstm_cell_631_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_631/BiasAdd/ReadVariableOp*while/lstm_cell_631/BiasAdd/ReadVariableOp2V
)while/lstm_cell_631/MatMul/ReadVariableOp)while/lstm_cell_631/MatMul/ReadVariableOp2Z
+while/lstm_cell_631/MatMul_1/ReadVariableOp+while/lstm_cell_631/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_690_layer_call_fn_3827816

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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3826649s
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
?J
?
E__inference_lstm_690_layer_call_and_return_conditional_losses_3828245

inputs?
,lstm_cell_630_matmul_readvariableop_resource:	?A
.lstm_cell_630_matmul_1_readvariableop_resource:	d?<
-lstm_cell_630_biasadd_readvariableop_resource:	?
identity??$lstm_cell_630/BiasAdd/ReadVariableOp?#lstm_cell_630/MatMul/ReadVariableOp?%lstm_cell_630/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_630/MatMul/ReadVariableOpReadVariableOp,lstm_cell_630_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_630/MatMulMatMulstrided_slice_2:output:0+lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_630_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_630/MatMul_1MatMulzeros:output:0-lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_630/addAddV2lstm_cell_630/MatMul:product:0 lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_630_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_630/BiasAddBiasAddlstm_cell_630/add:z:0,lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_630/splitSplit&lstm_cell_630/split/split_dim:output:0lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_630/SigmoidSigmoidlstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_1Sigmoidlstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_630/mulMullstm_cell_630/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_630/ReluRelulstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_1Mullstm_cell_630/Sigmoid:y:0 lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_630/add_1AddV2lstm_cell_630/mul:z:0lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_2Sigmoidlstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_630/Relu_1Relulstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_2Mullstm_cell_630/Sigmoid_2:y:0"lstm_cell_630/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_630_matmul_readvariableop_resource.lstm_cell_630_matmul_1_readvariableop_resource-lstm_cell_630_biasadd_readvariableop_resource*
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
while_body_3828161*
condR
while_cond_3828160*K
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
NoOpNoOp%^lstm_cell_630/BiasAdd/ReadVariableOp$^lstm_cell_630/MatMul/ReadVariableOp&^lstm_cell_630/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_630/BiasAdd/ReadVariableOp$lstm_cell_630/BiasAdd/ReadVariableOp2J
#lstm_cell_630/MatMul/ReadVariableOp#lstm_cell_630/MatMul/ReadVariableOp2N
%lstm_cell_630/MatMul_1/ReadVariableOp%lstm_cell_630/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_690_while_cond_3826976.
*lstm_690_while_lstm_690_while_loop_counter4
0lstm_690_while_lstm_690_while_maximum_iterations
lstm_690_while_placeholder 
lstm_690_while_placeholder_1 
lstm_690_while_placeholder_2 
lstm_690_while_placeholder_30
,lstm_690_while_less_lstm_690_strided_slice_1G
Clstm_690_while_lstm_690_while_cond_3826976___redundant_placeholder0G
Clstm_690_while_lstm_690_while_cond_3826976___redundant_placeholder1G
Clstm_690_while_lstm_690_while_cond_3826976___redundant_placeholder2G
Clstm_690_while_lstm_690_while_cond_3826976___redundant_placeholder3
lstm_690_while_identity
?
lstm_690/while/LessLesslstm_690_while_placeholder,lstm_690_while_less_lstm_690_strided_slice_1*
T0*
_output_shapes
: ]
lstm_690/while/IdentityIdentitylstm_690/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_690_while_identity lstm_690/while/Identity:output:0*(
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
while_cond_3828633
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3828633___redundant_placeholder05
1while_while_cond_3828633___redundant_placeholder15
1while_while_cond_3828633___redundant_placeholder25
1while_while_cond_3828633___redundant_placeholder3
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
while_body_3825385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_632_3825409_0:2(/
while_lstm_cell_632_3825411_0:
(+
while_lstm_cell_632_3825413_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_632_3825409:2(-
while_lstm_cell_632_3825411:
()
while_lstm_cell_632_3825413:(??+while/lstm_cell_632/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_632/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_632_3825409_0while_lstm_cell_632_3825411_0while_lstm_cell_632_3825413_0*
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3825371?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_632/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_632/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_632/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_632/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_632_3825409while_lstm_cell_632_3825409_0"<
while_lstm_cell_632_3825411while_lstm_cell_632_3825411_0"<
while_lstm_cell_632_3825413while_lstm_cell_632_3825413_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_632/StatefulPartitionedCall+while/lstm_cell_632/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_3824604
lstm_690_inputW
Dsequential_230_lstm_690_lstm_cell_630_matmul_readvariableop_resource:	?Y
Fsequential_230_lstm_690_lstm_cell_630_matmul_1_readvariableop_resource:	d?T
Esequential_230_lstm_690_lstm_cell_630_biasadd_readvariableop_resource:	?W
Dsequential_230_lstm_691_lstm_cell_631_matmul_readvariableop_resource:	d?Y
Fsequential_230_lstm_691_lstm_cell_631_matmul_1_readvariableop_resource:	2?T
Esequential_230_lstm_691_lstm_cell_631_biasadd_readvariableop_resource:	?V
Dsequential_230_lstm_692_lstm_cell_632_matmul_readvariableop_resource:2(X
Fsequential_230_lstm_692_lstm_cell_632_matmul_1_readvariableop_resource:
(S
Esequential_230_lstm_692_lstm_cell_632_biasadd_readvariableop_resource:(I
7sequential_230_dense_230_matmul_readvariableop_resource:
F
8sequential_230_dense_230_biasadd_readvariableop_resource:
identity??/sequential_230/dense_230/BiasAdd/ReadVariableOp?.sequential_230/dense_230/MatMul/ReadVariableOp?<sequential_230/lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp?;sequential_230/lstm_690/lstm_cell_630/MatMul/ReadVariableOp?=sequential_230/lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp?sequential_230/lstm_690/while?<sequential_230/lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp?;sequential_230/lstm_691/lstm_cell_631/MatMul/ReadVariableOp?=sequential_230/lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp?sequential_230/lstm_691/while?<sequential_230/lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp?;sequential_230/lstm_692/lstm_cell_632/MatMul/ReadVariableOp?=sequential_230/lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp?sequential_230/lstm_692/while[
sequential_230/lstm_690/ShapeShapelstm_690_input*
T0*
_output_shapes
:u
+sequential_230/lstm_690/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_230/lstm_690/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_230/lstm_690/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_230/lstm_690/strided_sliceStridedSlice&sequential_230/lstm_690/Shape:output:04sequential_230/lstm_690/strided_slice/stack:output:06sequential_230/lstm_690/strided_slice/stack_1:output:06sequential_230/lstm_690/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_230/lstm_690/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_230/lstm_690/zeros/packedPack.sequential_230/lstm_690/strided_slice:output:0/sequential_230/lstm_690/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_230/lstm_690/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_230/lstm_690/zerosFill-sequential_230/lstm_690/zeros/packed:output:0,sequential_230/lstm_690/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_230/lstm_690/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_230/lstm_690/zeros_1/packedPack.sequential_230/lstm_690/strided_slice:output:01sequential_230/lstm_690/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_230/lstm_690/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_230/lstm_690/zeros_1Fill/sequential_230/lstm_690/zeros_1/packed:output:0.sequential_230/lstm_690/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_230/lstm_690/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_230/lstm_690/transpose	Transposelstm_690_input/sequential_230/lstm_690/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_230/lstm_690/Shape_1Shape%sequential_230/lstm_690/transpose:y:0*
T0*
_output_shapes
:w
-sequential_230/lstm_690/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_230/lstm_690/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_230/lstm_690/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_230/lstm_690/strided_slice_1StridedSlice(sequential_230/lstm_690/Shape_1:output:06sequential_230/lstm_690/strided_slice_1/stack:output:08sequential_230/lstm_690/strided_slice_1/stack_1:output:08sequential_230/lstm_690/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_230/lstm_690/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_230/lstm_690/TensorArrayV2TensorListReserve<sequential_230/lstm_690/TensorArrayV2/element_shape:output:00sequential_230/lstm_690/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_230/lstm_690/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_230/lstm_690/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_230/lstm_690/transpose:y:0Vsequential_230/lstm_690/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_230/lstm_690/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_230/lstm_690/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_230/lstm_690/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_230/lstm_690/strided_slice_2StridedSlice%sequential_230/lstm_690/transpose:y:06sequential_230/lstm_690/strided_slice_2/stack:output:08sequential_230/lstm_690/strided_slice_2/stack_1:output:08sequential_230/lstm_690/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_230/lstm_690/lstm_cell_630/MatMul/ReadVariableOpReadVariableOpDsequential_230_lstm_690_lstm_cell_630_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_230/lstm_690/lstm_cell_630/MatMulMatMul0sequential_230/lstm_690/strided_slice_2:output:0Csequential_230/lstm_690/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_230/lstm_690/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOpFsequential_230_lstm_690_lstm_cell_630_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_230/lstm_690/lstm_cell_630/MatMul_1MatMul&sequential_230/lstm_690/zeros:output:0Esequential_230/lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_230/lstm_690/lstm_cell_630/addAddV26sequential_230/lstm_690/lstm_cell_630/MatMul:product:08sequential_230/lstm_690/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_230/lstm_690/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOpEsequential_230_lstm_690_lstm_cell_630_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_230/lstm_690/lstm_cell_630/BiasAddBiasAdd-sequential_230/lstm_690/lstm_cell_630/add:z:0Dsequential_230/lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_230/lstm_690/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_230/lstm_690/lstm_cell_630/splitSplit>sequential_230/lstm_690/lstm_cell_630/split/split_dim:output:06sequential_230/lstm_690/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_230/lstm_690/lstm_cell_630/SigmoidSigmoid4sequential_230/lstm_690/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_230/lstm_690/lstm_cell_630/Sigmoid_1Sigmoid4sequential_230/lstm_690/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_230/lstm_690/lstm_cell_630/mulMul3sequential_230/lstm_690/lstm_cell_630/Sigmoid_1:y:0(sequential_230/lstm_690/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_230/lstm_690/lstm_cell_630/ReluRelu4sequential_230/lstm_690/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_230/lstm_690/lstm_cell_630/mul_1Mul1sequential_230/lstm_690/lstm_cell_630/Sigmoid:y:08sequential_230/lstm_690/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_230/lstm_690/lstm_cell_630/add_1AddV2-sequential_230/lstm_690/lstm_cell_630/mul:z:0/sequential_230/lstm_690/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_230/lstm_690/lstm_cell_630/Sigmoid_2Sigmoid4sequential_230/lstm_690/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_230/lstm_690/lstm_cell_630/Relu_1Relu/sequential_230/lstm_690/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_230/lstm_690/lstm_cell_630/mul_2Mul3sequential_230/lstm_690/lstm_cell_630/Sigmoid_2:y:0:sequential_230/lstm_690/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_230/lstm_690/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_230/lstm_690/TensorArrayV2_1TensorListReserve>sequential_230/lstm_690/TensorArrayV2_1/element_shape:output:00sequential_230/lstm_690/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_230/lstm_690/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_230/lstm_690/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_230/lstm_690/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_230/lstm_690/whileWhile3sequential_230/lstm_690/while/loop_counter:output:09sequential_230/lstm_690/while/maximum_iterations:output:0%sequential_230/lstm_690/time:output:00sequential_230/lstm_690/TensorArrayV2_1:handle:0&sequential_230/lstm_690/zeros:output:0(sequential_230/lstm_690/zeros_1:output:00sequential_230/lstm_690/strided_slice_1:output:0Osequential_230/lstm_690/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_230_lstm_690_lstm_cell_630_matmul_readvariableop_resourceFsequential_230_lstm_690_lstm_cell_630_matmul_1_readvariableop_resourceEsequential_230_lstm_690_lstm_cell_630_biasadd_readvariableop_resource*
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
*sequential_230_lstm_690_while_body_3824236*6
cond.R,
*sequential_230_lstm_690_while_cond_3824235*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_230/lstm_690/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_230/lstm_690/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_230/lstm_690/while:output:3Qsequential_230/lstm_690/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_230/lstm_690/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_230/lstm_690/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_230/lstm_690/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_230/lstm_690/strided_slice_3StridedSliceCsequential_230/lstm_690/TensorArrayV2Stack/TensorListStack:tensor:06sequential_230/lstm_690/strided_slice_3/stack:output:08sequential_230/lstm_690/strided_slice_3/stack_1:output:08sequential_230/lstm_690/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_230/lstm_690/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_230/lstm_690/transpose_1	TransposeCsequential_230/lstm_690/TensorArrayV2Stack/TensorListStack:tensor:01sequential_230/lstm_690/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_230/lstm_690/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_230/lstm_691/ShapeShape'sequential_230/lstm_690/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_230/lstm_691/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_230/lstm_691/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_230/lstm_691/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_230/lstm_691/strided_sliceStridedSlice&sequential_230/lstm_691/Shape:output:04sequential_230/lstm_691/strided_slice/stack:output:06sequential_230/lstm_691/strided_slice/stack_1:output:06sequential_230/lstm_691/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_230/lstm_691/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_230/lstm_691/zeros/packedPack.sequential_230/lstm_691/strided_slice:output:0/sequential_230/lstm_691/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_230/lstm_691/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_230/lstm_691/zerosFill-sequential_230/lstm_691/zeros/packed:output:0,sequential_230/lstm_691/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_230/lstm_691/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_230/lstm_691/zeros_1/packedPack.sequential_230/lstm_691/strided_slice:output:01sequential_230/lstm_691/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_230/lstm_691/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_230/lstm_691/zeros_1Fill/sequential_230/lstm_691/zeros_1/packed:output:0.sequential_230/lstm_691/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_230/lstm_691/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_230/lstm_691/transpose	Transpose'sequential_230/lstm_690/transpose_1:y:0/sequential_230/lstm_691/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_230/lstm_691/Shape_1Shape%sequential_230/lstm_691/transpose:y:0*
T0*
_output_shapes
:w
-sequential_230/lstm_691/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_230/lstm_691/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_230/lstm_691/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_230/lstm_691/strided_slice_1StridedSlice(sequential_230/lstm_691/Shape_1:output:06sequential_230/lstm_691/strided_slice_1/stack:output:08sequential_230/lstm_691/strided_slice_1/stack_1:output:08sequential_230/lstm_691/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_230/lstm_691/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_230/lstm_691/TensorArrayV2TensorListReserve<sequential_230/lstm_691/TensorArrayV2/element_shape:output:00sequential_230/lstm_691/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_230/lstm_691/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_230/lstm_691/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_230/lstm_691/transpose:y:0Vsequential_230/lstm_691/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_230/lstm_691/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_230/lstm_691/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_230/lstm_691/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_230/lstm_691/strided_slice_2StridedSlice%sequential_230/lstm_691/transpose:y:06sequential_230/lstm_691/strided_slice_2/stack:output:08sequential_230/lstm_691/strided_slice_2/stack_1:output:08sequential_230/lstm_691/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_230/lstm_691/lstm_cell_631/MatMul/ReadVariableOpReadVariableOpDsequential_230_lstm_691_lstm_cell_631_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_230/lstm_691/lstm_cell_631/MatMulMatMul0sequential_230/lstm_691/strided_slice_2:output:0Csequential_230/lstm_691/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_230/lstm_691/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOpFsequential_230_lstm_691_lstm_cell_631_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_230/lstm_691/lstm_cell_631/MatMul_1MatMul&sequential_230/lstm_691/zeros:output:0Esequential_230/lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_230/lstm_691/lstm_cell_631/addAddV26sequential_230/lstm_691/lstm_cell_631/MatMul:product:08sequential_230/lstm_691/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_230/lstm_691/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOpEsequential_230_lstm_691_lstm_cell_631_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_230/lstm_691/lstm_cell_631/BiasAddBiasAdd-sequential_230/lstm_691/lstm_cell_631/add:z:0Dsequential_230/lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_230/lstm_691/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_230/lstm_691/lstm_cell_631/splitSplit>sequential_230/lstm_691/lstm_cell_631/split/split_dim:output:06sequential_230/lstm_691/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_230/lstm_691/lstm_cell_631/SigmoidSigmoid4sequential_230/lstm_691/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_230/lstm_691/lstm_cell_631/Sigmoid_1Sigmoid4sequential_230/lstm_691/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_230/lstm_691/lstm_cell_631/mulMul3sequential_230/lstm_691/lstm_cell_631/Sigmoid_1:y:0(sequential_230/lstm_691/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_230/lstm_691/lstm_cell_631/ReluRelu4sequential_230/lstm_691/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_230/lstm_691/lstm_cell_631/mul_1Mul1sequential_230/lstm_691/lstm_cell_631/Sigmoid:y:08sequential_230/lstm_691/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_230/lstm_691/lstm_cell_631/add_1AddV2-sequential_230/lstm_691/lstm_cell_631/mul:z:0/sequential_230/lstm_691/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_230/lstm_691/lstm_cell_631/Sigmoid_2Sigmoid4sequential_230/lstm_691/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_230/lstm_691/lstm_cell_631/Relu_1Relu/sequential_230/lstm_691/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_230/lstm_691/lstm_cell_631/mul_2Mul3sequential_230/lstm_691/lstm_cell_631/Sigmoid_2:y:0:sequential_230/lstm_691/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_230/lstm_691/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_230/lstm_691/TensorArrayV2_1TensorListReserve>sequential_230/lstm_691/TensorArrayV2_1/element_shape:output:00sequential_230/lstm_691/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_230/lstm_691/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_230/lstm_691/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_230/lstm_691/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_230/lstm_691/whileWhile3sequential_230/lstm_691/while/loop_counter:output:09sequential_230/lstm_691/while/maximum_iterations:output:0%sequential_230/lstm_691/time:output:00sequential_230/lstm_691/TensorArrayV2_1:handle:0&sequential_230/lstm_691/zeros:output:0(sequential_230/lstm_691/zeros_1:output:00sequential_230/lstm_691/strided_slice_1:output:0Osequential_230/lstm_691/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_230_lstm_691_lstm_cell_631_matmul_readvariableop_resourceFsequential_230_lstm_691_lstm_cell_631_matmul_1_readvariableop_resourceEsequential_230_lstm_691_lstm_cell_631_biasadd_readvariableop_resource*
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
*sequential_230_lstm_691_while_body_3824375*6
cond.R,
*sequential_230_lstm_691_while_cond_3824374*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_230/lstm_691/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_230/lstm_691/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_230/lstm_691/while:output:3Qsequential_230/lstm_691/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_230/lstm_691/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_230/lstm_691/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_230/lstm_691/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_230/lstm_691/strided_slice_3StridedSliceCsequential_230/lstm_691/TensorArrayV2Stack/TensorListStack:tensor:06sequential_230/lstm_691/strided_slice_3/stack:output:08sequential_230/lstm_691/strided_slice_3/stack_1:output:08sequential_230/lstm_691/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_230/lstm_691/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_230/lstm_691/transpose_1	TransposeCsequential_230/lstm_691/TensorArrayV2Stack/TensorListStack:tensor:01sequential_230/lstm_691/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_230/lstm_691/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_230/lstm_692/ShapeShape'sequential_230/lstm_691/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_230/lstm_692/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_230/lstm_692/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_230/lstm_692/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_230/lstm_692/strided_sliceStridedSlice&sequential_230/lstm_692/Shape:output:04sequential_230/lstm_692/strided_slice/stack:output:06sequential_230/lstm_692/strided_slice/stack_1:output:06sequential_230/lstm_692/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_230/lstm_692/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_230/lstm_692/zeros/packedPack.sequential_230/lstm_692/strided_slice:output:0/sequential_230/lstm_692/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_230/lstm_692/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_230/lstm_692/zerosFill-sequential_230/lstm_692/zeros/packed:output:0,sequential_230/lstm_692/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_230/lstm_692/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_230/lstm_692/zeros_1/packedPack.sequential_230/lstm_692/strided_slice:output:01sequential_230/lstm_692/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_230/lstm_692/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_230/lstm_692/zeros_1Fill/sequential_230/lstm_692/zeros_1/packed:output:0.sequential_230/lstm_692/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_230/lstm_692/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_230/lstm_692/transpose	Transpose'sequential_230/lstm_691/transpose_1:y:0/sequential_230/lstm_692/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_230/lstm_692/Shape_1Shape%sequential_230/lstm_692/transpose:y:0*
T0*
_output_shapes
:w
-sequential_230/lstm_692/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_230/lstm_692/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_230/lstm_692/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_230/lstm_692/strided_slice_1StridedSlice(sequential_230/lstm_692/Shape_1:output:06sequential_230/lstm_692/strided_slice_1/stack:output:08sequential_230/lstm_692/strided_slice_1/stack_1:output:08sequential_230/lstm_692/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_230/lstm_692/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_230/lstm_692/TensorArrayV2TensorListReserve<sequential_230/lstm_692/TensorArrayV2/element_shape:output:00sequential_230/lstm_692/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_230/lstm_692/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_230/lstm_692/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_230/lstm_692/transpose:y:0Vsequential_230/lstm_692/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_230/lstm_692/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_230/lstm_692/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_230/lstm_692/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_230/lstm_692/strided_slice_2StridedSlice%sequential_230/lstm_692/transpose:y:06sequential_230/lstm_692/strided_slice_2/stack:output:08sequential_230/lstm_692/strided_slice_2/stack_1:output:08sequential_230/lstm_692/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_230/lstm_692/lstm_cell_632/MatMul/ReadVariableOpReadVariableOpDsequential_230_lstm_692_lstm_cell_632_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_230/lstm_692/lstm_cell_632/MatMulMatMul0sequential_230/lstm_692/strided_slice_2:output:0Csequential_230/lstm_692/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_230/lstm_692/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOpFsequential_230_lstm_692_lstm_cell_632_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_230/lstm_692/lstm_cell_632/MatMul_1MatMul&sequential_230/lstm_692/zeros:output:0Esequential_230/lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_230/lstm_692/lstm_cell_632/addAddV26sequential_230/lstm_692/lstm_cell_632/MatMul:product:08sequential_230/lstm_692/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_230/lstm_692/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOpEsequential_230_lstm_692_lstm_cell_632_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_230/lstm_692/lstm_cell_632/BiasAddBiasAdd-sequential_230/lstm_692/lstm_cell_632/add:z:0Dsequential_230/lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_230/lstm_692/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_230/lstm_692/lstm_cell_632/splitSplit>sequential_230/lstm_692/lstm_cell_632/split/split_dim:output:06sequential_230/lstm_692/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_230/lstm_692/lstm_cell_632/SigmoidSigmoid4sequential_230/lstm_692/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_230/lstm_692/lstm_cell_632/Sigmoid_1Sigmoid4sequential_230/lstm_692/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_230/lstm_692/lstm_cell_632/mulMul3sequential_230/lstm_692/lstm_cell_632/Sigmoid_1:y:0(sequential_230/lstm_692/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_230/lstm_692/lstm_cell_632/ReluRelu4sequential_230/lstm_692/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_230/lstm_692/lstm_cell_632/mul_1Mul1sequential_230/lstm_692/lstm_cell_632/Sigmoid:y:08sequential_230/lstm_692/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_230/lstm_692/lstm_cell_632/add_1AddV2-sequential_230/lstm_692/lstm_cell_632/mul:z:0/sequential_230/lstm_692/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_230/lstm_692/lstm_cell_632/Sigmoid_2Sigmoid4sequential_230/lstm_692/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_230/lstm_692/lstm_cell_632/Relu_1Relu/sequential_230/lstm_692/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_230/lstm_692/lstm_cell_632/mul_2Mul3sequential_230/lstm_692/lstm_cell_632/Sigmoid_2:y:0:sequential_230/lstm_692/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_230/lstm_692/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_230/lstm_692/TensorArrayV2_1TensorListReserve>sequential_230/lstm_692/TensorArrayV2_1/element_shape:output:00sequential_230/lstm_692/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_230/lstm_692/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_230/lstm_692/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_230/lstm_692/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_230/lstm_692/whileWhile3sequential_230/lstm_692/while/loop_counter:output:09sequential_230/lstm_692/while/maximum_iterations:output:0%sequential_230/lstm_692/time:output:00sequential_230/lstm_692/TensorArrayV2_1:handle:0&sequential_230/lstm_692/zeros:output:0(sequential_230/lstm_692/zeros_1:output:00sequential_230/lstm_692/strided_slice_1:output:0Osequential_230/lstm_692/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_230_lstm_692_lstm_cell_632_matmul_readvariableop_resourceFsequential_230_lstm_692_lstm_cell_632_matmul_1_readvariableop_resourceEsequential_230_lstm_692_lstm_cell_632_biasadd_readvariableop_resource*
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
*sequential_230_lstm_692_while_body_3824514*6
cond.R,
*sequential_230_lstm_692_while_cond_3824513*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_230/lstm_692/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_230/lstm_692/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_230/lstm_692/while:output:3Qsequential_230/lstm_692/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_230/lstm_692/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_230/lstm_692/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_230/lstm_692/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_230/lstm_692/strided_slice_3StridedSliceCsequential_230/lstm_692/TensorArrayV2Stack/TensorListStack:tensor:06sequential_230/lstm_692/strided_slice_3/stack:output:08sequential_230/lstm_692/strided_slice_3/stack_1:output:08sequential_230/lstm_692/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_230/lstm_692/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_230/lstm_692/transpose_1	TransposeCsequential_230/lstm_692/TensorArrayV2Stack/TensorListStack:tensor:01sequential_230/lstm_692/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_230/lstm_692/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_230/dense_230/MatMul/ReadVariableOpReadVariableOp7sequential_230_dense_230_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_230/dense_230/MatMulMatMul0sequential_230/lstm_692/strided_slice_3:output:06sequential_230/dense_230/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_230/dense_230/BiasAdd/ReadVariableOpReadVariableOp8sequential_230_dense_230_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_230/dense_230/BiasAddBiasAdd)sequential_230/dense_230/MatMul:product:07sequential_230/dense_230/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_230/dense_230/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_230/dense_230/BiasAdd/ReadVariableOp/^sequential_230/dense_230/MatMul/ReadVariableOp=^sequential_230/lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp<^sequential_230/lstm_690/lstm_cell_630/MatMul/ReadVariableOp>^sequential_230/lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp^sequential_230/lstm_690/while=^sequential_230/lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp<^sequential_230/lstm_691/lstm_cell_631/MatMul/ReadVariableOp>^sequential_230/lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp^sequential_230/lstm_691/while=^sequential_230/lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp<^sequential_230/lstm_692/lstm_cell_632/MatMul/ReadVariableOp>^sequential_230/lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp^sequential_230/lstm_692/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_230/dense_230/BiasAdd/ReadVariableOp/sequential_230/dense_230/BiasAdd/ReadVariableOp2`
.sequential_230/dense_230/MatMul/ReadVariableOp.sequential_230/dense_230/MatMul/ReadVariableOp2|
<sequential_230/lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp<sequential_230/lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp2z
;sequential_230/lstm_690/lstm_cell_630/MatMul/ReadVariableOp;sequential_230/lstm_690/lstm_cell_630/MatMul/ReadVariableOp2~
=sequential_230/lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp=sequential_230/lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp2>
sequential_230/lstm_690/whilesequential_230/lstm_690/while2|
<sequential_230/lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp<sequential_230/lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp2z
;sequential_230/lstm_691/lstm_cell_631/MatMul/ReadVariableOp;sequential_230/lstm_691/lstm_cell_631/MatMul/ReadVariableOp2~
=sequential_230/lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp=sequential_230/lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp2>
sequential_230/lstm_691/whilesequential_230/lstm_691/while2|
<sequential_230/lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp<sequential_230/lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp2z
;sequential_230/lstm_692/lstm_cell_632/MatMul/ReadVariableOp;sequential_230/lstm_692/lstm_cell_632/MatMul/ReadVariableOp2~
=sequential_230/lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp=sequential_230/lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp2>
sequential_230/lstm_692/whilesequential_230/lstm_692/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_690_input
?
?
while_cond_3828490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3828490___redundant_placeholder05
1while_while_cond_3828490___redundant_placeholder15
1while_while_cond_3828490___redundant_placeholder25
1while_while_cond_3828490___redundant_placeholder3
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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3829835

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
while_body_3829250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_632_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_632_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_632_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_632_matmul_readvariableop_resource:2(F
4while_lstm_cell_632_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_632_biasadd_readvariableop_resource:(??*while/lstm_cell_632/BiasAdd/ReadVariableOp?)while/lstm_cell_632/MatMul/ReadVariableOp?+while/lstm_cell_632/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_632/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_632_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_632/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_632_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_632/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_632/addAddV2$while/lstm_cell_632/MatMul:product:0&while/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_632_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_632/BiasAddBiasAddwhile/lstm_cell_632/add:z:02while/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_632/splitSplit,while/lstm_cell_632/split/split_dim:output:0$while/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_632/SigmoidSigmoid"while/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_1Sigmoid"while/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mulMul!while/lstm_cell_632/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_632/ReluRelu"while/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_1Mulwhile/lstm_cell_632/Sigmoid:y:0&while/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/add_1AddV2while/lstm_cell_632/mul:z:0while/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_2Sigmoid"while/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_632/Relu_1Reluwhile/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_2Mul!while/lstm_cell_632/Sigmoid_2:y:0(while/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_632/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_632/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_632/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_632/BiasAdd/ReadVariableOp*^while/lstm_cell_632/MatMul/ReadVariableOp,^while/lstm_cell_632/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_632_biasadd_readvariableop_resource5while_lstm_cell_632_biasadd_readvariableop_resource_0"n
4while_lstm_cell_632_matmul_1_readvariableop_resource6while_lstm_cell_632_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_632_matmul_readvariableop_resource4while_lstm_cell_632_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_632/BiasAdd/ReadVariableOp*while/lstm_cell_632/BiasAdd/ReadVariableOp2V
)while/lstm_cell_632/MatMul/ReadVariableOp)while/lstm_cell_632/MatMul/ReadVariableOp2Z
+while/lstm_cell_632/MatMul_1/ReadVariableOp+while/lstm_cell_632/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3825718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3825718___redundant_placeholder05
1while_while_cond_3825718___redundant_placeholder15
1while_while_cond_3825718___redundant_placeholder25
1while_while_cond_3825718___redundant_placeholder3
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
*sequential_230_lstm_692_while_cond_3824513L
Hsequential_230_lstm_692_while_sequential_230_lstm_692_while_loop_counterR
Nsequential_230_lstm_692_while_sequential_230_lstm_692_while_maximum_iterations-
)sequential_230_lstm_692_while_placeholder/
+sequential_230_lstm_692_while_placeholder_1/
+sequential_230_lstm_692_while_placeholder_2/
+sequential_230_lstm_692_while_placeholder_3N
Jsequential_230_lstm_692_while_less_sequential_230_lstm_692_strided_slice_1e
asequential_230_lstm_692_while_sequential_230_lstm_692_while_cond_3824513___redundant_placeholder0e
asequential_230_lstm_692_while_sequential_230_lstm_692_while_cond_3824513___redundant_placeholder1e
asequential_230_lstm_692_while_sequential_230_lstm_692_while_cond_3824513___redundant_placeholder2e
asequential_230_lstm_692_while_sequential_230_lstm_692_while_cond_3824513___redundant_placeholder3*
&sequential_230_lstm_692_while_identity
?
"sequential_230/lstm_692/while/LessLess)sequential_230_lstm_692_while_placeholderJsequential_230_lstm_692_while_less_sequential_230_lstm_692_strided_slice_1*
T0*
_output_shapes
: {
&sequential_230/lstm_692/while/IdentityIdentity&sequential_230/lstm_692/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_230_lstm_692_while_identity/sequential_230/lstm_692/while/Identity:output:0*(
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
while_cond_3825384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3825384___redundant_placeholder05
1while_while_cond_3825384___redundant_placeholder15
1while_while_cond_3825384___redundant_placeholder25
1while_while_cond_3825384___redundant_placeholder3
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
*__inference_lstm_692_layer_call_fn_3829037

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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3826103o
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
while_cond_3828017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3828017___redundant_placeholder05
1while_while_cond_3828017___redundant_placeholder15
1while_while_cond_3828017___redundant_placeholder25
1while_while_cond_3828017___redundant_placeholder3
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
while_body_3829107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_632_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_632_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_632_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_632_matmul_readvariableop_resource:2(F
4while_lstm_cell_632_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_632_biasadd_readvariableop_resource:(??*while/lstm_cell_632/BiasAdd/ReadVariableOp?)while/lstm_cell_632/MatMul/ReadVariableOp?+while/lstm_cell_632/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_632/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_632_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_632/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_632_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_632/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_632/addAddV2$while/lstm_cell_632/MatMul:product:0&while/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_632_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_632/BiasAddBiasAddwhile/lstm_cell_632/add:z:02while/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_632/splitSplit,while/lstm_cell_632/split/split_dim:output:0$while/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_632/SigmoidSigmoid"while/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_1Sigmoid"while/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mulMul!while/lstm_cell_632/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_632/ReluRelu"while/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_1Mulwhile/lstm_cell_632/Sigmoid:y:0&while/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/add_1AddV2while/lstm_cell_632/mul:z:0while/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_2Sigmoid"while/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_632/Relu_1Reluwhile/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_2Mul!while/lstm_cell_632/Sigmoid_2:y:0(while/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_632/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_632/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_632/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_632/BiasAdd/ReadVariableOp*^while/lstm_cell_632/MatMul/ReadVariableOp,^while/lstm_cell_632/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_632_biasadd_readvariableop_resource5while_lstm_cell_632_biasadd_readvariableop_resource_0"n
4while_lstm_cell_632_matmul_1_readvariableop_resource6while_lstm_cell_632_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_632_matmul_readvariableop_resource4while_lstm_cell_632_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_632/BiasAdd/ReadVariableOp*while/lstm_cell_632/BiasAdd/ReadVariableOp2V
)while/lstm_cell_632/MatMul/ReadVariableOp)while/lstm_cell_632/MatMul/ReadVariableOp2Z
+while/lstm_cell_632/MatMul_1/ReadVariableOp+while/lstm_cell_632/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3828777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_631_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_631_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_631_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_631_matmul_readvariableop_resource:	d?G
4while_lstm_cell_631_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_631_biasadd_readvariableop_resource:	???*while/lstm_cell_631/BiasAdd/ReadVariableOp?)while/lstm_cell_631/MatMul/ReadVariableOp?+while/lstm_cell_631/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_631/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_631_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_631/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_631_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_631/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_631/addAddV2$while/lstm_cell_631/MatMul:product:0&while/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_631_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_631/BiasAddBiasAddwhile/lstm_cell_631/add:z:02while/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_631/splitSplit,while/lstm_cell_631/split/split_dim:output:0$while/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_631/SigmoidSigmoid"while/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_1Sigmoid"while/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mulMul!while/lstm_cell_631/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_631/ReluRelu"while/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_1Mulwhile/lstm_cell_631/Sigmoid:y:0&while/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/add_1AddV2while/lstm_cell_631/mul:z:0while/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_2Sigmoid"while/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_631/Relu_1Reluwhile/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_2Mul!while/lstm_cell_631/Sigmoid_2:y:0(while/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_631/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_631/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_631/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_631/BiasAdd/ReadVariableOp*^while/lstm_cell_631/MatMul/ReadVariableOp,^while/lstm_cell_631/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_631_biasadd_readvariableop_resource5while_lstm_cell_631_biasadd_readvariableop_resource_0"n
4while_lstm_cell_631_matmul_1_readvariableop_resource6while_lstm_cell_631_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_631_matmul_readvariableop_resource4while_lstm_cell_631_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_631/BiasAdd/ReadVariableOp*while/lstm_cell_631/BiasAdd/ReadVariableOp2V
)while/lstm_cell_631/MatMul/ReadVariableOp)while/lstm_cell_631/MatMul/ReadVariableOp2Z
+while/lstm_cell_631/MatMul_1/ReadVariableOp+while/lstm_cell_631/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3829106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3829106___redundant_placeholder05
1while_while_cond_3829106___redundant_placeholder15
1while_while_cond_3829106___redundant_placeholder25
1while_while_cond_3829106___redundant_placeholder3
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
*__inference_lstm_691_layer_call_fn_3828399
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3825104|
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
?C
?

lstm_690_while_body_3826977.
*lstm_690_while_lstm_690_while_loop_counter4
0lstm_690_while_lstm_690_while_maximum_iterations
lstm_690_while_placeholder 
lstm_690_while_placeholder_1 
lstm_690_while_placeholder_2 
lstm_690_while_placeholder_3-
)lstm_690_while_lstm_690_strided_slice_1_0i
elstm_690_while_tensorarrayv2read_tensorlistgetitem_lstm_690_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_690_while_lstm_cell_630_matmul_readvariableop_resource_0:	?R
?lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource_0:	d?M
>lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource_0:	?
lstm_690_while_identity
lstm_690_while_identity_1
lstm_690_while_identity_2
lstm_690_while_identity_3
lstm_690_while_identity_4
lstm_690_while_identity_5+
'lstm_690_while_lstm_690_strided_slice_1g
clstm_690_while_tensorarrayv2read_tensorlistgetitem_lstm_690_tensorarrayunstack_tensorlistfromtensorN
;lstm_690_while_lstm_cell_630_matmul_readvariableop_resource:	?P
=lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource:	d?K
<lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource:	???3lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp?2lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp?4lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp?
@lstm_690/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_690/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_690_while_tensorarrayv2read_tensorlistgetitem_lstm_690_tensorarrayunstack_tensorlistfromtensor_0lstm_690_while_placeholderIlstm_690/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_690/while/lstm_cell_630/MatMul/ReadVariableOpReadVariableOp=lstm_690_while_lstm_cell_630_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_690/while/lstm_cell_630/MatMulMatMul9lstm_690/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp?lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_690/while/lstm_cell_630/MatMul_1MatMullstm_690_while_placeholder_2<lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_690/while/lstm_cell_630/addAddV2-lstm_690/while/lstm_cell_630/MatMul:product:0/lstm_690/while/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp>lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_690/while/lstm_cell_630/BiasAddBiasAdd$lstm_690/while/lstm_cell_630/add:z:0;lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_690/while/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_690/while/lstm_cell_630/splitSplit5lstm_690/while/lstm_cell_630/split/split_dim:output:0-lstm_690/while/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_690/while/lstm_cell_630/SigmoidSigmoid+lstm_690/while/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_690/while/lstm_cell_630/Sigmoid_1Sigmoid+lstm_690/while/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_690/while/lstm_cell_630/mulMul*lstm_690/while/lstm_cell_630/Sigmoid_1:y:0lstm_690_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_690/while/lstm_cell_630/ReluRelu+lstm_690/while/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_690/while/lstm_cell_630/mul_1Mul(lstm_690/while/lstm_cell_630/Sigmoid:y:0/lstm_690/while/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_690/while/lstm_cell_630/add_1AddV2$lstm_690/while/lstm_cell_630/mul:z:0&lstm_690/while/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_690/while/lstm_cell_630/Sigmoid_2Sigmoid+lstm_690/while/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_690/while/lstm_cell_630/Relu_1Relu&lstm_690/while/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_690/while/lstm_cell_630/mul_2Mul*lstm_690/while/lstm_cell_630/Sigmoid_2:y:01lstm_690/while/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_690/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_690_while_placeholder_1lstm_690_while_placeholder&lstm_690/while/lstm_cell_630/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_690/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_690/while/addAddV2lstm_690_while_placeholderlstm_690/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_690/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_690/while/add_1AddV2*lstm_690_while_lstm_690_while_loop_counterlstm_690/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_690/while/IdentityIdentitylstm_690/while/add_1:z:0^lstm_690/while/NoOp*
T0*
_output_shapes
: ?
lstm_690/while/Identity_1Identity0lstm_690_while_lstm_690_while_maximum_iterations^lstm_690/while/NoOp*
T0*
_output_shapes
: t
lstm_690/while/Identity_2Identitylstm_690/while/add:z:0^lstm_690/while/NoOp*
T0*
_output_shapes
: ?
lstm_690/while/Identity_3IdentityClstm_690/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_690/while/NoOp*
T0*
_output_shapes
: ?
lstm_690/while/Identity_4Identity&lstm_690/while/lstm_cell_630/mul_2:z:0^lstm_690/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_690/while/Identity_5Identity&lstm_690/while/lstm_cell_630/add_1:z:0^lstm_690/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_690/while/NoOpNoOp4^lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp3^lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp5^lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_690_while_identity lstm_690/while/Identity:output:0"?
lstm_690_while_identity_1"lstm_690/while/Identity_1:output:0"?
lstm_690_while_identity_2"lstm_690/while/Identity_2:output:0"?
lstm_690_while_identity_3"lstm_690/while/Identity_3:output:0"?
lstm_690_while_identity_4"lstm_690/while/Identity_4:output:0"?
lstm_690_while_identity_5"lstm_690/while/Identity_5:output:0"T
'lstm_690_while_lstm_690_strided_slice_1)lstm_690_while_lstm_690_strided_slice_1_0"~
<lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource>lstm_690_while_lstm_cell_630_biasadd_readvariableop_resource_0"?
=lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource?lstm_690_while_lstm_cell_630_matmul_1_readvariableop_resource_0"|
;lstm_690_while_lstm_cell_630_matmul_readvariableop_resource=lstm_690_while_lstm_cell_630_matmul_readvariableop_resource_0"?
clstm_690_while_tensorarrayv2read_tensorlistgetitem_lstm_690_tensorarrayunstack_tensorlistfromtensorelstm_690_while_tensorarrayv2read_tensorlistgetitem_lstm_690_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp3lstm_690/while/lstm_cell_630/BiasAdd/ReadVariableOp2h
2lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp2lstm_690/while/lstm_cell_630/MatMul/ReadVariableOp2l
4lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp4lstm_690/while/lstm_cell_630/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3824754

inputs(
lstm_cell_630_3824672:	?(
lstm_cell_630_3824674:	d?$
lstm_cell_630_3824676:	?
identity??%lstm_cell_630/StatefulPartitionedCall?while;
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
%lstm_cell_630/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_630_3824672lstm_cell_630_3824674lstm_cell_630_3824676*
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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3824671n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_630_3824672lstm_cell_630_3824674lstm_cell_630_3824676*
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
while_body_3824685*
condR
while_cond_3824684*K
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
NoOpNoOp&^lstm_cell_630/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_630/StatefulPartitionedCall%lstm_cell_630/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_691_layer_call_and_return_conditional_losses_3829004

inputs?
,lstm_cell_631_matmul_readvariableop_resource:	d?A
.lstm_cell_631_matmul_1_readvariableop_resource:	2?<
-lstm_cell_631_biasadd_readvariableop_resource:	?
identity??$lstm_cell_631/BiasAdd/ReadVariableOp?#lstm_cell_631/MatMul/ReadVariableOp?%lstm_cell_631/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_631/MatMul/ReadVariableOpReadVariableOp,lstm_cell_631_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_631/MatMulMatMulstrided_slice_2:output:0+lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_631_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_631/MatMul_1MatMulzeros:output:0-lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_631/addAddV2lstm_cell_631/MatMul:product:0 lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_631_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_631/BiasAddBiasAddlstm_cell_631/add:z:0,lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_631/splitSplit&lstm_cell_631/split/split_dim:output:0lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_631/SigmoidSigmoidlstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_1Sigmoidlstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_631/mulMullstm_cell_631/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_631/ReluRelulstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_1Mullstm_cell_631/Sigmoid:y:0 lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_631/add_1AddV2lstm_cell_631/mul:z:0lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_2Sigmoidlstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_631/Relu_1Relulstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_2Mullstm_cell_631/Sigmoid_2:y:0"lstm_cell_631/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_631_matmul_readvariableop_resource.lstm_cell_631_matmul_1_readvariableop_resource-lstm_cell_631_biasadd_readvariableop_resource*
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
while_body_3828920*
condR
while_cond_3828919*K
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
NoOpNoOp%^lstm_cell_631/BiasAdd/ReadVariableOp$^lstm_cell_631/MatMul/ReadVariableOp&^lstm_cell_631/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_631/BiasAdd/ReadVariableOp$lstm_cell_631/BiasAdd/ReadVariableOp2J
#lstm_cell_631/MatMul/ReadVariableOp#lstm_cell_631/MatMul/ReadVariableOp2N
%lstm_cell_631/MatMul_1/ReadVariableOp%lstm_cell_631/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3825021

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
lstm_691_while_cond_3827542.
*lstm_691_while_lstm_691_while_loop_counter4
0lstm_691_while_lstm_691_while_maximum_iterations
lstm_691_while_placeholder 
lstm_691_while_placeholder_1 
lstm_691_while_placeholder_2 
lstm_691_while_placeholder_30
,lstm_691_while_less_lstm_691_strided_slice_1G
Clstm_691_while_lstm_691_while_cond_3827542___redundant_placeholder0G
Clstm_691_while_lstm_691_while_cond_3827542___redundant_placeholder1G
Clstm_691_while_lstm_691_while_cond_3827542___redundant_placeholder2G
Clstm_691_while_lstm_691_while_cond_3827542___redundant_placeholder3
lstm_691_while_identity
?
lstm_691/while/LessLesslstm_691_while_placeholder,lstm_691_while_less_lstm_691_strided_slice_1*
T0*
_output_shapes
: ]
lstm_691/while/IdentityIdentitylstm_691/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_691_while_identity lstm_691/while/Identity:output:0*(
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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3824817

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
?
?
/__inference_lstm_cell_631_layer_call_fn_3829754

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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3825021o
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
while_body_3828920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_631_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_631_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_631_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_631_matmul_readvariableop_resource:	d?G
4while_lstm_cell_631_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_631_biasadd_readvariableop_resource:	???*while/lstm_cell_631/BiasAdd/ReadVariableOp?)while/lstm_cell_631/MatMul/ReadVariableOp?+while/lstm_cell_631/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_631/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_631_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_631/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_631_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_631/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_631/addAddV2$while/lstm_cell_631/MatMul:product:0&while/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_631_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_631/BiasAddBiasAddwhile/lstm_cell_631/add:z:02while/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_631/splitSplit,while/lstm_cell_631/split/split_dim:output:0$while/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_631/SigmoidSigmoid"while/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_1Sigmoid"while/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mulMul!while/lstm_cell_631/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_631/ReluRelu"while/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_1Mulwhile/lstm_cell_631/Sigmoid:y:0&while/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/add_1AddV2while/lstm_cell_631/mul:z:0while/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_2Sigmoid"while/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_631/Relu_1Reluwhile/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_2Mul!while/lstm_cell_631/Sigmoid_2:y:0(while/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_631/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_631/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_631/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_631/BiasAdd/ReadVariableOp*^while/lstm_cell_631/MatMul/ReadVariableOp,^while/lstm_cell_631/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_631_biasadd_readvariableop_resource5while_lstm_cell_631_biasadd_readvariableop_resource_0"n
4while_lstm_cell_631_matmul_1_readvariableop_resource6while_lstm_cell_631_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_631_matmul_readvariableop_resource4while_lstm_cell_631_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_631/BiasAdd/ReadVariableOp*while/lstm_cell_631/BiasAdd/ReadVariableOp2V
)while/lstm_cell_631/MatMul/ReadVariableOp)while/lstm_cell_631/MatMul/ReadVariableOp2Z
+while/lstm_cell_631/MatMul_1/ReadVariableOp+while/lstm_cell_631/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_692_while_cond_3827254.
*lstm_692_while_lstm_692_while_loop_counter4
0lstm_692_while_lstm_692_while_maximum_iterations
lstm_692_while_placeholder 
lstm_692_while_placeholder_1 
lstm_692_while_placeholder_2 
lstm_692_while_placeholder_30
,lstm_692_while_less_lstm_692_strided_slice_1G
Clstm_692_while_lstm_692_while_cond_3827254___redundant_placeholder0G
Clstm_692_while_lstm_692_while_cond_3827254___redundant_placeholder1G
Clstm_692_while_lstm_692_while_cond_3827254___redundant_placeholder2G
Clstm_692_while_lstm_692_while_cond_3827254___redundant_placeholder3
lstm_692_while_identity
?
lstm_692/while/LessLesslstm_692_while_placeholder,lstm_692_while_less_lstm_692_strided_slice_1*
T0*
_output_shapes
: ]
lstm_692/while/IdentityIdentitylstm_692/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_692_while_identity lstm_692/while/Identity:output:0*(
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829477

inputs>
,lstm_cell_632_matmul_readvariableop_resource:2(@
.lstm_cell_632_matmul_1_readvariableop_resource:
(;
-lstm_cell_632_biasadd_readvariableop_resource:(
identity??$lstm_cell_632/BiasAdd/ReadVariableOp?#lstm_cell_632/MatMul/ReadVariableOp?%lstm_cell_632/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_632/MatMul/ReadVariableOpReadVariableOp,lstm_cell_632_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_632/MatMulMatMulstrided_slice_2:output:0+lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_632_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_632/MatMul_1MatMulzeros:output:0-lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_632/addAddV2lstm_cell_632/MatMul:product:0 lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_632_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_632/BiasAddBiasAddlstm_cell_632/add:z:0,lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_632/splitSplit&lstm_cell_632/split/split_dim:output:0lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_632/SigmoidSigmoidlstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_1Sigmoidlstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_632/mulMullstm_cell_632/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_632/ReluRelulstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_1Mullstm_cell_632/Sigmoid:y:0 lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_632/add_1AddV2lstm_cell_632/mul:z:0lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_2Sigmoidlstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_632/Relu_1Relulstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_2Mullstm_cell_632/Sigmoid_2:y:0"lstm_cell_632/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_632_matmul_readvariableop_resource.lstm_cell_632_matmul_1_readvariableop_resource-lstm_cell_632_biasadd_readvariableop_resource*
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
while_body_3829393*
condR
while_cond_3829392*K
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
NoOpNoOp%^lstm_cell_632/BiasAdd/ReadVariableOp$^lstm_cell_632/MatMul/ReadVariableOp&^lstm_cell_632/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_632/BiasAdd/ReadVariableOp$lstm_cell_632/BiasAdd/ReadVariableOp2J
#lstm_cell_632/MatMul/ReadVariableOp#lstm_cell_632/MatMul/ReadVariableOp2N
%lstm_cell_632/MatMul_1/ReadVariableOp%lstm_cell_632/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3829393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_632_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_632_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_632_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_632_matmul_readvariableop_resource:2(F
4while_lstm_cell_632_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_632_biasadd_readvariableop_resource:(??*while/lstm_cell_632/BiasAdd/ReadVariableOp?)while/lstm_cell_632/MatMul/ReadVariableOp?+while/lstm_cell_632/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_632/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_632_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_632/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_632_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_632/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_632/addAddV2$while/lstm_cell_632/MatMul:product:0&while/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_632_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_632/BiasAddBiasAddwhile/lstm_cell_632/add:z:02while/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_632/splitSplit,while/lstm_cell_632/split/split_dim:output:0$while/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_632/SigmoidSigmoid"while/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_1Sigmoid"while/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mulMul!while/lstm_cell_632/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_632/ReluRelu"while/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_1Mulwhile/lstm_cell_632/Sigmoid:y:0&while/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/add_1AddV2while/lstm_cell_632/mul:z:0while/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_2Sigmoid"while/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_632/Relu_1Reluwhile/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_2Mul!while/lstm_cell_632/Sigmoid_2:y:0(while/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_632/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_632/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_632/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_632/BiasAdd/ReadVariableOp*^while/lstm_cell_632/MatMul/ReadVariableOp,^while/lstm_cell_632/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_632_biasadd_readvariableop_resource5while_lstm_cell_632_biasadd_readvariableop_resource_0"n
4while_lstm_cell_632_matmul_1_readvariableop_resource6while_lstm_cell_632_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_632_matmul_readvariableop_resource4while_lstm_cell_632_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_632/BiasAdd/ReadVariableOp*while/lstm_cell_632/BiasAdd/ReadVariableOp2V
)while/lstm_cell_632/MatMul/ReadVariableOp)while/lstm_cell_632/MatMul/ReadVariableOp2Z
+while/lstm_cell_632/MatMul_1/ReadVariableOp+while/lstm_cell_632/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3829901

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
while_body_3826565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_630_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_630_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_630_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_630_matmul_readvariableop_resource:	?G
4while_lstm_cell_630_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_630_biasadd_readvariableop_resource:	???*while/lstm_cell_630/BiasAdd/ReadVariableOp?)while/lstm_cell_630/MatMul/ReadVariableOp?+while/lstm_cell_630/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_630/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_630_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_630/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_630_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_630/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_630/addAddV2$while/lstm_cell_630/MatMul:product:0&while/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_630_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_630/BiasAddBiasAddwhile/lstm_cell_630/add:z:02while/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_630/splitSplit,while/lstm_cell_630/split/split_dim:output:0$while/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_630/SigmoidSigmoid"while/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_1Sigmoid"while/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mulMul!while/lstm_cell_630/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_630/ReluRelu"while/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_1Mulwhile/lstm_cell_630/Sigmoid:y:0&while/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/add_1AddV2while/lstm_cell_630/mul:z:0while/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_2Sigmoid"while/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_630/Relu_1Reluwhile/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_2Mul!while/lstm_cell_630/Sigmoid_2:y:0(while/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_630/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_630/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_630/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_630/BiasAdd/ReadVariableOp*^while/lstm_cell_630/MatMul/ReadVariableOp,^while/lstm_cell_630/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_630_biasadd_readvariableop_resource5while_lstm_cell_630_biasadd_readvariableop_resource_0"n
4while_lstm_cell_630_matmul_1_readvariableop_resource6while_lstm_cell_630_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_630_matmul_readvariableop_resource4while_lstm_cell_630_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_630/BiasAdd/ReadVariableOp*while/lstm_cell_630/BiasAdd/ReadVariableOp2V
)while/lstm_cell_630/MatMul/ReadVariableOp)while/lstm_cell_630/MatMul/ReadVariableOp2Z
+while/lstm_cell_630/MatMul_1/ReadVariableOp+while/lstm_cell_630/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3825034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3825034___redundant_placeholder05
1while_while_cond_3825034___redundant_placeholder15
1while_while_cond_3825034___redundant_placeholder25
1while_while_cond_3825034___redundant_placeholder3
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
while_body_3825226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_631_3825250_0:	d?0
while_lstm_cell_631_3825252_0:	2?,
while_lstm_cell_631_3825254_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_631_3825250:	d?.
while_lstm_cell_631_3825252:	2?*
while_lstm_cell_631_3825254:	???+while/lstm_cell_631/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_631/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_631_3825250_0while_lstm_cell_631_3825252_0while_lstm_cell_631_3825254_0*
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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3825167?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_631/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_631/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_631/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_631/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_631_3825250while_lstm_cell_631_3825250_0"<
while_lstm_cell_631_3825252while_lstm_cell_631_3825252_0"<
while_lstm_cell_631_3825254while_lstm_cell_631_3825254_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_631/StatefulPartitionedCall+while/lstm_cell_631/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3826103

inputs>
,lstm_cell_632_matmul_readvariableop_resource:2(@
.lstm_cell_632_matmul_1_readvariableop_resource:
(;
-lstm_cell_632_biasadd_readvariableop_resource:(
identity??$lstm_cell_632/BiasAdd/ReadVariableOp?#lstm_cell_632/MatMul/ReadVariableOp?%lstm_cell_632/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_632/MatMul/ReadVariableOpReadVariableOp,lstm_cell_632_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_632/MatMulMatMulstrided_slice_2:output:0+lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_632_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_632/MatMul_1MatMulzeros:output:0-lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_632/addAddV2lstm_cell_632/MatMul:product:0 lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_632_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_632/BiasAddBiasAddlstm_cell_632/add:z:0,lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_632/splitSplit&lstm_cell_632/split/split_dim:output:0lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_632/SigmoidSigmoidlstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_1Sigmoidlstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_632/mulMullstm_cell_632/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_632/ReluRelulstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_1Mullstm_cell_632/Sigmoid:y:0 lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_632/add_1AddV2lstm_cell_632/mul:z:0lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_2Sigmoidlstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_632/Relu_1Relulstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_2Mullstm_cell_632/Sigmoid_2:y:0"lstm_cell_632/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_632_matmul_readvariableop_resource.lstm_cell_632_matmul_1_readvariableop_resource-lstm_cell_632_biasadd_readvariableop_resource*
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
while_body_3826019*
condR
while_cond_3826018*K
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
NoOpNoOp%^lstm_cell_632/BiasAdd/ReadVariableOp$^lstm_cell_632/MatMul/ReadVariableOp&^lstm_cell_632/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_632/BiasAdd/ReadVariableOp$lstm_cell_632/BiasAdd/ReadVariableOp2J
#lstm_cell_632/MatMul/ReadVariableOp#lstm_cell_632/MatMul/ReadVariableOp2N
%lstm_cell_632/MatMul_1/ReadVariableOp%lstm_cell_632/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
F__inference_dense_230_layer_call_and_return_conditional_losses_3826121

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
while_body_3828161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_630_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_630_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_630_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_630_matmul_readvariableop_resource:	?G
4while_lstm_cell_630_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_630_biasadd_readvariableop_resource:	???*while/lstm_cell_630/BiasAdd/ReadVariableOp?)while/lstm_cell_630/MatMul/ReadVariableOp?+while/lstm_cell_630/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_630/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_630_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_630/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_630_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_630/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_630/addAddV2$while/lstm_cell_630/MatMul:product:0&while/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_630_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_630/BiasAddBiasAddwhile/lstm_cell_630/add:z:02while/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_630/splitSplit,while/lstm_cell_630/split/split_dim:output:0$while/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_630/SigmoidSigmoid"while/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_1Sigmoid"while/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mulMul!while/lstm_cell_630/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_630/ReluRelu"while/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_1Mulwhile/lstm_cell_630/Sigmoid:y:0&while/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/add_1AddV2while/lstm_cell_630/mul:z:0while/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_2Sigmoid"while/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_630/Relu_1Reluwhile/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_2Mul!while/lstm_cell_630/Sigmoid_2:y:0(while/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_630/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_630/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_630/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_630/BiasAdd/ReadVariableOp*^while/lstm_cell_630/MatMul/ReadVariableOp,^while/lstm_cell_630/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_630_biasadd_readvariableop_resource5while_lstm_cell_630_biasadd_readvariableop_resource_0"n
4while_lstm_cell_630_matmul_1_readvariableop_resource6while_lstm_cell_630_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_630_matmul_readvariableop_resource4while_lstm_cell_630_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_630/BiasAdd/ReadVariableOp*while/lstm_cell_630/BiasAdd/ReadVariableOp2V
)while/lstm_cell_630/MatMul/ReadVariableOp)while/lstm_cell_630/MatMul/ReadVariableOp2Z
+while/lstm_cell_630/MatMul_1/ReadVariableOp+while/lstm_cell_630/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3825803

inputs?
,lstm_cell_630_matmul_readvariableop_resource:	?A
.lstm_cell_630_matmul_1_readvariableop_resource:	d?<
-lstm_cell_630_biasadd_readvariableop_resource:	?
identity??$lstm_cell_630/BiasAdd/ReadVariableOp?#lstm_cell_630/MatMul/ReadVariableOp?%lstm_cell_630/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_630/MatMul/ReadVariableOpReadVariableOp,lstm_cell_630_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_630/MatMulMatMulstrided_slice_2:output:0+lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_630_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_630/MatMul_1MatMulzeros:output:0-lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_630/addAddV2lstm_cell_630/MatMul:product:0 lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_630_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_630/BiasAddBiasAddlstm_cell_630/add:z:0,lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_630/splitSplit&lstm_cell_630/split/split_dim:output:0lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_630/SigmoidSigmoidlstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_1Sigmoidlstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_630/mulMullstm_cell_630/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_630/ReluRelulstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_1Mullstm_cell_630/Sigmoid:y:0 lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_630/add_1AddV2lstm_cell_630/mul:z:0lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_2Sigmoidlstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_630/Relu_1Relulstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_2Mullstm_cell_630/Sigmoid_2:y:0"lstm_cell_630/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_630_matmul_readvariableop_resource.lstm_cell_630_matmul_1_readvariableop_resource-lstm_cell_630_biasadd_readvariableop_resource*
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
while_body_3825719*
condR
while_cond_3825718*K
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
NoOpNoOp%^lstm_cell_630/BiasAdd/ReadVariableOp$^lstm_cell_630/MatMul/ReadVariableOp&^lstm_cell_630/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_630/BiasAdd/ReadVariableOp$lstm_cell_630/BiasAdd/ReadVariableOp2J
#lstm_cell_630/MatMul/ReadVariableOp#lstm_cell_630/MatMul/ReadVariableOp2N
%lstm_cell_630/MatMul_1/ReadVariableOp%lstm_cell_630/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_692_layer_call_fn_3829015
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3825454o
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
 __inference__traced_save_3830076
file_prefix/
+savev2_dense_230_kernel_read_readvariableop-
)savev2_dense_230_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_690_lstm_cell_690_kernel_read_readvariableopF
Bsavev2_lstm_690_lstm_cell_690_recurrent_kernel_read_readvariableop:
6savev2_lstm_690_lstm_cell_690_bias_read_readvariableop<
8savev2_lstm_691_lstm_cell_691_kernel_read_readvariableopF
Bsavev2_lstm_691_lstm_cell_691_recurrent_kernel_read_readvariableop:
6savev2_lstm_691_lstm_cell_691_bias_read_readvariableop<
8savev2_lstm_692_lstm_cell_692_kernel_read_readvariableopF
Bsavev2_lstm_692_lstm_cell_692_recurrent_kernel_read_readvariableop:
6savev2_lstm_692_lstm_cell_692_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_230_kernel_m_read_readvariableop4
0savev2_adam_dense_230_bias_m_read_readvariableopC
?savev2_adam_lstm_690_lstm_cell_690_kernel_m_read_readvariableopM
Isavev2_adam_lstm_690_lstm_cell_690_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_690_lstm_cell_690_bias_m_read_readvariableopC
?savev2_adam_lstm_691_lstm_cell_691_kernel_m_read_readvariableopM
Isavev2_adam_lstm_691_lstm_cell_691_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_691_lstm_cell_691_bias_m_read_readvariableopC
?savev2_adam_lstm_692_lstm_cell_692_kernel_m_read_readvariableopM
Isavev2_adam_lstm_692_lstm_cell_692_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_692_lstm_cell_692_bias_m_read_readvariableop6
2savev2_adam_dense_230_kernel_v_read_readvariableop4
0savev2_adam_dense_230_bias_v_read_readvariableopC
?savev2_adam_lstm_690_lstm_cell_690_kernel_v_read_readvariableopM
Isavev2_adam_lstm_690_lstm_cell_690_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_690_lstm_cell_690_bias_v_read_readvariableopC
?savev2_adam_lstm_691_lstm_cell_691_kernel_v_read_readvariableopM
Isavev2_adam_lstm_691_lstm_cell_691_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_691_lstm_cell_691_bias_v_read_readvariableopC
?savev2_adam_lstm_692_lstm_cell_692_kernel_v_read_readvariableopM
Isavev2_adam_lstm_692_lstm_cell_692_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_692_lstm_cell_692_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_230_kernel_read_readvariableop)savev2_dense_230_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_690_lstm_cell_690_kernel_read_readvariableopBsavev2_lstm_690_lstm_cell_690_recurrent_kernel_read_readvariableop6savev2_lstm_690_lstm_cell_690_bias_read_readvariableop8savev2_lstm_691_lstm_cell_691_kernel_read_readvariableopBsavev2_lstm_691_lstm_cell_691_recurrent_kernel_read_readvariableop6savev2_lstm_691_lstm_cell_691_bias_read_readvariableop8savev2_lstm_692_lstm_cell_692_kernel_read_readvariableopBsavev2_lstm_692_lstm_cell_692_recurrent_kernel_read_readvariableop6savev2_lstm_692_lstm_cell_692_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_230_kernel_m_read_readvariableop0savev2_adam_dense_230_bias_m_read_readvariableop?savev2_adam_lstm_690_lstm_cell_690_kernel_m_read_readvariableopIsavev2_adam_lstm_690_lstm_cell_690_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_690_lstm_cell_690_bias_m_read_readvariableop?savev2_adam_lstm_691_lstm_cell_691_kernel_m_read_readvariableopIsavev2_adam_lstm_691_lstm_cell_691_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_691_lstm_cell_691_bias_m_read_readvariableop?savev2_adam_lstm_692_lstm_cell_692_kernel_m_read_readvariableopIsavev2_adam_lstm_692_lstm_cell_692_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_692_lstm_cell_692_bias_m_read_readvariableop2savev2_adam_dense_230_kernel_v_read_readvariableop0savev2_adam_dense_230_bias_v_read_readvariableop?savev2_adam_lstm_690_lstm_cell_690_kernel_v_read_readvariableopIsavev2_adam_lstm_690_lstm_cell_690_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_690_lstm_cell_690_bias_v_read_readvariableop?savev2_adam_lstm_691_lstm_cell_691_kernel_v_read_readvariableopIsavev2_adam_lstm_691_lstm_cell_691_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_691_lstm_cell_691_bias_v_read_readvariableop?savev2_adam_lstm_692_lstm_cell_692_kernel_v_read_readvariableopIsavev2_adam_lstm_692_lstm_cell_692_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_692_lstm_cell_692_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3829705

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
?
?
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826799
lstm_690_input#
lstm_690_3826772:	?#
lstm_690_3826774:	d?
lstm_690_3826776:	?#
lstm_691_3826779:	d?#
lstm_691_3826781:	2?
lstm_691_3826783:	?"
lstm_692_3826786:2("
lstm_692_3826788:
(
lstm_692_3826790:(#
dense_230_3826793:

dense_230_3826795:
identity??!dense_230/StatefulPartitionedCall? lstm_690/StatefulPartitionedCall? lstm_691/StatefulPartitionedCall? lstm_692/StatefulPartitionedCall?
 lstm_690/StatefulPartitionedCallStatefulPartitionedCalllstm_690_inputlstm_690_3826772lstm_690_3826774lstm_690_3826776*
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3825803?
 lstm_691/StatefulPartitionedCallStatefulPartitionedCall)lstm_690/StatefulPartitionedCall:output:0lstm_691_3826779lstm_691_3826781lstm_691_3826783*
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3825953?
 lstm_692/StatefulPartitionedCallStatefulPartitionedCall)lstm_691/StatefulPartitionedCall:output:0lstm_692_3826786lstm_692_3826788lstm_692_3826790*
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3826103?
!dense_230/StatefulPartitionedCallStatefulPartitionedCall)lstm_692/StatefulPartitionedCall:output:0dense_230_3826793dense_230_3826795*
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
F__inference_dense_230_layer_call_and_return_conditional_losses_3826121y
IdentityIdentity*dense_230/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_230/StatefulPartitionedCall!^lstm_690/StatefulPartitionedCall!^lstm_691/StatefulPartitionedCall!^lstm_692/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_230/StatefulPartitionedCall!dense_230/StatefulPartitionedCall2D
 lstm_690/StatefulPartitionedCall lstm_690/StatefulPartitionedCall2D
 lstm_691/StatefulPartitionedCall lstm_691/StatefulPartitionedCall2D
 lstm_692/StatefulPartitionedCall lstm_692/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_690_input
?8
?
while_body_3828634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_631_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_631_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_631_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_631_matmul_readvariableop_resource:	d?G
4while_lstm_cell_631_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_631_biasadd_readvariableop_resource:	???*while/lstm_cell_631/BiasAdd/ReadVariableOp?)while/lstm_cell_631/MatMul/ReadVariableOp?+while/lstm_cell_631/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_631/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_631_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_631/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_631_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_631/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_631/addAddV2$while/lstm_cell_631/MatMul:product:0&while/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_631_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_631/BiasAddBiasAddwhile/lstm_cell_631/add:z:02while/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_631/splitSplit,while/lstm_cell_631/split/split_dim:output:0$while/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_631/SigmoidSigmoid"while/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_1Sigmoid"while/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mulMul!while/lstm_cell_631/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_631/ReluRelu"while/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_1Mulwhile/lstm_cell_631/Sigmoid:y:0&while/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/add_1AddV2while/lstm_cell_631/mul:z:0while/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_2Sigmoid"while/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_631/Relu_1Reluwhile/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_2Mul!while/lstm_cell_631/Sigmoid_2:y:0(while/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_631/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_631/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_631/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_631/BiasAdd/ReadVariableOp*^while/lstm_cell_631/MatMul/ReadVariableOp,^while/lstm_cell_631/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_631_biasadd_readvariableop_resource5while_lstm_cell_631_biasadd_readvariableop_resource_0"n
4while_lstm_cell_631_matmul_1_readvariableop_resource6while_lstm_cell_631_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_631_matmul_readvariableop_resource4while_lstm_cell_631_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_631/BiasAdd/ReadVariableOp*while/lstm_cell_631/BiasAdd/ReadVariableOp2V
)while/lstm_cell_631/MatMul/ReadVariableOp)while/lstm_cell_631/MatMul/ReadVariableOp2Z
+while/lstm_cell_631/MatMul_1/ReadVariableOp+while/lstm_cell_631/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826128

inputs#
lstm_690_3825804:	?#
lstm_690_3825806:	d?
lstm_690_3825808:	?#
lstm_691_3825954:	d?#
lstm_691_3825956:	2?
lstm_691_3825958:	?"
lstm_692_3826104:2("
lstm_692_3826106:
(
lstm_692_3826108:(#
dense_230_3826122:

dense_230_3826124:
identity??!dense_230/StatefulPartitionedCall? lstm_690/StatefulPartitionedCall? lstm_691/StatefulPartitionedCall? lstm_692/StatefulPartitionedCall?
 lstm_690/StatefulPartitionedCallStatefulPartitionedCallinputslstm_690_3825804lstm_690_3825806lstm_690_3825808*
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3825803?
 lstm_691/StatefulPartitionedCallStatefulPartitionedCall)lstm_690/StatefulPartitionedCall:output:0lstm_691_3825954lstm_691_3825956lstm_691_3825958*
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3825953?
 lstm_692/StatefulPartitionedCallStatefulPartitionedCall)lstm_691/StatefulPartitionedCall:output:0lstm_692_3826104lstm_692_3826106lstm_692_3826108*
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3826103?
!dense_230/StatefulPartitionedCallStatefulPartitionedCall)lstm_692/StatefulPartitionedCall:output:0dense_230_3826122dense_230_3826124*
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
F__inference_dense_230_layer_call_and_return_conditional_losses_3826121y
IdentityIdentity*dense_230/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_230/StatefulPartitionedCall!^lstm_690/StatefulPartitionedCall!^lstm_691/StatefulPartitionedCall!^lstm_692/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_230/StatefulPartitionedCall!dense_230/StatefulPartitionedCall2D
 lstm_690/StatefulPartitionedCall lstm_690/StatefulPartitionedCall2D
 lstm_691/StatefulPartitionedCall lstm_691/StatefulPartitionedCall2D
 lstm_692/StatefulPartitionedCall lstm_692/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_3830206
file_prefix3
!assignvariableop_dense_230_kernel:
/
!assignvariableop_1_dense_230_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_690_lstm_cell_690_kernel:	?M
:assignvariableop_8_lstm_690_lstm_cell_690_recurrent_kernel:	d?=
.assignvariableop_9_lstm_690_lstm_cell_690_bias:	?D
1assignvariableop_10_lstm_691_lstm_cell_691_kernel:	d?N
;assignvariableop_11_lstm_691_lstm_cell_691_recurrent_kernel:	2?>
/assignvariableop_12_lstm_691_lstm_cell_691_bias:	?C
1assignvariableop_13_lstm_692_lstm_cell_692_kernel:2(M
;assignvariableop_14_lstm_692_lstm_cell_692_recurrent_kernel:
(=
/assignvariableop_15_lstm_692_lstm_cell_692_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_230_kernel_m:
7
)assignvariableop_19_adam_dense_230_bias_m:K
8assignvariableop_20_adam_lstm_690_lstm_cell_690_kernel_m:	?U
Bassignvariableop_21_adam_lstm_690_lstm_cell_690_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_690_lstm_cell_690_bias_m:	?K
8assignvariableop_23_adam_lstm_691_lstm_cell_691_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_691_lstm_cell_691_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_691_lstm_cell_691_bias_m:	?J
8assignvariableop_26_adam_lstm_692_lstm_cell_692_kernel_m:2(T
Bassignvariableop_27_adam_lstm_692_lstm_cell_692_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_692_lstm_cell_692_bias_m:(=
+assignvariableop_29_adam_dense_230_kernel_v:
7
)assignvariableop_30_adam_dense_230_bias_v:K
8assignvariableop_31_adam_lstm_690_lstm_cell_690_kernel_v:	?U
Bassignvariableop_32_adam_lstm_690_lstm_cell_690_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_690_lstm_cell_690_bias_v:	?K
8assignvariableop_34_adam_lstm_691_lstm_cell_691_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_691_lstm_cell_691_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_691_lstm_cell_691_bias_v:	?J
8assignvariableop_37_adam_lstm_692_lstm_cell_692_kernel_v:2(T
Bassignvariableop_38_adam_lstm_692_lstm_cell_692_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_692_lstm_cell_692_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_230_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_230_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_690_lstm_cell_690_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_690_lstm_cell_690_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_690_lstm_cell_690_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_691_lstm_cell_691_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_691_lstm_cell_691_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_691_lstm_cell_691_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_692_lstm_cell_692_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_692_lstm_cell_692_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_692_lstm_cell_692_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_230_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_230_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_690_lstm_cell_690_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_690_lstm_cell_690_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_690_lstm_cell_690_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_691_lstm_cell_691_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_691_lstm_cell_691_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_691_lstm_cell_691_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_692_lstm_cell_692_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_692_lstm_cell_692_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_692_lstm_cell_692_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_230_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_230_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_690_lstm_cell_690_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_690_lstm_cell_690_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_690_lstm_cell_690_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_691_lstm_cell_691_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_691_lstm_cell_691_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_691_lstm_cell_691_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_692_lstm_cell_692_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_692_lstm_cell_692_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_692_lstm_cell_692_bias_vIdentity_39:output:0"/device:CPU:0*
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
?K
?
E__inference_lstm_690_layer_call_and_return_conditional_losses_3827959
inputs_0?
,lstm_cell_630_matmul_readvariableop_resource:	?A
.lstm_cell_630_matmul_1_readvariableop_resource:	d?<
-lstm_cell_630_biasadd_readvariableop_resource:	?
identity??$lstm_cell_630/BiasAdd/ReadVariableOp?#lstm_cell_630/MatMul/ReadVariableOp?%lstm_cell_630/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_630/MatMul/ReadVariableOpReadVariableOp,lstm_cell_630_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_630/MatMulMatMulstrided_slice_2:output:0+lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_630_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_630/MatMul_1MatMulzeros:output:0-lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_630/addAddV2lstm_cell_630/MatMul:product:0 lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_630_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_630/BiasAddBiasAddlstm_cell_630/add:z:0,lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_630/splitSplit&lstm_cell_630/split/split_dim:output:0lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_630/SigmoidSigmoidlstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_1Sigmoidlstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_630/mulMullstm_cell_630/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_630/ReluRelulstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_1Mullstm_cell_630/Sigmoid:y:0 lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_630/add_1AddV2lstm_cell_630/mul:z:0lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_2Sigmoidlstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_630/Relu_1Relulstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_2Mullstm_cell_630/Sigmoid_2:y:0"lstm_cell_630/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_630_matmul_readvariableop_resource.lstm_cell_630_matmul_1_readvariableop_resource-lstm_cell_630_biasadd_readvariableop_resource*
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
while_body_3827875*
condR
while_cond_3827874*K
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
NoOpNoOp%^lstm_cell_630/BiasAdd/ReadVariableOp$^lstm_cell_630/MatMul/ReadVariableOp&^lstm_cell_630/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_630/BiasAdd/ReadVariableOp$lstm_cell_630/BiasAdd/ReadVariableOp2J
#lstm_cell_630/MatMul/ReadVariableOp#lstm_cell_630/MatMul/ReadVariableOp2N
%lstm_cell_630/MatMul_1/ReadVariableOp%lstm_cell_630/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_692_layer_call_and_return_conditional_losses_3825454

inputs'
lstm_cell_632_3825372:2('
lstm_cell_632_3825374:
(#
lstm_cell_632_3825376:(
identity??%lstm_cell_632/StatefulPartitionedCall?while;
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
%lstm_cell_632/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_632_3825372lstm_cell_632_3825374lstm_cell_632_3825376*
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3825371n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_632_3825372lstm_cell_632_3825374lstm_cell_632_3825376*
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
while_body_3825385*
condR
while_cond_3825384*K
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
NoOpNoOp&^lstm_cell_632/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_632/StatefulPartitionedCall%lstm_cell_632/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
+__inference_dense_230_layer_call_fn_3829629

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
F__inference_dense_230_layer_call_and_return_conditional_losses_3826121o
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3826649

inputs?
,lstm_cell_630_matmul_readvariableop_resource:	?A
.lstm_cell_630_matmul_1_readvariableop_resource:	d?<
-lstm_cell_630_biasadd_readvariableop_resource:	?
identity??$lstm_cell_630/BiasAdd/ReadVariableOp?#lstm_cell_630/MatMul/ReadVariableOp?%lstm_cell_630/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_630/MatMul/ReadVariableOpReadVariableOp,lstm_cell_630_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_630/MatMulMatMulstrided_slice_2:output:0+lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_630_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_630/MatMul_1MatMulzeros:output:0-lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_630/addAddV2lstm_cell_630/MatMul:product:0 lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_630_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_630/BiasAddBiasAddlstm_cell_630/add:z:0,lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_630/splitSplit&lstm_cell_630/split/split_dim:output:0lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_630/SigmoidSigmoidlstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_1Sigmoidlstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_630/mulMullstm_cell_630/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_630/ReluRelulstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_1Mullstm_cell_630/Sigmoid:y:0 lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_630/add_1AddV2lstm_cell_630/mul:z:0lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_630/Sigmoid_2Sigmoidlstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_630/Relu_1Relulstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_630/mul_2Mullstm_cell_630/Sigmoid_2:y:0"lstm_cell_630/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_630_matmul_readvariableop_resource.lstm_cell_630_matmul_1_readvariableop_resource-lstm_cell_630_biasadd_readvariableop_resource*
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
while_body_3826565*
condR
while_cond_3826564*K
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
NoOpNoOp%^lstm_cell_630/BiasAdd/ReadVariableOp$^lstm_cell_630/MatMul/ReadVariableOp&^lstm_cell_630/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_630/BiasAdd/ReadVariableOp$lstm_cell_630/BiasAdd/ReadVariableOp2J
#lstm_cell_630/MatMul/ReadVariableOp#lstm_cell_630/MatMul/ReadVariableOp2N
%lstm_cell_630/MatMul_1/ReadVariableOp%lstm_cell_630/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3824684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3824684___redundant_placeholder05
1while_while_cond_3824684___redundant_placeholder15
1while_while_cond_3824684___redundant_placeholder25
1while_while_cond_3824684___redundant_placeholder3
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
?
E__inference_lstm_692_layer_call_and_return_conditional_losses_3825645

inputs'
lstm_cell_632_3825563:2('
lstm_cell_632_3825565:
(#
lstm_cell_632_3825567:(
identity??%lstm_cell_632/StatefulPartitionedCall?while;
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
%lstm_cell_632/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_632_3825563lstm_cell_632_3825565lstm_cell_632_3825567*
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3825517n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_632_3825563lstm_cell_632_3825565lstm_cell_632_3825567*
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
while_body_3825576*
condR
while_cond_3825575*K
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
NoOpNoOp&^lstm_cell_632/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_632/StatefulPartitionedCall%lstm_cell_632/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3827875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_630_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_630_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_630_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_630_matmul_readvariableop_resource:	?G
4while_lstm_cell_630_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_630_biasadd_readvariableop_resource:	???*while/lstm_cell_630/BiasAdd/ReadVariableOp?)while/lstm_cell_630/MatMul/ReadVariableOp?+while/lstm_cell_630/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_630/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_630_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_630/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_630_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_630/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_630/addAddV2$while/lstm_cell_630/MatMul:product:0&while/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_630_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_630/BiasAddBiasAddwhile/lstm_cell_630/add:z:02while/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_630/splitSplit,while/lstm_cell_630/split/split_dim:output:0$while/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_630/SigmoidSigmoid"while/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_1Sigmoid"while/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mulMul!while/lstm_cell_630/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_630/ReluRelu"while/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_1Mulwhile/lstm_cell_630/Sigmoid:y:0&while/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/add_1AddV2while/lstm_cell_630/mul:z:0while/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_2Sigmoid"while/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_630/Relu_1Reluwhile/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_2Mul!while/lstm_cell_630/Sigmoid_2:y:0(while/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_630/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_630/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_630/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_630/BiasAdd/ReadVariableOp*^while/lstm_cell_630/MatMul/ReadVariableOp,^while/lstm_cell_630/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_630_biasadd_readvariableop_resource5while_lstm_cell_630_biasadd_readvariableop_resource_0"n
4while_lstm_cell_630_matmul_1_readvariableop_resource6while_lstm_cell_630_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_630_matmul_readvariableop_resource4while_lstm_cell_630_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_630/BiasAdd/ReadVariableOp*while/lstm_cell_630/BiasAdd/ReadVariableOp2V
)while/lstm_cell_630/MatMul/ReadVariableOp)while/lstm_cell_630/MatMul/ReadVariableOp2Z
+while/lstm_cell_630/MatMul_1/ReadVariableOp+while/lstm_cell_630/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3824876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_630_3824900_0:	?0
while_lstm_cell_630_3824902_0:	d?,
while_lstm_cell_630_3824904_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_630_3824900:	?.
while_lstm_cell_630_3824902:	d?*
while_lstm_cell_630_3824904:	???+while/lstm_cell_630/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_630/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_630_3824900_0while_lstm_cell_630_3824902_0while_lstm_cell_630_3824904_0*
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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3824817?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_630/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_630/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_630/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_630/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_630_3824900while_lstm_cell_630_3824900_0"<
while_lstm_cell_630_3824902while_lstm_cell_630_3824902_0"<
while_lstm_cell_630_3824904while_lstm_cell_630_3824904_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_630/StatefulPartitionedCall+while/lstm_cell_630/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_692_layer_call_fn_3829026
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3825645o
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
?
E__inference_lstm_691_layer_call_and_return_conditional_losses_3825295

inputs(
lstm_cell_631_3825213:	d?(
lstm_cell_631_3825215:	2?$
lstm_cell_631_3825217:	?
identity??%lstm_cell_631/StatefulPartitionedCall?while;
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
%lstm_cell_631/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_631_3825213lstm_cell_631_3825215lstm_cell_631_3825217*
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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3825167n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_631_3825213lstm_cell_631_3825215lstm_cell_631_3825217*
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
while_body_3825226*
condR
while_cond_3825225*K
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
NoOpNoOp&^lstm_cell_631/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_631/StatefulPartitionedCall%lstm_cell_631/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3829803

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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3825953

inputs?
,lstm_cell_631_matmul_readvariableop_resource:	d?A
.lstm_cell_631_matmul_1_readvariableop_resource:	2?<
-lstm_cell_631_biasadd_readvariableop_resource:	?
identity??$lstm_cell_631/BiasAdd/ReadVariableOp?#lstm_cell_631/MatMul/ReadVariableOp?%lstm_cell_631/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_631/MatMul/ReadVariableOpReadVariableOp,lstm_cell_631_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_631/MatMulMatMulstrided_slice_2:output:0+lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_631_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_631/MatMul_1MatMulzeros:output:0-lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_631/addAddV2lstm_cell_631/MatMul:product:0 lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_631_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_631/BiasAddBiasAddlstm_cell_631/add:z:0,lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_631/splitSplit&lstm_cell_631/split/split_dim:output:0lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_631/SigmoidSigmoidlstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_1Sigmoidlstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_631/mulMullstm_cell_631/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_631/ReluRelulstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_1Mullstm_cell_631/Sigmoid:y:0 lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_631/add_1AddV2lstm_cell_631/mul:z:0lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_2Sigmoidlstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_631/Relu_1Relulstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_2Mullstm_cell_631/Sigmoid_2:y:0"lstm_cell_631/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_631_matmul_readvariableop_resource.lstm_cell_631_matmul_1_readvariableop_resource-lstm_cell_631_biasadd_readvariableop_resource*
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
while_body_3825869*
condR
while_cond_3825868*K
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
NoOpNoOp%^lstm_cell_631/BiasAdd/ReadVariableOp$^lstm_cell_631/MatMul/ReadVariableOp&^lstm_cell_631/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_631/BiasAdd/ReadVariableOp$lstm_cell_631/BiasAdd/ReadVariableOp2J
#lstm_cell_631/MatMul/ReadVariableOp#lstm_cell_631/MatMul/ReadVariableOp2N
%lstm_cell_631/MatMul_1/ReadVariableOp%lstm_cell_631/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_230_layer_call_fn_3826918

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
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826717o
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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3829737

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
?J
?
E__inference_lstm_691_layer_call_and_return_conditional_losses_3826484

inputs?
,lstm_cell_631_matmul_readvariableop_resource:	d?A
.lstm_cell_631_matmul_1_readvariableop_resource:	2?<
-lstm_cell_631_biasadd_readvariableop_resource:	?
identity??$lstm_cell_631/BiasAdd/ReadVariableOp?#lstm_cell_631/MatMul/ReadVariableOp?%lstm_cell_631/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_631/MatMul/ReadVariableOpReadVariableOp,lstm_cell_631_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_631/MatMulMatMulstrided_slice_2:output:0+lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_631_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_631/MatMul_1MatMulzeros:output:0-lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_631/addAddV2lstm_cell_631/MatMul:product:0 lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_631_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_631/BiasAddBiasAddlstm_cell_631/add:z:0,lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_631/splitSplit&lstm_cell_631/split/split_dim:output:0lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_631/SigmoidSigmoidlstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_1Sigmoidlstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_631/mulMullstm_cell_631/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_631/ReluRelulstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_1Mullstm_cell_631/Sigmoid:y:0 lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_631/add_1AddV2lstm_cell_631/mul:z:0lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_2Sigmoidlstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_631/Relu_1Relulstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_2Mullstm_cell_631/Sigmoid_2:y:0"lstm_cell_631/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_631_matmul_readvariableop_resource.lstm_cell_631_matmul_1_readvariableop_resource-lstm_cell_631_biasadd_readvariableop_resource*
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
while_body_3826400*
condR
while_cond_3826399*K
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
NoOpNoOp%^lstm_cell_631/BiasAdd/ReadVariableOp$^lstm_cell_631/MatMul/ReadVariableOp&^lstm_cell_631/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_631/BiasAdd/ReadVariableOp$lstm_cell_631/BiasAdd/ReadVariableOp2J
#lstm_cell_631/MatMul/ReadVariableOp#lstm_cell_631/MatMul/ReadVariableOp2N
%lstm_cell_631/MatMul_1/ReadVariableOp%lstm_cell_631/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_230_layer_call_fn_3826153
lstm_690_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_690_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826128o
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
_user_specified_namelstm_690_input
?8
?
while_body_3825719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_630_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_630_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_630_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_630_matmul_readvariableop_resource:	?G
4while_lstm_cell_630_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_630_biasadd_readvariableop_resource:	???*while/lstm_cell_630/BiasAdd/ReadVariableOp?)while/lstm_cell_630/MatMul/ReadVariableOp?+while/lstm_cell_630/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_630/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_630_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_630/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_630_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_630/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_630/addAddV2$while/lstm_cell_630/MatMul:product:0&while/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_630_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_630/BiasAddBiasAddwhile/lstm_cell_630/add:z:02while/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_630/splitSplit,while/lstm_cell_630/split/split_dim:output:0$while/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_630/SigmoidSigmoid"while/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_1Sigmoid"while/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mulMul!while/lstm_cell_630/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_630/ReluRelu"while/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_1Mulwhile/lstm_cell_630/Sigmoid:y:0&while/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/add_1AddV2while/lstm_cell_630/mul:z:0while/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_630/Sigmoid_2Sigmoid"while/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_630/Relu_1Reluwhile/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_630/mul_2Mul!while/lstm_cell_630/Sigmoid_2:y:0(while/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_630/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_630/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_630/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_630/BiasAdd/ReadVariableOp*^while/lstm_cell_630/MatMul/ReadVariableOp,^while/lstm_cell_630/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_630_biasadd_readvariableop_resource5while_lstm_cell_630_biasadd_readvariableop_resource_0"n
4while_lstm_cell_630_matmul_1_readvariableop_resource6while_lstm_cell_630_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_630_matmul_readvariableop_resource4while_lstm_cell_630_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_630/BiasAdd/ReadVariableOp*while/lstm_cell_630/BiasAdd/ReadVariableOp2V
)while/lstm_cell_630/MatMul/ReadVariableOp)while/lstm_cell_630/MatMul/ReadVariableOp2Z
+while/lstm_cell_630/MatMul_1/ReadVariableOp+while/lstm_cell_630/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3824685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_630_3824709_0:	?0
while_lstm_cell_630_3824711_0:	d?,
while_lstm_cell_630_3824713_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_630_3824709:	?.
while_lstm_cell_630_3824711:	d?*
while_lstm_cell_630_3824713:	???+while/lstm_cell_630/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_630/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_630_3824709_0while_lstm_cell_630_3824711_0while_lstm_cell_630_3824713_0*
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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3824671?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_630/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_630/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_630/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_630/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_630_3824709while_lstm_cell_630_3824709_0"<
while_lstm_cell_630_3824711while_lstm_cell_630_3824711_0"<
while_lstm_cell_630_3824713while_lstm_cell_630_3824713_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_630/StatefulPartitionedCall+while/lstm_cell_630/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_691_layer_call_fn_3828432

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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3826484s
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
while_cond_3826399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3826399___redundant_placeholder05
1while_while_cond_3826399___redundant_placeholder15
1while_while_cond_3826399___redundant_placeholder25
1while_while_cond_3826399___redundant_placeholder3
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3826319

inputs>
,lstm_cell_632_matmul_readvariableop_resource:2(@
.lstm_cell_632_matmul_1_readvariableop_resource:
(;
-lstm_cell_632_biasadd_readvariableop_resource:(
identity??$lstm_cell_632/BiasAdd/ReadVariableOp?#lstm_cell_632/MatMul/ReadVariableOp?%lstm_cell_632/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_632/MatMul/ReadVariableOpReadVariableOp,lstm_cell_632_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_632/MatMulMatMulstrided_slice_2:output:0+lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_632_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_632/MatMul_1MatMulzeros:output:0-lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_632/addAddV2lstm_cell_632/MatMul:product:0 lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_632_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_632/BiasAddBiasAddlstm_cell_632/add:z:0,lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_632/splitSplit&lstm_cell_632/split/split_dim:output:0lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_632/SigmoidSigmoidlstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_1Sigmoidlstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_632/mulMullstm_cell_632/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_632/ReluRelulstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_1Mullstm_cell_632/Sigmoid:y:0 lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_632/add_1AddV2lstm_cell_632/mul:z:0lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_632/Sigmoid_2Sigmoidlstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_632/Relu_1Relulstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_632/mul_2Mullstm_cell_632/Sigmoid_2:y:0"lstm_cell_632/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_632_matmul_readvariableop_resource.lstm_cell_632_matmul_1_readvariableop_resource-lstm_cell_632_biasadd_readvariableop_resource*
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
while_body_3826235*
condR
while_cond_3826234*K
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
NoOpNoOp%^lstm_cell_632/BiasAdd/ReadVariableOp$^lstm_cell_632/MatMul/ReadVariableOp&^lstm_cell_632/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_632/BiasAdd/ReadVariableOp$lstm_cell_632/BiasAdd/ReadVariableOp2J
#lstm_cell_632/MatMul/ReadVariableOp#lstm_cell_632/MatMul/ReadVariableOp2N
%lstm_cell_632/MatMul_1/ReadVariableOp%lstm_cell_632/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3826400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_631_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_631_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_631_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_631_matmul_readvariableop_resource:	d?G
4while_lstm_cell_631_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_631_biasadd_readvariableop_resource:	???*while/lstm_cell_631/BiasAdd/ReadVariableOp?)while/lstm_cell_631/MatMul/ReadVariableOp?+while/lstm_cell_631/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_631/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_631_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_631/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_631_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_631/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_631/addAddV2$while/lstm_cell_631/MatMul:product:0&while/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_631_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_631/BiasAddBiasAddwhile/lstm_cell_631/add:z:02while/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_631/splitSplit,while/lstm_cell_631/split/split_dim:output:0$while/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_631/SigmoidSigmoid"while/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_1Sigmoid"while/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mulMul!while/lstm_cell_631/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_631/ReluRelu"while/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_1Mulwhile/lstm_cell_631/Sigmoid:y:0&while/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/add_1AddV2while/lstm_cell_631/mul:z:0while/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_2Sigmoid"while/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_631/Relu_1Reluwhile/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_2Mul!while/lstm_cell_631/Sigmoid_2:y:0(while/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_631/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_631/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_631/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_631/BiasAdd/ReadVariableOp*^while/lstm_cell_631/MatMul/ReadVariableOp,^while/lstm_cell_631/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_631_biasadd_readvariableop_resource5while_lstm_cell_631_biasadd_readvariableop_resource_0"n
4while_lstm_cell_631_matmul_1_readvariableop_resource6while_lstm_cell_631_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_631_matmul_readvariableop_resource4while_lstm_cell_631_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_631/BiasAdd/ReadVariableOp*while/lstm_cell_631/BiasAdd/ReadVariableOp2V
)while/lstm_cell_631/MatMul/ReadVariableOp)while/lstm_cell_631/MatMul/ReadVariableOp2Z
+while/lstm_cell_631/MatMul_1/ReadVariableOp+while/lstm_cell_631/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_692_while_cond_3827681.
*lstm_692_while_lstm_692_while_loop_counter4
0lstm_692_while_lstm_692_while_maximum_iterations
lstm_692_while_placeholder 
lstm_692_while_placeholder_1 
lstm_692_while_placeholder_2 
lstm_692_while_placeholder_30
,lstm_692_while_less_lstm_692_strided_slice_1G
Clstm_692_while_lstm_692_while_cond_3827681___redundant_placeholder0G
Clstm_692_while_lstm_692_while_cond_3827681___redundant_placeholder1G
Clstm_692_while_lstm_692_while_cond_3827681___redundant_placeholder2G
Clstm_692_while_lstm_692_while_cond_3827681___redundant_placeholder3
lstm_692_while_identity
?
lstm_692/while/LessLesslstm_692_while_placeholder,lstm_692_while_less_lstm_692_strided_slice_1*
T0*
_output_shapes
: ]
lstm_692/while/IdentityIdentitylstm_692/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_692_while_identity lstm_692/while/Identity:output:0*(
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
while_cond_3825868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3825868___redundant_placeholder05
1while_while_cond_3825868___redundant_placeholder15
1while_while_cond_3825868___redundant_placeholder25
1while_while_cond_3825868___redundant_placeholder3
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
K__inference_sequential_230_layer_call_and_return_conditional_losses_3827345

inputsH
5lstm_690_lstm_cell_630_matmul_readvariableop_resource:	?J
7lstm_690_lstm_cell_630_matmul_1_readvariableop_resource:	d?E
6lstm_690_lstm_cell_630_biasadd_readvariableop_resource:	?H
5lstm_691_lstm_cell_631_matmul_readvariableop_resource:	d?J
7lstm_691_lstm_cell_631_matmul_1_readvariableop_resource:	2?E
6lstm_691_lstm_cell_631_biasadd_readvariableop_resource:	?G
5lstm_692_lstm_cell_632_matmul_readvariableop_resource:2(I
7lstm_692_lstm_cell_632_matmul_1_readvariableop_resource:
(D
6lstm_692_lstm_cell_632_biasadd_readvariableop_resource:(:
(dense_230_matmul_readvariableop_resource:
7
)dense_230_biasadd_readvariableop_resource:
identity?? dense_230/BiasAdd/ReadVariableOp?dense_230/MatMul/ReadVariableOp?-lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp?,lstm_690/lstm_cell_630/MatMul/ReadVariableOp?.lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp?lstm_690/while?-lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp?,lstm_691/lstm_cell_631/MatMul/ReadVariableOp?.lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp?lstm_691/while?-lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp?,lstm_692/lstm_cell_632/MatMul/ReadVariableOp?.lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp?lstm_692/whileD
lstm_690/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_690/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_690/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_690/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_690/strided_sliceStridedSlicelstm_690/Shape:output:0%lstm_690/strided_slice/stack:output:0'lstm_690/strided_slice/stack_1:output:0'lstm_690/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_690/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_690/zeros/packedPacklstm_690/strided_slice:output:0 lstm_690/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_690/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_690/zerosFilllstm_690/zeros/packed:output:0lstm_690/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_690/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_690/zeros_1/packedPacklstm_690/strided_slice:output:0"lstm_690/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_690/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_690/zeros_1Fill lstm_690/zeros_1/packed:output:0lstm_690/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_690/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_690/transpose	Transposeinputs lstm_690/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_690/Shape_1Shapelstm_690/transpose:y:0*
T0*
_output_shapes
:h
lstm_690/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_690/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_690/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_690/strided_slice_1StridedSlicelstm_690/Shape_1:output:0'lstm_690/strided_slice_1/stack:output:0)lstm_690/strided_slice_1/stack_1:output:0)lstm_690/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_690/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_690/TensorArrayV2TensorListReserve-lstm_690/TensorArrayV2/element_shape:output:0!lstm_690/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_690/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_690/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_690/transpose:y:0Glstm_690/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_690/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_690/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_690/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_690/strided_slice_2StridedSlicelstm_690/transpose:y:0'lstm_690/strided_slice_2/stack:output:0)lstm_690/strided_slice_2/stack_1:output:0)lstm_690/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_690/lstm_cell_630/MatMul/ReadVariableOpReadVariableOp5lstm_690_lstm_cell_630_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_690/lstm_cell_630/MatMulMatMul!lstm_690/strided_slice_2:output:04lstm_690/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_690/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp7lstm_690_lstm_cell_630_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_690/lstm_cell_630/MatMul_1MatMullstm_690/zeros:output:06lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_690/lstm_cell_630/addAddV2'lstm_690/lstm_cell_630/MatMul:product:0)lstm_690/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_690/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp6lstm_690_lstm_cell_630_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_690/lstm_cell_630/BiasAddBiasAddlstm_690/lstm_cell_630/add:z:05lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_690/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_690/lstm_cell_630/splitSplit/lstm_690/lstm_cell_630/split/split_dim:output:0'lstm_690/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_690/lstm_cell_630/SigmoidSigmoid%lstm_690/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_690/lstm_cell_630/Sigmoid_1Sigmoid%lstm_690/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_690/lstm_cell_630/mulMul$lstm_690/lstm_cell_630/Sigmoid_1:y:0lstm_690/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_690/lstm_cell_630/ReluRelu%lstm_690/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_690/lstm_cell_630/mul_1Mul"lstm_690/lstm_cell_630/Sigmoid:y:0)lstm_690/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_690/lstm_cell_630/add_1AddV2lstm_690/lstm_cell_630/mul:z:0 lstm_690/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_690/lstm_cell_630/Sigmoid_2Sigmoid%lstm_690/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_690/lstm_cell_630/Relu_1Relu lstm_690/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_690/lstm_cell_630/mul_2Mul$lstm_690/lstm_cell_630/Sigmoid_2:y:0+lstm_690/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_690/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_690/TensorArrayV2_1TensorListReserve/lstm_690/TensorArrayV2_1/element_shape:output:0!lstm_690/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_690/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_690/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_690/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_690/whileWhile$lstm_690/while/loop_counter:output:0*lstm_690/while/maximum_iterations:output:0lstm_690/time:output:0!lstm_690/TensorArrayV2_1:handle:0lstm_690/zeros:output:0lstm_690/zeros_1:output:0!lstm_690/strided_slice_1:output:0@lstm_690/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_690_lstm_cell_630_matmul_readvariableop_resource7lstm_690_lstm_cell_630_matmul_1_readvariableop_resource6lstm_690_lstm_cell_630_biasadd_readvariableop_resource*
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
lstm_690_while_body_3826977*'
condR
lstm_690_while_cond_3826976*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_690/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_690/TensorArrayV2Stack/TensorListStackTensorListStacklstm_690/while:output:3Blstm_690/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_690/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_690/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_690/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_690/strided_slice_3StridedSlice4lstm_690/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_690/strided_slice_3/stack:output:0)lstm_690/strided_slice_3/stack_1:output:0)lstm_690/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_690/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_690/transpose_1	Transpose4lstm_690/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_690/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_690/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_691/ShapeShapelstm_690/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_691/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_691/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_691/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_691/strided_sliceStridedSlicelstm_691/Shape:output:0%lstm_691/strided_slice/stack:output:0'lstm_691/strided_slice/stack_1:output:0'lstm_691/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_691/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_691/zeros/packedPacklstm_691/strided_slice:output:0 lstm_691/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_691/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_691/zerosFilllstm_691/zeros/packed:output:0lstm_691/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_691/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_691/zeros_1/packedPacklstm_691/strided_slice:output:0"lstm_691/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_691/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_691/zeros_1Fill lstm_691/zeros_1/packed:output:0lstm_691/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_691/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_691/transpose	Transposelstm_690/transpose_1:y:0 lstm_691/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_691/Shape_1Shapelstm_691/transpose:y:0*
T0*
_output_shapes
:h
lstm_691/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_691/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_691/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_691/strided_slice_1StridedSlicelstm_691/Shape_1:output:0'lstm_691/strided_slice_1/stack:output:0)lstm_691/strided_slice_1/stack_1:output:0)lstm_691/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_691/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_691/TensorArrayV2TensorListReserve-lstm_691/TensorArrayV2/element_shape:output:0!lstm_691/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_691/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_691/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_691/transpose:y:0Glstm_691/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_691/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_691/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_691/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_691/strided_slice_2StridedSlicelstm_691/transpose:y:0'lstm_691/strided_slice_2/stack:output:0)lstm_691/strided_slice_2/stack_1:output:0)lstm_691/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_691/lstm_cell_631/MatMul/ReadVariableOpReadVariableOp5lstm_691_lstm_cell_631_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_691/lstm_cell_631/MatMulMatMul!lstm_691/strided_slice_2:output:04lstm_691/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_691/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp7lstm_691_lstm_cell_631_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_691/lstm_cell_631/MatMul_1MatMullstm_691/zeros:output:06lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_691/lstm_cell_631/addAddV2'lstm_691/lstm_cell_631/MatMul:product:0)lstm_691/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_691/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp6lstm_691_lstm_cell_631_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_691/lstm_cell_631/BiasAddBiasAddlstm_691/lstm_cell_631/add:z:05lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_691/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_691/lstm_cell_631/splitSplit/lstm_691/lstm_cell_631/split/split_dim:output:0'lstm_691/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_691/lstm_cell_631/SigmoidSigmoid%lstm_691/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_691/lstm_cell_631/Sigmoid_1Sigmoid%lstm_691/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_691/lstm_cell_631/mulMul$lstm_691/lstm_cell_631/Sigmoid_1:y:0lstm_691/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_691/lstm_cell_631/ReluRelu%lstm_691/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_691/lstm_cell_631/mul_1Mul"lstm_691/lstm_cell_631/Sigmoid:y:0)lstm_691/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_691/lstm_cell_631/add_1AddV2lstm_691/lstm_cell_631/mul:z:0 lstm_691/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_691/lstm_cell_631/Sigmoid_2Sigmoid%lstm_691/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_691/lstm_cell_631/Relu_1Relu lstm_691/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_691/lstm_cell_631/mul_2Mul$lstm_691/lstm_cell_631/Sigmoid_2:y:0+lstm_691/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_691/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_691/TensorArrayV2_1TensorListReserve/lstm_691/TensorArrayV2_1/element_shape:output:0!lstm_691/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_691/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_691/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_691/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_691/whileWhile$lstm_691/while/loop_counter:output:0*lstm_691/while/maximum_iterations:output:0lstm_691/time:output:0!lstm_691/TensorArrayV2_1:handle:0lstm_691/zeros:output:0lstm_691/zeros_1:output:0!lstm_691/strided_slice_1:output:0@lstm_691/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_691_lstm_cell_631_matmul_readvariableop_resource7lstm_691_lstm_cell_631_matmul_1_readvariableop_resource6lstm_691_lstm_cell_631_biasadd_readvariableop_resource*
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
lstm_691_while_body_3827116*'
condR
lstm_691_while_cond_3827115*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_691/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_691/TensorArrayV2Stack/TensorListStackTensorListStacklstm_691/while:output:3Blstm_691/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_691/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_691/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_691/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_691/strided_slice_3StridedSlice4lstm_691/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_691/strided_slice_3/stack:output:0)lstm_691/strided_slice_3/stack_1:output:0)lstm_691/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_691/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_691/transpose_1	Transpose4lstm_691/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_691/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_691/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_692/ShapeShapelstm_691/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_692/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_692/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_692/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_692/strided_sliceStridedSlicelstm_692/Shape:output:0%lstm_692/strided_slice/stack:output:0'lstm_692/strided_slice/stack_1:output:0'lstm_692/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_692/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_692/zeros/packedPacklstm_692/strided_slice:output:0 lstm_692/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_692/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_692/zerosFilllstm_692/zeros/packed:output:0lstm_692/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_692/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_692/zeros_1/packedPacklstm_692/strided_slice:output:0"lstm_692/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_692/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_692/zeros_1Fill lstm_692/zeros_1/packed:output:0lstm_692/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_692/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_692/transpose	Transposelstm_691/transpose_1:y:0 lstm_692/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_692/Shape_1Shapelstm_692/transpose:y:0*
T0*
_output_shapes
:h
lstm_692/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_692/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_692/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_692/strided_slice_1StridedSlicelstm_692/Shape_1:output:0'lstm_692/strided_slice_1/stack:output:0)lstm_692/strided_slice_1/stack_1:output:0)lstm_692/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_692/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_692/TensorArrayV2TensorListReserve-lstm_692/TensorArrayV2/element_shape:output:0!lstm_692/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_692/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_692/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_692/transpose:y:0Glstm_692/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_692/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_692/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_692/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_692/strided_slice_2StridedSlicelstm_692/transpose:y:0'lstm_692/strided_slice_2/stack:output:0)lstm_692/strided_slice_2/stack_1:output:0)lstm_692/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_692/lstm_cell_632/MatMul/ReadVariableOpReadVariableOp5lstm_692_lstm_cell_632_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_692/lstm_cell_632/MatMulMatMul!lstm_692/strided_slice_2:output:04lstm_692/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_692/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp7lstm_692_lstm_cell_632_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_692/lstm_cell_632/MatMul_1MatMullstm_692/zeros:output:06lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_692/lstm_cell_632/addAddV2'lstm_692/lstm_cell_632/MatMul:product:0)lstm_692/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_692/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp6lstm_692_lstm_cell_632_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_692/lstm_cell_632/BiasAddBiasAddlstm_692/lstm_cell_632/add:z:05lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_692/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_692/lstm_cell_632/splitSplit/lstm_692/lstm_cell_632/split/split_dim:output:0'lstm_692/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_692/lstm_cell_632/SigmoidSigmoid%lstm_692/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_692/lstm_cell_632/Sigmoid_1Sigmoid%lstm_692/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_692/lstm_cell_632/mulMul$lstm_692/lstm_cell_632/Sigmoid_1:y:0lstm_692/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_692/lstm_cell_632/ReluRelu%lstm_692/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_692/lstm_cell_632/mul_1Mul"lstm_692/lstm_cell_632/Sigmoid:y:0)lstm_692/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_692/lstm_cell_632/add_1AddV2lstm_692/lstm_cell_632/mul:z:0 lstm_692/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_692/lstm_cell_632/Sigmoid_2Sigmoid%lstm_692/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_692/lstm_cell_632/Relu_1Relu lstm_692/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_692/lstm_cell_632/mul_2Mul$lstm_692/lstm_cell_632/Sigmoid_2:y:0+lstm_692/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_692/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_692/TensorArrayV2_1TensorListReserve/lstm_692/TensorArrayV2_1/element_shape:output:0!lstm_692/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_692/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_692/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_692/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_692/whileWhile$lstm_692/while/loop_counter:output:0*lstm_692/while/maximum_iterations:output:0lstm_692/time:output:0!lstm_692/TensorArrayV2_1:handle:0lstm_692/zeros:output:0lstm_692/zeros_1:output:0!lstm_692/strided_slice_1:output:0@lstm_692/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_692_lstm_cell_632_matmul_readvariableop_resource7lstm_692_lstm_cell_632_matmul_1_readvariableop_resource6lstm_692_lstm_cell_632_biasadd_readvariableop_resource*
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
lstm_692_while_body_3827255*'
condR
lstm_692_while_cond_3827254*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_692/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_692/TensorArrayV2Stack/TensorListStackTensorListStacklstm_692/while:output:3Blstm_692/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_692/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_692/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_692/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_692/strided_slice_3StridedSlice4lstm_692/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_692/strided_slice_3/stack:output:0)lstm_692/strided_slice_3/stack_1:output:0)lstm_692/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_692/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_692/transpose_1	Transpose4lstm_692/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_692/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_692/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_230/MatMul/ReadVariableOpReadVariableOp(dense_230_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_230/MatMulMatMul!lstm_692/strided_slice_3:output:0'dense_230/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_230/BiasAdd/ReadVariableOpReadVariableOp)dense_230_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_230/BiasAddBiasAdddense_230/MatMul:product:0(dense_230/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_230/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_230/BiasAdd/ReadVariableOp ^dense_230/MatMul/ReadVariableOp.^lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp-^lstm_690/lstm_cell_630/MatMul/ReadVariableOp/^lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp^lstm_690/while.^lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp-^lstm_691/lstm_cell_631/MatMul/ReadVariableOp/^lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp^lstm_691/while.^lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp-^lstm_692/lstm_cell_632/MatMul/ReadVariableOp/^lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp^lstm_692/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_230/BiasAdd/ReadVariableOp dense_230/BiasAdd/ReadVariableOp2B
dense_230/MatMul/ReadVariableOpdense_230/MatMul/ReadVariableOp2^
-lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp-lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp2\
,lstm_690/lstm_cell_630/MatMul/ReadVariableOp,lstm_690/lstm_cell_630/MatMul/ReadVariableOp2`
.lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp.lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp2 
lstm_690/whilelstm_690/while2^
-lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp-lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp2\
,lstm_691/lstm_cell_631/MatMul/ReadVariableOp,lstm_691/lstm_cell_631/MatMul/ReadVariableOp2`
.lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp.lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp2 
lstm_691/whilelstm_691/while2^
-lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp-lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp2\
,lstm_692/lstm_cell_632/MatMul/ReadVariableOp,lstm_692/lstm_cell_632/MatMul/ReadVariableOp2`
.lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp.lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp2 
lstm_692/whilelstm_692/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_692_while_body_3827255.
*lstm_692_while_lstm_692_while_loop_counter4
0lstm_692_while_lstm_692_while_maximum_iterations
lstm_692_while_placeholder 
lstm_692_while_placeholder_1 
lstm_692_while_placeholder_2 
lstm_692_while_placeholder_3-
)lstm_692_while_lstm_692_strided_slice_1_0i
elstm_692_while_tensorarrayv2read_tensorlistgetitem_lstm_692_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_692_while_lstm_cell_632_matmul_readvariableop_resource_0:2(Q
?lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource_0:
(L
>lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource_0:(
lstm_692_while_identity
lstm_692_while_identity_1
lstm_692_while_identity_2
lstm_692_while_identity_3
lstm_692_while_identity_4
lstm_692_while_identity_5+
'lstm_692_while_lstm_692_strided_slice_1g
clstm_692_while_tensorarrayv2read_tensorlistgetitem_lstm_692_tensorarrayunstack_tensorlistfromtensorM
;lstm_692_while_lstm_cell_632_matmul_readvariableop_resource:2(O
=lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource:
(J
<lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource:(??3lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp?2lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp?4lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp?
@lstm_692/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_692/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_692_while_tensorarrayv2read_tensorlistgetitem_lstm_692_tensorarrayunstack_tensorlistfromtensor_0lstm_692_while_placeholderIlstm_692/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_692/while/lstm_cell_632/MatMul/ReadVariableOpReadVariableOp=lstm_692_while_lstm_cell_632_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_692/while/lstm_cell_632/MatMulMatMul9lstm_692/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp?lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_692/while/lstm_cell_632/MatMul_1MatMullstm_692_while_placeholder_2<lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_692/while/lstm_cell_632/addAddV2-lstm_692/while/lstm_cell_632/MatMul:product:0/lstm_692/while/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp>lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_692/while/lstm_cell_632/BiasAddBiasAdd$lstm_692/while/lstm_cell_632/add:z:0;lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_692/while/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_692/while/lstm_cell_632/splitSplit5lstm_692/while/lstm_cell_632/split/split_dim:output:0-lstm_692/while/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_692/while/lstm_cell_632/SigmoidSigmoid+lstm_692/while/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_692/while/lstm_cell_632/Sigmoid_1Sigmoid+lstm_692/while/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_692/while/lstm_cell_632/mulMul*lstm_692/while/lstm_cell_632/Sigmoid_1:y:0lstm_692_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_692/while/lstm_cell_632/ReluRelu+lstm_692/while/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_692/while/lstm_cell_632/mul_1Mul(lstm_692/while/lstm_cell_632/Sigmoid:y:0/lstm_692/while/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_692/while/lstm_cell_632/add_1AddV2$lstm_692/while/lstm_cell_632/mul:z:0&lstm_692/while/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_692/while/lstm_cell_632/Sigmoid_2Sigmoid+lstm_692/while/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_692/while/lstm_cell_632/Relu_1Relu&lstm_692/while/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_692/while/lstm_cell_632/mul_2Mul*lstm_692/while/lstm_cell_632/Sigmoid_2:y:01lstm_692/while/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_692/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_692_while_placeholder_1lstm_692_while_placeholder&lstm_692/while/lstm_cell_632/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_692/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_692/while/addAddV2lstm_692_while_placeholderlstm_692/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_692/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_692/while/add_1AddV2*lstm_692_while_lstm_692_while_loop_counterlstm_692/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_692/while/IdentityIdentitylstm_692/while/add_1:z:0^lstm_692/while/NoOp*
T0*
_output_shapes
: ?
lstm_692/while/Identity_1Identity0lstm_692_while_lstm_692_while_maximum_iterations^lstm_692/while/NoOp*
T0*
_output_shapes
: t
lstm_692/while/Identity_2Identitylstm_692/while/add:z:0^lstm_692/while/NoOp*
T0*
_output_shapes
: ?
lstm_692/while/Identity_3IdentityClstm_692/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_692/while/NoOp*
T0*
_output_shapes
: ?
lstm_692/while/Identity_4Identity&lstm_692/while/lstm_cell_632/mul_2:z:0^lstm_692/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_692/while/Identity_5Identity&lstm_692/while/lstm_cell_632/add_1:z:0^lstm_692/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_692/while/NoOpNoOp4^lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp3^lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp5^lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_692_while_identity lstm_692/while/Identity:output:0"?
lstm_692_while_identity_1"lstm_692/while/Identity_1:output:0"?
lstm_692_while_identity_2"lstm_692/while/Identity_2:output:0"?
lstm_692_while_identity_3"lstm_692/while/Identity_3:output:0"?
lstm_692_while_identity_4"lstm_692/while/Identity_4:output:0"?
lstm_692_while_identity_5"lstm_692/while/Identity_5:output:0"T
'lstm_692_while_lstm_692_strided_slice_1)lstm_692_while_lstm_692_strided_slice_1_0"~
<lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource>lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource_0"?
=lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource?lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource_0"|
;lstm_692_while_lstm_cell_632_matmul_readvariableop_resource=lstm_692_while_lstm_cell_632_matmul_readvariableop_resource_0"?
clstm_692_while_tensorarrayv2read_tensorlistgetitem_lstm_692_tensorarrayunstack_tensorlistfromtensorelstm_692_while_tensorarrayv2read_tensorlistgetitem_lstm_692_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp3lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp2h
2lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp2lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp2l
4lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp4lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_230_layer_call_and_return_conditional_losses_3827772

inputsH
5lstm_690_lstm_cell_630_matmul_readvariableop_resource:	?J
7lstm_690_lstm_cell_630_matmul_1_readvariableop_resource:	d?E
6lstm_690_lstm_cell_630_biasadd_readvariableop_resource:	?H
5lstm_691_lstm_cell_631_matmul_readvariableop_resource:	d?J
7lstm_691_lstm_cell_631_matmul_1_readvariableop_resource:	2?E
6lstm_691_lstm_cell_631_biasadd_readvariableop_resource:	?G
5lstm_692_lstm_cell_632_matmul_readvariableop_resource:2(I
7lstm_692_lstm_cell_632_matmul_1_readvariableop_resource:
(D
6lstm_692_lstm_cell_632_biasadd_readvariableop_resource:(:
(dense_230_matmul_readvariableop_resource:
7
)dense_230_biasadd_readvariableop_resource:
identity?? dense_230/BiasAdd/ReadVariableOp?dense_230/MatMul/ReadVariableOp?-lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp?,lstm_690/lstm_cell_630/MatMul/ReadVariableOp?.lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp?lstm_690/while?-lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp?,lstm_691/lstm_cell_631/MatMul/ReadVariableOp?.lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp?lstm_691/while?-lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp?,lstm_692/lstm_cell_632/MatMul/ReadVariableOp?.lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp?lstm_692/whileD
lstm_690/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_690/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_690/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_690/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_690/strided_sliceStridedSlicelstm_690/Shape:output:0%lstm_690/strided_slice/stack:output:0'lstm_690/strided_slice/stack_1:output:0'lstm_690/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_690/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_690/zeros/packedPacklstm_690/strided_slice:output:0 lstm_690/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_690/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_690/zerosFilllstm_690/zeros/packed:output:0lstm_690/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_690/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_690/zeros_1/packedPacklstm_690/strided_slice:output:0"lstm_690/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_690/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_690/zeros_1Fill lstm_690/zeros_1/packed:output:0lstm_690/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_690/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_690/transpose	Transposeinputs lstm_690/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_690/Shape_1Shapelstm_690/transpose:y:0*
T0*
_output_shapes
:h
lstm_690/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_690/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_690/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_690/strided_slice_1StridedSlicelstm_690/Shape_1:output:0'lstm_690/strided_slice_1/stack:output:0)lstm_690/strided_slice_1/stack_1:output:0)lstm_690/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_690/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_690/TensorArrayV2TensorListReserve-lstm_690/TensorArrayV2/element_shape:output:0!lstm_690/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_690/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_690/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_690/transpose:y:0Glstm_690/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_690/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_690/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_690/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_690/strided_slice_2StridedSlicelstm_690/transpose:y:0'lstm_690/strided_slice_2/stack:output:0)lstm_690/strided_slice_2/stack_1:output:0)lstm_690/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_690/lstm_cell_630/MatMul/ReadVariableOpReadVariableOp5lstm_690_lstm_cell_630_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_690/lstm_cell_630/MatMulMatMul!lstm_690/strided_slice_2:output:04lstm_690/lstm_cell_630/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_690/lstm_cell_630/MatMul_1/ReadVariableOpReadVariableOp7lstm_690_lstm_cell_630_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_690/lstm_cell_630/MatMul_1MatMullstm_690/zeros:output:06lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_690/lstm_cell_630/addAddV2'lstm_690/lstm_cell_630/MatMul:product:0)lstm_690/lstm_cell_630/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_690/lstm_cell_630/BiasAdd/ReadVariableOpReadVariableOp6lstm_690_lstm_cell_630_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_690/lstm_cell_630/BiasAddBiasAddlstm_690/lstm_cell_630/add:z:05lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_690/lstm_cell_630/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_690/lstm_cell_630/splitSplit/lstm_690/lstm_cell_630/split/split_dim:output:0'lstm_690/lstm_cell_630/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_690/lstm_cell_630/SigmoidSigmoid%lstm_690/lstm_cell_630/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_690/lstm_cell_630/Sigmoid_1Sigmoid%lstm_690/lstm_cell_630/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_690/lstm_cell_630/mulMul$lstm_690/lstm_cell_630/Sigmoid_1:y:0lstm_690/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_690/lstm_cell_630/ReluRelu%lstm_690/lstm_cell_630/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_690/lstm_cell_630/mul_1Mul"lstm_690/lstm_cell_630/Sigmoid:y:0)lstm_690/lstm_cell_630/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_690/lstm_cell_630/add_1AddV2lstm_690/lstm_cell_630/mul:z:0 lstm_690/lstm_cell_630/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_690/lstm_cell_630/Sigmoid_2Sigmoid%lstm_690/lstm_cell_630/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_690/lstm_cell_630/Relu_1Relu lstm_690/lstm_cell_630/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_690/lstm_cell_630/mul_2Mul$lstm_690/lstm_cell_630/Sigmoid_2:y:0+lstm_690/lstm_cell_630/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_690/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_690/TensorArrayV2_1TensorListReserve/lstm_690/TensorArrayV2_1/element_shape:output:0!lstm_690/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_690/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_690/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_690/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_690/whileWhile$lstm_690/while/loop_counter:output:0*lstm_690/while/maximum_iterations:output:0lstm_690/time:output:0!lstm_690/TensorArrayV2_1:handle:0lstm_690/zeros:output:0lstm_690/zeros_1:output:0!lstm_690/strided_slice_1:output:0@lstm_690/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_690_lstm_cell_630_matmul_readvariableop_resource7lstm_690_lstm_cell_630_matmul_1_readvariableop_resource6lstm_690_lstm_cell_630_biasadd_readvariableop_resource*
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
lstm_690_while_body_3827404*'
condR
lstm_690_while_cond_3827403*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_690/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_690/TensorArrayV2Stack/TensorListStackTensorListStacklstm_690/while:output:3Blstm_690/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_690/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_690/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_690/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_690/strided_slice_3StridedSlice4lstm_690/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_690/strided_slice_3/stack:output:0)lstm_690/strided_slice_3/stack_1:output:0)lstm_690/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_690/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_690/transpose_1	Transpose4lstm_690/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_690/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_690/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_691/ShapeShapelstm_690/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_691/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_691/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_691/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_691/strided_sliceStridedSlicelstm_691/Shape:output:0%lstm_691/strided_slice/stack:output:0'lstm_691/strided_slice/stack_1:output:0'lstm_691/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_691/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_691/zeros/packedPacklstm_691/strided_slice:output:0 lstm_691/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_691/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_691/zerosFilllstm_691/zeros/packed:output:0lstm_691/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_691/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_691/zeros_1/packedPacklstm_691/strided_slice:output:0"lstm_691/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_691/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_691/zeros_1Fill lstm_691/zeros_1/packed:output:0lstm_691/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_691/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_691/transpose	Transposelstm_690/transpose_1:y:0 lstm_691/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_691/Shape_1Shapelstm_691/transpose:y:0*
T0*
_output_shapes
:h
lstm_691/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_691/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_691/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_691/strided_slice_1StridedSlicelstm_691/Shape_1:output:0'lstm_691/strided_slice_1/stack:output:0)lstm_691/strided_slice_1/stack_1:output:0)lstm_691/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_691/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_691/TensorArrayV2TensorListReserve-lstm_691/TensorArrayV2/element_shape:output:0!lstm_691/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_691/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_691/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_691/transpose:y:0Glstm_691/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_691/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_691/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_691/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_691/strided_slice_2StridedSlicelstm_691/transpose:y:0'lstm_691/strided_slice_2/stack:output:0)lstm_691/strided_slice_2/stack_1:output:0)lstm_691/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_691/lstm_cell_631/MatMul/ReadVariableOpReadVariableOp5lstm_691_lstm_cell_631_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_691/lstm_cell_631/MatMulMatMul!lstm_691/strided_slice_2:output:04lstm_691/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_691/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp7lstm_691_lstm_cell_631_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_691/lstm_cell_631/MatMul_1MatMullstm_691/zeros:output:06lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_691/lstm_cell_631/addAddV2'lstm_691/lstm_cell_631/MatMul:product:0)lstm_691/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_691/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp6lstm_691_lstm_cell_631_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_691/lstm_cell_631/BiasAddBiasAddlstm_691/lstm_cell_631/add:z:05lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_691/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_691/lstm_cell_631/splitSplit/lstm_691/lstm_cell_631/split/split_dim:output:0'lstm_691/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_691/lstm_cell_631/SigmoidSigmoid%lstm_691/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_691/lstm_cell_631/Sigmoid_1Sigmoid%lstm_691/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_691/lstm_cell_631/mulMul$lstm_691/lstm_cell_631/Sigmoid_1:y:0lstm_691/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_691/lstm_cell_631/ReluRelu%lstm_691/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_691/lstm_cell_631/mul_1Mul"lstm_691/lstm_cell_631/Sigmoid:y:0)lstm_691/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_691/lstm_cell_631/add_1AddV2lstm_691/lstm_cell_631/mul:z:0 lstm_691/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_691/lstm_cell_631/Sigmoid_2Sigmoid%lstm_691/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_691/lstm_cell_631/Relu_1Relu lstm_691/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_691/lstm_cell_631/mul_2Mul$lstm_691/lstm_cell_631/Sigmoid_2:y:0+lstm_691/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_691/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_691/TensorArrayV2_1TensorListReserve/lstm_691/TensorArrayV2_1/element_shape:output:0!lstm_691/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_691/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_691/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_691/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_691/whileWhile$lstm_691/while/loop_counter:output:0*lstm_691/while/maximum_iterations:output:0lstm_691/time:output:0!lstm_691/TensorArrayV2_1:handle:0lstm_691/zeros:output:0lstm_691/zeros_1:output:0!lstm_691/strided_slice_1:output:0@lstm_691/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_691_lstm_cell_631_matmul_readvariableop_resource7lstm_691_lstm_cell_631_matmul_1_readvariableop_resource6lstm_691_lstm_cell_631_biasadd_readvariableop_resource*
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
lstm_691_while_body_3827543*'
condR
lstm_691_while_cond_3827542*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_691/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_691/TensorArrayV2Stack/TensorListStackTensorListStacklstm_691/while:output:3Blstm_691/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_691/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_691/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_691/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_691/strided_slice_3StridedSlice4lstm_691/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_691/strided_slice_3/stack:output:0)lstm_691/strided_slice_3/stack_1:output:0)lstm_691/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_691/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_691/transpose_1	Transpose4lstm_691/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_691/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_691/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_692/ShapeShapelstm_691/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_692/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_692/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_692/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_692/strided_sliceStridedSlicelstm_692/Shape:output:0%lstm_692/strided_slice/stack:output:0'lstm_692/strided_slice/stack_1:output:0'lstm_692/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_692/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_692/zeros/packedPacklstm_692/strided_slice:output:0 lstm_692/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_692/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_692/zerosFilllstm_692/zeros/packed:output:0lstm_692/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_692/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_692/zeros_1/packedPacklstm_692/strided_slice:output:0"lstm_692/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_692/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_692/zeros_1Fill lstm_692/zeros_1/packed:output:0lstm_692/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_692/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_692/transpose	Transposelstm_691/transpose_1:y:0 lstm_692/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_692/Shape_1Shapelstm_692/transpose:y:0*
T0*
_output_shapes
:h
lstm_692/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_692/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_692/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_692/strided_slice_1StridedSlicelstm_692/Shape_1:output:0'lstm_692/strided_slice_1/stack:output:0)lstm_692/strided_slice_1/stack_1:output:0)lstm_692/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_692/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_692/TensorArrayV2TensorListReserve-lstm_692/TensorArrayV2/element_shape:output:0!lstm_692/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_692/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_692/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_692/transpose:y:0Glstm_692/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_692/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_692/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_692/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_692/strided_slice_2StridedSlicelstm_692/transpose:y:0'lstm_692/strided_slice_2/stack:output:0)lstm_692/strided_slice_2/stack_1:output:0)lstm_692/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_692/lstm_cell_632/MatMul/ReadVariableOpReadVariableOp5lstm_692_lstm_cell_632_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_692/lstm_cell_632/MatMulMatMul!lstm_692/strided_slice_2:output:04lstm_692/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_692/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp7lstm_692_lstm_cell_632_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_692/lstm_cell_632/MatMul_1MatMullstm_692/zeros:output:06lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_692/lstm_cell_632/addAddV2'lstm_692/lstm_cell_632/MatMul:product:0)lstm_692/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_692/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp6lstm_692_lstm_cell_632_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_692/lstm_cell_632/BiasAddBiasAddlstm_692/lstm_cell_632/add:z:05lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_692/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_692/lstm_cell_632/splitSplit/lstm_692/lstm_cell_632/split/split_dim:output:0'lstm_692/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_692/lstm_cell_632/SigmoidSigmoid%lstm_692/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_692/lstm_cell_632/Sigmoid_1Sigmoid%lstm_692/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_692/lstm_cell_632/mulMul$lstm_692/lstm_cell_632/Sigmoid_1:y:0lstm_692/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_692/lstm_cell_632/ReluRelu%lstm_692/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_692/lstm_cell_632/mul_1Mul"lstm_692/lstm_cell_632/Sigmoid:y:0)lstm_692/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_692/lstm_cell_632/add_1AddV2lstm_692/lstm_cell_632/mul:z:0 lstm_692/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_692/lstm_cell_632/Sigmoid_2Sigmoid%lstm_692/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_692/lstm_cell_632/Relu_1Relu lstm_692/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_692/lstm_cell_632/mul_2Mul$lstm_692/lstm_cell_632/Sigmoid_2:y:0+lstm_692/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_692/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_692/TensorArrayV2_1TensorListReserve/lstm_692/TensorArrayV2_1/element_shape:output:0!lstm_692/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_692/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_692/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_692/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_692/whileWhile$lstm_692/while/loop_counter:output:0*lstm_692/while/maximum_iterations:output:0lstm_692/time:output:0!lstm_692/TensorArrayV2_1:handle:0lstm_692/zeros:output:0lstm_692/zeros_1:output:0!lstm_692/strided_slice_1:output:0@lstm_692/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_692_lstm_cell_632_matmul_readvariableop_resource7lstm_692_lstm_cell_632_matmul_1_readvariableop_resource6lstm_692_lstm_cell_632_biasadd_readvariableop_resource*
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
lstm_692_while_body_3827682*'
condR
lstm_692_while_cond_3827681*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_692/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_692/TensorArrayV2Stack/TensorListStackTensorListStacklstm_692/while:output:3Blstm_692/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_692/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_692/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_692/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_692/strided_slice_3StridedSlice4lstm_692/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_692/strided_slice_3/stack:output:0)lstm_692/strided_slice_3/stack_1:output:0)lstm_692/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_692/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_692/transpose_1	Transpose4lstm_692/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_692/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_692/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_230/MatMul/ReadVariableOpReadVariableOp(dense_230_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_230/MatMulMatMul!lstm_692/strided_slice_3:output:0'dense_230/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_230/BiasAdd/ReadVariableOpReadVariableOp)dense_230_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_230/BiasAddBiasAdddense_230/MatMul:product:0(dense_230/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_230/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_230/BiasAdd/ReadVariableOp ^dense_230/MatMul/ReadVariableOp.^lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp-^lstm_690/lstm_cell_630/MatMul/ReadVariableOp/^lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp^lstm_690/while.^lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp-^lstm_691/lstm_cell_631/MatMul/ReadVariableOp/^lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp^lstm_691/while.^lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp-^lstm_692/lstm_cell_632/MatMul/ReadVariableOp/^lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp^lstm_692/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_230/BiasAdd/ReadVariableOp dense_230/BiasAdd/ReadVariableOp2B
dense_230/MatMul/ReadVariableOpdense_230/MatMul/ReadVariableOp2^
-lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp-lstm_690/lstm_cell_630/BiasAdd/ReadVariableOp2\
,lstm_690/lstm_cell_630/MatMul/ReadVariableOp,lstm_690/lstm_cell_630/MatMul/ReadVariableOp2`
.lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp.lstm_690/lstm_cell_630/MatMul_1/ReadVariableOp2 
lstm_690/whilelstm_690/while2^
-lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp-lstm_691/lstm_cell_631/BiasAdd/ReadVariableOp2\
,lstm_691/lstm_cell_631/MatMul/ReadVariableOp,lstm_691/lstm_cell_631/MatMul/ReadVariableOp2`
.lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp.lstm_691/lstm_cell_631/MatMul_1/ReadVariableOp2 
lstm_691/whilelstm_691/while2^
-lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp-lstm_692/lstm_cell_632/BiasAdd/ReadVariableOp2\
,lstm_692/lstm_cell_632/MatMul/ReadVariableOp,lstm_692/lstm_cell_632/MatMul/ReadVariableOp2`
.lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp.lstm_692/lstm_cell_632/MatMul_1/ReadVariableOp2 
lstm_692/whilelstm_692/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826717

inputs#
lstm_690_3826690:	?#
lstm_690_3826692:	d?
lstm_690_3826694:	?#
lstm_691_3826697:	d?#
lstm_691_3826699:	2?
lstm_691_3826701:	?"
lstm_692_3826704:2("
lstm_692_3826706:
(
lstm_692_3826708:(#
dense_230_3826711:

dense_230_3826713:
identity??!dense_230/StatefulPartitionedCall? lstm_690/StatefulPartitionedCall? lstm_691/StatefulPartitionedCall? lstm_692/StatefulPartitionedCall?
 lstm_690/StatefulPartitionedCallStatefulPartitionedCallinputslstm_690_3826690lstm_690_3826692lstm_690_3826694*
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3826649?
 lstm_691/StatefulPartitionedCallStatefulPartitionedCall)lstm_690/StatefulPartitionedCall:output:0lstm_691_3826697lstm_691_3826699lstm_691_3826701*
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3826484?
 lstm_692/StatefulPartitionedCallStatefulPartitionedCall)lstm_691/StatefulPartitionedCall:output:0lstm_692_3826704lstm_692_3826706lstm_692_3826708*
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3826319?
!dense_230/StatefulPartitionedCallStatefulPartitionedCall)lstm_692/StatefulPartitionedCall:output:0dense_230_3826711dense_230_3826713*
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
F__inference_dense_230_layer_call_and_return_conditional_losses_3826121y
IdentityIdentity*dense_230/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_230/StatefulPartitionedCall!^lstm_690/StatefulPartitionedCall!^lstm_691/StatefulPartitionedCall!^lstm_692/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_230/StatefulPartitionedCall!dense_230/StatefulPartitionedCall2D
 lstm_690/StatefulPartitionedCall lstm_690/StatefulPartitionedCall2D
 lstm_691/StatefulPartitionedCall lstm_691/StatefulPartitionedCall2D
 lstm_692/StatefulPartitionedCall lstm_692/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_690_while_cond_3827403.
*lstm_690_while_lstm_690_while_loop_counter4
0lstm_690_while_lstm_690_while_maximum_iterations
lstm_690_while_placeholder 
lstm_690_while_placeholder_1 
lstm_690_while_placeholder_2 
lstm_690_while_placeholder_30
,lstm_690_while_less_lstm_690_strided_slice_1G
Clstm_690_while_lstm_690_while_cond_3827403___redundant_placeholder0G
Clstm_690_while_lstm_690_while_cond_3827403___redundant_placeholder1G
Clstm_690_while_lstm_690_while_cond_3827403___redundant_placeholder2G
Clstm_690_while_lstm_690_while_cond_3827403___redundant_placeholder3
lstm_690_while_identity
?
lstm_690/while/LessLesslstm_690_while_placeholder,lstm_690_while_less_lstm_690_strided_slice_1*
T0*
_output_shapes
: ]
lstm_690/while/IdentityIdentitylstm_690/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_690_while_identity lstm_690/while/Identity:output:0*(
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
while_cond_3826564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3826564___redundant_placeholder05
1while_while_cond_3826564___redundant_placeholder15
1while_while_cond_3826564___redundant_placeholder25
1while_while_cond_3826564___redundant_placeholder3
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
while_cond_3825575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3825575___redundant_placeholder05
1while_while_cond_3825575___redundant_placeholder15
1while_while_cond_3825575___redundant_placeholder25
1while_while_cond_3825575___redundant_placeholder3
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

lstm_692_while_body_3827682.
*lstm_692_while_lstm_692_while_loop_counter4
0lstm_692_while_lstm_692_while_maximum_iterations
lstm_692_while_placeholder 
lstm_692_while_placeholder_1 
lstm_692_while_placeholder_2 
lstm_692_while_placeholder_3-
)lstm_692_while_lstm_692_strided_slice_1_0i
elstm_692_while_tensorarrayv2read_tensorlistgetitem_lstm_692_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_692_while_lstm_cell_632_matmul_readvariableop_resource_0:2(Q
?lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource_0:
(L
>lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource_0:(
lstm_692_while_identity
lstm_692_while_identity_1
lstm_692_while_identity_2
lstm_692_while_identity_3
lstm_692_while_identity_4
lstm_692_while_identity_5+
'lstm_692_while_lstm_692_strided_slice_1g
clstm_692_while_tensorarrayv2read_tensorlistgetitem_lstm_692_tensorarrayunstack_tensorlistfromtensorM
;lstm_692_while_lstm_cell_632_matmul_readvariableop_resource:2(O
=lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource:
(J
<lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource:(??3lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp?2lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp?4lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp?
@lstm_692/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_692/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_692_while_tensorarrayv2read_tensorlistgetitem_lstm_692_tensorarrayunstack_tensorlistfromtensor_0lstm_692_while_placeholderIlstm_692/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_692/while/lstm_cell_632/MatMul/ReadVariableOpReadVariableOp=lstm_692_while_lstm_cell_632_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_692/while/lstm_cell_632/MatMulMatMul9lstm_692/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp?lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_692/while/lstm_cell_632/MatMul_1MatMullstm_692_while_placeholder_2<lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_692/while/lstm_cell_632/addAddV2-lstm_692/while/lstm_cell_632/MatMul:product:0/lstm_692/while/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp>lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_692/while/lstm_cell_632/BiasAddBiasAdd$lstm_692/while/lstm_cell_632/add:z:0;lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_692/while/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_692/while/lstm_cell_632/splitSplit5lstm_692/while/lstm_cell_632/split/split_dim:output:0-lstm_692/while/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_692/while/lstm_cell_632/SigmoidSigmoid+lstm_692/while/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_692/while/lstm_cell_632/Sigmoid_1Sigmoid+lstm_692/while/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_692/while/lstm_cell_632/mulMul*lstm_692/while/lstm_cell_632/Sigmoid_1:y:0lstm_692_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_692/while/lstm_cell_632/ReluRelu+lstm_692/while/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_692/while/lstm_cell_632/mul_1Mul(lstm_692/while/lstm_cell_632/Sigmoid:y:0/lstm_692/while/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_692/while/lstm_cell_632/add_1AddV2$lstm_692/while/lstm_cell_632/mul:z:0&lstm_692/while/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_692/while/lstm_cell_632/Sigmoid_2Sigmoid+lstm_692/while/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_692/while/lstm_cell_632/Relu_1Relu&lstm_692/while/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_692/while/lstm_cell_632/mul_2Mul*lstm_692/while/lstm_cell_632/Sigmoid_2:y:01lstm_692/while/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_692/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_692_while_placeholder_1lstm_692_while_placeholder&lstm_692/while/lstm_cell_632/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_692/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_692/while/addAddV2lstm_692_while_placeholderlstm_692/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_692/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_692/while/add_1AddV2*lstm_692_while_lstm_692_while_loop_counterlstm_692/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_692/while/IdentityIdentitylstm_692/while/add_1:z:0^lstm_692/while/NoOp*
T0*
_output_shapes
: ?
lstm_692/while/Identity_1Identity0lstm_692_while_lstm_692_while_maximum_iterations^lstm_692/while/NoOp*
T0*
_output_shapes
: t
lstm_692/while/Identity_2Identitylstm_692/while/add:z:0^lstm_692/while/NoOp*
T0*
_output_shapes
: ?
lstm_692/while/Identity_3IdentityClstm_692/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_692/while/NoOp*
T0*
_output_shapes
: ?
lstm_692/while/Identity_4Identity&lstm_692/while/lstm_cell_632/mul_2:z:0^lstm_692/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_692/while/Identity_5Identity&lstm_692/while/lstm_cell_632/add_1:z:0^lstm_692/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_692/while/NoOpNoOp4^lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp3^lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp5^lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_692_while_identity lstm_692/while/Identity:output:0"?
lstm_692_while_identity_1"lstm_692/while/Identity_1:output:0"?
lstm_692_while_identity_2"lstm_692/while/Identity_2:output:0"?
lstm_692_while_identity_3"lstm_692/while/Identity_3:output:0"?
lstm_692_while_identity_4"lstm_692/while/Identity_4:output:0"?
lstm_692_while_identity_5"lstm_692/while/Identity_5:output:0"T
'lstm_692_while_lstm_692_strided_slice_1)lstm_692_while_lstm_692_strided_slice_1_0"~
<lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource>lstm_692_while_lstm_cell_632_biasadd_readvariableop_resource_0"?
=lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource?lstm_692_while_lstm_cell_632_matmul_1_readvariableop_resource_0"|
;lstm_692_while_lstm_cell_632_matmul_readvariableop_resource=lstm_692_while_lstm_cell_632_matmul_readvariableop_resource_0"?
clstm_692_while_tensorarrayv2read_tensorlistgetitem_lstm_692_tensorarrayunstack_tensorlistfromtensorelstm_692_while_tensorarrayv2read_tensorlistgetitem_lstm_692_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp3lstm_692/while/lstm_cell_632/BiasAdd/ReadVariableOp2h
2lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp2lstm_692/while/lstm_cell_632/MatMul/ReadVariableOp2l
4lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp4lstm_692/while/lstm_cell_632/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3829536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_632_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_632_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_632_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_632_matmul_readvariableop_resource:2(F
4while_lstm_cell_632_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_632_biasadd_readvariableop_resource:(??*while/lstm_cell_632/BiasAdd/ReadVariableOp?)while/lstm_cell_632/MatMul/ReadVariableOp?+while/lstm_cell_632/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_632/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_632_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_632/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_632_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_632/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_632/addAddV2$while/lstm_cell_632/MatMul:product:0&while/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_632_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_632/BiasAddBiasAddwhile/lstm_cell_632/add:z:02while/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_632/splitSplit,while/lstm_cell_632/split/split_dim:output:0$while/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_632/SigmoidSigmoid"while/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_1Sigmoid"while/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mulMul!while/lstm_cell_632/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_632/ReluRelu"while/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_1Mulwhile/lstm_cell_632/Sigmoid:y:0&while/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/add_1AddV2while/lstm_cell_632/mul:z:0while/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_2Sigmoid"while/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_632/Relu_1Reluwhile/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_2Mul!while/lstm_cell_632/Sigmoid_2:y:0(while/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_632/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_632/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_632/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_632/BiasAdd/ReadVariableOp*^while/lstm_cell_632/MatMul/ReadVariableOp,^while/lstm_cell_632/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_632_biasadd_readvariableop_resource5while_lstm_cell_632_biasadd_readvariableop_resource_0"n
4while_lstm_cell_632_matmul_1_readvariableop_resource6while_lstm_cell_632_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_632_matmul_readvariableop_resource4while_lstm_cell_632_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_632/BiasAdd/ReadVariableOp*while/lstm_cell_632/BiasAdd/ReadVariableOp2V
)while/lstm_cell_632/MatMul/ReadVariableOp)while/lstm_cell_632/MatMul/ReadVariableOp2Z
+while/lstm_cell_632/MatMul_1/ReadVariableOp+while/lstm_cell_632/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3825104

inputs(
lstm_cell_631_3825022:	d?(
lstm_cell_631_3825024:	2?$
lstm_cell_631_3825026:	?
identity??%lstm_cell_631/StatefulPartitionedCall?while;
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
%lstm_cell_631/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_631_3825022lstm_cell_631_3825024lstm_cell_631_3825026*
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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3825021n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_631_3825022lstm_cell_631_3825024lstm_cell_631_3825026*
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
while_body_3825035*
condR
while_cond_3825034*K
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
NoOpNoOp&^lstm_cell_631/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_631/StatefulPartitionedCall%lstm_cell_631/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_632_layer_call_fn_3829852

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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3825371o
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
while_body_3825869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_631_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_631_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_631_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_631_matmul_readvariableop_resource:	d?G
4while_lstm_cell_631_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_631_biasadd_readvariableop_resource:	???*while/lstm_cell_631/BiasAdd/ReadVariableOp?)while/lstm_cell_631/MatMul/ReadVariableOp?+while/lstm_cell_631/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_631/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_631_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_631/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_631_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_631/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_631/addAddV2$while/lstm_cell_631/MatMul:product:0&while/lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_631_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_631/BiasAddBiasAddwhile/lstm_cell_631/add:z:02while/lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_631/splitSplit,while/lstm_cell_631/split/split_dim:output:0$while/lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_631/SigmoidSigmoid"while/lstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_1Sigmoid"while/lstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mulMul!while/lstm_cell_631/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_631/ReluRelu"while/lstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_1Mulwhile/lstm_cell_631/Sigmoid:y:0&while/lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/add_1AddV2while/lstm_cell_631/mul:z:0while/lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_631/Sigmoid_2Sigmoid"while/lstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_631/Relu_1Reluwhile/lstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_631/mul_2Mul!while/lstm_cell_631/Sigmoid_2:y:0(while/lstm_cell_631/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_631/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_631/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_631/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_631/BiasAdd/ReadVariableOp*^while/lstm_cell_631/MatMul/ReadVariableOp,^while/lstm_cell_631/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_631_biasadd_readvariableop_resource5while_lstm_cell_631_biasadd_readvariableop_resource_0"n
4while_lstm_cell_631_matmul_1_readvariableop_resource6while_lstm_cell_631_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_631_matmul_readvariableop_resource4while_lstm_cell_631_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_631/BiasAdd/ReadVariableOp*while/lstm_cell_631/BiasAdd/ReadVariableOp2V
)while/lstm_cell_631/MatMul/ReadVariableOp)while/lstm_cell_631/MatMul/ReadVariableOp2Z
+while/lstm_cell_631/MatMul_1/ReadVariableOp+while/lstm_cell_631/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_3826864
lstm_690_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_690_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3824604o
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
_user_specified_namelstm_690_input
?8
?
while_body_3826235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_632_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_632_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_632_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_632_matmul_readvariableop_resource:2(F
4while_lstm_cell_632_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_632_biasadd_readvariableop_resource:(??*while/lstm_cell_632/BiasAdd/ReadVariableOp?)while/lstm_cell_632/MatMul/ReadVariableOp?+while/lstm_cell_632/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_632/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_632_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_632/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_632/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_632/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_632_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_632/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_632/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_632/addAddV2$while/lstm_cell_632/MatMul:product:0&while/lstm_cell_632/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_632/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_632_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_632/BiasAddBiasAddwhile/lstm_cell_632/add:z:02while/lstm_cell_632/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_632/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_632/splitSplit,while/lstm_cell_632/split/split_dim:output:0$while/lstm_cell_632/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_632/SigmoidSigmoid"while/lstm_cell_632/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_1Sigmoid"while/lstm_cell_632/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mulMul!while/lstm_cell_632/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_632/ReluRelu"while/lstm_cell_632/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_1Mulwhile/lstm_cell_632/Sigmoid:y:0&while/lstm_cell_632/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/add_1AddV2while/lstm_cell_632/mul:z:0while/lstm_cell_632/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_632/Sigmoid_2Sigmoid"while/lstm_cell_632/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_632/Relu_1Reluwhile/lstm_cell_632/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_632/mul_2Mul!while/lstm_cell_632/Sigmoid_2:y:0(while/lstm_cell_632/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_632/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_632/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_632/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_632/BiasAdd/ReadVariableOp*^while/lstm_cell_632/MatMul/ReadVariableOp,^while/lstm_cell_632/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_632_biasadd_readvariableop_resource5while_lstm_cell_632_biasadd_readvariableop_resource_0"n
4while_lstm_cell_632_matmul_1_readvariableop_resource6while_lstm_cell_632_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_632_matmul_readvariableop_resource4while_lstm_cell_632_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_632/BiasAdd/ReadVariableOp*while/lstm_cell_632/BiasAdd/ReadVariableOp2V
)while/lstm_cell_632/MatMul/ReadVariableOp)while/lstm_cell_632/MatMul/ReadVariableOp2Z
+while/lstm_cell_632/MatMul_1/ReadVariableOp+while/lstm_cell_632/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_631_layer_call_fn_3829771

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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3825167o
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
/__inference_lstm_cell_632_layer_call_fn_3829869

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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3825517o
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
?
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826829
lstm_690_input#
lstm_690_3826802:	?#
lstm_690_3826804:	d?
lstm_690_3826806:	?#
lstm_691_3826809:	d?#
lstm_691_3826811:	2?
lstm_691_3826813:	?"
lstm_692_3826816:2("
lstm_692_3826818:
(
lstm_692_3826820:(#
dense_230_3826823:

dense_230_3826825:
identity??!dense_230/StatefulPartitionedCall? lstm_690/StatefulPartitionedCall? lstm_691/StatefulPartitionedCall? lstm_692/StatefulPartitionedCall?
 lstm_690/StatefulPartitionedCallStatefulPartitionedCalllstm_690_inputlstm_690_3826802lstm_690_3826804lstm_690_3826806*
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3826649?
 lstm_691/StatefulPartitionedCallStatefulPartitionedCall)lstm_690/StatefulPartitionedCall:output:0lstm_691_3826809lstm_691_3826811lstm_691_3826813*
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3826484?
 lstm_692/StatefulPartitionedCallStatefulPartitionedCall)lstm_691/StatefulPartitionedCall:output:0lstm_692_3826816lstm_692_3826818lstm_692_3826820*
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3826319?
!dense_230/StatefulPartitionedCallStatefulPartitionedCall)lstm_692/StatefulPartitionedCall:output:0dense_230_3826823dense_230_3826825*
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
F__inference_dense_230_layer_call_and_return_conditional_losses_3826121y
IdentityIdentity*dense_230/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_230/StatefulPartitionedCall!^lstm_690/StatefulPartitionedCall!^lstm_691/StatefulPartitionedCall!^lstm_692/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_230/StatefulPartitionedCall!dense_230/StatefulPartitionedCall2D
 lstm_690/StatefulPartitionedCall lstm_690/StatefulPartitionedCall2D
 lstm_691/StatefulPartitionedCall lstm_691/StatefulPartitionedCall2D
 lstm_692/StatefulPartitionedCall lstm_692/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_690_input
?J
?
E__inference_lstm_691_layer_call_and_return_conditional_losses_3828861

inputs?
,lstm_cell_631_matmul_readvariableop_resource:	d?A
.lstm_cell_631_matmul_1_readvariableop_resource:	2?<
-lstm_cell_631_biasadd_readvariableop_resource:	?
identity??$lstm_cell_631/BiasAdd/ReadVariableOp?#lstm_cell_631/MatMul/ReadVariableOp?%lstm_cell_631/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_631/MatMul/ReadVariableOpReadVariableOp,lstm_cell_631_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_631/MatMulMatMulstrided_slice_2:output:0+lstm_cell_631/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_631/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_631_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_631/MatMul_1MatMulzeros:output:0-lstm_cell_631/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_631/addAddV2lstm_cell_631/MatMul:product:0 lstm_cell_631/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_631/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_631_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_631/BiasAddBiasAddlstm_cell_631/add:z:0,lstm_cell_631/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_631/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_631/splitSplit&lstm_cell_631/split/split_dim:output:0lstm_cell_631/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_631/SigmoidSigmoidlstm_cell_631/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_1Sigmoidlstm_cell_631/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_631/mulMullstm_cell_631/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_631/ReluRelulstm_cell_631/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_1Mullstm_cell_631/Sigmoid:y:0 lstm_cell_631/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_631/add_1AddV2lstm_cell_631/mul:z:0lstm_cell_631/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_631/Sigmoid_2Sigmoidlstm_cell_631/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_631/Relu_1Relulstm_cell_631/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_631/mul_2Mullstm_cell_631/Sigmoid_2:y:0"lstm_cell_631/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_631_matmul_readvariableop_resource.lstm_cell_631_matmul_1_readvariableop_resource-lstm_cell_631_biasadd_readvariableop_resource*
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
while_body_3828777*
condR
while_cond_3828776*K
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
NoOpNoOp%^lstm_cell_631/BiasAdd/ReadVariableOp$^lstm_cell_631/MatMul/ReadVariableOp&^lstm_cell_631/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_631/BiasAdd/ReadVariableOp$lstm_cell_631/BiasAdd/ReadVariableOp2J
#lstm_cell_631/MatMul/ReadVariableOp#lstm_cell_631/MatMul/ReadVariableOp2N
%lstm_cell_631/MatMul_1/ReadVariableOp%lstm_cell_631/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3828303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3828303___redundant_placeholder05
1while_while_cond_3828303___redundant_placeholder15
1while_while_cond_3828303___redundant_placeholder25
1while_while_cond_3828303___redundant_placeholder3
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
lstm_690_input;
 serving_default_lstm_690_input:0?????????=
	dense_2300
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
2dense_230/kernel
:2dense_230/bias
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
0:.	?2lstm_690/lstm_cell_690/kernel
::8	d?2'lstm_690/lstm_cell_690/recurrent_kernel
*:(?2lstm_690/lstm_cell_690/bias
0:.	d?2lstm_691/lstm_cell_691/kernel
::8	2?2'lstm_691/lstm_cell_691/recurrent_kernel
*:(?2lstm_691/lstm_cell_691/bias
/:-2(2lstm_692/lstm_cell_692/kernel
9:7
(2'lstm_692/lstm_cell_692/recurrent_kernel
):'(2lstm_692/lstm_cell_692/bias
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
2Adam/dense_230/kernel/m
!:2Adam/dense_230/bias/m
5:3	?2$Adam/lstm_690/lstm_cell_690/kernel/m
?:=	d?2.Adam/lstm_690/lstm_cell_690/recurrent_kernel/m
/:-?2"Adam/lstm_690/lstm_cell_690/bias/m
5:3	d?2$Adam/lstm_691/lstm_cell_691/kernel/m
?:=	2?2.Adam/lstm_691/lstm_cell_691/recurrent_kernel/m
/:-?2"Adam/lstm_691/lstm_cell_691/bias/m
4:22(2$Adam/lstm_692/lstm_cell_692/kernel/m
>:<
(2.Adam/lstm_692/lstm_cell_692/recurrent_kernel/m
.:,(2"Adam/lstm_692/lstm_cell_692/bias/m
':%
2Adam/dense_230/kernel/v
!:2Adam/dense_230/bias/v
5:3	?2$Adam/lstm_690/lstm_cell_690/kernel/v
?:=	d?2.Adam/lstm_690/lstm_cell_690/recurrent_kernel/v
/:-?2"Adam/lstm_690/lstm_cell_690/bias/v
5:3	d?2$Adam/lstm_691/lstm_cell_691/kernel/v
?:=	2?2.Adam/lstm_691/lstm_cell_691/recurrent_kernel/v
/:-?2"Adam/lstm_691/lstm_cell_691/bias/v
4:22(2$Adam/lstm_692/lstm_cell_692/kernel/v
>:<
(2.Adam/lstm_692/lstm_cell_692/recurrent_kernel/v
.:,(2"Adam/lstm_692/lstm_cell_692/bias/v
?2?
0__inference_sequential_230_layer_call_fn_3826153
0__inference_sequential_230_layer_call_fn_3826891
0__inference_sequential_230_layer_call_fn_3826918
0__inference_sequential_230_layer_call_fn_3826769?
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
K__inference_sequential_230_layer_call_and_return_conditional_losses_3827345
K__inference_sequential_230_layer_call_and_return_conditional_losses_3827772
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826799
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826829?
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
"__inference__wrapped_model_3824604lstm_690_input"?
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
*__inference_lstm_690_layer_call_fn_3827783
*__inference_lstm_690_layer_call_fn_3827794
*__inference_lstm_690_layer_call_fn_3827805
*__inference_lstm_690_layer_call_fn_3827816?
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3827959
E__inference_lstm_690_layer_call_and_return_conditional_losses_3828102
E__inference_lstm_690_layer_call_and_return_conditional_losses_3828245
E__inference_lstm_690_layer_call_and_return_conditional_losses_3828388?
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
*__inference_lstm_691_layer_call_fn_3828399
*__inference_lstm_691_layer_call_fn_3828410
*__inference_lstm_691_layer_call_fn_3828421
*__inference_lstm_691_layer_call_fn_3828432?
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3828575
E__inference_lstm_691_layer_call_and_return_conditional_losses_3828718
E__inference_lstm_691_layer_call_and_return_conditional_losses_3828861
E__inference_lstm_691_layer_call_and_return_conditional_losses_3829004?
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
*__inference_lstm_692_layer_call_fn_3829015
*__inference_lstm_692_layer_call_fn_3829026
*__inference_lstm_692_layer_call_fn_3829037
*__inference_lstm_692_layer_call_fn_3829048?
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829191
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829334
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829477
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829620?
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
+__inference_dense_230_layer_call_fn_3829629?
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
F__inference_dense_230_layer_call_and_return_conditional_losses_3829639?
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
%__inference_signature_wrapper_3826864lstm_690_input"?
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
/__inference_lstm_cell_630_layer_call_fn_3829656
/__inference_lstm_cell_630_layer_call_fn_3829673?
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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3829705
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3829737?
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
/__inference_lstm_cell_631_layer_call_fn_3829754
/__inference_lstm_cell_631_layer_call_fn_3829771?
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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3829803
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3829835?
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
/__inference_lstm_cell_632_layer_call_fn_3829852
/__inference_lstm_cell_632_layer_call_fn_3829869?
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3829901
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3829933?
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
"__inference__wrapped_model_3824604?-./012345!";?8
1?.
,?)
lstm_690_input?????????
? "5?2
0
	dense_230#? 
	dense_230??????????
F__inference_dense_230_layer_call_and_return_conditional_losses_3829639\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_230_layer_call_fn_3829629O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_690_layer_call_and_return_conditional_losses_3827959?-./O?L
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3828102?-./O?L
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3828245q-./??<
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
E__inference_lstm_690_layer_call_and_return_conditional_losses_3828388q-./??<
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
*__inference_lstm_690_layer_call_fn_3827783}-./O?L
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
*__inference_lstm_690_layer_call_fn_3827794}-./O?L
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
*__inference_lstm_690_layer_call_fn_3827805d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_690_layer_call_fn_3827816d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_691_layer_call_and_return_conditional_losses_3828575?012O?L
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3828718?012O?L
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3828861q012??<
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
E__inference_lstm_691_layer_call_and_return_conditional_losses_3829004q012??<
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
*__inference_lstm_691_layer_call_fn_3828399}012O?L
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
*__inference_lstm_691_layer_call_fn_3828410}012O?L
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
*__inference_lstm_691_layer_call_fn_3828421d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_691_layer_call_fn_3828432d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829191}345O?L
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829334}345O?L
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829477m345??<
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
E__inference_lstm_692_layer_call_and_return_conditional_losses_3829620m345??<
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
*__inference_lstm_692_layer_call_fn_3829015p345O?L
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
*__inference_lstm_692_layer_call_fn_3829026p345O?L
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
*__inference_lstm_692_layer_call_fn_3829037`345??<
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
*__inference_lstm_692_layer_call_fn_3829048`345??<
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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3829705?-./??}
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
J__inference_lstm_cell_630_layer_call_and_return_conditional_losses_3829737?-./??}
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
/__inference_lstm_cell_630_layer_call_fn_3829656?-./??}
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
/__inference_lstm_cell_630_layer_call_fn_3829673?-./??}
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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3829803?012??}
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
J__inference_lstm_cell_631_layer_call_and_return_conditional_losses_3829835?012??}
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
/__inference_lstm_cell_631_layer_call_fn_3829754?012??}
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
/__inference_lstm_cell_631_layer_call_fn_3829771?012??}
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3829901?345??}
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
J__inference_lstm_cell_632_layer_call_and_return_conditional_losses_3829933?345??}
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
/__inference_lstm_cell_632_layer_call_fn_3829852?345??}
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
/__inference_lstm_cell_632_layer_call_fn_3829869?345??}
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
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826799y-./012345!"C?@
9?6
,?)
lstm_690_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_230_layer_call_and_return_conditional_losses_3826829y-./012345!"C?@
9?6
,?)
lstm_690_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_230_layer_call_and_return_conditional_losses_3827345q-./012345!";?8
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
K__inference_sequential_230_layer_call_and_return_conditional_losses_3827772q-./012345!";?8
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
0__inference_sequential_230_layer_call_fn_3826153l-./012345!"C?@
9?6
,?)
lstm_690_input?????????
p 

 
? "???????????
0__inference_sequential_230_layer_call_fn_3826769l-./012345!"C?@
9?6
,?)
lstm_690_input?????????
p

 
? "???????????
0__inference_sequential_230_layer_call_fn_3826891d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_230_layer_call_fn_3826918d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3826864?-./012345!"M?J
? 
C?@
>
lstm_690_input,?)
lstm_690_input?????????"5?2
0
	dense_230#? 
	dense_230?????????