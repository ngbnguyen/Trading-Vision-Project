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
dense_278/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_278/kernel
u
$dense_278/kernel/Read/ReadVariableOpReadVariableOpdense_278/kernel*
_output_shapes

:
*
dtype0
t
dense_278/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_278/bias
m
"dense_278/bias/Read/ReadVariableOpReadVariableOpdense_278/bias*
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
lstm_834/lstm_cell_834/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_834/lstm_cell_834/kernel
?
1lstm_834/lstm_cell_834/kernel/Read/ReadVariableOpReadVariableOplstm_834/lstm_cell_834/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_834/lstm_cell_834/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_834/lstm_cell_834/recurrent_kernel
?
;lstm_834/lstm_cell_834/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_834/lstm_cell_834/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_834/lstm_cell_834/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_834/lstm_cell_834/bias
?
/lstm_834/lstm_cell_834/bias/Read/ReadVariableOpReadVariableOplstm_834/lstm_cell_834/bias*
_output_shapes	
:?*
dtype0
?
lstm_835/lstm_cell_835/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_835/lstm_cell_835/kernel
?
1lstm_835/lstm_cell_835/kernel/Read/ReadVariableOpReadVariableOplstm_835/lstm_cell_835/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_835/lstm_cell_835/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_835/lstm_cell_835/recurrent_kernel
?
;lstm_835/lstm_cell_835/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_835/lstm_cell_835/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_835/lstm_cell_835/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_835/lstm_cell_835/bias
?
/lstm_835/lstm_cell_835/bias/Read/ReadVariableOpReadVariableOplstm_835/lstm_cell_835/bias*
_output_shapes	
:?*
dtype0
?
lstm_836/lstm_cell_836/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_836/lstm_cell_836/kernel
?
1lstm_836/lstm_cell_836/kernel/Read/ReadVariableOpReadVariableOplstm_836/lstm_cell_836/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_836/lstm_cell_836/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_836/lstm_cell_836/recurrent_kernel
?
;lstm_836/lstm_cell_836/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_836/lstm_cell_836/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_836/lstm_cell_836/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_836/lstm_cell_836/bias
?
/lstm_836/lstm_cell_836/bias/Read/ReadVariableOpReadVariableOplstm_836/lstm_cell_836/bias*
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
Adam/dense_278/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_278/kernel/m
?
+Adam/dense_278/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_278/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_278/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_278/bias/m
{
)Adam/dense_278/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_278/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_834/lstm_cell_834/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_834/lstm_cell_834/kernel/m
?
8Adam/lstm_834/lstm_cell_834/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_834/lstm_cell_834/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_834/lstm_cell_834/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_834/lstm_cell_834/recurrent_kernel/m
?
BAdam/lstm_834/lstm_cell_834/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_834/lstm_cell_834/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_834/lstm_cell_834/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_834/lstm_cell_834/bias/m
?
6Adam/lstm_834/lstm_cell_834/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_834/lstm_cell_834/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_835/lstm_cell_835/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_835/lstm_cell_835/kernel/m
?
8Adam/lstm_835/lstm_cell_835/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_835/lstm_cell_835/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_835/lstm_cell_835/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_835/lstm_cell_835/recurrent_kernel/m
?
BAdam/lstm_835/lstm_cell_835/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_835/lstm_cell_835/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_835/lstm_cell_835/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_835/lstm_cell_835/bias/m
?
6Adam/lstm_835/lstm_cell_835/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_835/lstm_cell_835/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_836/lstm_cell_836/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_836/lstm_cell_836/kernel/m
?
8Adam/lstm_836/lstm_cell_836/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_836/lstm_cell_836/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_836/lstm_cell_836/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_836/lstm_cell_836/recurrent_kernel/m
?
BAdam/lstm_836/lstm_cell_836/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_836/lstm_cell_836/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_836/lstm_cell_836/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_836/lstm_cell_836/bias/m
?
6Adam/lstm_836/lstm_cell_836/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_836/lstm_cell_836/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_278/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_278/kernel/v
?
+Adam/dense_278/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_278/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_278/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_278/bias/v
{
)Adam/dense_278/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_278/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_834/lstm_cell_834/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_834/lstm_cell_834/kernel/v
?
8Adam/lstm_834/lstm_cell_834/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_834/lstm_cell_834/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_834/lstm_cell_834/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_834/lstm_cell_834/recurrent_kernel/v
?
BAdam/lstm_834/lstm_cell_834/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_834/lstm_cell_834/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_834/lstm_cell_834/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_834/lstm_cell_834/bias/v
?
6Adam/lstm_834/lstm_cell_834/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_834/lstm_cell_834/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_835/lstm_cell_835/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_835/lstm_cell_835/kernel/v
?
8Adam/lstm_835/lstm_cell_835/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_835/lstm_cell_835/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_835/lstm_cell_835/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_835/lstm_cell_835/recurrent_kernel/v
?
BAdam/lstm_835/lstm_cell_835/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_835/lstm_cell_835/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_835/lstm_cell_835/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_835/lstm_cell_835/bias/v
?
6Adam/lstm_835/lstm_cell_835/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_835/lstm_cell_835/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_836/lstm_cell_836/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_836/lstm_cell_836/kernel/v
?
8Adam/lstm_836/lstm_cell_836/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_836/lstm_cell_836/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_836/lstm_cell_836/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_836/lstm_cell_836/recurrent_kernel/v
?
BAdam/lstm_836/lstm_cell_836/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_836/lstm_cell_836/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_836/lstm_cell_836/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_836/lstm_cell_836/bias/v
?
6Adam/lstm_836/lstm_cell_836/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_836/lstm_cell_836/bias/v*
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
VARIABLE_VALUEdense_278/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_278/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_834/lstm_cell_834/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_834/lstm_cell_834/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_834/lstm_cell_834/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_835/lstm_cell_835/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_835/lstm_cell_835/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_835/lstm_cell_835/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_836/lstm_cell_836/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_836/lstm_cell_836/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_836/lstm_cell_836/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_278/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_278/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_834/lstm_cell_834/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_834/lstm_cell_834/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_834/lstm_cell_834/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_835/lstm_cell_835/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_835/lstm_cell_835/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_835/lstm_cell_835/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_836/lstm_cell_836/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_836/lstm_cell_836/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_836/lstm_cell_836/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_278/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_278/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_834/lstm_cell_834/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_834/lstm_cell_834/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_834/lstm_cell_834/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_835/lstm_cell_835/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_835/lstm_cell_835/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_835/lstm_cell_835/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_836/lstm_cell_836/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_836/lstm_cell_836/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_836/lstm_cell_836/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_834_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_834_inputlstm_834/lstm_cell_834/kernel'lstm_834/lstm_cell_834/recurrent_kernellstm_834/lstm_cell_834/biaslstm_835/lstm_cell_835/kernel'lstm_835/lstm_cell_835/recurrent_kernellstm_835/lstm_cell_835/biaslstm_836/lstm_cell_836/kernel'lstm_836/lstm_cell_836/recurrent_kernellstm_836/lstm_cell_836/biasdense_278/kerneldense_278/bias*
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
%__inference_signature_wrapper_4550454
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_278/kernel/Read/ReadVariableOp"dense_278/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_834/lstm_cell_834/kernel/Read/ReadVariableOp;lstm_834/lstm_cell_834/recurrent_kernel/Read/ReadVariableOp/lstm_834/lstm_cell_834/bias/Read/ReadVariableOp1lstm_835/lstm_cell_835/kernel/Read/ReadVariableOp;lstm_835/lstm_cell_835/recurrent_kernel/Read/ReadVariableOp/lstm_835/lstm_cell_835/bias/Read/ReadVariableOp1lstm_836/lstm_cell_836/kernel/Read/ReadVariableOp;lstm_836/lstm_cell_836/recurrent_kernel/Read/ReadVariableOp/lstm_836/lstm_cell_836/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_278/kernel/m/Read/ReadVariableOp)Adam/dense_278/bias/m/Read/ReadVariableOp8Adam/lstm_834/lstm_cell_834/kernel/m/Read/ReadVariableOpBAdam/lstm_834/lstm_cell_834/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_834/lstm_cell_834/bias/m/Read/ReadVariableOp8Adam/lstm_835/lstm_cell_835/kernel/m/Read/ReadVariableOpBAdam/lstm_835/lstm_cell_835/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_835/lstm_cell_835/bias/m/Read/ReadVariableOp8Adam/lstm_836/lstm_cell_836/kernel/m/Read/ReadVariableOpBAdam/lstm_836/lstm_cell_836/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_836/lstm_cell_836/bias/m/Read/ReadVariableOp+Adam/dense_278/kernel/v/Read/ReadVariableOp)Adam/dense_278/bias/v/Read/ReadVariableOp8Adam/lstm_834/lstm_cell_834/kernel/v/Read/ReadVariableOpBAdam/lstm_834/lstm_cell_834/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_834/lstm_cell_834/bias/v/Read/ReadVariableOp8Adam/lstm_835/lstm_cell_835/kernel/v/Read/ReadVariableOpBAdam/lstm_835/lstm_cell_835/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_835/lstm_cell_835/bias/v/Read/ReadVariableOp8Adam/lstm_836/lstm_cell_836/kernel/v/Read/ReadVariableOpBAdam/lstm_836/lstm_cell_836/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_836/lstm_cell_836/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4553666
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_278/kerneldense_278/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_834/lstm_cell_834/kernel'lstm_834/lstm_cell_834/recurrent_kernellstm_834/lstm_cell_834/biaslstm_835/lstm_cell_835/kernel'lstm_835/lstm_cell_835/recurrent_kernellstm_835/lstm_cell_835/biaslstm_836/lstm_cell_836/kernel'lstm_836/lstm_cell_836/recurrent_kernellstm_836/lstm_cell_836/biastotalcountAdam/dense_278/kernel/mAdam/dense_278/bias/m$Adam/lstm_834/lstm_cell_834/kernel/m.Adam/lstm_834/lstm_cell_834/recurrent_kernel/m"Adam/lstm_834/lstm_cell_834/bias/m$Adam/lstm_835/lstm_cell_835/kernel/m.Adam/lstm_835/lstm_cell_835/recurrent_kernel/m"Adam/lstm_835/lstm_cell_835/bias/m$Adam/lstm_836/lstm_cell_836/kernel/m.Adam/lstm_836/lstm_cell_836/recurrent_kernel/m"Adam/lstm_836/lstm_cell_836/bias/mAdam/dense_278/kernel/vAdam/dense_278/bias/v$Adam/lstm_834/lstm_cell_834/kernel/v.Adam/lstm_834/lstm_cell_834/recurrent_kernel/v"Adam/lstm_834/lstm_cell_834/bias/v$Adam/lstm_835/lstm_cell_835/kernel/v.Adam/lstm_835/lstm_cell_835/recurrent_kernel/v"Adam/lstm_835/lstm_cell_835/bias/v$Adam/lstm_836/lstm_cell_836/kernel/v.Adam/lstm_836/lstm_cell_836/recurrent_kernel/v"Adam/lstm_836/lstm_cell_836/bias/v*4
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
#__inference__traced_restore_4553796??+
?

