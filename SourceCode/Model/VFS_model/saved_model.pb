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
dense_286/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_286/kernel
u
$dense_286/kernel/Read/ReadVariableOpReadVariableOpdense_286/kernel*
_output_shapes

:
*
dtype0
t
dense_286/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_286/bias
m
"dense_286/bias/Read/ReadVariableOpReadVariableOpdense_286/bias*
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
lstm_858/lstm_cell_858/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_858/lstm_cell_858/kernel
?
1lstm_858/lstm_cell_858/kernel/Read/ReadVariableOpReadVariableOplstm_858/lstm_cell_858/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_858/lstm_cell_858/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_858/lstm_cell_858/recurrent_kernel
?
;lstm_858/lstm_cell_858/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_858/lstm_cell_858/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_858/lstm_cell_858/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_858/lstm_cell_858/bias
?
/lstm_858/lstm_cell_858/bias/Read/ReadVariableOpReadVariableOplstm_858/lstm_cell_858/bias*
_output_shapes	
:?*
dtype0
?
lstm_859/lstm_cell_859/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_859/lstm_cell_859/kernel
?
1lstm_859/lstm_cell_859/kernel/Read/ReadVariableOpReadVariableOplstm_859/lstm_cell_859/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_859/lstm_cell_859/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_859/lstm_cell_859/recurrent_kernel
?
;lstm_859/lstm_cell_859/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_859/lstm_cell_859/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_859/lstm_cell_859/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_859/lstm_cell_859/bias
?
/lstm_859/lstm_cell_859/bias/Read/ReadVariableOpReadVariableOplstm_859/lstm_cell_859/bias*
_output_shapes	
:?*
dtype0
?
lstm_860/lstm_cell_860/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_860/lstm_cell_860/kernel
?
1lstm_860/lstm_cell_860/kernel/Read/ReadVariableOpReadVariableOplstm_860/lstm_cell_860/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_860/lstm_cell_860/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_860/lstm_cell_860/recurrent_kernel
?
;lstm_860/lstm_cell_860/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_860/lstm_cell_860/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_860/lstm_cell_860/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_860/lstm_cell_860/bias
?
/lstm_860/lstm_cell_860/bias/Read/ReadVariableOpReadVariableOplstm_860/lstm_cell_860/bias*
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
Adam/dense_286/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_286/kernel/m
?
+Adam/dense_286/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_286/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_286/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_286/bias/m
{
)Adam/dense_286/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_286/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_858/lstm_cell_858/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_858/lstm_cell_858/kernel/m
?
8Adam/lstm_858/lstm_cell_858/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_858/lstm_cell_858/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_858/lstm_cell_858/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_858/lstm_cell_858/recurrent_kernel/m
?
BAdam/lstm_858/lstm_cell_858/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_858/lstm_cell_858/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_858/lstm_cell_858/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_858/lstm_cell_858/bias/m
?
6Adam/lstm_858/lstm_cell_858/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_858/lstm_cell_858/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_859/lstm_cell_859/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_859/lstm_cell_859/kernel/m
?
8Adam/lstm_859/lstm_cell_859/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_859/lstm_cell_859/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_859/lstm_cell_859/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_859/lstm_cell_859/recurrent_kernel/m
?
BAdam/lstm_859/lstm_cell_859/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_859/lstm_cell_859/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_859/lstm_cell_859/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_859/lstm_cell_859/bias/m
?
6Adam/lstm_859/lstm_cell_859/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_859/lstm_cell_859/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_860/lstm_cell_860/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_860/lstm_cell_860/kernel/m
?
8Adam/lstm_860/lstm_cell_860/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_860/lstm_cell_860/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_860/lstm_cell_860/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_860/lstm_cell_860/recurrent_kernel/m
?
BAdam/lstm_860/lstm_cell_860/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_860/lstm_cell_860/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_860/lstm_cell_860/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_860/lstm_cell_860/bias/m
?
6Adam/lstm_860/lstm_cell_860/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_860/lstm_cell_860/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_286/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_286/kernel/v
?
+Adam/dense_286/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_286/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_286/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_286/bias/v
{
)Adam/dense_286/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_286/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_858/lstm_cell_858/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_858/lstm_cell_858/kernel/v
?
8Adam/lstm_858/lstm_cell_858/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_858/lstm_cell_858/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_858/lstm_cell_858/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_858/lstm_cell_858/recurrent_kernel/v
?
BAdam/lstm_858/lstm_cell_858/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_858/lstm_cell_858/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_858/lstm_cell_858/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_858/lstm_cell_858/bias/v
?
6Adam/lstm_858/lstm_cell_858/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_858/lstm_cell_858/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_859/lstm_cell_859/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_859/lstm_cell_859/kernel/v
?
8Adam/lstm_859/lstm_cell_859/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_859/lstm_cell_859/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_859/lstm_cell_859/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_859/lstm_cell_859/recurrent_kernel/v
?
BAdam/lstm_859/lstm_cell_859/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_859/lstm_cell_859/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_859/lstm_cell_859/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_859/lstm_cell_859/bias/v
?
6Adam/lstm_859/lstm_cell_859/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_859/lstm_cell_859/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_860/lstm_cell_860/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_860/lstm_cell_860/kernel/v
?
8Adam/lstm_860/lstm_cell_860/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_860/lstm_cell_860/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_860/lstm_cell_860/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_860/lstm_cell_860/recurrent_kernel/v
?
BAdam/lstm_860/lstm_cell_860/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_860/lstm_cell_860/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_860/lstm_cell_860/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_860/lstm_cell_860/bias/v
?
6Adam/lstm_860/lstm_cell_860/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_860/lstm_cell_860/bias/v*
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
VARIABLE_VALUEdense_286/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_286/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_858/lstm_cell_858/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_858/lstm_cell_858/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_858/lstm_cell_858/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_859/lstm_cell_859/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_859/lstm_cell_859/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_859/lstm_cell_859/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_860/lstm_cell_860/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_860/lstm_cell_860/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_860/lstm_cell_860/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_286/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_286/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_858/lstm_cell_858/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_858/lstm_cell_858/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_858/lstm_cell_858/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_859/lstm_cell_859/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_859/lstm_cell_859/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_859/lstm_cell_859/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_860/lstm_cell_860/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_860/lstm_cell_860/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_860/lstm_cell_860/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_286/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_286/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_858/lstm_cell_858/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_858/lstm_cell_858/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_858/lstm_cell_858/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_859/lstm_cell_859/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_859/lstm_cell_859/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_859/lstm_cell_859/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_860/lstm_cell_860/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_860/lstm_cell_860/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_860/lstm_cell_860/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_858_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_858_inputlstm_858/lstm_cell_858/kernel'lstm_858/lstm_cell_858/recurrent_kernellstm_858/lstm_cell_858/biaslstm_859/lstm_cell_859/kernel'lstm_859/lstm_cell_859/recurrent_kernellstm_859/lstm_cell_859/biaslstm_860/lstm_cell_860/kernel'lstm_860/lstm_cell_860/recurrent_kernellstm_860/lstm_cell_860/biasdense_286/kerneldense_286/bias*
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
%__inference_signature_wrapper_4586631
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_286/kernel/Read/ReadVariableOp"dense_286/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_858/lstm_cell_858/kernel/Read/ReadVariableOp;lstm_858/lstm_cell_858/recurrent_kernel/Read/ReadVariableOp/lstm_858/lstm_cell_858/bias/Read/ReadVariableOp1lstm_859/lstm_cell_859/kernel/Read/ReadVariableOp;lstm_859/lstm_cell_859/recurrent_kernel/Read/ReadVariableOp/lstm_859/lstm_cell_859/bias/Read/ReadVariableOp1lstm_860/lstm_cell_860/kernel/Read/ReadVariableOp;lstm_860/lstm_cell_860/recurrent_kernel/Read/ReadVariableOp/lstm_860/lstm_cell_860/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_286/kernel/m/Read/ReadVariableOp)Adam/dense_286/bias/m/Read/ReadVariableOp8Adam/lstm_858/lstm_cell_858/kernel/m/Read/ReadVariableOpBAdam/lstm_858/lstm_cell_858/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_858/lstm_cell_858/bias/m/Read/ReadVariableOp8Adam/lstm_859/lstm_cell_859/kernel/m/Read/ReadVariableOpBAdam/lstm_859/lstm_cell_859/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_859/lstm_cell_859/bias/m/Read/ReadVariableOp8Adam/lstm_860/lstm_cell_860/kernel/m/Read/ReadVariableOpBAdam/lstm_860/lstm_cell_860/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_860/lstm_cell_860/bias/m/Read/ReadVariableOp+Adam/dense_286/kernel/v/Read/ReadVariableOp)Adam/dense_286/bias/v/Read/ReadVariableOp8Adam/lstm_858/lstm_cell_858/kernel/v/Read/ReadVariableOpBAdam/lstm_858/lstm_cell_858/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_858/lstm_cell_858/bias/v/Read/ReadVariableOp8Adam/lstm_859/lstm_cell_859/kernel/v/Read/ReadVariableOpBAdam/lstm_859/lstm_cell_859/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_859/lstm_cell_859/bias/v/Read/ReadVariableOp8Adam/lstm_860/lstm_cell_860/kernel/v/Read/ReadVariableOpBAdam/lstm_860/lstm_cell_860/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_860/lstm_cell_860/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4589843
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_286/kerneldense_286/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_858/lstm_cell_858/kernel'lstm_858/lstm_cell_858/recurrent_kernellstm_858/lstm_cell_858/biaslstm_859/lstm_cell_859/kernel'lstm_859/lstm_cell_859/recurrent_kernellstm_859/lstm_cell_859/biaslstm_860/lstm_cell_860/kernel'lstm_860/lstm_cell_860/recurrent_kernellstm_860/lstm_cell_860/biastotalcountAdam/dense_286/kernel/mAdam/dense_286/bias/m$Adam/lstm_858/lstm_cell_858/kernel/m.Adam/lstm_858/lstm_cell_858/recurrent_kernel/m"Adam/lstm_858/lstm_cell_858/bias/m$Adam/lstm_859/lstm_cell_859/kernel/m.Adam/lstm_859/lstm_cell_859/recurrent_kernel/m"Adam/lstm_859/lstm_cell_859/bias/m$Adam/lstm_860/lstm_cell_860/kernel/m.Adam/lstm_860/lstm_cell_860/recurrent_kernel/m"Adam/lstm_860/lstm_cell_860/bias/mAdam/dense_286/kernel/vAdam/dense_286/bias/v$Adam/lstm_858/lstm_cell_858/kernel/v.Adam/lstm_858/lstm_cell_858/recurrent_kernel/v"Adam/lstm_858/lstm_cell_858/bias/v$Adam/lstm_859/lstm_cell_859/kernel/v.Adam/lstm_859/lstm_cell_859/recurrent_kernel/v"Adam/lstm_859/lstm_cell_859/bias/v$Adam/lstm_860/lstm_cell_860/kernel/v.Adam/lstm_860/lstm_cell_860/recurrent_kernel/v"Adam/lstm_860/lstm_cell_860/bias/v*4
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
#__inference__traced_restore_4589973??+
?C
?

lstm_858_while_body_4586744.
*lstm_858_while_lstm_858_while_loop_counter4
0lstm_858_while_lstm_858_while_maximum_iterations
lstm_858_while_placeholder 
lstm_858_while_placeholder_1 
lstm_858_while_placeholder_2 
lstm_858_while_placeholder_3-
)lstm_858_while_lstm_858_strided_slice_1_0i
elstm_858_while_tensorarrayv2read_tensorlistgetitem_lstm_858_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_858_while_lstm_cell_756_matmul_readvariableop_resource_0:	?R
?lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource_0:	d?M
>lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource_0:	?
lstm_858_while_identity
lstm_858_while_identity_1
lstm_858_while_identity_2
lstm_858_while_identity_3
lstm_858_while_identity_4
lstm_858_while_identity_5+
'lstm_858_while_lstm_858_strided_slice_1g
clstm_858_while_tensorarrayv2read_tensorlistgetitem_lstm_858_tensorarrayunstack_tensorlistfromtensorN
;lstm_858_while_lstm_cell_756_matmul_readvariableop_resource:	?P
=lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource:	d?K
<lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource:	???3lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp?2lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp?4lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp?
@lstm_858/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_858/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_858_while_tensorarrayv2read_tensorlistgetitem_lstm_858_tensorarrayunstack_tensorlistfromtensor_0lstm_858_while_placeholderIlstm_858/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_858/while/lstm_cell_756/MatMul/ReadVariableOpReadVariableOp=lstm_858_while_lstm_cell_756_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_858/while/lstm_cell_756/MatMulMatMul9lstm_858/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp?lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_858/while/lstm_cell_756/MatMul_1MatMullstm_858_while_placeholder_2<lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_858/while/lstm_cell_756/addAddV2-lstm_858/while/lstm_cell_756/MatMul:product:0/lstm_858/while/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp>lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_858/while/lstm_cell_756/BiasAddBiasAdd$lstm_858/while/lstm_cell_756/add:z:0;lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_858/while/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_858/while/lstm_cell_756/splitSplit5lstm_858/while/lstm_cell_756/split/split_dim:output:0-lstm_858/while/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_858/while/lstm_cell_756/SigmoidSigmoid+lstm_858/while/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_858/while/lstm_cell_756/Sigmoid_1Sigmoid+lstm_858/while/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_858/while/lstm_cell_756/mulMul*lstm_858/while/lstm_cell_756/Sigmoid_1:y:0lstm_858_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_858/while/lstm_cell_756/ReluRelu+lstm_858/while/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_858/while/lstm_cell_756/mul_1Mul(lstm_858/while/lstm_cell_756/Sigmoid:y:0/lstm_858/while/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_858/while/lstm_cell_756/add_1AddV2$lstm_858/while/lstm_cell_756/mul:z:0&lstm_858/while/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_858/while/lstm_cell_756/Sigmoid_2Sigmoid+lstm_858/while/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_858/while/lstm_cell_756/Relu_1Relu&lstm_858/while/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_858/while/lstm_cell_756/mul_2Mul*lstm_858/while/lstm_cell_756/Sigmoid_2:y:01lstm_858/while/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_858/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_858_while_placeholder_1lstm_858_while_placeholder&lstm_858/while/lstm_cell_756/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_858/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_858/while/addAddV2lstm_858_while_placeholderlstm_858/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_858/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_858/while/add_1AddV2*lstm_858_while_lstm_858_while_loop_counterlstm_858/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_858/while/IdentityIdentitylstm_858/while/add_1:z:0^lstm_858/while/NoOp*
T0*
_output_shapes
: ?
lstm_858/while/Identity_1Identity0lstm_858_while_lstm_858_while_maximum_iterations^lstm_858/while/NoOp*
T0*
_output_shapes
: t
lstm_858/while/Identity_2Identitylstm_858/while/add:z:0^lstm_858/while/NoOp*
T0*
_output_shapes
: ?
lstm_858/while/Identity_3IdentityClstm_858/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_858/while/NoOp*
T0*
_output_shapes
: ?
lstm_858/while/Identity_4Identity&lstm_858/while/lstm_cell_756/mul_2:z:0^lstm_858/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_858/while/Identity_5Identity&lstm_858/while/lstm_cell_756/add_1:z:0^lstm_858/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_858/while/NoOpNoOp4^lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp3^lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp5^lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_858_while_identity lstm_858/while/Identity:output:0"?
lstm_858_while_identity_1"lstm_858/while/Identity_1:output:0"?
lstm_858_while_identity_2"lstm_858/while/Identity_2:output:0"?
lstm_858_while_identity_3"lstm_858/while/Identity_3:output:0"?
lstm_858_while_identity_4"lstm_858/while/Identity_4:output:0"?
lstm_858_while_identity_5"lstm_858/while/Identity_5:output:0"T
'lstm_858_while_lstm_858_strided_slice_1)lstm_858_while_lstm_858_strided_slice_1_0"~
<lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource>lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource_0"?
=lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource?lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource_0"|
;lstm_858_while_lstm_cell_756_matmul_readvariableop_resource=lstm_858_while_lstm_cell_756_matmul_readvariableop_resource_0"?
clstm_858_while_tensorarrayv2read_tensorlistgetitem_lstm_858_tensorarrayunstack_tensorlistfromtensorelstm_858_while_tensorarrayv2read_tensorlistgetitem_lstm_858_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp3lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp2h
2lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp2lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp2l
4lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp4lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4588400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4588400___redundant_placeholder05
1while_while_cond_4588400___redundant_placeholder15
1while_while_cond_4588400___redundant_placeholder25
1while_while_cond_4588400___redundant_placeholder3
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
/__inference_lstm_cell_756_layer_call_fn_4589423

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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4584438o
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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4589602

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
while_cond_4588257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4588257___redundant_placeholder05
1while_while_cond_4588257___redundant_placeholder15
1while_while_cond_4588257___redundant_placeholder25
1while_while_cond_4588257___redundant_placeholder3
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
while_body_4587785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_756_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_756_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_756_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_756_matmul_readvariableop_resource:	?G
4while_lstm_cell_756_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_756_biasadd_readvariableop_resource:	???*while/lstm_cell_756/BiasAdd/ReadVariableOp?)while/lstm_cell_756/MatMul/ReadVariableOp?+while/lstm_cell_756/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_756/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_756_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_756/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_756_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_756/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_756/addAddV2$while/lstm_cell_756/MatMul:product:0&while/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_756_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_756/BiasAddBiasAddwhile/lstm_cell_756/add:z:02while/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_756/splitSplit,while/lstm_cell_756/split/split_dim:output:0$while/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_756/SigmoidSigmoid"while/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_1Sigmoid"while/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mulMul!while/lstm_cell_756/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_756/ReluRelu"while/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_1Mulwhile/lstm_cell_756/Sigmoid:y:0&while/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/add_1AddV2while/lstm_cell_756/mul:z:0while/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_2Sigmoid"while/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_756/Relu_1Reluwhile/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_2Mul!while/lstm_cell_756/Sigmoid_2:y:0(while/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_756/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_756/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_756/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_756/BiasAdd/ReadVariableOp*^while/lstm_cell_756/MatMul/ReadVariableOp,^while/lstm_cell_756/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_756_biasadd_readvariableop_resource5while_lstm_cell_756_biasadd_readvariableop_resource_0"n
4while_lstm_cell_756_matmul_1_readvariableop_resource6while_lstm_cell_756_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_756_matmul_readvariableop_resource4while_lstm_cell_756_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_756/BiasAdd/ReadVariableOp*while/lstm_cell_756/BiasAdd/ReadVariableOp2V
)while/lstm_cell_756/MatMul/ReadVariableOp)while/lstm_cell_756/MatMul/ReadVariableOp2Z
+while/lstm_cell_756/MatMul_1/ReadVariableOp+while/lstm_cell_756/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4586566
lstm_858_input#
lstm_858_4586539:	?#
lstm_858_4586541:	d?
lstm_858_4586543:	?#
lstm_859_4586546:	d?#
lstm_859_4586548:	2?
lstm_859_4586550:	?"
lstm_860_4586553:2("
lstm_860_4586555:
(
lstm_860_4586557:(#
dense_286_4586560:

dense_286_4586562:
identity??!dense_286/StatefulPartitionedCall? lstm_858/StatefulPartitionedCall? lstm_859/StatefulPartitionedCall? lstm_860/StatefulPartitionedCall?
 lstm_858/StatefulPartitionedCallStatefulPartitionedCalllstm_858_inputlstm_858_4586539lstm_858_4586541lstm_858_4586543*
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4585570?
 lstm_859/StatefulPartitionedCallStatefulPartitionedCall)lstm_858/StatefulPartitionedCall:output:0lstm_859_4586546lstm_859_4586548lstm_859_4586550*
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4585720?
 lstm_860/StatefulPartitionedCallStatefulPartitionedCall)lstm_859/StatefulPartitionedCall:output:0lstm_860_4586553lstm_860_4586555lstm_860_4586557*
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4585870?
!dense_286/StatefulPartitionedCallStatefulPartitionedCall)lstm_860/StatefulPartitionedCall:output:0dense_286_4586560dense_286_4586562*
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
F__inference_dense_286_layer_call_and_return_conditional_losses_4585888y
IdentityIdentity*dense_286/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_286/StatefulPartitionedCall!^lstm_858/StatefulPartitionedCall!^lstm_859/StatefulPartitionedCall!^lstm_860/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_286/StatefulPartitionedCall!dense_286/StatefulPartitionedCall2D
 lstm_858/StatefulPartitionedCall lstm_858/StatefulPartitionedCall2D
 lstm_859/StatefulPartitionedCall lstm_859/StatefulPartitionedCall2D
 lstm_860/StatefulPartitionedCall lstm_860/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_858_input
?
?
while_cond_4585342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4585342___redundant_placeholder05
1while_while_cond_4585342___redundant_placeholder15
1while_while_cond_4585342___redundant_placeholder25
1while_while_cond_4585342___redundant_placeholder3
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
+__inference_dense_286_layer_call_fn_4589396

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
F__inference_dense_286_layer_call_and_return_conditional_losses_4585888o
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588628