?
lstm_835_while_cond_4551132.
*lstm_835_while_lstm_835_while_loop_counter4
0lstm_835_while_lstm_835_while_maximum_iterations
lstm_835_while_placeholder 
lstm_835_while_placeholder_1 
lstm_835_while_placeholder_2 
lstm_835_while_placeholder_30
,lstm_835_while_less_lstm_835_strided_slice_1G
Clstm_835_while_lstm_835_while_cond_4551132___redundant_placeholder0G
Clstm_835_while_lstm_835_while_cond_4551132___redundant_placeholder1G
Clstm_835_while_lstm_835_while_cond_4551132___redundant_placeholder2G
Clstm_835_while_lstm_835_while_cond_4551132___redundant_placeholder3
lstm_835_while_identity
?
lstm_835/while/LessLesslstm_835_while_placeholder,lstm_835_while_less_lstm_835_strided_slice_1*
T0*
_output_shapes
: ]
lstm_835/while/IdentityIdentitylstm_835/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_835_while_identity lstm_835/while/Identity:output:0*(
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
while_cond_4551464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4551464___redundant_placeholder05
1while_while_cond_4551464___redundant_placeholder15
1while_while_cond_4551464___redundant_placeholder25
1while_while_cond_4551464___redundant_placeholder3
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
while_cond_4552696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4552696___redundant_placeholder05
1while_while_cond_4552696___redundant_placeholder15
1while_while_cond_4552696___redundant_placeholder25
1while_while_cond_4552696___redundant_placeholder3
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
/__inference_lstm_cell_752_layer_call_fn_4553442

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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4548961o
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
?J
?
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549909

inputs>
,lstm_cell_752_matmul_readvariableop_resource:2(@
.lstm_cell_752_matmul_1_readvariableop_resource:
(;
-lstm_cell_752_biasadd_readvariableop_resource:(
identity??$lstm_cell_752/BiasAdd/ReadVariableOp?#lstm_cell_752/MatMul/ReadVariableOp?%lstm_cell_752/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_752/MatMul/ReadVariableOpReadVariableOp,lstm_cell_752_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_752/MatMulMatMulstrided_slice_2:output:0+lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_752_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_752/MatMul_1MatMulzeros:output:0-lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_752/addAddV2lstm_cell_752/MatMul:product:0 lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_752_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_752/BiasAddBiasAddlstm_cell_752/add:z:0,lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_752/splitSplit&lstm_cell_752/split/split_dim:output:0lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_752/SigmoidSigmoidlstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_1Sigmoidlstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_752/mulMullstm_cell_752/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_752/ReluRelulstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_1Mullstm_cell_752/Sigmoid:y:0 lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_752/add_1AddV2lstm_cell_752/mul:z:0lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_2Sigmoidlstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_752/Relu_1Relulstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_2Mullstm_cell_752/Sigmoid_2:y:0"lstm_cell_752/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_752_matmul_readvariableop_resource.lstm_cell_752_matmul_1_readvariableop_resource-lstm_cell_752_biasadd_readvariableop_resource*
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
while_body_4549825*
condR
while_cond_4549824*K
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
NoOpNoOp%^lstm_cell_752/BiasAdd/ReadVariableOp$^lstm_cell_752/MatMul/ReadVariableOp&^lstm_cell_752/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_752/BiasAdd/ReadVariableOp$lstm_cell_752/BiasAdd/ReadVariableOp2J
#lstm_cell_752/MatMul/ReadVariableOp#lstm_cell_752/MatMul/ReadVariableOp2N
%lstm_cell_752/MatMul_1/ReadVariableOp%lstm_cell_752/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_834_while_body_4550994.
*lstm_834_while_lstm_834_while_loop_counter4
0lstm_834_while_lstm_834_while_maximum_iterations
lstm_834_while_placeholder 
lstm_834_while_placeholder_1 
lstm_834_while_placeholder_2 
lstm_834_while_placeholder_3-
)lstm_834_while_lstm_834_strided_slice_1_0i
elstm_834_while_tensorarrayv2read_tensorlistgetitem_lstm_834_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_834_while_lstm_cell_750_matmul_readvariableop_resource_0:	?R
?lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource_0:	d?M
>lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource_0:	?
lstm_834_while_identity
lstm_834_while_identity_1
lstm_834_while_identity_2
lstm_834_while_identity_3
lstm_834_while_identity_4
lstm_834_while_identity_5+
'lstm_834_while_lstm_834_strided_slice_1g
clstm_834_while_tensorarrayv2read_tensorlistgetitem_lstm_834_tensorarrayunstack_tensorlistfromtensorN
;lstm_834_while_lstm_cell_750_matmul_readvariableop_resource:	?P
=lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource:	d?K
<lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource:	???3lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp?2lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp?4lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp?
@lstm_834/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_834/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_834_while_tensorarrayv2read_tensorlistgetitem_lstm_834_tensorarrayunstack_tensorlistfromtensor_0lstm_834_while_placeholderIlstm_834/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_834/while/lstm_cell_750/MatMul/ReadVariableOpReadVariableOp=lstm_834_while_lstm_cell_750_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_834/while/lstm_cell_750/MatMulMatMul9lstm_834/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp?lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_834/while/lstm_cell_750/MatMul_1MatMullstm_834_while_placeholder_2<lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_834/while/lstm_cell_750/addAddV2-lstm_834/while/lstm_cell_750/MatMul:product:0/lstm_834/while/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp>lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_834/while/lstm_cell_750/BiasAddBiasAdd$lstm_834/while/lstm_cell_750/add:z:0;lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_834/while/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_834/while/lstm_cell_750/splitSplit5lstm_834/while/lstm_cell_750/split/split_dim:output:0-lstm_834/while/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_834/while/lstm_cell_750/SigmoidSigmoid+lstm_834/while/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_834/while/lstm_cell_750/Sigmoid_1Sigmoid+lstm_834/while/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_834/while/lstm_cell_750/mulMul*lstm_834/while/lstm_cell_750/Sigmoid_1:y:0lstm_834_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_834/while/lstm_cell_750/ReluRelu+lstm_834/while/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_834/while/lstm_cell_750/mul_1Mul(lstm_834/while/lstm_cell_750/Sigmoid:y:0/lstm_834/while/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_834/while/lstm_cell_750/add_1AddV2$lstm_834/while/lstm_cell_750/mul:z:0&lstm_834/while/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_834/while/lstm_cell_750/Sigmoid_2Sigmoid+lstm_834/while/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_834/while/lstm_cell_750/Relu_1Relu&lstm_834/while/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_834/while/lstm_cell_750/mul_2Mul*lstm_834/while/lstm_cell_750/Sigmoid_2:y:01lstm_834/while/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_834/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_834_while_placeholder_1lstm_834_while_placeholder&lstm_834/while/lstm_cell_750/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_834/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_834/while/addAddV2lstm_834_while_placeholderlstm_834/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_834/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_834/while/add_1AddV2*lstm_834_while_lstm_834_while_loop_counterlstm_834/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_834/while/IdentityIdentitylstm_834/while/add_1:z:0^lstm_834/while/NoOp*
T0*
_output_shapes
: ?
lstm_834/while/Identity_1Identity0lstm_834_while_lstm_834_while_maximum_iterations^lstm_834/while/NoOp*
T0*
_output_shapes
: t
lstm_834/while/Identity_2Identitylstm_834/while/add:z:0^lstm_834/while/NoOp*
T0*
_output_shapes
: ?
lstm_834/while/Identity_3IdentityClstm_834/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_834/while/NoOp*
T0*
_output_shapes
: ?
lstm_834/while/Identity_4Identity&lstm_834/while/lstm_cell_750/mul_2:z:0^lstm_834/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_834/while/Identity_5Identity&lstm_834/while/lstm_cell_750/add_1:z:0^lstm_834/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_834/while/NoOpNoOp4^lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp3^lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp5^lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_834_while_identity lstm_834/while/Identity:output:0"?
lstm_834_while_identity_1"lstm_834/while/Identity_1:output:0"?
lstm_834_while_identity_2"lstm_834/while/Identity_2:output:0"?
lstm_834_while_identity_3"lstm_834/while/Identity_3:output:0"?
lstm_834_while_identity_4"lstm_834/while/Identity_4:output:0"?
lstm_834_while_identity_5"lstm_834/while/Identity_5:output:0"T
'lstm_834_while_lstm_834_strided_slice_1)lstm_834_while_lstm_834_strided_slice_1_0"~
<lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource>lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource_0"?
=lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource?lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource_0"|
;lstm_834_while_lstm_cell_750_matmul_readvariableop_resource=lstm_834_while_lstm_cell_750_matmul_readvariableop_resource_0"?
clstm_834_while_tensorarrayv2read_tensorlistgetitem_lstm_834_tensorarrayunstack_tensorlistfromtensorelstm_834_while_tensorarrayv2read_tensorlistgetitem_lstm_834_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp3lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp2h
2lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp2lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp2l
4lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp4lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_834_while_cond_4550993.
*lstm_834_while_lstm_834_while_loop_counter4
0lstm_834_while_lstm_834_while_maximum_iterations
lstm_834_while_placeholder 
lstm_834_while_placeholder_1 
lstm_834_while_placeholder_2 
lstm_834_while_placeholder_30
,lstm_834_while_less_lstm_834_strided_slice_1G
Clstm_834_while_lstm_834_while_cond_4550993___redundant_placeholder0G
Clstm_834_while_lstm_834_while_cond_4550993___redundant_placeholder1G
Clstm_834_while_lstm_834_while_cond_4550993___redundant_placeholder2G
Clstm_834_while_lstm_834_while_cond_4550993___redundant_placeholder3
lstm_834_while_identity
?
lstm_834/while/LessLesslstm_834_while_placeholder,lstm_834_while_less_lstm_834_strided_slice_1*
T0*
_output_shapes
: ]
lstm_834/while/IdentityIdentitylstm_834/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_834_while_identity lstm_834/while/Identity:output:0*(
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
while_body_4552367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_751_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_751_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_751_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_751_matmul_readvariableop_resource:	d?G
4while_lstm_cell_751_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_751_biasadd_readvariableop_resource:	???*while/lstm_cell_751/BiasAdd/ReadVariableOp?)while/lstm_cell_751/MatMul/ReadVariableOp?+while/lstm_cell_751/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_751/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_751_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_751/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_751_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_751/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_751/addAddV2$while/lstm_cell_751/MatMul:product:0&while/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_751_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_751/BiasAddBiasAddwhile/lstm_cell_751/add:z:02while/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_751/splitSplit,while/lstm_cell_751/split/split_dim:output:0$while/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_751/SigmoidSigmoid"while/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_1Sigmoid"while/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mulMul!while/lstm_cell_751/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_751/ReluRelu"while/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_1Mulwhile/lstm_cell_751/Sigmoid:y:0&while/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/add_1AddV2while/lstm_cell_751/mul:z:0while/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_2Sigmoid"while/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_751/Relu_1Reluwhile/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_2Mul!while/lstm_cell_751/Sigmoid_2:y:0(while/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_751/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_751/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_751/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_751/BiasAdd/ReadVariableOp*^while/lstm_cell_751/MatMul/ReadVariableOp,^while/lstm_cell_751/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_751_biasadd_readvariableop_resource5while_lstm_cell_751_biasadd_readvariableop_resource_0"n
4while_lstm_cell_751_matmul_1_readvariableop_resource6while_lstm_cell_751_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_751_matmul_readvariableop_resource4while_lstm_cell_751_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_751/BiasAdd/ReadVariableOp*while/lstm_cell_751/BiasAdd/ReadVariableOp2V
)while/lstm_cell_751/MatMul/ReadVariableOp)while/lstm_cell_751/MatMul/ReadVariableOp2Z
+while/lstm_cell_751/MatMul_1/ReadVariableOp+while/lstm_cell_751/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_836_while_body_4550845.
*lstm_836_while_lstm_836_while_loop_counter4
0lstm_836_while_lstm_836_while_maximum_iterations
lstm_836_while_placeholder 
lstm_836_while_placeholder_1 
lstm_836_while_placeholder_2 
lstm_836_while_placeholder_3-
)lstm_836_while_lstm_836_strided_slice_1_0i
elstm_836_while_tensorarrayv2read_tensorlistgetitem_lstm_836_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_836_while_lstm_cell_752_matmul_readvariableop_resource_0:2(Q
?lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource_0:
(L
>lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource_0:(
lstm_836_while_identity
lstm_836_while_identity_1
lstm_836_while_identity_2
lstm_836_while_identity_3
lstm_836_while_identity_4
lstm_836_while_identity_5+
'lstm_836_while_lstm_836_strided_slice_1g
clstm_836_while_tensorarrayv2read_tensorlistgetitem_lstm_836_tensorarrayunstack_tensorlistfromtensorM
;lstm_836_while_lstm_cell_752_matmul_readvariableop_resource:2(O
=lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource:
(J
<lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource:(??3lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp?2lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp?4lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp?
@lstm_836/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_836/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_836_while_tensorarrayv2read_tensorlistgetitem_lstm_836_tensorarrayunstack_tensorlistfromtensor_0lstm_836_while_placeholderIlstm_836/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_836/while/lstm_cell_752/MatMul/ReadVariableOpReadVariableOp=lstm_836_while_lstm_cell_752_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_836/while/lstm_cell_752/MatMulMatMul9lstm_836/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp?lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_836/while/lstm_cell_752/MatMul_1MatMullstm_836_while_placeholder_2<lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_836/while/lstm_cell_752/addAddV2-lstm_836/while/lstm_cell_752/MatMul:product:0/lstm_836/while/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp>lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_836/while/lstm_cell_752/BiasAddBiasAdd$lstm_836/while/lstm_cell_752/add:z:0;lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_836/while/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_836/while/lstm_cell_752/splitSplit5lstm_836/while/lstm_cell_752/split/split_dim:output:0-lstm_836/while/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_836/while/lstm_cell_752/SigmoidSigmoid+lstm_836/while/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_836/while/lstm_cell_752/Sigmoid_1Sigmoid+lstm_836/while/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_836/while/lstm_cell_752/mulMul*lstm_836/while/lstm_cell_752/Sigmoid_1:y:0lstm_836_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_836/while/lstm_cell_752/ReluRelu+lstm_836/while/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_836/while/lstm_cell_752/mul_1Mul(lstm_836/while/lstm_cell_752/Sigmoid:y:0/lstm_836/while/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_836/while/lstm_cell_752/add_1AddV2$lstm_836/while/lstm_cell_752/mul:z:0&lstm_836/while/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_836/while/lstm_cell_752/Sigmoid_2Sigmoid+lstm_836/while/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_836/while/lstm_cell_752/Relu_1Relu&lstm_836/while/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_836/while/lstm_cell_752/mul_2Mul*lstm_836/while/lstm_cell_752/Sigmoid_2:y:01lstm_836/while/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_836/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_836_while_placeholder_1lstm_836_while_placeholder&lstm_836/while/lstm_cell_752/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_836/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_836/while/addAddV2lstm_836_while_placeholderlstm_836/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_836/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_836/while/add_1AddV2*lstm_836_while_lstm_836_while_loop_counterlstm_836/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_836/while/IdentityIdentitylstm_836/while/add_1:z:0^lstm_836/while/NoOp*
T0*
_output_shapes
: ?
lstm_836/while/Identity_1Identity0lstm_836_while_lstm_836_while_maximum_iterations^lstm_836/while/NoOp*
T0*
_output_shapes
: t
lstm_836/while/Identity_2Identitylstm_836/while/add:z:0^lstm_836/while/NoOp*
T0*
_output_shapes
: ?
lstm_836/while/Identity_3IdentityClstm_836/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_836/while/NoOp*
T0*
_output_shapes
: ?
lstm_836/while/Identity_4Identity&lstm_836/while/lstm_cell_752/mul_2:z:0^lstm_836/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_836/while/Identity_5Identity&lstm_836/while/lstm_cell_752/add_1:z:0^lstm_836/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_836/while/NoOpNoOp4^lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp3^lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp5^lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_836_while_identity lstm_836/while/Identity:output:0"?
lstm_836_while_identity_1"lstm_836/while/Identity_1:output:0"?
lstm_836_while_identity_2"lstm_836/while/Identity_2:output:0"?
lstm_836_while_identity_3"lstm_836/while/Identity_3:output:0"?
lstm_836_while_identity_4"lstm_836/while/Identity_4:output:0"?
lstm_836_while_identity_5"lstm_836/while/Identity_5:output:0"T
'lstm_836_while_lstm_836_strided_slice_1)lstm_836_while_lstm_836_strided_slice_1_0"~
<lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource>lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource_0"?
=lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource?lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource_0"|
;lstm_836_while_lstm_cell_752_matmul_readvariableop_resource=lstm_836_while_lstm_cell_752_matmul_readvariableop_resource_0"?
clstm_836_while_tensorarrayv2read_tensorlistgetitem_lstm_836_tensorarrayunstack_tensorlistfromtensorelstm_836_while_tensorarrayv2read_tensorlistgetitem_lstm_836_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp3lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp2h
2lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp2lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp2l
4lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp4lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4548694

inputs(
lstm_cell_751_4548612:	d?(
lstm_cell_751_4548614:	2?$
lstm_cell_751_4548616:	?
identity??%lstm_cell_751/StatefulPartitionedCall?while;
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
%lstm_cell_751/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_751_4548612lstm_cell_751_4548614lstm_cell_751_4548616*
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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4548611n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_751_4548612lstm_cell_751_4548614lstm_cell_751_4548616*
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
while_body_4548625*
condR
while_cond_4548624*K
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
NoOpNoOp&^lstm_cell_751/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_751/StatefulPartitionedCall%lstm_cell_751/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_751_layer_call_fn_4553361

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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4548757o
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

?
%__inference_signature_wrapper_4550454
lstm_834_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_834_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4548194o
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
_user_specified_namelstm_834_input
?#
?
while_body_4548975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_752_4548999_0:2(/
while_lstm_cell_752_4549001_0:
(+
while_lstm_cell_752_4549003_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_752_4548999:2(-
while_lstm_cell_752_4549001:
()
while_lstm_cell_752_4549003:(??+while/lstm_cell_752/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_752/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_752_4548999_0while_lstm_cell_752_4549001_0while_lstm_cell_752_4549003_0*
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4548961?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_752/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_752/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_752/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_752/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_752_4548999while_lstm_cell_752_4548999_0"<
while_lstm_cell_752_4549001while_lstm_cell_752_4549001_0"<
while_lstm_cell_752_4549003while_lstm_cell_752_4549003_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_752/StatefulPartitionedCall+while/lstm_cell_752/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4553523

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
while_cond_4549308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4549308___redundant_placeholder05
1while_while_cond_4549308___redundant_placeholder15
1while_while_cond_4549308___redundant_placeholder25
1while_while_cond_4549308___redundant_placeholder3
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
while_body_4549609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_752_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_752_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_752_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_752_matmul_readvariableop_resource:2(F
4while_lstm_cell_752_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_752_biasadd_readvariableop_resource:(??*while/lstm_cell_752/BiasAdd/ReadVariableOp?)while/lstm_cell_752/MatMul/ReadVariableOp?+while/lstm_cell_752/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_752/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_752_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_752/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_752_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_752/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_752/addAddV2$while/lstm_cell_752/MatMul:product:0&while/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_752_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_752/BiasAddBiasAddwhile/lstm_cell_752/add:z:02while/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_752/splitSplit,while/lstm_cell_752/split/split_dim:output:0$while/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_752/SigmoidSigmoid"while/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_1Sigmoid"while/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mulMul!while/lstm_cell_752/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_752/ReluRelu"while/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_1Mulwhile/lstm_cell_752/Sigmoid:y:0&while/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/add_1AddV2while/lstm_cell_752/mul:z:0while/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_2Sigmoid"while/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_752/Relu_1Reluwhile/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_2Mul!while/lstm_cell_752/Sigmoid_2:y:0(while/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_752/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_752/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_752/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_752/BiasAdd/ReadVariableOp*^while/lstm_cell_752/MatMul/ReadVariableOp,^while/lstm_cell_752/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_752_biasadd_readvariableop_resource5while_lstm_cell_752_biasadd_readvariableop_resource_0"n
4while_lstm_cell_752_matmul_1_readvariableop_resource6while_lstm_cell_752_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_752_matmul_readvariableop_resource4while_lstm_cell_752_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_752/BiasAdd/ReadVariableOp*while/lstm_cell_752/BiasAdd/ReadVariableOp2V
)while/lstm_cell_752/MatMul/ReadVariableOp)while/lstm_cell_752/MatMul/ReadVariableOp2Z
+while/lstm_cell_752/MatMul_1/ReadVariableOp+while/lstm_cell_752/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4548961

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
?#
?
while_body_4548275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_750_4548299_0:	?0
while_lstm_cell_750_4548301_0:	d?,
while_lstm_cell_750_4548303_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_750_4548299:	?.
while_lstm_cell_750_4548301:	d?*
while_lstm_cell_750_4548303:	???+while/lstm_cell_750/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_750/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_750_4548299_0while_lstm_cell_750_4548301_0while_lstm_cell_750_4548303_0*
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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4548261?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_750/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_750/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_750/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_750/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_750_4548299while_lstm_cell_750_4548299_0"<
while_lstm_cell_750_4548301while_lstm_cell_750_4548301_0"<
while_lstm_cell_750_4548303while_lstm_cell_750_4548303_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_750/StatefulPartitionedCall+while/lstm_cell_750/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4548194
lstm_834_inputW
Dsequential_278_lstm_834_lstm_cell_750_matmul_readvariableop_resource:	?Y
Fsequential_278_lstm_834_lstm_cell_750_matmul_1_readvariableop_resource:	d?T
Esequential_278_lstm_834_lstm_cell_750_biasadd_readvariableop_resource:	?W
Dsequential_278_lstm_835_lstm_cell_751_matmul_readvariableop_resource:	d?Y
Fsequential_278_lstm_835_lstm_cell_751_matmul_1_readvariableop_resource:	2?T
Esequential_278_lstm_835_lstm_cell_751_biasadd_readvariableop_resource:	?V
Dsequential_278_lstm_836_lstm_cell_752_matmul_readvariableop_resource:2(X
Fsequential_278_lstm_836_lstm_cell_752_matmul_1_readvariableop_resource:
(S
Esequential_278_lstm_836_lstm_cell_752_biasadd_readvariableop_resource:(I
7sequential_278_dense_278_matmul_readvariableop_resource:
F
8sequential_278_dense_278_biasadd_readvariableop_resource:
identity??/sequential_278/dense_278/BiasAdd/ReadVariableOp?.sequential_278/dense_278/MatMul/ReadVariableOp?<sequential_278/lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp?;sequential_278/lstm_834/lstm_cell_750/MatMul/ReadVariableOp?=sequential_278/lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp?sequential_278/lstm_834/while?<sequential_278/lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp?;sequential_278/lstm_835/lstm_cell_751/MatMul/ReadVariableOp?=sequential_278/lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp?sequential_278/lstm_835/while?<sequential_278/lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp?;sequential_278/lstm_836/lstm_cell_752/MatMul/ReadVariableOp?=sequential_278/lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp?sequential_278/lstm_836/while[
sequential_278/lstm_834/ShapeShapelstm_834_input*
T0*
_output_shapes
:u
+sequential_278/lstm_834/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_278/lstm_834/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_278/lstm_834/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_278/lstm_834/strided_sliceStridedSlice&sequential_278/lstm_834/Shape:output:04sequential_278/lstm_834/strided_slice/stack:output:06sequential_278/lstm_834/strided_slice/stack_1:output:06sequential_278/lstm_834/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_278/lstm_834/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_278/lstm_834/zeros/packedPack.sequential_278/lstm_834/strided_slice:output:0/sequential_278/lstm_834/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_278/lstm_834/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_278/lstm_834/zerosFill-sequential_278/lstm_834/zeros/packed:output:0,sequential_278/lstm_834/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_278/lstm_834/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_278/lstm_834/zeros_1/packedPack.sequential_278/lstm_834/strided_slice:output:01sequential_278/lstm_834/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_278/lstm_834/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_278/lstm_834/zeros_1Fill/sequential_278/lstm_834/zeros_1/packed:output:0.sequential_278/lstm_834/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_278/lstm_834/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_278/lstm_834/transpose	Transposelstm_834_input/sequential_278/lstm_834/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_278/lstm_834/Shape_1Shape%sequential_278/lstm_834/transpose:y:0*
T0*
_output_shapes
:w
-sequential_278/lstm_834/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_278/lstm_834/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_278/lstm_834/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_278/lstm_834/strided_slice_1StridedSlice(sequential_278/lstm_834/Shape_1:output:06sequential_278/lstm_834/strided_slice_1/stack:output:08sequential_278/lstm_834/strided_slice_1/stack_1:output:08sequential_278/lstm_834/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_278/lstm_834/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_278/lstm_834/TensorArrayV2TensorListReserve<sequential_278/lstm_834/TensorArrayV2/element_shape:output:00sequential_278/lstm_834/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_278/lstm_834/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_278/lstm_834/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_278/lstm_834/transpose:y:0Vsequential_278/lstm_834/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_278/lstm_834/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_278/lstm_834/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_278/lstm_834/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_278/lstm_834/strided_slice_2StridedSlice%sequential_278/lstm_834/transpose:y:06sequential_278/lstm_834/strided_slice_2/stack:output:08sequential_278/lstm_834/strided_slice_2/stack_1:output:08sequential_278/lstm_834/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_278/lstm_834/lstm_cell_750/MatMul/ReadVariableOpReadVariableOpDsequential_278_lstm_834_lstm_cell_750_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_278/lstm_834/lstm_cell_750/MatMulMatMul0sequential_278/lstm_834/strided_slice_2:output:0Csequential_278/lstm_834/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_278/lstm_834/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOpFsequential_278_lstm_834_lstm_cell_750_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_278/lstm_834/lstm_cell_750/MatMul_1MatMul&sequential_278/lstm_834/zeros:output:0Esequential_278/lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_278/lstm_834/lstm_cell_750/addAddV26sequential_278/lstm_834/lstm_cell_750/MatMul:product:08sequential_278/lstm_834/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_278/lstm_834/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOpEsequential_278_lstm_834_lstm_cell_750_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_278/lstm_834/lstm_cell_750/BiasAddBiasAdd-sequential_278/lstm_834/lstm_cell_750/add:z:0Dsequential_278/lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_278/lstm_834/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_278/lstm_834/lstm_cell_750/splitSplit>sequential_278/lstm_834/lstm_cell_750/split/split_dim:output:06sequential_278/lstm_834/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_278/lstm_834/lstm_cell_750/SigmoidSigmoid4sequential_278/lstm_834/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_278/lstm_834/lstm_cell_750/Sigmoid_1Sigmoid4sequential_278/lstm_834/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_278/lstm_834/lstm_cell_750/mulMul3sequential_278/lstm_834/lstm_cell_750/Sigmoid_1:y:0(sequential_278/lstm_834/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_278/lstm_834/lstm_cell_750/ReluRelu4sequential_278/lstm_834/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_278/lstm_834/lstm_cell_750/mul_1Mul1sequential_278/lstm_834/lstm_cell_750/Sigmoid:y:08sequential_278/lstm_834/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_278/lstm_834/lstm_cell_750/add_1AddV2-sequential_278/lstm_834/lstm_cell_750/mul:z:0/sequential_278/lstm_834/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_278/lstm_834/lstm_cell_750/Sigmoid_2Sigmoid4sequential_278/lstm_834/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_278/lstm_834/lstm_cell_750/Relu_1Relu/sequential_278/lstm_834/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_278/lstm_834/lstm_cell_750/mul_2Mul3sequential_278/lstm_834/lstm_cell_750/Sigmoid_2:y:0:sequential_278/lstm_834/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_278/lstm_834/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_278/lstm_834/TensorArrayV2_1TensorListReserve>sequential_278/lstm_834/TensorArrayV2_1/element_shape:output:00sequential_278/lstm_834/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_278/lstm_834/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_278/lstm_834/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_278/lstm_834/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_278/lstm_834/whileWhile3sequential_278/lstm_834/while/loop_counter:output:09sequential_278/lstm_834/while/maximum_iterations:output:0%sequential_278/lstm_834/time:output:00sequential_278/lstm_834/TensorArrayV2_1:handle:0&sequential_278/lstm_834/zeros:output:0(sequential_278/lstm_834/zeros_1:output:00sequential_278/lstm_834/strided_slice_1:output:0Osequential_278/lstm_834/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_278_lstm_834_lstm_cell_750_matmul_readvariableop_resourceFsequential_278_lstm_834_lstm_cell_750_matmul_1_readvariableop_resourceEsequential_278_lstm_834_lstm_cell_750_biasadd_readvariableop_resource*
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
*sequential_278_lstm_834_while_body_4547826*6
cond.R,
*sequential_278_lstm_834_while_cond_4547825*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_278/lstm_834/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_278/lstm_834/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_278/lstm_834/while:output:3Qsequential_278/lstm_834/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_278/lstm_834/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_278/lstm_834/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_278/lstm_834/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_278/lstm_834/strided_slice_3StridedSliceCsequential_278/lstm_834/TensorArrayV2Stack/TensorListStack:tensor:06sequential_278/lstm_834/strided_slice_3/stack:output:08sequential_278/lstm_834/strided_slice_3/stack_1:output:08sequential_278/lstm_834/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_278/lstm_834/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_278/lstm_834/transpose_1	TransposeCsequential_278/lstm_834/TensorArrayV2Stack/TensorListStack:tensor:01sequential_278/lstm_834/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_278/lstm_834/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_278/lstm_835/ShapeShape'sequential_278/lstm_834/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_278/lstm_835/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_278/lstm_835/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_278/lstm_835/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_278/lstm_835/strided_sliceStridedSlice&sequential_278/lstm_835/Shape:output:04sequential_278/lstm_835/strided_slice/stack:output:06sequential_278/lstm_835/strided_slice/stack_1:output:06sequential_278/lstm_835/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_278/lstm_835/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_278/lstm_835/zeros/packedPack.sequential_278/lstm_835/strided_slice:output:0/sequential_278/lstm_835/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_278/lstm_835/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_278/lstm_835/zerosFill-sequential_278/lstm_835/zeros/packed:output:0,sequential_278/lstm_835/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_278/lstm_835/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_278/lstm_835/zeros_1/packedPack.sequential_278/lstm_835/strided_slice:output:01sequential_278/lstm_835/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_278/lstm_835/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_278/lstm_835/zeros_1Fill/sequential_278/lstm_835/zeros_1/packed:output:0.sequential_278/lstm_835/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_278/lstm_835/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_278/lstm_835/transpose	Transpose'sequential_278/lstm_834/transpose_1:y:0/sequential_278/lstm_835/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_278/lstm_835/Shape_1Shape%sequential_278/lstm_835/transpose:y:0*
T0*
_output_shapes
:w
-sequential_278/lstm_835/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_278/lstm_835/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_278/lstm_835/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_278/lstm_835/strided_slice_1StridedSlice(sequential_278/lstm_835/Shape_1:output:06sequential_278/lstm_835/strided_slice_1/stack:output:08sequential_278/lstm_835/strided_slice_1/stack_1:output:08sequential_278/lstm_835/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_278/lstm_835/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_278/lstm_835/TensorArrayV2TensorListReserve<sequential_278/lstm_835/TensorArrayV2/element_shape:output:00sequential_278/lstm_835/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_278/lstm_835/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_278/lstm_835/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_278/lstm_835/transpose:y:0Vsequential_278/lstm_835/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_278/lstm_835/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_278/lstm_835/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_278/lstm_835/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_278/lstm_835/strided_slice_2StridedSlice%sequential_278/lstm_835/transpose:y:06sequential_278/lstm_835/strided_slice_2/stack:output:08sequential_278/lstm_835/strided_slice_2/stack_1:output:08sequential_278/lstm_835/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_278/lstm_835/lstm_cell_751/MatMul/ReadVariableOpReadVariableOpDsequential_278_lstm_835_lstm_cell_751_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_278/lstm_835/lstm_cell_751/MatMulMatMul0sequential_278/lstm_835/strided_slice_2:output:0Csequential_278/lstm_835/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_278/lstm_835/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOpFsequential_278_lstm_835_lstm_cell_751_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_278/lstm_835/lstm_cell_751/MatMul_1MatMul&sequential_278/lstm_835/zeros:output:0Esequential_278/lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_278/lstm_835/lstm_cell_751/addAddV26sequential_278/lstm_835/lstm_cell_751/MatMul:product:08sequential_278/lstm_835/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_278/lstm_835/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOpEsequential_278_lstm_835_lstm_cell_751_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_278/lstm_835/lstm_cell_751/BiasAddBiasAdd-sequential_278/lstm_835/lstm_cell_751/add:z:0Dsequential_278/lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_278/lstm_835/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_278/lstm_835/lstm_cell_751/splitSplit>sequential_278/lstm_835/lstm_cell_751/split/split_dim:output:06sequential_278/lstm_835/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_278/lstm_835/lstm_cell_751/SigmoidSigmoid4sequential_278/lstm_835/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_278/lstm_835/lstm_cell_751/Sigmoid_1Sigmoid4sequential_278/lstm_835/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_278/lstm_835/lstm_cell_751/mulMul3sequential_278/lstm_835/lstm_cell_751/Sigmoid_1:y:0(sequential_278/lstm_835/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_278/lstm_835/lstm_cell_751/ReluRelu4sequential_278/lstm_835/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_278/lstm_835/lstm_cell_751/mul_1Mul1sequential_278/lstm_835/lstm_cell_751/Sigmoid:y:08sequential_278/lstm_835/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_278/lstm_835/lstm_cell_751/add_1AddV2-sequential_278/lstm_835/lstm_cell_751/mul:z:0/sequential_278/lstm_835/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_278/lstm_835/lstm_cell_751/Sigmoid_2Sigmoid4sequential_278/lstm_835/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_278/lstm_835/lstm_cell_751/Relu_1Relu/sequential_278/lstm_835/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_278/lstm_835/lstm_cell_751/mul_2Mul3sequential_278/lstm_835/lstm_cell_751/Sigmoid_2:y:0:sequential_278/lstm_835/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_278/lstm_835/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_278/lstm_835/TensorArrayV2_1TensorListReserve>sequential_278/lstm_835/TensorArrayV2_1/element_shape:output:00sequential_278/lstm_835/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_278/lstm_835/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_278/lstm_835/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_278/lstm_835/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_278/lstm_835/whileWhile3sequential_278/lstm_835/while/loop_counter:output:09sequential_278/lstm_835/while/maximum_iterations:output:0%sequential_278/lstm_835/time:output:00sequential_278/lstm_835/TensorArrayV2_1:handle:0&sequential_278/lstm_835/zeros:output:0(sequential_278/lstm_835/zeros_1:output:00sequential_278/lstm_835/strided_slice_1:output:0Osequential_278/lstm_835/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_278_lstm_835_lstm_cell_751_matmul_readvariableop_resourceFsequential_278_lstm_835_lstm_cell_751_matmul_1_readvariableop_resourceEsequential_278_lstm_835_lstm_cell_751_biasadd_readvariableop_resource*
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
*sequential_278_lstm_835_while_body_4547965*6
cond.R,
*sequential_278_lstm_835_while_cond_4547964*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_278/lstm_835/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_278/lstm_835/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_278/lstm_835/while:output:3Qsequential_278/lstm_835/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_278/lstm_835/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_278/lstm_835/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_278/lstm_835/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_278/lstm_835/strided_slice_3StridedSliceCsequential_278/lstm_835/TensorArrayV2Stack/TensorListStack:tensor:06sequential_278/lstm_835/strided_slice_3/stack:output:08sequential_278/lstm_835/strided_slice_3/stack_1:output:08sequential_278/lstm_835/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_278/lstm_835/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_278/lstm_835/transpose_1	TransposeCsequential_278/lstm_835/TensorArrayV2Stack/TensorListStack:tensor:01sequential_278/lstm_835/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_278/lstm_835/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_278/lstm_836/ShapeShape'sequential_278/lstm_835/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_278/lstm_836/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_278/lstm_836/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_278/lstm_836/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_278/lstm_836/strided_sliceStridedSlice&sequential_278/lstm_836/Shape:output:04sequential_278/lstm_836/strided_slice/stack:output:06sequential_278/lstm_836/strided_slice/stack_1:output:06sequential_278/lstm_836/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_278/lstm_836/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_278/lstm_836/zeros/packedPack.sequential_278/lstm_836/strided_slice:output:0/sequential_278/lstm_836/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_278/lstm_836/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_278/lstm_836/zerosFill-sequential_278/lstm_836/zeros/packed:output:0,sequential_278/lstm_836/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_278/lstm_836/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_278/lstm_836/zeros_1/packedPack.sequential_278/lstm_836/strided_slice:output:01sequential_278/lstm_836/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_278/lstm_836/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_278/lstm_836/zeros_1Fill/sequential_278/lstm_836/zeros_1/packed:output:0.sequential_278/lstm_836/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_278/lstm_836/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_278/lstm_836/transpose	Transpose'sequential_278/lstm_835/transpose_1:y:0/sequential_278/lstm_836/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_278/lstm_836/Shape_1Shape%sequential_278/lstm_836/transpose:y:0*
T0*
_output_shapes
:w
-sequential_278/lstm_836/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_278/lstm_836/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_278/lstm_836/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_278/lstm_836/strided_slice_1StridedSlice(sequential_278/lstm_836/Shape_1:output:06sequential_278/lstm_836/strided_slice_1/stack:output:08sequential_278/lstm_836/strided_slice_1/stack_1:output:08sequential_278/lstm_836/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_278/lstm_836/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_278/lstm_836/TensorArrayV2TensorListReserve<sequential_278/lstm_836/TensorArrayV2/element_shape:output:00sequential_278/lstm_836/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_278/lstm_836/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_278/lstm_836/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_278/lstm_836/transpose:y:0Vsequential_278/lstm_836/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_278/lstm_836/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_278/lstm_836/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_278/lstm_836/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_278/lstm_836/strided_slice_2StridedSlice%sequential_278/lstm_836/transpose:y:06sequential_278/lstm_836/strided_slice_2/stack:output:08sequential_278/lstm_836/strided_slice_2/stack_1:output:08sequential_278/lstm_836/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_278/lstm_836/lstm_cell_752/MatMul/ReadVariableOpReadVariableOpDsequential_278_lstm_836_lstm_cell_752_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_278/lstm_836/lstm_cell_752/MatMulMatMul0sequential_278/lstm_836/strided_slice_2:output:0Csequential_278/lstm_836/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_278/lstm_836/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOpFsequential_278_lstm_836_lstm_cell_752_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_278/lstm_836/lstm_cell_752/MatMul_1MatMul&sequential_278/lstm_836/zeros:output:0Esequential_278/lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_278/lstm_836/lstm_cell_752/addAddV26sequential_278/lstm_836/lstm_cell_752/MatMul:product:08sequential_278/lstm_836/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_278/lstm_836/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOpEsequential_278_lstm_836_lstm_cell_752_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_278/lstm_836/lstm_cell_752/BiasAddBiasAdd-sequential_278/lstm_836/lstm_cell_752/add:z:0Dsequential_278/lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_278/lstm_836/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_278/lstm_836/lstm_cell_752/splitSplit>sequential_278/lstm_836/lstm_cell_752/split/split_dim:output:06sequential_278/lstm_836/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_278/lstm_836/lstm_cell_752/SigmoidSigmoid4sequential_278/lstm_836/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_278/lstm_836/lstm_cell_752/Sigmoid_1Sigmoid4sequential_278/lstm_836/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_278/lstm_836/lstm_cell_752/mulMul3sequential_278/lstm_836/lstm_cell_752/Sigmoid_1:y:0(sequential_278/lstm_836/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_278/lstm_836/lstm_cell_752/ReluRelu4sequential_278/lstm_836/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_278/lstm_836/lstm_cell_752/mul_1Mul1sequential_278/lstm_836/lstm_cell_752/Sigmoid:y:08sequential_278/lstm_836/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_278/lstm_836/lstm_cell_752/add_1AddV2-sequential_278/lstm_836/lstm_cell_752/mul:z:0/sequential_278/lstm_836/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_278/lstm_836/lstm_cell_752/Sigmoid_2Sigmoid4sequential_278/lstm_836/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_278/lstm_836/lstm_cell_752/Relu_1Relu/sequential_278/lstm_836/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_278/lstm_836/lstm_cell_752/mul_2Mul3sequential_278/lstm_836/lstm_cell_752/Sigmoid_2:y:0:sequential_278/lstm_836/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_278/lstm_836/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_278/lstm_836/TensorArrayV2_1TensorListReserve>sequential_278/lstm_836/TensorArrayV2_1/element_shape:output:00sequential_278/lstm_836/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_278/lstm_836/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_278/lstm_836/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_278/lstm_836/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_278/lstm_836/whileWhile3sequential_278/lstm_836/while/loop_counter:output:09sequential_278/lstm_836/while/maximum_iterations:output:0%sequential_278/lstm_836/time:output:00sequential_278/lstm_836/TensorArrayV2_1:handle:0&sequential_278/lstm_836/zeros:output:0(sequential_278/lstm_836/zeros_1:output:00sequential_278/lstm_836/strided_slice_1:output:0Osequential_278/lstm_836/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_278_lstm_836_lstm_cell_752_matmul_readvariableop_resourceFsequential_278_lstm_836_lstm_cell_752_matmul_1_readvariableop_resourceEsequential_278_lstm_836_lstm_cell_752_biasadd_readvariableop_resource*
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
*sequential_278_lstm_836_while_body_4548104*6
cond.R,
*sequential_278_lstm_836_while_cond_4548103*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_278/lstm_836/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_278/lstm_836/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_278/lstm_836/while:output:3Qsequential_278/lstm_836/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_278/lstm_836/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_278/lstm_836/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_278/lstm_836/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_278/lstm_836/strided_slice_3StridedSliceCsequential_278/lstm_836/TensorArrayV2Stack/TensorListStack:tensor:06sequential_278/lstm_836/strided_slice_3/stack:output:08sequential_278/lstm_836/strided_slice_3/stack_1:output:08sequential_278/lstm_836/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_278/lstm_836/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_278/lstm_836/transpose_1	TransposeCsequential_278/lstm_836/TensorArrayV2Stack/TensorListStack:tensor:01sequential_278/lstm_836/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_278/lstm_836/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_278/dense_278/MatMul/ReadVariableOpReadVariableOp7sequential_278_dense_278_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_278/dense_278/MatMulMatMul0sequential_278/lstm_836/strided_slice_3:output:06sequential_278/dense_278/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_278/dense_278/BiasAdd/ReadVariableOpReadVariableOp8sequential_278_dense_278_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_278/dense_278/BiasAddBiasAdd)sequential_278/dense_278/MatMul:product:07sequential_278/dense_278/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_278/dense_278/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_278/dense_278/BiasAdd/ReadVariableOp/^sequential_278/dense_278/MatMul/ReadVariableOp=^sequential_278/lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp<^sequential_278/lstm_834/lstm_cell_750/MatMul/ReadVariableOp>^sequential_278/lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp^sequential_278/lstm_834/while=^sequential_278/lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp<^sequential_278/lstm_835/lstm_cell_751/MatMul/ReadVariableOp>^sequential_278/lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp^sequential_278/lstm_835/while=^sequential_278/lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp<^sequential_278/lstm_836/lstm_cell_752/MatMul/ReadVariableOp>^sequential_278/lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp^sequential_278/lstm_836/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_278/dense_278/BiasAdd/ReadVariableOp/sequential_278/dense_278/BiasAdd/ReadVariableOp2`
.sequential_278/dense_278/MatMul/ReadVariableOp.sequential_278/dense_278/MatMul/ReadVariableOp2|
<sequential_278/lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp<sequential_278/lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp2z
;sequential_278/lstm_834/lstm_cell_750/MatMul/ReadVariableOp;sequential_278/lstm_834/lstm_cell_750/MatMul/ReadVariableOp2~
=sequential_278/lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp=sequential_278/lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp2>
sequential_278/lstm_834/whilesequential_278/lstm_834/while2|
<sequential_278/lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp<sequential_278/lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp2z
;sequential_278/lstm_835/lstm_cell_751/MatMul/ReadVariableOp;sequential_278/lstm_835/lstm_cell_751/MatMul/ReadVariableOp2~
=sequential_278/lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp=sequential_278/lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp2>
sequential_278/lstm_835/whilesequential_278/lstm_835/while2|
<sequential_278/lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp<sequential_278/lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp2z
;sequential_278/lstm_836/lstm_cell_752/MatMul/ReadVariableOp;sequential_278/lstm_836/lstm_cell_752/MatMul/ReadVariableOp2~
=sequential_278/lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp=sequential_278/lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp2>
sequential_278/lstm_836/whilesequential_278/lstm_836/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_834_input
?J
?
E__inference_lstm_835_layer_call_and_return_conditional_losses_4549543

inputs?
,lstm_cell_751_matmul_readvariableop_resource:	d?A
.lstm_cell_751_matmul_1_readvariableop_resource:	2?<
-lstm_cell_751_biasadd_readvariableop_resource:	?
identity??$lstm_cell_751/BiasAdd/ReadVariableOp?#lstm_cell_751/MatMul/ReadVariableOp?%lstm_cell_751/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_751/MatMul/ReadVariableOpReadVariableOp,lstm_cell_751_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_751/MatMulMatMulstrided_slice_2:output:0+lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_751_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_751/MatMul_1MatMulzeros:output:0-lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_751/addAddV2lstm_cell_751/MatMul:product:0 lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_751_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_751/BiasAddBiasAddlstm_cell_751/add:z:0,lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_751/splitSplit&lstm_cell_751/split/split_dim:output:0lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_751/SigmoidSigmoidlstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_1Sigmoidlstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_751/mulMullstm_cell_751/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_751/ReluRelulstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_1Mullstm_cell_751/Sigmoid:y:0 lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_751/add_1AddV2lstm_cell_751/mul:z:0lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_2Sigmoidlstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_751/Relu_1Relulstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_2Mullstm_cell_751/Sigmoid_2:y:0"lstm_cell_751/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_751_matmul_readvariableop_resource.lstm_cell_751_matmul_1_readvariableop_resource-lstm_cell_751_biasadd_readvariableop_resource*
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
while_body_4549459*
condR
while_cond_4549458*K
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
NoOpNoOp%^lstm_cell_751/BiasAdd/ReadVariableOp$^lstm_cell_751/MatMul/ReadVariableOp&^lstm_cell_751/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_751/BiasAdd/ReadVariableOp$lstm_cell_751/BiasAdd/ReadVariableOp2J
#lstm_cell_751/MatMul/ReadVariableOp#lstm_cell_751/MatMul/ReadVariableOp2N
%lstm_cell_751/MatMul_1/ReadVariableOp%lstm_cell_751/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4549459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_751_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_751_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_751_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_751_matmul_readvariableop_resource:	d?G
4while_lstm_cell_751_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_751_biasadd_readvariableop_resource:	???*while/lstm_cell_751/BiasAdd/ReadVariableOp?)while/lstm_cell_751/MatMul/ReadVariableOp?+while/lstm_cell_751/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_751/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_751_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_751/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_751_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_751/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_751/addAddV2$while/lstm_cell_751/MatMul:product:0&while/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_751_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_751/BiasAddBiasAddwhile/lstm_cell_751/add:z:02while/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_751/splitSplit,while/lstm_cell_751/split/split_dim:output:0$while/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_751/SigmoidSigmoid"while/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_1Sigmoid"while/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mulMul!while/lstm_cell_751/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_751/ReluRelu"while/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_1Mulwhile/lstm_cell_751/Sigmoid:y:0&while/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/add_1AddV2while/lstm_cell_751/mul:z:0while/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_2Sigmoid"while/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_751/Relu_1Reluwhile/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_2Mul!while/lstm_cell_751/Sigmoid_2:y:0(while/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_751/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_751/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_751/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_751/BiasAdd/ReadVariableOp*^while/lstm_cell_751/MatMul/ReadVariableOp,^while/lstm_cell_751/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_751_biasadd_readvariableop_resource5while_lstm_cell_751_biasadd_readvariableop_resource_0"n
4while_lstm_cell_751_matmul_1_readvariableop_resource6while_lstm_cell_751_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_751_matmul_readvariableop_resource4while_lstm_cell_751_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_751/BiasAdd/ReadVariableOp*while/lstm_cell_751/BiasAdd/ReadVariableOp2V
)while/lstm_cell_751/MatMul/ReadVariableOp)while/lstm_cell_751/MatMul/ReadVariableOp2Z
+while/lstm_cell_751/MatMul_1/ReadVariableOp+while/lstm_cell_751/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551835

inputs?
,lstm_cell_750_matmul_readvariableop_resource:	?A
.lstm_cell_750_matmul_1_readvariableop_resource:	d?<
-lstm_cell_750_biasadd_readvariableop_resource:	?
identity??$lstm_cell_750/BiasAdd/ReadVariableOp?#lstm_cell_750/MatMul/ReadVariableOp?%lstm_cell_750/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_750/MatMul/ReadVariableOpReadVariableOp,lstm_cell_750_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_750/MatMulMatMulstrided_slice_2:output:0+lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_750_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_750/MatMul_1MatMulzeros:output:0-lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_750/addAddV2lstm_cell_750/MatMul:product:0 lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_750_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_750/BiasAddBiasAddlstm_cell_750/add:z:0,lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_750/splitSplit&lstm_cell_750/split/split_dim:output:0lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_750/SigmoidSigmoidlstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_1Sigmoidlstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_750/mulMullstm_cell_750/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_750/ReluRelulstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_1Mullstm_cell_750/Sigmoid:y:0 lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_750/add_1AddV2lstm_cell_750/mul:z:0lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_2Sigmoidlstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_750/Relu_1Relulstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_2Mullstm_cell_750/Sigmoid_2:y:0"lstm_cell_750/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_750_matmul_readvariableop_resource.lstm_cell_750_matmul_1_readvariableop_resource-lstm_cell_750_biasadd_readvariableop_resource*
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
while_body_4551751*
condR
while_cond_4551750*K
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
NoOpNoOp%^lstm_cell_750/BiasAdd/ReadVariableOp$^lstm_cell_750/MatMul/ReadVariableOp&^lstm_cell_750/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_750/BiasAdd/ReadVariableOp$lstm_cell_750/BiasAdd/ReadVariableOp2J
#lstm_cell_750/MatMul/ReadVariableOp#lstm_cell_750/MatMul/ReadVariableOp2N
%lstm_cell_750/MatMul_1/ReadVariableOp%lstm_cell_750/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4553666
file_prefix/
+savev2_dense_278_kernel_read_readvariableop-
)savev2_dense_278_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_834_lstm_cell_834_kernel_read_readvariableopF
Bsavev2_lstm_834_lstm_cell_834_recurrent_kernel_read_readvariableop:
6savev2_lstm_834_lstm_cell_834_bias_read_readvariableop<
8savev2_lstm_835_lstm_cell_835_kernel_read_readvariableopF
Bsavev2_lstm_835_lstm_cell_835_recurrent_kernel_read_readvariableop:
6savev2_lstm_835_lstm_cell_835_bias_read_readvariableop<
8savev2_lstm_836_lstm_cell_836_kernel_read_readvariableopF
Bsavev2_lstm_836_lstm_cell_836_recurrent_kernel_read_readvariableop:
6savev2_lstm_836_lstm_cell_836_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_278_kernel_m_read_readvariableop4
0savev2_adam_dense_278_bias_m_read_readvariableopC
?savev2_adam_lstm_834_lstm_cell_834_kernel_m_read_readvariableopM
Isavev2_adam_lstm_834_lstm_cell_834_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_834_lstm_cell_834_bias_m_read_readvariableopC
?savev2_adam_lstm_835_lstm_cell_835_kernel_m_read_readvariableopM
Isavev2_adam_lstm_835_lstm_cell_835_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_835_lstm_cell_835_bias_m_read_readvariableopC
?savev2_adam_lstm_836_lstm_cell_836_kernel_m_read_readvariableopM
Isavev2_adam_lstm_836_lstm_cell_836_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_836_lstm_cell_836_bias_m_read_readvariableop6
2savev2_adam_dense_278_kernel_v_read_readvariableop4
0savev2_adam_dense_278_bias_v_read_readvariableopC
?savev2_adam_lstm_834_lstm_cell_834_kernel_v_read_readvariableopM
Isavev2_adam_lstm_834_lstm_cell_834_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_834_lstm_cell_834_bias_v_read_readvariableopC
?savev2_adam_lstm_835_lstm_cell_835_kernel_v_read_readvariableopM
Isavev2_adam_lstm_835_lstm_cell_835_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_835_lstm_cell_835_bias_v_read_readvariableopC
?savev2_adam_lstm_836_lstm_cell_836_kernel_v_read_readvariableopM
Isavev2_adam_lstm_836_lstm_cell_836_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_836_lstm_cell_836_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_278_kernel_read_readvariableop)savev2_dense_278_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_834_lstm_cell_834_kernel_read_readvariableopBsavev2_lstm_834_lstm_cell_834_recurrent_kernel_read_readvariableop6savev2_lstm_834_lstm_cell_834_bias_read_readvariableop8savev2_lstm_835_lstm_cell_835_kernel_read_readvariableopBsavev2_lstm_835_lstm_cell_835_recurrent_kernel_read_readvariableop6savev2_lstm_835_lstm_cell_835_bias_read_readvariableop8savev2_lstm_836_lstm_cell_836_kernel_read_readvariableopBsavev2_lstm_836_lstm_cell_836_recurrent_kernel_read_readvariableop6savev2_lstm_836_lstm_cell_836_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_278_kernel_m_read_readvariableop0savev2_adam_dense_278_bias_m_read_readvariableop?savev2_adam_lstm_834_lstm_cell_834_kernel_m_read_readvariableopIsavev2_adam_lstm_834_lstm_cell_834_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_834_lstm_cell_834_bias_m_read_readvariableop?savev2_adam_lstm_835_lstm_cell_835_kernel_m_read_readvariableopIsavev2_adam_lstm_835_lstm_cell_835_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_835_lstm_cell_835_bias_m_read_readvariableop?savev2_adam_lstm_836_lstm_cell_836_kernel_m_read_readvariableopIsavev2_adam_lstm_836_lstm_cell_836_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_836_lstm_cell_836_bias_m_read_readvariableop2savev2_adam_dense_278_kernel_v_read_readvariableop0savev2_adam_dense_278_bias_v_read_readvariableop?savev2_adam_lstm_834_lstm_cell_834_kernel_v_read_readvariableopIsavev2_adam_lstm_834_lstm_cell_834_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_834_lstm_cell_834_bias_v_read_readvariableop?savev2_adam_lstm_835_lstm_cell_835_kernel_v_read_readvariableopIsavev2_adam_lstm_835_lstm_cell_835_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_835_lstm_cell_835_bias_v_read_readvariableop?savev2_adam_lstm_836_lstm_cell_836_kernel_v_read_readvariableopIsavev2_adam_lstm_836_lstm_cell_836_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_836_lstm_cell_836_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550307

inputs#
lstm_834_4550280:	?#
lstm_834_4550282:	d?
lstm_834_4550284:	?#
lstm_835_4550287:	d?#
lstm_835_4550289:	2?
lstm_835_4550291:	?"
lstm_836_4550294:2("
lstm_836_4550296:
(
lstm_836_4550298:(#
dense_278_4550301:

dense_278_4550303:
identity??!dense_278/StatefulPartitionedCall? lstm_834/StatefulPartitionedCall? lstm_835/StatefulPartitionedCall? lstm_836/StatefulPartitionedCall?
 lstm_834/StatefulPartitionedCallStatefulPartitionedCallinputslstm_834_4550280lstm_834_4550282lstm_834_4550284*
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4550239?
 lstm_835/StatefulPartitionedCallStatefulPartitionedCall)lstm_834/StatefulPartitionedCall:output:0lstm_835_4550287lstm_835_4550289lstm_835_4550291*
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4550074?
 lstm_836/StatefulPartitionedCallStatefulPartitionedCall)lstm_835/StatefulPartitionedCall:output:0lstm_836_4550294lstm_836_4550296lstm_836_4550298*
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549909?
!dense_278/StatefulPartitionedCallStatefulPartitionedCall)lstm_836/StatefulPartitionedCall:output:0dense_278_4550301dense_278_4550303*
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
F__inference_dense_278_layer_call_and_return_conditional_losses_4549711y
IdentityIdentity*dense_278/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_278/StatefulPartitionedCall!^lstm_834/StatefulPartitionedCall!^lstm_835/StatefulPartitionedCall!^lstm_836/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_278/StatefulPartitionedCall!dense_278/StatefulPartitionedCall2D
 lstm_834/StatefulPartitionedCall lstm_834/StatefulPartitionedCall2D
 lstm_835/StatefulPartitionedCall lstm_835/StatefulPartitionedCall2D
 lstm_836/StatefulPartitionedCall lstm_836/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4551608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_750_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_750_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_750_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_750_matmul_readvariableop_resource:	?G
4while_lstm_cell_750_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_750_biasadd_readvariableop_resource:	???*while/lstm_cell_750/BiasAdd/ReadVariableOp?)while/lstm_cell_750/MatMul/ReadVariableOp?+while/lstm_cell_750/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_750/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_750_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_750/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_750_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_750/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_750/addAddV2$while/lstm_cell_750/MatMul:product:0&while/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_750_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_750/BiasAddBiasAddwhile/lstm_cell_750/add:z:02while/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_750/splitSplit,while/lstm_cell_750/split/split_dim:output:0$while/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_750/SigmoidSigmoid"while/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_1Sigmoid"while/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mulMul!while/lstm_cell_750/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_750/ReluRelu"while/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_1Mulwhile/lstm_cell_750/Sigmoid:y:0&while/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/add_1AddV2while/lstm_cell_750/mul:z:0while/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_2Sigmoid"while/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_750/Relu_1Reluwhile/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_2Mul!while/lstm_cell_750/Sigmoid_2:y:0(while/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_750/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_750/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_750/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_750/BiasAdd/ReadVariableOp*^while/lstm_cell_750/MatMul/ReadVariableOp,^while/lstm_cell_750/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_750_biasadd_readvariableop_resource5while_lstm_cell_750_biasadd_readvariableop_resource_0"n
4while_lstm_cell_750_matmul_1_readvariableop_resource6while_lstm_cell_750_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_750_matmul_readvariableop_resource4while_lstm_cell_750_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_750/BiasAdd/ReadVariableOp*while/lstm_cell_750/BiasAdd/ReadVariableOp2V
)while/lstm_cell_750/MatMul/ReadVariableOp)while/lstm_cell_750/MatMul/ReadVariableOp2Z
+while/lstm_cell_750/MatMul_1/ReadVariableOp+while/lstm_cell_750/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4553295

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
while_cond_4553125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4553125___redundant_placeholder05
1while_while_cond_4553125___redundant_placeholder15
1while_while_cond_4553125___redundant_placeholder25
1while_while_cond_4553125___redundant_placeholder3
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
*__inference_lstm_835_layer_call_fn_4552011

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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4549543s
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4552781
inputs_0>
,lstm_cell_752_matmul_readvariableop_resource:2(@
.lstm_cell_752_matmul_1_readvariableop_resource:
(;
-lstm_cell_752_biasadd_readvariableop_resource:(
identity??$lstm_cell_752/BiasAdd/ReadVariableOp?#lstm_cell_752/MatMul/ReadVariableOp?%lstm_cell_752/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_752/MatMul/ReadVariableOpReadVariableOp,lstm_cell_752_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_752/MatMulMatMulstrided_slice_2:output:0+lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_752_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_752/MatMul_1MatMulzeros:output:0-lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_752/addAddV2lstm_cell_752/MatMul:product:0 lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_752_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_752/BiasAddBiasAddlstm_cell_752/add:z:0,lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_752/splitSplit&lstm_cell_752/split/split_dim:output:0lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_752/SigmoidSigmoidlstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_1Sigmoidlstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_752/mulMullstm_cell_752/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_752/ReluRelulstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_1Mullstm_cell_752/Sigmoid:y:0 lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_752/add_1AddV2lstm_cell_752/mul:z:0lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_2Sigmoidlstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_752/Relu_1Relulstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_2Mullstm_cell_752/Sigmoid_2:y:0"lstm_cell_752/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_752_matmul_readvariableop_resource.lstm_cell_752_matmul_1_readvariableop_resource-lstm_cell_752_biasadd_readvariableop_resource*
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
while_body_4552697*
condR
while_cond_4552696*K
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
NoOpNoOp%^lstm_cell_752/BiasAdd/ReadVariableOp$^lstm_cell_752/MatMul/ReadVariableOp&^lstm_cell_752/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_752/BiasAdd/ReadVariableOp$lstm_cell_752/BiasAdd/ReadVariableOp2J
#lstm_cell_752/MatMul/ReadVariableOp#lstm_cell_752/MatMul/ReadVariableOp2N
%lstm_cell_752/MatMul_1/ReadVariableOp%lstm_cell_752/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_836_while_body_4551272.
*lstm_836_while_lstm_836_while_loop_counter4
0lstm_836_while_lstm_836_while_maximum_iterations
lstm_836_while_placeholder 
lstm_836_while_placeholder_1 
lstm_836_while_placeholder_2 
lstm_836_while_placeholder_3-
)lstm_836_while_lstm_836_strided_slice_1_0i
elstm_836_while_tensorarrayv2read_tensorlistgetitem_lstm_836_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_836_while_lstm_cell_752_matmul_readvariableop_resource_0:2(Q
?lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource_0:
(L
>lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource_0:(
lstm_836_while_identity
lstm_836_while_identity_1
lstm_836_while_identity_2
lstm_836_while_identity_3
lstm_836_while_identity_4
lstm_836_while_identity_5+
'lstm_836_while_lstm_836_strided_slice_1g
clstm_836_while_tensorarrayv2read_tensorlistgetitem_lstm_836_tensorarrayunstack_tensorlistfromtensorM
;lstm_836_while_lstm_cell_752_matmul_readvariableop_resource:2(O
=lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource:
(J
<lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource:(??3lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp?2lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp?4lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp?
@lstm_836/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_836/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_836_while_tensorarrayv2read_tensorlistgetitem_lstm_836_tensorarrayunstack_tensorlistfromtensor_0lstm_836_while_placeholderIlstm_836/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_836/while/lstm_cell_752/MatMul/ReadVariableOpReadVariableOp=lstm_836_while_lstm_cell_752_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_836/while/lstm_cell_752/MatMulMatMul9lstm_836/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp?lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_836/while/lstm_cell_752/MatMul_1MatMullstm_836_while_placeholder_2<lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_836/while/lstm_cell_752/addAddV2-lstm_836/while/lstm_cell_752/MatMul:product:0/lstm_836/while/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp>lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_836/while/lstm_cell_752/BiasAddBiasAdd$lstm_836/while/lstm_cell_752/add:z:0;lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_836/while/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_836/while/lstm_cell_752/splitSplit5lstm_836/while/lstm_cell_752/split/split_dim:output:0-lstm_836/while/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_836/while/lstm_cell_752/SigmoidSigmoid+lstm_836/while/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_836/while/lstm_cell_752/Sigmoid_1Sigmoid+lstm_836/while/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_836/while/lstm_cell_752/mulMul*lstm_836/while/lstm_cell_752/Sigmoid_1:y:0lstm_836_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_836/while/lstm_cell_752/ReluRelu+lstm_836/while/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_836/while/lstm_cell_752/mul_1Mul(lstm_836/while/lstm_cell_752/Sigmoid:y:0/lstm_836/while/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_836/while/lstm_cell_752/add_1AddV2$lstm_836/while/lstm_cell_752/mul:z:0&lstm_836/while/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_836/while/lstm_cell_752/Sigmoid_2Sigmoid+lstm_836/while/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_836/while/lstm_cell_752/Relu_1Relu&lstm_836/while/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_836/while/lstm_cell_752/mul_2Mul*lstm_836/while/lstm_cell_752/Sigmoid_2:y:01lstm_836/while/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_836/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_836_while_placeholder_1lstm_836_while_placeholder&lstm_836/while/lstm_cell_752/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_836/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_836/while/addAddV2lstm_836_while_placeholderlstm_836/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_836/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_836/while/add_1AddV2*lstm_836_while_lstm_836_while_loop_counterlstm_836/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_836/while/IdentityIdentitylstm_836/while/add_1:z:0^lstm_836/while/NoOp*
T0*
_output_shapes
: ?
lstm_836/while/Identity_1Identity0lstm_836_while_lstm_836_while_maximum_iterations^lstm_836/while/NoOp*
T0*
_output_shapes
: t
lstm_836/while/Identity_2Identitylstm_836/while/add:z:0^lstm_836/while/NoOp*
T0*
_output_shapes
: ?
lstm_836/while/Identity_3IdentityClstm_836/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_836/while/NoOp*
T0*
_output_shapes
: ?
lstm_836/while/Identity_4Identity&lstm_836/while/lstm_cell_752/mul_2:z:0^lstm_836/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_836/while/Identity_5Identity&lstm_836/while/lstm_cell_752/add_1:z:0^lstm_836/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_836/while/NoOpNoOp4^lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp3^lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp5^lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_836_while_identity lstm_836/while/Identity:output:0"?
lstm_836_while_identity_1"lstm_836/while/Identity_1:output:0"?
lstm_836_while_identity_2"lstm_836/while/Identity_2:output:0"?
lstm_836_while_identity_3"lstm_836/while/Identity_3:output:0"?
lstm_836_while_identity_4"lstm_836/while/Identity_4:output:0"?
lstm_836_while_identity_5"lstm_836/while/Identity_5:output:0"T
'lstm_836_while_lstm_836_strided_slice_1)lstm_836_while_lstm_836_strided_slice_1_0"~
<lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource>lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource_0"?
=lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource?lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource_0"|
;lstm_836_while_lstm_cell_752_matmul_readvariableop_resource=lstm_836_while_lstm_cell_752_matmul_readvariableop_resource_0"?
clstm_836_while_tensorarrayv2read_tensorlistgetitem_lstm_836_tensorarrayunstack_tensorlistfromtensorelstm_836_while_tensorarrayv2read_tensorlistgetitem_lstm_836_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp3lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp2h
2lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp2lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp2l
4lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp4lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_750_layer_call_fn_4553246

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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4548261o
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
/__inference_lstm_cell_750_layer_call_fn_4553263

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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4548407o
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
?K
?
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551549
inputs_0?
,lstm_cell_750_matmul_readvariableop_resource:	?A
.lstm_cell_750_matmul_1_readvariableop_resource:	d?<
-lstm_cell_750_biasadd_readvariableop_resource:	?
identity??$lstm_cell_750/BiasAdd/ReadVariableOp?#lstm_cell_750/MatMul/ReadVariableOp?%lstm_cell_750/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_750/MatMul/ReadVariableOpReadVariableOp,lstm_cell_750_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_750/MatMulMatMulstrided_slice_2:output:0+lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_750_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_750/MatMul_1MatMulzeros:output:0-lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_750/addAddV2lstm_cell_750/MatMul:product:0 lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_750_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_750/BiasAddBiasAddlstm_cell_750/add:z:0,lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_750/splitSplit&lstm_cell_750/split/split_dim:output:0lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_750/SigmoidSigmoidlstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_1Sigmoidlstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_750/mulMullstm_cell_750/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_750/ReluRelulstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_1Mullstm_cell_750/Sigmoid:y:0 lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_750/add_1AddV2lstm_cell_750/mul:z:0lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_2Sigmoidlstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_750/Relu_1Relulstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_2Mullstm_cell_750/Sigmoid_2:y:0"lstm_cell_750/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_750_matmul_readvariableop_resource.lstm_cell_750_matmul_1_readvariableop_resource-lstm_cell_750_biasadd_readvariableop_resource*
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
while_body_4551465*
condR
while_cond_4551464*K
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
NoOpNoOp%^lstm_cell_750/BiasAdd/ReadVariableOp$^lstm_cell_750/MatMul/ReadVariableOp&^lstm_cell_750/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_750/BiasAdd/ReadVariableOp$lstm_cell_750/BiasAdd/ReadVariableOp2J
#lstm_cell_750/MatMul/ReadVariableOp#lstm_cell_750/MatMul/ReadVariableOp2N
%lstm_cell_750/MatMul_1/ReadVariableOp%lstm_cell_750/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4551893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4551893___redundant_placeholder05
1while_while_cond_4551893___redundant_placeholder15
1while_while_cond_4551893___redundant_placeholder25
1while_while_cond_4551893___redundant_placeholder3
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
0__inference_sequential_278_layer_call_fn_4550508

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
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550307o
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
?
*__inference_lstm_834_layer_call_fn_4551406

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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4550239s
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4553067

inputs>
,lstm_cell_752_matmul_readvariableop_resource:2(@
.lstm_cell_752_matmul_1_readvariableop_resource:
(;
-lstm_cell_752_biasadd_readvariableop_resource:(
identity??$lstm_cell_752/BiasAdd/ReadVariableOp?#lstm_cell_752/MatMul/ReadVariableOp?%lstm_cell_752/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_752/MatMul/ReadVariableOpReadVariableOp,lstm_cell_752_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_752/MatMulMatMulstrided_slice_2:output:0+lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_752_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_752/MatMul_1MatMulzeros:output:0-lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_752/addAddV2lstm_cell_752/MatMul:product:0 lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_752_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_752/BiasAddBiasAddlstm_cell_752/add:z:0,lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_752/splitSplit&lstm_cell_752/split/split_dim:output:0lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_752/SigmoidSigmoidlstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_1Sigmoidlstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_752/mulMullstm_cell_752/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_752/ReluRelulstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_1Mullstm_cell_752/Sigmoid:y:0 lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_752/add_1AddV2lstm_cell_752/mul:z:0lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_2Sigmoidlstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_752/Relu_1Relulstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_2Mullstm_cell_752/Sigmoid_2:y:0"lstm_cell_752/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_752_matmul_readvariableop_resource.lstm_cell_752_matmul_1_readvariableop_resource-lstm_cell_752_biasadd_readvariableop_resource*
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
while_body_4552983*
condR
while_cond_4552982*K
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
NoOpNoOp%^lstm_cell_752/BiasAdd/ReadVariableOp$^lstm_cell_752/MatMul/ReadVariableOp&^lstm_cell_752/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_752/BiasAdd/ReadVariableOp$lstm_cell_752/BiasAdd/ReadVariableOp2J
#lstm_cell_752/MatMul/ReadVariableOp#lstm_cell_752/MatMul/ReadVariableOp2N
%lstm_cell_752/MatMul_1/ReadVariableOp%lstm_cell_752/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549693

inputs>
,lstm_cell_752_matmul_readvariableop_resource:2(@
.lstm_cell_752_matmul_1_readvariableop_resource:
(;
-lstm_cell_752_biasadd_readvariableop_resource:(
identity??$lstm_cell_752/BiasAdd/ReadVariableOp?#lstm_cell_752/MatMul/ReadVariableOp?%lstm_cell_752/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_752/MatMul/ReadVariableOpReadVariableOp,lstm_cell_752_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_752/MatMulMatMulstrided_slice_2:output:0+lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_752_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_752/MatMul_1MatMulzeros:output:0-lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_752/addAddV2lstm_cell_752/MatMul:product:0 lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_752_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_752/BiasAddBiasAddlstm_cell_752/add:z:0,lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_752/splitSplit&lstm_cell_752/split/split_dim:output:0lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_752/SigmoidSigmoidlstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_1Sigmoidlstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_752/mulMullstm_cell_752/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_752/ReluRelulstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_1Mullstm_cell_752/Sigmoid:y:0 lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_752/add_1AddV2lstm_cell_752/mul:z:0lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_2Sigmoidlstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_752/Relu_1Relulstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_2Mullstm_cell_752/Sigmoid_2:y:0"lstm_cell_752/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_752_matmul_readvariableop_resource.lstm_cell_752_matmul_1_readvariableop_resource-lstm_cell_752_biasadd_readvariableop_resource*
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
while_body_4549609*
condR
while_cond_4549608*K
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
NoOpNoOp%^lstm_cell_752/BiasAdd/ReadVariableOp$^lstm_cell_752/MatMul/ReadVariableOp&^lstm_cell_752/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_752/BiasAdd/ReadVariableOp$lstm_cell_752/BiasAdd/ReadVariableOp2J
#lstm_cell_752/MatMul/ReadVariableOp#lstm_cell_752/MatMul/ReadVariableOp2N
%lstm_cell_752/MatMul_1/ReadVariableOp%lstm_cell_752/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_4549166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_752_4549190_0:2(/
while_lstm_cell_752_4549192_0:
(+
while_lstm_cell_752_4549194_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_752_4549190:2(-
while_lstm_cell_752_4549192:
()
while_lstm_cell_752_4549194:(??+while/lstm_cell_752/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_752/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_752_4549190_0while_lstm_cell_752_4549192_0while_lstm_cell_752_4549194_0*
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4549107?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_752/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_752/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_752/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_752/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_752_4549190while_lstm_cell_752_4549190_0"<
while_lstm_cell_752_4549192while_lstm_cell_752_4549192_0"<
while_lstm_cell_752_4549194while_lstm_cell_752_4549194_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_752/StatefulPartitionedCall+while/lstm_cell_752/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4548407

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
?
?
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4548757

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
?
?
*__inference_lstm_836_layer_call_fn_4552638

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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549909o
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
??
?
K__inference_sequential_278_layer_call_and_return_conditional_losses_4551362

inputsH
5lstm_834_lstm_cell_750_matmul_readvariableop_resource:	?J
7lstm_834_lstm_cell_750_matmul_1_readvariableop_resource:	d?E
6lstm_834_lstm_cell_750_biasadd_readvariableop_resource:	?H
5lstm_835_lstm_cell_751_matmul_readvariableop_resource:	d?J
7lstm_835_lstm_cell_751_matmul_1_readvariableop_resource:	2?E
6lstm_835_lstm_cell_751_biasadd_readvariableop_resource:	?G
5lstm_836_lstm_cell_752_matmul_readvariableop_resource:2(I
7lstm_836_lstm_cell_752_matmul_1_readvariableop_resource:
(D
6lstm_836_lstm_cell_752_biasadd_readvariableop_resource:(:
(dense_278_matmul_readvariableop_resource:
7
)dense_278_biasadd_readvariableop_resource:
identity?? dense_278/BiasAdd/ReadVariableOp?dense_278/MatMul/ReadVariableOp?-lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp?,lstm_834/lstm_cell_750/MatMul/ReadVariableOp?.lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp?lstm_834/while?-lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp?,lstm_835/lstm_cell_751/MatMul/ReadVariableOp?.lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp?lstm_835/while?-lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp?,lstm_836/lstm_cell_752/MatMul/ReadVariableOp?.lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp?lstm_836/whileD
lstm_834/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_834/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_834/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_834/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_834/strided_sliceStridedSlicelstm_834/Shape:output:0%lstm_834/strided_slice/stack:output:0'lstm_834/strided_slice/stack_1:output:0'lstm_834/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_834/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_834/zeros/packedPacklstm_834/strided_slice:output:0 lstm_834/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_834/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_834/zerosFilllstm_834/zeros/packed:output:0lstm_834/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_834/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_834/zeros_1/packedPacklstm_834/strided_slice:output:0"lstm_834/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_834/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_834/zeros_1Fill lstm_834/zeros_1/packed:output:0lstm_834/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_834/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_834/transpose	Transposeinputs lstm_834/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_834/Shape_1Shapelstm_834/transpose:y:0*
T0*
_output_shapes
:h
lstm_834/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_834/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_834/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_834/strided_slice_1StridedSlicelstm_834/Shape_1:output:0'lstm_834/strided_slice_1/stack:output:0)lstm_834/strided_slice_1/stack_1:output:0)lstm_834/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_834/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_834/TensorArrayV2TensorListReserve-lstm_834/TensorArrayV2/element_shape:output:0!lstm_834/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_834/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_834/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_834/transpose:y:0Glstm_834/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_834/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_834/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_834/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_834/strided_slice_2StridedSlicelstm_834/transpose:y:0'lstm_834/strided_slice_2/stack:output:0)lstm_834/strided_slice_2/stack_1:output:0)lstm_834/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_834/lstm_cell_750/MatMul/ReadVariableOpReadVariableOp5lstm_834_lstm_cell_750_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_834/lstm_cell_750/MatMulMatMul!lstm_834/strided_slice_2:output:04lstm_834/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_834/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp7lstm_834_lstm_cell_750_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_834/lstm_cell_750/MatMul_1MatMullstm_834/zeros:output:06lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_834/lstm_cell_750/addAddV2'lstm_834/lstm_cell_750/MatMul:product:0)lstm_834/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_834/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp6lstm_834_lstm_cell_750_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_834/lstm_cell_750/BiasAddBiasAddlstm_834/lstm_cell_750/add:z:05lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_834/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_834/lstm_cell_750/splitSplit/lstm_834/lstm_cell_750/split/split_dim:output:0'lstm_834/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_834/lstm_cell_750/SigmoidSigmoid%lstm_834/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_834/lstm_cell_750/Sigmoid_1Sigmoid%lstm_834/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_834/lstm_cell_750/mulMul$lstm_834/lstm_cell_750/Sigmoid_1:y:0lstm_834/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_834/lstm_cell_750/ReluRelu%lstm_834/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_834/lstm_cell_750/mul_1Mul"lstm_834/lstm_cell_750/Sigmoid:y:0)lstm_834/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_834/lstm_cell_750/add_1AddV2lstm_834/lstm_cell_750/mul:z:0 lstm_834/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_834/lstm_cell_750/Sigmoid_2Sigmoid%lstm_834/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_834/lstm_cell_750/Relu_1Relu lstm_834/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_834/lstm_cell_750/mul_2Mul$lstm_834/lstm_cell_750/Sigmoid_2:y:0+lstm_834/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_834/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_834/TensorArrayV2_1TensorListReserve/lstm_834/TensorArrayV2_1/element_shape:output:0!lstm_834/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_834/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_834/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_834/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_834/whileWhile$lstm_834/while/loop_counter:output:0*lstm_834/while/maximum_iterations:output:0lstm_834/time:output:0!lstm_834/TensorArrayV2_1:handle:0lstm_834/zeros:output:0lstm_834/zeros_1:output:0!lstm_834/strided_slice_1:output:0@lstm_834/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_834_lstm_cell_750_matmul_readvariableop_resource7lstm_834_lstm_cell_750_matmul_1_readvariableop_resource6lstm_834_lstm_cell_750_biasadd_readvariableop_resource*
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
lstm_834_while_body_4550994*'
condR
lstm_834_while_cond_4550993*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_834/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_834/TensorArrayV2Stack/TensorListStackTensorListStacklstm_834/while:output:3Blstm_834/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_834/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_834/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_834/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_834/strided_slice_3StridedSlice4lstm_834/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_834/strided_slice_3/stack:output:0)lstm_834/strided_slice_3/stack_1:output:0)lstm_834/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_834/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_834/transpose_1	Transpose4lstm_834/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_834/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_834/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_835/ShapeShapelstm_834/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_835/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_835/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_835/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_835/strided_sliceStridedSlicelstm_835/Shape:output:0%lstm_835/strided_slice/stack:output:0'lstm_835/strided_slice/stack_1:output:0'lstm_835/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_835/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_835/zeros/packedPacklstm_835/strided_slice:output:0 lstm_835/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_835/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_835/zerosFilllstm_835/zeros/packed:output:0lstm_835/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_835/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_835/zeros_1/packedPacklstm_835/strided_slice:output:0"lstm_835/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_835/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_835/zeros_1Fill lstm_835/zeros_1/packed:output:0lstm_835/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_835/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_835/transpose	Transposelstm_834/transpose_1:y:0 lstm_835/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_835/Shape_1Shapelstm_835/transpose:y:0*
T0*
_output_shapes
:h
lstm_835/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_835/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_835/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_835/strided_slice_1StridedSlicelstm_835/Shape_1:output:0'lstm_835/strided_slice_1/stack:output:0)lstm_835/strided_slice_1/stack_1:output:0)lstm_835/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_835/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_835/TensorArrayV2TensorListReserve-lstm_835/TensorArrayV2/element_shape:output:0!lstm_835/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_835/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_835/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_835/transpose:y:0Glstm_835/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_835/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_835/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_835/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_835/strided_slice_2StridedSlicelstm_835/transpose:y:0'lstm_835/strided_slice_2/stack:output:0)lstm_835/strided_slice_2/stack_1:output:0)lstm_835/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_835/lstm_cell_751/MatMul/ReadVariableOpReadVariableOp5lstm_835_lstm_cell_751_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_835/lstm_cell_751/MatMulMatMul!lstm_835/strided_slice_2:output:04lstm_835/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_835/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp7lstm_835_lstm_cell_751_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_835/lstm_cell_751/MatMul_1MatMullstm_835/zeros:output:06lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_835/lstm_cell_751/addAddV2'lstm_835/lstm_cell_751/MatMul:product:0)lstm_835/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_835/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp6lstm_835_lstm_cell_751_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_835/lstm_cell_751/BiasAddBiasAddlstm_835/lstm_cell_751/add:z:05lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_835/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_835/lstm_cell_751/splitSplit/lstm_835/lstm_cell_751/split/split_dim:output:0'lstm_835/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_835/lstm_cell_751/SigmoidSigmoid%lstm_835/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_835/lstm_cell_751/Sigmoid_1Sigmoid%lstm_835/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_835/lstm_cell_751/mulMul$lstm_835/lstm_cell_751/Sigmoid_1:y:0lstm_835/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_835/lstm_cell_751/ReluRelu%lstm_835/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_835/lstm_cell_751/mul_1Mul"lstm_835/lstm_cell_751/Sigmoid:y:0)lstm_835/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_835/lstm_cell_751/add_1AddV2lstm_835/lstm_cell_751/mul:z:0 lstm_835/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_835/lstm_cell_751/Sigmoid_2Sigmoid%lstm_835/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_835/lstm_cell_751/Relu_1Relu lstm_835/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_835/lstm_cell_751/mul_2Mul$lstm_835/lstm_cell_751/Sigmoid_2:y:0+lstm_835/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_835/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_835/TensorArrayV2_1TensorListReserve/lstm_835/TensorArrayV2_1/element_shape:output:0!lstm_835/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_835/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_835/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_835/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_835/whileWhile$lstm_835/while/loop_counter:output:0*lstm_835/while/maximum_iterations:output:0lstm_835/time:output:0!lstm_835/TensorArrayV2_1:handle:0lstm_835/zeros:output:0lstm_835/zeros_1:output:0!lstm_835/strided_slice_1:output:0@lstm_835/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_835_lstm_cell_751_matmul_readvariableop_resource7lstm_835_lstm_cell_751_matmul_1_readvariableop_resource6lstm_835_lstm_cell_751_biasadd_readvariableop_resource*
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
lstm_835_while_body_4551133*'
condR
lstm_835_while_cond_4551132*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_835/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_835/TensorArrayV2Stack/TensorListStackTensorListStacklstm_835/while:output:3Blstm_835/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_835/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_835/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_835/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_835/strided_slice_3StridedSlice4lstm_835/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_835/strided_slice_3/stack:output:0)lstm_835/strided_slice_3/stack_1:output:0)lstm_835/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_835/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_835/transpose_1	Transpose4lstm_835/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_835/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_835/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_836/ShapeShapelstm_835/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_836/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_836/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_836/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_836/strided_sliceStridedSlicelstm_836/Shape:output:0%lstm_836/strided_slice/stack:output:0'lstm_836/strided_slice/stack_1:output:0'lstm_836/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_836/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_836/zeros/packedPacklstm_836/strided_slice:output:0 lstm_836/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_836/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_836/zerosFilllstm_836/zeros/packed:output:0lstm_836/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_836/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_836/zeros_1/packedPacklstm_836/strided_slice:output:0"lstm_836/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_836/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_836/zeros_1Fill lstm_836/zeros_1/packed:output:0lstm_836/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_836/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_836/transpose	Transposelstm_835/transpose_1:y:0 lstm_836/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_836/Shape_1Shapelstm_836/transpose:y:0*
T0*
_output_shapes
:h
lstm_836/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_836/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_836/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_836/strided_slice_1StridedSlicelstm_836/Shape_1:output:0'lstm_836/strided_slice_1/stack:output:0)lstm_836/strided_slice_1/stack_1:output:0)lstm_836/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_836/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_836/TensorArrayV2TensorListReserve-lstm_836/TensorArrayV2/element_shape:output:0!lstm_836/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_836/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_836/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_836/transpose:y:0Glstm_836/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_836/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_836/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_836/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_836/strided_slice_2StridedSlicelstm_836/transpose:y:0'lstm_836/strided_slice_2/stack:output:0)lstm_836/strided_slice_2/stack_1:output:0)lstm_836/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_836/lstm_cell_752/MatMul/ReadVariableOpReadVariableOp5lstm_836_lstm_cell_752_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_836/lstm_cell_752/MatMulMatMul!lstm_836/strided_slice_2:output:04lstm_836/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_836/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp7lstm_836_lstm_cell_752_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_836/lstm_cell_752/MatMul_1MatMullstm_836/zeros:output:06lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_836/lstm_cell_752/addAddV2'lstm_836/lstm_cell_752/MatMul:product:0)lstm_836/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_836/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp6lstm_836_lstm_cell_752_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_836/lstm_cell_752/BiasAddBiasAddlstm_836/lstm_cell_752/add:z:05lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_836/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_836/lstm_cell_752/splitSplit/lstm_836/lstm_cell_752/split/split_dim:output:0'lstm_836/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_836/lstm_cell_752/SigmoidSigmoid%lstm_836/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_836/lstm_cell_752/Sigmoid_1Sigmoid%lstm_836/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_836/lstm_cell_752/mulMul$lstm_836/lstm_cell_752/Sigmoid_1:y:0lstm_836/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_836/lstm_cell_752/ReluRelu%lstm_836/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_836/lstm_cell_752/mul_1Mul"lstm_836/lstm_cell_752/Sigmoid:y:0)lstm_836/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_836/lstm_cell_752/add_1AddV2lstm_836/lstm_cell_752/mul:z:0 lstm_836/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_836/lstm_cell_752/Sigmoid_2Sigmoid%lstm_836/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_836/lstm_cell_752/Relu_1Relu lstm_836/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_836/lstm_cell_752/mul_2Mul$lstm_836/lstm_cell_752/Sigmoid_2:y:0+lstm_836/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_836/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_836/TensorArrayV2_1TensorListReserve/lstm_836/TensorArrayV2_1/element_shape:output:0!lstm_836/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_836/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_836/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_836/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_836/whileWhile$lstm_836/while/loop_counter:output:0*lstm_836/while/maximum_iterations:output:0lstm_836/time:output:0!lstm_836/TensorArrayV2_1:handle:0lstm_836/zeros:output:0lstm_836/zeros_1:output:0!lstm_836/strided_slice_1:output:0@lstm_836/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_836_lstm_cell_752_matmul_readvariableop_resource7lstm_836_lstm_cell_752_matmul_1_readvariableop_resource6lstm_836_lstm_cell_752_biasadd_readvariableop_resource*
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
lstm_836_while_body_4551272*'
condR
lstm_836_while_cond_4551271*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_836/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_836/TensorArrayV2Stack/TensorListStackTensorListStacklstm_836/while:output:3Blstm_836/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_836/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_836/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_836/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_836/strided_slice_3StridedSlice4lstm_836/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_836/strided_slice_3/stack:output:0)lstm_836/strided_slice_3/stack_1:output:0)lstm_836/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_836/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_836/transpose_1	Transpose4lstm_836/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_836/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_836/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_278/MatMul/ReadVariableOpReadVariableOp(dense_278_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_278/MatMulMatMul!lstm_836/strided_slice_3:output:0'dense_278/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_278/BiasAdd/ReadVariableOpReadVariableOp)dense_278_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_278/BiasAddBiasAdddense_278/MatMul:product:0(dense_278/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_278/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_278/BiasAdd/ReadVariableOp ^dense_278/MatMul/ReadVariableOp.^lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp-^lstm_834/lstm_cell_750/MatMul/ReadVariableOp/^lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp^lstm_834/while.^lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp-^lstm_835/lstm_cell_751/MatMul/ReadVariableOp/^lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp^lstm_835/while.^lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp-^lstm_836/lstm_cell_752/MatMul/ReadVariableOp/^lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp^lstm_836/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_278/BiasAdd/ReadVariableOp dense_278/BiasAdd/ReadVariableOp2B
dense_278/MatMul/ReadVariableOpdense_278/MatMul/ReadVariableOp2^
-lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp-lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp2\
,lstm_834/lstm_cell_750/MatMul/ReadVariableOp,lstm_834/lstm_cell_750/MatMul/ReadVariableOp2`
.lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp.lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp2 
lstm_834/whilelstm_834/while2^
-lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp-lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp2\
,lstm_835/lstm_cell_751/MatMul/ReadVariableOp,lstm_835/lstm_cell_751/MatMul/ReadVariableOp2`
.lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp.lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp2 
lstm_835/whilelstm_835/while2^
-lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp-lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp2\
,lstm_836/lstm_cell_752/MatMul/ReadVariableOp,lstm_836/lstm_cell_752/MatMul/ReadVariableOp2`
.lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp.lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp2 
lstm_836/whilelstm_836/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4553126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_752_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_752_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_752_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_752_matmul_readvariableop_resource:2(F
4while_lstm_cell_752_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_752_biasadd_readvariableop_resource:(??*while/lstm_cell_752/BiasAdd/ReadVariableOp?)while/lstm_cell_752/MatMul/ReadVariableOp?+while/lstm_cell_752/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_752/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_752_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_752/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_752_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_752/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_752/addAddV2$while/lstm_cell_752/MatMul:product:0&while/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_752_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_752/BiasAddBiasAddwhile/lstm_cell_752/add:z:02while/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_752/splitSplit,while/lstm_cell_752/split/split_dim:output:0$while/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_752/SigmoidSigmoid"while/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_1Sigmoid"while/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mulMul!while/lstm_cell_752/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_752/ReluRelu"while/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_1Mulwhile/lstm_cell_752/Sigmoid:y:0&while/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/add_1AddV2while/lstm_cell_752/mul:z:0while/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_2Sigmoid"while/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_752/Relu_1Reluwhile/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_2Mul!while/lstm_cell_752/Sigmoid_2:y:0(while/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_752/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_752/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_752/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_752/BiasAdd/ReadVariableOp*^while/lstm_cell_752/MatMul/ReadVariableOp,^while/lstm_cell_752/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_752_biasadd_readvariableop_resource5while_lstm_cell_752_biasadd_readvariableop_resource_0"n
4while_lstm_cell_752_matmul_1_readvariableop_resource6while_lstm_cell_752_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_752_matmul_readvariableop_resource4while_lstm_cell_752_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_752/BiasAdd/ReadVariableOp*while/lstm_cell_752/BiasAdd/ReadVariableOp2V
)while/lstm_cell_752/MatMul/ReadVariableOp)while/lstm_cell_752/MatMul/ReadVariableOp2Z
+while/lstm_cell_752/MatMul_1/ReadVariableOp+while/lstm_cell_752/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550419
lstm_834_input#
lstm_834_4550392:	?#
lstm_834_4550394:	d?
lstm_834_4550396:	?#
lstm_835_4550399:	d?#
lstm_835_4550401:	2?
lstm_835_4550403:	?"
lstm_836_4550406:2("
lstm_836_4550408:
(
lstm_836_4550410:(#
dense_278_4550413:

dense_278_4550415:
identity??!dense_278/StatefulPartitionedCall? lstm_834/StatefulPartitionedCall? lstm_835/StatefulPartitionedCall? lstm_836/StatefulPartitionedCall?
 lstm_834/StatefulPartitionedCallStatefulPartitionedCalllstm_834_inputlstm_834_4550392lstm_834_4550394lstm_834_4550396*
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4550239?
 lstm_835/StatefulPartitionedCallStatefulPartitionedCall)lstm_834/StatefulPartitionedCall:output:0lstm_835_4550399lstm_835_4550401lstm_835_4550403*
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4550074?
 lstm_836/StatefulPartitionedCallStatefulPartitionedCall)lstm_835/StatefulPartitionedCall:output:0lstm_836_4550406lstm_836_4550408lstm_836_4550410*
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549909?
!dense_278/StatefulPartitionedCallStatefulPartitionedCall)lstm_836/StatefulPartitionedCall:output:0dense_278_4550413dense_278_4550415*
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
F__inference_dense_278_layer_call_and_return_conditional_losses_4549711y
IdentityIdentity*dense_278/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_278/StatefulPartitionedCall!^lstm_834/StatefulPartitionedCall!^lstm_835/StatefulPartitionedCall!^lstm_836/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_278/StatefulPartitionedCall!dense_278/StatefulPartitionedCall2D
 lstm_834/StatefulPartitionedCall lstm_834/StatefulPartitionedCall2D
 lstm_835/StatefulPartitionedCall lstm_835/StatefulPartitionedCall2D
 lstm_836/StatefulPartitionedCall lstm_836/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_834_input
?C
?

lstm_835_while_body_4550706.
*lstm_835_while_lstm_835_while_loop_counter4
0lstm_835_while_lstm_835_while_maximum_iterations
lstm_835_while_placeholder 
lstm_835_while_placeholder_1 
lstm_835_while_placeholder_2 
lstm_835_while_placeholder_3-
)lstm_835_while_lstm_835_strided_slice_1_0i
elstm_835_while_tensorarrayv2read_tensorlistgetitem_lstm_835_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_835_while_lstm_cell_751_matmul_readvariableop_resource_0:	d?R
?lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource_0:	2?M
>lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource_0:	?
lstm_835_while_identity
lstm_835_while_identity_1
lstm_835_while_identity_2
lstm_835_while_identity_3
lstm_835_while_identity_4
lstm_835_while_identity_5+
'lstm_835_while_lstm_835_strided_slice_1g
clstm_835_while_tensorarrayv2read_tensorlistgetitem_lstm_835_tensorarrayunstack_tensorlistfromtensorN
;lstm_835_while_lstm_cell_751_matmul_readvariableop_resource:	d?P
=lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource:	2?K
<lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource:	???3lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp?2lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp?4lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp?
@lstm_835/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_835/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_835_while_tensorarrayv2read_tensorlistgetitem_lstm_835_tensorarrayunstack_tensorlistfromtensor_0lstm_835_while_placeholderIlstm_835/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_835/while/lstm_cell_751/MatMul/ReadVariableOpReadVariableOp=lstm_835_while_lstm_cell_751_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_835/while/lstm_cell_751/MatMulMatMul9lstm_835/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp?lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_835/while/lstm_cell_751/MatMul_1MatMullstm_835_while_placeholder_2<lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_835/while/lstm_cell_751/addAddV2-lstm_835/while/lstm_cell_751/MatMul:product:0/lstm_835/while/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp>lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_835/while/lstm_cell_751/BiasAddBiasAdd$lstm_835/while/lstm_cell_751/add:z:0;lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_835/while/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_835/while/lstm_cell_751/splitSplit5lstm_835/while/lstm_cell_751/split/split_dim:output:0-lstm_835/while/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_835/while/lstm_cell_751/SigmoidSigmoid+lstm_835/while/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_835/while/lstm_cell_751/Sigmoid_1Sigmoid+lstm_835/while/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_835/while/lstm_cell_751/mulMul*lstm_835/while/lstm_cell_751/Sigmoid_1:y:0lstm_835_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_835/while/lstm_cell_751/ReluRelu+lstm_835/while/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_835/while/lstm_cell_751/mul_1Mul(lstm_835/while/lstm_cell_751/Sigmoid:y:0/lstm_835/while/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_835/while/lstm_cell_751/add_1AddV2$lstm_835/while/lstm_cell_751/mul:z:0&lstm_835/while/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_835/while/lstm_cell_751/Sigmoid_2Sigmoid+lstm_835/while/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_835/while/lstm_cell_751/Relu_1Relu&lstm_835/while/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_835/while/lstm_cell_751/mul_2Mul*lstm_835/while/lstm_cell_751/Sigmoid_2:y:01lstm_835/while/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_835/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_835_while_placeholder_1lstm_835_while_placeholder&lstm_835/while/lstm_cell_751/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_835/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_835/while/addAddV2lstm_835_while_placeholderlstm_835/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_835/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_835/while/add_1AddV2*lstm_835_while_lstm_835_while_loop_counterlstm_835/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_835/while/IdentityIdentitylstm_835/while/add_1:z:0^lstm_835/while/NoOp*
T0*
_output_shapes
: ?
lstm_835/while/Identity_1Identity0lstm_835_while_lstm_835_while_maximum_iterations^lstm_835/while/NoOp*
T0*
_output_shapes
: t
lstm_835/while/Identity_2Identitylstm_835/while/add:z:0^lstm_835/while/NoOp*
T0*
_output_shapes
: ?
lstm_835/while/Identity_3IdentityClstm_835/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_835/while/NoOp*
T0*
_output_shapes
: ?
lstm_835/while/Identity_4Identity&lstm_835/while/lstm_cell_751/mul_2:z:0^lstm_835/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_835/while/Identity_5Identity&lstm_835/while/lstm_cell_751/add_1:z:0^lstm_835/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_835/while/NoOpNoOp4^lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp3^lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp5^lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_835_while_identity lstm_835/while/Identity:output:0"?
lstm_835_while_identity_1"lstm_835/while/Identity_1:output:0"?
lstm_835_while_identity_2"lstm_835/while/Identity_2:output:0"?
lstm_835_while_identity_3"lstm_835/while/Identity_3:output:0"?
lstm_835_while_identity_4"lstm_835/while/Identity_4:output:0"?
lstm_835_while_identity_5"lstm_835/while/Identity_5:output:0"T
'lstm_835_while_lstm_835_strided_slice_1)lstm_835_while_lstm_835_strided_slice_1_0"~
<lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource>lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource_0"?
=lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource?lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource_0"|
;lstm_835_while_lstm_cell_751_matmul_readvariableop_resource=lstm_835_while_lstm_cell_751_matmul_readvariableop_resource_0"?
clstm_835_while_tensorarrayv2read_tensorlistgetitem_lstm_835_tensorarrayunstack_tensorlistfromtensorelstm_835_while_tensorarrayv2read_tensorlistgetitem_lstm_835_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp3lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp2h
2lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp2lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp2l
4lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp4lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_835_while_cond_4550705.
*lstm_835_while_lstm_835_while_loop_counter4
0lstm_835_while_lstm_835_while_maximum_iterations
lstm_835_while_placeholder 
lstm_835_while_placeholder_1 
lstm_835_while_placeholder_2 
lstm_835_while_placeholder_30
,lstm_835_while_less_lstm_835_strided_slice_1G
Clstm_835_while_lstm_835_while_cond_4550705___redundant_placeholder0G
Clstm_835_while_lstm_835_while_cond_4550705___redundant_placeholder1G
Clstm_835_while_lstm_835_while_cond_4550705___redundant_placeholder2G
Clstm_835_while_lstm_835_while_cond_4550705___redundant_placeholder3
lstm_835_while_identity
?
lstm_835/while/LessLesslstm_835_while_placeholder,lstm_835_while_less_lstm_835_strided_slice_1*
T0*
_output_shapes
: ]
lstm_835/while/IdentityIdentitylstm_835/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_835_while_identity lstm_835/while/Identity:output:0*(
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
while_body_4552840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_752_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_752_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_752_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_752_matmul_readvariableop_resource:2(F
4while_lstm_cell_752_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_752_biasadd_readvariableop_resource:(??*while/lstm_cell_752/BiasAdd/ReadVariableOp?)while/lstm_cell_752/MatMul/ReadVariableOp?+while/lstm_cell_752/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_752/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_752_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_752/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_752_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_752/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_752/addAddV2$while/lstm_cell_752/MatMul:product:0&while/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_752_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_752/BiasAddBiasAddwhile/lstm_cell_752/add:z:02while/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_752/splitSplit,while/lstm_cell_752/split/split_dim:output:0$while/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_752/SigmoidSigmoid"while/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_1Sigmoid"while/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mulMul!while/lstm_cell_752/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_752/ReluRelu"while/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_1Mulwhile/lstm_cell_752/Sigmoid:y:0&while/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/add_1AddV2while/lstm_cell_752/mul:z:0while/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_2Sigmoid"while/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_752/Relu_1Reluwhile/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_2Mul!while/lstm_cell_752/Sigmoid_2:y:0(while/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_752/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_752/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_752/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_752/BiasAdd/ReadVariableOp*^while/lstm_cell_752/MatMul/ReadVariableOp,^while/lstm_cell_752/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_752_biasadd_readvariableop_resource5while_lstm_cell_752_biasadd_readvariableop_resource_0"n
4while_lstm_cell_752_matmul_1_readvariableop_resource6while_lstm_cell_752_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_752_matmul_readvariableop_resource4while_lstm_cell_752_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_752/BiasAdd/ReadVariableOp*while/lstm_cell_752/BiasAdd/ReadVariableOp2V
)while/lstm_cell_752/MatMul/ReadVariableOp)while/lstm_cell_752/MatMul/ReadVariableOp2Z
+while/lstm_cell_752/MatMul_1/ReadVariableOp+while/lstm_cell_752/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4552839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4552839___redundant_placeholder05
1while_while_cond_4552839___redundant_placeholder15
1while_while_cond_4552839___redundant_placeholder25
1while_while_cond_4552839___redundant_placeholder3
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4549393

inputs?
,lstm_cell_750_matmul_readvariableop_resource:	?A
.lstm_cell_750_matmul_1_readvariableop_resource:	d?<
-lstm_cell_750_biasadd_readvariableop_resource:	?
identity??$lstm_cell_750/BiasAdd/ReadVariableOp?#lstm_cell_750/MatMul/ReadVariableOp?%lstm_cell_750/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_750/MatMul/ReadVariableOpReadVariableOp,lstm_cell_750_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_750/MatMulMatMulstrided_slice_2:output:0+lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_750_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_750/MatMul_1MatMulzeros:output:0-lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_750/addAddV2lstm_cell_750/MatMul:product:0 lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_750_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_750/BiasAddBiasAddlstm_cell_750/add:z:0,lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_750/splitSplit&lstm_cell_750/split/split_dim:output:0lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_750/SigmoidSigmoidlstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_1Sigmoidlstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_750/mulMullstm_cell_750/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_750/ReluRelulstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_1Mullstm_cell_750/Sigmoid:y:0 lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_750/add_1AddV2lstm_cell_750/mul:z:0lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_2Sigmoidlstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_750/Relu_1Relulstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_2Mullstm_cell_750/Sigmoid_2:y:0"lstm_cell_750/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_750_matmul_readvariableop_resource.lstm_cell_750_matmul_1_readvariableop_resource-lstm_cell_750_biasadd_readvariableop_resource*
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
while_body_4549309*
condR
while_cond_4549308*K
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
NoOpNoOp%^lstm_cell_750/BiasAdd/ReadVariableOp$^lstm_cell_750/MatMul/ReadVariableOp&^lstm_cell_750/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_750/BiasAdd/ReadVariableOp$lstm_cell_750/BiasAdd/ReadVariableOp2J
#lstm_cell_750/MatMul/ReadVariableOp#lstm_cell_750/MatMul/ReadVariableOp2N
%lstm_cell_750/MatMul_1/ReadVariableOp%lstm_cell_750/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_834_layer_call_and_return_conditional_losses_4548535

inputs(
lstm_cell_750_4548453:	?(
lstm_cell_750_4548455:	d?$
lstm_cell_750_4548457:	?
identity??%lstm_cell_750/StatefulPartitionedCall?while;
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
%lstm_cell_750/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_750_4548453lstm_cell_750_4548455lstm_cell_750_4548457*
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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4548407n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_750_4548453lstm_cell_750_4548455lstm_cell_750_4548457*
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
while_body_4548466*
condR
while_cond_4548465*K
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
NoOpNoOp&^lstm_cell_750/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_750/StatefulPartitionedCall%lstm_cell_750/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4552509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4552509___redundant_placeholder05
1while_while_cond_4552509___redundant_placeholder15
1while_while_cond_4552509___redundant_placeholder25
1while_while_cond_4552509___redundant_placeholder3
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
+__inference_dense_278_layer_call_fn_4553219

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
F__inference_dense_278_layer_call_and_return_conditional_losses_4549711o
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
K__inference_sequential_278_layer_call_and_return_conditional_losses_4549718

inputs#
lstm_834_4549394:	?#
lstm_834_4549396:	d?
lstm_834_4549398:	?#
lstm_835_4549544:	d?#
lstm_835_4549546:	2?
lstm_835_4549548:	?"
lstm_836_4549694:2("
lstm_836_4549696:
(
lstm_836_4549698:(#
dense_278_4549712:

dense_278_4549714:
identity??!dense_278/StatefulPartitionedCall? lstm_834/StatefulPartitionedCall? lstm_835/StatefulPartitionedCall? lstm_836/StatefulPartitionedCall?
 lstm_834/StatefulPartitionedCallStatefulPartitionedCallinputslstm_834_4549394lstm_834_4549396lstm_834_4549398*
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4549393?
 lstm_835/StatefulPartitionedCallStatefulPartitionedCall)lstm_834/StatefulPartitionedCall:output:0lstm_835_4549544lstm_835_4549546lstm_835_4549548*
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4549543?
 lstm_836/StatefulPartitionedCallStatefulPartitionedCall)lstm_835/StatefulPartitionedCall:output:0lstm_836_4549694lstm_836_4549696lstm_836_4549698*
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549693?
!dense_278/StatefulPartitionedCallStatefulPartitionedCall)lstm_836/StatefulPartitionedCall:output:0dense_278_4549712dense_278_4549714*
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
F__inference_dense_278_layer_call_and_return_conditional_losses_4549711y
IdentityIdentity*dense_278/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_278/StatefulPartitionedCall!^lstm_834/StatefulPartitionedCall!^lstm_835/StatefulPartitionedCall!^lstm_836/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_278/StatefulPartitionedCall!dense_278/StatefulPartitionedCall2D
 lstm_834/StatefulPartitionedCall lstm_834/StatefulPartitionedCall2D
 lstm_835/StatefulPartitionedCall lstm_835/StatefulPartitionedCall2D
 lstm_836/StatefulPartitionedCall lstm_836/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_278_layer_call_and_return_conditional_losses_4549711

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
?
*__inference_lstm_835_layer_call_fn_4552000
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4548885|
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
*__inference_lstm_835_layer_call_fn_4552022

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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4550074s
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
?8
?
while_body_4551894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_750_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_750_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_750_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_750_matmul_readvariableop_resource:	?G
4while_lstm_cell_750_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_750_biasadd_readvariableop_resource:	???*while/lstm_cell_750/BiasAdd/ReadVariableOp?)while/lstm_cell_750/MatMul/ReadVariableOp?+while/lstm_cell_750/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_750/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_750_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_750/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_750_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_750/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_750/addAddV2$while/lstm_cell_750/MatMul:product:0&while/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_750_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_750/BiasAddBiasAddwhile/lstm_cell_750/add:z:02while/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_750/splitSplit,while/lstm_cell_750/split/split_dim:output:0$while/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_750/SigmoidSigmoid"while/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_1Sigmoid"while/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mulMul!while/lstm_cell_750/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_750/ReluRelu"while/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_1Mulwhile/lstm_cell_750/Sigmoid:y:0&while/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/add_1AddV2while/lstm_cell_750/mul:z:0while/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_2Sigmoid"while/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_750/Relu_1Reluwhile/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_2Mul!while/lstm_cell_750/Sigmoid_2:y:0(while/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_750/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_750/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_750/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_750/BiasAdd/ReadVariableOp*^while/lstm_cell_750/MatMul/ReadVariableOp,^while/lstm_cell_750/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_750_biasadd_readvariableop_resource5while_lstm_cell_750_biasadd_readvariableop_resource_0"n
4while_lstm_cell_750_matmul_1_readvariableop_resource6while_lstm_cell_750_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_750_matmul_readvariableop_resource4while_lstm_cell_750_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_750/BiasAdd/ReadVariableOp*while/lstm_cell_750/BiasAdd/ReadVariableOp2V
)while/lstm_cell_750/MatMul/ReadVariableOp)while/lstm_cell_750/MatMul/ReadVariableOp2Z
+while/lstm_cell_750/MatMul_1/ReadVariableOp+while/lstm_cell_750/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4552697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_752_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_752_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_752_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_752_matmul_readvariableop_resource:2(F
4while_lstm_cell_752_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_752_biasadd_readvariableop_resource:(??*while/lstm_cell_752/BiasAdd/ReadVariableOp?)while/lstm_cell_752/MatMul/ReadVariableOp?+while/lstm_cell_752/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_752/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_752_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_752/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_752_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_752/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_752/addAddV2$while/lstm_cell_752/MatMul:product:0&while/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_752_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_752/BiasAddBiasAddwhile/lstm_cell_752/add:z:02while/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_752/splitSplit,while/lstm_cell_752/split/split_dim:output:0$while/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_752/SigmoidSigmoid"while/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_1Sigmoid"while/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mulMul!while/lstm_cell_752/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_752/ReluRelu"while/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_1Mulwhile/lstm_cell_752/Sigmoid:y:0&while/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/add_1AddV2while/lstm_cell_752/mul:z:0while/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_2Sigmoid"while/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_752/Relu_1Reluwhile/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_2Mul!while/lstm_cell_752/Sigmoid_2:y:0(while/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_752/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_752/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_752/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_752/BiasAdd/ReadVariableOp*^while/lstm_cell_752/MatMul/ReadVariableOp,^while/lstm_cell_752/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_752_biasadd_readvariableop_resource5while_lstm_cell_752_biasadd_readvariableop_resource_0"n
4while_lstm_cell_752_matmul_1_readvariableop_resource6while_lstm_cell_752_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_752_matmul_readvariableop_resource4while_lstm_cell_752_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_752/BiasAdd/ReadVariableOp*while/lstm_cell_752/BiasAdd/ReadVariableOp2V
)while/lstm_cell_752/MatMul/ReadVariableOp)while/lstm_cell_752/MatMul/ReadVariableOp2Z
+while/lstm_cell_752/MatMul_1/ReadVariableOp+while/lstm_cell_752/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_278_lstm_835_while_cond_4547964L
Hsequential_278_lstm_835_while_sequential_278_lstm_835_while_loop_counterR
Nsequential_278_lstm_835_while_sequential_278_lstm_835_while_maximum_iterations-
)sequential_278_lstm_835_while_placeholder/
+sequential_278_lstm_835_while_placeholder_1/
+sequential_278_lstm_835_while_placeholder_2/
+sequential_278_lstm_835_while_placeholder_3N
Jsequential_278_lstm_835_while_less_sequential_278_lstm_835_strided_slice_1e
asequential_278_lstm_835_while_sequential_278_lstm_835_while_cond_4547964___redundant_placeholder0e
asequential_278_lstm_835_while_sequential_278_lstm_835_while_cond_4547964___redundant_placeholder1e
asequential_278_lstm_835_while_sequential_278_lstm_835_while_cond_4547964___redundant_placeholder2e
asequential_278_lstm_835_while_sequential_278_lstm_835_while_cond_4547964___redundant_placeholder3*
&sequential_278_lstm_835_while_identity
?
"sequential_278/lstm_835/while/LessLess)sequential_278_lstm_835_while_placeholderJsequential_278_lstm_835_while_less_sequential_278_lstm_835_strided_slice_1*
T0*
_output_shapes
: {
&sequential_278/lstm_835/while/IdentityIdentity&sequential_278/lstm_835/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_278_lstm_835_while_identity/sequential_278/lstm_835/while/Identity:output:0*(
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
*sequential_278_lstm_836_while_body_4548104L
Hsequential_278_lstm_836_while_sequential_278_lstm_836_while_loop_counterR
Nsequential_278_lstm_836_while_sequential_278_lstm_836_while_maximum_iterations-
)sequential_278_lstm_836_while_placeholder/
+sequential_278_lstm_836_while_placeholder_1/
+sequential_278_lstm_836_while_placeholder_2/
+sequential_278_lstm_836_while_placeholder_3K
Gsequential_278_lstm_836_while_sequential_278_lstm_836_strided_slice_1_0?
?sequential_278_lstm_836_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_836_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_278_lstm_836_while_lstm_cell_752_matmul_readvariableop_resource_0:2(`
Nsequential_278_lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource_0:
([
Msequential_278_lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource_0:(*
&sequential_278_lstm_836_while_identity,
(sequential_278_lstm_836_while_identity_1,
(sequential_278_lstm_836_while_identity_2,
(sequential_278_lstm_836_while_identity_3,
(sequential_278_lstm_836_while_identity_4,
(sequential_278_lstm_836_while_identity_5I
Esequential_278_lstm_836_while_sequential_278_lstm_836_strided_slice_1?
?sequential_278_lstm_836_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_836_tensorarrayunstack_tensorlistfromtensor\
Jsequential_278_lstm_836_while_lstm_cell_752_matmul_readvariableop_resource:2(^
Lsequential_278_lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource:
(Y
Ksequential_278_lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource:(??Bsequential_278/lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp?Asequential_278/lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp?Csequential_278/lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp?
Osequential_278/lstm_836/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_278/lstm_836/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_278_lstm_836_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_836_tensorarrayunstack_tensorlistfromtensor_0)sequential_278_lstm_836_while_placeholderXsequential_278/lstm_836/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_278/lstm_836/while/lstm_cell_752/MatMul/ReadVariableOpReadVariableOpLsequential_278_lstm_836_while_lstm_cell_752_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_278/lstm_836/while/lstm_cell_752/MatMulMatMulHsequential_278/lstm_836/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_278/lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_278/lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOpNsequential_278_lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_278/lstm_836/while/lstm_cell_752/MatMul_1MatMul+sequential_278_lstm_836_while_placeholder_2Ksequential_278/lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_278/lstm_836/while/lstm_cell_752/addAddV2<sequential_278/lstm_836/while/lstm_cell_752/MatMul:product:0>sequential_278/lstm_836/while/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_278/lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOpMsequential_278_lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_278/lstm_836/while/lstm_cell_752/BiasAddBiasAdd3sequential_278/lstm_836/while/lstm_cell_752/add:z:0Jsequential_278/lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_278/lstm_836/while/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_278/lstm_836/while/lstm_cell_752/splitSplitDsequential_278/lstm_836/while/lstm_cell_752/split/split_dim:output:0<sequential_278/lstm_836/while/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_278/lstm_836/while/lstm_cell_752/SigmoidSigmoid:sequential_278/lstm_836/while/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_278/lstm_836/while/lstm_cell_752/Sigmoid_1Sigmoid:sequential_278/lstm_836/while/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_278/lstm_836/while/lstm_cell_752/mulMul9sequential_278/lstm_836/while/lstm_cell_752/Sigmoid_1:y:0+sequential_278_lstm_836_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_278/lstm_836/while/lstm_cell_752/ReluRelu:sequential_278/lstm_836/while/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_278/lstm_836/while/lstm_cell_752/mul_1Mul7sequential_278/lstm_836/while/lstm_cell_752/Sigmoid:y:0>sequential_278/lstm_836/while/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_278/lstm_836/while/lstm_cell_752/add_1AddV23sequential_278/lstm_836/while/lstm_cell_752/mul:z:05sequential_278/lstm_836/while/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_278/lstm_836/while/lstm_cell_752/Sigmoid_2Sigmoid:sequential_278/lstm_836/while/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_278/lstm_836/while/lstm_cell_752/Relu_1Relu5sequential_278/lstm_836/while/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_278/lstm_836/while/lstm_cell_752/mul_2Mul9sequential_278/lstm_836/while/lstm_cell_752/Sigmoid_2:y:0@sequential_278/lstm_836/while/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_278/lstm_836/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_278_lstm_836_while_placeholder_1)sequential_278_lstm_836_while_placeholder5sequential_278/lstm_836/while/lstm_cell_752/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_278/lstm_836/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_278/lstm_836/while/addAddV2)sequential_278_lstm_836_while_placeholder,sequential_278/lstm_836/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_278/lstm_836/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_278/lstm_836/while/add_1AddV2Hsequential_278_lstm_836_while_sequential_278_lstm_836_while_loop_counter.sequential_278/lstm_836/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_278/lstm_836/while/IdentityIdentity'sequential_278/lstm_836/while/add_1:z:0#^sequential_278/lstm_836/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_836/while/Identity_1IdentityNsequential_278_lstm_836_while_sequential_278_lstm_836_while_maximum_iterations#^sequential_278/lstm_836/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_836/while/Identity_2Identity%sequential_278/lstm_836/while/add:z:0#^sequential_278/lstm_836/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_836/while/Identity_3IdentityRsequential_278/lstm_836/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_278/lstm_836/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_836/while/Identity_4Identity5sequential_278/lstm_836/while/lstm_cell_752/mul_2:z:0#^sequential_278/lstm_836/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_278/lstm_836/while/Identity_5Identity5sequential_278/lstm_836/while/lstm_cell_752/add_1:z:0#^sequential_278/lstm_836/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_278/lstm_836/while/NoOpNoOpC^sequential_278/lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOpB^sequential_278/lstm_836/while/lstm_cell_752/MatMul/ReadVariableOpD^sequential_278/lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_278_lstm_836_while_identity/sequential_278/lstm_836/while/Identity:output:0"]
(sequential_278_lstm_836_while_identity_11sequential_278/lstm_836/while/Identity_1:output:0"]
(sequential_278_lstm_836_while_identity_21sequential_278/lstm_836/while/Identity_2:output:0"]
(sequential_278_lstm_836_while_identity_31sequential_278/lstm_836/while/Identity_3:output:0"]
(sequential_278_lstm_836_while_identity_41sequential_278/lstm_836/while/Identity_4:output:0"]
(sequential_278_lstm_836_while_identity_51sequential_278/lstm_836/while/Identity_5:output:0"?
Ksequential_278_lstm_836_while_lstm_cell_752_biasadd_readvariableop_resourceMsequential_278_lstm_836_while_lstm_cell_752_biasadd_readvariableop_resource_0"?
Lsequential_278_lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resourceNsequential_278_lstm_836_while_lstm_cell_752_matmul_1_readvariableop_resource_0"?
Jsequential_278_lstm_836_while_lstm_cell_752_matmul_readvariableop_resourceLsequential_278_lstm_836_while_lstm_cell_752_matmul_readvariableop_resource_0"?
Esequential_278_lstm_836_while_sequential_278_lstm_836_strided_slice_1Gsequential_278_lstm_836_while_sequential_278_lstm_836_strided_slice_1_0"?
?sequential_278_lstm_836_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_836_tensorarrayunstack_tensorlistfromtensor?sequential_278_lstm_836_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_836_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_278/lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOpBsequential_278/lstm_836/while/lstm_cell_752/BiasAdd/ReadVariableOp2?
Asequential_278/lstm_836/while/lstm_cell_752/MatMul/ReadVariableOpAsequential_278/lstm_836/while/lstm_cell_752/MatMul/ReadVariableOp2?
Csequential_278/lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOpCsequential_278/lstm_836/while/lstm_cell_752/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_835_layer_call_fn_4551989
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4548694|
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
?#
?
while_body_4548625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_751_4548649_0:	d?0
while_lstm_cell_751_4548651_0:	2?,
while_lstm_cell_751_4548653_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_751_4548649:	d?.
while_lstm_cell_751_4548651:	2?*
while_lstm_cell_751_4548653:	???+while/lstm_cell_751/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_751/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_751_4548649_0while_lstm_cell_751_4548651_0while_lstm_cell_751_4548653_0*
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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4548611?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_751/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_751/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_751/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_751/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_751_4548649while_lstm_cell_751_4548649_0"<
while_lstm_cell_751_4548651while_lstm_cell_751_4548651_0"<
while_lstm_cell_751_4548653while_lstm_cell_751_4548653_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_751/StatefulPartitionedCall+while/lstm_cell_751/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552451

inputs?
,lstm_cell_751_matmul_readvariableop_resource:	d?A
.lstm_cell_751_matmul_1_readvariableop_resource:	2?<
-lstm_cell_751_biasadd_readvariableop_resource:	?
identity??$lstm_cell_751/BiasAdd/ReadVariableOp?#lstm_cell_751/MatMul/ReadVariableOp?%lstm_cell_751/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_751/MatMul/ReadVariableOpReadVariableOp,lstm_cell_751_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_751/MatMulMatMulstrided_slice_2:output:0+lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_751_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_751/MatMul_1MatMulzeros:output:0-lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_751/addAddV2lstm_cell_751/MatMul:product:0 lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_751_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_751/BiasAddBiasAddlstm_cell_751/add:z:0,lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_751/splitSplit&lstm_cell_751/split/split_dim:output:0lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_751/SigmoidSigmoidlstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_1Sigmoidlstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_751/mulMullstm_cell_751/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_751/ReluRelulstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_1Mullstm_cell_751/Sigmoid:y:0 lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_751/add_1AddV2lstm_cell_751/mul:z:0lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_2Sigmoidlstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_751/Relu_1Relulstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_2Mullstm_cell_751/Sigmoid_2:y:0"lstm_cell_751/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_751_matmul_readvariableop_resource.lstm_cell_751_matmul_1_readvariableop_resource-lstm_cell_751_biasadd_readvariableop_resource*
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
while_body_4552367*
condR
while_cond_4552366*K
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
NoOpNoOp%^lstm_cell_751/BiasAdd/ReadVariableOp$^lstm_cell_751/MatMul/ReadVariableOp&^lstm_cell_751/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_751/BiasAdd/ReadVariableOp$lstm_cell_751/BiasAdd/ReadVariableOp2J
#lstm_cell_751/MatMul/ReadVariableOp#lstm_cell_751/MatMul/ReadVariableOp2N
%lstm_cell_751/MatMul_1/ReadVariableOp%lstm_cell_751/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4552223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4552223___redundant_placeholder05
1while_while_cond_4552223___redundant_placeholder15
1while_while_cond_4552223___redundant_placeholder25
1while_while_cond_4552223___redundant_placeholder3
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
while_body_4552983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_752_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_752_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_752_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_752_matmul_readvariableop_resource:2(F
4while_lstm_cell_752_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_752_biasadd_readvariableop_resource:(??*while/lstm_cell_752/BiasAdd/ReadVariableOp?)while/lstm_cell_752/MatMul/ReadVariableOp?+while/lstm_cell_752/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_752/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_752_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_752/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_752_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_752/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_752/addAddV2$while/lstm_cell_752/MatMul:product:0&while/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_752_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_752/BiasAddBiasAddwhile/lstm_cell_752/add:z:02while/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_752/splitSplit,while/lstm_cell_752/split/split_dim:output:0$while/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_752/SigmoidSigmoid"while/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_1Sigmoid"while/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mulMul!while/lstm_cell_752/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_752/ReluRelu"while/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_1Mulwhile/lstm_cell_752/Sigmoid:y:0&while/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/add_1AddV2while/lstm_cell_752/mul:z:0while/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_2Sigmoid"while/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_752/Relu_1Reluwhile/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_2Mul!while/lstm_cell_752/Sigmoid_2:y:0(while/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_752/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_752/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_752/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_752/BiasAdd/ReadVariableOp*^while/lstm_cell_752/MatMul/ReadVariableOp,^while/lstm_cell_752/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_752_biasadd_readvariableop_resource5while_lstm_cell_752_biasadd_readvariableop_resource_0"n
4while_lstm_cell_752_matmul_1_readvariableop_resource6while_lstm_cell_752_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_752_matmul_readvariableop_resource4while_lstm_cell_752_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_752/BiasAdd/ReadVariableOp*while/lstm_cell_752/BiasAdd/ReadVariableOp2V
)while/lstm_cell_752/MatMul/ReadVariableOp)while/lstm_cell_752/MatMul/ReadVariableOp2Z
+while/lstm_cell_752/MatMul_1/ReadVariableOp+while/lstm_cell_752/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_278_lstm_836_while_cond_4548103L
Hsequential_278_lstm_836_while_sequential_278_lstm_836_while_loop_counterR
Nsequential_278_lstm_836_while_sequential_278_lstm_836_while_maximum_iterations-
)sequential_278_lstm_836_while_placeholder/
+sequential_278_lstm_836_while_placeholder_1/
+sequential_278_lstm_836_while_placeholder_2/
+sequential_278_lstm_836_while_placeholder_3N
Jsequential_278_lstm_836_while_less_sequential_278_lstm_836_strided_slice_1e
asequential_278_lstm_836_while_sequential_278_lstm_836_while_cond_4548103___redundant_placeholder0e
asequential_278_lstm_836_while_sequential_278_lstm_836_while_cond_4548103___redundant_placeholder1e
asequential_278_lstm_836_while_sequential_278_lstm_836_while_cond_4548103___redundant_placeholder2e
asequential_278_lstm_836_while_sequential_278_lstm_836_while_cond_4548103___redundant_placeholder3*
&sequential_278_lstm_836_while_identity
?
"sequential_278/lstm_836/while/LessLess)sequential_278_lstm_836_while_placeholderJsequential_278_lstm_836_while_less_sequential_278_lstm_836_strided_slice_1*
T0*
_output_shapes
: {
&sequential_278/lstm_836/while/IdentityIdentity&sequential_278/lstm_836/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_278_lstm_836_while_identity/sequential_278/lstm_836/while/Identity:output:0*(
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4550239

inputs?
,lstm_cell_750_matmul_readvariableop_resource:	?A
.lstm_cell_750_matmul_1_readvariableop_resource:	d?<
-lstm_cell_750_biasadd_readvariableop_resource:	?
identity??$lstm_cell_750/BiasAdd/ReadVariableOp?#lstm_cell_750/MatMul/ReadVariableOp?%lstm_cell_750/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_750/MatMul/ReadVariableOpReadVariableOp,lstm_cell_750_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_750/MatMulMatMulstrided_slice_2:output:0+lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_750_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_750/MatMul_1MatMulzeros:output:0-lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_750/addAddV2lstm_cell_750/MatMul:product:0 lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_750_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_750/BiasAddBiasAddlstm_cell_750/add:z:0,lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_750/splitSplit&lstm_cell_750/split/split_dim:output:0lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_750/SigmoidSigmoidlstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_1Sigmoidlstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_750/mulMullstm_cell_750/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_750/ReluRelulstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_1Mullstm_cell_750/Sigmoid:y:0 lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_750/add_1AddV2lstm_cell_750/mul:z:0lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_2Sigmoidlstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_750/Relu_1Relulstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_2Mullstm_cell_750/Sigmoid_2:y:0"lstm_cell_750/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_750_matmul_readvariableop_resource.lstm_cell_750_matmul_1_readvariableop_resource-lstm_cell_750_biasadd_readvariableop_resource*
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
while_body_4550155*
condR
while_cond_4550154*K
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
NoOpNoOp%^lstm_cell_750/BiasAdd/ReadVariableOp$^lstm_cell_750/MatMul/ReadVariableOp&^lstm_cell_750/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_750/BiasAdd/ReadVariableOp$lstm_cell_750/BiasAdd/ReadVariableOp2J
#lstm_cell_750/MatMul/ReadVariableOp#lstm_cell_750/MatMul/ReadVariableOp2N
%lstm_cell_750/MatMul_1/ReadVariableOp%lstm_cell_750/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_834_layer_call_fn_4551395

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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4549393s
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
*__inference_lstm_836_layer_call_fn_4552605
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549044o
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
while_cond_4548815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4548815___redundant_placeholder05
1while_while_cond_4548815___redundant_placeholder15
1while_while_cond_4548815___redundant_placeholder25
1while_while_cond_4548815___redundant_placeholder3
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
while_cond_4548274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4548274___redundant_placeholder05
1while_while_cond_4548274___redundant_placeholder15
1while_while_cond_4548274___redundant_placeholder25
1while_while_cond_4548274___redundant_placeholder3
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
*__inference_lstm_836_layer_call_fn_4552616
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549235o
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4549107

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
F__inference_dense_278_layer_call_and_return_conditional_losses_4553229

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

?
0__inference_sequential_278_layer_call_fn_4550481

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
K__inference_sequential_278_layer_call_and_return_conditional_losses_4549718o
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
?#
?
while_body_4548466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_750_4548490_0:	?0
while_lstm_cell_750_4548492_0:	d?,
while_lstm_cell_750_4548494_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_750_4548490:	?.
while_lstm_cell_750_4548492:	d?*
while_lstm_cell_750_4548494:	???+while/lstm_cell_750/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_750/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_750_4548490_0while_lstm_cell_750_4548492_0while_lstm_cell_750_4548494_0*
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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4548407?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_750/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_750/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_750/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_750/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_750_4548490while_lstm_cell_750_4548490_0"<
while_lstm_cell_750_4548492while_lstm_cell_750_4548492_0"<
while_lstm_cell_750_4548494while_lstm_cell_750_4548494_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_750/StatefulPartitionedCall+while/lstm_cell_750/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4551751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_750_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_750_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_750_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_750_matmul_readvariableop_resource:	?G
4while_lstm_cell_750_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_750_biasadd_readvariableop_resource:	???*while/lstm_cell_750/BiasAdd/ReadVariableOp?)while/lstm_cell_750/MatMul/ReadVariableOp?+while/lstm_cell_750/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_750/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_750_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_750/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_750_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_750/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_750/addAddV2$while/lstm_cell_750/MatMul:product:0&while/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_750_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_750/BiasAddBiasAddwhile/lstm_cell_750/add:z:02while/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_750/splitSplit,while/lstm_cell_750/split/split_dim:output:0$while/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_750/SigmoidSigmoid"while/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_1Sigmoid"while/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mulMul!while/lstm_cell_750/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_750/ReluRelu"while/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_1Mulwhile/lstm_cell_750/Sigmoid:y:0&while/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/add_1AddV2while/lstm_cell_750/mul:z:0while/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_2Sigmoid"while/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_750/Relu_1Reluwhile/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_2Mul!while/lstm_cell_750/Sigmoid_2:y:0(while/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_750/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_750/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_750/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_750/BiasAdd/ReadVariableOp*^while/lstm_cell_750/MatMul/ReadVariableOp,^while/lstm_cell_750/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_750_biasadd_readvariableop_resource5while_lstm_cell_750_biasadd_readvariableop_resource_0"n
4while_lstm_cell_750_matmul_1_readvariableop_resource6while_lstm_cell_750_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_750_matmul_readvariableop_resource4while_lstm_cell_750_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_750/BiasAdd/ReadVariableOp*while/lstm_cell_750/BiasAdd/ReadVariableOp2V
)while/lstm_cell_750/MatMul/ReadVariableOp)while/lstm_cell_750/MatMul/ReadVariableOp2Z
+while/lstm_cell_750/MatMul_1/ReadVariableOp+while/lstm_cell_750/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_278_layer_call_fn_4550359
lstm_834_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_834_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550307o
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
_user_specified_namelstm_834_input
?
?
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550389
lstm_834_input#
lstm_834_4550362:	?#
lstm_834_4550364:	d?
lstm_834_4550366:	?#
lstm_835_4550369:	d?#
lstm_835_4550371:	2?
lstm_835_4550373:	?"
lstm_836_4550376:2("
lstm_836_4550378:
(
lstm_836_4550380:(#
dense_278_4550383:

dense_278_4550385:
identity??!dense_278/StatefulPartitionedCall? lstm_834/StatefulPartitionedCall? lstm_835/StatefulPartitionedCall? lstm_836/StatefulPartitionedCall?
 lstm_834/StatefulPartitionedCallStatefulPartitionedCalllstm_834_inputlstm_834_4550362lstm_834_4550364lstm_834_4550366*
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4549393?
 lstm_835/StatefulPartitionedCallStatefulPartitionedCall)lstm_834/StatefulPartitionedCall:output:0lstm_835_4550369lstm_835_4550371lstm_835_4550373*
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4549543?
 lstm_836/StatefulPartitionedCallStatefulPartitionedCall)lstm_835/StatefulPartitionedCall:output:0lstm_836_4550376lstm_836_4550378lstm_836_4550380*
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549693?
!dense_278/StatefulPartitionedCallStatefulPartitionedCall)lstm_836/StatefulPartitionedCall:output:0dense_278_4550383dense_278_4550385*
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
F__inference_dense_278_layer_call_and_return_conditional_losses_4549711y
IdentityIdentity*dense_278/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_278/StatefulPartitionedCall!^lstm_834/StatefulPartitionedCall!^lstm_835/StatefulPartitionedCall!^lstm_836/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_278/StatefulPartitionedCall!dense_278/StatefulPartitionedCall2D
 lstm_834/StatefulPartitionedCall lstm_834/StatefulPartitionedCall2D
 lstm_835/StatefulPartitionedCall lstm_835/StatefulPartitionedCall2D
 lstm_836/StatefulPartitionedCall lstm_836/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_834_input
?
?
while_cond_4548974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4548974___redundant_placeholder05
1while_while_cond_4548974___redundant_placeholder15
1while_while_cond_4548974___redundant_placeholder25
1while_while_cond_4548974___redundant_placeholder3
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
while_cond_4551607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4551607___redundant_placeholder05
1while_while_cond_4551607___redundant_placeholder15
1while_while_cond_4551607___redundant_placeholder25
1while_while_cond_4551607___redundant_placeholder3
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
while_cond_4549165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4549165___redundant_placeholder05
1while_while_cond_4549165___redundant_placeholder15
1while_while_cond_4549165___redundant_placeholder25
1while_while_cond_4549165___redundant_placeholder3
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
while_body_4549825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_752_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_752_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_752_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_752_matmul_readvariableop_resource:2(F
4while_lstm_cell_752_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_752_biasadd_readvariableop_resource:(??*while/lstm_cell_752/BiasAdd/ReadVariableOp?)while/lstm_cell_752/MatMul/ReadVariableOp?+while/lstm_cell_752/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_752/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_752_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_752/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_752_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_752/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_752/addAddV2$while/lstm_cell_752/MatMul:product:0&while/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_752_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_752/BiasAddBiasAddwhile/lstm_cell_752/add:z:02while/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_752/splitSplit,while/lstm_cell_752/split/split_dim:output:0$while/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_752/SigmoidSigmoid"while/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_1Sigmoid"while/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mulMul!while/lstm_cell_752/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_752/ReluRelu"while/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_1Mulwhile/lstm_cell_752/Sigmoid:y:0&while/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/add_1AddV2while/lstm_cell_752/mul:z:0while/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_752/Sigmoid_2Sigmoid"while/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_752/Relu_1Reluwhile/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_752/mul_2Mul!while/lstm_cell_752/Sigmoid_2:y:0(while/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_752/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_752/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_752/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_752/BiasAdd/ReadVariableOp*^while/lstm_cell_752/MatMul/ReadVariableOp,^while/lstm_cell_752/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_752_biasadd_readvariableop_resource5while_lstm_cell_752_biasadd_readvariableop_resource_0"n
4while_lstm_cell_752_matmul_1_readvariableop_resource6while_lstm_cell_752_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_752_matmul_readvariableop_resource4while_lstm_cell_752_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_752/BiasAdd/ReadVariableOp*while/lstm_cell_752/BiasAdd/ReadVariableOp2V
)while/lstm_cell_752/MatMul/ReadVariableOp)while/lstm_cell_752/MatMul/ReadVariableOp2Z
+while/lstm_cell_752/MatMul_1/ReadVariableOp+while/lstm_cell_752/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4553393

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
?
while_cond_4549458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4549458___redundant_placeholder05
1while_while_cond_4549458___redundant_placeholder15
1while_while_cond_4549458___redundant_placeholder25
1while_while_cond_4549458___redundant_placeholder3
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
while_cond_4549824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4549824___redundant_placeholder05
1while_while_cond_4549824___redundant_placeholder15
1while_while_cond_4549824___redundant_placeholder25
1while_while_cond_4549824___redundant_placeholder3
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
?
*sequential_278_lstm_834_while_cond_4547825L
Hsequential_278_lstm_834_while_sequential_278_lstm_834_while_loop_counterR
Nsequential_278_lstm_834_while_sequential_278_lstm_834_while_maximum_iterations-
)sequential_278_lstm_834_while_placeholder/
+sequential_278_lstm_834_while_placeholder_1/
+sequential_278_lstm_834_while_placeholder_2/
+sequential_278_lstm_834_while_placeholder_3N
Jsequential_278_lstm_834_while_less_sequential_278_lstm_834_strided_slice_1e
asequential_278_lstm_834_while_sequential_278_lstm_834_while_cond_4547825___redundant_placeholder0e
asequential_278_lstm_834_while_sequential_278_lstm_834_while_cond_4547825___redundant_placeholder1e
asequential_278_lstm_834_while_sequential_278_lstm_834_while_cond_4547825___redundant_placeholder2e
asequential_278_lstm_834_while_sequential_278_lstm_834_while_cond_4547825___redundant_placeholder3*
&sequential_278_lstm_834_while_identity
?
"sequential_278/lstm_834/while/LessLess)sequential_278_lstm_834_while_placeholderJsequential_278_lstm_834_while_less_sequential_278_lstm_834_strided_slice_1*
T0*
_output_shapes
: {
&sequential_278/lstm_834/while/IdentityIdentity&sequential_278/lstm_834/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_278_lstm_834_while_identity/sequential_278/lstm_834/while/Identity:output:0*(
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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4548261

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
??
?
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550935

inputsH
5lstm_834_lstm_cell_750_matmul_readvariableop_resource:	?J
7lstm_834_lstm_cell_750_matmul_1_readvariableop_resource:	d?E
6lstm_834_lstm_cell_750_biasadd_readvariableop_resource:	?H
5lstm_835_lstm_cell_751_matmul_readvariableop_resource:	d?J
7lstm_835_lstm_cell_751_matmul_1_readvariableop_resource:	2?E
6lstm_835_lstm_cell_751_biasadd_readvariableop_resource:	?G
5lstm_836_lstm_cell_752_matmul_readvariableop_resource:2(I
7lstm_836_lstm_cell_752_matmul_1_readvariableop_resource:
(D
6lstm_836_lstm_cell_752_biasadd_readvariableop_resource:(:
(dense_278_matmul_readvariableop_resource:
7
)dense_278_biasadd_readvariableop_resource:
identity?? dense_278/BiasAdd/ReadVariableOp?dense_278/MatMul/ReadVariableOp?-lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp?,lstm_834/lstm_cell_750/MatMul/ReadVariableOp?.lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp?lstm_834/while?-lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp?,lstm_835/lstm_cell_751/MatMul/ReadVariableOp?.lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp?lstm_835/while?-lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp?,lstm_836/lstm_cell_752/MatMul/ReadVariableOp?.lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp?lstm_836/whileD
lstm_834/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_834/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_834/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_834/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_834/strided_sliceStridedSlicelstm_834/Shape:output:0%lstm_834/strided_slice/stack:output:0'lstm_834/strided_slice/stack_1:output:0'lstm_834/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_834/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_834/zeros/packedPacklstm_834/strided_slice:output:0 lstm_834/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_834/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_834/zerosFilllstm_834/zeros/packed:output:0lstm_834/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_834/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_834/zeros_1/packedPacklstm_834/strided_slice:output:0"lstm_834/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_834/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_834/zeros_1Fill lstm_834/zeros_1/packed:output:0lstm_834/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_834/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_834/transpose	Transposeinputs lstm_834/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_834/Shape_1Shapelstm_834/transpose:y:0*
T0*
_output_shapes
:h
lstm_834/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_834/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_834/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_834/strided_slice_1StridedSlicelstm_834/Shape_1:output:0'lstm_834/strided_slice_1/stack:output:0)lstm_834/strided_slice_1/stack_1:output:0)lstm_834/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_834/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_834/TensorArrayV2TensorListReserve-lstm_834/TensorArrayV2/element_shape:output:0!lstm_834/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_834/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_834/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_834/transpose:y:0Glstm_834/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_834/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_834/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_834/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_834/strided_slice_2StridedSlicelstm_834/transpose:y:0'lstm_834/strided_slice_2/stack:output:0)lstm_834/strided_slice_2/stack_1:output:0)lstm_834/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_834/lstm_cell_750/MatMul/ReadVariableOpReadVariableOp5lstm_834_lstm_cell_750_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_834/lstm_cell_750/MatMulMatMul!lstm_834/strided_slice_2:output:04lstm_834/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_834/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp7lstm_834_lstm_cell_750_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_834/lstm_cell_750/MatMul_1MatMullstm_834/zeros:output:06lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_834/lstm_cell_750/addAddV2'lstm_834/lstm_cell_750/MatMul:product:0)lstm_834/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_834/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp6lstm_834_lstm_cell_750_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_834/lstm_cell_750/BiasAddBiasAddlstm_834/lstm_cell_750/add:z:05lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_834/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_834/lstm_cell_750/splitSplit/lstm_834/lstm_cell_750/split/split_dim:output:0'lstm_834/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_834/lstm_cell_750/SigmoidSigmoid%lstm_834/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_834/lstm_cell_750/Sigmoid_1Sigmoid%lstm_834/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_834/lstm_cell_750/mulMul$lstm_834/lstm_cell_750/Sigmoid_1:y:0lstm_834/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_834/lstm_cell_750/ReluRelu%lstm_834/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_834/lstm_cell_750/mul_1Mul"lstm_834/lstm_cell_750/Sigmoid:y:0)lstm_834/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_834/lstm_cell_750/add_1AddV2lstm_834/lstm_cell_750/mul:z:0 lstm_834/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_834/lstm_cell_750/Sigmoid_2Sigmoid%lstm_834/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_834/lstm_cell_750/Relu_1Relu lstm_834/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_834/lstm_cell_750/mul_2Mul$lstm_834/lstm_cell_750/Sigmoid_2:y:0+lstm_834/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_834/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_834/TensorArrayV2_1TensorListReserve/lstm_834/TensorArrayV2_1/element_shape:output:0!lstm_834/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_834/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_834/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_834/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_834/whileWhile$lstm_834/while/loop_counter:output:0*lstm_834/while/maximum_iterations:output:0lstm_834/time:output:0!lstm_834/TensorArrayV2_1:handle:0lstm_834/zeros:output:0lstm_834/zeros_1:output:0!lstm_834/strided_slice_1:output:0@lstm_834/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_834_lstm_cell_750_matmul_readvariableop_resource7lstm_834_lstm_cell_750_matmul_1_readvariableop_resource6lstm_834_lstm_cell_750_biasadd_readvariableop_resource*
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
lstm_834_while_body_4550567*'
condR
lstm_834_while_cond_4550566*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_834/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_834/TensorArrayV2Stack/TensorListStackTensorListStacklstm_834/while:output:3Blstm_834/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_834/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_834/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_834/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_834/strided_slice_3StridedSlice4lstm_834/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_834/strided_slice_3/stack:output:0)lstm_834/strided_slice_3/stack_1:output:0)lstm_834/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_834/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_834/transpose_1	Transpose4lstm_834/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_834/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_834/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_835/ShapeShapelstm_834/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_835/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_835/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_835/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_835/strided_sliceStridedSlicelstm_835/Shape:output:0%lstm_835/strided_slice/stack:output:0'lstm_835/strided_slice/stack_1:output:0'lstm_835/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_835/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_835/zeros/packedPacklstm_835/strided_slice:output:0 lstm_835/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_835/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_835/zerosFilllstm_835/zeros/packed:output:0lstm_835/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_835/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_835/zeros_1/packedPacklstm_835/strided_slice:output:0"lstm_835/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_835/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_835/zeros_1Fill lstm_835/zeros_1/packed:output:0lstm_835/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_835/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_835/transpose	Transposelstm_834/transpose_1:y:0 lstm_835/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_835/Shape_1Shapelstm_835/transpose:y:0*
T0*
_output_shapes
:h
lstm_835/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_835/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_835/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_835/strided_slice_1StridedSlicelstm_835/Shape_1:output:0'lstm_835/strided_slice_1/stack:output:0)lstm_835/strided_slice_1/stack_1:output:0)lstm_835/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_835/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_835/TensorArrayV2TensorListReserve-lstm_835/TensorArrayV2/element_shape:output:0!lstm_835/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_835/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_835/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_835/transpose:y:0Glstm_835/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_835/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_835/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_835/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_835/strided_slice_2StridedSlicelstm_835/transpose:y:0'lstm_835/strided_slice_2/stack:output:0)lstm_835/strided_slice_2/stack_1:output:0)lstm_835/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_835/lstm_cell_751/MatMul/ReadVariableOpReadVariableOp5lstm_835_lstm_cell_751_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_835/lstm_cell_751/MatMulMatMul!lstm_835/strided_slice_2:output:04lstm_835/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_835/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp7lstm_835_lstm_cell_751_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_835/lstm_cell_751/MatMul_1MatMullstm_835/zeros:output:06lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_835/lstm_cell_751/addAddV2'lstm_835/lstm_cell_751/MatMul:product:0)lstm_835/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_835/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp6lstm_835_lstm_cell_751_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_835/lstm_cell_751/BiasAddBiasAddlstm_835/lstm_cell_751/add:z:05lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_835/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_835/lstm_cell_751/splitSplit/lstm_835/lstm_cell_751/split/split_dim:output:0'lstm_835/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_835/lstm_cell_751/SigmoidSigmoid%lstm_835/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_835/lstm_cell_751/Sigmoid_1Sigmoid%lstm_835/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_835/lstm_cell_751/mulMul$lstm_835/lstm_cell_751/Sigmoid_1:y:0lstm_835/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_835/lstm_cell_751/ReluRelu%lstm_835/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_835/lstm_cell_751/mul_1Mul"lstm_835/lstm_cell_751/Sigmoid:y:0)lstm_835/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_835/lstm_cell_751/add_1AddV2lstm_835/lstm_cell_751/mul:z:0 lstm_835/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_835/lstm_cell_751/Sigmoid_2Sigmoid%lstm_835/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_835/lstm_cell_751/Relu_1Relu lstm_835/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_835/lstm_cell_751/mul_2Mul$lstm_835/lstm_cell_751/Sigmoid_2:y:0+lstm_835/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_835/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_835/TensorArrayV2_1TensorListReserve/lstm_835/TensorArrayV2_1/element_shape:output:0!lstm_835/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_835/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_835/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_835/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_835/whileWhile$lstm_835/while/loop_counter:output:0*lstm_835/while/maximum_iterations:output:0lstm_835/time:output:0!lstm_835/TensorArrayV2_1:handle:0lstm_835/zeros:output:0lstm_835/zeros_1:output:0!lstm_835/strided_slice_1:output:0@lstm_835/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_835_lstm_cell_751_matmul_readvariableop_resource7lstm_835_lstm_cell_751_matmul_1_readvariableop_resource6lstm_835_lstm_cell_751_biasadd_readvariableop_resource*
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
lstm_835_while_body_4550706*'
condR
lstm_835_while_cond_4550705*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_835/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_835/TensorArrayV2Stack/TensorListStackTensorListStacklstm_835/while:output:3Blstm_835/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_835/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_835/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_835/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_835/strided_slice_3StridedSlice4lstm_835/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_835/strided_slice_3/stack:output:0)lstm_835/strided_slice_3/stack_1:output:0)lstm_835/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_835/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_835/transpose_1	Transpose4lstm_835/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_835/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_835/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_836/ShapeShapelstm_835/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_836/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_836/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_836/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_836/strided_sliceStridedSlicelstm_836/Shape:output:0%lstm_836/strided_slice/stack:output:0'lstm_836/strided_slice/stack_1:output:0'lstm_836/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_836/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_836/zeros/packedPacklstm_836/strided_slice:output:0 lstm_836/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_836/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_836/zerosFilllstm_836/zeros/packed:output:0lstm_836/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_836/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_836/zeros_1/packedPacklstm_836/strided_slice:output:0"lstm_836/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_836/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_836/zeros_1Fill lstm_836/zeros_1/packed:output:0lstm_836/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_836/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_836/transpose	Transposelstm_835/transpose_1:y:0 lstm_836/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_836/Shape_1Shapelstm_836/transpose:y:0*
T0*
_output_shapes
:h
lstm_836/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_836/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_836/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_836/strided_slice_1StridedSlicelstm_836/Shape_1:output:0'lstm_836/strided_slice_1/stack:output:0)lstm_836/strided_slice_1/stack_1:output:0)lstm_836/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_836/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_836/TensorArrayV2TensorListReserve-lstm_836/TensorArrayV2/element_shape:output:0!lstm_836/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_836/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_836/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_836/transpose:y:0Glstm_836/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_836/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_836/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_836/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_836/strided_slice_2StridedSlicelstm_836/transpose:y:0'lstm_836/strided_slice_2/stack:output:0)lstm_836/strided_slice_2/stack_1:output:0)lstm_836/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_836/lstm_cell_752/MatMul/ReadVariableOpReadVariableOp5lstm_836_lstm_cell_752_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_836/lstm_cell_752/MatMulMatMul!lstm_836/strided_slice_2:output:04lstm_836/lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_836/lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp7lstm_836_lstm_cell_752_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_836/lstm_cell_752/MatMul_1MatMullstm_836/zeros:output:06lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_836/lstm_cell_752/addAddV2'lstm_836/lstm_cell_752/MatMul:product:0)lstm_836/lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_836/lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp6lstm_836_lstm_cell_752_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_836/lstm_cell_752/BiasAddBiasAddlstm_836/lstm_cell_752/add:z:05lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_836/lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_836/lstm_cell_752/splitSplit/lstm_836/lstm_cell_752/split/split_dim:output:0'lstm_836/lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_836/lstm_cell_752/SigmoidSigmoid%lstm_836/lstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_836/lstm_cell_752/Sigmoid_1Sigmoid%lstm_836/lstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_836/lstm_cell_752/mulMul$lstm_836/lstm_cell_752/Sigmoid_1:y:0lstm_836/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_836/lstm_cell_752/ReluRelu%lstm_836/lstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_836/lstm_cell_752/mul_1Mul"lstm_836/lstm_cell_752/Sigmoid:y:0)lstm_836/lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_836/lstm_cell_752/add_1AddV2lstm_836/lstm_cell_752/mul:z:0 lstm_836/lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_836/lstm_cell_752/Sigmoid_2Sigmoid%lstm_836/lstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_836/lstm_cell_752/Relu_1Relu lstm_836/lstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_836/lstm_cell_752/mul_2Mul$lstm_836/lstm_cell_752/Sigmoid_2:y:0+lstm_836/lstm_cell_752/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_836/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_836/TensorArrayV2_1TensorListReserve/lstm_836/TensorArrayV2_1/element_shape:output:0!lstm_836/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_836/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_836/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_836/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_836/whileWhile$lstm_836/while/loop_counter:output:0*lstm_836/while/maximum_iterations:output:0lstm_836/time:output:0!lstm_836/TensorArrayV2_1:handle:0lstm_836/zeros:output:0lstm_836/zeros_1:output:0!lstm_836/strided_slice_1:output:0@lstm_836/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_836_lstm_cell_752_matmul_readvariableop_resource7lstm_836_lstm_cell_752_matmul_1_readvariableop_resource6lstm_836_lstm_cell_752_biasadd_readvariableop_resource*
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
lstm_836_while_body_4550845*'
condR
lstm_836_while_cond_4550844*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_836/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_836/TensorArrayV2Stack/TensorListStackTensorListStacklstm_836/while:output:3Blstm_836/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_836/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_836/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_836/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_836/strided_slice_3StridedSlice4lstm_836/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_836/strided_slice_3/stack:output:0)lstm_836/strided_slice_3/stack_1:output:0)lstm_836/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_836/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_836/transpose_1	Transpose4lstm_836/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_836/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_836/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_278/MatMul/ReadVariableOpReadVariableOp(dense_278_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_278/MatMulMatMul!lstm_836/strided_slice_3:output:0'dense_278/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_278/BiasAdd/ReadVariableOpReadVariableOp)dense_278_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_278/BiasAddBiasAdddense_278/MatMul:product:0(dense_278/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_278/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_278/BiasAdd/ReadVariableOp ^dense_278/MatMul/ReadVariableOp.^lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp-^lstm_834/lstm_cell_750/MatMul/ReadVariableOp/^lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp^lstm_834/while.^lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp-^lstm_835/lstm_cell_751/MatMul/ReadVariableOp/^lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp^lstm_835/while.^lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp-^lstm_836/lstm_cell_752/MatMul/ReadVariableOp/^lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp^lstm_836/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_278/BiasAdd/ReadVariableOp dense_278/BiasAdd/ReadVariableOp2B
dense_278/MatMul/ReadVariableOpdense_278/MatMul/ReadVariableOp2^
-lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp-lstm_834/lstm_cell_750/BiasAdd/ReadVariableOp2\
,lstm_834/lstm_cell_750/MatMul/ReadVariableOp,lstm_834/lstm_cell_750/MatMul/ReadVariableOp2`
.lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp.lstm_834/lstm_cell_750/MatMul_1/ReadVariableOp2 
lstm_834/whilelstm_834/while2^
-lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp-lstm_835/lstm_cell_751/BiasAdd/ReadVariableOp2\
,lstm_835/lstm_cell_751/MatMul/ReadVariableOp,lstm_835/lstm_cell_751/MatMul/ReadVariableOp2`
.lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp.lstm_835/lstm_cell_751/MatMul_1/ReadVariableOp2 
lstm_835/whilelstm_835/while2^
-lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp-lstm_836/lstm_cell_752/BiasAdd/ReadVariableOp2\
,lstm_836/lstm_cell_752/MatMul/ReadVariableOp,lstm_836/lstm_cell_752/MatMul/ReadVariableOp2`
.lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp.lstm_836/lstm_cell_752/MatMul_1/ReadVariableOp2 
lstm_836/whilelstm_836/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4549608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4549608___redundant_placeholder05
1while_while_cond_4549608___redundant_placeholder15
1while_while_cond_4549608___redundant_placeholder25
1while_while_cond_4549608___redundant_placeholder3
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
while_cond_4552080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4552080___redundant_placeholder05
1while_while_cond_4552080___redundant_placeholder15
1while_while_cond_4552080___redundant_placeholder25
1while_while_cond_4552080___redundant_placeholder3
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
while_cond_4551750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4551750___redundant_placeholder05
1while_while_cond_4551750___redundant_placeholder15
1while_while_cond_4551750___redundant_placeholder25
1while_while_cond_4551750___redundant_placeholder3
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551978

inputs?
,lstm_cell_750_matmul_readvariableop_resource:	?A
.lstm_cell_750_matmul_1_readvariableop_resource:	d?<
-lstm_cell_750_biasadd_readvariableop_resource:	?
identity??$lstm_cell_750/BiasAdd/ReadVariableOp?#lstm_cell_750/MatMul/ReadVariableOp?%lstm_cell_750/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_750/MatMul/ReadVariableOpReadVariableOp,lstm_cell_750_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_750/MatMulMatMulstrided_slice_2:output:0+lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_750_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_750/MatMul_1MatMulzeros:output:0-lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_750/addAddV2lstm_cell_750/MatMul:product:0 lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_750_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_750/BiasAddBiasAddlstm_cell_750/add:z:0,lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_750/splitSplit&lstm_cell_750/split/split_dim:output:0lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_750/SigmoidSigmoidlstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_1Sigmoidlstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_750/mulMullstm_cell_750/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_750/ReluRelulstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_1Mullstm_cell_750/Sigmoid:y:0 lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_750/add_1AddV2lstm_cell_750/mul:z:0lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_2Sigmoidlstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_750/Relu_1Relulstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_2Mullstm_cell_750/Sigmoid_2:y:0"lstm_cell_750/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_750_matmul_readvariableop_resource.lstm_cell_750_matmul_1_readvariableop_resource-lstm_cell_750_biasadd_readvariableop_resource*
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
while_body_4551894*
condR
while_cond_4551893*K
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
NoOpNoOp%^lstm_cell_750/BiasAdd/ReadVariableOp$^lstm_cell_750/MatMul/ReadVariableOp&^lstm_cell_750/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_750/BiasAdd/ReadVariableOp$lstm_cell_750/BiasAdd/ReadVariableOp2J
#lstm_cell_750/MatMul/ReadVariableOp#lstm_cell_750/MatMul/ReadVariableOp2N
%lstm_cell_750/MatMul_1/ReadVariableOp%lstm_cell_750/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4548624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4548624___redundant_placeholder05
1while_while_cond_4548624___redundant_placeholder15
1while_while_cond_4548624___redundant_placeholder25
1while_while_cond_4548624___redundant_placeholder3
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
*__inference_lstm_834_layer_call_fn_4551384
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4548535|
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
*__inference_lstm_836_layer_call_fn_4552627

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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549693o
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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4548611

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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4553327

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

?
lstm_836_while_cond_4551271.
*lstm_836_while_lstm_836_while_loop_counter4
0lstm_836_while_lstm_836_while_maximum_iterations
lstm_836_while_placeholder 
lstm_836_while_placeholder_1 
lstm_836_while_placeholder_2 
lstm_836_while_placeholder_30
,lstm_836_while_less_lstm_836_strided_slice_1G
Clstm_836_while_lstm_836_while_cond_4551271___redundant_placeholder0G
Clstm_836_while_lstm_836_while_cond_4551271___redundant_placeholder1G
Clstm_836_while_lstm_836_while_cond_4551271___redundant_placeholder2G
Clstm_836_while_lstm_836_while_cond_4551271___redundant_placeholder3
lstm_836_while_identity
?
lstm_836/while/LessLesslstm_836_while_placeholder,lstm_836_while_less_lstm_836_strided_slice_1*
T0*
_output_shapes
: ]
lstm_836/while/IdentityIdentitylstm_836/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_836_while_identity lstm_836/while/Identity:output:0*(
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4553491

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
while_body_4550155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_750_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_750_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_750_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_750_matmul_readvariableop_resource:	?G
4while_lstm_cell_750_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_750_biasadd_readvariableop_resource:	???*while/lstm_cell_750/BiasAdd/ReadVariableOp?)while/lstm_cell_750/MatMul/ReadVariableOp?+while/lstm_cell_750/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_750/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_750_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_750/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_750_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_750/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_750/addAddV2$while/lstm_cell_750/MatMul:product:0&while/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_750_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_750/BiasAddBiasAddwhile/lstm_cell_750/add:z:02while/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_750/splitSplit,while/lstm_cell_750/split/split_dim:output:0$while/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_750/SigmoidSigmoid"while/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_1Sigmoid"while/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mulMul!while/lstm_cell_750/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_750/ReluRelu"while/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_1Mulwhile/lstm_cell_750/Sigmoid:y:0&while/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/add_1AddV2while/lstm_cell_750/mul:z:0while/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_2Sigmoid"while/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_750/Relu_1Reluwhile/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_2Mul!while/lstm_cell_750/Sigmoid_2:y:0(while/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_750/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_750/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_750/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_750/BiasAdd/ReadVariableOp*^while/lstm_cell_750/MatMul/ReadVariableOp,^while/lstm_cell_750/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_750_biasadd_readvariableop_resource5while_lstm_cell_750_biasadd_readvariableop_resource_0"n
4while_lstm_cell_750_matmul_1_readvariableop_resource6while_lstm_cell_750_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_750_matmul_readvariableop_resource4while_lstm_cell_750_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_750/BiasAdd/ReadVariableOp*while/lstm_cell_750/BiasAdd/ReadVariableOp2V
)while/lstm_cell_750/MatMul/ReadVariableOp)while/lstm_cell_750/MatMul/ReadVariableOp2Z
+while/lstm_cell_750/MatMul_1/ReadVariableOp+while/lstm_cell_750/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_834_while_body_4550567.
*lstm_834_while_lstm_834_while_loop_counter4
0lstm_834_while_lstm_834_while_maximum_iterations
lstm_834_while_placeholder 
lstm_834_while_placeholder_1 
lstm_834_while_placeholder_2 
lstm_834_while_placeholder_3-
)lstm_834_while_lstm_834_strided_slice_1_0i
elstm_834_while_tensorarrayv2read_tensorlistgetitem_lstm_834_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_834_while_lstm_cell_750_matmul_readvariableop_resource_0:	?R
?lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource_0:	d?M
>lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource_0:	?
lstm_834_while_identity
lstm_834_while_identity_1
lstm_834_while_identity_2
lstm_834_while_identity_3
lstm_834_while_identity_4
lstm_834_while_identity_5+
'lstm_834_while_lstm_834_strided_slice_1g
clstm_834_while_tensorarrayv2read_tensorlistgetitem_lstm_834_tensorarrayunstack_tensorlistfromtensorN
;lstm_834_while_lstm_cell_750_matmul_readvariableop_resource:	?P
=lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource:	d?K
<lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource:	???3lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp?2lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp?4lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp?
@lstm_834/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_834/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_834_while_tensorarrayv2read_tensorlistgetitem_lstm_834_tensorarrayunstack_tensorlistfromtensor_0lstm_834_while_placeholderIlstm_834/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_834/while/lstm_cell_750/MatMul/ReadVariableOpReadVariableOp=lstm_834_while_lstm_cell_750_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_834/while/lstm_cell_750/MatMulMatMul9lstm_834/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp?lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_834/while/lstm_cell_750/MatMul_1MatMullstm_834_while_placeholder_2<lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_834/while/lstm_cell_750/addAddV2-lstm_834/while/lstm_cell_750/MatMul:product:0/lstm_834/while/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp>lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_834/while/lstm_cell_750/BiasAddBiasAdd$lstm_834/while/lstm_cell_750/add:z:0;lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_834/while/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_834/while/lstm_cell_750/splitSplit5lstm_834/while/lstm_cell_750/split/split_dim:output:0-lstm_834/while/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_834/while/lstm_cell_750/SigmoidSigmoid+lstm_834/while/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_834/while/lstm_cell_750/Sigmoid_1Sigmoid+lstm_834/while/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_834/while/lstm_cell_750/mulMul*lstm_834/while/lstm_cell_750/Sigmoid_1:y:0lstm_834_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_834/while/lstm_cell_750/ReluRelu+lstm_834/while/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_834/while/lstm_cell_750/mul_1Mul(lstm_834/while/lstm_cell_750/Sigmoid:y:0/lstm_834/while/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_834/while/lstm_cell_750/add_1AddV2$lstm_834/while/lstm_cell_750/mul:z:0&lstm_834/while/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_834/while/lstm_cell_750/Sigmoid_2Sigmoid+lstm_834/while/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_834/while/lstm_cell_750/Relu_1Relu&lstm_834/while/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_834/while/lstm_cell_750/mul_2Mul*lstm_834/while/lstm_cell_750/Sigmoid_2:y:01lstm_834/while/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_834/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_834_while_placeholder_1lstm_834_while_placeholder&lstm_834/while/lstm_cell_750/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_834/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_834/while/addAddV2lstm_834_while_placeholderlstm_834/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_834/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_834/while/add_1AddV2*lstm_834_while_lstm_834_while_loop_counterlstm_834/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_834/while/IdentityIdentitylstm_834/while/add_1:z:0^lstm_834/while/NoOp*
T0*
_output_shapes
: ?
lstm_834/while/Identity_1Identity0lstm_834_while_lstm_834_while_maximum_iterations^lstm_834/while/NoOp*
T0*
_output_shapes
: t
lstm_834/while/Identity_2Identitylstm_834/while/add:z:0^lstm_834/while/NoOp*
T0*
_output_shapes
: ?
lstm_834/while/Identity_3IdentityClstm_834/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_834/while/NoOp*
T0*
_output_shapes
: ?
lstm_834/while/Identity_4Identity&lstm_834/while/lstm_cell_750/mul_2:z:0^lstm_834/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_834/while/Identity_5Identity&lstm_834/while/lstm_cell_750/add_1:z:0^lstm_834/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_834/while/NoOpNoOp4^lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp3^lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp5^lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_834_while_identity lstm_834/while/Identity:output:0"?
lstm_834_while_identity_1"lstm_834/while/Identity_1:output:0"?
lstm_834_while_identity_2"lstm_834/while/Identity_2:output:0"?
lstm_834_while_identity_3"lstm_834/while/Identity_3:output:0"?
lstm_834_while_identity_4"lstm_834/while/Identity_4:output:0"?
lstm_834_while_identity_5"lstm_834/while/Identity_5:output:0"T
'lstm_834_while_lstm_834_strided_slice_1)lstm_834_while_lstm_834_strided_slice_1_0"~
<lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource>lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource_0"?
=lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource?lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource_0"|
;lstm_834_while_lstm_cell_750_matmul_readvariableop_resource=lstm_834_while_lstm_cell_750_matmul_readvariableop_resource_0"?
clstm_834_while_tensorarrayv2read_tensorlistgetitem_lstm_834_tensorarrayunstack_tensorlistfromtensorelstm_834_while_tensorarrayv2read_tensorlistgetitem_lstm_834_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp3lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp2h
2lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp2lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp2l
4lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp4lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4553425

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
?
while_cond_4550154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4550154___redundant_placeholder05
1while_while_cond_4550154___redundant_placeholder15
1while_while_cond_4550154___redundant_placeholder25
1while_while_cond_4550154___redundant_placeholder3
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
?
/__inference_lstm_cell_752_layer_call_fn_4553459

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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4549107o
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
??
?
#__inference__traced_restore_4553796
file_prefix3
!assignvariableop_dense_278_kernel:
/
!assignvariableop_1_dense_278_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_834_lstm_cell_834_kernel:	?M
:assignvariableop_8_lstm_834_lstm_cell_834_recurrent_kernel:	d?=
.assignvariableop_9_lstm_834_lstm_cell_834_bias:	?D
1assignvariableop_10_lstm_835_lstm_cell_835_kernel:	d?N
;assignvariableop_11_lstm_835_lstm_cell_835_recurrent_kernel:	2?>
/assignvariableop_12_lstm_835_lstm_cell_835_bias:	?C
1assignvariableop_13_lstm_836_lstm_cell_836_kernel:2(M
;assignvariableop_14_lstm_836_lstm_cell_836_recurrent_kernel:
(=
/assignvariableop_15_lstm_836_lstm_cell_836_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_278_kernel_m:
7
)assignvariableop_19_adam_dense_278_bias_m:K
8assignvariableop_20_adam_lstm_834_lstm_cell_834_kernel_m:	?U
Bassignvariableop_21_adam_lstm_834_lstm_cell_834_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_834_lstm_cell_834_bias_m:	?K
8assignvariableop_23_adam_lstm_835_lstm_cell_835_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_835_lstm_cell_835_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_835_lstm_cell_835_bias_m:	?J
8assignvariableop_26_adam_lstm_836_lstm_cell_836_kernel_m:2(T
Bassignvariableop_27_adam_lstm_836_lstm_cell_836_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_836_lstm_cell_836_bias_m:(=
+assignvariableop_29_adam_dense_278_kernel_v:
7
)assignvariableop_30_adam_dense_278_bias_v:K
8assignvariableop_31_adam_lstm_834_lstm_cell_834_kernel_v:	?U
Bassignvariableop_32_adam_lstm_834_lstm_cell_834_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_834_lstm_cell_834_bias_v:	?K
8assignvariableop_34_adam_lstm_835_lstm_cell_835_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_835_lstm_cell_835_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_835_lstm_cell_835_bias_v:	?J
8assignvariableop_37_adam_lstm_836_lstm_cell_836_kernel_v:2(T
Bassignvariableop_38_adam_lstm_836_lstm_cell_836_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_836_lstm_cell_836_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_278_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_278_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_834_lstm_cell_834_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_834_lstm_cell_834_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_834_lstm_cell_834_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_835_lstm_cell_835_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_835_lstm_cell_835_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_835_lstm_cell_835_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_836_lstm_cell_836_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_836_lstm_cell_836_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_836_lstm_cell_836_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_278_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_278_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_834_lstm_cell_834_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_834_lstm_cell_834_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_834_lstm_cell_834_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_835_lstm_cell_835_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_835_lstm_cell_835_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_835_lstm_cell_835_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_836_lstm_cell_836_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_836_lstm_cell_836_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_836_lstm_cell_836_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_278_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_278_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_834_lstm_cell_834_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_834_lstm_cell_834_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_834_lstm_cell_834_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_835_lstm_cell_835_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_835_lstm_cell_835_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_835_lstm_cell_835_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_836_lstm_cell_836_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_836_lstm_cell_836_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_836_lstm_cell_836_bias_vIdentity_39:output:0"/device:CPU:0*
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
?#
?
while_body_4548816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_751_4548840_0:	d?0
while_lstm_cell_751_4548842_0:	2?,
while_lstm_cell_751_4548844_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_751_4548840:	d?.
while_lstm_cell_751_4548842:	2?*
while_lstm_cell_751_4548844:	???+while/lstm_cell_751/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_751/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_751_4548840_0while_lstm_cell_751_4548842_0while_lstm_cell_751_4548844_0*
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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4548757?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_751/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_751/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_751/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_751/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_751_4548840while_lstm_cell_751_4548840_0"<
while_lstm_cell_751_4548842while_lstm_cell_751_4548842_0"<
while_lstm_cell_751_4548844while_lstm_cell_751_4548844_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_751/StatefulPartitionedCall+while/lstm_cell_751/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549044

inputs'
lstm_cell_752_4548962:2('
lstm_cell_752_4548964:
(#
lstm_cell_752_4548966:(
identity??%lstm_cell_752/StatefulPartitionedCall?while;
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
%lstm_cell_752/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_752_4548962lstm_cell_752_4548964lstm_cell_752_4548966*
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4548961n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_752_4548962lstm_cell_752_4548964lstm_cell_752_4548966*
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
while_body_4548975*
condR
while_cond_4548974*K
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
NoOpNoOp&^lstm_cell_752/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_752/StatefulPartitionedCall%lstm_cell_752/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
lstm_834_while_cond_4550566.
*lstm_834_while_lstm_834_while_loop_counter4
0lstm_834_while_lstm_834_while_maximum_iterations
lstm_834_while_placeholder 
lstm_834_while_placeholder_1 
lstm_834_while_placeholder_2 
lstm_834_while_placeholder_30
,lstm_834_while_less_lstm_834_strided_slice_1G
Clstm_834_while_lstm_834_while_cond_4550566___redundant_placeholder0G
Clstm_834_while_lstm_834_while_cond_4550566___redundant_placeholder1G
Clstm_834_while_lstm_834_while_cond_4550566___redundant_placeholder2G
Clstm_834_while_lstm_834_while_cond_4550566___redundant_placeholder3
lstm_834_while_identity
?
lstm_834/while/LessLesslstm_834_while_placeholder,lstm_834_while_less_lstm_834_strided_slice_1*
T0*
_output_shapes
: ]
lstm_834/while/IdentityIdentitylstm_834/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_834_while_identity lstm_834/while/Identity:output:0*(
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
while_cond_4552366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4552366___redundant_placeholder05
1while_while_cond_4552366___redundant_placeholder15
1while_while_cond_4552366___redundant_placeholder25
1while_while_cond_4552366___redundant_placeholder3
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4552924
inputs_0>
,lstm_cell_752_matmul_readvariableop_resource:2(@
.lstm_cell_752_matmul_1_readvariableop_resource:
(;
-lstm_cell_752_biasadd_readvariableop_resource:(
identity??$lstm_cell_752/BiasAdd/ReadVariableOp?#lstm_cell_752/MatMul/ReadVariableOp?%lstm_cell_752/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_752/MatMul/ReadVariableOpReadVariableOp,lstm_cell_752_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_752/MatMulMatMulstrided_slice_2:output:0+lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_752_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_752/MatMul_1MatMulzeros:output:0-lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_752/addAddV2lstm_cell_752/MatMul:product:0 lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_752_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_752/BiasAddBiasAddlstm_cell_752/add:z:0,lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_752/splitSplit&lstm_cell_752/split/split_dim:output:0lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_752/SigmoidSigmoidlstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_1Sigmoidlstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_752/mulMullstm_cell_752/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_752/ReluRelulstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_1Mullstm_cell_752/Sigmoid:y:0 lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_752/add_1AddV2lstm_cell_752/mul:z:0lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_2Sigmoidlstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_752/Relu_1Relulstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_2Mullstm_cell_752/Sigmoid_2:y:0"lstm_cell_752/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_752_matmul_readvariableop_resource.lstm_cell_752_matmul_1_readvariableop_resource-lstm_cell_752_biasadd_readvariableop_resource*
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
while_body_4552840*
condR
while_cond_4552839*K
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
NoOpNoOp%^lstm_cell_752/BiasAdd/ReadVariableOp$^lstm_cell_752/MatMul/ReadVariableOp&^lstm_cell_752/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_752/BiasAdd/ReadVariableOp$lstm_cell_752/BiasAdd/ReadVariableOp2J
#lstm_cell_752/MatMul/ReadVariableOp#lstm_cell_752/MatMul/ReadVariableOp2N
%lstm_cell_752/MatMul_1/ReadVariableOp%lstm_cell_752/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552308
inputs_0?
,lstm_cell_751_matmul_readvariableop_resource:	d?A
.lstm_cell_751_matmul_1_readvariableop_resource:	2?<
-lstm_cell_751_biasadd_readvariableop_resource:	?
identity??$lstm_cell_751/BiasAdd/ReadVariableOp?#lstm_cell_751/MatMul/ReadVariableOp?%lstm_cell_751/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_751/MatMul/ReadVariableOpReadVariableOp,lstm_cell_751_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_751/MatMulMatMulstrided_slice_2:output:0+lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_751_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_751/MatMul_1MatMulzeros:output:0-lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_751/addAddV2lstm_cell_751/MatMul:product:0 lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_751_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_751/BiasAddBiasAddlstm_cell_751/add:z:0,lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_751/splitSplit&lstm_cell_751/split/split_dim:output:0lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_751/SigmoidSigmoidlstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_1Sigmoidlstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_751/mulMullstm_cell_751/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_751/ReluRelulstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_1Mullstm_cell_751/Sigmoid:y:0 lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_751/add_1AddV2lstm_cell_751/mul:z:0lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_2Sigmoidlstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_751/Relu_1Relulstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_2Mullstm_cell_751/Sigmoid_2:y:0"lstm_cell_751/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_751_matmul_readvariableop_resource.lstm_cell_751_matmul_1_readvariableop_resource-lstm_cell_751_biasadd_readvariableop_resource*
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
while_body_4552224*
condR
while_cond_4552223*K
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
NoOpNoOp%^lstm_cell_751/BiasAdd/ReadVariableOp$^lstm_cell_751/MatMul/ReadVariableOp&^lstm_cell_751/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_751/BiasAdd/ReadVariableOp$lstm_cell_751/BiasAdd/ReadVariableOp2J
#lstm_cell_751/MatMul/ReadVariableOp#lstm_cell_751/MatMul/ReadVariableOp2N
%lstm_cell_751/MatMul_1/ReadVariableOp%lstm_cell_751/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_835_layer_call_and_return_conditional_losses_4548885

inputs(
lstm_cell_751_4548803:	d?(
lstm_cell_751_4548805:	2?$
lstm_cell_751_4548807:	?
identity??%lstm_cell_751/StatefulPartitionedCall?while;
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
%lstm_cell_751/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_751_4548803lstm_cell_751_4548805lstm_cell_751_4548807*
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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4548757n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_751_4548803lstm_cell_751_4548805lstm_cell_751_4548807*
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
while_body_4548816*
condR
while_cond_4548815*K
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
NoOpNoOp&^lstm_cell_751/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_751/StatefulPartitionedCall%lstm_cell_751/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?T
?
*sequential_278_lstm_834_while_body_4547826L
Hsequential_278_lstm_834_while_sequential_278_lstm_834_while_loop_counterR
Nsequential_278_lstm_834_while_sequential_278_lstm_834_while_maximum_iterations-
)sequential_278_lstm_834_while_placeholder/
+sequential_278_lstm_834_while_placeholder_1/
+sequential_278_lstm_834_while_placeholder_2/
+sequential_278_lstm_834_while_placeholder_3K
Gsequential_278_lstm_834_while_sequential_278_lstm_834_strided_slice_1_0?
?sequential_278_lstm_834_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_834_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_278_lstm_834_while_lstm_cell_750_matmul_readvariableop_resource_0:	?a
Nsequential_278_lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource_0:	d?\
Msequential_278_lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource_0:	?*
&sequential_278_lstm_834_while_identity,
(sequential_278_lstm_834_while_identity_1,
(sequential_278_lstm_834_while_identity_2,
(sequential_278_lstm_834_while_identity_3,
(sequential_278_lstm_834_while_identity_4,
(sequential_278_lstm_834_while_identity_5I
Esequential_278_lstm_834_while_sequential_278_lstm_834_strided_slice_1?
?sequential_278_lstm_834_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_834_tensorarrayunstack_tensorlistfromtensor]
Jsequential_278_lstm_834_while_lstm_cell_750_matmul_readvariableop_resource:	?_
Lsequential_278_lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource:	d?Z
Ksequential_278_lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource:	???Bsequential_278/lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp?Asequential_278/lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp?Csequential_278/lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp?
Osequential_278/lstm_834/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_278/lstm_834/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_278_lstm_834_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_834_tensorarrayunstack_tensorlistfromtensor_0)sequential_278_lstm_834_while_placeholderXsequential_278/lstm_834/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_278/lstm_834/while/lstm_cell_750/MatMul/ReadVariableOpReadVariableOpLsequential_278_lstm_834_while_lstm_cell_750_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_278/lstm_834/while/lstm_cell_750/MatMulMatMulHsequential_278/lstm_834/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_278/lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_278/lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOpNsequential_278_lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_278/lstm_834/while/lstm_cell_750/MatMul_1MatMul+sequential_278_lstm_834_while_placeholder_2Ksequential_278/lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_278/lstm_834/while/lstm_cell_750/addAddV2<sequential_278/lstm_834/while/lstm_cell_750/MatMul:product:0>sequential_278/lstm_834/while/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_278/lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOpMsequential_278_lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_278/lstm_834/while/lstm_cell_750/BiasAddBiasAdd3sequential_278/lstm_834/while/lstm_cell_750/add:z:0Jsequential_278/lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_278/lstm_834/while/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_278/lstm_834/while/lstm_cell_750/splitSplitDsequential_278/lstm_834/while/lstm_cell_750/split/split_dim:output:0<sequential_278/lstm_834/while/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_278/lstm_834/while/lstm_cell_750/SigmoidSigmoid:sequential_278/lstm_834/while/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_278/lstm_834/while/lstm_cell_750/Sigmoid_1Sigmoid:sequential_278/lstm_834/while/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_278/lstm_834/while/lstm_cell_750/mulMul9sequential_278/lstm_834/while/lstm_cell_750/Sigmoid_1:y:0+sequential_278_lstm_834_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_278/lstm_834/while/lstm_cell_750/ReluRelu:sequential_278/lstm_834/while/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_278/lstm_834/while/lstm_cell_750/mul_1Mul7sequential_278/lstm_834/while/lstm_cell_750/Sigmoid:y:0>sequential_278/lstm_834/while/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_278/lstm_834/while/lstm_cell_750/add_1AddV23sequential_278/lstm_834/while/lstm_cell_750/mul:z:05sequential_278/lstm_834/while/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_278/lstm_834/while/lstm_cell_750/Sigmoid_2Sigmoid:sequential_278/lstm_834/while/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_278/lstm_834/while/lstm_cell_750/Relu_1Relu5sequential_278/lstm_834/while/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_278/lstm_834/while/lstm_cell_750/mul_2Mul9sequential_278/lstm_834/while/lstm_cell_750/Sigmoid_2:y:0@sequential_278/lstm_834/while/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_278/lstm_834/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_278_lstm_834_while_placeholder_1)sequential_278_lstm_834_while_placeholder5sequential_278/lstm_834/while/lstm_cell_750/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_278/lstm_834/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_278/lstm_834/while/addAddV2)sequential_278_lstm_834_while_placeholder,sequential_278/lstm_834/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_278/lstm_834/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_278/lstm_834/while/add_1AddV2Hsequential_278_lstm_834_while_sequential_278_lstm_834_while_loop_counter.sequential_278/lstm_834/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_278/lstm_834/while/IdentityIdentity'sequential_278/lstm_834/while/add_1:z:0#^sequential_278/lstm_834/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_834/while/Identity_1IdentityNsequential_278_lstm_834_while_sequential_278_lstm_834_while_maximum_iterations#^sequential_278/lstm_834/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_834/while/Identity_2Identity%sequential_278/lstm_834/while/add:z:0#^sequential_278/lstm_834/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_834/while/Identity_3IdentityRsequential_278/lstm_834/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_278/lstm_834/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_834/while/Identity_4Identity5sequential_278/lstm_834/while/lstm_cell_750/mul_2:z:0#^sequential_278/lstm_834/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_278/lstm_834/while/Identity_5Identity5sequential_278/lstm_834/while/lstm_cell_750/add_1:z:0#^sequential_278/lstm_834/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_278/lstm_834/while/NoOpNoOpC^sequential_278/lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOpB^sequential_278/lstm_834/while/lstm_cell_750/MatMul/ReadVariableOpD^sequential_278/lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_278_lstm_834_while_identity/sequential_278/lstm_834/while/Identity:output:0"]
(sequential_278_lstm_834_while_identity_11sequential_278/lstm_834/while/Identity_1:output:0"]
(sequential_278_lstm_834_while_identity_21sequential_278/lstm_834/while/Identity_2:output:0"]
(sequential_278_lstm_834_while_identity_31sequential_278/lstm_834/while/Identity_3:output:0"]
(sequential_278_lstm_834_while_identity_41sequential_278/lstm_834/while/Identity_4:output:0"]
(sequential_278_lstm_834_while_identity_51sequential_278/lstm_834/while/Identity_5:output:0"?
Ksequential_278_lstm_834_while_lstm_cell_750_biasadd_readvariableop_resourceMsequential_278_lstm_834_while_lstm_cell_750_biasadd_readvariableop_resource_0"?
Lsequential_278_lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resourceNsequential_278_lstm_834_while_lstm_cell_750_matmul_1_readvariableop_resource_0"?
Jsequential_278_lstm_834_while_lstm_cell_750_matmul_readvariableop_resourceLsequential_278_lstm_834_while_lstm_cell_750_matmul_readvariableop_resource_0"?
Esequential_278_lstm_834_while_sequential_278_lstm_834_strided_slice_1Gsequential_278_lstm_834_while_sequential_278_lstm_834_strided_slice_1_0"?
?sequential_278_lstm_834_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_834_tensorarrayunstack_tensorlistfromtensor?sequential_278_lstm_834_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_834_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_278/lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOpBsequential_278/lstm_834/while/lstm_cell_750/BiasAdd/ReadVariableOp2?
Asequential_278/lstm_834/while/lstm_cell_750/MatMul/ReadVariableOpAsequential_278/lstm_834/while/lstm_cell_750/MatMul/ReadVariableOp2?
Csequential_278/lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOpCsequential_278/lstm_834/while/lstm_cell_750/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4549235

inputs'
lstm_cell_752_4549153:2('
lstm_cell_752_4549155:
(#
lstm_cell_752_4549157:(
identity??%lstm_cell_752/StatefulPartitionedCall?while;
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
%lstm_cell_752/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_752_4549153lstm_cell_752_4549155lstm_cell_752_4549157*
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4549107n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_752_4549153lstm_cell_752_4549155lstm_cell_752_4549157*
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
while_body_4549166*
condR
while_cond_4549165*K
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
NoOpNoOp&^lstm_cell_752/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_752/StatefulPartitionedCall%lstm_cell_752/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4549309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_750_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_750_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_750_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_750_matmul_readvariableop_resource:	?G
4while_lstm_cell_750_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_750_biasadd_readvariableop_resource:	???*while/lstm_cell_750/BiasAdd/ReadVariableOp?)while/lstm_cell_750/MatMul/ReadVariableOp?+while/lstm_cell_750/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_750/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_750_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_750/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_750_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_750/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_750/addAddV2$while/lstm_cell_750/MatMul:product:0&while/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_750_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_750/BiasAddBiasAddwhile/lstm_cell_750/add:z:02while/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_750/splitSplit,while/lstm_cell_750/split/split_dim:output:0$while/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_750/SigmoidSigmoid"while/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_1Sigmoid"while/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mulMul!while/lstm_cell_750/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_750/ReluRelu"while/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_1Mulwhile/lstm_cell_750/Sigmoid:y:0&while/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/add_1AddV2while/lstm_cell_750/mul:z:0while/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_2Sigmoid"while/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_750/Relu_1Reluwhile/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_2Mul!while/lstm_cell_750/Sigmoid_2:y:0(while/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_750/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_750/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_750/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_750/BiasAdd/ReadVariableOp*^while/lstm_cell_750/MatMul/ReadVariableOp,^while/lstm_cell_750/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_750_biasadd_readvariableop_resource5while_lstm_cell_750_biasadd_readvariableop_resource_0"n
4while_lstm_cell_750_matmul_1_readvariableop_resource6while_lstm_cell_750_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_750_matmul_readvariableop_resource4while_lstm_cell_750_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_750/BiasAdd/ReadVariableOp*while/lstm_cell_750/BiasAdd/ReadVariableOp2V
)while/lstm_cell_750/MatMul/ReadVariableOp)while/lstm_cell_750/MatMul/ReadVariableOp2Z
+while/lstm_cell_750/MatMul_1/ReadVariableOp+while/lstm_cell_750/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4548344

inputs(
lstm_cell_750_4548262:	?(
lstm_cell_750_4548264:	d?$
lstm_cell_750_4548266:	?
identity??%lstm_cell_750/StatefulPartitionedCall?while;
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
%lstm_cell_750/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_750_4548262lstm_cell_750_4548264lstm_cell_750_4548266*
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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4548261n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_750_4548262lstm_cell_750_4548264lstm_cell_750_4548266*
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
while_body_4548275*
condR
while_cond_4548274*K
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
NoOpNoOp&^lstm_cell_750/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_750/StatefulPartitionedCall%lstm_cell_750/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4552982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4552982___redundant_placeholder05
1while_while_cond_4552982___redundant_placeholder15
1while_while_cond_4552982___redundant_placeholder25
1while_while_cond_4552982___redundant_placeholder3
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
while_body_4549990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_751_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_751_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_751_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_751_matmul_readvariableop_resource:	d?G
4while_lstm_cell_751_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_751_biasadd_readvariableop_resource:	???*while/lstm_cell_751/BiasAdd/ReadVariableOp?)while/lstm_cell_751/MatMul/ReadVariableOp?+while/lstm_cell_751/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_751/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_751_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_751/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_751_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_751/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_751/addAddV2$while/lstm_cell_751/MatMul:product:0&while/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_751_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_751/BiasAddBiasAddwhile/lstm_cell_751/add:z:02while/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_751/splitSplit,while/lstm_cell_751/split/split_dim:output:0$while/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_751/SigmoidSigmoid"while/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_1Sigmoid"while/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mulMul!while/lstm_cell_751/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_751/ReluRelu"while/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_1Mulwhile/lstm_cell_751/Sigmoid:y:0&while/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/add_1AddV2while/lstm_cell_751/mul:z:0while/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_2Sigmoid"while/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_751/Relu_1Reluwhile/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_2Mul!while/lstm_cell_751/Sigmoid_2:y:0(while/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_751/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_751/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_751/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_751/BiasAdd/ReadVariableOp*^while/lstm_cell_751/MatMul/ReadVariableOp,^while/lstm_cell_751/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_751_biasadd_readvariableop_resource5while_lstm_cell_751_biasadd_readvariableop_resource_0"n
4while_lstm_cell_751_matmul_1_readvariableop_resource6while_lstm_cell_751_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_751_matmul_readvariableop_resource4while_lstm_cell_751_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_751/BiasAdd/ReadVariableOp*while/lstm_cell_751/BiasAdd/ReadVariableOp2V
)while/lstm_cell_751/MatMul/ReadVariableOp)while/lstm_cell_751/MatMul/ReadVariableOp2Z
+while/lstm_cell_751/MatMul_1/ReadVariableOp+while/lstm_cell_751/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_278_layer_call_fn_4549743
lstm_834_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_834_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_278_layer_call_and_return_conditional_losses_4549718o
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
_user_specified_namelstm_834_input
?
?
while_cond_4548465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4548465___redundant_placeholder05
1while_while_cond_4548465___redundant_placeholder15
1while_while_cond_4548465___redundant_placeholder25
1while_while_cond_4548465___redundant_placeholder3
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
while_cond_4549989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4549989___redundant_placeholder05
1while_while_cond_4549989___redundant_placeholder15
1while_while_cond_4549989___redundant_placeholder25
1while_while_cond_4549989___redundant_placeholder3
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
while_body_4552081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_751_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_751_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_751_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_751_matmul_readvariableop_resource:	d?G
4while_lstm_cell_751_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_751_biasadd_readvariableop_resource:	???*while/lstm_cell_751/BiasAdd/ReadVariableOp?)while/lstm_cell_751/MatMul/ReadVariableOp?+while/lstm_cell_751/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_751/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_751_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_751/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_751_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_751/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_751/addAddV2$while/lstm_cell_751/MatMul:product:0&while/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_751_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_751/BiasAddBiasAddwhile/lstm_cell_751/add:z:02while/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_751/splitSplit,while/lstm_cell_751/split/split_dim:output:0$while/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_751/SigmoidSigmoid"while/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_1Sigmoid"while/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mulMul!while/lstm_cell_751/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_751/ReluRelu"while/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_1Mulwhile/lstm_cell_751/Sigmoid:y:0&while/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/add_1AddV2while/lstm_cell_751/mul:z:0while/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_2Sigmoid"while/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_751/Relu_1Reluwhile/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_2Mul!while/lstm_cell_751/Sigmoid_2:y:0(while/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_751/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_751/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_751/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_751/BiasAdd/ReadVariableOp*^while/lstm_cell_751/MatMul/ReadVariableOp,^while/lstm_cell_751/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_751_biasadd_readvariableop_resource5while_lstm_cell_751_biasadd_readvariableop_resource_0"n
4while_lstm_cell_751_matmul_1_readvariableop_resource6while_lstm_cell_751_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_751_matmul_readvariableop_resource4while_lstm_cell_751_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_751/BiasAdd/ReadVariableOp*while/lstm_cell_751/BiasAdd/ReadVariableOp2V
)while/lstm_cell_751/MatMul/ReadVariableOp)while/lstm_cell_751/MatMul/ReadVariableOp2Z
+while/lstm_cell_751/MatMul_1/ReadVariableOp+while/lstm_cell_751/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4552224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_751_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_751_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_751_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_751_matmul_readvariableop_resource:	d?G
4while_lstm_cell_751_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_751_biasadd_readvariableop_resource:	???*while/lstm_cell_751/BiasAdd/ReadVariableOp?)while/lstm_cell_751/MatMul/ReadVariableOp?+while/lstm_cell_751/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_751/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_751_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_751/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_751_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_751/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_751/addAddV2$while/lstm_cell_751/MatMul:product:0&while/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_751_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_751/BiasAddBiasAddwhile/lstm_cell_751/add:z:02while/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_751/splitSplit,while/lstm_cell_751/split/split_dim:output:0$while/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_751/SigmoidSigmoid"while/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_1Sigmoid"while/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mulMul!while/lstm_cell_751/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_751/ReluRelu"while/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_1Mulwhile/lstm_cell_751/Sigmoid:y:0&while/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/add_1AddV2while/lstm_cell_751/mul:z:0while/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_2Sigmoid"while/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_751/Relu_1Reluwhile/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_2Mul!while/lstm_cell_751/Sigmoid_2:y:0(while/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_751/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_751/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_751/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_751/BiasAdd/ReadVariableOp*^while/lstm_cell_751/MatMul/ReadVariableOp,^while/lstm_cell_751/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_751_biasadd_readvariableop_resource5while_lstm_cell_751_biasadd_readvariableop_resource_0"n
4while_lstm_cell_751_matmul_1_readvariableop_resource6while_lstm_cell_751_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_751_matmul_readvariableop_resource4while_lstm_cell_751_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_751/BiasAdd/ReadVariableOp*while/lstm_cell_751/BiasAdd/ReadVariableOp2V
)while/lstm_cell_751/MatMul/ReadVariableOp)while/lstm_cell_751/MatMul/ReadVariableOp2Z
+while/lstm_cell_751/MatMul_1/ReadVariableOp+while/lstm_cell_751/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4553210

inputs>
,lstm_cell_752_matmul_readvariableop_resource:2(@
.lstm_cell_752_matmul_1_readvariableop_resource:
(;
-lstm_cell_752_biasadd_readvariableop_resource:(
identity??$lstm_cell_752/BiasAdd/ReadVariableOp?#lstm_cell_752/MatMul/ReadVariableOp?%lstm_cell_752/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_752/MatMul/ReadVariableOpReadVariableOp,lstm_cell_752_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_752/MatMulMatMulstrided_slice_2:output:0+lstm_cell_752/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_752/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_752_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_752/MatMul_1MatMulzeros:output:0-lstm_cell_752/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_752/addAddV2lstm_cell_752/MatMul:product:0 lstm_cell_752/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_752/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_752_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_752/BiasAddBiasAddlstm_cell_752/add:z:0,lstm_cell_752/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_752/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_752/splitSplit&lstm_cell_752/split/split_dim:output:0lstm_cell_752/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_752/SigmoidSigmoidlstm_cell_752/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_1Sigmoidlstm_cell_752/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_752/mulMullstm_cell_752/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_752/ReluRelulstm_cell_752/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_1Mullstm_cell_752/Sigmoid:y:0 lstm_cell_752/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_752/add_1AddV2lstm_cell_752/mul:z:0lstm_cell_752/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_752/Sigmoid_2Sigmoidlstm_cell_752/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_752/Relu_1Relulstm_cell_752/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_752/mul_2Mullstm_cell_752/Sigmoid_2:y:0"lstm_cell_752/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_752_matmul_readvariableop_resource.lstm_cell_752_matmul_1_readvariableop_resource-lstm_cell_752_biasadd_readvariableop_resource*
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
while_body_4553126*
condR
while_cond_4553125*K
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
NoOpNoOp%^lstm_cell_752/BiasAdd/ReadVariableOp$^lstm_cell_752/MatMul/ReadVariableOp&^lstm_cell_752/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_752/BiasAdd/ReadVariableOp$lstm_cell_752/BiasAdd/ReadVariableOp2J
#lstm_cell_752/MatMul/ReadVariableOp#lstm_cell_752/MatMul/ReadVariableOp2N
%lstm_cell_752/MatMul_1/ReadVariableOp%lstm_cell_752/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551692
inputs_0?
,lstm_cell_750_matmul_readvariableop_resource:	?A
.lstm_cell_750_matmul_1_readvariableop_resource:	d?<
-lstm_cell_750_biasadd_readvariableop_resource:	?
identity??$lstm_cell_750/BiasAdd/ReadVariableOp?#lstm_cell_750/MatMul/ReadVariableOp?%lstm_cell_750/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_750/MatMul/ReadVariableOpReadVariableOp,lstm_cell_750_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_750/MatMulMatMulstrided_slice_2:output:0+lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_750_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_750/MatMul_1MatMulzeros:output:0-lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_750/addAddV2lstm_cell_750/MatMul:product:0 lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_750_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_750/BiasAddBiasAddlstm_cell_750/add:z:0,lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_750/splitSplit&lstm_cell_750/split/split_dim:output:0lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_750/SigmoidSigmoidlstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_1Sigmoidlstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_750/mulMullstm_cell_750/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_750/ReluRelulstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_1Mullstm_cell_750/Sigmoid:y:0 lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_750/add_1AddV2lstm_cell_750/mul:z:0lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_750/Sigmoid_2Sigmoidlstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_750/Relu_1Relulstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_750/mul_2Mullstm_cell_750/Sigmoid_2:y:0"lstm_cell_750/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_750_matmul_readvariableop_resource.lstm_cell_750_matmul_1_readvariableop_resource-lstm_cell_750_biasadd_readvariableop_resource*
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
while_body_4551608*
condR
while_cond_4551607*K
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
NoOpNoOp%^lstm_cell_750/BiasAdd/ReadVariableOp$^lstm_cell_750/MatMul/ReadVariableOp&^lstm_cell_750/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_750/BiasAdd/ReadVariableOp$lstm_cell_750/BiasAdd/ReadVariableOp2J
#lstm_cell_750/MatMul/ReadVariableOp#lstm_cell_750/MatMul/ReadVariableOp2N
%lstm_cell_750/MatMul_1/ReadVariableOp%lstm_cell_750/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_834_layer_call_fn_4551373
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4548344|
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552165
inputs_0?
,lstm_cell_751_matmul_readvariableop_resource:	d?A
.lstm_cell_751_matmul_1_readvariableop_resource:	2?<
-lstm_cell_751_biasadd_readvariableop_resource:	?
identity??$lstm_cell_751/BiasAdd/ReadVariableOp?#lstm_cell_751/MatMul/ReadVariableOp?%lstm_cell_751/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_751/MatMul/ReadVariableOpReadVariableOp,lstm_cell_751_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_751/MatMulMatMulstrided_slice_2:output:0+lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_751_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_751/MatMul_1MatMulzeros:output:0-lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_751/addAddV2lstm_cell_751/MatMul:product:0 lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_751_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_751/BiasAddBiasAddlstm_cell_751/add:z:0,lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_751/splitSplit&lstm_cell_751/split/split_dim:output:0lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_751/SigmoidSigmoidlstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_1Sigmoidlstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_751/mulMullstm_cell_751/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_751/ReluRelulstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_1Mullstm_cell_751/Sigmoid:y:0 lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_751/add_1AddV2lstm_cell_751/mul:z:0lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_2Sigmoidlstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_751/Relu_1Relulstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_2Mullstm_cell_751/Sigmoid_2:y:0"lstm_cell_751/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_751_matmul_readvariableop_resource.lstm_cell_751_matmul_1_readvariableop_resource-lstm_cell_751_biasadd_readvariableop_resource*
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
while_body_4552081*
condR
while_cond_4552080*K
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
NoOpNoOp%^lstm_cell_751/BiasAdd/ReadVariableOp$^lstm_cell_751/MatMul/ReadVariableOp&^lstm_cell_751/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_751/BiasAdd/ReadVariableOp$lstm_cell_751/BiasAdd/ReadVariableOp2J
#lstm_cell_751/MatMul/ReadVariableOp#lstm_cell_751/MatMul/ReadVariableOp2N
%lstm_cell_751/MatMul_1/ReadVariableOp%lstm_cell_751/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4552510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_751_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_751_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_751_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_751_matmul_readvariableop_resource:	d?G
4while_lstm_cell_751_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_751_biasadd_readvariableop_resource:	???*while/lstm_cell_751/BiasAdd/ReadVariableOp?)while/lstm_cell_751/MatMul/ReadVariableOp?+while/lstm_cell_751/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_751/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_751_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_751/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_751_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_751/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_751/addAddV2$while/lstm_cell_751/MatMul:product:0&while/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_751_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_751/BiasAddBiasAddwhile/lstm_cell_751/add:z:02while/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_751/splitSplit,while/lstm_cell_751/split/split_dim:output:0$while/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_751/SigmoidSigmoid"while/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_1Sigmoid"while/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mulMul!while/lstm_cell_751/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_751/ReluRelu"while/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_1Mulwhile/lstm_cell_751/Sigmoid:y:0&while/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/add_1AddV2while/lstm_cell_751/mul:z:0while/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_751/Sigmoid_2Sigmoid"while/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_751/Relu_1Reluwhile/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_751/mul_2Mul!while/lstm_cell_751/Sigmoid_2:y:0(while/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_751/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_751/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_751/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_751/BiasAdd/ReadVariableOp*^while/lstm_cell_751/MatMul/ReadVariableOp,^while/lstm_cell_751/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_751_biasadd_readvariableop_resource5while_lstm_cell_751_biasadd_readvariableop_resource_0"n
4while_lstm_cell_751_matmul_1_readvariableop_resource6while_lstm_cell_751_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_751_matmul_readvariableop_resource4while_lstm_cell_751_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_751/BiasAdd/ReadVariableOp*while/lstm_cell_751/BiasAdd/ReadVariableOp2V
)while/lstm_cell_751/MatMul/ReadVariableOp)while/lstm_cell_751/MatMul/ReadVariableOp2Z
+while/lstm_cell_751/MatMul_1/ReadVariableOp+while/lstm_cell_751/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_751_layer_call_fn_4553344

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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4548611o
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
?J
?
E__inference_lstm_835_layer_call_and_return_conditional_losses_4550074

inputs?
,lstm_cell_751_matmul_readvariableop_resource:	d?A
.lstm_cell_751_matmul_1_readvariableop_resource:	2?<
-lstm_cell_751_biasadd_readvariableop_resource:	?
identity??$lstm_cell_751/BiasAdd/ReadVariableOp?#lstm_cell_751/MatMul/ReadVariableOp?%lstm_cell_751/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_751/MatMul/ReadVariableOpReadVariableOp,lstm_cell_751_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_751/MatMulMatMulstrided_slice_2:output:0+lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_751_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_751/MatMul_1MatMulzeros:output:0-lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_751/addAddV2lstm_cell_751/MatMul:product:0 lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_751_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_751/BiasAddBiasAddlstm_cell_751/add:z:0,lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_751/splitSplit&lstm_cell_751/split/split_dim:output:0lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_751/SigmoidSigmoidlstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_1Sigmoidlstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_751/mulMullstm_cell_751/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_751/ReluRelulstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_1Mullstm_cell_751/Sigmoid:y:0 lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_751/add_1AddV2lstm_cell_751/mul:z:0lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_2Sigmoidlstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_751/Relu_1Relulstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_2Mullstm_cell_751/Sigmoid_2:y:0"lstm_cell_751/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_751_matmul_readvariableop_resource.lstm_cell_751_matmul_1_readvariableop_resource-lstm_cell_751_biasadd_readvariableop_resource*
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
while_body_4549990*
condR
while_cond_4549989*K
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
NoOpNoOp%^lstm_cell_751/BiasAdd/ReadVariableOp$^lstm_cell_751/MatMul/ReadVariableOp&^lstm_cell_751/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_751/BiasAdd/ReadVariableOp$lstm_cell_751/BiasAdd/ReadVariableOp2J
#lstm_cell_751/MatMul/ReadVariableOp#lstm_cell_751/MatMul/ReadVariableOp2N
%lstm_cell_751/MatMul_1/ReadVariableOp%lstm_cell_751/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_836_while_cond_4550844.
*lstm_836_while_lstm_836_while_loop_counter4
0lstm_836_while_lstm_836_while_maximum_iterations
lstm_836_while_placeholder 
lstm_836_while_placeholder_1 
lstm_836_while_placeholder_2 
lstm_836_while_placeholder_30
,lstm_836_while_less_lstm_836_strided_slice_1G
Clstm_836_while_lstm_836_while_cond_4550844___redundant_placeholder0G
Clstm_836_while_lstm_836_while_cond_4550844___redundant_placeholder1G
Clstm_836_while_lstm_836_while_cond_4550844___redundant_placeholder2G
Clstm_836_while_lstm_836_while_cond_4550844___redundant_placeholder3
lstm_836_while_identity
?
lstm_836/while/LessLesslstm_836_while_placeholder,lstm_836_while_less_lstm_836_strided_slice_1*
T0*
_output_shapes
: ]
lstm_836/while/IdentityIdentitylstm_836/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_836_while_identity lstm_836/while/Identity:output:0*(
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552594

inputs?
,lstm_cell_751_matmul_readvariableop_resource:	d?A
.lstm_cell_751_matmul_1_readvariableop_resource:	2?<
-lstm_cell_751_biasadd_readvariableop_resource:	?
identity??$lstm_cell_751/BiasAdd/ReadVariableOp?#lstm_cell_751/MatMul/ReadVariableOp?%lstm_cell_751/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_751/MatMul/ReadVariableOpReadVariableOp,lstm_cell_751_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_751/MatMulMatMulstrided_slice_2:output:0+lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_751_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_751/MatMul_1MatMulzeros:output:0-lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_751/addAddV2lstm_cell_751/MatMul:product:0 lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_751_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_751/BiasAddBiasAddlstm_cell_751/add:z:0,lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_751/splitSplit&lstm_cell_751/split/split_dim:output:0lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_751/SigmoidSigmoidlstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_1Sigmoidlstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_751/mulMullstm_cell_751/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_751/ReluRelulstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_1Mullstm_cell_751/Sigmoid:y:0 lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_751/add_1AddV2lstm_cell_751/mul:z:0lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_751/Sigmoid_2Sigmoidlstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_751/Relu_1Relulstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_751/mul_2Mullstm_cell_751/Sigmoid_2:y:0"lstm_cell_751/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_751_matmul_readvariableop_resource.lstm_cell_751_matmul_1_readvariableop_resource-lstm_cell_751_biasadd_readvariableop_resource*
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
while_body_4552510*
condR
while_cond_4552509*K
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
NoOpNoOp%^lstm_cell_751/BiasAdd/ReadVariableOp$^lstm_cell_751/MatMul/ReadVariableOp&^lstm_cell_751/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_751/BiasAdd/ReadVariableOp$lstm_cell_751/BiasAdd/ReadVariableOp2J
#lstm_cell_751/MatMul/ReadVariableOp#lstm_cell_751/MatMul/ReadVariableOp2N
%lstm_cell_751/MatMul_1/ReadVariableOp%lstm_cell_751/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4551465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_750_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_750_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_750_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_750_matmul_readvariableop_resource:	?G
4while_lstm_cell_750_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_750_biasadd_readvariableop_resource:	???*while/lstm_cell_750/BiasAdd/ReadVariableOp?)while/lstm_cell_750/MatMul/ReadVariableOp?+while/lstm_cell_750/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_750/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_750_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_750/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_750/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_750/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_750_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_750/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_750/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_750/addAddV2$while/lstm_cell_750/MatMul:product:0&while/lstm_cell_750/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_750/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_750_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_750/BiasAddBiasAddwhile/lstm_cell_750/add:z:02while/lstm_cell_750/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_750/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_750/splitSplit,while/lstm_cell_750/split/split_dim:output:0$while/lstm_cell_750/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_750/SigmoidSigmoid"while/lstm_cell_750/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_1Sigmoid"while/lstm_cell_750/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mulMul!while/lstm_cell_750/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_750/ReluRelu"while/lstm_cell_750/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_1Mulwhile/lstm_cell_750/Sigmoid:y:0&while/lstm_cell_750/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/add_1AddV2while/lstm_cell_750/mul:z:0while/lstm_cell_750/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_750/Sigmoid_2Sigmoid"while/lstm_cell_750/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_750/Relu_1Reluwhile/lstm_cell_750/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_750/mul_2Mul!while/lstm_cell_750/Sigmoid_2:y:0(while/lstm_cell_750/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_750/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_750/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_750/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_750/BiasAdd/ReadVariableOp*^while/lstm_cell_750/MatMul/ReadVariableOp,^while/lstm_cell_750/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_750_biasadd_readvariableop_resource5while_lstm_cell_750_biasadd_readvariableop_resource_0"n
4while_lstm_cell_750_matmul_1_readvariableop_resource6while_lstm_cell_750_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_750_matmul_readvariableop_resource4while_lstm_cell_750_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_750/BiasAdd/ReadVariableOp*while/lstm_cell_750/BiasAdd/ReadVariableOp2V
)while/lstm_cell_750/MatMul/ReadVariableOp)while/lstm_cell_750/MatMul/ReadVariableOp2Z
+while/lstm_cell_750/MatMul_1/ReadVariableOp+while/lstm_cell_750/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_835_while_body_4551133.
*lstm_835_while_lstm_835_while_loop_counter4
0lstm_835_while_lstm_835_while_maximum_iterations
lstm_835_while_placeholder 
lstm_835_while_placeholder_1 
lstm_835_while_placeholder_2 
lstm_835_while_placeholder_3-
)lstm_835_while_lstm_835_strided_slice_1_0i
elstm_835_while_tensorarrayv2read_tensorlistgetitem_lstm_835_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_835_while_lstm_cell_751_matmul_readvariableop_resource_0:	d?R
?lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource_0:	2?M
>lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource_0:	?
lstm_835_while_identity
lstm_835_while_identity_1
lstm_835_while_identity_2
lstm_835_while_identity_3
lstm_835_while_identity_4
lstm_835_while_identity_5+
'lstm_835_while_lstm_835_strided_slice_1g
clstm_835_while_tensorarrayv2read_tensorlistgetitem_lstm_835_tensorarrayunstack_tensorlistfromtensorN
;lstm_835_while_lstm_cell_751_matmul_readvariableop_resource:	d?P
=lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource:	2?K
<lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource:	???3lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp?2lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp?4lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp?
@lstm_835/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_835/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_835_while_tensorarrayv2read_tensorlistgetitem_lstm_835_tensorarrayunstack_tensorlistfromtensor_0lstm_835_while_placeholderIlstm_835/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_835/while/lstm_cell_751/MatMul/ReadVariableOpReadVariableOp=lstm_835_while_lstm_cell_751_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_835/while/lstm_cell_751/MatMulMatMul9lstm_835/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOp?lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_835/while/lstm_cell_751/MatMul_1MatMullstm_835_while_placeholder_2<lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_835/while/lstm_cell_751/addAddV2-lstm_835/while/lstm_cell_751/MatMul:product:0/lstm_835/while/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOp>lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_835/while/lstm_cell_751/BiasAddBiasAdd$lstm_835/while/lstm_cell_751/add:z:0;lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_835/while/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_835/while/lstm_cell_751/splitSplit5lstm_835/while/lstm_cell_751/split/split_dim:output:0-lstm_835/while/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_835/while/lstm_cell_751/SigmoidSigmoid+lstm_835/while/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_835/while/lstm_cell_751/Sigmoid_1Sigmoid+lstm_835/while/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_835/while/lstm_cell_751/mulMul*lstm_835/while/lstm_cell_751/Sigmoid_1:y:0lstm_835_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_835/while/lstm_cell_751/ReluRelu+lstm_835/while/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_835/while/lstm_cell_751/mul_1Mul(lstm_835/while/lstm_cell_751/Sigmoid:y:0/lstm_835/while/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_835/while/lstm_cell_751/add_1AddV2$lstm_835/while/lstm_cell_751/mul:z:0&lstm_835/while/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_835/while/lstm_cell_751/Sigmoid_2Sigmoid+lstm_835/while/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_835/while/lstm_cell_751/Relu_1Relu&lstm_835/while/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_835/while/lstm_cell_751/mul_2Mul*lstm_835/while/lstm_cell_751/Sigmoid_2:y:01lstm_835/while/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_835/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_835_while_placeholder_1lstm_835_while_placeholder&lstm_835/while/lstm_cell_751/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_835/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_835/while/addAddV2lstm_835_while_placeholderlstm_835/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_835/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_835/while/add_1AddV2*lstm_835_while_lstm_835_while_loop_counterlstm_835/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_835/while/IdentityIdentitylstm_835/while/add_1:z:0^lstm_835/while/NoOp*
T0*
_output_shapes
: ?
lstm_835/while/Identity_1Identity0lstm_835_while_lstm_835_while_maximum_iterations^lstm_835/while/NoOp*
T0*
_output_shapes
: t
lstm_835/while/Identity_2Identitylstm_835/while/add:z:0^lstm_835/while/NoOp*
T0*
_output_shapes
: ?
lstm_835/while/Identity_3IdentityClstm_835/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_835/while/NoOp*
T0*
_output_shapes
: ?
lstm_835/while/Identity_4Identity&lstm_835/while/lstm_cell_751/mul_2:z:0^lstm_835/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_835/while/Identity_5Identity&lstm_835/while/lstm_cell_751/add_1:z:0^lstm_835/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_835/while/NoOpNoOp4^lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp3^lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp5^lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_835_while_identity lstm_835/while/Identity:output:0"?
lstm_835_while_identity_1"lstm_835/while/Identity_1:output:0"?
lstm_835_while_identity_2"lstm_835/while/Identity_2:output:0"?
lstm_835_while_identity_3"lstm_835/while/Identity_3:output:0"?
lstm_835_while_identity_4"lstm_835/while/Identity_4:output:0"?
lstm_835_while_identity_5"lstm_835/while/Identity_5:output:0"T
'lstm_835_while_lstm_835_strided_slice_1)lstm_835_while_lstm_835_strided_slice_1_0"~
<lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource>lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource_0"?
=lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource?lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource_0"|
;lstm_835_while_lstm_cell_751_matmul_readvariableop_resource=lstm_835_while_lstm_cell_751_matmul_readvariableop_resource_0"?
clstm_835_while_tensorarrayv2read_tensorlistgetitem_lstm_835_tensorarrayunstack_tensorlistfromtensorelstm_835_while_tensorarrayv2read_tensorlistgetitem_lstm_835_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp3lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp2h
2lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp2lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp2l
4lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp4lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_278_lstm_835_while_body_4547965L
Hsequential_278_lstm_835_while_sequential_278_lstm_835_while_loop_counterR
Nsequential_278_lstm_835_while_sequential_278_lstm_835_while_maximum_iterations-
)sequential_278_lstm_835_while_placeholder/
+sequential_278_lstm_835_while_placeholder_1/
+sequential_278_lstm_835_while_placeholder_2/
+sequential_278_lstm_835_while_placeholder_3K
Gsequential_278_lstm_835_while_sequential_278_lstm_835_strided_slice_1_0?
?sequential_278_lstm_835_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_835_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_278_lstm_835_while_lstm_cell_751_matmul_readvariableop_resource_0:	d?a
Nsequential_278_lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource_0:	2?\
Msequential_278_lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource_0:	?*
&sequential_278_lstm_835_while_identity,
(sequential_278_lstm_835_while_identity_1,
(sequential_278_lstm_835_while_identity_2,
(sequential_278_lstm_835_while_identity_3,
(sequential_278_lstm_835_while_identity_4,
(sequential_278_lstm_835_while_identity_5I
Esequential_278_lstm_835_while_sequential_278_lstm_835_strided_slice_1?
?sequential_278_lstm_835_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_835_tensorarrayunstack_tensorlistfromtensor]
Jsequential_278_lstm_835_while_lstm_cell_751_matmul_readvariableop_resource:	d?_
Lsequential_278_lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource:	2?Z
Ksequential_278_lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource:	???Bsequential_278/lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp?Asequential_278/lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp?Csequential_278/lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp?
Osequential_278/lstm_835/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_278/lstm_835/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_278_lstm_835_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_835_tensorarrayunstack_tensorlistfromtensor_0)sequential_278_lstm_835_while_placeholderXsequential_278/lstm_835/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_278/lstm_835/while/lstm_cell_751/MatMul/ReadVariableOpReadVariableOpLsequential_278_lstm_835_while_lstm_cell_751_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_278/lstm_835/while/lstm_cell_751/MatMulMatMulHsequential_278/lstm_835/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_278/lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_278/lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOpReadVariableOpNsequential_278_lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_278/lstm_835/while/lstm_cell_751/MatMul_1MatMul+sequential_278_lstm_835_while_placeholder_2Ksequential_278/lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_278/lstm_835/while/lstm_cell_751/addAddV2<sequential_278/lstm_835/while/lstm_cell_751/MatMul:product:0>sequential_278/lstm_835/while/lstm_cell_751/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_278/lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOpReadVariableOpMsequential_278_lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_278/lstm_835/while/lstm_cell_751/BiasAddBiasAdd3sequential_278/lstm_835/while/lstm_cell_751/add:z:0Jsequential_278/lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_278/lstm_835/while/lstm_cell_751/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_278/lstm_835/while/lstm_cell_751/splitSplitDsequential_278/lstm_835/while/lstm_cell_751/split/split_dim:output:0<sequential_278/lstm_835/while/lstm_cell_751/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_278/lstm_835/while/lstm_cell_751/SigmoidSigmoid:sequential_278/lstm_835/while/lstm_cell_751/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_278/lstm_835/while/lstm_cell_751/Sigmoid_1Sigmoid:sequential_278/lstm_835/while/lstm_cell_751/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_278/lstm_835/while/lstm_cell_751/mulMul9sequential_278/lstm_835/while/lstm_cell_751/Sigmoid_1:y:0+sequential_278_lstm_835_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_278/lstm_835/while/lstm_cell_751/ReluRelu:sequential_278/lstm_835/while/lstm_cell_751/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_278/lstm_835/while/lstm_cell_751/mul_1Mul7sequential_278/lstm_835/while/lstm_cell_751/Sigmoid:y:0>sequential_278/lstm_835/while/lstm_cell_751/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_278/lstm_835/while/lstm_cell_751/add_1AddV23sequential_278/lstm_835/while/lstm_cell_751/mul:z:05sequential_278/lstm_835/while/lstm_cell_751/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_278/lstm_835/while/lstm_cell_751/Sigmoid_2Sigmoid:sequential_278/lstm_835/while/lstm_cell_751/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_278/lstm_835/while/lstm_cell_751/Relu_1Relu5sequential_278/lstm_835/while/lstm_cell_751/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_278/lstm_835/while/lstm_cell_751/mul_2Mul9sequential_278/lstm_835/while/lstm_cell_751/Sigmoid_2:y:0@sequential_278/lstm_835/while/lstm_cell_751/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_278/lstm_835/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_278_lstm_835_while_placeholder_1)sequential_278_lstm_835_while_placeholder5sequential_278/lstm_835/while/lstm_cell_751/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_278/lstm_835/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_278/lstm_835/while/addAddV2)sequential_278_lstm_835_while_placeholder,sequential_278/lstm_835/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_278/lstm_835/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_278/lstm_835/while/add_1AddV2Hsequential_278_lstm_835_while_sequential_278_lstm_835_while_loop_counter.sequential_278/lstm_835/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_278/lstm_835/while/IdentityIdentity'sequential_278/lstm_835/while/add_1:z:0#^sequential_278/lstm_835/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_835/while/Identity_1IdentityNsequential_278_lstm_835_while_sequential_278_lstm_835_while_maximum_iterations#^sequential_278/lstm_835/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_835/while/Identity_2Identity%sequential_278/lstm_835/while/add:z:0#^sequential_278/lstm_835/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_835/while/Identity_3IdentityRsequential_278/lstm_835/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_278/lstm_835/while/NoOp*
T0*
_output_shapes
: ?
(sequential_278/lstm_835/while/Identity_4Identity5sequential_278/lstm_835/while/lstm_cell_751/mul_2:z:0#^sequential_278/lstm_835/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_278/lstm_835/while/Identity_5Identity5sequential_278/lstm_835/while/lstm_cell_751/add_1:z:0#^sequential_278/lstm_835/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_278/lstm_835/while/NoOpNoOpC^sequential_278/lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOpB^sequential_278/lstm_835/while/lstm_cell_751/MatMul/ReadVariableOpD^sequential_278/lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_278_lstm_835_while_identity/sequential_278/lstm_835/while/Identity:output:0"]
(sequential_278_lstm_835_while_identity_11sequential_278/lstm_835/while/Identity_1:output:0"]
(sequential_278_lstm_835_while_identity_21sequential_278/lstm_835/while/Identity_2:output:0"]
(sequential_278_lstm_835_while_identity_31sequential_278/lstm_835/while/Identity_3:output:0"]
(sequential_278_lstm_835_while_identity_41sequential_278/lstm_835/while/Identity_4:output:0"]
(sequential_278_lstm_835_while_identity_51sequential_278/lstm_835/while/Identity_5:output:0"?
Ksequential_278_lstm_835_while_lstm_cell_751_biasadd_readvariableop_resourceMsequential_278_lstm_835_while_lstm_cell_751_biasadd_readvariableop_resource_0"?
Lsequential_278_lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resourceNsequential_278_lstm_835_while_lstm_cell_751_matmul_1_readvariableop_resource_0"?
Jsequential_278_lstm_835_while_lstm_cell_751_matmul_readvariableop_resourceLsequential_278_lstm_835_while_lstm_cell_751_matmul_readvariableop_resource_0"?
Esequential_278_lstm_835_while_sequential_278_lstm_835_strided_slice_1Gsequential_278_lstm_835_while_sequential_278_lstm_835_strided_slice_1_0"?
?sequential_278_lstm_835_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_835_tensorarrayunstack_tensorlistfromtensor?sequential_278_lstm_835_while_tensorarrayv2read_tensorlistgetitem_sequential_278_lstm_835_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_278/lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOpBsequential_278/lstm_835/while/lstm_cell_751/BiasAdd/ReadVariableOp2?
Asequential_278/lstm_835/while/lstm_cell_751/MatMul/ReadVariableOpAsequential_278/lstm_835/while/lstm_cell_751/MatMul/ReadVariableOp2?
Csequential_278/lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOpCsequential_278/lstm_835/while/lstm_cell_751/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_834_input;
 serving_default_lstm_834_input:0?????????=
	dense_2780
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
2dense_278/kernel
:2dense_278/bias
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
0:.	?2lstm_834/lstm_cell_834/kernel
::8	d?2'lstm_834/lstm_cell_834/recurrent_kernel
*:(?2lstm_834/lstm_cell_834/bias
0:.	d?2lstm_835/lstm_cell_835/kernel
::8	2?2'lstm_835/lstm_cell_835/recurrent_kernel
*:(?2lstm_835/lstm_cell_835/bias
/:-2(2lstm_836/lstm_cell_836/kernel
9:7
(2'lstm_836/lstm_cell_836/recurrent_kernel
):'(2lstm_836/lstm_cell_836/bias
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
2Adam/dense_278/kernel/m
!:2Adam/dense_278/bias/m
5:3	?2$Adam/lstm_834/lstm_cell_834/kernel/m
?:=	d?2.Adam/lstm_834/lstm_cell_834/recurrent_kernel/m
/:-?2"Adam/lstm_834/lstm_cell_834/bias/m
5:3	d?2$Adam/lstm_835/lstm_cell_835/kernel/m
?:=	2?2.Adam/lstm_835/lstm_cell_835/recurrent_kernel/m
/:-?2"Adam/lstm_835/lstm_cell_835/bias/m
4:22(2$Adam/lstm_836/lstm_cell_836/kernel/m
>:<
(2.Adam/lstm_836/lstm_cell_836/recurrent_kernel/m
.:,(2"Adam/lstm_836/lstm_cell_836/bias/m
':%
2Adam/dense_278/kernel/v
!:2Adam/dense_278/bias/v
5:3	?2$Adam/lstm_834/lstm_cell_834/kernel/v
?:=	d?2.Adam/lstm_834/lstm_cell_834/recurrent_kernel/v
/:-?2"Adam/lstm_834/lstm_cell_834/bias/v
5:3	d?2$Adam/lstm_835/lstm_cell_835/kernel/v
?:=	2?2.Adam/lstm_835/lstm_cell_835/recurrent_kernel/v
/:-?2"Adam/lstm_835/lstm_cell_835/bias/v
4:22(2$Adam/lstm_836/lstm_cell_836/kernel/v
>:<
(2.Adam/lstm_836/lstm_cell_836/recurrent_kernel/v
.:,(2"Adam/lstm_836/lstm_cell_836/bias/v
?2?
0__inference_sequential_278_layer_call_fn_4549743
0__inference_sequential_278_layer_call_fn_4550481
0__inference_sequential_278_layer_call_fn_4550508
0__inference_sequential_278_layer_call_fn_4550359?
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
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550935
K__inference_sequential_278_layer_call_and_return_conditional_losses_4551362
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550389
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550419?
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
"__inference__wrapped_model_4548194lstm_834_input"?
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
*__inference_lstm_834_layer_call_fn_4551373
*__inference_lstm_834_layer_call_fn_4551384
*__inference_lstm_834_layer_call_fn_4551395
*__inference_lstm_834_layer_call_fn_4551406?
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551549
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551692
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551835
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551978?
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
*__inference_lstm_835_layer_call_fn_4551989
*__inference_lstm_835_layer_call_fn_4552000
*__inference_lstm_835_layer_call_fn_4552011
*__inference_lstm_835_layer_call_fn_4552022?
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552165
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552308
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552451
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552594?
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
*__inference_lstm_836_layer_call_fn_4552605
*__inference_lstm_836_layer_call_fn_4552616
*__inference_lstm_836_layer_call_fn_4552627
*__inference_lstm_836_layer_call_fn_4552638?
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4552781
E__inference_lstm_836_layer_call_and_return_conditional_losses_4552924
E__inference_lstm_836_layer_call_and_return_conditional_losses_4553067
E__inference_lstm_836_layer_call_and_return_conditional_losses_4553210?
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
+__inference_dense_278_layer_call_fn_4553219?
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
F__inference_dense_278_layer_call_and_return_conditional_losses_4553229?
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
%__inference_signature_wrapper_4550454lstm_834_input"?
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
/__inference_lstm_cell_750_layer_call_fn_4553246
/__inference_lstm_cell_750_layer_call_fn_4553263?
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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4553295
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4553327?
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
/__inference_lstm_cell_751_layer_call_fn_4553344
/__inference_lstm_cell_751_layer_call_fn_4553361?
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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4553393
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4553425?
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
/__inference_lstm_cell_752_layer_call_fn_4553442
/__inference_lstm_cell_752_layer_call_fn_4553459?
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4553491
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4553523?
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
"__inference__wrapped_model_4548194?-./012345!";?8
1?.
,?)
lstm_834_input?????????
? "5?2
0
	dense_278#? 
	dense_278??????????
F__inference_dense_278_layer_call_and_return_conditional_losses_4553229\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_278_layer_call_fn_4553219O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551549?-./O?L
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551692?-./O?L
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551835q-./??<
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
E__inference_lstm_834_layer_call_and_return_conditional_losses_4551978q-./??<
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
*__inference_lstm_834_layer_call_fn_4551373}-./O?L
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
*__inference_lstm_834_layer_call_fn_4551384}-./O?L
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
*__inference_lstm_834_layer_call_fn_4551395d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_834_layer_call_fn_4551406d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552165?012O?L
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552308?012O?L
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552451q012??<
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
E__inference_lstm_835_layer_call_and_return_conditional_losses_4552594q012??<
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
*__inference_lstm_835_layer_call_fn_4551989}012O?L
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
*__inference_lstm_835_layer_call_fn_4552000}012O?L
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
*__inference_lstm_835_layer_call_fn_4552011d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_835_layer_call_fn_4552022d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_836_layer_call_and_return_conditional_losses_4552781}345O?L
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4552924}345O?L
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4553067m345??<
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
E__inference_lstm_836_layer_call_and_return_conditional_losses_4553210m345??<
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
*__inference_lstm_836_layer_call_fn_4552605p345O?L
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
*__inference_lstm_836_layer_call_fn_4552616p345O?L
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
*__inference_lstm_836_layer_call_fn_4552627`345??<
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
*__inference_lstm_836_layer_call_fn_4552638`345??<
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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4553295?-./??}
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
J__inference_lstm_cell_750_layer_call_and_return_conditional_losses_4553327?-./??}
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
/__inference_lstm_cell_750_layer_call_fn_4553246?-./??}
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
/__inference_lstm_cell_750_layer_call_fn_4553263?-./??}
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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4553393?012??}
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
J__inference_lstm_cell_751_layer_call_and_return_conditional_losses_4553425?012??}
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
/__inference_lstm_cell_751_layer_call_fn_4553344?012??}
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
/__inference_lstm_cell_751_layer_call_fn_4553361?012??}
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4553491?345??}
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
J__inference_lstm_cell_752_layer_call_and_return_conditional_losses_4553523?345??}
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
/__inference_lstm_cell_752_layer_call_fn_4553442?345??}
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
/__inference_lstm_cell_752_layer_call_fn_4553459?345??}
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
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550389y-./012345!"C?@
9?6
,?)
lstm_834_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550419y-./012345!"C?@
9?6
,?)
lstm_834_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_278_layer_call_and_return_conditional_losses_4550935q-./012345!";?8
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
K__inference_sequential_278_layer_call_and_return_conditional_losses_4551362q-./012345!";?8
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
0__inference_sequential_278_layer_call_fn_4549743l-./012345!"C?@
9?6
,?)
lstm_834_input?????????
p 

 
? "???????????
0__inference_sequential_278_layer_call_fn_4550359l-./012345!"C?@
9?6
,?)
lstm_834_input?????????
p

 
? "???????????
0__inference_sequential_278_layer_call_fn_4550481d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_278_layer_call_fn_4550508d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4550454?-./012345!"M?J
? 
C?@
>
lstm_834_input,?)
lstm_834_input?????????"5?2
0
	dense_278#? 
	dense_278?????????