inputs?
,lstm_cell_757_matmul_readvariableop_resource:	d?A
.lstm_cell_757_matmul_1_readvariableop_resource:	2?<
-lstm_cell_757_biasadd_readvariableop_resource:	?
identity??$lstm_cell_757/BiasAdd/ReadVariableOp?#lstm_cell_757/MatMul/ReadVariableOp?%lstm_cell_757/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_757/MatMul/ReadVariableOpReadVariableOp,lstm_cell_757_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_757/MatMulMatMulstrided_slice_2:output:0+lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_757_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_757/MatMul_1MatMulzeros:output:0-lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_757/addAddV2lstm_cell_757/MatMul:product:0 lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_757_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_757/BiasAddBiasAddlstm_cell_757/add:z:0,lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_757/splitSplit&lstm_cell_757/split/split_dim:output:0lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_757/SigmoidSigmoidlstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_1Sigmoidlstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_757/mulMullstm_cell_757/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_757/ReluRelulstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_1Mullstm_cell_757/Sigmoid:y:0 lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_757/add_1AddV2lstm_cell_757/mul:z:0lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_2Sigmoidlstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_757/Relu_1Relulstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_2Mullstm_cell_757/Sigmoid_2:y:0"lstm_cell_757/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_757_matmul_readvariableop_resource.lstm_cell_757_matmul_1_readvariableop_resource-lstm_cell_757_biasadd_readvariableop_resource*
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
while_body_4588544*
condR
while_cond_4588543*K
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
NoOpNoOp%^lstm_cell_757/BiasAdd/ReadVariableOp$^lstm_cell_757/MatMul/ReadVariableOp&^lstm_cell_757/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_757/BiasAdd/ReadVariableOp$lstm_cell_757/BiasAdd/ReadVariableOp2J
#lstm_cell_757/MatMul/ReadVariableOp#lstm_cell_757/MatMul/ReadVariableOp2N
%lstm_cell_757/MatMul_1/ReadVariableOp%lstm_cell_757/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
F__inference_dense_286_layer_call_and_return_conditional_losses_4585888

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
lstm_859_while_cond_4586882.
*lstm_859_while_lstm_859_while_loop_counter4
0lstm_859_while_lstm_859_while_maximum_iterations
lstm_859_while_placeholder 
lstm_859_while_placeholder_1 
lstm_859_while_placeholder_2 
lstm_859_while_placeholder_30
,lstm_859_while_less_lstm_859_strided_slice_1G
Clstm_859_while_lstm_859_while_cond_4586882___redundant_placeholder0G
Clstm_859_while_lstm_859_while_cond_4586882___redundant_placeholder1G
Clstm_859_while_lstm_859_while_cond_4586882___redundant_placeholder2G
Clstm_859_while_lstm_859_while_cond_4586882___redundant_placeholder3
lstm_859_while_identity
?
lstm_859/while/LessLesslstm_859_while_placeholder,lstm_859_while_less_lstm_859_strided_slice_1*
T0*
_output_shapes
: ]
lstm_859/while/IdentityIdentitylstm_859/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_859_while_identity lstm_859/while/Identity:output:0*(
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
while_cond_4586001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4586001___redundant_placeholder05
1while_while_cond_4586001___redundant_placeholder15
1while_while_cond_4586001___redundant_placeholder25
1while_while_cond_4586001___redundant_placeholder3
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4589387

inputs>
,lstm_cell_758_matmul_readvariableop_resource:2(@
.lstm_cell_758_matmul_1_readvariableop_resource:
(;
-lstm_cell_758_biasadd_readvariableop_resource:(
identity??$lstm_cell_758/BiasAdd/ReadVariableOp?#lstm_cell_758/MatMul/ReadVariableOp?%lstm_cell_758/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_758/MatMul/ReadVariableOpReadVariableOp,lstm_cell_758_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_758/MatMulMatMulstrided_slice_2:output:0+lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_758_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_758/MatMul_1MatMulzeros:output:0-lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_758/addAddV2lstm_cell_758/MatMul:product:0 lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_758_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_758/BiasAddBiasAddlstm_cell_758/add:z:0,lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_758/splitSplit&lstm_cell_758/split/split_dim:output:0lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_758/SigmoidSigmoidlstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_1Sigmoidlstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_758/mulMullstm_cell_758/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_758/ReluRelulstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_1Mullstm_cell_758/Sigmoid:y:0 lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_758/add_1AddV2lstm_cell_758/mul:z:0lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_2Sigmoidlstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_758/Relu_1Relulstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_2Mullstm_cell_758/Sigmoid_2:y:0"lstm_cell_758/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_758_matmul_readvariableop_resource.lstm_cell_758_matmul_1_readvariableop_resource-lstm_cell_758_biasadd_readvariableop_resource*
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
while_body_4589303*
condR
while_cond_4589302*K
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
NoOpNoOp%^lstm_cell_758/BiasAdd/ReadVariableOp$^lstm_cell_758/MatMul/ReadVariableOp&^lstm_cell_758/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_758/BiasAdd/ReadVariableOp$lstm_cell_758/BiasAdd/ReadVariableOp2J
#lstm_cell_758/MatMul/ReadVariableOp#lstm_cell_758/MatMul/ReadVariableOp2N
%lstm_cell_758/MatMul_1/ReadVariableOp%lstm_cell_758/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_4584371
lstm_858_inputW
Dsequential_286_lstm_858_lstm_cell_756_matmul_readvariableop_resource:	?Y
Fsequential_286_lstm_858_lstm_cell_756_matmul_1_readvariableop_resource:	d?T
Esequential_286_lstm_858_lstm_cell_756_biasadd_readvariableop_resource:	?W
Dsequential_286_lstm_859_lstm_cell_757_matmul_readvariableop_resource:	d?Y
Fsequential_286_lstm_859_lstm_cell_757_matmul_1_readvariableop_resource:	2?T
Esequential_286_lstm_859_lstm_cell_757_biasadd_readvariableop_resource:	?V
Dsequential_286_lstm_860_lstm_cell_758_matmul_readvariableop_resource:2(X
Fsequential_286_lstm_860_lstm_cell_758_matmul_1_readvariableop_resource:
(S
Esequential_286_lstm_860_lstm_cell_758_biasadd_readvariableop_resource:(I
7sequential_286_dense_286_matmul_readvariableop_resource:
F
8sequential_286_dense_286_biasadd_readvariableop_resource:
identity??/sequential_286/dense_286/BiasAdd/ReadVariableOp?.sequential_286/dense_286/MatMul/ReadVariableOp?<sequential_286/lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp?;sequential_286/lstm_858/lstm_cell_756/MatMul/ReadVariableOp?=sequential_286/lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp?sequential_286/lstm_858/while?<sequential_286/lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp?;sequential_286/lstm_859/lstm_cell_757/MatMul/ReadVariableOp?=sequential_286/lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp?sequential_286/lstm_859/while?<sequential_286/lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp?;sequential_286/lstm_860/lstm_cell_758/MatMul/ReadVariableOp?=sequential_286/lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp?sequential_286/lstm_860/while[
sequential_286/lstm_858/ShapeShapelstm_858_input*
T0*
_output_shapes
:u
+sequential_286/lstm_858/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_286/lstm_858/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_286/lstm_858/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_286/lstm_858/strided_sliceStridedSlice&sequential_286/lstm_858/Shape:output:04sequential_286/lstm_858/strided_slice/stack:output:06sequential_286/lstm_858/strided_slice/stack_1:output:06sequential_286/lstm_858/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_286/lstm_858/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_286/lstm_858/zeros/packedPack.sequential_286/lstm_858/strided_slice:output:0/sequential_286/lstm_858/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_286/lstm_858/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_286/lstm_858/zerosFill-sequential_286/lstm_858/zeros/packed:output:0,sequential_286/lstm_858/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_286/lstm_858/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_286/lstm_858/zeros_1/packedPack.sequential_286/lstm_858/strided_slice:output:01sequential_286/lstm_858/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_286/lstm_858/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_286/lstm_858/zeros_1Fill/sequential_286/lstm_858/zeros_1/packed:output:0.sequential_286/lstm_858/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_286/lstm_858/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_286/lstm_858/transpose	Transposelstm_858_input/sequential_286/lstm_858/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_286/lstm_858/Shape_1Shape%sequential_286/lstm_858/transpose:y:0*
T0*
_output_shapes
:w
-sequential_286/lstm_858/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_286/lstm_858/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_286/lstm_858/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_286/lstm_858/strided_slice_1StridedSlice(sequential_286/lstm_858/Shape_1:output:06sequential_286/lstm_858/strided_slice_1/stack:output:08sequential_286/lstm_858/strided_slice_1/stack_1:output:08sequential_286/lstm_858/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_286/lstm_858/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_286/lstm_858/TensorArrayV2TensorListReserve<sequential_286/lstm_858/TensorArrayV2/element_shape:output:00sequential_286/lstm_858/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_286/lstm_858/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_286/lstm_858/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_286/lstm_858/transpose:y:0Vsequential_286/lstm_858/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_286/lstm_858/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_286/lstm_858/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_286/lstm_858/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_286/lstm_858/strided_slice_2StridedSlice%sequential_286/lstm_858/transpose:y:06sequential_286/lstm_858/strided_slice_2/stack:output:08sequential_286/lstm_858/strided_slice_2/stack_1:output:08sequential_286/lstm_858/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_286/lstm_858/lstm_cell_756/MatMul/ReadVariableOpReadVariableOpDsequential_286_lstm_858_lstm_cell_756_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_286/lstm_858/lstm_cell_756/MatMulMatMul0sequential_286/lstm_858/strided_slice_2:output:0Csequential_286/lstm_858/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_286/lstm_858/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOpFsequential_286_lstm_858_lstm_cell_756_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_286/lstm_858/lstm_cell_756/MatMul_1MatMul&sequential_286/lstm_858/zeros:output:0Esequential_286/lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_286/lstm_858/lstm_cell_756/addAddV26sequential_286/lstm_858/lstm_cell_756/MatMul:product:08sequential_286/lstm_858/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_286/lstm_858/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOpEsequential_286_lstm_858_lstm_cell_756_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_286/lstm_858/lstm_cell_756/BiasAddBiasAdd-sequential_286/lstm_858/lstm_cell_756/add:z:0Dsequential_286/lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_286/lstm_858/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_286/lstm_858/lstm_cell_756/splitSplit>sequential_286/lstm_858/lstm_cell_756/split/split_dim:output:06sequential_286/lstm_858/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_286/lstm_858/lstm_cell_756/SigmoidSigmoid4sequential_286/lstm_858/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_286/lstm_858/lstm_cell_756/Sigmoid_1Sigmoid4sequential_286/lstm_858/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_286/lstm_858/lstm_cell_756/mulMul3sequential_286/lstm_858/lstm_cell_756/Sigmoid_1:y:0(sequential_286/lstm_858/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_286/lstm_858/lstm_cell_756/ReluRelu4sequential_286/lstm_858/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_286/lstm_858/lstm_cell_756/mul_1Mul1sequential_286/lstm_858/lstm_cell_756/Sigmoid:y:08sequential_286/lstm_858/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_286/lstm_858/lstm_cell_756/add_1AddV2-sequential_286/lstm_858/lstm_cell_756/mul:z:0/sequential_286/lstm_858/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_286/lstm_858/lstm_cell_756/Sigmoid_2Sigmoid4sequential_286/lstm_858/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_286/lstm_858/lstm_cell_756/Relu_1Relu/sequential_286/lstm_858/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_286/lstm_858/lstm_cell_756/mul_2Mul3sequential_286/lstm_858/lstm_cell_756/Sigmoid_2:y:0:sequential_286/lstm_858/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_286/lstm_858/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_286/lstm_858/TensorArrayV2_1TensorListReserve>sequential_286/lstm_858/TensorArrayV2_1/element_shape:output:00sequential_286/lstm_858/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_286/lstm_858/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_286/lstm_858/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_286/lstm_858/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_286/lstm_858/whileWhile3sequential_286/lstm_858/while/loop_counter:output:09sequential_286/lstm_858/while/maximum_iterations:output:0%sequential_286/lstm_858/time:output:00sequential_286/lstm_858/TensorArrayV2_1:handle:0&sequential_286/lstm_858/zeros:output:0(sequential_286/lstm_858/zeros_1:output:00sequential_286/lstm_858/strided_slice_1:output:0Osequential_286/lstm_858/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_286_lstm_858_lstm_cell_756_matmul_readvariableop_resourceFsequential_286_lstm_858_lstm_cell_756_matmul_1_readvariableop_resourceEsequential_286_lstm_858_lstm_cell_756_biasadd_readvariableop_resource*
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
*sequential_286_lstm_858_while_body_4584003*6
cond.R,
*sequential_286_lstm_858_while_cond_4584002*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_286/lstm_858/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_286/lstm_858/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_286/lstm_858/while:output:3Qsequential_286/lstm_858/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_286/lstm_858/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_286/lstm_858/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_286/lstm_858/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_286/lstm_858/strided_slice_3StridedSliceCsequential_286/lstm_858/TensorArrayV2Stack/TensorListStack:tensor:06sequential_286/lstm_858/strided_slice_3/stack:output:08sequential_286/lstm_858/strided_slice_3/stack_1:output:08sequential_286/lstm_858/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_286/lstm_858/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_286/lstm_858/transpose_1	TransposeCsequential_286/lstm_858/TensorArrayV2Stack/TensorListStack:tensor:01sequential_286/lstm_858/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_286/lstm_858/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_286/lstm_859/ShapeShape'sequential_286/lstm_858/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_286/lstm_859/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_286/lstm_859/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_286/lstm_859/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_286/lstm_859/strided_sliceStridedSlice&sequential_286/lstm_859/Shape:output:04sequential_286/lstm_859/strided_slice/stack:output:06sequential_286/lstm_859/strided_slice/stack_1:output:06sequential_286/lstm_859/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_286/lstm_859/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_286/lstm_859/zeros/packedPack.sequential_286/lstm_859/strided_slice:output:0/sequential_286/lstm_859/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_286/lstm_859/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_286/lstm_859/zerosFill-sequential_286/lstm_859/zeros/packed:output:0,sequential_286/lstm_859/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_286/lstm_859/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_286/lstm_859/zeros_1/packedPack.sequential_286/lstm_859/strided_slice:output:01sequential_286/lstm_859/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_286/lstm_859/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_286/lstm_859/zeros_1Fill/sequential_286/lstm_859/zeros_1/packed:output:0.sequential_286/lstm_859/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_286/lstm_859/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_286/lstm_859/transpose	Transpose'sequential_286/lstm_858/transpose_1:y:0/sequential_286/lstm_859/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_286/lstm_859/Shape_1Shape%sequential_286/lstm_859/transpose:y:0*
T0*
_output_shapes
:w
-sequential_286/lstm_859/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_286/lstm_859/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_286/lstm_859/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_286/lstm_859/strided_slice_1StridedSlice(sequential_286/lstm_859/Shape_1:output:06sequential_286/lstm_859/strided_slice_1/stack:output:08sequential_286/lstm_859/strided_slice_1/stack_1:output:08sequential_286/lstm_859/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_286/lstm_859/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_286/lstm_859/TensorArrayV2TensorListReserve<sequential_286/lstm_859/TensorArrayV2/element_shape:output:00sequential_286/lstm_859/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_286/lstm_859/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_286/lstm_859/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_286/lstm_859/transpose:y:0Vsequential_286/lstm_859/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_286/lstm_859/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_286/lstm_859/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_286/lstm_859/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_286/lstm_859/strided_slice_2StridedSlice%sequential_286/lstm_859/transpose:y:06sequential_286/lstm_859/strided_slice_2/stack:output:08sequential_286/lstm_859/strided_slice_2/stack_1:output:08sequential_286/lstm_859/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_286/lstm_859/lstm_cell_757/MatMul/ReadVariableOpReadVariableOpDsequential_286_lstm_859_lstm_cell_757_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_286/lstm_859/lstm_cell_757/MatMulMatMul0sequential_286/lstm_859/strided_slice_2:output:0Csequential_286/lstm_859/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_286/lstm_859/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOpFsequential_286_lstm_859_lstm_cell_757_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_286/lstm_859/lstm_cell_757/MatMul_1MatMul&sequential_286/lstm_859/zeros:output:0Esequential_286/lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_286/lstm_859/lstm_cell_757/addAddV26sequential_286/lstm_859/lstm_cell_757/MatMul:product:08sequential_286/lstm_859/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_286/lstm_859/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOpEsequential_286_lstm_859_lstm_cell_757_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_286/lstm_859/lstm_cell_757/BiasAddBiasAdd-sequential_286/lstm_859/lstm_cell_757/add:z:0Dsequential_286/lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_286/lstm_859/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_286/lstm_859/lstm_cell_757/splitSplit>sequential_286/lstm_859/lstm_cell_757/split/split_dim:output:06sequential_286/lstm_859/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_286/lstm_859/lstm_cell_757/SigmoidSigmoid4sequential_286/lstm_859/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_286/lstm_859/lstm_cell_757/Sigmoid_1Sigmoid4sequential_286/lstm_859/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_286/lstm_859/lstm_cell_757/mulMul3sequential_286/lstm_859/lstm_cell_757/Sigmoid_1:y:0(sequential_286/lstm_859/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_286/lstm_859/lstm_cell_757/ReluRelu4sequential_286/lstm_859/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_286/lstm_859/lstm_cell_757/mul_1Mul1sequential_286/lstm_859/lstm_cell_757/Sigmoid:y:08sequential_286/lstm_859/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_286/lstm_859/lstm_cell_757/add_1AddV2-sequential_286/lstm_859/lstm_cell_757/mul:z:0/sequential_286/lstm_859/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_286/lstm_859/lstm_cell_757/Sigmoid_2Sigmoid4sequential_286/lstm_859/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_286/lstm_859/lstm_cell_757/Relu_1Relu/sequential_286/lstm_859/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_286/lstm_859/lstm_cell_757/mul_2Mul3sequential_286/lstm_859/lstm_cell_757/Sigmoid_2:y:0:sequential_286/lstm_859/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_286/lstm_859/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_286/lstm_859/TensorArrayV2_1TensorListReserve>sequential_286/lstm_859/TensorArrayV2_1/element_shape:output:00sequential_286/lstm_859/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_286/lstm_859/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_286/lstm_859/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_286/lstm_859/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_286/lstm_859/whileWhile3sequential_286/lstm_859/while/loop_counter:output:09sequential_286/lstm_859/while/maximum_iterations:output:0%sequential_286/lstm_859/time:output:00sequential_286/lstm_859/TensorArrayV2_1:handle:0&sequential_286/lstm_859/zeros:output:0(sequential_286/lstm_859/zeros_1:output:00sequential_286/lstm_859/strided_slice_1:output:0Osequential_286/lstm_859/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_286_lstm_859_lstm_cell_757_matmul_readvariableop_resourceFsequential_286_lstm_859_lstm_cell_757_matmul_1_readvariableop_resourceEsequential_286_lstm_859_lstm_cell_757_biasadd_readvariableop_resource*
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
*sequential_286_lstm_859_while_body_4584142*6
cond.R,
*sequential_286_lstm_859_while_cond_4584141*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_286/lstm_859/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_286/lstm_859/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_286/lstm_859/while:output:3Qsequential_286/lstm_859/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_286/lstm_859/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_286/lstm_859/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_286/lstm_859/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_286/lstm_859/strided_slice_3StridedSliceCsequential_286/lstm_859/TensorArrayV2Stack/TensorListStack:tensor:06sequential_286/lstm_859/strided_slice_3/stack:output:08sequential_286/lstm_859/strided_slice_3/stack_1:output:08sequential_286/lstm_859/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_286/lstm_859/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_286/lstm_859/transpose_1	TransposeCsequential_286/lstm_859/TensorArrayV2Stack/TensorListStack:tensor:01sequential_286/lstm_859/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_286/lstm_859/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_286/lstm_860/ShapeShape'sequential_286/lstm_859/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_286/lstm_860/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_286/lstm_860/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_286/lstm_860/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_286/lstm_860/strided_sliceStridedSlice&sequential_286/lstm_860/Shape:output:04sequential_286/lstm_860/strided_slice/stack:output:06sequential_286/lstm_860/strided_slice/stack_1:output:06sequential_286/lstm_860/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_286/lstm_860/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_286/lstm_860/zeros/packedPack.sequential_286/lstm_860/strided_slice:output:0/sequential_286/lstm_860/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_286/lstm_860/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_286/lstm_860/zerosFill-sequential_286/lstm_860/zeros/packed:output:0,sequential_286/lstm_860/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_286/lstm_860/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_286/lstm_860/zeros_1/packedPack.sequential_286/lstm_860/strided_slice:output:01sequential_286/lstm_860/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_286/lstm_860/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_286/lstm_860/zeros_1Fill/sequential_286/lstm_860/zeros_1/packed:output:0.sequential_286/lstm_860/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_286/lstm_860/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_286/lstm_860/transpose	Transpose'sequential_286/lstm_859/transpose_1:y:0/sequential_286/lstm_860/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_286/lstm_860/Shape_1Shape%sequential_286/lstm_860/transpose:y:0*
T0*
_output_shapes
:w
-sequential_286/lstm_860/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_286/lstm_860/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_286/lstm_860/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_286/lstm_860/strided_slice_1StridedSlice(sequential_286/lstm_860/Shape_1:output:06sequential_286/lstm_860/strided_slice_1/stack:output:08sequential_286/lstm_860/strided_slice_1/stack_1:output:08sequential_286/lstm_860/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_286/lstm_860/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_286/lstm_860/TensorArrayV2TensorListReserve<sequential_286/lstm_860/TensorArrayV2/element_shape:output:00sequential_286/lstm_860/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_286/lstm_860/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_286/lstm_860/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_286/lstm_860/transpose:y:0Vsequential_286/lstm_860/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_286/lstm_860/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_286/lstm_860/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_286/lstm_860/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_286/lstm_860/strided_slice_2StridedSlice%sequential_286/lstm_860/transpose:y:06sequential_286/lstm_860/strided_slice_2/stack:output:08sequential_286/lstm_860/strided_slice_2/stack_1:output:08sequential_286/lstm_860/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_286/lstm_860/lstm_cell_758/MatMul/ReadVariableOpReadVariableOpDsequential_286_lstm_860_lstm_cell_758_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_286/lstm_860/lstm_cell_758/MatMulMatMul0sequential_286/lstm_860/strided_slice_2:output:0Csequential_286/lstm_860/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_286/lstm_860/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOpFsequential_286_lstm_860_lstm_cell_758_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_286/lstm_860/lstm_cell_758/MatMul_1MatMul&sequential_286/lstm_860/zeros:output:0Esequential_286/lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_286/lstm_860/lstm_cell_758/addAddV26sequential_286/lstm_860/lstm_cell_758/MatMul:product:08sequential_286/lstm_860/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_286/lstm_860/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOpEsequential_286_lstm_860_lstm_cell_758_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_286/lstm_860/lstm_cell_758/BiasAddBiasAdd-sequential_286/lstm_860/lstm_cell_758/add:z:0Dsequential_286/lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_286/lstm_860/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_286/lstm_860/lstm_cell_758/splitSplit>sequential_286/lstm_860/lstm_cell_758/split/split_dim:output:06sequential_286/lstm_860/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_286/lstm_860/lstm_cell_758/SigmoidSigmoid4sequential_286/lstm_860/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_286/lstm_860/lstm_cell_758/Sigmoid_1Sigmoid4sequential_286/lstm_860/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_286/lstm_860/lstm_cell_758/mulMul3sequential_286/lstm_860/lstm_cell_758/Sigmoid_1:y:0(sequential_286/lstm_860/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_286/lstm_860/lstm_cell_758/ReluRelu4sequential_286/lstm_860/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_286/lstm_860/lstm_cell_758/mul_1Mul1sequential_286/lstm_860/lstm_cell_758/Sigmoid:y:08sequential_286/lstm_860/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_286/lstm_860/lstm_cell_758/add_1AddV2-sequential_286/lstm_860/lstm_cell_758/mul:z:0/sequential_286/lstm_860/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_286/lstm_860/lstm_cell_758/Sigmoid_2Sigmoid4sequential_286/lstm_860/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_286/lstm_860/lstm_cell_758/Relu_1Relu/sequential_286/lstm_860/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_286/lstm_860/lstm_cell_758/mul_2Mul3sequential_286/lstm_860/lstm_cell_758/Sigmoid_2:y:0:sequential_286/lstm_860/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_286/lstm_860/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_286/lstm_860/TensorArrayV2_1TensorListReserve>sequential_286/lstm_860/TensorArrayV2_1/element_shape:output:00sequential_286/lstm_860/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_286/lstm_860/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_286/lstm_860/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_286/lstm_860/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_286/lstm_860/whileWhile3sequential_286/lstm_860/while/loop_counter:output:09sequential_286/lstm_860/while/maximum_iterations:output:0%sequential_286/lstm_860/time:output:00sequential_286/lstm_860/TensorArrayV2_1:handle:0&sequential_286/lstm_860/zeros:output:0(sequential_286/lstm_860/zeros_1:output:00sequential_286/lstm_860/strided_slice_1:output:0Osequential_286/lstm_860/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_286_lstm_860_lstm_cell_758_matmul_readvariableop_resourceFsequential_286_lstm_860_lstm_cell_758_matmul_1_readvariableop_resourceEsequential_286_lstm_860_lstm_cell_758_biasadd_readvariableop_resource*
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
*sequential_286_lstm_860_while_body_4584281*6
cond.R,
*sequential_286_lstm_860_while_cond_4584280*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_286/lstm_860/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_286/lstm_860/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_286/lstm_860/while:output:3Qsequential_286/lstm_860/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_286/lstm_860/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_286/lstm_860/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_286/lstm_860/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_286/lstm_860/strided_slice_3StridedSliceCsequential_286/lstm_860/TensorArrayV2Stack/TensorListStack:tensor:06sequential_286/lstm_860/strided_slice_3/stack:output:08sequential_286/lstm_860/strided_slice_3/stack_1:output:08sequential_286/lstm_860/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_286/lstm_860/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_286/lstm_860/transpose_1	TransposeCsequential_286/lstm_860/TensorArrayV2Stack/TensorListStack:tensor:01sequential_286/lstm_860/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_286/lstm_860/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_286/dense_286/MatMul/ReadVariableOpReadVariableOp7sequential_286_dense_286_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_286/dense_286/MatMulMatMul0sequential_286/lstm_860/strided_slice_3:output:06sequential_286/dense_286/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_286/dense_286/BiasAdd/ReadVariableOpReadVariableOp8sequential_286_dense_286_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_286/dense_286/BiasAddBiasAdd)sequential_286/dense_286/MatMul:product:07sequential_286/dense_286/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_286/dense_286/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_286/dense_286/BiasAdd/ReadVariableOp/^sequential_286/dense_286/MatMul/ReadVariableOp=^sequential_286/lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp<^sequential_286/lstm_858/lstm_cell_756/MatMul/ReadVariableOp>^sequential_286/lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp^sequential_286/lstm_858/while=^sequential_286/lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp<^sequential_286/lstm_859/lstm_cell_757/MatMul/ReadVariableOp>^sequential_286/lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp^sequential_286/lstm_859/while=^sequential_286/lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp<^sequential_286/lstm_860/lstm_cell_758/MatMul/ReadVariableOp>^sequential_286/lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp^sequential_286/lstm_860/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_286/dense_286/BiasAdd/ReadVariableOp/sequential_286/dense_286/BiasAdd/ReadVariableOp2`
.sequential_286/dense_286/MatMul/ReadVariableOp.sequential_286/dense_286/MatMul/ReadVariableOp2|
<sequential_286/lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp<sequential_286/lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp2z
;sequential_286/lstm_858/lstm_cell_756/MatMul/ReadVariableOp;sequential_286/lstm_858/lstm_cell_756/MatMul/ReadVariableOp2~
=sequential_286/lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp=sequential_286/lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp2>
sequential_286/lstm_858/whilesequential_286/lstm_858/while2|
<sequential_286/lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp<sequential_286/lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp2z
;sequential_286/lstm_859/lstm_cell_757/MatMul/ReadVariableOp;sequential_286/lstm_859/lstm_cell_757/MatMul/ReadVariableOp2~
=sequential_286/lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp=sequential_286/lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp2>
sequential_286/lstm_859/whilesequential_286/lstm_859/while2|
<sequential_286/lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp<sequential_286/lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp2z
;sequential_286/lstm_860/lstm_cell_758/MatMul/ReadVariableOp;sequential_286/lstm_860/lstm_cell_758/MatMul/ReadVariableOp2~
=sequential_286/lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp=sequential_286/lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp2>
sequential_286/lstm_860/whilesequential_286/lstm_860/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_858_input
?

?
0__inference_sequential_286_layer_call_fn_4586685

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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4586484o
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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4586596
lstm_858_input#
lstm_858_4586569:	?#
lstm_858_4586571:	d?
lstm_858_4586573:	?#
lstm_859_4586576:	d?#
lstm_859_4586578:	2?
lstm_859_4586580:	?"
lstm_860_4586583:2("
lstm_860_4586585:
(
lstm_860_4586587:(#
dense_286_4586590:

dense_286_4586592:
identity??!dense_286/StatefulPartitionedCall? lstm_858/StatefulPartitionedCall? lstm_859/StatefulPartitionedCall? lstm_860/StatefulPartitionedCall?
 lstm_858/StatefulPartitionedCallStatefulPartitionedCalllstm_858_inputlstm_858_4586569lstm_858_4586571lstm_858_4586573*
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4586416?
 lstm_859/StatefulPartitionedCallStatefulPartitionedCall)lstm_858/StatefulPartitionedCall:output:0lstm_859_4586576lstm_859_4586578lstm_859_4586580*
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4586251?
 lstm_860/StatefulPartitionedCallStatefulPartitionedCall)lstm_859/StatefulPartitionedCall:output:0lstm_860_4586583lstm_860_4586585lstm_860_4586587*
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4586086?
!dense_286/StatefulPartitionedCallStatefulPartitionedCall)lstm_860/StatefulPartitionedCall:output:0dense_286_4586590dense_286_4586592*
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
F__inference_dense_286_layer_call_and_return_conditional_losses_4585888y
IdentityIdentity*dense_286/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_286/StatefulPartitionedCall!^lstm_858/StatefulPartitionedCall!^lstm_859/StatefulPartitionedCall!^lstm_860/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_286/StatefulPartitionedCall!dense_286/StatefulPartitionedCall2D
 lstm_858/StatefulPartitionedCall lstm_858/StatefulPartitionedCall2D
 lstm_859/StatefulPartitionedCall lstm_859/StatefulPartitionedCall2D
 lstm_860/StatefulPartitionedCall lstm_860/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_858_input
?
?
while_cond_4585785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4585785___redundant_placeholder05
1while_while_cond_4585785___redundant_placeholder15
1while_while_cond_4585785___redundant_placeholder25
1while_while_cond_4585785___redundant_placeholder3
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
while_cond_4584451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4584451___redundant_placeholder05
1while_while_cond_4584451___redundant_placeholder15
1while_while_cond_4584451___redundant_placeholder25
1while_while_cond_4584451___redundant_placeholder3
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
while_body_4584993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_757_4585017_0:	d?0
while_lstm_cell_757_4585019_0:	2?,
while_lstm_cell_757_4585021_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_757_4585017:	d?.
while_lstm_cell_757_4585019:	2?*
while_lstm_cell_757_4585021:	???+while/lstm_cell_757/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_757/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_757_4585017_0while_lstm_cell_757_4585019_0while_lstm_cell_757_4585021_0*
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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4584934?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_757/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_757/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_757/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_757/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_757_4585017while_lstm_cell_757_4585017_0"<
while_lstm_cell_757_4585019while_lstm_cell_757_4585019_0"<
while_lstm_cell_757_4585021while_lstm_cell_757_4585021_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_757/StatefulPartitionedCall+while/lstm_cell_757/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4588874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_758_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_758_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_758_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_758_matmul_readvariableop_resource:2(F
4while_lstm_cell_758_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_758_biasadd_readvariableop_resource:(??*while/lstm_cell_758/BiasAdd/ReadVariableOp?)while/lstm_cell_758/MatMul/ReadVariableOp?+while/lstm_cell_758/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_758/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_758_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_758/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_758_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_758/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_758/addAddV2$while/lstm_cell_758/MatMul:product:0&while/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_758_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_758/BiasAddBiasAddwhile/lstm_cell_758/add:z:02while/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_758/splitSplit,while/lstm_cell_758/split/split_dim:output:0$while/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_758/SigmoidSigmoid"while/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_1Sigmoid"while/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mulMul!while/lstm_cell_758/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_758/ReluRelu"while/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_1Mulwhile/lstm_cell_758/Sigmoid:y:0&while/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/add_1AddV2while/lstm_cell_758/mul:z:0while/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_2Sigmoid"while/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_758/Relu_1Reluwhile/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_2Mul!while/lstm_cell_758/Sigmoid_2:y:0(while/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_758/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_758/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_758/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_758/BiasAdd/ReadVariableOp*^while/lstm_cell_758/MatMul/ReadVariableOp,^while/lstm_cell_758/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_758_biasadd_readvariableop_resource5while_lstm_cell_758_biasadd_readvariableop_resource_0"n
4while_lstm_cell_758_matmul_1_readvariableop_resource6while_lstm_cell_758_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_758_matmul_readvariableop_resource4while_lstm_cell_758_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_758/BiasAdd/ReadVariableOp*while/lstm_cell_758/BiasAdd/ReadVariableOp2V
)while/lstm_cell_758/MatMul/ReadVariableOp)while/lstm_cell_758/MatMul/ReadVariableOp2Z
+while/lstm_cell_758/MatMul_1/ReadVariableOp+while/lstm_cell_758/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4584521

inputs(
lstm_cell_756_4584439:	?(
lstm_cell_756_4584441:	d?$
lstm_cell_756_4584443:	?
identity??%lstm_cell_756/StatefulPartitionedCall?while;
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
%lstm_cell_756/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_756_4584439lstm_cell_756_4584441lstm_cell_756_4584443*
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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4584438n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_756_4584439lstm_cell_756_4584441lstm_cell_756_4584443*
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
while_body_4584452*
condR
while_cond_4584451*K
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
NoOpNoOp&^lstm_cell_756/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_756/StatefulPartitionedCall%lstm_cell_756/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4589504

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

lstm_860_while_body_4587449.
*lstm_860_while_lstm_860_while_loop_counter4
0lstm_860_while_lstm_860_while_maximum_iterations
lstm_860_while_placeholder 
lstm_860_while_placeholder_1 
lstm_860_while_placeholder_2 
lstm_860_while_placeholder_3-
)lstm_860_while_lstm_860_strided_slice_1_0i
elstm_860_while_tensorarrayv2read_tensorlistgetitem_lstm_860_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_860_while_lstm_cell_758_matmul_readvariableop_resource_0:2(Q
?lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource_0:
(L
>lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource_0:(
lstm_860_while_identity
lstm_860_while_identity_1
lstm_860_while_identity_2
lstm_860_while_identity_3
lstm_860_while_identity_4
lstm_860_while_identity_5+
'lstm_860_while_lstm_860_strided_slice_1g
clstm_860_while_tensorarrayv2read_tensorlistgetitem_lstm_860_tensorarrayunstack_tensorlistfromtensorM
;lstm_860_while_lstm_cell_758_matmul_readvariableop_resource:2(O
=lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource:
(J
<lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource:(??3lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp?2lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp?4lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp?
@lstm_860/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_860/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_860_while_tensorarrayv2read_tensorlistgetitem_lstm_860_tensorarrayunstack_tensorlistfromtensor_0lstm_860_while_placeholderIlstm_860/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_860/while/lstm_cell_758/MatMul/ReadVariableOpReadVariableOp=lstm_860_while_lstm_cell_758_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_860/while/lstm_cell_758/MatMulMatMul9lstm_860/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp?lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_860/while/lstm_cell_758/MatMul_1MatMullstm_860_while_placeholder_2<lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_860/while/lstm_cell_758/addAddV2-lstm_860/while/lstm_cell_758/MatMul:product:0/lstm_860/while/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp>lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_860/while/lstm_cell_758/BiasAddBiasAdd$lstm_860/while/lstm_cell_758/add:z:0;lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_860/while/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_860/while/lstm_cell_758/splitSplit5lstm_860/while/lstm_cell_758/split/split_dim:output:0-lstm_860/while/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_860/while/lstm_cell_758/SigmoidSigmoid+lstm_860/while/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_860/while/lstm_cell_758/Sigmoid_1Sigmoid+lstm_860/while/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_860/while/lstm_cell_758/mulMul*lstm_860/while/lstm_cell_758/Sigmoid_1:y:0lstm_860_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_860/while/lstm_cell_758/ReluRelu+lstm_860/while/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_860/while/lstm_cell_758/mul_1Mul(lstm_860/while/lstm_cell_758/Sigmoid:y:0/lstm_860/while/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_860/while/lstm_cell_758/add_1AddV2$lstm_860/while/lstm_cell_758/mul:z:0&lstm_860/while/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_860/while/lstm_cell_758/Sigmoid_2Sigmoid+lstm_860/while/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_860/while/lstm_cell_758/Relu_1Relu&lstm_860/while/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_860/while/lstm_cell_758/mul_2Mul*lstm_860/while/lstm_cell_758/Sigmoid_2:y:01lstm_860/while/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_860/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_860_while_placeholder_1lstm_860_while_placeholder&lstm_860/while/lstm_cell_758/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_860/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_860/while/addAddV2lstm_860_while_placeholderlstm_860/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_860/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_860/while/add_1AddV2*lstm_860_while_lstm_860_while_loop_counterlstm_860/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_860/while/IdentityIdentitylstm_860/while/add_1:z:0^lstm_860/while/NoOp*
T0*
_output_shapes
: ?
lstm_860/while/Identity_1Identity0lstm_860_while_lstm_860_while_maximum_iterations^lstm_860/while/NoOp*
T0*
_output_shapes
: t
lstm_860/while/Identity_2Identitylstm_860/while/add:z:0^lstm_860/while/NoOp*
T0*
_output_shapes
: ?
lstm_860/while/Identity_3IdentityClstm_860/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_860/while/NoOp*
T0*
_output_shapes
: ?
lstm_860/while/Identity_4Identity&lstm_860/while/lstm_cell_758/mul_2:z:0^lstm_860/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_860/while/Identity_5Identity&lstm_860/while/lstm_cell_758/add_1:z:0^lstm_860/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_860/while/NoOpNoOp4^lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp3^lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp5^lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_860_while_identity lstm_860/while/Identity:output:0"?
lstm_860_while_identity_1"lstm_860/while/Identity_1:output:0"?
lstm_860_while_identity_2"lstm_860/while/Identity_2:output:0"?
lstm_860_while_identity_3"lstm_860/while/Identity_3:output:0"?
lstm_860_while_identity_4"lstm_860/while/Identity_4:output:0"?
lstm_860_while_identity_5"lstm_860/while/Identity_5:output:0"T
'lstm_860_while_lstm_860_strided_slice_1)lstm_860_while_lstm_860_strided_slice_1_0"~
<lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource>lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource_0"?
=lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource?lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource_0"|
;lstm_860_while_lstm_cell_758_matmul_readvariableop_resource=lstm_860_while_lstm_cell_758_matmul_readvariableop_resource_0"?
clstm_860_while_tensorarrayv2read_tensorlistgetitem_lstm_860_tensorarrayunstack_tensorlistfromtensorelstm_860_while_tensorarrayv2read_tensorlistgetitem_lstm_860_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp3lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp2h
2lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp2lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp2l
4lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp4lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4588071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_756_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_756_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_756_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_756_matmul_readvariableop_resource:	?G
4while_lstm_cell_756_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_756_biasadd_readvariableop_resource:	???*while/lstm_cell_756/BiasAdd/ReadVariableOp?)while/lstm_cell_756/MatMul/ReadVariableOp?+while/lstm_cell_756/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_756/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_756_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_756/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_756_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_756/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_756/addAddV2$while/lstm_cell_756/MatMul:product:0&while/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_756_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_756/BiasAddBiasAddwhile/lstm_cell_756/add:z:02while/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_756/splitSplit,while/lstm_cell_756/split/split_dim:output:0$while/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_756/SigmoidSigmoid"while/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_1Sigmoid"while/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mulMul!while/lstm_cell_756/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_756/ReluRelu"while/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_1Mulwhile/lstm_cell_756/Sigmoid:y:0&while/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/add_1AddV2while/lstm_cell_756/mul:z:0while/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_2Sigmoid"while/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_756/Relu_1Reluwhile/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_2Mul!while/lstm_cell_756/Sigmoid_2:y:0(while/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_756/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_756/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_756/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_756/BiasAdd/ReadVariableOp*^while/lstm_cell_756/MatMul/ReadVariableOp,^while/lstm_cell_756/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_756_biasadd_readvariableop_resource5while_lstm_cell_756_biasadd_readvariableop_resource_0"n
4while_lstm_cell_756_matmul_1_readvariableop_resource6while_lstm_cell_756_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_756_matmul_readvariableop_resource4while_lstm_cell_756_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_756/BiasAdd/ReadVariableOp*while/lstm_cell_756/BiasAdd/ReadVariableOp2V
)while/lstm_cell_756/MatMul/ReadVariableOp)while/lstm_cell_756/MatMul/ReadVariableOp2Z
+while/lstm_cell_756/MatMul_1/ReadVariableOp+while/lstm_cell_756/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4586416

inputs?
,lstm_cell_756_matmul_readvariableop_resource:	?A
.lstm_cell_756_matmul_1_readvariableop_resource:	d?<
-lstm_cell_756_biasadd_readvariableop_resource:	?
identity??$lstm_cell_756/BiasAdd/ReadVariableOp?#lstm_cell_756/MatMul/ReadVariableOp?%lstm_cell_756/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_756/MatMul/ReadVariableOpReadVariableOp,lstm_cell_756_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_756/MatMulMatMulstrided_slice_2:output:0+lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_756_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_756/MatMul_1MatMulzeros:output:0-lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_756/addAddV2lstm_cell_756/MatMul:product:0 lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_756_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_756/BiasAddBiasAddlstm_cell_756/add:z:0,lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_756/splitSplit&lstm_cell_756/split/split_dim:output:0lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_756/SigmoidSigmoidlstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_1Sigmoidlstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_756/mulMullstm_cell_756/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_756/ReluRelulstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_1Mullstm_cell_756/Sigmoid:y:0 lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_756/add_1AddV2lstm_cell_756/mul:z:0lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_2Sigmoidlstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_756/Relu_1Relulstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_2Mullstm_cell_756/Sigmoid_2:y:0"lstm_cell_756/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_756_matmul_readvariableop_resource.lstm_cell_756_matmul_1_readvariableop_resource-lstm_cell_756_biasadd_readvariableop_resource*
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
while_body_4586332*
condR
while_cond_4586331*K
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
NoOpNoOp%^lstm_cell_756/BiasAdd/ReadVariableOp$^lstm_cell_756/MatMul/ReadVariableOp&^lstm_cell_756/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_756/BiasAdd/ReadVariableOp$lstm_cell_756/BiasAdd/ReadVariableOp2J
#lstm_cell_756/MatMul/ReadVariableOp#lstm_cell_756/MatMul/ReadVariableOp2N
%lstm_cell_756/MatMul_1/ReadVariableOp%lstm_cell_756/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_860_while_body_4587022.
*lstm_860_while_lstm_860_while_loop_counter4
0lstm_860_while_lstm_860_while_maximum_iterations
lstm_860_while_placeholder 
lstm_860_while_placeholder_1 
lstm_860_while_placeholder_2 
lstm_860_while_placeholder_3-
)lstm_860_while_lstm_860_strided_slice_1_0i
elstm_860_while_tensorarrayv2read_tensorlistgetitem_lstm_860_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_860_while_lstm_cell_758_matmul_readvariableop_resource_0:2(Q
?lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource_0:
(L
>lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource_0:(
lstm_860_while_identity
lstm_860_while_identity_1
lstm_860_while_identity_2
lstm_860_while_identity_3
lstm_860_while_identity_4
lstm_860_while_identity_5+
'lstm_860_while_lstm_860_strided_slice_1g
clstm_860_while_tensorarrayv2read_tensorlistgetitem_lstm_860_tensorarrayunstack_tensorlistfromtensorM
;lstm_860_while_lstm_cell_758_matmul_readvariableop_resource:2(O
=lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource:
(J
<lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource:(??3lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp?2lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp?4lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp?
@lstm_860/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_860/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_860_while_tensorarrayv2read_tensorlistgetitem_lstm_860_tensorarrayunstack_tensorlistfromtensor_0lstm_860_while_placeholderIlstm_860/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_860/while/lstm_cell_758/MatMul/ReadVariableOpReadVariableOp=lstm_860_while_lstm_cell_758_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_860/while/lstm_cell_758/MatMulMatMul9lstm_860/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp?lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_860/while/lstm_cell_758/MatMul_1MatMullstm_860_while_placeholder_2<lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_860/while/lstm_cell_758/addAddV2-lstm_860/while/lstm_cell_758/MatMul:product:0/lstm_860/while/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp>lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_860/while/lstm_cell_758/BiasAddBiasAdd$lstm_860/while/lstm_cell_758/add:z:0;lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_860/while/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_860/while/lstm_cell_758/splitSplit5lstm_860/while/lstm_cell_758/split/split_dim:output:0-lstm_860/while/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_860/while/lstm_cell_758/SigmoidSigmoid+lstm_860/while/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_860/while/lstm_cell_758/Sigmoid_1Sigmoid+lstm_860/while/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_860/while/lstm_cell_758/mulMul*lstm_860/while/lstm_cell_758/Sigmoid_1:y:0lstm_860_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_860/while/lstm_cell_758/ReluRelu+lstm_860/while/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_860/while/lstm_cell_758/mul_1Mul(lstm_860/while/lstm_cell_758/Sigmoid:y:0/lstm_860/while/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_860/while/lstm_cell_758/add_1AddV2$lstm_860/while/lstm_cell_758/mul:z:0&lstm_860/while/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_860/while/lstm_cell_758/Sigmoid_2Sigmoid+lstm_860/while/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_860/while/lstm_cell_758/Relu_1Relu&lstm_860/while/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_860/while/lstm_cell_758/mul_2Mul*lstm_860/while/lstm_cell_758/Sigmoid_2:y:01lstm_860/while/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_860/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_860_while_placeholder_1lstm_860_while_placeholder&lstm_860/while/lstm_cell_758/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_860/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_860/while/addAddV2lstm_860_while_placeholderlstm_860/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_860/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_860/while/add_1AddV2*lstm_860_while_lstm_860_while_loop_counterlstm_860/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_860/while/IdentityIdentitylstm_860/while/add_1:z:0^lstm_860/while/NoOp*
T0*
_output_shapes
: ?
lstm_860/while/Identity_1Identity0lstm_860_while_lstm_860_while_maximum_iterations^lstm_860/while/NoOp*
T0*
_output_shapes
: t
lstm_860/while/Identity_2Identitylstm_860/while/add:z:0^lstm_860/while/NoOp*
T0*
_output_shapes
: ?
lstm_860/while/Identity_3IdentityClstm_860/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_860/while/NoOp*
T0*
_output_shapes
: ?
lstm_860/while/Identity_4Identity&lstm_860/while/lstm_cell_758/mul_2:z:0^lstm_860/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_860/while/Identity_5Identity&lstm_860/while/lstm_cell_758/add_1:z:0^lstm_860/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_860/while/NoOpNoOp4^lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp3^lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp5^lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_860_while_identity lstm_860/while/Identity:output:0"?
lstm_860_while_identity_1"lstm_860/while/Identity_1:output:0"?
lstm_860_while_identity_2"lstm_860/while/Identity_2:output:0"?
lstm_860_while_identity_3"lstm_860/while/Identity_3:output:0"?
lstm_860_while_identity_4"lstm_860/while/Identity_4:output:0"?
lstm_860_while_identity_5"lstm_860/while/Identity_5:output:0"T
'lstm_860_while_lstm_860_strided_slice_1)lstm_860_while_lstm_860_strided_slice_1_0"~
<lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource>lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource_0"?
=lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource?lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource_0"|
;lstm_860_while_lstm_cell_758_matmul_readvariableop_resource=lstm_860_while_lstm_cell_758_matmul_readvariableop_resource_0"?
clstm_860_while_tensorarrayv2read_tensorlistgetitem_lstm_860_tensorarrayunstack_tensorlistfromtensorelstm_860_while_tensorarrayv2read_tensorlistgetitem_lstm_860_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp3lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp2h
2lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp2lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp2l
4lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp4lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4585485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4585485___redundant_placeholder05
1while_while_cond_4585485___redundant_placeholder15
1while_while_cond_4585485___redundant_placeholder25
1while_while_cond_4585485___redundant_placeholder3
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
*__inference_lstm_858_layer_call_fn_4587583

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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4586416s
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
while_body_4589160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_758_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_758_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_758_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_758_matmul_readvariableop_resource:2(F
4while_lstm_cell_758_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_758_biasadd_readvariableop_resource:(??*while/lstm_cell_758/BiasAdd/ReadVariableOp?)while/lstm_cell_758/MatMul/ReadVariableOp?+while/lstm_cell_758/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_758/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_758_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_758/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_758_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_758/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_758/addAddV2$while/lstm_cell_758/MatMul:product:0&while/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_758_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_758/BiasAddBiasAddwhile/lstm_cell_758/add:z:02while/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_758/splitSplit,while/lstm_cell_758/split/split_dim:output:0$while/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_758/SigmoidSigmoid"while/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_1Sigmoid"while/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mulMul!while/lstm_cell_758/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_758/ReluRelu"while/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_1Mulwhile/lstm_cell_758/Sigmoid:y:0&while/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/add_1AddV2while/lstm_cell_758/mul:z:0while/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_2Sigmoid"while/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_758/Relu_1Reluwhile/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_2Mul!while/lstm_cell_758/Sigmoid_2:y:0(while/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_758/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_758/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_758/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_758/BiasAdd/ReadVariableOp*^while/lstm_cell_758/MatMul/ReadVariableOp,^while/lstm_cell_758/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_758_biasadd_readvariableop_resource5while_lstm_cell_758_biasadd_readvariableop_resource_0"n
4while_lstm_cell_758_matmul_1_readvariableop_resource6while_lstm_cell_758_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_758_matmul_readvariableop_resource4while_lstm_cell_758_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_758/BiasAdd/ReadVariableOp*while/lstm_cell_758/BiasAdd/ReadVariableOp2V
)while/lstm_cell_758/MatMul/ReadVariableOp)while/lstm_cell_758/MatMul/ReadVariableOp2Z
+while/lstm_cell_758/MatMul_1/ReadVariableOp+while/lstm_cell_758/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4586331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4586331___redundant_placeholder05
1while_while_cond_4586331___redundant_placeholder15
1while_while_cond_4586331___redundant_placeholder25
1while_while_cond_4586331___redundant_placeholder3
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4588012

inputs?
,lstm_cell_756_matmul_readvariableop_resource:	?A
.lstm_cell_756_matmul_1_readvariableop_resource:	d?<
-lstm_cell_756_biasadd_readvariableop_resource:	?
identity??$lstm_cell_756/BiasAdd/ReadVariableOp?#lstm_cell_756/MatMul/ReadVariableOp?%lstm_cell_756/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_756/MatMul/ReadVariableOpReadVariableOp,lstm_cell_756_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_756/MatMulMatMulstrided_slice_2:output:0+lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_756_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_756/MatMul_1MatMulzeros:output:0-lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_756/addAddV2lstm_cell_756/MatMul:product:0 lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_756_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_756/BiasAddBiasAddlstm_cell_756/add:z:0,lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_756/splitSplit&lstm_cell_756/split/split_dim:output:0lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_756/SigmoidSigmoidlstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_1Sigmoidlstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_756/mulMullstm_cell_756/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_756/ReluRelulstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_1Mullstm_cell_756/Sigmoid:y:0 lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_756/add_1AddV2lstm_cell_756/mul:z:0lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_2Sigmoidlstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_756/Relu_1Relulstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_2Mullstm_cell_756/Sigmoid_2:y:0"lstm_cell_756/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_756_matmul_readvariableop_resource.lstm_cell_756_matmul_1_readvariableop_resource-lstm_cell_756_biasadd_readvariableop_resource*
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
while_body_4587928*
condR
while_cond_4587927*K
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
NoOpNoOp%^lstm_cell_756/BiasAdd/ReadVariableOp$^lstm_cell_756/MatMul/ReadVariableOp&^lstm_cell_756/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_756/BiasAdd/ReadVariableOp$lstm_cell_756/BiasAdd/ReadVariableOp2J
#lstm_cell_756/MatMul/ReadVariableOp#lstm_cell_756/MatMul/ReadVariableOp2N
%lstm_cell_756/MatMul_1/ReadVariableOp%lstm_cell_756/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4584452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_756_4584476_0:	?0
while_lstm_cell_756_4584478_0:	d?,
while_lstm_cell_756_4584480_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_756_4584476:	?.
while_lstm_cell_756_4584478:	d?*
while_lstm_cell_756_4584480:	???+while/lstm_cell_756/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_756/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_756_4584476_0while_lstm_cell_756_4584478_0while_lstm_cell_756_4584480_0*
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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4584438?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_756/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_756/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_756/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_756/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_756_4584476while_lstm_cell_756_4584476_0"<
while_lstm_cell_756_4584478while_lstm_cell_756_4584478_0"<
while_lstm_cell_756_4584480while_lstm_cell_756_4584480_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_756/StatefulPartitionedCall+while/lstm_cell_756/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4587112

inputsH
5lstm_858_lstm_cell_756_matmul_readvariableop_resource:	?J
7lstm_858_lstm_cell_756_matmul_1_readvariableop_resource:	d?E
6lstm_858_lstm_cell_756_biasadd_readvariableop_resource:	?H
5lstm_859_lstm_cell_757_matmul_readvariableop_resource:	d?J
7lstm_859_lstm_cell_757_matmul_1_readvariableop_resource:	2?E
6lstm_859_lstm_cell_757_biasadd_readvariableop_resource:	?G
5lstm_860_lstm_cell_758_matmul_readvariableop_resource:2(I
7lstm_860_lstm_cell_758_matmul_1_readvariableop_resource:
(D
6lstm_860_lstm_cell_758_biasadd_readvariableop_resource:(:
(dense_286_matmul_readvariableop_resource:
7
)dense_286_biasadd_readvariableop_resource:
identity?? dense_286/BiasAdd/ReadVariableOp?dense_286/MatMul/ReadVariableOp?-lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp?,lstm_858/lstm_cell_756/MatMul/ReadVariableOp?.lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp?lstm_858/while?-lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp?,lstm_859/lstm_cell_757/MatMul/ReadVariableOp?.lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp?lstm_859/while?-lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp?,lstm_860/lstm_cell_758/MatMul/ReadVariableOp?.lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp?lstm_860/whileD
lstm_858/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_858/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_858/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_858/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_858/strided_sliceStridedSlicelstm_858/Shape:output:0%lstm_858/strided_slice/stack:output:0'lstm_858/strided_slice/stack_1:output:0'lstm_858/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_858/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_858/zeros/packedPacklstm_858/strided_slice:output:0 lstm_858/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_858/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_858/zerosFilllstm_858/zeros/packed:output:0lstm_858/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_858/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_858/zeros_1/packedPacklstm_858/strided_slice:output:0"lstm_858/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_858/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_858/zeros_1Fill lstm_858/zeros_1/packed:output:0lstm_858/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_858/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_858/transpose	Transposeinputs lstm_858/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_858/Shape_1Shapelstm_858/transpose:y:0*
T0*
_output_shapes
:h
lstm_858/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_858/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_858/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_858/strided_slice_1StridedSlicelstm_858/Shape_1:output:0'lstm_858/strided_slice_1/stack:output:0)lstm_858/strided_slice_1/stack_1:output:0)lstm_858/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_858/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_858/TensorArrayV2TensorListReserve-lstm_858/TensorArrayV2/element_shape:output:0!lstm_858/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_858/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_858/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_858/transpose:y:0Glstm_858/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_858/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_858/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_858/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_858/strided_slice_2StridedSlicelstm_858/transpose:y:0'lstm_858/strided_slice_2/stack:output:0)lstm_858/strided_slice_2/stack_1:output:0)lstm_858/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_858/lstm_cell_756/MatMul/ReadVariableOpReadVariableOp5lstm_858_lstm_cell_756_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_858/lstm_cell_756/MatMulMatMul!lstm_858/strided_slice_2:output:04lstm_858/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_858/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp7lstm_858_lstm_cell_756_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_858/lstm_cell_756/MatMul_1MatMullstm_858/zeros:output:06lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_858/lstm_cell_756/addAddV2'lstm_858/lstm_cell_756/MatMul:product:0)lstm_858/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_858/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp6lstm_858_lstm_cell_756_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_858/lstm_cell_756/BiasAddBiasAddlstm_858/lstm_cell_756/add:z:05lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_858/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_858/lstm_cell_756/splitSplit/lstm_858/lstm_cell_756/split/split_dim:output:0'lstm_858/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_858/lstm_cell_756/SigmoidSigmoid%lstm_858/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_858/lstm_cell_756/Sigmoid_1Sigmoid%lstm_858/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_858/lstm_cell_756/mulMul$lstm_858/lstm_cell_756/Sigmoid_1:y:0lstm_858/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_858/lstm_cell_756/ReluRelu%lstm_858/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_858/lstm_cell_756/mul_1Mul"lstm_858/lstm_cell_756/Sigmoid:y:0)lstm_858/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_858/lstm_cell_756/add_1AddV2lstm_858/lstm_cell_756/mul:z:0 lstm_858/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_858/lstm_cell_756/Sigmoid_2Sigmoid%lstm_858/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_858/lstm_cell_756/Relu_1Relu lstm_858/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_858/lstm_cell_756/mul_2Mul$lstm_858/lstm_cell_756/Sigmoid_2:y:0+lstm_858/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_858/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_858/TensorArrayV2_1TensorListReserve/lstm_858/TensorArrayV2_1/element_shape:output:0!lstm_858/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_858/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_858/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_858/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_858/whileWhile$lstm_858/while/loop_counter:output:0*lstm_858/while/maximum_iterations:output:0lstm_858/time:output:0!lstm_858/TensorArrayV2_1:handle:0lstm_858/zeros:output:0lstm_858/zeros_1:output:0!lstm_858/strided_slice_1:output:0@lstm_858/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_858_lstm_cell_756_matmul_readvariableop_resource7lstm_858_lstm_cell_756_matmul_1_readvariableop_resource6lstm_858_lstm_cell_756_biasadd_readvariableop_resource*
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
lstm_858_while_body_4586744*'
condR
lstm_858_while_cond_4586743*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_858/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_858/TensorArrayV2Stack/TensorListStackTensorListStacklstm_858/while:output:3Blstm_858/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_858/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_858/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_858/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_858/strided_slice_3StridedSlice4lstm_858/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_858/strided_slice_3/stack:output:0)lstm_858/strided_slice_3/stack_1:output:0)lstm_858/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_858/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_858/transpose_1	Transpose4lstm_858/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_858/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_858/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_859/ShapeShapelstm_858/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_859/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_859/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_859/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_859/strided_sliceStridedSlicelstm_859/Shape:output:0%lstm_859/strided_slice/stack:output:0'lstm_859/strided_slice/stack_1:output:0'lstm_859/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_859/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_859/zeros/packedPacklstm_859/strided_slice:output:0 lstm_859/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_859/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_859/zerosFilllstm_859/zeros/packed:output:0lstm_859/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_859/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_859/zeros_1/packedPacklstm_859/strided_slice:output:0"lstm_859/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_859/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_859/zeros_1Fill lstm_859/zeros_1/packed:output:0lstm_859/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_859/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_859/transpose	Transposelstm_858/transpose_1:y:0 lstm_859/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_859/Shape_1Shapelstm_859/transpose:y:0*
T0*
_output_shapes
:h
lstm_859/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_859/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_859/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_859/strided_slice_1StridedSlicelstm_859/Shape_1:output:0'lstm_859/strided_slice_1/stack:output:0)lstm_859/strided_slice_1/stack_1:output:0)lstm_859/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_859/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_859/TensorArrayV2TensorListReserve-lstm_859/TensorArrayV2/element_shape:output:0!lstm_859/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_859/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_859/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_859/transpose:y:0Glstm_859/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_859/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_859/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_859/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_859/strided_slice_2StridedSlicelstm_859/transpose:y:0'lstm_859/strided_slice_2/stack:output:0)lstm_859/strided_slice_2/stack_1:output:0)lstm_859/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_859/lstm_cell_757/MatMul/ReadVariableOpReadVariableOp5lstm_859_lstm_cell_757_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_859/lstm_cell_757/MatMulMatMul!lstm_859/strided_slice_2:output:04lstm_859/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_859/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp7lstm_859_lstm_cell_757_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_859/lstm_cell_757/MatMul_1MatMullstm_859/zeros:output:06lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_859/lstm_cell_757/addAddV2'lstm_859/lstm_cell_757/MatMul:product:0)lstm_859/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_859/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp6lstm_859_lstm_cell_757_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_859/lstm_cell_757/BiasAddBiasAddlstm_859/lstm_cell_757/add:z:05lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_859/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_859/lstm_cell_757/splitSplit/lstm_859/lstm_cell_757/split/split_dim:output:0'lstm_859/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_859/lstm_cell_757/SigmoidSigmoid%lstm_859/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_859/lstm_cell_757/Sigmoid_1Sigmoid%lstm_859/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_859/lstm_cell_757/mulMul$lstm_859/lstm_cell_757/Sigmoid_1:y:0lstm_859/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_859/lstm_cell_757/ReluRelu%lstm_859/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_859/lstm_cell_757/mul_1Mul"lstm_859/lstm_cell_757/Sigmoid:y:0)lstm_859/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_859/lstm_cell_757/add_1AddV2lstm_859/lstm_cell_757/mul:z:0 lstm_859/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_859/lstm_cell_757/Sigmoid_2Sigmoid%lstm_859/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_859/lstm_cell_757/Relu_1Relu lstm_859/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_859/lstm_cell_757/mul_2Mul$lstm_859/lstm_cell_757/Sigmoid_2:y:0+lstm_859/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_859/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_859/TensorArrayV2_1TensorListReserve/lstm_859/TensorArrayV2_1/element_shape:output:0!lstm_859/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_859/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_859/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_859/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_859/whileWhile$lstm_859/while/loop_counter:output:0*lstm_859/while/maximum_iterations:output:0lstm_859/time:output:0!lstm_859/TensorArrayV2_1:handle:0lstm_859/zeros:output:0lstm_859/zeros_1:output:0!lstm_859/strided_slice_1:output:0@lstm_859/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_859_lstm_cell_757_matmul_readvariableop_resource7lstm_859_lstm_cell_757_matmul_1_readvariableop_resource6lstm_859_lstm_cell_757_biasadd_readvariableop_resource*
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
lstm_859_while_body_4586883*'
condR
lstm_859_while_cond_4586882*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_859/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_859/TensorArrayV2Stack/TensorListStackTensorListStacklstm_859/while:output:3Blstm_859/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_859/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_859/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_859/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_859/strided_slice_3StridedSlice4lstm_859/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_859/strided_slice_3/stack:output:0)lstm_859/strided_slice_3/stack_1:output:0)lstm_859/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_859/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_859/transpose_1	Transpose4lstm_859/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_859/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_859/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_860/ShapeShapelstm_859/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_860/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_860/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_860/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_860/strided_sliceStridedSlicelstm_860/Shape:output:0%lstm_860/strided_slice/stack:output:0'lstm_860/strided_slice/stack_1:output:0'lstm_860/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_860/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_860/zeros/packedPacklstm_860/strided_slice:output:0 lstm_860/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_860/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_860/zerosFilllstm_860/zeros/packed:output:0lstm_860/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_860/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_860/zeros_1/packedPacklstm_860/strided_slice:output:0"lstm_860/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_860/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_860/zeros_1Fill lstm_860/zeros_1/packed:output:0lstm_860/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_860/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_860/transpose	Transposelstm_859/transpose_1:y:0 lstm_860/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_860/Shape_1Shapelstm_860/transpose:y:0*
T0*
_output_shapes
:h
lstm_860/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_860/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_860/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_860/strided_slice_1StridedSlicelstm_860/Shape_1:output:0'lstm_860/strided_slice_1/stack:output:0)lstm_860/strided_slice_1/stack_1:output:0)lstm_860/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_860/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_860/TensorArrayV2TensorListReserve-lstm_860/TensorArrayV2/element_shape:output:0!lstm_860/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_860/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_860/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_860/transpose:y:0Glstm_860/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_860/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_860/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_860/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_860/strided_slice_2StridedSlicelstm_860/transpose:y:0'lstm_860/strided_slice_2/stack:output:0)lstm_860/strided_slice_2/stack_1:output:0)lstm_860/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_860/lstm_cell_758/MatMul/ReadVariableOpReadVariableOp5lstm_860_lstm_cell_758_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_860/lstm_cell_758/MatMulMatMul!lstm_860/strided_slice_2:output:04lstm_860/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_860/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp7lstm_860_lstm_cell_758_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_860/lstm_cell_758/MatMul_1MatMullstm_860/zeros:output:06lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_860/lstm_cell_758/addAddV2'lstm_860/lstm_cell_758/MatMul:product:0)lstm_860/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_860/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp6lstm_860_lstm_cell_758_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_860/lstm_cell_758/BiasAddBiasAddlstm_860/lstm_cell_758/add:z:05lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_860/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_860/lstm_cell_758/splitSplit/lstm_860/lstm_cell_758/split/split_dim:output:0'lstm_860/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_860/lstm_cell_758/SigmoidSigmoid%lstm_860/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_860/lstm_cell_758/Sigmoid_1Sigmoid%lstm_860/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_860/lstm_cell_758/mulMul$lstm_860/lstm_cell_758/Sigmoid_1:y:0lstm_860/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_860/lstm_cell_758/ReluRelu%lstm_860/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_860/lstm_cell_758/mul_1Mul"lstm_860/lstm_cell_758/Sigmoid:y:0)lstm_860/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_860/lstm_cell_758/add_1AddV2lstm_860/lstm_cell_758/mul:z:0 lstm_860/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_860/lstm_cell_758/Sigmoid_2Sigmoid%lstm_860/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_860/lstm_cell_758/Relu_1Relu lstm_860/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_860/lstm_cell_758/mul_2Mul$lstm_860/lstm_cell_758/Sigmoid_2:y:0+lstm_860/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_860/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_860/TensorArrayV2_1TensorListReserve/lstm_860/TensorArrayV2_1/element_shape:output:0!lstm_860/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_860/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_860/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_860/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_860/whileWhile$lstm_860/while/loop_counter:output:0*lstm_860/while/maximum_iterations:output:0lstm_860/time:output:0!lstm_860/TensorArrayV2_1:handle:0lstm_860/zeros:output:0lstm_860/zeros_1:output:0!lstm_860/strided_slice_1:output:0@lstm_860/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_860_lstm_cell_758_matmul_readvariableop_resource7lstm_860_lstm_cell_758_matmul_1_readvariableop_resource6lstm_860_lstm_cell_758_biasadd_readvariableop_resource*
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
lstm_860_while_body_4587022*'
condR
lstm_860_while_cond_4587021*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_860/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_860/TensorArrayV2Stack/TensorListStackTensorListStacklstm_860/while:output:3Blstm_860/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_860/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_860/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_860/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_860/strided_slice_3StridedSlice4lstm_860/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_860/strided_slice_3/stack:output:0)lstm_860/strided_slice_3/stack_1:output:0)lstm_860/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_860/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_860/transpose_1	Transpose4lstm_860/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_860/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_860/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_286/MatMul/ReadVariableOpReadVariableOp(dense_286_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_286/MatMulMatMul!lstm_860/strided_slice_3:output:0'dense_286/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_286/BiasAdd/ReadVariableOpReadVariableOp)dense_286_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_286/BiasAddBiasAdddense_286/MatMul:product:0(dense_286/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_286/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_286/BiasAdd/ReadVariableOp ^dense_286/MatMul/ReadVariableOp.^lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp-^lstm_858/lstm_cell_756/MatMul/ReadVariableOp/^lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp^lstm_858/while.^lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp-^lstm_859/lstm_cell_757/MatMul/ReadVariableOp/^lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp^lstm_859/while.^lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp-^lstm_860/lstm_cell_758/MatMul/ReadVariableOp/^lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp^lstm_860/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_286/BiasAdd/ReadVariableOp dense_286/BiasAdd/ReadVariableOp2B
dense_286/MatMul/ReadVariableOpdense_286/MatMul/ReadVariableOp2^
-lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp-lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp2\
,lstm_858/lstm_cell_756/MatMul/ReadVariableOp,lstm_858/lstm_cell_756/MatMul/ReadVariableOp2`
.lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp.lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp2 
lstm_858/whilelstm_858/while2^
-lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp-lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp2\
,lstm_859/lstm_cell_757/MatMul/ReadVariableOp,lstm_859/lstm_cell_757/MatMul/ReadVariableOp2`
.lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp.lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp2 
lstm_859/whilelstm_859/while2^
-lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp-lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp2\
,lstm_860/lstm_cell_758/MatMul/ReadVariableOp,lstm_860/lstm_cell_758/MatMul/ReadVariableOp2`
.lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp.lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp2 
lstm_860/whilelstm_860/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4589302
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4589302___redundant_placeholder05
1while_while_cond_4589302___redundant_placeholder15
1while_while_cond_4589302___redundant_placeholder25
1while_while_cond_4589302___redundant_placeholder3
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4586086

inputs>
,lstm_cell_758_matmul_readvariableop_resource:2(@
.lstm_cell_758_matmul_1_readvariableop_resource:
(;
-lstm_cell_758_biasadd_readvariableop_resource:(
identity??$lstm_cell_758/BiasAdd/ReadVariableOp?#lstm_cell_758/MatMul/ReadVariableOp?%lstm_cell_758/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_758/MatMul/ReadVariableOpReadVariableOp,lstm_cell_758_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_758/MatMulMatMulstrided_slice_2:output:0+lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_758_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_758/MatMul_1MatMulzeros:output:0-lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_758/addAddV2lstm_cell_758/MatMul:product:0 lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_758_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_758/BiasAddBiasAddlstm_cell_758/add:z:0,lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_758/splitSplit&lstm_cell_758/split/split_dim:output:0lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_758/SigmoidSigmoidlstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_1Sigmoidlstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_758/mulMullstm_cell_758/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_758/ReluRelulstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_1Mullstm_cell_758/Sigmoid:y:0 lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_758/add_1AddV2lstm_cell_758/mul:z:0lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_2Sigmoidlstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_758/Relu_1Relulstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_2Mullstm_cell_758/Sigmoid_2:y:0"lstm_cell_758/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_758_matmul_readvariableop_resource.lstm_cell_758_matmul_1_readvariableop_resource-lstm_cell_758_biasadd_readvariableop_resource*
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
while_body_4586002*
condR
while_cond_4586001*K
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
NoOpNoOp%^lstm_cell_758/BiasAdd/ReadVariableOp$^lstm_cell_758/MatMul/ReadVariableOp&^lstm_cell_758/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_758/BiasAdd/ReadVariableOp$lstm_cell_758/BiasAdd/ReadVariableOp2J
#lstm_cell_758/MatMul/ReadVariableOp#lstm_cell_758/MatMul/ReadVariableOp2N
%lstm_cell_758/MatMul_1/ReadVariableOp%lstm_cell_758/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_758_layer_call_fn_4589619

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
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4585138o
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
?C
?

lstm_859_while_body_4587310.
*lstm_859_while_lstm_859_while_loop_counter4
0lstm_859_while_lstm_859_while_maximum_iterations
lstm_859_while_placeholder 
lstm_859_while_placeholder_1 
lstm_859_while_placeholder_2 
lstm_859_while_placeholder_3-
)lstm_859_while_lstm_859_strided_slice_1_0i
elstm_859_while_tensorarrayv2read_tensorlistgetitem_lstm_859_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_859_while_lstm_cell_757_matmul_readvariableop_resource_0:	d?R
?lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource_0:	2?M
>lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource_0:	?
lstm_859_while_identity
lstm_859_while_identity_1
lstm_859_while_identity_2
lstm_859_while_identity_3
lstm_859_while_identity_4
lstm_859_while_identity_5+
'lstm_859_while_lstm_859_strided_slice_1g
clstm_859_while_tensorarrayv2read_tensorlistgetitem_lstm_859_tensorarrayunstack_tensorlistfromtensorN
;lstm_859_while_lstm_cell_757_matmul_readvariableop_resource:	d?P
=lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource:	2?K
<lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource:	???3lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp?2lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp?4lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp?
@lstm_859/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_859/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_859_while_tensorarrayv2read_tensorlistgetitem_lstm_859_tensorarrayunstack_tensorlistfromtensor_0lstm_859_while_placeholderIlstm_859/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_859/while/lstm_cell_757/MatMul/ReadVariableOpReadVariableOp=lstm_859_while_lstm_cell_757_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_859/while/lstm_cell_757/MatMulMatMul9lstm_859/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp?lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_859/while/lstm_cell_757/MatMul_1MatMullstm_859_while_placeholder_2<lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_859/while/lstm_cell_757/addAddV2-lstm_859/while/lstm_cell_757/MatMul:product:0/lstm_859/while/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp>lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_859/while/lstm_cell_757/BiasAddBiasAdd$lstm_859/while/lstm_cell_757/add:z:0;lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_859/while/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_859/while/lstm_cell_757/splitSplit5lstm_859/while/lstm_cell_757/split/split_dim:output:0-lstm_859/while/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_859/while/lstm_cell_757/SigmoidSigmoid+lstm_859/while/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_859/while/lstm_cell_757/Sigmoid_1Sigmoid+lstm_859/while/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_859/while/lstm_cell_757/mulMul*lstm_859/while/lstm_cell_757/Sigmoid_1:y:0lstm_859_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_859/while/lstm_cell_757/ReluRelu+lstm_859/while/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_859/while/lstm_cell_757/mul_1Mul(lstm_859/while/lstm_cell_757/Sigmoid:y:0/lstm_859/while/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_859/while/lstm_cell_757/add_1AddV2$lstm_859/while/lstm_cell_757/mul:z:0&lstm_859/while/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_859/while/lstm_cell_757/Sigmoid_2Sigmoid+lstm_859/while/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_859/while/lstm_cell_757/Relu_1Relu&lstm_859/while/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_859/while/lstm_cell_757/mul_2Mul*lstm_859/while/lstm_cell_757/Sigmoid_2:y:01lstm_859/while/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_859/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_859_while_placeholder_1lstm_859_while_placeholder&lstm_859/while/lstm_cell_757/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_859/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_859/while/addAddV2lstm_859_while_placeholderlstm_859/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_859/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_859/while/add_1AddV2*lstm_859_while_lstm_859_while_loop_counterlstm_859/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_859/while/IdentityIdentitylstm_859/while/add_1:z:0^lstm_859/while/NoOp*
T0*
_output_shapes
: ?
lstm_859/while/Identity_1Identity0lstm_859_while_lstm_859_while_maximum_iterations^lstm_859/while/NoOp*
T0*
_output_shapes
: t
lstm_859/while/Identity_2Identitylstm_859/while/add:z:0^lstm_859/while/NoOp*
T0*
_output_shapes
: ?
lstm_859/while/Identity_3IdentityClstm_859/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_859/while/NoOp*
T0*
_output_shapes
: ?
lstm_859/while/Identity_4Identity&lstm_859/while/lstm_cell_757/mul_2:z:0^lstm_859/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_859/while/Identity_5Identity&lstm_859/while/lstm_cell_757/add_1:z:0^lstm_859/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_859/while/NoOpNoOp4^lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp3^lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp5^lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_859_while_identity lstm_859/while/Identity:output:0"?
lstm_859_while_identity_1"lstm_859/while/Identity_1:output:0"?
lstm_859_while_identity_2"lstm_859/while/Identity_2:output:0"?
lstm_859_while_identity_3"lstm_859/while/Identity_3:output:0"?
lstm_859_while_identity_4"lstm_859/while/Identity_4:output:0"?
lstm_859_while_identity_5"lstm_859/while/Identity_5:output:0"T
'lstm_859_while_lstm_859_strided_slice_1)lstm_859_while_lstm_859_strided_slice_1_0"~
<lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource>lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource_0"?
=lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource?lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource_0"|
;lstm_859_while_lstm_cell_757_matmul_readvariableop_resource=lstm_859_while_lstm_cell_757_matmul_readvariableop_resource_0"?
clstm_859_while_tensorarrayv2read_tensorlistgetitem_lstm_859_tensorarrayunstack_tensorlistfromtensorelstm_859_while_tensorarrayv2read_tensorlistgetitem_lstm_859_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp3lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp2h
2lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp2lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp2l
4lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp4lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4584642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4584642___redundant_placeholder05
1while_while_cond_4584642___redundant_placeholder15
1while_while_cond_4584642___redundant_placeholder25
1while_while_cond_4584642___redundant_placeholder3
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
*__inference_lstm_858_layer_call_fn_4587572

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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4585570s
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
while_cond_4586166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4586166___redundant_placeholder05
1while_while_cond_4586166___redundant_placeholder15
1while_while_cond_4586166___redundant_placeholder25
1while_while_cond_4586166___redundant_placeholder3
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
while_body_4586332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_756_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_756_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_756_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_756_matmul_readvariableop_resource:	?G
4while_lstm_cell_756_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_756_biasadd_readvariableop_resource:	???*while/lstm_cell_756/BiasAdd/ReadVariableOp?)while/lstm_cell_756/MatMul/ReadVariableOp?+while/lstm_cell_756/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_756/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_756_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_756/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_756_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_756/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_756/addAddV2$while/lstm_cell_756/MatMul:product:0&while/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_756_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_756/BiasAddBiasAddwhile/lstm_cell_756/add:z:02while/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_756/splitSplit,while/lstm_cell_756/split/split_dim:output:0$while/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_756/SigmoidSigmoid"while/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_1Sigmoid"while/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mulMul!while/lstm_cell_756/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_756/ReluRelu"while/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_1Mulwhile/lstm_cell_756/Sigmoid:y:0&while/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/add_1AddV2while/lstm_cell_756/mul:z:0while/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_2Sigmoid"while/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_756/Relu_1Reluwhile/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_2Mul!while/lstm_cell_756/Sigmoid_2:y:0(while/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_756/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_756/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_756/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_756/BiasAdd/ReadVariableOp*^while/lstm_cell_756/MatMul/ReadVariableOp,^while/lstm_cell_756/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_756_biasadd_readvariableop_resource5while_lstm_cell_756_biasadd_readvariableop_resource_0"n
4while_lstm_cell_756_matmul_1_readvariableop_resource6while_lstm_cell_756_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_756_matmul_readvariableop_resource4while_lstm_cell_756_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_756/BiasAdd/ReadVariableOp*while/lstm_cell_756/BiasAdd/ReadVariableOp2V
)while/lstm_cell_756/MatMul/ReadVariableOp)while/lstm_cell_756/MatMul/ReadVariableOp2Z
+while/lstm_cell_756/MatMul_1/ReadVariableOp+while/lstm_cell_756/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4587869
inputs_0?
,lstm_cell_756_matmul_readvariableop_resource:	?A
.lstm_cell_756_matmul_1_readvariableop_resource:	d?<
-lstm_cell_756_biasadd_readvariableop_resource:	?
identity??$lstm_cell_756/BiasAdd/ReadVariableOp?#lstm_cell_756/MatMul/ReadVariableOp?%lstm_cell_756/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_756/MatMul/ReadVariableOpReadVariableOp,lstm_cell_756_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_756/MatMulMatMulstrided_slice_2:output:0+lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_756_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_756/MatMul_1MatMulzeros:output:0-lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_756/addAddV2lstm_cell_756/MatMul:product:0 lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_756_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_756/BiasAddBiasAddlstm_cell_756/add:z:0,lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_756/splitSplit&lstm_cell_756/split/split_dim:output:0lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_756/SigmoidSigmoidlstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_1Sigmoidlstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_756/mulMullstm_cell_756/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_756/ReluRelulstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_1Mullstm_cell_756/Sigmoid:y:0 lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_756/add_1AddV2lstm_cell_756/mul:z:0lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_2Sigmoidlstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_756/Relu_1Relulstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_2Mullstm_cell_756/Sigmoid_2:y:0"lstm_cell_756/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_756_matmul_readvariableop_resource.lstm_cell_756_matmul_1_readvariableop_resource-lstm_cell_756_biasadd_readvariableop_resource*
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
while_body_4587785*
condR
while_cond_4587784*K
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
NoOpNoOp%^lstm_cell_756/BiasAdd/ReadVariableOp$^lstm_cell_756/MatMul/ReadVariableOp&^lstm_cell_756/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_756/BiasAdd/ReadVariableOp$lstm_cell_756/BiasAdd/ReadVariableOp2J
#lstm_cell_756/MatMul/ReadVariableOp#lstm_cell_756/MatMul/ReadVariableOp2N
%lstm_cell_756/MatMul_1/ReadVariableOp%lstm_cell_756/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_859_layer_call_fn_4588177
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4585062|
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
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4589668

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
?T
?
*sequential_286_lstm_859_while_body_4584142L
Hsequential_286_lstm_859_while_sequential_286_lstm_859_while_loop_counterR
Nsequential_286_lstm_859_while_sequential_286_lstm_859_while_maximum_iterations-
)sequential_286_lstm_859_while_placeholder/
+sequential_286_lstm_859_while_placeholder_1/
+sequential_286_lstm_859_while_placeholder_2/
+sequential_286_lstm_859_while_placeholder_3K
Gsequential_286_lstm_859_while_sequential_286_lstm_859_strided_slice_1_0?
?sequential_286_lstm_859_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_859_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_286_lstm_859_while_lstm_cell_757_matmul_readvariableop_resource_0:	d?a
Nsequential_286_lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource_0:	2?\
Msequential_286_lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource_0:	?*
&sequential_286_lstm_859_while_identity,
(sequential_286_lstm_859_while_identity_1,
(sequential_286_lstm_859_while_identity_2,
(sequential_286_lstm_859_while_identity_3,
(sequential_286_lstm_859_while_identity_4,
(sequential_286_lstm_859_while_identity_5I
Esequential_286_lstm_859_while_sequential_286_lstm_859_strided_slice_1?
?sequential_286_lstm_859_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_859_tensorarrayunstack_tensorlistfromtensor]
Jsequential_286_lstm_859_while_lstm_cell_757_matmul_readvariableop_resource:	d?_
Lsequential_286_lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource:	2?Z
Ksequential_286_lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource:	???Bsequential_286/lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp?Asequential_286/lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp?Csequential_286/lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp?
Osequential_286/lstm_859/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_286/lstm_859/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_286_lstm_859_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_859_tensorarrayunstack_tensorlistfromtensor_0)sequential_286_lstm_859_while_placeholderXsequential_286/lstm_859/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_286/lstm_859/while/lstm_cell_757/MatMul/ReadVariableOpReadVariableOpLsequential_286_lstm_859_while_lstm_cell_757_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_286/lstm_859/while/lstm_cell_757/MatMulMatMulHsequential_286/lstm_859/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_286/lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_286/lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOpNsequential_286_lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_286/lstm_859/while/lstm_cell_757/MatMul_1MatMul+sequential_286_lstm_859_while_placeholder_2Ksequential_286/lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_286/lstm_859/while/lstm_cell_757/addAddV2<sequential_286/lstm_859/while/lstm_cell_757/MatMul:product:0>sequential_286/lstm_859/while/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_286/lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOpMsequential_286_lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_286/lstm_859/while/lstm_cell_757/BiasAddBiasAdd3sequential_286/lstm_859/while/lstm_cell_757/add:z:0Jsequential_286/lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_286/lstm_859/while/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_286/lstm_859/while/lstm_cell_757/splitSplitDsequential_286/lstm_859/while/lstm_cell_757/split/split_dim:output:0<sequential_286/lstm_859/while/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_286/lstm_859/while/lstm_cell_757/SigmoidSigmoid:sequential_286/lstm_859/while/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_286/lstm_859/while/lstm_cell_757/Sigmoid_1Sigmoid:sequential_286/lstm_859/while/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_286/lstm_859/while/lstm_cell_757/mulMul9sequential_286/lstm_859/while/lstm_cell_757/Sigmoid_1:y:0+sequential_286_lstm_859_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_286/lstm_859/while/lstm_cell_757/ReluRelu:sequential_286/lstm_859/while/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_286/lstm_859/while/lstm_cell_757/mul_1Mul7sequential_286/lstm_859/while/lstm_cell_757/Sigmoid:y:0>sequential_286/lstm_859/while/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_286/lstm_859/while/lstm_cell_757/add_1AddV23sequential_286/lstm_859/while/lstm_cell_757/mul:z:05sequential_286/lstm_859/while/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_286/lstm_859/while/lstm_cell_757/Sigmoid_2Sigmoid:sequential_286/lstm_859/while/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_286/lstm_859/while/lstm_cell_757/Relu_1Relu5sequential_286/lstm_859/while/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_286/lstm_859/while/lstm_cell_757/mul_2Mul9sequential_286/lstm_859/while/lstm_cell_757/Sigmoid_2:y:0@sequential_286/lstm_859/while/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_286/lstm_859/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_286_lstm_859_while_placeholder_1)sequential_286_lstm_859_while_placeholder5sequential_286/lstm_859/while/lstm_cell_757/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_286/lstm_859/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_286/lstm_859/while/addAddV2)sequential_286_lstm_859_while_placeholder,sequential_286/lstm_859/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_286/lstm_859/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_286/lstm_859/while/add_1AddV2Hsequential_286_lstm_859_while_sequential_286_lstm_859_while_loop_counter.sequential_286/lstm_859/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_286/lstm_859/while/IdentityIdentity'sequential_286/lstm_859/while/add_1:z:0#^sequential_286/lstm_859/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_859/while/Identity_1IdentityNsequential_286_lstm_859_while_sequential_286_lstm_859_while_maximum_iterations#^sequential_286/lstm_859/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_859/while/Identity_2Identity%sequential_286/lstm_859/while/add:z:0#^sequential_286/lstm_859/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_859/while/Identity_3IdentityRsequential_286/lstm_859/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_286/lstm_859/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_859/while/Identity_4Identity5sequential_286/lstm_859/while/lstm_cell_757/mul_2:z:0#^sequential_286/lstm_859/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_286/lstm_859/while/Identity_5Identity5sequential_286/lstm_859/while/lstm_cell_757/add_1:z:0#^sequential_286/lstm_859/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_286/lstm_859/while/NoOpNoOpC^sequential_286/lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOpB^sequential_286/lstm_859/while/lstm_cell_757/MatMul/ReadVariableOpD^sequential_286/lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_286_lstm_859_while_identity/sequential_286/lstm_859/while/Identity:output:0"]
(sequential_286_lstm_859_while_identity_11sequential_286/lstm_859/while/Identity_1:output:0"]
(sequential_286_lstm_859_while_identity_21sequential_286/lstm_859/while/Identity_2:output:0"]
(sequential_286_lstm_859_while_identity_31sequential_286/lstm_859/while/Identity_3:output:0"]
(sequential_286_lstm_859_while_identity_41sequential_286/lstm_859/while/Identity_4:output:0"]
(sequential_286_lstm_859_while_identity_51sequential_286/lstm_859/while/Identity_5:output:0"?
Ksequential_286_lstm_859_while_lstm_cell_757_biasadd_readvariableop_resourceMsequential_286_lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource_0"?
Lsequential_286_lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resourceNsequential_286_lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource_0"?
Jsequential_286_lstm_859_while_lstm_cell_757_matmul_readvariableop_resourceLsequential_286_lstm_859_while_lstm_cell_757_matmul_readvariableop_resource_0"?
Esequential_286_lstm_859_while_sequential_286_lstm_859_strided_slice_1Gsequential_286_lstm_859_while_sequential_286_lstm_859_strided_slice_1_0"?
?sequential_286_lstm_859_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_859_tensorarrayunstack_tensorlistfromtensor?sequential_286_lstm_859_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_859_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_286/lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOpBsequential_286/lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp2?
Asequential_286/lstm_859/while/lstm_cell_757/MatMul/ReadVariableOpAsequential_286/lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp2?
Csequential_286/lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOpCsequential_286/lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_858_while_cond_4586743.
*lstm_858_while_lstm_858_while_loop_counter4
0lstm_858_while_lstm_858_while_maximum_iterations
lstm_858_while_placeholder 
lstm_858_while_placeholder_1 
lstm_858_while_placeholder_2 
lstm_858_while_placeholder_30
,lstm_858_while_less_lstm_858_strided_slice_1G
Clstm_858_while_lstm_858_while_cond_4586743___redundant_placeholder0G
Clstm_858_while_lstm_858_while_cond_4586743___redundant_placeholder1G
Clstm_858_while_lstm_858_while_cond_4586743___redundant_placeholder2G
Clstm_858_while_lstm_858_while_cond_4586743___redundant_placeholder3
lstm_858_while_identity
?
lstm_858/while/LessLesslstm_858_while_placeholder,lstm_858_while_less_lstm_858_strided_slice_1*
T0*
_output_shapes
: ]
lstm_858/while/IdentityIdentitylstm_858/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_858_while_identity lstm_858/while/Identity:output:0*(
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
while_cond_4587927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4587927___redundant_placeholder05
1while_while_cond_4587927___redundant_placeholder15
1while_while_cond_4587927___redundant_placeholder25
1while_while_cond_4587927___redundant_placeholder3
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
while_body_4584802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_757_4584826_0:	d?0
while_lstm_cell_757_4584828_0:	2?,
while_lstm_cell_757_4584830_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_757_4584826:	d?.
while_lstm_cell_757_4584828:	2?*
while_lstm_cell_757_4584830:	???+while/lstm_cell_757/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_757/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_757_4584826_0while_lstm_cell_757_4584828_0while_lstm_cell_757_4584830_0*
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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4584788?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_757/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_757/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_757/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_757/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_757_4584826while_lstm_cell_757_4584826_0"<
while_lstm_cell_757_4584828while_lstm_cell_757_4584828_0"<
while_lstm_cell_757_4584830while_lstm_cell_757_4584830_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_757/StatefulPartitionedCall+while/lstm_cell_757/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4589159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4589159___redundant_placeholder05
1while_while_cond_4589159___redundant_placeholder15
1while_while_cond_4589159___redundant_placeholder25
1while_while_cond_4589159___redundant_placeholder3
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
/__inference_lstm_cell_757_layer_call_fn_4589538

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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4584934o
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
while_body_4589017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_758_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_758_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_758_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_758_matmul_readvariableop_resource:2(F
4while_lstm_cell_758_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_758_biasadd_readvariableop_resource:(??*while/lstm_cell_758/BiasAdd/ReadVariableOp?)while/lstm_cell_758/MatMul/ReadVariableOp?+while/lstm_cell_758/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_758/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_758_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_758/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_758_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_758/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_758/addAddV2$while/lstm_cell_758/MatMul:product:0&while/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_758_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_758/BiasAddBiasAddwhile/lstm_cell_758/add:z:02while/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_758/splitSplit,while/lstm_cell_758/split/split_dim:output:0$while/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_758/SigmoidSigmoid"while/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_1Sigmoid"while/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mulMul!while/lstm_cell_758/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_758/ReluRelu"while/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_1Mulwhile/lstm_cell_758/Sigmoid:y:0&while/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/add_1AddV2while/lstm_cell_758/mul:z:0while/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_2Sigmoid"while/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_758/Relu_1Reluwhile/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_2Mul!while/lstm_cell_758/Sigmoid_2:y:0(while/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_758/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_758/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_758/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_758/BiasAdd/ReadVariableOp*^while/lstm_cell_758/MatMul/ReadVariableOp,^while/lstm_cell_758/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_758_biasadd_readvariableop_resource5while_lstm_cell_758_biasadd_readvariableop_resource_0"n
4while_lstm_cell_758_matmul_1_readvariableop_resource6while_lstm_cell_758_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_758_matmul_readvariableop_resource4while_lstm_cell_758_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_758/BiasAdd/ReadVariableOp*while/lstm_cell_758/BiasAdd/ReadVariableOp2V
)while/lstm_cell_758/MatMul/ReadVariableOp)while/lstm_cell_758/MatMul/ReadVariableOp2Z
+while/lstm_cell_758/MatMul_1/ReadVariableOp+while/lstm_cell_758/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4588258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_757_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_757_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_757_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_757_matmul_readvariableop_resource:	d?G
4while_lstm_cell_757_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_757_biasadd_readvariableop_resource:	???*while/lstm_cell_757/BiasAdd/ReadVariableOp?)while/lstm_cell_757/MatMul/ReadVariableOp?+while/lstm_cell_757/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_757/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_757_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_757/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_757_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_757/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_757/addAddV2$while/lstm_cell_757/MatMul:product:0&while/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_757_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_757/BiasAddBiasAddwhile/lstm_cell_757/add:z:02while/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_757/splitSplit,while/lstm_cell_757/split/split_dim:output:0$while/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_757/SigmoidSigmoid"while/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_1Sigmoid"while/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mulMul!while/lstm_cell_757/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_757/ReluRelu"while/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_1Mulwhile/lstm_cell_757/Sigmoid:y:0&while/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/add_1AddV2while/lstm_cell_757/mul:z:0while/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_2Sigmoid"while/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_757/Relu_1Reluwhile/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_2Mul!while/lstm_cell_757/Sigmoid_2:y:0(while/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_757/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_757/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_757/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_757/BiasAdd/ReadVariableOp*^while/lstm_cell_757/MatMul/ReadVariableOp,^while/lstm_cell_757/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_757_biasadd_readvariableop_resource5while_lstm_cell_757_biasadd_readvariableop_resource_0"n
4while_lstm_cell_757_matmul_1_readvariableop_resource6while_lstm_cell_757_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_757_matmul_readvariableop_resource4while_lstm_cell_757_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_757/BiasAdd/ReadVariableOp*while/lstm_cell_757/BiasAdd/ReadVariableOp2V
)while/lstm_cell_757/MatMul/ReadVariableOp)while/lstm_cell_757/MatMul/ReadVariableOp2Z
+while/lstm_cell_757/MatMul_1/ReadVariableOp+while/lstm_cell_757/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4585343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_758_4585367_0:2(/
while_lstm_cell_758_4585369_0:
(+
while_lstm_cell_758_4585371_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_758_4585367:2(-
while_lstm_cell_758_4585369:
()
while_lstm_cell_758_4585371:(??+while/lstm_cell_758/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_758/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_758_4585367_0while_lstm_cell_758_4585369_0while_lstm_cell_758_4585371_0*
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
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4585284?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_758/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_758/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_758/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_758/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_758_4585367while_lstm_cell_758_4585367_0"<
while_lstm_cell_758_4585369while_lstm_cell_758_4585369_0"<
while_lstm_cell_758_4585371while_lstm_cell_758_4585371_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_758/StatefulPartitionedCall+while/lstm_cell_758/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_860_while_cond_4587021.
*lstm_860_while_lstm_860_while_loop_counter4
0lstm_860_while_lstm_860_while_maximum_iterations
lstm_860_while_placeholder 
lstm_860_while_placeholder_1 
lstm_860_while_placeholder_2 
lstm_860_while_placeholder_30
,lstm_860_while_less_lstm_860_strided_slice_1G
Clstm_860_while_lstm_860_while_cond_4587021___redundant_placeholder0G
Clstm_860_while_lstm_860_while_cond_4587021___redundant_placeholder1G
Clstm_860_while_lstm_860_while_cond_4587021___redundant_placeholder2G
Clstm_860_while_lstm_860_while_cond_4587021___redundant_placeholder3
lstm_860_while_identity
?
lstm_860/while/LessLesslstm_860_while_placeholder,lstm_860_while_less_lstm_860_strided_slice_1*
T0*
_output_shapes
: ]
lstm_860/while/IdentityIdentitylstm_860/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_860_while_identity lstm_860/while/Identity:output:0*(
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
while_body_4588401
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_757_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_757_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_757_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_757_matmul_readvariableop_resource:	d?G
4while_lstm_cell_757_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_757_biasadd_readvariableop_resource:	???*while/lstm_cell_757/BiasAdd/ReadVariableOp?)while/lstm_cell_757/MatMul/ReadVariableOp?+while/lstm_cell_757/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_757/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_757_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_757/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_757_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_757/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_757/addAddV2$while/lstm_cell_757/MatMul:product:0&while/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_757_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_757/BiasAddBiasAddwhile/lstm_cell_757/add:z:02while/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_757/splitSplit,while/lstm_cell_757/split/split_dim:output:0$while/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_757/SigmoidSigmoid"while/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_1Sigmoid"while/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mulMul!while/lstm_cell_757/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_757/ReluRelu"while/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_1Mulwhile/lstm_cell_757/Sigmoid:y:0&while/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/add_1AddV2while/lstm_cell_757/mul:z:0while/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_2Sigmoid"while/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_757/Relu_1Reluwhile/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_2Mul!while/lstm_cell_757/Sigmoid_2:y:0(while/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_757/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_757/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_757/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_757/BiasAdd/ReadVariableOp*^while/lstm_cell_757/MatMul/ReadVariableOp,^while/lstm_cell_757/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_757_biasadd_readvariableop_resource5while_lstm_cell_757_biasadd_readvariableop_resource_0"n
4while_lstm_cell_757_matmul_1_readvariableop_resource6while_lstm_cell_757_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_757_matmul_readvariableop_resource4while_lstm_cell_757_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_757/BiasAdd/ReadVariableOp*while/lstm_cell_757/BiasAdd/ReadVariableOp2V
)while/lstm_cell_757/MatMul/ReadVariableOp)while/lstm_cell_757/MatMul/ReadVariableOp2Z
+while/lstm_cell_757/MatMul_1/ReadVariableOp+while/lstm_cell_757/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_286_lstm_860_while_cond_4584280L
Hsequential_286_lstm_860_while_sequential_286_lstm_860_while_loop_counterR
Nsequential_286_lstm_860_while_sequential_286_lstm_860_while_maximum_iterations-
)sequential_286_lstm_860_while_placeholder/
+sequential_286_lstm_860_while_placeholder_1/
+sequential_286_lstm_860_while_placeholder_2/
+sequential_286_lstm_860_while_placeholder_3N
Jsequential_286_lstm_860_while_less_sequential_286_lstm_860_strided_slice_1e
asequential_286_lstm_860_while_sequential_286_lstm_860_while_cond_4584280___redundant_placeholder0e
asequential_286_lstm_860_while_sequential_286_lstm_860_while_cond_4584280___redundant_placeholder1e
asequential_286_lstm_860_while_sequential_286_lstm_860_while_cond_4584280___redundant_placeholder2e
asequential_286_lstm_860_while_sequential_286_lstm_860_while_cond_4584280___redundant_placeholder3*
&sequential_286_lstm_860_while_identity
?
"sequential_286/lstm_860/while/LessLess)sequential_286_lstm_860_while_placeholderJsequential_286_lstm_860_while_less_sequential_286_lstm_860_strided_slice_1*
T0*
_output_shapes
: {
&sequential_286/lstm_860/while/IdentityIdentity&sequential_286/lstm_860/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_286_lstm_860_while_identity/sequential_286/lstm_860/while/Identity:output:0*(
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
while_body_4589303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_758_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_758_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_758_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_758_matmul_readvariableop_resource:2(F
4while_lstm_cell_758_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_758_biasadd_readvariableop_resource:(??*while/lstm_cell_758/BiasAdd/ReadVariableOp?)while/lstm_cell_758/MatMul/ReadVariableOp?+while/lstm_cell_758/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_758/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_758_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_758/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_758_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_758/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_758/addAddV2$while/lstm_cell_758/MatMul:product:0&while/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_758_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_758/BiasAddBiasAddwhile/lstm_cell_758/add:z:02while/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_758/splitSplit,while/lstm_cell_758/split/split_dim:output:0$while/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_758/SigmoidSigmoid"while/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_1Sigmoid"while/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mulMul!while/lstm_cell_758/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_758/ReluRelu"while/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_1Mulwhile/lstm_cell_758/Sigmoid:y:0&while/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/add_1AddV2while/lstm_cell_758/mul:z:0while/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_2Sigmoid"while/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_758/Relu_1Reluwhile/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_2Mul!while/lstm_cell_758/Sigmoid_2:y:0(while/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_758/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_758/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_758/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_758/BiasAdd/ReadVariableOp*^while/lstm_cell_758/MatMul/ReadVariableOp,^while/lstm_cell_758/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_758_biasadd_readvariableop_resource5while_lstm_cell_758_biasadd_readvariableop_resource_0"n
4while_lstm_cell_758_matmul_1_readvariableop_resource6while_lstm_cell_758_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_758_matmul_readvariableop_resource4while_lstm_cell_758_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_758/BiasAdd/ReadVariableOp*while/lstm_cell_758/BiasAdd/ReadVariableOp2V
)while/lstm_cell_758/MatMul/ReadVariableOp)while/lstm_cell_758/MatMul/ReadVariableOp2Z
+while/lstm_cell_758/MatMul_1/ReadVariableOp+while/lstm_cell_758/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4585720

inputs?
,lstm_cell_757_matmul_readvariableop_resource:	d?A
.lstm_cell_757_matmul_1_readvariableop_resource:	2?<
-lstm_cell_757_biasadd_readvariableop_resource:	?
identity??$lstm_cell_757/BiasAdd/ReadVariableOp?#lstm_cell_757/MatMul/ReadVariableOp?%lstm_cell_757/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_757/MatMul/ReadVariableOpReadVariableOp,lstm_cell_757_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_757/MatMulMatMulstrided_slice_2:output:0+lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_757_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_757/MatMul_1MatMulzeros:output:0-lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_757/addAddV2lstm_cell_757/MatMul:product:0 lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_757_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_757/BiasAddBiasAddlstm_cell_757/add:z:0,lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_757/splitSplit&lstm_cell_757/split/split_dim:output:0lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_757/SigmoidSigmoidlstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_1Sigmoidlstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_757/mulMullstm_cell_757/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_757/ReluRelulstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_1Mullstm_cell_757/Sigmoid:y:0 lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_757/add_1AddV2lstm_cell_757/mul:z:0lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_2Sigmoidlstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_757/Relu_1Relulstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_2Mullstm_cell_757/Sigmoid_2:y:0"lstm_cell_757/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_757_matmul_readvariableop_resource.lstm_cell_757_matmul_1_readvariableop_resource-lstm_cell_757_biasadd_readvariableop_resource*
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
while_body_4585636*
condR
while_cond_4585635*K
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
NoOpNoOp%^lstm_cell_757/BiasAdd/ReadVariableOp$^lstm_cell_757/MatMul/ReadVariableOp&^lstm_cell_757/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_757/BiasAdd/ReadVariableOp$lstm_cell_757/BiasAdd/ReadVariableOp2J
#lstm_cell_757/MatMul/ReadVariableOp#lstm_cell_757/MatMul/ReadVariableOp2N
%lstm_cell_757/MatMul_1/ReadVariableOp%lstm_cell_757/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4584438

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
?C
?

lstm_859_while_body_4586883.
*lstm_859_while_lstm_859_while_loop_counter4
0lstm_859_while_lstm_859_while_maximum_iterations
lstm_859_while_placeholder 
lstm_859_while_placeholder_1 
lstm_859_while_placeholder_2 
lstm_859_while_placeholder_3-
)lstm_859_while_lstm_859_strided_slice_1_0i
elstm_859_while_tensorarrayv2read_tensorlistgetitem_lstm_859_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_859_while_lstm_cell_757_matmul_readvariableop_resource_0:	d?R
?lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource_0:	2?M
>lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource_0:	?
lstm_859_while_identity
lstm_859_while_identity_1
lstm_859_while_identity_2
lstm_859_while_identity_3
lstm_859_while_identity_4
lstm_859_while_identity_5+
'lstm_859_while_lstm_859_strided_slice_1g
clstm_859_while_tensorarrayv2read_tensorlistgetitem_lstm_859_tensorarrayunstack_tensorlistfromtensorN
;lstm_859_while_lstm_cell_757_matmul_readvariableop_resource:	d?P
=lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource:	2?K
<lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource:	???3lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp?2lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp?4lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp?
@lstm_859/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_859/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_859_while_tensorarrayv2read_tensorlistgetitem_lstm_859_tensorarrayunstack_tensorlistfromtensor_0lstm_859_while_placeholderIlstm_859/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_859/while/lstm_cell_757/MatMul/ReadVariableOpReadVariableOp=lstm_859_while_lstm_cell_757_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_859/while/lstm_cell_757/MatMulMatMul9lstm_859/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp?lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_859/while/lstm_cell_757/MatMul_1MatMullstm_859_while_placeholder_2<lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_859/while/lstm_cell_757/addAddV2-lstm_859/while/lstm_cell_757/MatMul:product:0/lstm_859/while/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp>lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_859/while/lstm_cell_757/BiasAddBiasAdd$lstm_859/while/lstm_cell_757/add:z:0;lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_859/while/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_859/while/lstm_cell_757/splitSplit5lstm_859/while/lstm_cell_757/split/split_dim:output:0-lstm_859/while/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_859/while/lstm_cell_757/SigmoidSigmoid+lstm_859/while/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_859/while/lstm_cell_757/Sigmoid_1Sigmoid+lstm_859/while/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_859/while/lstm_cell_757/mulMul*lstm_859/while/lstm_cell_757/Sigmoid_1:y:0lstm_859_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_859/while/lstm_cell_757/ReluRelu+lstm_859/while/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_859/while/lstm_cell_757/mul_1Mul(lstm_859/while/lstm_cell_757/Sigmoid:y:0/lstm_859/while/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_859/while/lstm_cell_757/add_1AddV2$lstm_859/while/lstm_cell_757/mul:z:0&lstm_859/while/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_859/while/lstm_cell_757/Sigmoid_2Sigmoid+lstm_859/while/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_859/while/lstm_cell_757/Relu_1Relu&lstm_859/while/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_859/while/lstm_cell_757/mul_2Mul*lstm_859/while/lstm_cell_757/Sigmoid_2:y:01lstm_859/while/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_859/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_859_while_placeholder_1lstm_859_while_placeholder&lstm_859/while/lstm_cell_757/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_859/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_859/while/addAddV2lstm_859_while_placeholderlstm_859/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_859/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_859/while/add_1AddV2*lstm_859_while_lstm_859_while_loop_counterlstm_859/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_859/while/IdentityIdentitylstm_859/while/add_1:z:0^lstm_859/while/NoOp*
T0*
_output_shapes
: ?
lstm_859/while/Identity_1Identity0lstm_859_while_lstm_859_while_maximum_iterations^lstm_859/while/NoOp*
T0*
_output_shapes
: t
lstm_859/while/Identity_2Identitylstm_859/while/add:z:0^lstm_859/while/NoOp*
T0*
_output_shapes
: ?
lstm_859/while/Identity_3IdentityClstm_859/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_859/while/NoOp*
T0*
_output_shapes
: ?
lstm_859/while/Identity_4Identity&lstm_859/while/lstm_cell_757/mul_2:z:0^lstm_859/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_859/while/Identity_5Identity&lstm_859/while/lstm_cell_757/add_1:z:0^lstm_859/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_859/while/NoOpNoOp4^lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp3^lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp5^lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_859_while_identity lstm_859/while/Identity:output:0"?
lstm_859_while_identity_1"lstm_859/while/Identity_1:output:0"?
lstm_859_while_identity_2"lstm_859/while/Identity_2:output:0"?
lstm_859_while_identity_3"lstm_859/while/Identity_3:output:0"?
lstm_859_while_identity_4"lstm_859/while/Identity_4:output:0"?
lstm_859_while_identity_5"lstm_859/while/Identity_5:output:0"T
'lstm_859_while_lstm_859_strided_slice_1)lstm_859_while_lstm_859_strided_slice_1_0"~
<lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource>lstm_859_while_lstm_cell_757_biasadd_readvariableop_resource_0"?
=lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource?lstm_859_while_lstm_cell_757_matmul_1_readvariableop_resource_0"|
;lstm_859_while_lstm_cell_757_matmul_readvariableop_resource=lstm_859_while_lstm_cell_757_matmul_readvariableop_resource_0"?
clstm_859_while_tensorarrayv2read_tensorlistgetitem_lstm_859_tensorarrayunstack_tensorlistfromtensorelstm_859_while_tensorarrayv2read_tensorlistgetitem_lstm_859_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp3lstm_859/while/lstm_cell_757/BiasAdd/ReadVariableOp2h
2lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp2lstm_859/while/lstm_cell_757/MatMul/ReadVariableOp2l
4lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp4lstm_859/while/lstm_cell_757/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4585635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4585635___redundant_placeholder05
1while_while_cond_4585635___redundant_placeholder15
1while_while_cond_4585635___redundant_placeholder25
1while_while_cond_4585635___redundant_placeholder3
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
?W
?
 __inference__traced_save_4589843
file_prefix/
+savev2_dense_286_kernel_read_readvariableop-
)savev2_dense_286_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_858_lstm_cell_858_kernel_read_readvariableopF
Bsavev2_lstm_858_lstm_cell_858_recurrent_kernel_read_readvariableop:
6savev2_lstm_858_lstm_cell_858_bias_read_readvariableop<
8savev2_lstm_859_lstm_cell_859_kernel_read_readvariableopF
Bsavev2_lstm_859_lstm_cell_859_recurrent_kernel_read_readvariableop:
6savev2_lstm_859_lstm_cell_859_bias_read_readvariableop<
8savev2_lstm_860_lstm_cell_860_kernel_read_readvariableopF
Bsavev2_lstm_860_lstm_cell_860_recurrent_kernel_read_readvariableop:
6savev2_lstm_860_lstm_cell_860_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_286_kernel_m_read_readvariableop4
0savev2_adam_dense_286_bias_m_read_readvariableopC
?savev2_adam_lstm_858_lstm_cell_858_kernel_m_read_readvariableopM
Isavev2_adam_lstm_858_lstm_cell_858_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_858_lstm_cell_858_bias_m_read_readvariableopC
?savev2_adam_lstm_859_lstm_cell_859_kernel_m_read_readvariableopM
Isavev2_adam_lstm_859_lstm_cell_859_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_859_lstm_cell_859_bias_m_read_readvariableopC
?savev2_adam_lstm_860_lstm_cell_860_kernel_m_read_readvariableopM
Isavev2_adam_lstm_860_lstm_cell_860_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_860_lstm_cell_860_bias_m_read_readvariableop6
2savev2_adam_dense_286_kernel_v_read_readvariableop4
0savev2_adam_dense_286_bias_v_read_readvariableopC
?savev2_adam_lstm_858_lstm_cell_858_kernel_v_read_readvariableopM
Isavev2_adam_lstm_858_lstm_cell_858_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_858_lstm_cell_858_bias_v_read_readvariableopC
?savev2_adam_lstm_859_lstm_cell_859_kernel_v_read_readvariableopM
Isavev2_adam_lstm_859_lstm_cell_859_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_859_lstm_cell_859_bias_v_read_readvariableopC
?savev2_adam_lstm_860_lstm_cell_860_kernel_v_read_readvariableopM
Isavev2_adam_lstm_860_lstm_cell_860_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_860_lstm_cell_860_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_286_kernel_read_readvariableop)savev2_dense_286_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_858_lstm_cell_858_kernel_read_readvariableopBsavev2_lstm_858_lstm_cell_858_recurrent_kernel_read_readvariableop6savev2_lstm_858_lstm_cell_858_bias_read_readvariableop8savev2_lstm_859_lstm_cell_859_kernel_read_readvariableopBsavev2_lstm_859_lstm_cell_859_recurrent_kernel_read_readvariableop6savev2_lstm_859_lstm_cell_859_bias_read_readvariableop8savev2_lstm_860_lstm_cell_860_kernel_read_readvariableopBsavev2_lstm_860_lstm_cell_860_recurrent_kernel_read_readvariableop6savev2_lstm_860_lstm_cell_860_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_286_kernel_m_read_readvariableop0savev2_adam_dense_286_bias_m_read_readvariableop?savev2_adam_lstm_858_lstm_cell_858_kernel_m_read_readvariableopIsavev2_adam_lstm_858_lstm_cell_858_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_858_lstm_cell_858_bias_m_read_readvariableop?savev2_adam_lstm_859_lstm_cell_859_kernel_m_read_readvariableopIsavev2_adam_lstm_859_lstm_cell_859_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_859_lstm_cell_859_bias_m_read_readvariableop?savev2_adam_lstm_860_lstm_cell_860_kernel_m_read_readvariableopIsavev2_adam_lstm_860_lstm_cell_860_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_860_lstm_cell_860_bias_m_read_readvariableop2savev2_adam_dense_286_kernel_v_read_readvariableop0savev2_adam_dense_286_bias_v_read_readvariableop?savev2_adam_lstm_858_lstm_cell_858_kernel_v_read_readvariableopIsavev2_adam_lstm_858_lstm_cell_858_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_858_lstm_cell_858_bias_v_read_readvariableop?savev2_adam_lstm_859_lstm_cell_859_kernel_v_read_readvariableopIsavev2_adam_lstm_859_lstm_cell_859_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_859_lstm_cell_859_bias_v_read_readvariableop?savev2_adam_lstm_860_lstm_cell_860_kernel_v_read_readvariableopIsavev2_adam_lstm_860_lstm_cell_860_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_860_lstm_cell_860_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4589472

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

lstm_858_while_body_4587171.
*lstm_858_while_lstm_858_while_loop_counter4
0lstm_858_while_lstm_858_while_maximum_iterations
lstm_858_while_placeholder 
lstm_858_while_placeholder_1 
lstm_858_while_placeholder_2 
lstm_858_while_placeholder_3-
)lstm_858_while_lstm_858_strided_slice_1_0i
elstm_858_while_tensorarrayv2read_tensorlistgetitem_lstm_858_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_858_while_lstm_cell_756_matmul_readvariableop_resource_0:	?R
?lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource_0:	d?M
>lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource_0:	?
lstm_858_while_identity
lstm_858_while_identity_1
lstm_858_while_identity_2
lstm_858_while_identity_3
lstm_858_while_identity_4
lstm_858_while_identity_5+
'lstm_858_while_lstm_858_strided_slice_1g
clstm_858_while_tensorarrayv2read_tensorlistgetitem_lstm_858_tensorarrayunstack_tensorlistfromtensorN
;lstm_858_while_lstm_cell_756_matmul_readvariableop_resource:	?P
=lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource:	d?K
<lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource:	???3lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp?2lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp?4lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp?
@lstm_858/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_858/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_858_while_tensorarrayv2read_tensorlistgetitem_lstm_858_tensorarrayunstack_tensorlistfromtensor_0lstm_858_while_placeholderIlstm_858/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_858/while/lstm_cell_756/MatMul/ReadVariableOpReadVariableOp=lstm_858_while_lstm_cell_756_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_858/while/lstm_cell_756/MatMulMatMul9lstm_858/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp?lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_858/while/lstm_cell_756/MatMul_1MatMullstm_858_while_placeholder_2<lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_858/while/lstm_cell_756/addAddV2-lstm_858/while/lstm_cell_756/MatMul:product:0/lstm_858/while/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp>lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_858/while/lstm_cell_756/BiasAddBiasAdd$lstm_858/while/lstm_cell_756/add:z:0;lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_858/while/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_858/while/lstm_cell_756/splitSplit5lstm_858/while/lstm_cell_756/split/split_dim:output:0-lstm_858/while/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_858/while/lstm_cell_756/SigmoidSigmoid+lstm_858/while/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_858/while/lstm_cell_756/Sigmoid_1Sigmoid+lstm_858/while/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_858/while/lstm_cell_756/mulMul*lstm_858/while/lstm_cell_756/Sigmoid_1:y:0lstm_858_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_858/while/lstm_cell_756/ReluRelu+lstm_858/while/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_858/while/lstm_cell_756/mul_1Mul(lstm_858/while/lstm_cell_756/Sigmoid:y:0/lstm_858/while/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_858/while/lstm_cell_756/add_1AddV2$lstm_858/while/lstm_cell_756/mul:z:0&lstm_858/while/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_858/while/lstm_cell_756/Sigmoid_2Sigmoid+lstm_858/while/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_858/while/lstm_cell_756/Relu_1Relu&lstm_858/while/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_858/while/lstm_cell_756/mul_2Mul*lstm_858/while/lstm_cell_756/Sigmoid_2:y:01lstm_858/while/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_858/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_858_while_placeholder_1lstm_858_while_placeholder&lstm_858/while/lstm_cell_756/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_858/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_858/while/addAddV2lstm_858_while_placeholderlstm_858/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_858/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_858/while/add_1AddV2*lstm_858_while_lstm_858_while_loop_counterlstm_858/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_858/while/IdentityIdentitylstm_858/while/add_1:z:0^lstm_858/while/NoOp*
T0*
_output_shapes
: ?
lstm_858/while/Identity_1Identity0lstm_858_while_lstm_858_while_maximum_iterations^lstm_858/while/NoOp*
T0*
_output_shapes
: t
lstm_858/while/Identity_2Identitylstm_858/while/add:z:0^lstm_858/while/NoOp*
T0*
_output_shapes
: ?
lstm_858/while/Identity_3IdentityClstm_858/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_858/while/NoOp*
T0*
_output_shapes
: ?
lstm_858/while/Identity_4Identity&lstm_858/while/lstm_cell_756/mul_2:z:0^lstm_858/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_858/while/Identity_5Identity&lstm_858/while/lstm_cell_756/add_1:z:0^lstm_858/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_858/while/NoOpNoOp4^lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp3^lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp5^lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_858_while_identity lstm_858/while/Identity:output:0"?
lstm_858_while_identity_1"lstm_858/while/Identity_1:output:0"?
lstm_858_while_identity_2"lstm_858/while/Identity_2:output:0"?
lstm_858_while_identity_3"lstm_858/while/Identity_3:output:0"?
lstm_858_while_identity_4"lstm_858/while/Identity_4:output:0"?
lstm_858_while_identity_5"lstm_858/while/Identity_5:output:0"T
'lstm_858_while_lstm_858_strided_slice_1)lstm_858_while_lstm_858_strided_slice_1_0"~
<lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource>lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource_0"?
=lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource?lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource_0"|
;lstm_858_while_lstm_cell_756_matmul_readvariableop_resource=lstm_858_while_lstm_cell_756_matmul_readvariableop_resource_0"?
clstm_858_while_tensorarrayv2read_tensorlistgetitem_lstm_858_tensorarrayunstack_tensorlistfromtensorelstm_858_while_tensorarrayv2read_tensorlistgetitem_lstm_858_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp3lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp2h
2lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp2lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp2l
4lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp4lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4584788

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
?
/__inference_lstm_cell_756_layer_call_fn_4589440

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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4584584o
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
?8
?
while_body_4587928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_756_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_756_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_756_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_756_matmul_readvariableop_resource:	?G
4while_lstm_cell_756_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_756_biasadd_readvariableop_resource:	???*while/lstm_cell_756/BiasAdd/ReadVariableOp?)while/lstm_cell_756/MatMul/ReadVariableOp?+while/lstm_cell_756/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_756/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_756_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_756/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_756_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_756/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_756/addAddV2$while/lstm_cell_756/MatMul:product:0&while/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_756_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_756/BiasAddBiasAddwhile/lstm_cell_756/add:z:02while/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_756/splitSplit,while/lstm_cell_756/split/split_dim:output:0$while/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_756/SigmoidSigmoid"while/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_1Sigmoid"while/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mulMul!while/lstm_cell_756/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_756/ReluRelu"while/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_1Mulwhile/lstm_cell_756/Sigmoid:y:0&while/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/add_1AddV2while/lstm_cell_756/mul:z:0while/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_2Sigmoid"while/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_756/Relu_1Reluwhile/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_2Mul!while/lstm_cell_756/Sigmoid_2:y:0(while/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_756/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_756/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_756/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_756/BiasAdd/ReadVariableOp*^while/lstm_cell_756/MatMul/ReadVariableOp,^while/lstm_cell_756/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_756_biasadd_readvariableop_resource5while_lstm_cell_756_biasadd_readvariableop_resource_0"n
4while_lstm_cell_756_matmul_1_readvariableop_resource6while_lstm_cell_756_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_756_matmul_readvariableop_resource4while_lstm_cell_756_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_756/BiasAdd/ReadVariableOp*while/lstm_cell_756/BiasAdd/ReadVariableOp2V
)while/lstm_cell_756/MatMul/ReadVariableOp)while/lstm_cell_756/MatMul/ReadVariableOp2Z
+while/lstm_cell_756/MatMul_1/ReadVariableOp+while/lstm_cell_756/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4585870

inputs>
,lstm_cell_758_matmul_readvariableop_resource:2(@
.lstm_cell_758_matmul_1_readvariableop_resource:
(;
-lstm_cell_758_biasadd_readvariableop_resource:(
identity??$lstm_cell_758/BiasAdd/ReadVariableOp?#lstm_cell_758/MatMul/ReadVariableOp?%lstm_cell_758/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_758/MatMul/ReadVariableOpReadVariableOp,lstm_cell_758_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_758/MatMulMatMulstrided_slice_2:output:0+lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_758_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_758/MatMul_1MatMulzeros:output:0-lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_758/addAddV2lstm_cell_758/MatMul:product:0 lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_758_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_758/BiasAddBiasAddlstm_cell_758/add:z:0,lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_758/splitSplit&lstm_cell_758/split/split_dim:output:0lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_758/SigmoidSigmoidlstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_1Sigmoidlstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_758/mulMullstm_cell_758/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_758/ReluRelulstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_1Mullstm_cell_758/Sigmoid:y:0 lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_758/add_1AddV2lstm_cell_758/mul:z:0lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_2Sigmoidlstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_758/Relu_1Relulstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_2Mullstm_cell_758/Sigmoid_2:y:0"lstm_cell_758/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_758_matmul_readvariableop_resource.lstm_cell_758_matmul_1_readvariableop_resource-lstm_cell_758_biasadd_readvariableop_resource*
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
while_body_4585786*
condR
while_cond_4585785*K
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
NoOpNoOp%^lstm_cell_758/BiasAdd/ReadVariableOp$^lstm_cell_758/MatMul/ReadVariableOp&^lstm_cell_758/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_758/BiasAdd/ReadVariableOp$lstm_cell_758/BiasAdd/ReadVariableOp2J
#lstm_cell_758/MatMul/ReadVariableOp#lstm_cell_758/MatMul/ReadVariableOp2N
%lstm_cell_758/MatMul_1/ReadVariableOp%lstm_cell_758/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4585786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_758_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_758_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_758_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_758_matmul_readvariableop_resource:2(F
4while_lstm_cell_758_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_758_biasadd_readvariableop_resource:(??*while/lstm_cell_758/BiasAdd/ReadVariableOp?)while/lstm_cell_758/MatMul/ReadVariableOp?+while/lstm_cell_758/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_758/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_758_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_758/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_758_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_758/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_758/addAddV2$while/lstm_cell_758/MatMul:product:0&while/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_758_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_758/BiasAddBiasAddwhile/lstm_cell_758/add:z:02while/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_758/splitSplit,while/lstm_cell_758/split/split_dim:output:0$while/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_758/SigmoidSigmoid"while/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_1Sigmoid"while/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mulMul!while/lstm_cell_758/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_758/ReluRelu"while/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_1Mulwhile/lstm_cell_758/Sigmoid:y:0&while/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/add_1AddV2while/lstm_cell_758/mul:z:0while/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_2Sigmoid"while/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_758/Relu_1Reluwhile/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_2Mul!while/lstm_cell_758/Sigmoid_2:y:0(while/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_758/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_758/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_758/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_758/BiasAdd/ReadVariableOp*^while/lstm_cell_758/MatMul/ReadVariableOp,^while/lstm_cell_758/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_758_biasadd_readvariableop_resource5while_lstm_cell_758_biasadd_readvariableop_resource_0"n
4while_lstm_cell_758_matmul_1_readvariableop_resource6while_lstm_cell_758_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_758_matmul_readvariableop_resource4while_lstm_cell_758_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_758/BiasAdd/ReadVariableOp*while/lstm_cell_758/BiasAdd/ReadVariableOp2V
)while/lstm_cell_758/MatMul/ReadVariableOp)while/lstm_cell_758/MatMul/ReadVariableOp2Z
+while/lstm_cell_758/MatMul_1/ReadVariableOp+while/lstm_cell_758/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4584992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4584992___redundant_placeholder05
1while_while_cond_4584992___redundant_placeholder15
1while_while_cond_4584992___redundant_placeholder25
1while_while_cond_4584992___redundant_placeholder3
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
*__inference_lstm_860_layer_call_fn_4588793
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4585412o
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
?T
?
*sequential_286_lstm_858_while_body_4584003L
Hsequential_286_lstm_858_while_sequential_286_lstm_858_while_loop_counterR
Nsequential_286_lstm_858_while_sequential_286_lstm_858_while_maximum_iterations-
)sequential_286_lstm_858_while_placeholder/
+sequential_286_lstm_858_while_placeholder_1/
+sequential_286_lstm_858_while_placeholder_2/
+sequential_286_lstm_858_while_placeholder_3K
Gsequential_286_lstm_858_while_sequential_286_lstm_858_strided_slice_1_0?
?sequential_286_lstm_858_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_858_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_286_lstm_858_while_lstm_cell_756_matmul_readvariableop_resource_0:	?a
Nsequential_286_lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource_0:	d?\
Msequential_286_lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource_0:	?*
&sequential_286_lstm_858_while_identity,
(sequential_286_lstm_858_while_identity_1,
(sequential_286_lstm_858_while_identity_2,
(sequential_286_lstm_858_while_identity_3,
(sequential_286_lstm_858_while_identity_4,
(sequential_286_lstm_858_while_identity_5I
Esequential_286_lstm_858_while_sequential_286_lstm_858_strided_slice_1?
?sequential_286_lstm_858_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_858_tensorarrayunstack_tensorlistfromtensor]
Jsequential_286_lstm_858_while_lstm_cell_756_matmul_readvariableop_resource:	?_
Lsequential_286_lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource:	d?Z
Ksequential_286_lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource:	???Bsequential_286/lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp?Asequential_286/lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp?Csequential_286/lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp?
Osequential_286/lstm_858/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_286/lstm_858/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_286_lstm_858_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_858_tensorarrayunstack_tensorlistfromtensor_0)sequential_286_lstm_858_while_placeholderXsequential_286/lstm_858/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_286/lstm_858/while/lstm_cell_756/MatMul/ReadVariableOpReadVariableOpLsequential_286_lstm_858_while_lstm_cell_756_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_286/lstm_858/while/lstm_cell_756/MatMulMatMulHsequential_286/lstm_858/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_286/lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_286/lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOpNsequential_286_lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_286/lstm_858/while/lstm_cell_756/MatMul_1MatMul+sequential_286_lstm_858_while_placeholder_2Ksequential_286/lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_286/lstm_858/while/lstm_cell_756/addAddV2<sequential_286/lstm_858/while/lstm_cell_756/MatMul:product:0>sequential_286/lstm_858/while/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_286/lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOpMsequential_286_lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_286/lstm_858/while/lstm_cell_756/BiasAddBiasAdd3sequential_286/lstm_858/while/lstm_cell_756/add:z:0Jsequential_286/lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_286/lstm_858/while/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_286/lstm_858/while/lstm_cell_756/splitSplitDsequential_286/lstm_858/while/lstm_cell_756/split/split_dim:output:0<sequential_286/lstm_858/while/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_286/lstm_858/while/lstm_cell_756/SigmoidSigmoid:sequential_286/lstm_858/while/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_286/lstm_858/while/lstm_cell_756/Sigmoid_1Sigmoid:sequential_286/lstm_858/while/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_286/lstm_858/while/lstm_cell_756/mulMul9sequential_286/lstm_858/while/lstm_cell_756/Sigmoid_1:y:0+sequential_286_lstm_858_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_286/lstm_858/while/lstm_cell_756/ReluRelu:sequential_286/lstm_858/while/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_286/lstm_858/while/lstm_cell_756/mul_1Mul7sequential_286/lstm_858/while/lstm_cell_756/Sigmoid:y:0>sequential_286/lstm_858/while/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_286/lstm_858/while/lstm_cell_756/add_1AddV23sequential_286/lstm_858/while/lstm_cell_756/mul:z:05sequential_286/lstm_858/while/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_286/lstm_858/while/lstm_cell_756/Sigmoid_2Sigmoid:sequential_286/lstm_858/while/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_286/lstm_858/while/lstm_cell_756/Relu_1Relu5sequential_286/lstm_858/while/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_286/lstm_858/while/lstm_cell_756/mul_2Mul9sequential_286/lstm_858/while/lstm_cell_756/Sigmoid_2:y:0@sequential_286/lstm_858/while/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_286/lstm_858/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_286_lstm_858_while_placeholder_1)sequential_286_lstm_858_while_placeholder5sequential_286/lstm_858/while/lstm_cell_756/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_286/lstm_858/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_286/lstm_858/while/addAddV2)sequential_286_lstm_858_while_placeholder,sequential_286/lstm_858/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_286/lstm_858/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_286/lstm_858/while/add_1AddV2Hsequential_286_lstm_858_while_sequential_286_lstm_858_while_loop_counter.sequential_286/lstm_858/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_286/lstm_858/while/IdentityIdentity'sequential_286/lstm_858/while/add_1:z:0#^sequential_286/lstm_858/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_858/while/Identity_1IdentityNsequential_286_lstm_858_while_sequential_286_lstm_858_while_maximum_iterations#^sequential_286/lstm_858/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_858/while/Identity_2Identity%sequential_286/lstm_858/while/add:z:0#^sequential_286/lstm_858/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_858/while/Identity_3IdentityRsequential_286/lstm_858/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_286/lstm_858/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_858/while/Identity_4Identity5sequential_286/lstm_858/while/lstm_cell_756/mul_2:z:0#^sequential_286/lstm_858/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_286/lstm_858/while/Identity_5Identity5sequential_286/lstm_858/while/lstm_cell_756/add_1:z:0#^sequential_286/lstm_858/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_286/lstm_858/while/NoOpNoOpC^sequential_286/lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOpB^sequential_286/lstm_858/while/lstm_cell_756/MatMul/ReadVariableOpD^sequential_286/lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_286_lstm_858_while_identity/sequential_286/lstm_858/while/Identity:output:0"]
(sequential_286_lstm_858_while_identity_11sequential_286/lstm_858/while/Identity_1:output:0"]
(sequential_286_lstm_858_while_identity_21sequential_286/lstm_858/while/Identity_2:output:0"]
(sequential_286_lstm_858_while_identity_31sequential_286/lstm_858/while/Identity_3:output:0"]
(sequential_286_lstm_858_while_identity_41sequential_286/lstm_858/while/Identity_4:output:0"]
(sequential_286_lstm_858_while_identity_51sequential_286/lstm_858/while/Identity_5:output:0"?
Ksequential_286_lstm_858_while_lstm_cell_756_biasadd_readvariableop_resourceMsequential_286_lstm_858_while_lstm_cell_756_biasadd_readvariableop_resource_0"?
Lsequential_286_lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resourceNsequential_286_lstm_858_while_lstm_cell_756_matmul_1_readvariableop_resource_0"?
Jsequential_286_lstm_858_while_lstm_cell_756_matmul_readvariableop_resourceLsequential_286_lstm_858_while_lstm_cell_756_matmul_readvariableop_resource_0"?
Esequential_286_lstm_858_while_sequential_286_lstm_858_strided_slice_1Gsequential_286_lstm_858_while_sequential_286_lstm_858_strided_slice_1_0"?
?sequential_286_lstm_858_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_858_tensorarrayunstack_tensorlistfromtensor?sequential_286_lstm_858_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_858_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_286/lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOpBsequential_286/lstm_858/while/lstm_cell_756/BiasAdd/ReadVariableOp2?
Asequential_286/lstm_858/while/lstm_cell_756/MatMul/ReadVariableOpAsequential_286/lstm_858/while/lstm_cell_756/MatMul/ReadVariableOp2?
Csequential_286/lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOpCsequential_286/lstm_858/while/lstm_cell_756/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_286_layer_call_fn_4586658

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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4585895o
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
while_body_4585636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_757_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_757_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_757_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_757_matmul_readvariableop_resource:	d?G
4while_lstm_cell_757_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_757_biasadd_readvariableop_resource:	???*while/lstm_cell_757/BiasAdd/ReadVariableOp?)while/lstm_cell_757/MatMul/ReadVariableOp?+while/lstm_cell_757/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_757/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_757_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_757/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_757_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_757/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_757/addAddV2$while/lstm_cell_757/MatMul:product:0&while/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_757_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_757/BiasAddBiasAddwhile/lstm_cell_757/add:z:02while/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_757/splitSplit,while/lstm_cell_757/split/split_dim:output:0$while/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_757/SigmoidSigmoid"while/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_1Sigmoid"while/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mulMul!while/lstm_cell_757/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_757/ReluRelu"while/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_1Mulwhile/lstm_cell_757/Sigmoid:y:0&while/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/add_1AddV2while/lstm_cell_757/mul:z:0while/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_2Sigmoid"while/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_757/Relu_1Reluwhile/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_2Mul!while/lstm_cell_757/Sigmoid_2:y:0(while/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_757/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_757/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_757/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_757/BiasAdd/ReadVariableOp*^while/lstm_cell_757/MatMul/ReadVariableOp,^while/lstm_cell_757/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_757_biasadd_readvariableop_resource5while_lstm_cell_757_biasadd_readvariableop_resource_0"n
4while_lstm_cell_757_matmul_1_readvariableop_resource6while_lstm_cell_757_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_757_matmul_readvariableop_resource4while_lstm_cell_757_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_757/BiasAdd/ReadVariableOp*while/lstm_cell_757/BiasAdd/ReadVariableOp2V
)while/lstm_cell_757/MatMul/ReadVariableOp)while/lstm_cell_757/MatMul/ReadVariableOp2Z
+while/lstm_cell_757/MatMul_1/ReadVariableOp+while/lstm_cell_757/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4584934

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
??
?
#__inference__traced_restore_4589973
file_prefix3
!assignvariableop_dense_286_kernel:
/
!assignvariableop_1_dense_286_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_858_lstm_cell_858_kernel:	?M
:assignvariableop_8_lstm_858_lstm_cell_858_recurrent_kernel:	d?=
.assignvariableop_9_lstm_858_lstm_cell_858_bias:	?D
1assignvariableop_10_lstm_859_lstm_cell_859_kernel:	d?N
;assignvariableop_11_lstm_859_lstm_cell_859_recurrent_kernel:	2?>
/assignvariableop_12_lstm_859_lstm_cell_859_bias:	?C
1assignvariableop_13_lstm_860_lstm_cell_860_kernel:2(M
;assignvariableop_14_lstm_860_lstm_cell_860_recurrent_kernel:
(=
/assignvariableop_15_lstm_860_lstm_cell_860_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_286_kernel_m:
7
)assignvariableop_19_adam_dense_286_bias_m:K
8assignvariableop_20_adam_lstm_858_lstm_cell_858_kernel_m:	?U
Bassignvariableop_21_adam_lstm_858_lstm_cell_858_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_858_lstm_cell_858_bias_m:	?K
8assignvariableop_23_adam_lstm_859_lstm_cell_859_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_859_lstm_cell_859_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_859_lstm_cell_859_bias_m:	?J
8assignvariableop_26_adam_lstm_860_lstm_cell_860_kernel_m:2(T
Bassignvariableop_27_adam_lstm_860_lstm_cell_860_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_860_lstm_cell_860_bias_m:(=
+assignvariableop_29_adam_dense_286_kernel_v:
7
)assignvariableop_30_adam_dense_286_bias_v:K
8assignvariableop_31_adam_lstm_858_lstm_cell_858_kernel_v:	?U
Bassignvariableop_32_adam_lstm_858_lstm_cell_858_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_858_lstm_cell_858_bias_v:	?K
8assignvariableop_34_adam_lstm_859_lstm_cell_859_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_859_lstm_cell_859_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_859_lstm_cell_859_bias_v:	?J
8assignvariableop_37_adam_lstm_860_lstm_cell_860_kernel_v:2(T
Bassignvariableop_38_adam_lstm_860_lstm_cell_860_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_860_lstm_cell_860_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_286_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_286_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_858_lstm_cell_858_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_858_lstm_cell_858_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_858_lstm_cell_858_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_859_lstm_cell_859_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_859_lstm_cell_859_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_859_lstm_cell_859_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_860_lstm_cell_860_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_860_lstm_cell_860_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_860_lstm_cell_860_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_286_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_286_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_858_lstm_cell_858_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_858_lstm_cell_858_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_858_lstm_cell_858_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_859_lstm_cell_859_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_859_lstm_cell_859_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_859_lstm_cell_859_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_860_lstm_cell_860_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_860_lstm_cell_860_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_860_lstm_cell_860_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_286_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_286_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_858_lstm_cell_858_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_858_lstm_cell_858_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_858_lstm_cell_858_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_859_lstm_cell_859_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_859_lstm_cell_859_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_859_lstm_cell_859_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_860_lstm_cell_860_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_860_lstm_cell_860_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_860_lstm_cell_860_bias_vIdentity_39:output:0"/device:CPU:0*
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4588958
inputs_0>
,lstm_cell_758_matmul_readvariableop_resource:2(@
.lstm_cell_758_matmul_1_readvariableop_resource:
(;
-lstm_cell_758_biasadd_readvariableop_resource:(
identity??$lstm_cell_758/BiasAdd/ReadVariableOp?#lstm_cell_758/MatMul/ReadVariableOp?%lstm_cell_758/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_758/MatMul/ReadVariableOpReadVariableOp,lstm_cell_758_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_758/MatMulMatMulstrided_slice_2:output:0+lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_758_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_758/MatMul_1MatMulzeros:output:0-lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_758/addAddV2lstm_cell_758/MatMul:product:0 lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_758_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_758/BiasAddBiasAddlstm_cell_758/add:z:0,lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_758/splitSplit&lstm_cell_758/split/split_dim:output:0lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_758/SigmoidSigmoidlstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_1Sigmoidlstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_758/mulMullstm_cell_758/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_758/ReluRelulstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_1Mullstm_cell_758/Sigmoid:y:0 lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_758/add_1AddV2lstm_cell_758/mul:z:0lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_2Sigmoidlstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_758/Relu_1Relulstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_2Mullstm_cell_758/Sigmoid_2:y:0"lstm_cell_758/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_758_matmul_readvariableop_resource.lstm_cell_758_matmul_1_readvariableop_resource-lstm_cell_758_biasadd_readvariableop_resource*
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
while_body_4588874*
condR
while_cond_4588873*K
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
NoOpNoOp%^lstm_cell_758/BiasAdd/ReadVariableOp$^lstm_cell_758/MatMul/ReadVariableOp&^lstm_cell_758/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_758/BiasAdd/ReadVariableOp$lstm_cell_758/BiasAdd/ReadVariableOp2J
#lstm_cell_758/MatMul/ReadVariableOp#lstm_cell_758/MatMul/ReadVariableOp2N
%lstm_cell_758/MatMul_1/ReadVariableOp%lstm_cell_758/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_858_layer_call_fn_4587550
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4584521|
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
while_cond_4588070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4588070___redundant_placeholder05
1while_while_cond_4588070___redundant_placeholder15
1while_while_cond_4588070___redundant_placeholder25
1while_while_cond_4588070___redundant_placeholder3
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
lstm_860_while_cond_4587448.
*lstm_860_while_lstm_860_while_loop_counter4
0lstm_860_while_lstm_860_while_maximum_iterations
lstm_860_while_placeholder 
lstm_860_while_placeholder_1 
lstm_860_while_placeholder_2 
lstm_860_while_placeholder_30
,lstm_860_while_less_lstm_860_strided_slice_1G
Clstm_860_while_lstm_860_while_cond_4587448___redundant_placeholder0G
Clstm_860_while_lstm_860_while_cond_4587448___redundant_placeholder1G
Clstm_860_while_lstm_860_while_cond_4587448___redundant_placeholder2G
Clstm_860_while_lstm_860_while_cond_4587448___redundant_placeholder3
lstm_860_while_identity
?
lstm_860/while/LessLesslstm_860_while_placeholder,lstm_860_while_less_lstm_860_strided_slice_1*
T0*
_output_shapes
: ]
lstm_860/while/IdentityIdentitylstm_860/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_860_while_identity lstm_860/while/Identity:output:0*(
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4589101
inputs_0>
,lstm_cell_758_matmul_readvariableop_resource:2(@
.lstm_cell_758_matmul_1_readvariableop_resource:
(;
-lstm_cell_758_biasadd_readvariableop_resource:(
identity??$lstm_cell_758/BiasAdd/ReadVariableOp?#lstm_cell_758/MatMul/ReadVariableOp?%lstm_cell_758/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_758/MatMul/ReadVariableOpReadVariableOp,lstm_cell_758_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_758/MatMulMatMulstrided_slice_2:output:0+lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_758_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_758/MatMul_1MatMulzeros:output:0-lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_758/addAddV2lstm_cell_758/MatMul:product:0 lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_758_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_758/BiasAddBiasAddlstm_cell_758/add:z:0,lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_758/splitSplit&lstm_cell_758/split/split_dim:output:0lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_758/SigmoidSigmoidlstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_1Sigmoidlstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_758/mulMullstm_cell_758/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_758/ReluRelulstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_1Mullstm_cell_758/Sigmoid:y:0 lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_758/add_1AddV2lstm_cell_758/mul:z:0lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_2Sigmoidlstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_758/Relu_1Relulstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_2Mullstm_cell_758/Sigmoid_2:y:0"lstm_cell_758/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_758_matmul_readvariableop_resource.lstm_cell_758_matmul_1_readvariableop_resource-lstm_cell_758_biasadd_readvariableop_resource*
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
while_body_4589017*
condR
while_cond_4589016*K
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
NoOpNoOp%^lstm_cell_758/BiasAdd/ReadVariableOp$^lstm_cell_758/MatMul/ReadVariableOp&^lstm_cell_758/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_758/BiasAdd/ReadVariableOp$lstm_cell_758/BiasAdd/ReadVariableOp2J
#lstm_cell_758/MatMul/ReadVariableOp#lstm_cell_758/MatMul/ReadVariableOp2N
%lstm_cell_758/MatMul_1/ReadVariableOp%lstm_cell_758/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_858_while_cond_4587170.
*lstm_858_while_lstm_858_while_loop_counter4
0lstm_858_while_lstm_858_while_maximum_iterations
lstm_858_while_placeholder 
lstm_858_while_placeholder_1 
lstm_858_while_placeholder_2 
lstm_858_while_placeholder_30
,lstm_858_while_less_lstm_858_strided_slice_1G
Clstm_858_while_lstm_858_while_cond_4587170___redundant_placeholder0G
Clstm_858_while_lstm_858_while_cond_4587170___redundant_placeholder1G
Clstm_858_while_lstm_858_while_cond_4587170___redundant_placeholder2G
Clstm_858_while_lstm_858_while_cond_4587170___redundant_placeholder3
lstm_858_while_identity
?
lstm_858/while/LessLesslstm_858_while_placeholder,lstm_858_while_less_lstm_858_strided_slice_1*
T0*
_output_shapes
: ]
lstm_858/while/IdentityIdentitylstm_858/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_858_while_identity lstm_858/while/Identity:output:0*(
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588342
inputs_0?
,lstm_cell_757_matmul_readvariableop_resource:	d?A
.lstm_cell_757_matmul_1_readvariableop_resource:	2?<
-lstm_cell_757_biasadd_readvariableop_resource:	?
identity??$lstm_cell_757/BiasAdd/ReadVariableOp?#lstm_cell_757/MatMul/ReadVariableOp?%lstm_cell_757/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_757/MatMul/ReadVariableOpReadVariableOp,lstm_cell_757_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_757/MatMulMatMulstrided_slice_2:output:0+lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_757_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_757/MatMul_1MatMulzeros:output:0-lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_757/addAddV2lstm_cell_757/MatMul:product:0 lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_757_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_757/BiasAddBiasAddlstm_cell_757/add:z:0,lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_757/splitSplit&lstm_cell_757/split/split_dim:output:0lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_757/SigmoidSigmoidlstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_1Sigmoidlstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_757/mulMullstm_cell_757/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_757/ReluRelulstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_1Mullstm_cell_757/Sigmoid:y:0 lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_757/add_1AddV2lstm_cell_757/mul:z:0lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_2Sigmoidlstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_757/Relu_1Relulstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_2Mullstm_cell_757/Sigmoid_2:y:0"lstm_cell_757/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_757_matmul_readvariableop_resource.lstm_cell_757_matmul_1_readvariableop_resource-lstm_cell_757_biasadd_readvariableop_resource*
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
while_body_4588258*
condR
while_cond_4588257*K
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
NoOpNoOp%^lstm_cell_757/BiasAdd/ReadVariableOp$^lstm_cell_757/MatMul/ReadVariableOp&^lstm_cell_757/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_757/BiasAdd/ReadVariableOp$lstm_cell_757/BiasAdd/ReadVariableOp2J
#lstm_cell_757/MatMul/ReadVariableOp#lstm_cell_757/MatMul/ReadVariableOp2N
%lstm_cell_757/MatMul_1/ReadVariableOp%lstm_cell_757/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_286_layer_call_and_return_conditional_losses_4585895

inputs#
lstm_858_4585571:	?#
lstm_858_4585573:	d?
lstm_858_4585575:	?#
lstm_859_4585721:	d?#
lstm_859_4585723:	2?
lstm_859_4585725:	?"
lstm_860_4585871:2("
lstm_860_4585873:
(
lstm_860_4585875:(#
dense_286_4585889:

dense_286_4585891:
identity??!dense_286/StatefulPartitionedCall? lstm_858/StatefulPartitionedCall? lstm_859/StatefulPartitionedCall? lstm_860/StatefulPartitionedCall?
 lstm_858/StatefulPartitionedCallStatefulPartitionedCallinputslstm_858_4585571lstm_858_4585573lstm_858_4585575*
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4585570?
 lstm_859/StatefulPartitionedCallStatefulPartitionedCall)lstm_858/StatefulPartitionedCall:output:0lstm_859_4585721lstm_859_4585723lstm_859_4585725*
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4585720?
 lstm_860/StatefulPartitionedCallStatefulPartitionedCall)lstm_859/StatefulPartitionedCall:output:0lstm_860_4585871lstm_860_4585873lstm_860_4585875*
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4585870?
!dense_286/StatefulPartitionedCallStatefulPartitionedCall)lstm_860/StatefulPartitionedCall:output:0dense_286_4585889dense_286_4585891*
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
F__inference_dense_286_layer_call_and_return_conditional_losses_4585888y
IdentityIdentity*dense_286/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_286/StatefulPartitionedCall!^lstm_858/StatefulPartitionedCall!^lstm_859/StatefulPartitionedCall!^lstm_860/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_286/StatefulPartitionedCall!dense_286/StatefulPartitionedCall2D
 lstm_858/StatefulPartitionedCall lstm_858/StatefulPartitionedCall2D
 lstm_859/StatefulPartitionedCall lstm_859/StatefulPartitionedCall2D
 lstm_860/StatefulPartitionedCall lstm_860/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_286_lstm_858_while_cond_4584002L
Hsequential_286_lstm_858_while_sequential_286_lstm_858_while_loop_counterR
Nsequential_286_lstm_858_while_sequential_286_lstm_858_while_maximum_iterations-
)sequential_286_lstm_858_while_placeholder/
+sequential_286_lstm_858_while_placeholder_1/
+sequential_286_lstm_858_while_placeholder_2/
+sequential_286_lstm_858_while_placeholder_3N
Jsequential_286_lstm_858_while_less_sequential_286_lstm_858_strided_slice_1e
asequential_286_lstm_858_while_sequential_286_lstm_858_while_cond_4584002___redundant_placeholder0e
asequential_286_lstm_858_while_sequential_286_lstm_858_while_cond_4584002___redundant_placeholder1e
asequential_286_lstm_858_while_sequential_286_lstm_858_while_cond_4584002___redundant_placeholder2e
asequential_286_lstm_858_while_sequential_286_lstm_858_while_cond_4584002___redundant_placeholder3*
&sequential_286_lstm_858_while_identity
?
"sequential_286/lstm_858/while/LessLess)sequential_286_lstm_858_while_placeholderJsequential_286_lstm_858_while_less_sequential_286_lstm_858_strided_slice_1*
T0*
_output_shapes
: {
&sequential_286/lstm_858/while/IdentityIdentity&sequential_286/lstm_858/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_286_lstm_858_while_identity/sequential_286/lstm_858/while/Identity:output:0*(
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
*__inference_lstm_859_layer_call_fn_4588166
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4584871|
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
while_body_4585152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_758_4585176_0:2(/
while_lstm_cell_758_4585178_0:
(+
while_lstm_cell_758_4585180_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_758_4585176:2(-
while_lstm_cell_758_4585178:
()
while_lstm_cell_758_4585180:(??+while/lstm_cell_758/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_758/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_758_4585176_0while_lstm_cell_758_4585178_0while_lstm_cell_758_4585180_0*
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
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4585138?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_758/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_758/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_758/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_758/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_758_4585176while_lstm_cell_758_4585176_0"<
while_lstm_cell_758_4585178while_lstm_cell_758_4585178_0"<
while_lstm_cell_758_4585180while_lstm_cell_758_4585180_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_758/StatefulPartitionedCall+while/lstm_cell_758/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

?
0__inference_sequential_286_layer_call_fn_4585920
lstm_858_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_858_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4585895o
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
_user_specified_namelstm_858_input
?
?
*__inference_lstm_859_layer_call_fn_4588188

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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4585720s
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
while_body_4588687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_757_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_757_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_757_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_757_matmul_readvariableop_resource:	d?G
4while_lstm_cell_757_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_757_biasadd_readvariableop_resource:	???*while/lstm_cell_757/BiasAdd/ReadVariableOp?)while/lstm_cell_757/MatMul/ReadVariableOp?+while/lstm_cell_757/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_757/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_757_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_757/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_757_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_757/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_757/addAddV2$while/lstm_cell_757/MatMul:product:0&while/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_757_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_757/BiasAddBiasAddwhile/lstm_cell_757/add:z:02while/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_757/splitSplit,while/lstm_cell_757/split/split_dim:output:0$while/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_757/SigmoidSigmoid"while/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_1Sigmoid"while/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mulMul!while/lstm_cell_757/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_757/ReluRelu"while/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_1Mulwhile/lstm_cell_757/Sigmoid:y:0&while/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/add_1AddV2while/lstm_cell_757/mul:z:0while/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_2Sigmoid"while/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_757/Relu_1Reluwhile/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_2Mul!while/lstm_cell_757/Sigmoid_2:y:0(while/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_757/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_757/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_757/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_757/BiasAdd/ReadVariableOp*^while/lstm_cell_757/MatMul/ReadVariableOp,^while/lstm_cell_757/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_757_biasadd_readvariableop_resource5while_lstm_cell_757_biasadd_readvariableop_resource_0"n
4while_lstm_cell_757_matmul_1_readvariableop_resource6while_lstm_cell_757_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_757_matmul_readvariableop_resource4while_lstm_cell_757_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_757/BiasAdd/ReadVariableOp*while/lstm_cell_757/BiasAdd/ReadVariableOp2V
)while/lstm_cell_757/MatMul/ReadVariableOp)while/lstm_cell_757/MatMul/ReadVariableOp2Z
+while/lstm_cell_757/MatMul_1/ReadVariableOp+while/lstm_cell_757/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4584584

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
while_body_4584643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_756_4584667_0:	?0
while_lstm_cell_756_4584669_0:	d?,
while_lstm_cell_756_4584671_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_756_4584667:	?.
while_lstm_cell_756_4584669:	d?*
while_lstm_cell_756_4584671:	???+while/lstm_cell_756/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_756/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_756_4584667_0while_lstm_cell_756_4584669_0while_lstm_cell_756_4584671_0*
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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4584584?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_756/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_756/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_756/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_756/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_756_4584667while_lstm_cell_756_4584667_0"<
while_lstm_cell_756_4584669while_lstm_cell_756_4584669_0"<
while_lstm_cell_756_4584671while_lstm_cell_756_4584671_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_756/StatefulPartitionedCall+while/lstm_cell_756/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4588873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4588873___redundant_placeholder05
1while_while_cond_4588873___redundant_placeholder15
1while_while_cond_4588873___redundant_placeholder25
1while_while_cond_4588873___redundant_placeholder3
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4589244

inputs>
,lstm_cell_758_matmul_readvariableop_resource:2(@
.lstm_cell_758_matmul_1_readvariableop_resource:
(;
-lstm_cell_758_biasadd_readvariableop_resource:(
identity??$lstm_cell_758/BiasAdd/ReadVariableOp?#lstm_cell_758/MatMul/ReadVariableOp?%lstm_cell_758/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_758/MatMul/ReadVariableOpReadVariableOp,lstm_cell_758_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_758/MatMulMatMulstrided_slice_2:output:0+lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_758_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_758/MatMul_1MatMulzeros:output:0-lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_758/addAddV2lstm_cell_758/MatMul:product:0 lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_758_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_758/BiasAddBiasAddlstm_cell_758/add:z:0,lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_758/splitSplit&lstm_cell_758/split/split_dim:output:0lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_758/SigmoidSigmoidlstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_1Sigmoidlstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_758/mulMullstm_cell_758/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_758/ReluRelulstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_1Mullstm_cell_758/Sigmoid:y:0 lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_758/add_1AddV2lstm_cell_758/mul:z:0lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_758/Sigmoid_2Sigmoidlstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_758/Relu_1Relulstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_758/mul_2Mullstm_cell_758/Sigmoid_2:y:0"lstm_cell_758/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_758_matmul_readvariableop_resource.lstm_cell_758_matmul_1_readvariableop_resource-lstm_cell_758_biasadd_readvariableop_resource*
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
while_body_4589160*
condR
while_cond_4589159*K
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
NoOpNoOp%^lstm_cell_758/BiasAdd/ReadVariableOp$^lstm_cell_758/MatMul/ReadVariableOp&^lstm_cell_758/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_758/BiasAdd/ReadVariableOp$lstm_cell_758/BiasAdd/ReadVariableOp2J
#lstm_cell_758/MatMul/ReadVariableOp#lstm_cell_758/MatMul/ReadVariableOp2N
%lstm_cell_758/MatMul_1/ReadVariableOp%lstm_cell_758/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_286_layer_call_and_return_conditional_losses_4586484

inputs#
lstm_858_4586457:	?#
lstm_858_4586459:	d?
lstm_858_4586461:	?#
lstm_859_4586464:	d?#
lstm_859_4586466:	2?
lstm_859_4586468:	?"
lstm_860_4586471:2("
lstm_860_4586473:
(
lstm_860_4586475:(#
dense_286_4586478:

dense_286_4586480:
identity??!dense_286/StatefulPartitionedCall? lstm_858/StatefulPartitionedCall? lstm_859/StatefulPartitionedCall? lstm_860/StatefulPartitionedCall?
 lstm_858/StatefulPartitionedCallStatefulPartitionedCallinputslstm_858_4586457lstm_858_4586459lstm_858_4586461*
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4586416?
 lstm_859/StatefulPartitionedCallStatefulPartitionedCall)lstm_858/StatefulPartitionedCall:output:0lstm_859_4586464lstm_859_4586466lstm_859_4586468*
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4586251?
 lstm_860/StatefulPartitionedCallStatefulPartitionedCall)lstm_859/StatefulPartitionedCall:output:0lstm_860_4586471lstm_860_4586473lstm_860_4586475*
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4586086?
!dense_286/StatefulPartitionedCallStatefulPartitionedCall)lstm_860/StatefulPartitionedCall:output:0dense_286_4586478dense_286_4586480*
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
F__inference_dense_286_layer_call_and_return_conditional_losses_4585888y
IdentityIdentity*dense_286/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_286/StatefulPartitionedCall!^lstm_858/StatefulPartitionedCall!^lstm_859/StatefulPartitionedCall!^lstm_860/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_286/StatefulPartitionedCall!dense_286/StatefulPartitionedCall2D
 lstm_858/StatefulPartitionedCall lstm_858/StatefulPartitionedCall2D
 lstm_859/StatefulPartitionedCall lstm_859/StatefulPartitionedCall2D
 lstm_860/StatefulPartitionedCall lstm_860/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588771

inputs?
,lstm_cell_757_matmul_readvariableop_resource:	d?A
.lstm_cell_757_matmul_1_readvariableop_resource:	2?<
-lstm_cell_757_biasadd_readvariableop_resource:	?
identity??$lstm_cell_757/BiasAdd/ReadVariableOp?#lstm_cell_757/MatMul/ReadVariableOp?%lstm_cell_757/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_757/MatMul/ReadVariableOpReadVariableOp,lstm_cell_757_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_757/MatMulMatMulstrided_slice_2:output:0+lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_757_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_757/MatMul_1MatMulzeros:output:0-lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_757/addAddV2lstm_cell_757/MatMul:product:0 lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_757_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_757/BiasAddBiasAddlstm_cell_757/add:z:0,lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_757/splitSplit&lstm_cell_757/split/split_dim:output:0lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_757/SigmoidSigmoidlstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_1Sigmoidlstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_757/mulMullstm_cell_757/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_757/ReluRelulstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_1Mullstm_cell_757/Sigmoid:y:0 lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_757/add_1AddV2lstm_cell_757/mul:z:0lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_2Sigmoidlstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_757/Relu_1Relulstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_2Mullstm_cell_757/Sigmoid_2:y:0"lstm_cell_757/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_757_matmul_readvariableop_resource.lstm_cell_757_matmul_1_readvariableop_resource-lstm_cell_757_biasadd_readvariableop_resource*
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
while_body_4588687*
condR
while_cond_4588686*K
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
NoOpNoOp%^lstm_cell_757/BiasAdd/ReadVariableOp$^lstm_cell_757/MatMul/ReadVariableOp&^lstm_cell_757/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_757/BiasAdd/ReadVariableOp$lstm_cell_757/BiasAdd/ReadVariableOp2J
#lstm_cell_757/MatMul/ReadVariableOp#lstm_cell_757/MatMul/ReadVariableOp2N
%lstm_cell_757/MatMul_1/ReadVariableOp%lstm_cell_757/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4585151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4585151___redundant_placeholder05
1while_while_cond_4585151___redundant_placeholder15
1while_while_cond_4585151___redundant_placeholder25
1while_while_cond_4585151___redundant_placeholder3
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
while_body_4586002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_758_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_758_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_758_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_758_matmul_readvariableop_resource:2(F
4while_lstm_cell_758_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_758_biasadd_readvariableop_resource:(??*while/lstm_cell_758/BiasAdd/ReadVariableOp?)while/lstm_cell_758/MatMul/ReadVariableOp?+while/lstm_cell_758/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_758/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_758_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_758/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_758_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_758/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_758/addAddV2$while/lstm_cell_758/MatMul:product:0&while/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_758_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_758/BiasAddBiasAddwhile/lstm_cell_758/add:z:02while/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_758/splitSplit,while/lstm_cell_758/split/split_dim:output:0$while/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_758/SigmoidSigmoid"while/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_1Sigmoid"while/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mulMul!while/lstm_cell_758/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_758/ReluRelu"while/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_1Mulwhile/lstm_cell_758/Sigmoid:y:0&while/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/add_1AddV2while/lstm_cell_758/mul:z:0while/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_758/Sigmoid_2Sigmoid"while/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_758/Relu_1Reluwhile/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_758/mul_2Mul!while/lstm_cell_758/Sigmoid_2:y:0(while/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_758/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_758/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_758/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_758/BiasAdd/ReadVariableOp*^while/lstm_cell_758/MatMul/ReadVariableOp,^while/lstm_cell_758/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_758_biasadd_readvariableop_resource5while_lstm_cell_758_biasadd_readvariableop_resource_0"n
4while_lstm_cell_758_matmul_1_readvariableop_resource6while_lstm_cell_758_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_758_matmul_readvariableop_resource4while_lstm_cell_758_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_758/BiasAdd/ReadVariableOp*while/lstm_cell_758/BiasAdd/ReadVariableOp2V
)while/lstm_cell_758/MatMul/ReadVariableOp)while/lstm_cell_758/MatMul/ReadVariableOp2Z
+while/lstm_cell_758/MatMul_1/ReadVariableOp+while/lstm_cell_758/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4589016
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4589016___redundant_placeholder05
1while_while_cond_4589016___redundant_placeholder15
1while_while_cond_4589016___redundant_placeholder25
1while_while_cond_4589016___redundant_placeholder3
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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4587539

inputsH
5lstm_858_lstm_cell_756_matmul_readvariableop_resource:	?J
7lstm_858_lstm_cell_756_matmul_1_readvariableop_resource:	d?E
6lstm_858_lstm_cell_756_biasadd_readvariableop_resource:	?H
5lstm_859_lstm_cell_757_matmul_readvariableop_resource:	d?J
7lstm_859_lstm_cell_757_matmul_1_readvariableop_resource:	2?E
6lstm_859_lstm_cell_757_biasadd_readvariableop_resource:	?G
5lstm_860_lstm_cell_758_matmul_readvariableop_resource:2(I
7lstm_860_lstm_cell_758_matmul_1_readvariableop_resource:
(D
6lstm_860_lstm_cell_758_biasadd_readvariableop_resource:(:
(dense_286_matmul_readvariableop_resource:
7
)dense_286_biasadd_readvariableop_resource:
identity?? dense_286/BiasAdd/ReadVariableOp?dense_286/MatMul/ReadVariableOp?-lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp?,lstm_858/lstm_cell_756/MatMul/ReadVariableOp?.lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp?lstm_858/while?-lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp?,lstm_859/lstm_cell_757/MatMul/ReadVariableOp?.lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp?lstm_859/while?-lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp?,lstm_860/lstm_cell_758/MatMul/ReadVariableOp?.lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp?lstm_860/whileD
lstm_858/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_858/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_858/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_858/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_858/strided_sliceStridedSlicelstm_858/Shape:output:0%lstm_858/strided_slice/stack:output:0'lstm_858/strided_slice/stack_1:output:0'lstm_858/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_858/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_858/zeros/packedPacklstm_858/strided_slice:output:0 lstm_858/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_858/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_858/zerosFilllstm_858/zeros/packed:output:0lstm_858/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_858/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_858/zeros_1/packedPacklstm_858/strided_slice:output:0"lstm_858/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_858/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_858/zeros_1Fill lstm_858/zeros_1/packed:output:0lstm_858/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_858/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_858/transpose	Transposeinputs lstm_858/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_858/Shape_1Shapelstm_858/transpose:y:0*
T0*
_output_shapes
:h
lstm_858/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_858/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_858/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_858/strided_slice_1StridedSlicelstm_858/Shape_1:output:0'lstm_858/strided_slice_1/stack:output:0)lstm_858/strided_slice_1/stack_1:output:0)lstm_858/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_858/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_858/TensorArrayV2TensorListReserve-lstm_858/TensorArrayV2/element_shape:output:0!lstm_858/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_858/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_858/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_858/transpose:y:0Glstm_858/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_858/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_858/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_858/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_858/strided_slice_2StridedSlicelstm_858/transpose:y:0'lstm_858/strided_slice_2/stack:output:0)lstm_858/strided_slice_2/stack_1:output:0)lstm_858/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_858/lstm_cell_756/MatMul/ReadVariableOpReadVariableOp5lstm_858_lstm_cell_756_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_858/lstm_cell_756/MatMulMatMul!lstm_858/strided_slice_2:output:04lstm_858/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_858/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp7lstm_858_lstm_cell_756_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_858/lstm_cell_756/MatMul_1MatMullstm_858/zeros:output:06lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_858/lstm_cell_756/addAddV2'lstm_858/lstm_cell_756/MatMul:product:0)lstm_858/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_858/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp6lstm_858_lstm_cell_756_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_858/lstm_cell_756/BiasAddBiasAddlstm_858/lstm_cell_756/add:z:05lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_858/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_858/lstm_cell_756/splitSplit/lstm_858/lstm_cell_756/split/split_dim:output:0'lstm_858/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_858/lstm_cell_756/SigmoidSigmoid%lstm_858/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_858/lstm_cell_756/Sigmoid_1Sigmoid%lstm_858/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_858/lstm_cell_756/mulMul$lstm_858/lstm_cell_756/Sigmoid_1:y:0lstm_858/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_858/lstm_cell_756/ReluRelu%lstm_858/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_858/lstm_cell_756/mul_1Mul"lstm_858/lstm_cell_756/Sigmoid:y:0)lstm_858/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_858/lstm_cell_756/add_1AddV2lstm_858/lstm_cell_756/mul:z:0 lstm_858/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_858/lstm_cell_756/Sigmoid_2Sigmoid%lstm_858/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_858/lstm_cell_756/Relu_1Relu lstm_858/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_858/lstm_cell_756/mul_2Mul$lstm_858/lstm_cell_756/Sigmoid_2:y:0+lstm_858/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_858/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_858/TensorArrayV2_1TensorListReserve/lstm_858/TensorArrayV2_1/element_shape:output:0!lstm_858/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_858/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_858/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_858/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_858/whileWhile$lstm_858/while/loop_counter:output:0*lstm_858/while/maximum_iterations:output:0lstm_858/time:output:0!lstm_858/TensorArrayV2_1:handle:0lstm_858/zeros:output:0lstm_858/zeros_1:output:0!lstm_858/strided_slice_1:output:0@lstm_858/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_858_lstm_cell_756_matmul_readvariableop_resource7lstm_858_lstm_cell_756_matmul_1_readvariableop_resource6lstm_858_lstm_cell_756_biasadd_readvariableop_resource*
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
lstm_858_while_body_4587171*'
condR
lstm_858_while_cond_4587170*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_858/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_858/TensorArrayV2Stack/TensorListStackTensorListStacklstm_858/while:output:3Blstm_858/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_858/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_858/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_858/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_858/strided_slice_3StridedSlice4lstm_858/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_858/strided_slice_3/stack:output:0)lstm_858/strided_slice_3/stack_1:output:0)lstm_858/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_858/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_858/transpose_1	Transpose4lstm_858/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_858/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_858/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_859/ShapeShapelstm_858/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_859/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_859/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_859/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_859/strided_sliceStridedSlicelstm_859/Shape:output:0%lstm_859/strided_slice/stack:output:0'lstm_859/strided_slice/stack_1:output:0'lstm_859/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_859/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_859/zeros/packedPacklstm_859/strided_slice:output:0 lstm_859/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_859/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_859/zerosFilllstm_859/zeros/packed:output:0lstm_859/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_859/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_859/zeros_1/packedPacklstm_859/strided_slice:output:0"lstm_859/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_859/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_859/zeros_1Fill lstm_859/zeros_1/packed:output:0lstm_859/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_859/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_859/transpose	Transposelstm_858/transpose_1:y:0 lstm_859/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_859/Shape_1Shapelstm_859/transpose:y:0*
T0*
_output_shapes
:h
lstm_859/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_859/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_859/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_859/strided_slice_1StridedSlicelstm_859/Shape_1:output:0'lstm_859/strided_slice_1/stack:output:0)lstm_859/strided_slice_1/stack_1:output:0)lstm_859/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_859/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_859/TensorArrayV2TensorListReserve-lstm_859/TensorArrayV2/element_shape:output:0!lstm_859/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_859/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_859/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_859/transpose:y:0Glstm_859/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_859/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_859/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_859/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_859/strided_slice_2StridedSlicelstm_859/transpose:y:0'lstm_859/strided_slice_2/stack:output:0)lstm_859/strided_slice_2/stack_1:output:0)lstm_859/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_859/lstm_cell_757/MatMul/ReadVariableOpReadVariableOp5lstm_859_lstm_cell_757_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_859/lstm_cell_757/MatMulMatMul!lstm_859/strided_slice_2:output:04lstm_859/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_859/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp7lstm_859_lstm_cell_757_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_859/lstm_cell_757/MatMul_1MatMullstm_859/zeros:output:06lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_859/lstm_cell_757/addAddV2'lstm_859/lstm_cell_757/MatMul:product:0)lstm_859/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_859/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp6lstm_859_lstm_cell_757_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_859/lstm_cell_757/BiasAddBiasAddlstm_859/lstm_cell_757/add:z:05lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_859/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_859/lstm_cell_757/splitSplit/lstm_859/lstm_cell_757/split/split_dim:output:0'lstm_859/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_859/lstm_cell_757/SigmoidSigmoid%lstm_859/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_859/lstm_cell_757/Sigmoid_1Sigmoid%lstm_859/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_859/lstm_cell_757/mulMul$lstm_859/lstm_cell_757/Sigmoid_1:y:0lstm_859/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_859/lstm_cell_757/ReluRelu%lstm_859/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_859/lstm_cell_757/mul_1Mul"lstm_859/lstm_cell_757/Sigmoid:y:0)lstm_859/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_859/lstm_cell_757/add_1AddV2lstm_859/lstm_cell_757/mul:z:0 lstm_859/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_859/lstm_cell_757/Sigmoid_2Sigmoid%lstm_859/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_859/lstm_cell_757/Relu_1Relu lstm_859/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_859/lstm_cell_757/mul_2Mul$lstm_859/lstm_cell_757/Sigmoid_2:y:0+lstm_859/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_859/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_859/TensorArrayV2_1TensorListReserve/lstm_859/TensorArrayV2_1/element_shape:output:0!lstm_859/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_859/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_859/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_859/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_859/whileWhile$lstm_859/while/loop_counter:output:0*lstm_859/while/maximum_iterations:output:0lstm_859/time:output:0!lstm_859/TensorArrayV2_1:handle:0lstm_859/zeros:output:0lstm_859/zeros_1:output:0!lstm_859/strided_slice_1:output:0@lstm_859/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_859_lstm_cell_757_matmul_readvariableop_resource7lstm_859_lstm_cell_757_matmul_1_readvariableop_resource6lstm_859_lstm_cell_757_biasadd_readvariableop_resource*
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
lstm_859_while_body_4587310*'
condR
lstm_859_while_cond_4587309*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_859/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_859/TensorArrayV2Stack/TensorListStackTensorListStacklstm_859/while:output:3Blstm_859/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_859/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_859/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_859/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_859/strided_slice_3StridedSlice4lstm_859/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_859/strided_slice_3/stack:output:0)lstm_859/strided_slice_3/stack_1:output:0)lstm_859/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_859/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_859/transpose_1	Transpose4lstm_859/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_859/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_859/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_860/ShapeShapelstm_859/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_860/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_860/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_860/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_860/strided_sliceStridedSlicelstm_860/Shape:output:0%lstm_860/strided_slice/stack:output:0'lstm_860/strided_slice/stack_1:output:0'lstm_860/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_860/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_860/zeros/packedPacklstm_860/strided_slice:output:0 lstm_860/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_860/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_860/zerosFilllstm_860/zeros/packed:output:0lstm_860/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_860/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_860/zeros_1/packedPacklstm_860/strided_slice:output:0"lstm_860/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_860/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_860/zeros_1Fill lstm_860/zeros_1/packed:output:0lstm_860/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_860/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_860/transpose	Transposelstm_859/transpose_1:y:0 lstm_860/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_860/Shape_1Shapelstm_860/transpose:y:0*
T0*
_output_shapes
:h
lstm_860/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_860/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_860/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_860/strided_slice_1StridedSlicelstm_860/Shape_1:output:0'lstm_860/strided_slice_1/stack:output:0)lstm_860/strided_slice_1/stack_1:output:0)lstm_860/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_860/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_860/TensorArrayV2TensorListReserve-lstm_860/TensorArrayV2/element_shape:output:0!lstm_860/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_860/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_860/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_860/transpose:y:0Glstm_860/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_860/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_860/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_860/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_860/strided_slice_2StridedSlicelstm_860/transpose:y:0'lstm_860/strided_slice_2/stack:output:0)lstm_860/strided_slice_2/stack_1:output:0)lstm_860/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_860/lstm_cell_758/MatMul/ReadVariableOpReadVariableOp5lstm_860_lstm_cell_758_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_860/lstm_cell_758/MatMulMatMul!lstm_860/strided_slice_2:output:04lstm_860/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_860/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOp7lstm_860_lstm_cell_758_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_860/lstm_cell_758/MatMul_1MatMullstm_860/zeros:output:06lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_860/lstm_cell_758/addAddV2'lstm_860/lstm_cell_758/MatMul:product:0)lstm_860/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_860/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOp6lstm_860_lstm_cell_758_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_860/lstm_cell_758/BiasAddBiasAddlstm_860/lstm_cell_758/add:z:05lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_860/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_860/lstm_cell_758/splitSplit/lstm_860/lstm_cell_758/split/split_dim:output:0'lstm_860/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_860/lstm_cell_758/SigmoidSigmoid%lstm_860/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_860/lstm_cell_758/Sigmoid_1Sigmoid%lstm_860/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_860/lstm_cell_758/mulMul$lstm_860/lstm_cell_758/Sigmoid_1:y:0lstm_860/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_860/lstm_cell_758/ReluRelu%lstm_860/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_860/lstm_cell_758/mul_1Mul"lstm_860/lstm_cell_758/Sigmoid:y:0)lstm_860/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_860/lstm_cell_758/add_1AddV2lstm_860/lstm_cell_758/mul:z:0 lstm_860/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_860/lstm_cell_758/Sigmoid_2Sigmoid%lstm_860/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_860/lstm_cell_758/Relu_1Relu lstm_860/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_860/lstm_cell_758/mul_2Mul$lstm_860/lstm_cell_758/Sigmoid_2:y:0+lstm_860/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_860/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_860/TensorArrayV2_1TensorListReserve/lstm_860/TensorArrayV2_1/element_shape:output:0!lstm_860/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_860/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_860/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_860/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_860/whileWhile$lstm_860/while/loop_counter:output:0*lstm_860/while/maximum_iterations:output:0lstm_860/time:output:0!lstm_860/TensorArrayV2_1:handle:0lstm_860/zeros:output:0lstm_860/zeros_1:output:0!lstm_860/strided_slice_1:output:0@lstm_860/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_860_lstm_cell_758_matmul_readvariableop_resource7lstm_860_lstm_cell_758_matmul_1_readvariableop_resource6lstm_860_lstm_cell_758_biasadd_readvariableop_resource*
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
lstm_860_while_body_4587449*'
condR
lstm_860_while_cond_4587448*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_860/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_860/TensorArrayV2Stack/TensorListStackTensorListStacklstm_860/while:output:3Blstm_860/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_860/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_860/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_860/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_860/strided_slice_3StridedSlice4lstm_860/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_860/strided_slice_3/stack:output:0)lstm_860/strided_slice_3/stack_1:output:0)lstm_860/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_860/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_860/transpose_1	Transpose4lstm_860/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_860/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_860/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_286/MatMul/ReadVariableOpReadVariableOp(dense_286_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_286/MatMulMatMul!lstm_860/strided_slice_3:output:0'dense_286/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_286/BiasAdd/ReadVariableOpReadVariableOp)dense_286_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_286/BiasAddBiasAdddense_286/MatMul:product:0(dense_286/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_286/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_286/BiasAdd/ReadVariableOp ^dense_286/MatMul/ReadVariableOp.^lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp-^lstm_858/lstm_cell_756/MatMul/ReadVariableOp/^lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp^lstm_858/while.^lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp-^lstm_859/lstm_cell_757/MatMul/ReadVariableOp/^lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp^lstm_859/while.^lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp-^lstm_860/lstm_cell_758/MatMul/ReadVariableOp/^lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp^lstm_860/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_286/BiasAdd/ReadVariableOp dense_286/BiasAdd/ReadVariableOp2B
dense_286/MatMul/ReadVariableOpdense_286/MatMul/ReadVariableOp2^
-lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp-lstm_858/lstm_cell_756/BiasAdd/ReadVariableOp2\
,lstm_858/lstm_cell_756/MatMul/ReadVariableOp,lstm_858/lstm_cell_756/MatMul/ReadVariableOp2`
.lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp.lstm_858/lstm_cell_756/MatMul_1/ReadVariableOp2 
lstm_858/whilelstm_858/while2^
-lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp-lstm_859/lstm_cell_757/BiasAdd/ReadVariableOp2\
,lstm_859/lstm_cell_757/MatMul/ReadVariableOp,lstm_859/lstm_cell_757/MatMul/ReadVariableOp2`
.lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp.lstm_859/lstm_cell_757/MatMul_1/ReadVariableOp2 
lstm_859/whilelstm_859/while2^
-lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp-lstm_860/lstm_cell_758/BiasAdd/ReadVariableOp2\
,lstm_860/lstm_cell_758/MatMul/ReadVariableOp,lstm_860/lstm_cell_758/MatMul/ReadVariableOp2`
.lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp.lstm_860/lstm_cell_758/MatMul_1/ReadVariableOp2 
lstm_860/whilelstm_860/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_859_while_cond_4587309.
*lstm_859_while_lstm_859_while_loop_counter4
0lstm_859_while_lstm_859_while_maximum_iterations
lstm_859_while_placeholder 
lstm_859_while_placeholder_1 
lstm_859_while_placeholder_2 
lstm_859_while_placeholder_30
,lstm_859_while_less_lstm_859_strided_slice_1G
Clstm_859_while_lstm_859_while_cond_4587309___redundant_placeholder0G
Clstm_859_while_lstm_859_while_cond_4587309___redundant_placeholder1G
Clstm_859_while_lstm_859_while_cond_4587309___redundant_placeholder2G
Clstm_859_while_lstm_859_while_cond_4587309___redundant_placeholder3
lstm_859_while_identity
?
lstm_859/while/LessLesslstm_859_while_placeholder,lstm_859_while_less_lstm_859_strided_slice_1*
T0*
_output_shapes
: ]
lstm_859/while/IdentityIdentitylstm_859/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_859_while_identity lstm_859/while/Identity:output:0*(
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4585412

inputs'
lstm_cell_758_4585330:2('
lstm_cell_758_4585332:
(#
lstm_cell_758_4585334:(
identity??%lstm_cell_758/StatefulPartitionedCall?while;
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
%lstm_cell_758/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_758_4585330lstm_cell_758_4585332lstm_cell_758_4585334*
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
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4585284n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_758_4585330lstm_cell_758_4585332lstm_cell_758_4585334*
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
while_body_4585343*
condR
while_cond_4585342*K
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
NoOpNoOp&^lstm_cell_758/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_758/StatefulPartitionedCall%lstm_cell_758/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_860_layer_call_fn_4588782
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4585221o
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
?T
?
*sequential_286_lstm_860_while_body_4584281L
Hsequential_286_lstm_860_while_sequential_286_lstm_860_while_loop_counterR
Nsequential_286_lstm_860_while_sequential_286_lstm_860_while_maximum_iterations-
)sequential_286_lstm_860_while_placeholder/
+sequential_286_lstm_860_while_placeholder_1/
+sequential_286_lstm_860_while_placeholder_2/
+sequential_286_lstm_860_while_placeholder_3K
Gsequential_286_lstm_860_while_sequential_286_lstm_860_strided_slice_1_0?
?sequential_286_lstm_860_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_860_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_286_lstm_860_while_lstm_cell_758_matmul_readvariableop_resource_0:2(`
Nsequential_286_lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource_0:
([
Msequential_286_lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource_0:(*
&sequential_286_lstm_860_while_identity,
(sequential_286_lstm_860_while_identity_1,
(sequential_286_lstm_860_while_identity_2,
(sequential_286_lstm_860_while_identity_3,
(sequential_286_lstm_860_while_identity_4,
(sequential_286_lstm_860_while_identity_5I
Esequential_286_lstm_860_while_sequential_286_lstm_860_strided_slice_1?
?sequential_286_lstm_860_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_860_tensorarrayunstack_tensorlistfromtensor\
Jsequential_286_lstm_860_while_lstm_cell_758_matmul_readvariableop_resource:2(^
Lsequential_286_lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource:
(Y
Ksequential_286_lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource:(??Bsequential_286/lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp?Asequential_286/lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp?Csequential_286/lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp?
Osequential_286/lstm_860/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_286/lstm_860/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_286_lstm_860_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_860_tensorarrayunstack_tensorlistfromtensor_0)sequential_286_lstm_860_while_placeholderXsequential_286/lstm_860/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_286/lstm_860/while/lstm_cell_758/MatMul/ReadVariableOpReadVariableOpLsequential_286_lstm_860_while_lstm_cell_758_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_286/lstm_860/while/lstm_cell_758/MatMulMatMulHsequential_286/lstm_860/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_286/lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_286/lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOpReadVariableOpNsequential_286_lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_286/lstm_860/while/lstm_cell_758/MatMul_1MatMul+sequential_286_lstm_860_while_placeholder_2Ksequential_286/lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_286/lstm_860/while/lstm_cell_758/addAddV2<sequential_286/lstm_860/while/lstm_cell_758/MatMul:product:0>sequential_286/lstm_860/while/lstm_cell_758/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_286/lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOpReadVariableOpMsequential_286_lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_286/lstm_860/while/lstm_cell_758/BiasAddBiasAdd3sequential_286/lstm_860/while/lstm_cell_758/add:z:0Jsequential_286/lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_286/lstm_860/while/lstm_cell_758/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_286/lstm_860/while/lstm_cell_758/splitSplitDsequential_286/lstm_860/while/lstm_cell_758/split/split_dim:output:0<sequential_286/lstm_860/while/lstm_cell_758/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_286/lstm_860/while/lstm_cell_758/SigmoidSigmoid:sequential_286/lstm_860/while/lstm_cell_758/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_286/lstm_860/while/lstm_cell_758/Sigmoid_1Sigmoid:sequential_286/lstm_860/while/lstm_cell_758/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_286/lstm_860/while/lstm_cell_758/mulMul9sequential_286/lstm_860/while/lstm_cell_758/Sigmoid_1:y:0+sequential_286_lstm_860_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_286/lstm_860/while/lstm_cell_758/ReluRelu:sequential_286/lstm_860/while/lstm_cell_758/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_286/lstm_860/while/lstm_cell_758/mul_1Mul7sequential_286/lstm_860/while/lstm_cell_758/Sigmoid:y:0>sequential_286/lstm_860/while/lstm_cell_758/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_286/lstm_860/while/lstm_cell_758/add_1AddV23sequential_286/lstm_860/while/lstm_cell_758/mul:z:05sequential_286/lstm_860/while/lstm_cell_758/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_286/lstm_860/while/lstm_cell_758/Sigmoid_2Sigmoid:sequential_286/lstm_860/while/lstm_cell_758/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_286/lstm_860/while/lstm_cell_758/Relu_1Relu5sequential_286/lstm_860/while/lstm_cell_758/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_286/lstm_860/while/lstm_cell_758/mul_2Mul9sequential_286/lstm_860/while/lstm_cell_758/Sigmoid_2:y:0@sequential_286/lstm_860/while/lstm_cell_758/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_286/lstm_860/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_286_lstm_860_while_placeholder_1)sequential_286_lstm_860_while_placeholder5sequential_286/lstm_860/while/lstm_cell_758/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_286/lstm_860/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_286/lstm_860/while/addAddV2)sequential_286_lstm_860_while_placeholder,sequential_286/lstm_860/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_286/lstm_860/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_286/lstm_860/while/add_1AddV2Hsequential_286_lstm_860_while_sequential_286_lstm_860_while_loop_counter.sequential_286/lstm_860/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_286/lstm_860/while/IdentityIdentity'sequential_286/lstm_860/while/add_1:z:0#^sequential_286/lstm_860/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_860/while/Identity_1IdentityNsequential_286_lstm_860_while_sequential_286_lstm_860_while_maximum_iterations#^sequential_286/lstm_860/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_860/while/Identity_2Identity%sequential_286/lstm_860/while/add:z:0#^sequential_286/lstm_860/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_860/while/Identity_3IdentityRsequential_286/lstm_860/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_286/lstm_860/while/NoOp*
T0*
_output_shapes
: ?
(sequential_286/lstm_860/while/Identity_4Identity5sequential_286/lstm_860/while/lstm_cell_758/mul_2:z:0#^sequential_286/lstm_860/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_286/lstm_860/while/Identity_5Identity5sequential_286/lstm_860/while/lstm_cell_758/add_1:z:0#^sequential_286/lstm_860/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_286/lstm_860/while/NoOpNoOpC^sequential_286/lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOpB^sequential_286/lstm_860/while/lstm_cell_758/MatMul/ReadVariableOpD^sequential_286/lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_286_lstm_860_while_identity/sequential_286/lstm_860/while/Identity:output:0"]
(sequential_286_lstm_860_while_identity_11sequential_286/lstm_860/while/Identity_1:output:0"]
(sequential_286_lstm_860_while_identity_21sequential_286/lstm_860/while/Identity_2:output:0"]
(sequential_286_lstm_860_while_identity_31sequential_286/lstm_860/while/Identity_3:output:0"]
(sequential_286_lstm_860_while_identity_41sequential_286/lstm_860/while/Identity_4:output:0"]
(sequential_286_lstm_860_while_identity_51sequential_286/lstm_860/while/Identity_5:output:0"?
Ksequential_286_lstm_860_while_lstm_cell_758_biasadd_readvariableop_resourceMsequential_286_lstm_860_while_lstm_cell_758_biasadd_readvariableop_resource_0"?
Lsequential_286_lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resourceNsequential_286_lstm_860_while_lstm_cell_758_matmul_1_readvariableop_resource_0"?
Jsequential_286_lstm_860_while_lstm_cell_758_matmul_readvariableop_resourceLsequential_286_lstm_860_while_lstm_cell_758_matmul_readvariableop_resource_0"?
Esequential_286_lstm_860_while_sequential_286_lstm_860_strided_slice_1Gsequential_286_lstm_860_while_sequential_286_lstm_860_strided_slice_1_0"?
?sequential_286_lstm_860_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_860_tensorarrayunstack_tensorlistfromtensor?sequential_286_lstm_860_while_tensorarrayv2read_tensorlistgetitem_sequential_286_lstm_860_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_286/lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOpBsequential_286/lstm_860/while/lstm_cell_758/BiasAdd/ReadVariableOp2?
Asequential_286/lstm_860/while/lstm_cell_758/MatMul/ReadVariableOpAsequential_286/lstm_860/while/lstm_cell_758/MatMul/ReadVariableOp2?
Csequential_286/lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOpCsequential_286/lstm_860/while/lstm_cell_758/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_860_layer_call_fn_4588815

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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4586086o
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4584871

inputs(
lstm_cell_757_4584789:	d?(
lstm_cell_757_4584791:	2?$
lstm_cell_757_4584793:	?
identity??%lstm_cell_757/StatefulPartitionedCall?while;
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
%lstm_cell_757/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_757_4584789lstm_cell_757_4584791lstm_cell_757_4584793*
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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4584788n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_757_4584789lstm_cell_757_4584791lstm_cell_757_4584793*
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
while_body_4584802*
condR
while_cond_4584801*K
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
NoOpNoOp&^lstm_cell_757/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_757/StatefulPartitionedCall%lstm_cell_757/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4588544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_757_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_757_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_757_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_757_matmul_readvariableop_resource:	d?G
4while_lstm_cell_757_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_757_biasadd_readvariableop_resource:	???*while/lstm_cell_757/BiasAdd/ReadVariableOp?)while/lstm_cell_757/MatMul/ReadVariableOp?+while/lstm_cell_757/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_757/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_757_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_757/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_757_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_757/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_757/addAddV2$while/lstm_cell_757/MatMul:product:0&while/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_757_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_757/BiasAddBiasAddwhile/lstm_cell_757/add:z:02while/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_757/splitSplit,while/lstm_cell_757/split/split_dim:output:0$while/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_757/SigmoidSigmoid"while/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_1Sigmoid"while/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mulMul!while/lstm_cell_757/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_757/ReluRelu"while/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_1Mulwhile/lstm_cell_757/Sigmoid:y:0&while/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/add_1AddV2while/lstm_cell_757/mul:z:0while/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_2Sigmoid"while/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_757/Relu_1Reluwhile/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_2Mul!while/lstm_cell_757/Sigmoid_2:y:0(while/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_757/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_757/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_757/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_757/BiasAdd/ReadVariableOp*^while/lstm_cell_757/MatMul/ReadVariableOp,^while/lstm_cell_757/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_757_biasadd_readvariableop_resource5while_lstm_cell_757_biasadd_readvariableop_resource_0"n
4while_lstm_cell_757_matmul_1_readvariableop_resource6while_lstm_cell_757_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_757_matmul_readvariableop_resource4while_lstm_cell_757_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_757/BiasAdd/ReadVariableOp*while/lstm_cell_757/BiasAdd/ReadVariableOp2V
)while/lstm_cell_757/MatMul/ReadVariableOp)while/lstm_cell_757/MatMul/ReadVariableOp2Z
+while/lstm_cell_757/MatMul_1/ReadVariableOp+while/lstm_cell_757/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4587784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4587784___redundant_placeholder05
1while_while_cond_4587784___redundant_placeholder15
1while_while_cond_4587784___redundant_placeholder25
1while_while_cond_4587784___redundant_placeholder3
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
while_cond_4588543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4588543___redundant_placeholder05
1while_while_cond_4588543___redundant_placeholder15
1while_while_cond_4588543___redundant_placeholder25
1while_while_cond_4588543___redundant_placeholder3
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
*__inference_lstm_859_layer_call_fn_4588199

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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4586251s
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
while_cond_4588686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4588686___redundant_placeholder05
1while_while_cond_4588686___redundant_placeholder15
1while_while_cond_4588686___redundant_placeholder25
1while_while_cond_4588686___redundant_placeholder3
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
%__inference_signature_wrapper_4586631
lstm_858_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_858_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4584371o
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
_user_specified_namelstm_858_input
?	
?
F__inference_dense_286_layer_call_and_return_conditional_losses_4589406

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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4588155

inputs?
,lstm_cell_756_matmul_readvariableop_resource:	?A
.lstm_cell_756_matmul_1_readvariableop_resource:	d?<
-lstm_cell_756_biasadd_readvariableop_resource:	?
identity??$lstm_cell_756/BiasAdd/ReadVariableOp?#lstm_cell_756/MatMul/ReadVariableOp?%lstm_cell_756/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_756/MatMul/ReadVariableOpReadVariableOp,lstm_cell_756_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_756/MatMulMatMulstrided_slice_2:output:0+lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_756_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_756/MatMul_1MatMulzeros:output:0-lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_756/addAddV2lstm_cell_756/MatMul:product:0 lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_756_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_756/BiasAddBiasAddlstm_cell_756/add:z:0,lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_756/splitSplit&lstm_cell_756/split/split_dim:output:0lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_756/SigmoidSigmoidlstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_1Sigmoidlstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_756/mulMullstm_cell_756/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_756/ReluRelulstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_1Mullstm_cell_756/Sigmoid:y:0 lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_756/add_1AddV2lstm_cell_756/mul:z:0lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_2Sigmoidlstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_756/Relu_1Relulstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_2Mullstm_cell_756/Sigmoid_2:y:0"lstm_cell_756/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_756_matmul_readvariableop_resource.lstm_cell_756_matmul_1_readvariableop_resource-lstm_cell_756_biasadd_readvariableop_resource*
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
while_body_4588071*
condR
while_cond_4588070*K
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
NoOpNoOp%^lstm_cell_756/BiasAdd/ReadVariableOp$^lstm_cell_756/MatMul/ReadVariableOp&^lstm_cell_756/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_756/BiasAdd/ReadVariableOp$lstm_cell_756/BiasAdd/ReadVariableOp2J
#lstm_cell_756/MatMul/ReadVariableOp#lstm_cell_756/MatMul/ReadVariableOp2N
%lstm_cell_756/MatMul_1/ReadVariableOp%lstm_cell_756/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_757_layer_call_fn_4589521

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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4584788o
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4585221

inputs'
lstm_cell_758_4585139:2('
lstm_cell_758_4585141:
(#
lstm_cell_758_4585143:(
identity??%lstm_cell_758/StatefulPartitionedCall?while;
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
%lstm_cell_758/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_758_4585139lstm_cell_758_4585141lstm_cell_758_4585143*
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
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4585138n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_758_4585139lstm_cell_758_4585141lstm_cell_758_4585143*
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
while_body_4585152*
condR
while_cond_4585151*K
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
NoOpNoOp&^lstm_cell_758/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_758/StatefulPartitionedCall%lstm_cell_758/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_858_layer_call_and_return_conditional_losses_4587726
inputs_0?
,lstm_cell_756_matmul_readvariableop_resource:	?A
.lstm_cell_756_matmul_1_readvariableop_resource:	d?<
-lstm_cell_756_biasadd_readvariableop_resource:	?
identity??$lstm_cell_756/BiasAdd/ReadVariableOp?#lstm_cell_756/MatMul/ReadVariableOp?%lstm_cell_756/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_756/MatMul/ReadVariableOpReadVariableOp,lstm_cell_756_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_756/MatMulMatMulstrided_slice_2:output:0+lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_756_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_756/MatMul_1MatMulzeros:output:0-lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_756/addAddV2lstm_cell_756/MatMul:product:0 lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_756_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_756/BiasAddBiasAddlstm_cell_756/add:z:0,lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_756/splitSplit&lstm_cell_756/split/split_dim:output:0lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_756/SigmoidSigmoidlstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_1Sigmoidlstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_756/mulMullstm_cell_756/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_756/ReluRelulstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_1Mullstm_cell_756/Sigmoid:y:0 lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_756/add_1AddV2lstm_cell_756/mul:z:0lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_2Sigmoidlstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_756/Relu_1Relulstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_2Mullstm_cell_756/Sigmoid_2:y:0"lstm_cell_756/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_756_matmul_readvariableop_resource.lstm_cell_756_matmul_1_readvariableop_resource-lstm_cell_756_biasadd_readvariableop_resource*
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
while_body_4587642*
condR
while_cond_4587641*K
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
NoOpNoOp%^lstm_cell_756/BiasAdd/ReadVariableOp$^lstm_cell_756/MatMul/ReadVariableOp&^lstm_cell_756/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_756/BiasAdd/ReadVariableOp$lstm_cell_756/BiasAdd/ReadVariableOp2J
#lstm_cell_756/MatMul/ReadVariableOp#lstm_cell_756/MatMul/ReadVariableOp2N
%lstm_cell_756/MatMul_1/ReadVariableOp%lstm_cell_756/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4585284

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
?
E__inference_lstm_859_layer_call_and_return_conditional_losses_4585062

inputs(
lstm_cell_757_4584980:	d?(
lstm_cell_757_4584982:	2?$
lstm_cell_757_4584984:	?
identity??%lstm_cell_757/StatefulPartitionedCall?while;
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
%lstm_cell_757/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_757_4584980lstm_cell_757_4584982lstm_cell_757_4584984*
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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4584934n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_757_4584980lstm_cell_757_4584982lstm_cell_757_4584984*
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
while_body_4584993*
condR
while_cond_4584992*K
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
NoOpNoOp&^lstm_cell_757/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_757/StatefulPartitionedCall%lstm_cell_757/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4585138

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
while_body_4586167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_757_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_757_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_757_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_757_matmul_readvariableop_resource:	d?G
4while_lstm_cell_757_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_757_biasadd_readvariableop_resource:	???*while/lstm_cell_757/BiasAdd/ReadVariableOp?)while/lstm_cell_757/MatMul/ReadVariableOp?+while/lstm_cell_757/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_757/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_757_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_757/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_757_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_757/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_757/addAddV2$while/lstm_cell_757/MatMul:product:0&while/lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_757_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_757/BiasAddBiasAddwhile/lstm_cell_757/add:z:02while/lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_757/splitSplit,while/lstm_cell_757/split/split_dim:output:0$while/lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_757/SigmoidSigmoid"while/lstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_1Sigmoid"while/lstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mulMul!while/lstm_cell_757/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_757/ReluRelu"while/lstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_1Mulwhile/lstm_cell_757/Sigmoid:y:0&while/lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/add_1AddV2while/lstm_cell_757/mul:z:0while/lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_757/Sigmoid_2Sigmoid"while/lstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_757/Relu_1Reluwhile/lstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_757/mul_2Mul!while/lstm_cell_757/Sigmoid_2:y:0(while/lstm_cell_757/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_757/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_757/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_757/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_757/BiasAdd/ReadVariableOp*^while/lstm_cell_757/MatMul/ReadVariableOp,^while/lstm_cell_757/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_757_biasadd_readvariableop_resource5while_lstm_cell_757_biasadd_readvariableop_resource_0"n
4while_lstm_cell_757_matmul_1_readvariableop_resource6while_lstm_cell_757_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_757_matmul_readvariableop_resource4while_lstm_cell_757_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_757/BiasAdd/ReadVariableOp*while/lstm_cell_757/BiasAdd/ReadVariableOp2V
)while/lstm_cell_757/MatMul/ReadVariableOp)while/lstm_cell_757/MatMul/ReadVariableOp2Z
+while/lstm_cell_757/MatMul_1/ReadVariableOp+while/lstm_cell_757/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588485
inputs_0?
,lstm_cell_757_matmul_readvariableop_resource:	d?A
.lstm_cell_757_matmul_1_readvariableop_resource:	2?<
-lstm_cell_757_biasadd_readvariableop_resource:	?
identity??$lstm_cell_757/BiasAdd/ReadVariableOp?#lstm_cell_757/MatMul/ReadVariableOp?%lstm_cell_757/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_757/MatMul/ReadVariableOpReadVariableOp,lstm_cell_757_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_757/MatMulMatMulstrided_slice_2:output:0+lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_757_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_757/MatMul_1MatMulzeros:output:0-lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_757/addAddV2lstm_cell_757/MatMul:product:0 lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_757_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_757/BiasAddBiasAddlstm_cell_757/add:z:0,lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_757/splitSplit&lstm_cell_757/split/split_dim:output:0lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_757/SigmoidSigmoidlstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_1Sigmoidlstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_757/mulMullstm_cell_757/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_757/ReluRelulstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_1Mullstm_cell_757/Sigmoid:y:0 lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_757/add_1AddV2lstm_cell_757/mul:z:0lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_2Sigmoidlstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_757/Relu_1Relulstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_2Mullstm_cell_757/Sigmoid_2:y:0"lstm_cell_757/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_757_matmul_readvariableop_resource.lstm_cell_757_matmul_1_readvariableop_resource-lstm_cell_757_biasadd_readvariableop_resource*
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
while_body_4588401*
condR
while_cond_4588400*K
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
NoOpNoOp%^lstm_cell_757/BiasAdd/ReadVariableOp$^lstm_cell_757/MatMul/ReadVariableOp&^lstm_cell_757/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_757/BiasAdd/ReadVariableOp$lstm_cell_757/BiasAdd/ReadVariableOp2J
#lstm_cell_757/MatMul/ReadVariableOp#lstm_cell_757/MatMul/ReadVariableOp2N
%lstm_cell_757/MatMul_1/ReadVariableOp%lstm_cell_757/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4585486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_756_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_756_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_756_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_756_matmul_readvariableop_resource:	?G
4while_lstm_cell_756_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_756_biasadd_readvariableop_resource:	???*while/lstm_cell_756/BiasAdd/ReadVariableOp?)while/lstm_cell_756/MatMul/ReadVariableOp?+while/lstm_cell_756/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_756/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_756_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_756/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_756_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_756/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_756/addAddV2$while/lstm_cell_756/MatMul:product:0&while/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_756_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_756/BiasAddBiasAddwhile/lstm_cell_756/add:z:02while/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_756/splitSplit,while/lstm_cell_756/split/split_dim:output:0$while/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_756/SigmoidSigmoid"while/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_1Sigmoid"while/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mulMul!while/lstm_cell_756/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_756/ReluRelu"while/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_1Mulwhile/lstm_cell_756/Sigmoid:y:0&while/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/add_1AddV2while/lstm_cell_756/mul:z:0while/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_2Sigmoid"while/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_756/Relu_1Reluwhile/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_2Mul!while/lstm_cell_756/Sigmoid_2:y:0(while/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_756/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_756/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_756/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_756/BiasAdd/ReadVariableOp*^while/lstm_cell_756/MatMul/ReadVariableOp,^while/lstm_cell_756/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_756_biasadd_readvariableop_resource5while_lstm_cell_756_biasadd_readvariableop_resource_0"n
4while_lstm_cell_756_matmul_1_readvariableop_resource6while_lstm_cell_756_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_756_matmul_readvariableop_resource4while_lstm_cell_756_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_756/BiasAdd/ReadVariableOp*while/lstm_cell_756/BiasAdd/ReadVariableOp2V
)while/lstm_cell_756/MatMul/ReadVariableOp)while/lstm_cell_756/MatMul/ReadVariableOp2Z
+while/lstm_cell_756/MatMul_1/ReadVariableOp+while/lstm_cell_756/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_860_layer_call_fn_4588804

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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4585870o
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

?
0__inference_sequential_286_layer_call_fn_4586536
lstm_858_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_858_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4586484o
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
_user_specified_namelstm_858_input
?J
?
E__inference_lstm_858_layer_call_and_return_conditional_losses_4585570

inputs?
,lstm_cell_756_matmul_readvariableop_resource:	?A
.lstm_cell_756_matmul_1_readvariableop_resource:	d?<
-lstm_cell_756_biasadd_readvariableop_resource:	?
identity??$lstm_cell_756/BiasAdd/ReadVariableOp?#lstm_cell_756/MatMul/ReadVariableOp?%lstm_cell_756/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_756/MatMul/ReadVariableOpReadVariableOp,lstm_cell_756_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_756/MatMulMatMulstrided_slice_2:output:0+lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_756_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_756/MatMul_1MatMulzeros:output:0-lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_756/addAddV2lstm_cell_756/MatMul:product:0 lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_756_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_756/BiasAddBiasAddlstm_cell_756/add:z:0,lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_756/splitSplit&lstm_cell_756/split/split_dim:output:0lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_756/SigmoidSigmoidlstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_1Sigmoidlstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_756/mulMullstm_cell_756/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_756/ReluRelulstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_1Mullstm_cell_756/Sigmoid:y:0 lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_756/add_1AddV2lstm_cell_756/mul:z:0lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_756/Sigmoid_2Sigmoidlstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_756/Relu_1Relulstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_756/mul_2Mullstm_cell_756/Sigmoid_2:y:0"lstm_cell_756/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_756_matmul_readvariableop_resource.lstm_cell_756_matmul_1_readvariableop_resource-lstm_cell_756_biasadd_readvariableop_resource*
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
while_body_4585486*
condR
while_cond_4585485*K
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
NoOpNoOp%^lstm_cell_756/BiasAdd/ReadVariableOp$^lstm_cell_756/MatMul/ReadVariableOp&^lstm_cell_756/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_756/BiasAdd/ReadVariableOp$lstm_cell_756/BiasAdd/ReadVariableOp2J
#lstm_cell_756/MatMul/ReadVariableOp#lstm_cell_756/MatMul/ReadVariableOp2N
%lstm_cell_756/MatMul_1/ReadVariableOp%lstm_cell_756/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_758_layer_call_fn_4589636

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
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4585284o
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
?
?
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4589570

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
?
?
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4589700

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
while_body_4587642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_756_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_756_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_756_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_756_matmul_readvariableop_resource:	?G
4while_lstm_cell_756_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_756_biasadd_readvariableop_resource:	???*while/lstm_cell_756/BiasAdd/ReadVariableOp?)while/lstm_cell_756/MatMul/ReadVariableOp?+while/lstm_cell_756/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_756/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_756_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_756/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_756/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_756/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_756_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_756/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_756/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_756/addAddV2$while/lstm_cell_756/MatMul:product:0&while/lstm_cell_756/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_756/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_756_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_756/BiasAddBiasAddwhile/lstm_cell_756/add:z:02while/lstm_cell_756/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_756/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_756/splitSplit,while/lstm_cell_756/split/split_dim:output:0$while/lstm_cell_756/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_756/SigmoidSigmoid"while/lstm_cell_756/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_1Sigmoid"while/lstm_cell_756/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mulMul!while/lstm_cell_756/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_756/ReluRelu"while/lstm_cell_756/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_1Mulwhile/lstm_cell_756/Sigmoid:y:0&while/lstm_cell_756/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/add_1AddV2while/lstm_cell_756/mul:z:0while/lstm_cell_756/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_756/Sigmoid_2Sigmoid"while/lstm_cell_756/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_756/Relu_1Reluwhile/lstm_cell_756/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_756/mul_2Mul!while/lstm_cell_756/Sigmoid_2:y:0(while/lstm_cell_756/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_756/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_756/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_756/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_756/BiasAdd/ReadVariableOp*^while/lstm_cell_756/MatMul/ReadVariableOp,^while/lstm_cell_756/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_756_biasadd_readvariableop_resource5while_lstm_cell_756_biasadd_readvariableop_resource_0"n
4while_lstm_cell_756_matmul_1_readvariableop_resource6while_lstm_cell_756_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_756_matmul_readvariableop_resource4while_lstm_cell_756_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_756/BiasAdd/ReadVariableOp*while/lstm_cell_756/BiasAdd/ReadVariableOp2V
)while/lstm_cell_756/MatMul/ReadVariableOp)while/lstm_cell_756/MatMul/ReadVariableOp2Z
+while/lstm_cell_756/MatMul_1/ReadVariableOp+while/lstm_cell_756/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4584801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4584801___redundant_placeholder05
1while_while_cond_4584801___redundant_placeholder15
1while_while_cond_4584801___redundant_placeholder25
1while_while_cond_4584801___redundant_placeholder3
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
*sequential_286_lstm_859_while_cond_4584141L
Hsequential_286_lstm_859_while_sequential_286_lstm_859_while_loop_counterR
Nsequential_286_lstm_859_while_sequential_286_lstm_859_while_maximum_iterations-
)sequential_286_lstm_859_while_placeholder/
+sequential_286_lstm_859_while_placeholder_1/
+sequential_286_lstm_859_while_placeholder_2/
+sequential_286_lstm_859_while_placeholder_3N
Jsequential_286_lstm_859_while_less_sequential_286_lstm_859_strided_slice_1e
asequential_286_lstm_859_while_sequential_286_lstm_859_while_cond_4584141___redundant_placeholder0e
asequential_286_lstm_859_while_sequential_286_lstm_859_while_cond_4584141___redundant_placeholder1e
asequential_286_lstm_859_while_sequential_286_lstm_859_while_cond_4584141___redundant_placeholder2e
asequential_286_lstm_859_while_sequential_286_lstm_859_while_cond_4584141___redundant_placeholder3*
&sequential_286_lstm_859_while_identity
?
"sequential_286/lstm_859/while/LessLess)sequential_286_lstm_859_while_placeholderJsequential_286_lstm_859_while_less_sequential_286_lstm_859_strided_slice_1*
T0*
_output_shapes
: {
&sequential_286/lstm_859/while/IdentityIdentity&sequential_286/lstm_859/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_286_lstm_859_while_identity/sequential_286/lstm_859/while/Identity:output:0*(
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4586251

inputs?
,lstm_cell_757_matmul_readvariableop_resource:	d?A
.lstm_cell_757_matmul_1_readvariableop_resource:	2?<
-lstm_cell_757_biasadd_readvariableop_resource:	?
identity??$lstm_cell_757/BiasAdd/ReadVariableOp?#lstm_cell_757/MatMul/ReadVariableOp?%lstm_cell_757/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_757/MatMul/ReadVariableOpReadVariableOp,lstm_cell_757_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_757/MatMulMatMulstrided_slice_2:output:0+lstm_cell_757/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_757/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_757_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_757/MatMul_1MatMulzeros:output:0-lstm_cell_757/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_757/addAddV2lstm_cell_757/MatMul:product:0 lstm_cell_757/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_757/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_757_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_757/BiasAddBiasAddlstm_cell_757/add:z:0,lstm_cell_757/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_757/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_757/splitSplit&lstm_cell_757/split/split_dim:output:0lstm_cell_757/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_757/SigmoidSigmoidlstm_cell_757/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_1Sigmoidlstm_cell_757/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_757/mulMullstm_cell_757/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_757/ReluRelulstm_cell_757/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_1Mullstm_cell_757/Sigmoid:y:0 lstm_cell_757/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_757/add_1AddV2lstm_cell_757/mul:z:0lstm_cell_757/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_757/Sigmoid_2Sigmoidlstm_cell_757/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_757/Relu_1Relulstm_cell_757/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_757/mul_2Mullstm_cell_757/Sigmoid_2:y:0"lstm_cell_757/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_757_matmul_readvariableop_resource.lstm_cell_757_matmul_1_readvariableop_resource-lstm_cell_757_biasadd_readvariableop_resource*
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
while_body_4586167*
condR
while_cond_4586166*K
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
NoOpNoOp%^lstm_cell_757/BiasAdd/ReadVariableOp$^lstm_cell_757/MatMul/ReadVariableOp&^lstm_cell_757/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_757/BiasAdd/ReadVariableOp$lstm_cell_757/BiasAdd/ReadVariableOp2J
#lstm_cell_757/MatMul/ReadVariableOp#lstm_cell_757/MatMul/ReadVariableOp2N
%lstm_cell_757/MatMul_1/ReadVariableOp%lstm_cell_757/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_858_layer_call_and_return_conditional_losses_4584712

inputs(
lstm_cell_756_4584630:	?(
lstm_cell_756_4584632:	d?$
lstm_cell_756_4584634:	?
identity??%lstm_cell_756/StatefulPartitionedCall?while;
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
%lstm_cell_756/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_756_4584630lstm_cell_756_4584632lstm_cell_756_4584634*
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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4584584n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_756_4584630lstm_cell_756_4584632lstm_cell_756_4584634*
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
while_body_4584643*
condR
while_cond_4584642*K
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
NoOpNoOp&^lstm_cell_756/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_756/StatefulPartitionedCall%lstm_cell_756/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_858_layer_call_fn_4587561
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4584712|
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
while_cond_4587641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4587641___redundant_placeholder05
1while_while_cond_4587641___redundant_placeholder15
1while_while_cond_4587641___redundant_placeholder25
1while_while_cond_4587641___redundant_placeholder3
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
lstm_858_input;
 serving_default_lstm_858_input:0?????????=
	dense_2860
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
2dense_286/kernel
:2dense_286/bias
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
0:.	?2lstm_858/lstm_cell_858/kernel
::8	d?2'lstm_858/lstm_cell_858/recurrent_kernel
*:(?2lstm_858/lstm_cell_858/bias
0:.	d?2lstm_859/lstm_cell_859/kernel
::8	2?2'lstm_859/lstm_cell_859/recurrent_kernel
*:(?2lstm_859/lstm_cell_859/bias
/:-2(2lstm_860/lstm_cell_860/kernel
9:7
(2'lstm_860/lstm_cell_860/recurrent_kernel
):'(2lstm_860/lstm_cell_860/bias
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
2Adam/dense_286/kernel/m
!:2Adam/dense_286/bias/m
5:3	?2$Adam/lstm_858/lstm_cell_858/kernel/m
?:=	d?2.Adam/lstm_858/lstm_cell_858/recurrent_kernel/m
/:-?2"Adam/lstm_858/lstm_cell_858/bias/m
5:3	d?2$Adam/lstm_859/lstm_cell_859/kernel/m
?:=	2?2.Adam/lstm_859/lstm_cell_859/recurrent_kernel/m
/:-?2"Adam/lstm_859/lstm_cell_859/bias/m
4:22(2$Adam/lstm_860/lstm_cell_860/kernel/m
>:<
(2.Adam/lstm_860/lstm_cell_860/recurrent_kernel/m
.:,(2"Adam/lstm_860/lstm_cell_860/bias/m
':%
2Adam/dense_286/kernel/v
!:2Adam/dense_286/bias/v
5:3	?2$Adam/lstm_858/lstm_cell_858/kernel/v
?:=	d?2.Adam/lstm_858/lstm_cell_858/recurrent_kernel/v
/:-?2"Adam/lstm_858/lstm_cell_858/bias/v
5:3	d?2$Adam/lstm_859/lstm_cell_859/kernel/v
?:=	2?2.Adam/lstm_859/lstm_cell_859/recurrent_kernel/v
/:-?2"Adam/lstm_859/lstm_cell_859/bias/v
4:22(2$Adam/lstm_860/lstm_cell_860/kernel/v
>:<
(2.Adam/lstm_860/lstm_cell_860/recurrent_kernel/v
.:,(2"Adam/lstm_860/lstm_cell_860/bias/v
?2?
0__inference_sequential_286_layer_call_fn_4585920
0__inference_sequential_286_layer_call_fn_4586658
0__inference_sequential_286_layer_call_fn_4586685
0__inference_sequential_286_layer_call_fn_4586536?
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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4587112
K__inference_sequential_286_layer_call_and_return_conditional_losses_4587539
K__inference_sequential_286_layer_call_and_return_conditional_losses_4586566
K__inference_sequential_286_layer_call_and_return_conditional_losses_4586596?
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
"__inference__wrapped_model_4584371lstm_858_input"?
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
*__inference_lstm_858_layer_call_fn_4587550
*__inference_lstm_858_layer_call_fn_4587561
*__inference_lstm_858_layer_call_fn_4587572
*__inference_lstm_858_layer_call_fn_4587583?
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4587726
E__inference_lstm_858_layer_call_and_return_conditional_losses_4587869
E__inference_lstm_858_layer_call_and_return_conditional_losses_4588012
E__inference_lstm_858_layer_call_and_return_conditional_losses_4588155?
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
*__inference_lstm_859_layer_call_fn_4588166
*__inference_lstm_859_layer_call_fn_4588177
*__inference_lstm_859_layer_call_fn_4588188
*__inference_lstm_859_layer_call_fn_4588199?
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588342
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588485
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588628
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588771?
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
*__inference_lstm_860_layer_call_fn_4588782
*__inference_lstm_860_layer_call_fn_4588793
*__inference_lstm_860_layer_call_fn_4588804
*__inference_lstm_860_layer_call_fn_4588815?
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4588958
E__inference_lstm_860_layer_call_and_return_conditional_losses_4589101
E__inference_lstm_860_layer_call_and_return_conditional_losses_4589244
E__inference_lstm_860_layer_call_and_return_conditional_losses_4589387?
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
+__inference_dense_286_layer_call_fn_4589396?
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
F__inference_dense_286_layer_call_and_return_conditional_losses_4589406?
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
%__inference_signature_wrapper_4586631lstm_858_input"?
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
/__inference_lstm_cell_756_layer_call_fn_4589423
/__inference_lstm_cell_756_layer_call_fn_4589440?
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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4589472
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4589504?
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
/__inference_lstm_cell_757_layer_call_fn_4589521
/__inference_lstm_cell_757_layer_call_fn_4589538?
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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4589570
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4589602?
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
/__inference_lstm_cell_758_layer_call_fn_4589619
/__inference_lstm_cell_758_layer_call_fn_4589636?
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
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4589668
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4589700?
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
"__inference__wrapped_model_4584371?-./012345!";?8
1?.
,?)
lstm_858_input?????????
? "5?2
0
	dense_286#? 
	dense_286??????????
F__inference_dense_286_layer_call_and_return_conditional_losses_4589406\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_286_layer_call_fn_4589396O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_858_layer_call_and_return_conditional_losses_4587726?-./O?L
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4587869?-./O?L
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4588012q-./??<
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
E__inference_lstm_858_layer_call_and_return_conditional_losses_4588155q-./??<
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
*__inference_lstm_858_layer_call_fn_4587550}-./O?L
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
*__inference_lstm_858_layer_call_fn_4587561}-./O?L
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
*__inference_lstm_858_layer_call_fn_4587572d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_858_layer_call_fn_4587583d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588342?012O?L
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588485?012O?L
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588628q012??<
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
E__inference_lstm_859_layer_call_and_return_conditional_losses_4588771q012??<
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
*__inference_lstm_859_layer_call_fn_4588166}012O?L
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
*__inference_lstm_859_layer_call_fn_4588177}012O?L
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
*__inference_lstm_859_layer_call_fn_4588188d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_859_layer_call_fn_4588199d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_860_layer_call_and_return_conditional_losses_4588958}345O?L
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4589101}345O?L
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4589244m345??<
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
E__inference_lstm_860_layer_call_and_return_conditional_losses_4589387m345??<
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
*__inference_lstm_860_layer_call_fn_4588782p345O?L
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
*__inference_lstm_860_layer_call_fn_4588793p345O?L
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
*__inference_lstm_860_layer_call_fn_4588804`345??<
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
*__inference_lstm_860_layer_call_fn_4588815`345??<
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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4589472?-./??}
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
J__inference_lstm_cell_756_layer_call_and_return_conditional_losses_4589504?-./??}
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
/__inference_lstm_cell_756_layer_call_fn_4589423?-./??}
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
/__inference_lstm_cell_756_layer_call_fn_4589440?-./??}
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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4589570?012??}
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
J__inference_lstm_cell_757_layer_call_and_return_conditional_losses_4589602?012??}
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
/__inference_lstm_cell_757_layer_call_fn_4589521?012??}
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
/__inference_lstm_cell_757_layer_call_fn_4589538?012??}
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
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4589668?345??}
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
J__inference_lstm_cell_758_layer_call_and_return_conditional_losses_4589700?345??}
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
/__inference_lstm_cell_758_layer_call_fn_4589619?345??}
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
/__inference_lstm_cell_758_layer_call_fn_4589636?345??}
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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4586566y-./012345!"C?@
9?6
,?)
lstm_858_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_286_layer_call_and_return_conditional_losses_4586596y-./012345!"C?@
9?6
,?)
lstm_858_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_286_layer_call_and_return_conditional_losses_4587112q-./012345!";?8
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
K__inference_sequential_286_layer_call_and_return_conditional_losses_4587539q-./012345!";?8
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
0__inference_sequential_286_layer_call_fn_4585920l-./012345!"C?@
9?6
,?)
lstm_858_input?????????
p 

 
? "???????????
0__inference_sequential_286_layer_call_fn_4586536l-./012345!"C?@
9?6
,?)
lstm_858_input?????????
p

 
? "???????????
0__inference_sequential_286_layer_call_fn_4586658d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_286_layer_call_fn_4586685d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4586631?-./012345!"M?J
? 
C?@
>
lstm_858_input,?)
lstm_858_input?????????"5?2
0
	dense_286#? 
	dense_286?????????