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
dense_265/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_265/kernel
u
$dense_265/kernel/Read/ReadVariableOpReadVariableOpdense_265/kernel*
_output_shapes

:
*
dtype0
t
dense_265/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_265/bias
m
"dense_265/bias/Read/ReadVariableOpReadVariableOpdense_265/bias*
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
lstm_795/lstm_cell_795/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_795/lstm_cell_795/kernel
?
1lstm_795/lstm_cell_795/kernel/Read/ReadVariableOpReadVariableOplstm_795/lstm_cell_795/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_795/lstm_cell_795/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_795/lstm_cell_795/recurrent_kernel
?
;lstm_795/lstm_cell_795/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_795/lstm_cell_795/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_795/lstm_cell_795/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_795/lstm_cell_795/bias
?
/lstm_795/lstm_cell_795/bias/Read/ReadVariableOpReadVariableOplstm_795/lstm_cell_795/bias*
_output_shapes	
:?*
dtype0
?
lstm_796/lstm_cell_796/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_796/lstm_cell_796/kernel
?
1lstm_796/lstm_cell_796/kernel/Read/ReadVariableOpReadVariableOplstm_796/lstm_cell_796/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_796/lstm_cell_796/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_796/lstm_cell_796/recurrent_kernel
?
;lstm_796/lstm_cell_796/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_796/lstm_cell_796/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_796/lstm_cell_796/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_796/lstm_cell_796/bias
?
/lstm_796/lstm_cell_796/bias/Read/ReadVariableOpReadVariableOplstm_796/lstm_cell_796/bias*
_output_shapes	
:?*
dtype0
?
lstm_797/lstm_cell_797/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_797/lstm_cell_797/kernel
?
1lstm_797/lstm_cell_797/kernel/Read/ReadVariableOpReadVariableOplstm_797/lstm_cell_797/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_797/lstm_cell_797/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_797/lstm_cell_797/recurrent_kernel
?
;lstm_797/lstm_cell_797/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_797/lstm_cell_797/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_797/lstm_cell_797/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_797/lstm_cell_797/bias
?
/lstm_797/lstm_cell_797/bias/Read/ReadVariableOpReadVariableOplstm_797/lstm_cell_797/bias*
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
Adam/dense_265/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_265/kernel/m
?
+Adam/dense_265/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_265/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_265/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_265/bias/m
{
)Adam/dense_265/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_265/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_795/lstm_cell_795/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_795/lstm_cell_795/kernel/m
?
8Adam/lstm_795/lstm_cell_795/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_795/lstm_cell_795/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_795/lstm_cell_795/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_795/lstm_cell_795/recurrent_kernel/m
?
BAdam/lstm_795/lstm_cell_795/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_795/lstm_cell_795/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_795/lstm_cell_795/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_795/lstm_cell_795/bias/m
?
6Adam/lstm_795/lstm_cell_795/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_795/lstm_cell_795/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_796/lstm_cell_796/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_796/lstm_cell_796/kernel/m
?
8Adam/lstm_796/lstm_cell_796/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_796/lstm_cell_796/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_796/lstm_cell_796/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_796/lstm_cell_796/recurrent_kernel/m
?
BAdam/lstm_796/lstm_cell_796/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_796/lstm_cell_796/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_796/lstm_cell_796/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_796/lstm_cell_796/bias/m
?
6Adam/lstm_796/lstm_cell_796/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_796/lstm_cell_796/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_797/lstm_cell_797/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_797/lstm_cell_797/kernel/m
?
8Adam/lstm_797/lstm_cell_797/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_797/lstm_cell_797/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_797/lstm_cell_797/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_797/lstm_cell_797/recurrent_kernel/m
?
BAdam/lstm_797/lstm_cell_797/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_797/lstm_cell_797/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_797/lstm_cell_797/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_797/lstm_cell_797/bias/m
?
6Adam/lstm_797/lstm_cell_797/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_797/lstm_cell_797/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_265/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_265/kernel/v
?
+Adam/dense_265/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_265/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_265/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_265/bias/v
{
)Adam/dense_265/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_265/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_795/lstm_cell_795/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_795/lstm_cell_795/kernel/v
?
8Adam/lstm_795/lstm_cell_795/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_795/lstm_cell_795/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_795/lstm_cell_795/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_795/lstm_cell_795/recurrent_kernel/v
?
BAdam/lstm_795/lstm_cell_795/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_795/lstm_cell_795/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_795/lstm_cell_795/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_795/lstm_cell_795/bias/v
?
6Adam/lstm_795/lstm_cell_795/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_795/lstm_cell_795/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_796/lstm_cell_796/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_796/lstm_cell_796/kernel/v
?
8Adam/lstm_796/lstm_cell_796/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_796/lstm_cell_796/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_796/lstm_cell_796/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_796/lstm_cell_796/recurrent_kernel/v
?
BAdam/lstm_796/lstm_cell_796/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_796/lstm_cell_796/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_796/lstm_cell_796/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_796/lstm_cell_796/bias/v
?
6Adam/lstm_796/lstm_cell_796/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_796/lstm_cell_796/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_797/lstm_cell_797/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_797/lstm_cell_797/kernel/v
?
8Adam/lstm_797/lstm_cell_797/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_797/lstm_cell_797/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_797/lstm_cell_797/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_797/lstm_cell_797/recurrent_kernel/v
?
BAdam/lstm_797/lstm_cell_797/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_797/lstm_cell_797/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_797/lstm_cell_797/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_797/lstm_cell_797/bias/v
?
6Adam/lstm_797/lstm_cell_797/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_797/lstm_cell_797/bias/v*
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
VARIABLE_VALUEdense_265/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_265/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_795/lstm_cell_795/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_795/lstm_cell_795/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_795/lstm_cell_795/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_796/lstm_cell_796/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_796/lstm_cell_796/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_796/lstm_cell_796/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_797/lstm_cell_797/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_797/lstm_cell_797/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_797/lstm_cell_797/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_265/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_265/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_795/lstm_cell_795/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_795/lstm_cell_795/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_795/lstm_cell_795/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_796/lstm_cell_796/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_796/lstm_cell_796/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_796/lstm_cell_796/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_797/lstm_cell_797/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_797/lstm_cell_797/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_797/lstm_cell_797/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_265/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_265/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_795/lstm_cell_795/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_795/lstm_cell_795/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_795/lstm_cell_795/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_796/lstm_cell_796/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_796/lstm_cell_796/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_796/lstm_cell_796/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_797/lstm_cell_797/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_797/lstm_cell_797/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_797/lstm_cell_797/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_795_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_795_inputlstm_795/lstm_cell_795/kernel'lstm_795/lstm_cell_795/recurrent_kernellstm_795/lstm_cell_795/biaslstm_796/lstm_cell_796/kernel'lstm_796/lstm_cell_796/recurrent_kernellstm_796/lstm_cell_796/biaslstm_797/lstm_cell_797/kernel'lstm_797/lstm_cell_797/recurrent_kernellstm_797/lstm_cell_797/biasdense_265/kerneldense_265/bias*
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
%__inference_signature_wrapper_4043973
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_265/kernel/Read/ReadVariableOp"dense_265/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_795/lstm_cell_795/kernel/Read/ReadVariableOp;lstm_795/lstm_cell_795/recurrent_kernel/Read/ReadVariableOp/lstm_795/lstm_cell_795/bias/Read/ReadVariableOp1lstm_796/lstm_cell_796/kernel/Read/ReadVariableOp;lstm_796/lstm_cell_796/recurrent_kernel/Read/ReadVariableOp/lstm_796/lstm_cell_796/bias/Read/ReadVariableOp1lstm_797/lstm_cell_797/kernel/Read/ReadVariableOp;lstm_797/lstm_cell_797/recurrent_kernel/Read/ReadVariableOp/lstm_797/lstm_cell_797/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_265/kernel/m/Read/ReadVariableOp)Adam/dense_265/bias/m/Read/ReadVariableOp8Adam/lstm_795/lstm_cell_795/kernel/m/Read/ReadVariableOpBAdam/lstm_795/lstm_cell_795/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_795/lstm_cell_795/bias/m/Read/ReadVariableOp8Adam/lstm_796/lstm_cell_796/kernel/m/Read/ReadVariableOpBAdam/lstm_796/lstm_cell_796/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_796/lstm_cell_796/bias/m/Read/ReadVariableOp8Adam/lstm_797/lstm_cell_797/kernel/m/Read/ReadVariableOpBAdam/lstm_797/lstm_cell_797/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_797/lstm_cell_797/bias/m/Read/ReadVariableOp+Adam/dense_265/kernel/v/Read/ReadVariableOp)Adam/dense_265/bias/v/Read/ReadVariableOp8Adam/lstm_795/lstm_cell_795/kernel/v/Read/ReadVariableOpBAdam/lstm_795/lstm_cell_795/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_795/lstm_cell_795/bias/v/Read/ReadVariableOp8Adam/lstm_796/lstm_cell_796/kernel/v/Read/ReadVariableOpBAdam/lstm_796/lstm_cell_796/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_796/lstm_cell_796/bias/v/Read/ReadVariableOp8Adam/lstm_797/lstm_cell_797/kernel/v/Read/ReadVariableOpBAdam/lstm_797/lstm_cell_797/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_797/lstm_cell_797/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4047185
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_265/kerneldense_265/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_795/lstm_cell_795/kernel'lstm_795/lstm_cell_795/recurrent_kernellstm_795/lstm_cell_795/biaslstm_796/lstm_cell_796/kernel'lstm_796/lstm_cell_796/recurrent_kernellstm_796/lstm_cell_796/biaslstm_797/lstm_cell_797/kernel'lstm_797/lstm_cell_797/recurrent_kernellstm_797/lstm_cell_797/biastotalcountAdam/dense_265/kernel/mAdam/dense_265/bias/m$Adam/lstm_795/lstm_cell_795/kernel/m.Adam/lstm_795/lstm_cell_795/recurrent_kernel/m"Adam/lstm_795/lstm_cell_795/bias/m$Adam/lstm_796/lstm_cell_796/kernel/m.Adam/lstm_796/lstm_cell_796/recurrent_kernel/m"Adam/lstm_796/lstm_cell_796/bias/m$Adam/lstm_797/lstm_cell_797/kernel/m.Adam/lstm_797/lstm_cell_797/recurrent_kernel/m"Adam/lstm_797/lstm_cell_797/bias/mAdam/dense_265/kernel/vAdam/dense_265/bias/v$Adam/lstm_795/lstm_cell_795/kernel/v.Adam/lstm_795/lstm_cell_795/recurrent_kernel/v"Adam/lstm_795/lstm_cell_795/bias/v$Adam/lstm_796/lstm_cell_796/kernel/v.Adam/lstm_796/lstm_cell_796/recurrent_kernel/v"Adam/lstm_796/lstm_cell_796/bias/v$Adam/lstm_797/lstm_cell_797/kernel/v.Adam/lstm_797/lstm_cell_797/recurrent_kernel/v"Adam/lstm_797/lstm_cell_797/bias/v*4
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
#__inference__traced_restore_4047315??+
?8
?
while_body_4042828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4045413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_795_while_cond_4044085.
*lstm_795_while_lstm_795_while_loop_counter4
0lstm_795_while_lstm_795_while_maximum_iterations
lstm_795_while_placeholder 
lstm_795_while_placeholder_1 
lstm_795_while_placeholder_2 
lstm_795_while_placeholder_30
,lstm_795_while_less_lstm_795_strided_slice_1G
Clstm_795_while_lstm_795_while_cond_4044085___redundant_placeholder0G
Clstm_795_while_lstm_795_while_cond_4044085___redundant_placeholder1G
Clstm_795_while_lstm_795_while_cond_4044085___redundant_placeholder2G
Clstm_795_while_lstm_795_while_cond_4044085___redundant_placeholder3
lstm_795_while_identity
?
lstm_795/while/LessLesslstm_795_while_placeholder,lstm_795_while_less_lstm_795_strided_slice_1*
T0*
_output_shapes
: ]
lstm_795/while/IdentityIdentitylstm_795/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_795_while_identity lstm_795/while/Identity:output:0*(
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
"__inference__wrapped_model_4041713
lstm_795_inputW
Dsequential_265_lstm_795_lstm_cell_666_matmul_readvariableop_resource:	?Y
Fsequential_265_lstm_795_lstm_cell_666_matmul_1_readvariableop_resource:	d?T
Esequential_265_lstm_795_lstm_cell_666_biasadd_readvariableop_resource:	?W
Dsequential_265_lstm_796_lstm_cell_667_matmul_readvariableop_resource:	d?Y
Fsequential_265_lstm_796_lstm_cell_667_matmul_1_readvariableop_resource:	2?T
Esequential_265_lstm_796_lstm_cell_667_biasadd_readvariableop_resource:	?V
Dsequential_265_lstm_797_lstm_cell_668_matmul_readvariableop_resource:2(X
Fsequential_265_lstm_797_lstm_cell_668_matmul_1_readvariableop_resource:
(S
Esequential_265_lstm_797_lstm_cell_668_biasadd_readvariableop_resource:(I
7sequential_265_dense_265_matmul_readvariableop_resource:
F
8sequential_265_dense_265_biasadd_readvariableop_resource:
identity??/sequential_265/dense_265/BiasAdd/ReadVariableOp?.sequential_265/dense_265/MatMul/ReadVariableOp?<sequential_265/lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp?;sequential_265/lstm_795/lstm_cell_666/MatMul/ReadVariableOp?=sequential_265/lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp?sequential_265/lstm_795/while?<sequential_265/lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp?;sequential_265/lstm_796/lstm_cell_667/MatMul/ReadVariableOp?=sequential_265/lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp?sequential_265/lstm_796/while?<sequential_265/lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp?;sequential_265/lstm_797/lstm_cell_668/MatMul/ReadVariableOp?=sequential_265/lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp?sequential_265/lstm_797/while[
sequential_265/lstm_795/ShapeShapelstm_795_input*
T0*
_output_shapes
:u
+sequential_265/lstm_795/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_265/lstm_795/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_265/lstm_795/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_265/lstm_795/strided_sliceStridedSlice&sequential_265/lstm_795/Shape:output:04sequential_265/lstm_795/strided_slice/stack:output:06sequential_265/lstm_795/strided_slice/stack_1:output:06sequential_265/lstm_795/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_265/lstm_795/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_265/lstm_795/zeros/packedPack.sequential_265/lstm_795/strided_slice:output:0/sequential_265/lstm_795/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_265/lstm_795/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_265/lstm_795/zerosFill-sequential_265/lstm_795/zeros/packed:output:0,sequential_265/lstm_795/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_265/lstm_795/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_265/lstm_795/zeros_1/packedPack.sequential_265/lstm_795/strided_slice:output:01sequential_265/lstm_795/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_265/lstm_795/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_265/lstm_795/zeros_1Fill/sequential_265/lstm_795/zeros_1/packed:output:0.sequential_265/lstm_795/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_265/lstm_795/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_265/lstm_795/transpose	Transposelstm_795_input/sequential_265/lstm_795/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_265/lstm_795/Shape_1Shape%sequential_265/lstm_795/transpose:y:0*
T0*
_output_shapes
:w
-sequential_265/lstm_795/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_265/lstm_795/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_265/lstm_795/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_265/lstm_795/strided_slice_1StridedSlice(sequential_265/lstm_795/Shape_1:output:06sequential_265/lstm_795/strided_slice_1/stack:output:08sequential_265/lstm_795/strided_slice_1/stack_1:output:08sequential_265/lstm_795/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_265/lstm_795/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_265/lstm_795/TensorArrayV2TensorListReserve<sequential_265/lstm_795/TensorArrayV2/element_shape:output:00sequential_265/lstm_795/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_265/lstm_795/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_265/lstm_795/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_265/lstm_795/transpose:y:0Vsequential_265/lstm_795/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_265/lstm_795/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_265/lstm_795/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_265/lstm_795/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_265/lstm_795/strided_slice_2StridedSlice%sequential_265/lstm_795/transpose:y:06sequential_265/lstm_795/strided_slice_2/stack:output:08sequential_265/lstm_795/strided_slice_2/stack_1:output:08sequential_265/lstm_795/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_265/lstm_795/lstm_cell_666/MatMul/ReadVariableOpReadVariableOpDsequential_265_lstm_795_lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_265/lstm_795/lstm_cell_666/MatMulMatMul0sequential_265/lstm_795/strided_slice_2:output:0Csequential_265/lstm_795/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_265/lstm_795/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOpFsequential_265_lstm_795_lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_265/lstm_795/lstm_cell_666/MatMul_1MatMul&sequential_265/lstm_795/zeros:output:0Esequential_265/lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_265/lstm_795/lstm_cell_666/addAddV26sequential_265/lstm_795/lstm_cell_666/MatMul:product:08sequential_265/lstm_795/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_265/lstm_795/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOpEsequential_265_lstm_795_lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_265/lstm_795/lstm_cell_666/BiasAddBiasAdd-sequential_265/lstm_795/lstm_cell_666/add:z:0Dsequential_265/lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_265/lstm_795/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_265/lstm_795/lstm_cell_666/splitSplit>sequential_265/lstm_795/lstm_cell_666/split/split_dim:output:06sequential_265/lstm_795/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_265/lstm_795/lstm_cell_666/SigmoidSigmoid4sequential_265/lstm_795/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_265/lstm_795/lstm_cell_666/Sigmoid_1Sigmoid4sequential_265/lstm_795/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_265/lstm_795/lstm_cell_666/mulMul3sequential_265/lstm_795/lstm_cell_666/Sigmoid_1:y:0(sequential_265/lstm_795/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_265/lstm_795/lstm_cell_666/ReluRelu4sequential_265/lstm_795/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_265/lstm_795/lstm_cell_666/mul_1Mul1sequential_265/lstm_795/lstm_cell_666/Sigmoid:y:08sequential_265/lstm_795/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_265/lstm_795/lstm_cell_666/add_1AddV2-sequential_265/lstm_795/lstm_cell_666/mul:z:0/sequential_265/lstm_795/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_265/lstm_795/lstm_cell_666/Sigmoid_2Sigmoid4sequential_265/lstm_795/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_265/lstm_795/lstm_cell_666/Relu_1Relu/sequential_265/lstm_795/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_265/lstm_795/lstm_cell_666/mul_2Mul3sequential_265/lstm_795/lstm_cell_666/Sigmoid_2:y:0:sequential_265/lstm_795/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_265/lstm_795/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_265/lstm_795/TensorArrayV2_1TensorListReserve>sequential_265/lstm_795/TensorArrayV2_1/element_shape:output:00sequential_265/lstm_795/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_265/lstm_795/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_265/lstm_795/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_265/lstm_795/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_265/lstm_795/whileWhile3sequential_265/lstm_795/while/loop_counter:output:09sequential_265/lstm_795/while/maximum_iterations:output:0%sequential_265/lstm_795/time:output:00sequential_265/lstm_795/TensorArrayV2_1:handle:0&sequential_265/lstm_795/zeros:output:0(sequential_265/lstm_795/zeros_1:output:00sequential_265/lstm_795/strided_slice_1:output:0Osequential_265/lstm_795/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_265_lstm_795_lstm_cell_666_matmul_readvariableop_resourceFsequential_265_lstm_795_lstm_cell_666_matmul_1_readvariableop_resourceEsequential_265_lstm_795_lstm_cell_666_biasadd_readvariableop_resource*
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
*sequential_265_lstm_795_while_body_4041345*6
cond.R,
*sequential_265_lstm_795_while_cond_4041344*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_265/lstm_795/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_265/lstm_795/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_265/lstm_795/while:output:3Qsequential_265/lstm_795/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_265/lstm_795/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_265/lstm_795/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_265/lstm_795/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_265/lstm_795/strided_slice_3StridedSliceCsequential_265/lstm_795/TensorArrayV2Stack/TensorListStack:tensor:06sequential_265/lstm_795/strided_slice_3/stack:output:08sequential_265/lstm_795/strided_slice_3/stack_1:output:08sequential_265/lstm_795/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_265/lstm_795/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_265/lstm_795/transpose_1	TransposeCsequential_265/lstm_795/TensorArrayV2Stack/TensorListStack:tensor:01sequential_265/lstm_795/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_265/lstm_795/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_265/lstm_796/ShapeShape'sequential_265/lstm_795/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_265/lstm_796/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_265/lstm_796/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_265/lstm_796/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_265/lstm_796/strided_sliceStridedSlice&sequential_265/lstm_796/Shape:output:04sequential_265/lstm_796/strided_slice/stack:output:06sequential_265/lstm_796/strided_slice/stack_1:output:06sequential_265/lstm_796/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_265/lstm_796/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_265/lstm_796/zeros/packedPack.sequential_265/lstm_796/strided_slice:output:0/sequential_265/lstm_796/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_265/lstm_796/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_265/lstm_796/zerosFill-sequential_265/lstm_796/zeros/packed:output:0,sequential_265/lstm_796/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_265/lstm_796/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_265/lstm_796/zeros_1/packedPack.sequential_265/lstm_796/strided_slice:output:01sequential_265/lstm_796/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_265/lstm_796/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_265/lstm_796/zeros_1Fill/sequential_265/lstm_796/zeros_1/packed:output:0.sequential_265/lstm_796/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_265/lstm_796/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_265/lstm_796/transpose	Transpose'sequential_265/lstm_795/transpose_1:y:0/sequential_265/lstm_796/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_265/lstm_796/Shape_1Shape%sequential_265/lstm_796/transpose:y:0*
T0*
_output_shapes
:w
-sequential_265/lstm_796/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_265/lstm_796/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_265/lstm_796/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_265/lstm_796/strided_slice_1StridedSlice(sequential_265/lstm_796/Shape_1:output:06sequential_265/lstm_796/strided_slice_1/stack:output:08sequential_265/lstm_796/strided_slice_1/stack_1:output:08sequential_265/lstm_796/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_265/lstm_796/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_265/lstm_796/TensorArrayV2TensorListReserve<sequential_265/lstm_796/TensorArrayV2/element_shape:output:00sequential_265/lstm_796/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_265/lstm_796/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_265/lstm_796/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_265/lstm_796/transpose:y:0Vsequential_265/lstm_796/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_265/lstm_796/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_265/lstm_796/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_265/lstm_796/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_265/lstm_796/strided_slice_2StridedSlice%sequential_265/lstm_796/transpose:y:06sequential_265/lstm_796/strided_slice_2/stack:output:08sequential_265/lstm_796/strided_slice_2/stack_1:output:08sequential_265/lstm_796/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_265/lstm_796/lstm_cell_667/MatMul/ReadVariableOpReadVariableOpDsequential_265_lstm_796_lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_265/lstm_796/lstm_cell_667/MatMulMatMul0sequential_265/lstm_796/strided_slice_2:output:0Csequential_265/lstm_796/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_265/lstm_796/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOpFsequential_265_lstm_796_lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_265/lstm_796/lstm_cell_667/MatMul_1MatMul&sequential_265/lstm_796/zeros:output:0Esequential_265/lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_265/lstm_796/lstm_cell_667/addAddV26sequential_265/lstm_796/lstm_cell_667/MatMul:product:08sequential_265/lstm_796/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_265/lstm_796/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOpEsequential_265_lstm_796_lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_265/lstm_796/lstm_cell_667/BiasAddBiasAdd-sequential_265/lstm_796/lstm_cell_667/add:z:0Dsequential_265/lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_265/lstm_796/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_265/lstm_796/lstm_cell_667/splitSplit>sequential_265/lstm_796/lstm_cell_667/split/split_dim:output:06sequential_265/lstm_796/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_265/lstm_796/lstm_cell_667/SigmoidSigmoid4sequential_265/lstm_796/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_265/lstm_796/lstm_cell_667/Sigmoid_1Sigmoid4sequential_265/lstm_796/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_265/lstm_796/lstm_cell_667/mulMul3sequential_265/lstm_796/lstm_cell_667/Sigmoid_1:y:0(sequential_265/lstm_796/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_265/lstm_796/lstm_cell_667/ReluRelu4sequential_265/lstm_796/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_265/lstm_796/lstm_cell_667/mul_1Mul1sequential_265/lstm_796/lstm_cell_667/Sigmoid:y:08sequential_265/lstm_796/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_265/lstm_796/lstm_cell_667/add_1AddV2-sequential_265/lstm_796/lstm_cell_667/mul:z:0/sequential_265/lstm_796/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_265/lstm_796/lstm_cell_667/Sigmoid_2Sigmoid4sequential_265/lstm_796/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_265/lstm_796/lstm_cell_667/Relu_1Relu/sequential_265/lstm_796/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_265/lstm_796/lstm_cell_667/mul_2Mul3sequential_265/lstm_796/lstm_cell_667/Sigmoid_2:y:0:sequential_265/lstm_796/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_265/lstm_796/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_265/lstm_796/TensorArrayV2_1TensorListReserve>sequential_265/lstm_796/TensorArrayV2_1/element_shape:output:00sequential_265/lstm_796/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_265/lstm_796/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_265/lstm_796/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_265/lstm_796/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_265/lstm_796/whileWhile3sequential_265/lstm_796/while/loop_counter:output:09sequential_265/lstm_796/while/maximum_iterations:output:0%sequential_265/lstm_796/time:output:00sequential_265/lstm_796/TensorArrayV2_1:handle:0&sequential_265/lstm_796/zeros:output:0(sequential_265/lstm_796/zeros_1:output:00sequential_265/lstm_796/strided_slice_1:output:0Osequential_265/lstm_796/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_265_lstm_796_lstm_cell_667_matmul_readvariableop_resourceFsequential_265_lstm_796_lstm_cell_667_matmul_1_readvariableop_resourceEsequential_265_lstm_796_lstm_cell_667_biasadd_readvariableop_resource*
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
*sequential_265_lstm_796_while_body_4041484*6
cond.R,
*sequential_265_lstm_796_while_cond_4041483*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_265/lstm_796/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_265/lstm_796/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_265/lstm_796/while:output:3Qsequential_265/lstm_796/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_265/lstm_796/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_265/lstm_796/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_265/lstm_796/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_265/lstm_796/strided_slice_3StridedSliceCsequential_265/lstm_796/TensorArrayV2Stack/TensorListStack:tensor:06sequential_265/lstm_796/strided_slice_3/stack:output:08sequential_265/lstm_796/strided_slice_3/stack_1:output:08sequential_265/lstm_796/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_265/lstm_796/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_265/lstm_796/transpose_1	TransposeCsequential_265/lstm_796/TensorArrayV2Stack/TensorListStack:tensor:01sequential_265/lstm_796/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_265/lstm_796/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_265/lstm_797/ShapeShape'sequential_265/lstm_796/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_265/lstm_797/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_265/lstm_797/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_265/lstm_797/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_265/lstm_797/strided_sliceStridedSlice&sequential_265/lstm_797/Shape:output:04sequential_265/lstm_797/strided_slice/stack:output:06sequential_265/lstm_797/strided_slice/stack_1:output:06sequential_265/lstm_797/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_265/lstm_797/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_265/lstm_797/zeros/packedPack.sequential_265/lstm_797/strided_slice:output:0/sequential_265/lstm_797/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_265/lstm_797/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_265/lstm_797/zerosFill-sequential_265/lstm_797/zeros/packed:output:0,sequential_265/lstm_797/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_265/lstm_797/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_265/lstm_797/zeros_1/packedPack.sequential_265/lstm_797/strided_slice:output:01sequential_265/lstm_797/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_265/lstm_797/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_265/lstm_797/zeros_1Fill/sequential_265/lstm_797/zeros_1/packed:output:0.sequential_265/lstm_797/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_265/lstm_797/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_265/lstm_797/transpose	Transpose'sequential_265/lstm_796/transpose_1:y:0/sequential_265/lstm_797/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_265/lstm_797/Shape_1Shape%sequential_265/lstm_797/transpose:y:0*
T0*
_output_shapes
:w
-sequential_265/lstm_797/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_265/lstm_797/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_265/lstm_797/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_265/lstm_797/strided_slice_1StridedSlice(sequential_265/lstm_797/Shape_1:output:06sequential_265/lstm_797/strided_slice_1/stack:output:08sequential_265/lstm_797/strided_slice_1/stack_1:output:08sequential_265/lstm_797/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_265/lstm_797/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_265/lstm_797/TensorArrayV2TensorListReserve<sequential_265/lstm_797/TensorArrayV2/element_shape:output:00sequential_265/lstm_797/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_265/lstm_797/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_265/lstm_797/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_265/lstm_797/transpose:y:0Vsequential_265/lstm_797/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_265/lstm_797/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_265/lstm_797/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_265/lstm_797/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_265/lstm_797/strided_slice_2StridedSlice%sequential_265/lstm_797/transpose:y:06sequential_265/lstm_797/strided_slice_2/stack:output:08sequential_265/lstm_797/strided_slice_2/stack_1:output:08sequential_265/lstm_797/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_265/lstm_797/lstm_cell_668/MatMul/ReadVariableOpReadVariableOpDsequential_265_lstm_797_lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_265/lstm_797/lstm_cell_668/MatMulMatMul0sequential_265/lstm_797/strided_slice_2:output:0Csequential_265/lstm_797/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_265/lstm_797/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOpFsequential_265_lstm_797_lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_265/lstm_797/lstm_cell_668/MatMul_1MatMul&sequential_265/lstm_797/zeros:output:0Esequential_265/lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_265/lstm_797/lstm_cell_668/addAddV26sequential_265/lstm_797/lstm_cell_668/MatMul:product:08sequential_265/lstm_797/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_265/lstm_797/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOpEsequential_265_lstm_797_lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_265/lstm_797/lstm_cell_668/BiasAddBiasAdd-sequential_265/lstm_797/lstm_cell_668/add:z:0Dsequential_265/lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_265/lstm_797/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_265/lstm_797/lstm_cell_668/splitSplit>sequential_265/lstm_797/lstm_cell_668/split/split_dim:output:06sequential_265/lstm_797/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_265/lstm_797/lstm_cell_668/SigmoidSigmoid4sequential_265/lstm_797/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_265/lstm_797/lstm_cell_668/Sigmoid_1Sigmoid4sequential_265/lstm_797/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_265/lstm_797/lstm_cell_668/mulMul3sequential_265/lstm_797/lstm_cell_668/Sigmoid_1:y:0(sequential_265/lstm_797/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_265/lstm_797/lstm_cell_668/ReluRelu4sequential_265/lstm_797/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_265/lstm_797/lstm_cell_668/mul_1Mul1sequential_265/lstm_797/lstm_cell_668/Sigmoid:y:08sequential_265/lstm_797/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_265/lstm_797/lstm_cell_668/add_1AddV2-sequential_265/lstm_797/lstm_cell_668/mul:z:0/sequential_265/lstm_797/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_265/lstm_797/lstm_cell_668/Sigmoid_2Sigmoid4sequential_265/lstm_797/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_265/lstm_797/lstm_cell_668/Relu_1Relu/sequential_265/lstm_797/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_265/lstm_797/lstm_cell_668/mul_2Mul3sequential_265/lstm_797/lstm_cell_668/Sigmoid_2:y:0:sequential_265/lstm_797/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_265/lstm_797/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_265/lstm_797/TensorArrayV2_1TensorListReserve>sequential_265/lstm_797/TensorArrayV2_1/element_shape:output:00sequential_265/lstm_797/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_265/lstm_797/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_265/lstm_797/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_265/lstm_797/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_265/lstm_797/whileWhile3sequential_265/lstm_797/while/loop_counter:output:09sequential_265/lstm_797/while/maximum_iterations:output:0%sequential_265/lstm_797/time:output:00sequential_265/lstm_797/TensorArrayV2_1:handle:0&sequential_265/lstm_797/zeros:output:0(sequential_265/lstm_797/zeros_1:output:00sequential_265/lstm_797/strided_slice_1:output:0Osequential_265/lstm_797/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_265_lstm_797_lstm_cell_668_matmul_readvariableop_resourceFsequential_265_lstm_797_lstm_cell_668_matmul_1_readvariableop_resourceEsequential_265_lstm_797_lstm_cell_668_biasadd_readvariableop_resource*
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
*sequential_265_lstm_797_while_body_4041623*6
cond.R,
*sequential_265_lstm_797_while_cond_4041622*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_265/lstm_797/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_265/lstm_797/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_265/lstm_797/while:output:3Qsequential_265/lstm_797/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_265/lstm_797/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_265/lstm_797/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_265/lstm_797/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_265/lstm_797/strided_slice_3StridedSliceCsequential_265/lstm_797/TensorArrayV2Stack/TensorListStack:tensor:06sequential_265/lstm_797/strided_slice_3/stack:output:08sequential_265/lstm_797/strided_slice_3/stack_1:output:08sequential_265/lstm_797/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_265/lstm_797/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_265/lstm_797/transpose_1	TransposeCsequential_265/lstm_797/TensorArrayV2Stack/TensorListStack:tensor:01sequential_265/lstm_797/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_265/lstm_797/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_265/dense_265/MatMul/ReadVariableOpReadVariableOp7sequential_265_dense_265_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_265/dense_265/MatMulMatMul0sequential_265/lstm_797/strided_slice_3:output:06sequential_265/dense_265/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_265/dense_265/BiasAdd/ReadVariableOpReadVariableOp8sequential_265_dense_265_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_265/dense_265/BiasAddBiasAdd)sequential_265/dense_265/MatMul:product:07sequential_265/dense_265/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_265/dense_265/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_265/dense_265/BiasAdd/ReadVariableOp/^sequential_265/dense_265/MatMul/ReadVariableOp=^sequential_265/lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp<^sequential_265/lstm_795/lstm_cell_666/MatMul/ReadVariableOp>^sequential_265/lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp^sequential_265/lstm_795/while=^sequential_265/lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp<^sequential_265/lstm_796/lstm_cell_667/MatMul/ReadVariableOp>^sequential_265/lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp^sequential_265/lstm_796/while=^sequential_265/lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp<^sequential_265/lstm_797/lstm_cell_668/MatMul/ReadVariableOp>^sequential_265/lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp^sequential_265/lstm_797/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_265/dense_265/BiasAdd/ReadVariableOp/sequential_265/dense_265/BiasAdd/ReadVariableOp2`
.sequential_265/dense_265/MatMul/ReadVariableOp.sequential_265/dense_265/MatMul/ReadVariableOp2|
<sequential_265/lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp<sequential_265/lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp2z
;sequential_265/lstm_795/lstm_cell_666/MatMul/ReadVariableOp;sequential_265/lstm_795/lstm_cell_666/MatMul/ReadVariableOp2~
=sequential_265/lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp=sequential_265/lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp2>
sequential_265/lstm_795/whilesequential_265/lstm_795/while2|
<sequential_265/lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp<sequential_265/lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp2z
;sequential_265/lstm_796/lstm_cell_667/MatMul/ReadVariableOp;sequential_265/lstm_796/lstm_cell_667/MatMul/ReadVariableOp2~
=sequential_265/lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp=sequential_265/lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp2>
sequential_265/lstm_796/whilesequential_265/lstm_796/while2|
<sequential_265/lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp<sequential_265/lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp2z
;sequential_265/lstm_797/lstm_cell_668/MatMul/ReadVariableOp;sequential_265/lstm_797/lstm_cell_668/MatMul/ReadVariableOp2~
=sequential_265/lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp=sequential_265/lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp2>
sequential_265/lstm_797/whilesequential_265/lstm_797/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_795_input
?
?
*sequential_265_lstm_797_while_cond_4041622L
Hsequential_265_lstm_797_while_sequential_265_lstm_797_while_loop_counterR
Nsequential_265_lstm_797_while_sequential_265_lstm_797_while_maximum_iterations-
)sequential_265_lstm_797_while_placeholder/
+sequential_265_lstm_797_while_placeholder_1/
+sequential_265_lstm_797_while_placeholder_2/
+sequential_265_lstm_797_while_placeholder_3N
Jsequential_265_lstm_797_while_less_sequential_265_lstm_797_strided_slice_1e
asequential_265_lstm_797_while_sequential_265_lstm_797_while_cond_4041622___redundant_placeholder0e
asequential_265_lstm_797_while_sequential_265_lstm_797_while_cond_4041622___redundant_placeholder1e
asequential_265_lstm_797_while_sequential_265_lstm_797_while_cond_4041622___redundant_placeholder2e
asequential_265_lstm_797_while_sequential_265_lstm_797_while_cond_4041622___redundant_placeholder3*
&sequential_265_lstm_797_while_identity
?
"sequential_265/lstm_797/while/LessLess)sequential_265_lstm_797_while_placeholderJsequential_265_lstm_797_while_less_sequential_265_lstm_797_strided_slice_1*
T0*
_output_shapes
: {
&sequential_265/lstm_797/while/IdentityIdentity&sequential_265/lstm_797/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_265_lstm_797_while_identity/sequential_265/lstm_797/while/Identity:output:0*(
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4043593

inputs?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4043509*
condR
while_cond_4043508*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_796_layer_call_and_return_conditional_losses_4045684
inputs_0?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4045600*
condR
while_cond_4045599*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?T
?
*sequential_265_lstm_796_while_body_4041484L
Hsequential_265_lstm_796_while_sequential_265_lstm_796_while_loop_counterR
Nsequential_265_lstm_796_while_sequential_265_lstm_796_while_maximum_iterations-
)sequential_265_lstm_796_while_placeholder/
+sequential_265_lstm_796_while_placeholder_1/
+sequential_265_lstm_796_while_placeholder_2/
+sequential_265_lstm_796_while_placeholder_3K
Gsequential_265_lstm_796_while_sequential_265_lstm_796_strided_slice_1_0?
?sequential_265_lstm_796_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_796_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_265_lstm_796_while_lstm_cell_667_matmul_readvariableop_resource_0:	d?a
Nsequential_265_lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?\
Msequential_265_lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource_0:	?*
&sequential_265_lstm_796_while_identity,
(sequential_265_lstm_796_while_identity_1,
(sequential_265_lstm_796_while_identity_2,
(sequential_265_lstm_796_while_identity_3,
(sequential_265_lstm_796_while_identity_4,
(sequential_265_lstm_796_while_identity_5I
Esequential_265_lstm_796_while_sequential_265_lstm_796_strided_slice_1?
?sequential_265_lstm_796_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_796_tensorarrayunstack_tensorlistfromtensor]
Jsequential_265_lstm_796_while_lstm_cell_667_matmul_readvariableop_resource:	d?_
Lsequential_265_lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource:	2?Z
Ksequential_265_lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource:	???Bsequential_265/lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp?Asequential_265/lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp?Csequential_265/lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp?
Osequential_265/lstm_796/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_265/lstm_796/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_265_lstm_796_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_796_tensorarrayunstack_tensorlistfromtensor_0)sequential_265_lstm_796_while_placeholderXsequential_265/lstm_796/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_265/lstm_796/while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOpLsequential_265_lstm_796_while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_265/lstm_796/while/lstm_cell_667/MatMulMatMulHsequential_265/lstm_796/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_265/lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_265/lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOpNsequential_265_lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_265/lstm_796/while/lstm_cell_667/MatMul_1MatMul+sequential_265_lstm_796_while_placeholder_2Ksequential_265/lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_265/lstm_796/while/lstm_cell_667/addAddV2<sequential_265/lstm_796/while/lstm_cell_667/MatMul:product:0>sequential_265/lstm_796/while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_265/lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOpMsequential_265_lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_265/lstm_796/while/lstm_cell_667/BiasAddBiasAdd3sequential_265/lstm_796/while/lstm_cell_667/add:z:0Jsequential_265/lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_265/lstm_796/while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_265/lstm_796/while/lstm_cell_667/splitSplitDsequential_265/lstm_796/while/lstm_cell_667/split/split_dim:output:0<sequential_265/lstm_796/while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_265/lstm_796/while/lstm_cell_667/SigmoidSigmoid:sequential_265/lstm_796/while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_265/lstm_796/while/lstm_cell_667/Sigmoid_1Sigmoid:sequential_265/lstm_796/while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_265/lstm_796/while/lstm_cell_667/mulMul9sequential_265/lstm_796/while/lstm_cell_667/Sigmoid_1:y:0+sequential_265_lstm_796_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_265/lstm_796/while/lstm_cell_667/ReluRelu:sequential_265/lstm_796/while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_265/lstm_796/while/lstm_cell_667/mul_1Mul7sequential_265/lstm_796/while/lstm_cell_667/Sigmoid:y:0>sequential_265/lstm_796/while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_265/lstm_796/while/lstm_cell_667/add_1AddV23sequential_265/lstm_796/while/lstm_cell_667/mul:z:05sequential_265/lstm_796/while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_265/lstm_796/while/lstm_cell_667/Sigmoid_2Sigmoid:sequential_265/lstm_796/while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_265/lstm_796/while/lstm_cell_667/Relu_1Relu5sequential_265/lstm_796/while/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_265/lstm_796/while/lstm_cell_667/mul_2Mul9sequential_265/lstm_796/while/lstm_cell_667/Sigmoid_2:y:0@sequential_265/lstm_796/while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_265/lstm_796/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_265_lstm_796_while_placeholder_1)sequential_265_lstm_796_while_placeholder5sequential_265/lstm_796/while/lstm_cell_667/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_265/lstm_796/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_265/lstm_796/while/addAddV2)sequential_265_lstm_796_while_placeholder,sequential_265/lstm_796/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_265/lstm_796/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_265/lstm_796/while/add_1AddV2Hsequential_265_lstm_796_while_sequential_265_lstm_796_while_loop_counter.sequential_265/lstm_796/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_265/lstm_796/while/IdentityIdentity'sequential_265/lstm_796/while/add_1:z:0#^sequential_265/lstm_796/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_796/while/Identity_1IdentityNsequential_265_lstm_796_while_sequential_265_lstm_796_while_maximum_iterations#^sequential_265/lstm_796/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_796/while/Identity_2Identity%sequential_265/lstm_796/while/add:z:0#^sequential_265/lstm_796/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_796/while/Identity_3IdentityRsequential_265/lstm_796/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_265/lstm_796/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_796/while/Identity_4Identity5sequential_265/lstm_796/while/lstm_cell_667/mul_2:z:0#^sequential_265/lstm_796/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_265/lstm_796/while/Identity_5Identity5sequential_265/lstm_796/while/lstm_cell_667/add_1:z:0#^sequential_265/lstm_796/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_265/lstm_796/while/NoOpNoOpC^sequential_265/lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOpB^sequential_265/lstm_796/while/lstm_cell_667/MatMul/ReadVariableOpD^sequential_265/lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_265_lstm_796_while_identity/sequential_265/lstm_796/while/Identity:output:0"]
(sequential_265_lstm_796_while_identity_11sequential_265/lstm_796/while/Identity_1:output:0"]
(sequential_265_lstm_796_while_identity_21sequential_265/lstm_796/while/Identity_2:output:0"]
(sequential_265_lstm_796_while_identity_31sequential_265/lstm_796/while/Identity_3:output:0"]
(sequential_265_lstm_796_while_identity_41sequential_265/lstm_796/while/Identity_4:output:0"]
(sequential_265_lstm_796_while_identity_51sequential_265/lstm_796/while/Identity_5:output:0"?
Ksequential_265_lstm_796_while_lstm_cell_667_biasadd_readvariableop_resourceMsequential_265_lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource_0"?
Lsequential_265_lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resourceNsequential_265_lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource_0"?
Jsequential_265_lstm_796_while_lstm_cell_667_matmul_readvariableop_resourceLsequential_265_lstm_796_while_lstm_cell_667_matmul_readvariableop_resource_0"?
Esequential_265_lstm_796_while_sequential_265_lstm_796_strided_slice_1Gsequential_265_lstm_796_while_sequential_265_lstm_796_strided_slice_1_0"?
?sequential_265_lstm_796_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_796_tensorarrayunstack_tensorlistfromtensor?sequential_265_lstm_796_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_796_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_265/lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOpBsequential_265/lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp2?
Asequential_265/lstm_796/while/lstm_cell_667/MatMul/ReadVariableOpAsequential_265/lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp2?
Csequential_265/lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOpCsequential_265/lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4043062

inputs?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4042978*
condR
while_cond_4042977*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045497

inputs?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4045413*
condR
while_cond_4045412*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4042143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4042143___redundant_placeholder05
1while_while_cond_4042143___redundant_placeholder15
1while_while_cond_4042143___redundant_placeholder25
1while_while_cond_4042143___redundant_placeholder3
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
#__inference__traced_restore_4047315
file_prefix3
!assignvariableop_dense_265_kernel:
/
!assignvariableop_1_dense_265_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_795_lstm_cell_795_kernel:	?M
:assignvariableop_8_lstm_795_lstm_cell_795_recurrent_kernel:	d?=
.assignvariableop_9_lstm_795_lstm_cell_795_bias:	?D
1assignvariableop_10_lstm_796_lstm_cell_796_kernel:	d?N
;assignvariableop_11_lstm_796_lstm_cell_796_recurrent_kernel:	2?>
/assignvariableop_12_lstm_796_lstm_cell_796_bias:	?C
1assignvariableop_13_lstm_797_lstm_cell_797_kernel:2(M
;assignvariableop_14_lstm_797_lstm_cell_797_recurrent_kernel:
(=
/assignvariableop_15_lstm_797_lstm_cell_797_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_265_kernel_m:
7
)assignvariableop_19_adam_dense_265_bias_m:K
8assignvariableop_20_adam_lstm_795_lstm_cell_795_kernel_m:	?U
Bassignvariableop_21_adam_lstm_795_lstm_cell_795_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_795_lstm_cell_795_bias_m:	?K
8assignvariableop_23_adam_lstm_796_lstm_cell_796_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_796_lstm_cell_796_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_796_lstm_cell_796_bias_m:	?J
8assignvariableop_26_adam_lstm_797_lstm_cell_797_kernel_m:2(T
Bassignvariableop_27_adam_lstm_797_lstm_cell_797_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_797_lstm_cell_797_bias_m:(=
+assignvariableop_29_adam_dense_265_kernel_v:
7
)assignvariableop_30_adam_dense_265_bias_v:K
8assignvariableop_31_adam_lstm_795_lstm_cell_795_kernel_v:	?U
Bassignvariableop_32_adam_lstm_795_lstm_cell_795_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_795_lstm_cell_795_bias_v:	?K
8assignvariableop_34_adam_lstm_796_lstm_cell_796_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_796_lstm_cell_796_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_796_lstm_cell_796_bias_v:	?J
8assignvariableop_37_adam_lstm_797_lstm_cell_797_kernel_v:2(T
Bassignvariableop_38_adam_lstm_797_lstm_cell_797_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_797_lstm_cell_797_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_265_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_265_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_795_lstm_cell_795_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_795_lstm_cell_795_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_795_lstm_cell_795_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_796_lstm_cell_796_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_796_lstm_cell_796_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_796_lstm_cell_796_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_797_lstm_cell_797_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_797_lstm_cell_797_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_797_lstm_cell_797_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_265_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_265_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_795_lstm_cell_795_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_795_lstm_cell_795_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_795_lstm_cell_795_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_796_lstm_cell_796_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_796_lstm_cell_796_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_796_lstm_cell_796_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_797_lstm_cell_797_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_797_lstm_cell_797_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_797_lstm_cell_797_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_265_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_265_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_795_lstm_cell_795_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_795_lstm_cell_795_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_795_lstm_cell_795_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_796_lstm_cell_796_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_796_lstm_cell_796_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_796_lstm_cell_796_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_797_lstm_cell_797_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_797_lstm_cell_797_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_797_lstm_cell_797_bias_vIdentity_39:output:0"/device:CPU:0*
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
?J
?
E__inference_lstm_797_layer_call_and_return_conditional_losses_4043428

inputs>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4043344*
condR
while_cond_4043343*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_796_while_cond_4044651.
*lstm_796_while_lstm_796_while_loop_counter4
0lstm_796_while_lstm_796_while_maximum_iterations
lstm_796_while_placeholder 
lstm_796_while_placeholder_1 
lstm_796_while_placeholder_2 
lstm_796_while_placeholder_30
,lstm_796_while_less_lstm_796_strided_slice_1G
Clstm_796_while_lstm_796_while_cond_4044651___redundant_placeholder0G
Clstm_796_while_lstm_796_while_cond_4044651___redundant_placeholder1G
Clstm_796_while_lstm_796_while_cond_4044651___redundant_placeholder2G
Clstm_796_while_lstm_796_while_cond_4044651___redundant_placeholder3
lstm_796_while_identity
?
lstm_796/while/LessLesslstm_796_while_placeholder,lstm_796_while_less_lstm_796_strided_slice_1*
T0*
_output_shapes
: ]
lstm_796/while/IdentityIdentitylstm_796/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_796_while_identity lstm_796/while/Identity:output:0*(
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
K__inference_sequential_265_layer_call_and_return_conditional_losses_4044454

inputsH
5lstm_795_lstm_cell_666_matmul_readvariableop_resource:	?J
7lstm_795_lstm_cell_666_matmul_1_readvariableop_resource:	d?E
6lstm_795_lstm_cell_666_biasadd_readvariableop_resource:	?H
5lstm_796_lstm_cell_667_matmul_readvariableop_resource:	d?J
7lstm_796_lstm_cell_667_matmul_1_readvariableop_resource:	2?E
6lstm_796_lstm_cell_667_biasadd_readvariableop_resource:	?G
5lstm_797_lstm_cell_668_matmul_readvariableop_resource:2(I
7lstm_797_lstm_cell_668_matmul_1_readvariableop_resource:
(D
6lstm_797_lstm_cell_668_biasadd_readvariableop_resource:(:
(dense_265_matmul_readvariableop_resource:
7
)dense_265_biasadd_readvariableop_resource:
identity?? dense_265/BiasAdd/ReadVariableOp?dense_265/MatMul/ReadVariableOp?-lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp?,lstm_795/lstm_cell_666/MatMul/ReadVariableOp?.lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp?lstm_795/while?-lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp?,lstm_796/lstm_cell_667/MatMul/ReadVariableOp?.lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp?lstm_796/while?-lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp?,lstm_797/lstm_cell_668/MatMul/ReadVariableOp?.lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp?lstm_797/whileD
lstm_795/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_795/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_795/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_795/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_795/strided_sliceStridedSlicelstm_795/Shape:output:0%lstm_795/strided_slice/stack:output:0'lstm_795/strided_slice/stack_1:output:0'lstm_795/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_795/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_795/zeros/packedPacklstm_795/strided_slice:output:0 lstm_795/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_795/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_795/zerosFilllstm_795/zeros/packed:output:0lstm_795/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_795/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_795/zeros_1/packedPacklstm_795/strided_slice:output:0"lstm_795/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_795/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_795/zeros_1Fill lstm_795/zeros_1/packed:output:0lstm_795/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_795/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_795/transpose	Transposeinputs lstm_795/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_795/Shape_1Shapelstm_795/transpose:y:0*
T0*
_output_shapes
:h
lstm_795/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_795/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_795/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_795/strided_slice_1StridedSlicelstm_795/Shape_1:output:0'lstm_795/strided_slice_1/stack:output:0)lstm_795/strided_slice_1/stack_1:output:0)lstm_795/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_795/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_795/TensorArrayV2TensorListReserve-lstm_795/TensorArrayV2/element_shape:output:0!lstm_795/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_795/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_795/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_795/transpose:y:0Glstm_795/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_795/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_795/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_795/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_795/strided_slice_2StridedSlicelstm_795/transpose:y:0'lstm_795/strided_slice_2/stack:output:0)lstm_795/strided_slice_2/stack_1:output:0)lstm_795/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_795/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp5lstm_795_lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_795/lstm_cell_666/MatMulMatMul!lstm_795/strided_slice_2:output:04lstm_795/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_795/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp7lstm_795_lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_795/lstm_cell_666/MatMul_1MatMullstm_795/zeros:output:06lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_795/lstm_cell_666/addAddV2'lstm_795/lstm_cell_666/MatMul:product:0)lstm_795/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_795/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp6lstm_795_lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_795/lstm_cell_666/BiasAddBiasAddlstm_795/lstm_cell_666/add:z:05lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_795/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_795/lstm_cell_666/splitSplit/lstm_795/lstm_cell_666/split/split_dim:output:0'lstm_795/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_795/lstm_cell_666/SigmoidSigmoid%lstm_795/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_795/lstm_cell_666/Sigmoid_1Sigmoid%lstm_795/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_795/lstm_cell_666/mulMul$lstm_795/lstm_cell_666/Sigmoid_1:y:0lstm_795/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_795/lstm_cell_666/ReluRelu%lstm_795/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_795/lstm_cell_666/mul_1Mul"lstm_795/lstm_cell_666/Sigmoid:y:0)lstm_795/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_795/lstm_cell_666/add_1AddV2lstm_795/lstm_cell_666/mul:z:0 lstm_795/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_795/lstm_cell_666/Sigmoid_2Sigmoid%lstm_795/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_795/lstm_cell_666/Relu_1Relu lstm_795/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_795/lstm_cell_666/mul_2Mul$lstm_795/lstm_cell_666/Sigmoid_2:y:0+lstm_795/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_795/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_795/TensorArrayV2_1TensorListReserve/lstm_795/TensorArrayV2_1/element_shape:output:0!lstm_795/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_795/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_795/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_795/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_795/whileWhile$lstm_795/while/loop_counter:output:0*lstm_795/while/maximum_iterations:output:0lstm_795/time:output:0!lstm_795/TensorArrayV2_1:handle:0lstm_795/zeros:output:0lstm_795/zeros_1:output:0!lstm_795/strided_slice_1:output:0@lstm_795/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_795_lstm_cell_666_matmul_readvariableop_resource7lstm_795_lstm_cell_666_matmul_1_readvariableop_resource6lstm_795_lstm_cell_666_biasadd_readvariableop_resource*
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
lstm_795_while_body_4044086*'
condR
lstm_795_while_cond_4044085*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_795/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_795/TensorArrayV2Stack/TensorListStackTensorListStacklstm_795/while:output:3Blstm_795/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_795/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_795/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_795/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_795/strided_slice_3StridedSlice4lstm_795/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_795/strided_slice_3/stack:output:0)lstm_795/strided_slice_3/stack_1:output:0)lstm_795/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_795/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_795/transpose_1	Transpose4lstm_795/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_795/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_795/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_796/ShapeShapelstm_795/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_796/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_796/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_796/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_796/strided_sliceStridedSlicelstm_796/Shape:output:0%lstm_796/strided_slice/stack:output:0'lstm_796/strided_slice/stack_1:output:0'lstm_796/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_796/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_796/zeros/packedPacklstm_796/strided_slice:output:0 lstm_796/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_796/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_796/zerosFilllstm_796/zeros/packed:output:0lstm_796/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_796/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_796/zeros_1/packedPacklstm_796/strided_slice:output:0"lstm_796/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_796/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_796/zeros_1Fill lstm_796/zeros_1/packed:output:0lstm_796/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_796/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_796/transpose	Transposelstm_795/transpose_1:y:0 lstm_796/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_796/Shape_1Shapelstm_796/transpose:y:0*
T0*
_output_shapes
:h
lstm_796/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_796/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_796/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_796/strided_slice_1StridedSlicelstm_796/Shape_1:output:0'lstm_796/strided_slice_1/stack:output:0)lstm_796/strided_slice_1/stack_1:output:0)lstm_796/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_796/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_796/TensorArrayV2TensorListReserve-lstm_796/TensorArrayV2/element_shape:output:0!lstm_796/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_796/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_796/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_796/transpose:y:0Glstm_796/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_796/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_796/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_796/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_796/strided_slice_2StridedSlicelstm_796/transpose:y:0'lstm_796/strided_slice_2/stack:output:0)lstm_796/strided_slice_2/stack_1:output:0)lstm_796/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_796/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp5lstm_796_lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_796/lstm_cell_667/MatMulMatMul!lstm_796/strided_slice_2:output:04lstm_796/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_796/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp7lstm_796_lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_796/lstm_cell_667/MatMul_1MatMullstm_796/zeros:output:06lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_796/lstm_cell_667/addAddV2'lstm_796/lstm_cell_667/MatMul:product:0)lstm_796/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_796/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp6lstm_796_lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_796/lstm_cell_667/BiasAddBiasAddlstm_796/lstm_cell_667/add:z:05lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_796/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_796/lstm_cell_667/splitSplit/lstm_796/lstm_cell_667/split/split_dim:output:0'lstm_796/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_796/lstm_cell_667/SigmoidSigmoid%lstm_796/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_796/lstm_cell_667/Sigmoid_1Sigmoid%lstm_796/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_796/lstm_cell_667/mulMul$lstm_796/lstm_cell_667/Sigmoid_1:y:0lstm_796/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_796/lstm_cell_667/ReluRelu%lstm_796/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_796/lstm_cell_667/mul_1Mul"lstm_796/lstm_cell_667/Sigmoid:y:0)lstm_796/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_796/lstm_cell_667/add_1AddV2lstm_796/lstm_cell_667/mul:z:0 lstm_796/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_796/lstm_cell_667/Sigmoid_2Sigmoid%lstm_796/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_796/lstm_cell_667/Relu_1Relu lstm_796/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_796/lstm_cell_667/mul_2Mul$lstm_796/lstm_cell_667/Sigmoid_2:y:0+lstm_796/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_796/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_796/TensorArrayV2_1TensorListReserve/lstm_796/TensorArrayV2_1/element_shape:output:0!lstm_796/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_796/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_796/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_796/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_796/whileWhile$lstm_796/while/loop_counter:output:0*lstm_796/while/maximum_iterations:output:0lstm_796/time:output:0!lstm_796/TensorArrayV2_1:handle:0lstm_796/zeros:output:0lstm_796/zeros_1:output:0!lstm_796/strided_slice_1:output:0@lstm_796/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_796_lstm_cell_667_matmul_readvariableop_resource7lstm_796_lstm_cell_667_matmul_1_readvariableop_resource6lstm_796_lstm_cell_667_biasadd_readvariableop_resource*
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
lstm_796_while_body_4044225*'
condR
lstm_796_while_cond_4044224*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_796/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_796/TensorArrayV2Stack/TensorListStackTensorListStacklstm_796/while:output:3Blstm_796/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_796/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_796/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_796/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_796/strided_slice_3StridedSlice4lstm_796/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_796/strided_slice_3/stack:output:0)lstm_796/strided_slice_3/stack_1:output:0)lstm_796/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_796/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_796/transpose_1	Transpose4lstm_796/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_796/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_796/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_797/ShapeShapelstm_796/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_797/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_797/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_797/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_797/strided_sliceStridedSlicelstm_797/Shape:output:0%lstm_797/strided_slice/stack:output:0'lstm_797/strided_slice/stack_1:output:0'lstm_797/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_797/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_797/zeros/packedPacklstm_797/strided_slice:output:0 lstm_797/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_797/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_797/zerosFilllstm_797/zeros/packed:output:0lstm_797/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_797/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_797/zeros_1/packedPacklstm_797/strided_slice:output:0"lstm_797/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_797/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_797/zeros_1Fill lstm_797/zeros_1/packed:output:0lstm_797/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_797/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_797/transpose	Transposelstm_796/transpose_1:y:0 lstm_797/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_797/Shape_1Shapelstm_797/transpose:y:0*
T0*
_output_shapes
:h
lstm_797/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_797/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_797/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_797/strided_slice_1StridedSlicelstm_797/Shape_1:output:0'lstm_797/strided_slice_1/stack:output:0)lstm_797/strided_slice_1/stack_1:output:0)lstm_797/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_797/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_797/TensorArrayV2TensorListReserve-lstm_797/TensorArrayV2/element_shape:output:0!lstm_797/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_797/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_797/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_797/transpose:y:0Glstm_797/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_797/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_797/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_797/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_797/strided_slice_2StridedSlicelstm_797/transpose:y:0'lstm_797/strided_slice_2/stack:output:0)lstm_797/strided_slice_2/stack_1:output:0)lstm_797/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_797/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp5lstm_797_lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_797/lstm_cell_668/MatMulMatMul!lstm_797/strided_slice_2:output:04lstm_797/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_797/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp7lstm_797_lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_797/lstm_cell_668/MatMul_1MatMullstm_797/zeros:output:06lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_797/lstm_cell_668/addAddV2'lstm_797/lstm_cell_668/MatMul:product:0)lstm_797/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_797/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp6lstm_797_lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_797/lstm_cell_668/BiasAddBiasAddlstm_797/lstm_cell_668/add:z:05lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_797/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_797/lstm_cell_668/splitSplit/lstm_797/lstm_cell_668/split/split_dim:output:0'lstm_797/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_797/lstm_cell_668/SigmoidSigmoid%lstm_797/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_797/lstm_cell_668/Sigmoid_1Sigmoid%lstm_797/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_797/lstm_cell_668/mulMul$lstm_797/lstm_cell_668/Sigmoid_1:y:0lstm_797/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_797/lstm_cell_668/ReluRelu%lstm_797/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_797/lstm_cell_668/mul_1Mul"lstm_797/lstm_cell_668/Sigmoid:y:0)lstm_797/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_797/lstm_cell_668/add_1AddV2lstm_797/lstm_cell_668/mul:z:0 lstm_797/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_797/lstm_cell_668/Sigmoid_2Sigmoid%lstm_797/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_797/lstm_cell_668/Relu_1Relu lstm_797/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_797/lstm_cell_668/mul_2Mul$lstm_797/lstm_cell_668/Sigmoid_2:y:0+lstm_797/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_797/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_797/TensorArrayV2_1TensorListReserve/lstm_797/TensorArrayV2_1/element_shape:output:0!lstm_797/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_797/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_797/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_797/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_797/whileWhile$lstm_797/while/loop_counter:output:0*lstm_797/while/maximum_iterations:output:0lstm_797/time:output:0!lstm_797/TensorArrayV2_1:handle:0lstm_797/zeros:output:0lstm_797/zeros_1:output:0!lstm_797/strided_slice_1:output:0@lstm_797/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_797_lstm_cell_668_matmul_readvariableop_resource7lstm_797_lstm_cell_668_matmul_1_readvariableop_resource6lstm_797_lstm_cell_668_biasadd_readvariableop_resource*
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
lstm_797_while_body_4044364*'
condR
lstm_797_while_cond_4044363*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_797/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_797/TensorArrayV2Stack/TensorListStackTensorListStacklstm_797/while:output:3Blstm_797/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_797/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_797/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_797/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_797/strided_slice_3StridedSlice4lstm_797/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_797/strided_slice_3/stack:output:0)lstm_797/strided_slice_3/stack_1:output:0)lstm_797/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_797/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_797/transpose_1	Transpose4lstm_797/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_797/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_797/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_265/MatMul/ReadVariableOpReadVariableOp(dense_265_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_265/MatMulMatMul!lstm_797/strided_slice_3:output:0'dense_265/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_265/BiasAdd/ReadVariableOpReadVariableOp)dense_265_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_265/BiasAddBiasAdddense_265/MatMul:product:0(dense_265/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_265/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_265/BiasAdd/ReadVariableOp ^dense_265/MatMul/ReadVariableOp.^lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp-^lstm_795/lstm_cell_666/MatMul/ReadVariableOp/^lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp^lstm_795/while.^lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp-^lstm_796/lstm_cell_667/MatMul/ReadVariableOp/^lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp^lstm_796/while.^lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp-^lstm_797/lstm_cell_668/MatMul/ReadVariableOp/^lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp^lstm_797/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_265/BiasAdd/ReadVariableOp dense_265/BiasAdd/ReadVariableOp2B
dense_265/MatMul/ReadVariableOpdense_265/MatMul/ReadVariableOp2^
-lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp-lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp2\
,lstm_795/lstm_cell_666/MatMul/ReadVariableOp,lstm_795/lstm_cell_666/MatMul/ReadVariableOp2`
.lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp.lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp2 
lstm_795/whilelstm_795/while2^
-lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp-lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp2\
,lstm_796/lstm_cell_667/MatMul/ReadVariableOp,lstm_796/lstm_cell_667/MatMul/ReadVariableOp2`
.lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp.lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp2 
lstm_796/whilelstm_796/while2^
-lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp-lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp2\
,lstm_797/lstm_cell_668/MatMul/ReadVariableOp,lstm_797/lstm_cell_668/MatMul/ReadVariableOp2`
.lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp.lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp2 
lstm_797/whilelstm_797/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_795_layer_call_and_return_conditional_losses_4043758

inputs?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4043674*
condR
while_cond_4043673*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4041780

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
while_body_4045600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4044984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4043673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4043673___redundant_placeholder05
1while_while_cond_4043673___redundant_placeholder15
1while_while_cond_4043673___redundant_placeholder25
1while_while_cond_4043673___redundant_placeholder3
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
*__inference_lstm_795_layer_call_fn_4044892
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4041863|
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
+__inference_dense_265_layer_call_fn_4046738

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
F__inference_dense_265_layer_call_and_return_conditional_losses_4043230o
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
?
?
*__inference_lstm_795_layer_call_fn_4044914

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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4042912s
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
while_body_4046359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4046644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4046644___redundant_placeholder05
1while_while_cond_4046644___redundant_placeholder15
1while_while_cond_4046644___redundant_placeholder25
1while_while_cond_4046644___redundant_placeholder3
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
while_body_4041985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_666_4042009_0:	?0
while_lstm_cell_666_4042011_0:	d?,
while_lstm_cell_666_4042013_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_666_4042009:	?.
while_lstm_cell_666_4042011:	d?*
while_lstm_cell_666_4042013:	???+while/lstm_cell_666/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_666/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_666_4042009_0while_lstm_cell_666_4042011_0while_lstm_cell_666_4042013_0*
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4041926?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_666/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_666/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_666/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_666/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_666_4042009while_lstm_cell_666_4042009_0"<
while_lstm_cell_666_4042011while_lstm_cell_666_4042011_0"<
while_lstm_cell_666_4042013while_lstm_cell_666_4042013_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_666/StatefulPartitionedCall+while/lstm_cell_666/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4046216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4042754

inputs'
lstm_cell_668_4042672:2('
lstm_cell_668_4042674:
(#
lstm_cell_668_4042676:(
identity??%lstm_cell_668/StatefulPartitionedCall?while;
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
%lstm_cell_668/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_668_4042672lstm_cell_668_4042674lstm_cell_668_4042676*
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4042626n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_668_4042672lstm_cell_668_4042674lstm_cell_668_4042676*
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
while_body_4042685*
condR
while_cond_4042684*K
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
NoOpNoOp&^lstm_cell_668/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_668/StatefulPartitionedCall%lstm_cell_668/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4042480

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
?
?
*__inference_lstm_797_layer_call_fn_4046157

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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4043428o
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
while_body_4046502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4045970

inputs?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4045886*
condR
while_cond_4045885*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4042684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4042684___redundant_placeholder05
1while_while_cond_4042684___redundant_placeholder15
1while_while_cond_4042684___redundant_placeholder25
1while_while_cond_4042684___redundant_placeholder3
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046586

inputs>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4046502*
condR
while_cond_4046501*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4046944

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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4046814

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
*__inference_lstm_796_layer_call_fn_4045541

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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4043593s
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
while_cond_4045412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4045412___redundant_placeholder05
1while_while_cond_4045412___redundant_placeholder15
1while_while_cond_4045412___redundant_placeholder25
1while_while_cond_4045412___redundant_placeholder3
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4042130

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
while_cond_4042827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4042827___redundant_placeholder05
1while_while_cond_4042827___redundant_placeholder15
1while_while_cond_4042827___redundant_placeholder25
1while_while_cond_4042827___redundant_placeholder3
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
while_cond_4046358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4046358___redundant_placeholder05
1while_while_cond_4046358___redundant_placeholder15
1while_while_cond_4046358___redundant_placeholder25
1while_while_cond_4046358___redundant_placeholder3
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
while_cond_4045885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4045885___redundant_placeholder05
1while_while_cond_4045885___redundant_placeholder15
1while_while_cond_4045885___redundant_placeholder25
1while_while_cond_4045885___redundant_placeholder3
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4046846

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

lstm_795_while_body_4044086.
*lstm_795_while_lstm_795_while_loop_counter4
0lstm_795_while_lstm_795_while_maximum_iterations
lstm_795_while_placeholder 
lstm_795_while_placeholder_1 
lstm_795_while_placeholder_2 
lstm_795_while_placeholder_3-
)lstm_795_while_lstm_795_strided_slice_1_0i
elstm_795_while_tensorarrayv2read_tensorlistgetitem_lstm_795_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_795_while_lstm_cell_666_matmul_readvariableop_resource_0:	?R
?lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?M
>lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
lstm_795_while_identity
lstm_795_while_identity_1
lstm_795_while_identity_2
lstm_795_while_identity_3
lstm_795_while_identity_4
lstm_795_while_identity_5+
'lstm_795_while_lstm_795_strided_slice_1g
clstm_795_while_tensorarrayv2read_tensorlistgetitem_lstm_795_tensorarrayunstack_tensorlistfromtensorN
;lstm_795_while_lstm_cell_666_matmul_readvariableop_resource:	?P
=lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource:	d?K
<lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource:	???3lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp?2lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp?4lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp?
@lstm_795/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_795/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_795_while_tensorarrayv2read_tensorlistgetitem_lstm_795_tensorarrayunstack_tensorlistfromtensor_0lstm_795_while_placeholderIlstm_795/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_795/while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp=lstm_795_while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_795/while/lstm_cell_666/MatMulMatMul9lstm_795/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp?lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_795/while/lstm_cell_666/MatMul_1MatMullstm_795_while_placeholder_2<lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_795/while/lstm_cell_666/addAddV2-lstm_795/while/lstm_cell_666/MatMul:product:0/lstm_795/while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp>lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_795/while/lstm_cell_666/BiasAddBiasAdd$lstm_795/while/lstm_cell_666/add:z:0;lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_795/while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_795/while/lstm_cell_666/splitSplit5lstm_795/while/lstm_cell_666/split/split_dim:output:0-lstm_795/while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_795/while/lstm_cell_666/SigmoidSigmoid+lstm_795/while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_795/while/lstm_cell_666/Sigmoid_1Sigmoid+lstm_795/while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_795/while/lstm_cell_666/mulMul*lstm_795/while/lstm_cell_666/Sigmoid_1:y:0lstm_795_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_795/while/lstm_cell_666/ReluRelu+lstm_795/while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_795/while/lstm_cell_666/mul_1Mul(lstm_795/while/lstm_cell_666/Sigmoid:y:0/lstm_795/while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_795/while/lstm_cell_666/add_1AddV2$lstm_795/while/lstm_cell_666/mul:z:0&lstm_795/while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_795/while/lstm_cell_666/Sigmoid_2Sigmoid+lstm_795/while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_795/while/lstm_cell_666/Relu_1Relu&lstm_795/while/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_795/while/lstm_cell_666/mul_2Mul*lstm_795/while/lstm_cell_666/Sigmoid_2:y:01lstm_795/while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_795/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_795_while_placeholder_1lstm_795_while_placeholder&lstm_795/while/lstm_cell_666/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_795/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_795/while/addAddV2lstm_795_while_placeholderlstm_795/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_795/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_795/while/add_1AddV2*lstm_795_while_lstm_795_while_loop_counterlstm_795/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_795/while/IdentityIdentitylstm_795/while/add_1:z:0^lstm_795/while/NoOp*
T0*
_output_shapes
: ?
lstm_795/while/Identity_1Identity0lstm_795_while_lstm_795_while_maximum_iterations^lstm_795/while/NoOp*
T0*
_output_shapes
: t
lstm_795/while/Identity_2Identitylstm_795/while/add:z:0^lstm_795/while/NoOp*
T0*
_output_shapes
: ?
lstm_795/while/Identity_3IdentityClstm_795/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_795/while/NoOp*
T0*
_output_shapes
: ?
lstm_795/while/Identity_4Identity&lstm_795/while/lstm_cell_666/mul_2:z:0^lstm_795/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_795/while/Identity_5Identity&lstm_795/while/lstm_cell_666/add_1:z:0^lstm_795/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_795/while/NoOpNoOp4^lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp3^lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp5^lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_795_while_identity lstm_795/while/Identity:output:0"?
lstm_795_while_identity_1"lstm_795/while/Identity_1:output:0"?
lstm_795_while_identity_2"lstm_795/while/Identity_2:output:0"?
lstm_795_while_identity_3"lstm_795/while/Identity_3:output:0"?
lstm_795_while_identity_4"lstm_795/while/Identity_4:output:0"?
lstm_795_while_identity_5"lstm_795/while/Identity_5:output:0"T
'lstm_795_while_lstm_795_strided_slice_1)lstm_795_while_lstm_795_strided_slice_1_0"~
<lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource>lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource_0"?
=lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource?lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource_0"|
;lstm_795_while_lstm_cell_666_matmul_readvariableop_resource=lstm_795_while_lstm_cell_666_matmul_readvariableop_resource_0"?
clstm_795_while_tensorarrayv2read_tensorlistgetitem_lstm_795_tensorarrayunstack_tensorlistfromtensorelstm_795_while_tensorarrayv2read_tensorlistgetitem_lstm_795_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp3lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp2h
2lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp2lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp2l
4lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp4lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4043508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4043508___redundant_placeholder05
1while_while_cond_4043508___redundant_placeholder15
1while_while_cond_4043508___redundant_placeholder25
1while_while_cond_4043508___redundant_placeholder3
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045211
inputs_0?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4045127*
condR
while_cond_4045126*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_797_layer_call_and_return_conditional_losses_4043212

inputs>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4043128*
condR
while_cond_4043127*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4047185
file_prefix/
+savev2_dense_265_kernel_read_readvariableop-
)savev2_dense_265_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_795_lstm_cell_795_kernel_read_readvariableopF
Bsavev2_lstm_795_lstm_cell_795_recurrent_kernel_read_readvariableop:
6savev2_lstm_795_lstm_cell_795_bias_read_readvariableop<
8savev2_lstm_796_lstm_cell_796_kernel_read_readvariableopF
Bsavev2_lstm_796_lstm_cell_796_recurrent_kernel_read_readvariableop:
6savev2_lstm_796_lstm_cell_796_bias_read_readvariableop<
8savev2_lstm_797_lstm_cell_797_kernel_read_readvariableopF
Bsavev2_lstm_797_lstm_cell_797_recurrent_kernel_read_readvariableop:
6savev2_lstm_797_lstm_cell_797_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_265_kernel_m_read_readvariableop4
0savev2_adam_dense_265_bias_m_read_readvariableopC
?savev2_adam_lstm_795_lstm_cell_795_kernel_m_read_readvariableopM
Isavev2_adam_lstm_795_lstm_cell_795_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_795_lstm_cell_795_bias_m_read_readvariableopC
?savev2_adam_lstm_796_lstm_cell_796_kernel_m_read_readvariableopM
Isavev2_adam_lstm_796_lstm_cell_796_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_796_lstm_cell_796_bias_m_read_readvariableopC
?savev2_adam_lstm_797_lstm_cell_797_kernel_m_read_readvariableopM
Isavev2_adam_lstm_797_lstm_cell_797_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_797_lstm_cell_797_bias_m_read_readvariableop6
2savev2_adam_dense_265_kernel_v_read_readvariableop4
0savev2_adam_dense_265_bias_v_read_readvariableopC
?savev2_adam_lstm_795_lstm_cell_795_kernel_v_read_readvariableopM
Isavev2_adam_lstm_795_lstm_cell_795_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_795_lstm_cell_795_bias_v_read_readvariableopC
?savev2_adam_lstm_796_lstm_cell_796_kernel_v_read_readvariableopM
Isavev2_adam_lstm_796_lstm_cell_796_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_796_lstm_cell_796_bias_v_read_readvariableopC
?savev2_adam_lstm_797_lstm_cell_797_kernel_v_read_readvariableopM
Isavev2_adam_lstm_797_lstm_cell_797_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_797_lstm_cell_797_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_265_kernel_read_readvariableop)savev2_dense_265_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_795_lstm_cell_795_kernel_read_readvariableopBsavev2_lstm_795_lstm_cell_795_recurrent_kernel_read_readvariableop6savev2_lstm_795_lstm_cell_795_bias_read_readvariableop8savev2_lstm_796_lstm_cell_796_kernel_read_readvariableopBsavev2_lstm_796_lstm_cell_796_recurrent_kernel_read_readvariableop6savev2_lstm_796_lstm_cell_796_bias_read_readvariableop8savev2_lstm_797_lstm_cell_797_kernel_read_readvariableopBsavev2_lstm_797_lstm_cell_797_recurrent_kernel_read_readvariableop6savev2_lstm_797_lstm_cell_797_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_265_kernel_m_read_readvariableop0savev2_adam_dense_265_bias_m_read_readvariableop?savev2_adam_lstm_795_lstm_cell_795_kernel_m_read_readvariableopIsavev2_adam_lstm_795_lstm_cell_795_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_795_lstm_cell_795_bias_m_read_readvariableop?savev2_adam_lstm_796_lstm_cell_796_kernel_m_read_readvariableopIsavev2_adam_lstm_796_lstm_cell_796_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_796_lstm_cell_796_bias_m_read_readvariableop?savev2_adam_lstm_797_lstm_cell_797_kernel_m_read_readvariableopIsavev2_adam_lstm_797_lstm_cell_797_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_797_lstm_cell_797_bias_m_read_readvariableop2savev2_adam_dense_265_kernel_v_read_readvariableop0savev2_adam_dense_265_bias_v_read_readvariableop?savev2_adam_lstm_795_lstm_cell_795_kernel_v_read_readvariableopIsavev2_adam_lstm_795_lstm_cell_795_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_795_lstm_cell_795_bias_v_read_readvariableop?savev2_adam_lstm_796_lstm_cell_796_kernel_v_read_readvariableopIsavev2_adam_lstm_796_lstm_cell_796_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_796_lstm_cell_796_bias_v_read_readvariableop?savev2_adam_lstm_797_lstm_cell_797_kernel_v_read_readvariableopIsavev2_adam_lstm_797_lstm_cell_797_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_797_lstm_cell_797_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
*__inference_lstm_795_layer_call_fn_4044925

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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4043758s
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
while_cond_4041984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4041984___redundant_placeholder05
1while_while_cond_4041984___redundant_placeholder15
1while_while_cond_4041984___redundant_placeholder25
1while_while_cond_4041984___redundant_placeholder3
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
*__inference_lstm_797_layer_call_fn_4046146

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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4043212o
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
?
*__inference_lstm_795_layer_call_fn_4044903
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4042054|
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
?
while_body_4043128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4046029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4043127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4043127___redundant_placeholder05
1while_while_cond_4043127___redundant_placeholder15
1while_while_cond_4043127___redundant_placeholder25
1while_while_cond_4043127___redundant_placeholder3
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
?
?
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043908
lstm_795_input#
lstm_795_4043881:	?#
lstm_795_4043883:	d?
lstm_795_4043885:	?#
lstm_796_4043888:	d?#
lstm_796_4043890:	2?
lstm_796_4043892:	?"
lstm_797_4043895:2("
lstm_797_4043897:
(
lstm_797_4043899:(#
dense_265_4043902:

dense_265_4043904:
identity??!dense_265/StatefulPartitionedCall? lstm_795/StatefulPartitionedCall? lstm_796/StatefulPartitionedCall? lstm_797/StatefulPartitionedCall?
 lstm_795/StatefulPartitionedCallStatefulPartitionedCalllstm_795_inputlstm_795_4043881lstm_795_4043883lstm_795_4043885*
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4042912?
 lstm_796/StatefulPartitionedCallStatefulPartitionedCall)lstm_795/StatefulPartitionedCall:output:0lstm_796_4043888lstm_796_4043890lstm_796_4043892*
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4043062?
 lstm_797/StatefulPartitionedCallStatefulPartitionedCall)lstm_796/StatefulPartitionedCall:output:0lstm_797_4043895lstm_797_4043897lstm_797_4043899*
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4043212?
!dense_265/StatefulPartitionedCallStatefulPartitionedCall)lstm_797/StatefulPartitionedCall:output:0dense_265_4043902dense_265_4043904*
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
F__inference_dense_265_layer_call_and_return_conditional_losses_4043230y
IdentityIdentity*dense_265/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_265/StatefulPartitionedCall!^lstm_795/StatefulPartitionedCall!^lstm_796/StatefulPartitionedCall!^lstm_797/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_265/StatefulPartitionedCall!dense_265/StatefulPartitionedCall2D
 lstm_795/StatefulPartitionedCall lstm_795/StatefulPartitionedCall2D
 lstm_796/StatefulPartitionedCall lstm_796/StatefulPartitionedCall2D
 lstm_797/StatefulPartitionedCall lstm_797/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_795_input
?C
?

lstm_796_while_body_4044225.
*lstm_796_while_lstm_796_while_loop_counter4
0lstm_796_while_lstm_796_while_maximum_iterations
lstm_796_while_placeholder 
lstm_796_while_placeholder_1 
lstm_796_while_placeholder_2 
lstm_796_while_placeholder_3-
)lstm_796_while_lstm_796_strided_slice_1_0i
elstm_796_while_tensorarrayv2read_tensorlistgetitem_lstm_796_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_796_while_lstm_cell_667_matmul_readvariableop_resource_0:	d?R
?lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?M
>lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
lstm_796_while_identity
lstm_796_while_identity_1
lstm_796_while_identity_2
lstm_796_while_identity_3
lstm_796_while_identity_4
lstm_796_while_identity_5+
'lstm_796_while_lstm_796_strided_slice_1g
clstm_796_while_tensorarrayv2read_tensorlistgetitem_lstm_796_tensorarrayunstack_tensorlistfromtensorN
;lstm_796_while_lstm_cell_667_matmul_readvariableop_resource:	d?P
=lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource:	2?K
<lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource:	???3lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp?2lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp?4lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp?
@lstm_796/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_796/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_796_while_tensorarrayv2read_tensorlistgetitem_lstm_796_tensorarrayunstack_tensorlistfromtensor_0lstm_796_while_placeholderIlstm_796/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_796/while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp=lstm_796_while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_796/while/lstm_cell_667/MatMulMatMul9lstm_796/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp?lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_796/while/lstm_cell_667/MatMul_1MatMullstm_796_while_placeholder_2<lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_796/while/lstm_cell_667/addAddV2-lstm_796/while/lstm_cell_667/MatMul:product:0/lstm_796/while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp>lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_796/while/lstm_cell_667/BiasAddBiasAdd$lstm_796/while/lstm_cell_667/add:z:0;lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_796/while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_796/while/lstm_cell_667/splitSplit5lstm_796/while/lstm_cell_667/split/split_dim:output:0-lstm_796/while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_796/while/lstm_cell_667/SigmoidSigmoid+lstm_796/while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_796/while/lstm_cell_667/Sigmoid_1Sigmoid+lstm_796/while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_796/while/lstm_cell_667/mulMul*lstm_796/while/lstm_cell_667/Sigmoid_1:y:0lstm_796_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_796/while/lstm_cell_667/ReluRelu+lstm_796/while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_796/while/lstm_cell_667/mul_1Mul(lstm_796/while/lstm_cell_667/Sigmoid:y:0/lstm_796/while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_796/while/lstm_cell_667/add_1AddV2$lstm_796/while/lstm_cell_667/mul:z:0&lstm_796/while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_796/while/lstm_cell_667/Sigmoid_2Sigmoid+lstm_796/while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_796/while/lstm_cell_667/Relu_1Relu&lstm_796/while/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_796/while/lstm_cell_667/mul_2Mul*lstm_796/while/lstm_cell_667/Sigmoid_2:y:01lstm_796/while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_796/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_796_while_placeholder_1lstm_796_while_placeholder&lstm_796/while/lstm_cell_667/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_796/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_796/while/addAddV2lstm_796_while_placeholderlstm_796/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_796/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_796/while/add_1AddV2*lstm_796_while_lstm_796_while_loop_counterlstm_796/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_796/while/IdentityIdentitylstm_796/while/add_1:z:0^lstm_796/while/NoOp*
T0*
_output_shapes
: ?
lstm_796/while/Identity_1Identity0lstm_796_while_lstm_796_while_maximum_iterations^lstm_796/while/NoOp*
T0*
_output_shapes
: t
lstm_796/while/Identity_2Identitylstm_796/while/add:z:0^lstm_796/while/NoOp*
T0*
_output_shapes
: ?
lstm_796/while/Identity_3IdentityClstm_796/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_796/while/NoOp*
T0*
_output_shapes
: ?
lstm_796/while/Identity_4Identity&lstm_796/while/lstm_cell_667/mul_2:z:0^lstm_796/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_796/while/Identity_5Identity&lstm_796/while/lstm_cell_667/add_1:z:0^lstm_796/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_796/while/NoOpNoOp4^lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp3^lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp5^lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_796_while_identity lstm_796/while/Identity:output:0"?
lstm_796_while_identity_1"lstm_796/while/Identity_1:output:0"?
lstm_796_while_identity_2"lstm_796/while/Identity_2:output:0"?
lstm_796_while_identity_3"lstm_796/while/Identity_3:output:0"?
lstm_796_while_identity_4"lstm_796/while/Identity_4:output:0"?
lstm_796_while_identity_5"lstm_796/while/Identity_5:output:0"T
'lstm_796_while_lstm_796_strided_slice_1)lstm_796_while_lstm_796_strided_slice_1_0"~
<lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource>lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource_0"?
=lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource?lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource_0"|
;lstm_796_while_lstm_cell_667_matmul_readvariableop_resource=lstm_796_while_lstm_cell_667_matmul_readvariableop_resource_0"?
clstm_796_while_tensorarrayv2read_tensorlistgetitem_lstm_796_tensorarrayunstack_tensorlistfromtensorelstm_796_while_tensorarrayv2read_tensorlistgetitem_lstm_796_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp3lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp2h
2lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp2lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp2l
4lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp4lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_795_while_body_4044513.
*lstm_795_while_lstm_795_while_loop_counter4
0lstm_795_while_lstm_795_while_maximum_iterations
lstm_795_while_placeholder 
lstm_795_while_placeholder_1 
lstm_795_while_placeholder_2 
lstm_795_while_placeholder_3-
)lstm_795_while_lstm_795_strided_slice_1_0i
elstm_795_while_tensorarrayv2read_tensorlistgetitem_lstm_795_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_795_while_lstm_cell_666_matmul_readvariableop_resource_0:	?R
?lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?M
>lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
lstm_795_while_identity
lstm_795_while_identity_1
lstm_795_while_identity_2
lstm_795_while_identity_3
lstm_795_while_identity_4
lstm_795_while_identity_5+
'lstm_795_while_lstm_795_strided_slice_1g
clstm_795_while_tensorarrayv2read_tensorlistgetitem_lstm_795_tensorarrayunstack_tensorlistfromtensorN
;lstm_795_while_lstm_cell_666_matmul_readvariableop_resource:	?P
=lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource:	d?K
<lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource:	???3lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp?2lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp?4lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp?
@lstm_795/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_795/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_795_while_tensorarrayv2read_tensorlistgetitem_lstm_795_tensorarrayunstack_tensorlistfromtensor_0lstm_795_while_placeholderIlstm_795/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_795/while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp=lstm_795_while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_795/while/lstm_cell_666/MatMulMatMul9lstm_795/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp?lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_795/while/lstm_cell_666/MatMul_1MatMullstm_795_while_placeholder_2<lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_795/while/lstm_cell_666/addAddV2-lstm_795/while/lstm_cell_666/MatMul:product:0/lstm_795/while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp>lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_795/while/lstm_cell_666/BiasAddBiasAdd$lstm_795/while/lstm_cell_666/add:z:0;lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_795/while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_795/while/lstm_cell_666/splitSplit5lstm_795/while/lstm_cell_666/split/split_dim:output:0-lstm_795/while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_795/while/lstm_cell_666/SigmoidSigmoid+lstm_795/while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_795/while/lstm_cell_666/Sigmoid_1Sigmoid+lstm_795/while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_795/while/lstm_cell_666/mulMul*lstm_795/while/lstm_cell_666/Sigmoid_1:y:0lstm_795_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_795/while/lstm_cell_666/ReluRelu+lstm_795/while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_795/while/lstm_cell_666/mul_1Mul(lstm_795/while/lstm_cell_666/Sigmoid:y:0/lstm_795/while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_795/while/lstm_cell_666/add_1AddV2$lstm_795/while/lstm_cell_666/mul:z:0&lstm_795/while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_795/while/lstm_cell_666/Sigmoid_2Sigmoid+lstm_795/while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_795/while/lstm_cell_666/Relu_1Relu&lstm_795/while/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_795/while/lstm_cell_666/mul_2Mul*lstm_795/while/lstm_cell_666/Sigmoid_2:y:01lstm_795/while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_795/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_795_while_placeholder_1lstm_795_while_placeholder&lstm_795/while/lstm_cell_666/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_795/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_795/while/addAddV2lstm_795_while_placeholderlstm_795/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_795/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_795/while/add_1AddV2*lstm_795_while_lstm_795_while_loop_counterlstm_795/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_795/while/IdentityIdentitylstm_795/while/add_1:z:0^lstm_795/while/NoOp*
T0*
_output_shapes
: ?
lstm_795/while/Identity_1Identity0lstm_795_while_lstm_795_while_maximum_iterations^lstm_795/while/NoOp*
T0*
_output_shapes
: t
lstm_795/while/Identity_2Identitylstm_795/while/add:z:0^lstm_795/while/NoOp*
T0*
_output_shapes
: ?
lstm_795/while/Identity_3IdentityClstm_795/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_795/while/NoOp*
T0*
_output_shapes
: ?
lstm_795/while/Identity_4Identity&lstm_795/while/lstm_cell_666/mul_2:z:0^lstm_795/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_795/while/Identity_5Identity&lstm_795/while/lstm_cell_666/add_1:z:0^lstm_795/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_795/while/NoOpNoOp4^lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp3^lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp5^lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_795_while_identity lstm_795/while/Identity:output:0"?
lstm_795_while_identity_1"lstm_795/while/Identity_1:output:0"?
lstm_795_while_identity_2"lstm_795/while/Identity_2:output:0"?
lstm_795_while_identity_3"lstm_795/while/Identity_3:output:0"?
lstm_795_while_identity_4"lstm_795/while/Identity_4:output:0"?
lstm_795_while_identity_5"lstm_795/while/Identity_5:output:0"T
'lstm_795_while_lstm_795_strided_slice_1)lstm_795_while_lstm_795_strided_slice_1_0"~
<lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource>lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource_0"?
=lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource?lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource_0"|
;lstm_795_while_lstm_cell_666_matmul_readvariableop_resource=lstm_795_while_lstm_cell_666_matmul_readvariableop_resource_0"?
clstm_795_while_tensorarrayv2read_tensorlistgetitem_lstm_795_tensorarrayunstack_tensorlistfromtensorelstm_795_while_tensorarrayv2read_tensorlistgetitem_lstm_795_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp3lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp2h
2lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp2lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp2l
4lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp4lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_265_lstm_795_while_cond_4041344L
Hsequential_265_lstm_795_while_sequential_265_lstm_795_while_loop_counterR
Nsequential_265_lstm_795_while_sequential_265_lstm_795_while_maximum_iterations-
)sequential_265_lstm_795_while_placeholder/
+sequential_265_lstm_795_while_placeholder_1/
+sequential_265_lstm_795_while_placeholder_2/
+sequential_265_lstm_795_while_placeholder_3N
Jsequential_265_lstm_795_while_less_sequential_265_lstm_795_strided_slice_1e
asequential_265_lstm_795_while_sequential_265_lstm_795_while_cond_4041344___redundant_placeholder0e
asequential_265_lstm_795_while_sequential_265_lstm_795_while_cond_4041344___redundant_placeholder1e
asequential_265_lstm_795_while_sequential_265_lstm_795_while_cond_4041344___redundant_placeholder2e
asequential_265_lstm_795_while_sequential_265_lstm_795_while_cond_4041344___redundant_placeholder3*
&sequential_265_lstm_795_while_identity
?
"sequential_265/lstm_795/while/LessLess)sequential_265_lstm_795_while_placeholderJsequential_265_lstm_795_while_less_sequential_265_lstm_795_strided_slice_1*
T0*
_output_shapes
: {
&sequential_265/lstm_795/while/IdentityIdentity&sequential_265/lstm_795/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_265_lstm_795_while_identity/sequential_265/lstm_795/while/Identity:output:0*(
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
F__inference_dense_265_layer_call_and_return_conditional_losses_4043230

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
while_cond_4046028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4046028___redundant_placeholder05
1while_while_cond_4046028___redundant_placeholder15
1while_while_cond_4046028___redundant_placeholder25
1while_while_cond_4046028___redundant_placeholder3
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
lstm_797_while_cond_4044790.
*lstm_797_while_lstm_797_while_loop_counter4
0lstm_797_while_lstm_797_while_maximum_iterations
lstm_797_while_placeholder 
lstm_797_while_placeholder_1 
lstm_797_while_placeholder_2 
lstm_797_while_placeholder_30
,lstm_797_while_less_lstm_797_strided_slice_1G
Clstm_797_while_lstm_797_while_cond_4044790___redundant_placeholder0G
Clstm_797_while_lstm_797_while_cond_4044790___redundant_placeholder1G
Clstm_797_while_lstm_797_while_cond_4044790___redundant_placeholder2G
Clstm_797_while_lstm_797_while_cond_4044790___redundant_placeholder3
lstm_797_while_identity
?
lstm_797/while/LessLesslstm_797_while_placeholder,lstm_797_while_less_lstm_797_strided_slice_1*
T0*
_output_shapes
: ]
lstm_797/while/IdentityIdentitylstm_797/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_797_while_identity lstm_797/while/Identity:output:0*(
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046729

inputs>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4046645*
condR
while_cond_4046644*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_265_layer_call_fn_4044000

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
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043237o
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
/__inference_lstm_cell_666_layer_call_fn_4046765

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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4041780o
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
?
?
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043826

inputs#
lstm_795_4043799:	?#
lstm_795_4043801:	d?
lstm_795_4043803:	?#
lstm_796_4043806:	d?#
lstm_796_4043808:	2?
lstm_796_4043810:	?"
lstm_797_4043813:2("
lstm_797_4043815:
(
lstm_797_4043817:(#
dense_265_4043820:

dense_265_4043822:
identity??!dense_265/StatefulPartitionedCall? lstm_795/StatefulPartitionedCall? lstm_796/StatefulPartitionedCall? lstm_797/StatefulPartitionedCall?
 lstm_795/StatefulPartitionedCallStatefulPartitionedCallinputslstm_795_4043799lstm_795_4043801lstm_795_4043803*
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4043758?
 lstm_796/StatefulPartitionedCallStatefulPartitionedCall)lstm_795/StatefulPartitionedCall:output:0lstm_796_4043806lstm_796_4043808lstm_796_4043810*
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4043593?
 lstm_797/StatefulPartitionedCallStatefulPartitionedCall)lstm_796/StatefulPartitionedCall:output:0lstm_797_4043813lstm_797_4043815lstm_797_4043817*
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4043428?
!dense_265/StatefulPartitionedCallStatefulPartitionedCall)lstm_797/StatefulPartitionedCall:output:0dense_265_4043820dense_265_4043822*
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
F__inference_dense_265_layer_call_and_return_conditional_losses_4043230y
IdentityIdentity*dense_265/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_265/StatefulPartitionedCall!^lstm_795/StatefulPartitionedCall!^lstm_796/StatefulPartitionedCall!^lstm_797/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_265/StatefulPartitionedCall!dense_265/StatefulPartitionedCall2D
 lstm_795/StatefulPartitionedCall lstm_795/StatefulPartitionedCall2D
 lstm_796/StatefulPartitionedCall lstm_796/StatefulPartitionedCall2D
 lstm_797/StatefulPartitionedCall lstm_797/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_667_layer_call_fn_4046880

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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4042276o
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
?T
?
*sequential_265_lstm_797_while_body_4041623L
Hsequential_265_lstm_797_while_sequential_265_lstm_797_while_loop_counterR
Nsequential_265_lstm_797_while_sequential_265_lstm_797_while_maximum_iterations-
)sequential_265_lstm_797_while_placeholder/
+sequential_265_lstm_797_while_placeholder_1/
+sequential_265_lstm_797_while_placeholder_2/
+sequential_265_lstm_797_while_placeholder_3K
Gsequential_265_lstm_797_while_sequential_265_lstm_797_strided_slice_1_0?
?sequential_265_lstm_797_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_797_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_265_lstm_797_while_lstm_cell_668_matmul_readvariableop_resource_0:2(`
Nsequential_265_lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource_0:
([
Msequential_265_lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource_0:(*
&sequential_265_lstm_797_while_identity,
(sequential_265_lstm_797_while_identity_1,
(sequential_265_lstm_797_while_identity_2,
(sequential_265_lstm_797_while_identity_3,
(sequential_265_lstm_797_while_identity_4,
(sequential_265_lstm_797_while_identity_5I
Esequential_265_lstm_797_while_sequential_265_lstm_797_strided_slice_1?
?sequential_265_lstm_797_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_797_tensorarrayunstack_tensorlistfromtensor\
Jsequential_265_lstm_797_while_lstm_cell_668_matmul_readvariableop_resource:2(^
Lsequential_265_lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource:
(Y
Ksequential_265_lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource:(??Bsequential_265/lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp?Asequential_265/lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp?Csequential_265/lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp?
Osequential_265/lstm_797/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_265/lstm_797/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_265_lstm_797_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_797_tensorarrayunstack_tensorlistfromtensor_0)sequential_265_lstm_797_while_placeholderXsequential_265/lstm_797/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_265/lstm_797/while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOpLsequential_265_lstm_797_while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_265/lstm_797/while/lstm_cell_668/MatMulMatMulHsequential_265/lstm_797/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_265/lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_265/lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOpNsequential_265_lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_265/lstm_797/while/lstm_cell_668/MatMul_1MatMul+sequential_265_lstm_797_while_placeholder_2Ksequential_265/lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_265/lstm_797/while/lstm_cell_668/addAddV2<sequential_265/lstm_797/while/lstm_cell_668/MatMul:product:0>sequential_265/lstm_797/while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_265/lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOpMsequential_265_lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_265/lstm_797/while/lstm_cell_668/BiasAddBiasAdd3sequential_265/lstm_797/while/lstm_cell_668/add:z:0Jsequential_265/lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_265/lstm_797/while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_265/lstm_797/while/lstm_cell_668/splitSplitDsequential_265/lstm_797/while/lstm_cell_668/split/split_dim:output:0<sequential_265/lstm_797/while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_265/lstm_797/while/lstm_cell_668/SigmoidSigmoid:sequential_265/lstm_797/while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_265/lstm_797/while/lstm_cell_668/Sigmoid_1Sigmoid:sequential_265/lstm_797/while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_265/lstm_797/while/lstm_cell_668/mulMul9sequential_265/lstm_797/while/lstm_cell_668/Sigmoid_1:y:0+sequential_265_lstm_797_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_265/lstm_797/while/lstm_cell_668/ReluRelu:sequential_265/lstm_797/while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_265/lstm_797/while/lstm_cell_668/mul_1Mul7sequential_265/lstm_797/while/lstm_cell_668/Sigmoid:y:0>sequential_265/lstm_797/while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_265/lstm_797/while/lstm_cell_668/add_1AddV23sequential_265/lstm_797/while/lstm_cell_668/mul:z:05sequential_265/lstm_797/while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_265/lstm_797/while/lstm_cell_668/Sigmoid_2Sigmoid:sequential_265/lstm_797/while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_265/lstm_797/while/lstm_cell_668/Relu_1Relu5sequential_265/lstm_797/while/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_265/lstm_797/while/lstm_cell_668/mul_2Mul9sequential_265/lstm_797/while/lstm_cell_668/Sigmoid_2:y:0@sequential_265/lstm_797/while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_265/lstm_797/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_265_lstm_797_while_placeholder_1)sequential_265_lstm_797_while_placeholder5sequential_265/lstm_797/while/lstm_cell_668/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_265/lstm_797/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_265/lstm_797/while/addAddV2)sequential_265_lstm_797_while_placeholder,sequential_265/lstm_797/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_265/lstm_797/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_265/lstm_797/while/add_1AddV2Hsequential_265_lstm_797_while_sequential_265_lstm_797_while_loop_counter.sequential_265/lstm_797/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_265/lstm_797/while/IdentityIdentity'sequential_265/lstm_797/while/add_1:z:0#^sequential_265/lstm_797/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_797/while/Identity_1IdentityNsequential_265_lstm_797_while_sequential_265_lstm_797_while_maximum_iterations#^sequential_265/lstm_797/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_797/while/Identity_2Identity%sequential_265/lstm_797/while/add:z:0#^sequential_265/lstm_797/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_797/while/Identity_3IdentityRsequential_265/lstm_797/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_265/lstm_797/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_797/while/Identity_4Identity5sequential_265/lstm_797/while/lstm_cell_668/mul_2:z:0#^sequential_265/lstm_797/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_265/lstm_797/while/Identity_5Identity5sequential_265/lstm_797/while/lstm_cell_668/add_1:z:0#^sequential_265/lstm_797/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_265/lstm_797/while/NoOpNoOpC^sequential_265/lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOpB^sequential_265/lstm_797/while/lstm_cell_668/MatMul/ReadVariableOpD^sequential_265/lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_265_lstm_797_while_identity/sequential_265/lstm_797/while/Identity:output:0"]
(sequential_265_lstm_797_while_identity_11sequential_265/lstm_797/while/Identity_1:output:0"]
(sequential_265_lstm_797_while_identity_21sequential_265/lstm_797/while/Identity_2:output:0"]
(sequential_265_lstm_797_while_identity_31sequential_265/lstm_797/while/Identity_3:output:0"]
(sequential_265_lstm_797_while_identity_41sequential_265/lstm_797/while/Identity_4:output:0"]
(sequential_265_lstm_797_while_identity_51sequential_265/lstm_797/while/Identity_5:output:0"?
Ksequential_265_lstm_797_while_lstm_cell_668_biasadd_readvariableop_resourceMsequential_265_lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource_0"?
Lsequential_265_lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resourceNsequential_265_lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource_0"?
Jsequential_265_lstm_797_while_lstm_cell_668_matmul_readvariableop_resourceLsequential_265_lstm_797_while_lstm_cell_668_matmul_readvariableop_resource_0"?
Esequential_265_lstm_797_while_sequential_265_lstm_797_strided_slice_1Gsequential_265_lstm_797_while_sequential_265_lstm_797_strided_slice_1_0"?
?sequential_265_lstm_797_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_797_tensorarrayunstack_tensorlistfromtensor?sequential_265_lstm_797_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_797_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_265/lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOpBsequential_265/lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp2?
Asequential_265/lstm_797/while/lstm_cell_668/MatMul/ReadVariableOpAsequential_265/lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp2?
Csequential_265/lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOpCsequential_265/lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4046501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4046501___redundant_placeholder05
1while_while_cond_4046501___redundant_placeholder15
1while_while_cond_4046501___redundant_placeholder25
1while_while_cond_4046501___redundant_placeholder3
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4042276

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
while_body_4045743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4042912

inputs?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4042828*
condR
while_cond_4042827*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4045269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4045269___redundant_placeholder05
1while_while_cond_4045269___redundant_placeholder15
1while_while_cond_4045269___redundant_placeholder25
1while_while_cond_4045269___redundant_placeholder3
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
while_cond_4043343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4043343___redundant_placeholder05
1while_while_cond_4043343___redundant_placeholder15
1while_while_cond_4043343___redundant_placeholder25
1while_while_cond_4043343___redundant_placeholder3
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
while_body_4041794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_666_4041818_0:	?0
while_lstm_cell_666_4041820_0:	d?,
while_lstm_cell_666_4041822_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_666_4041818:	?.
while_lstm_cell_666_4041820:	d?*
while_lstm_cell_666_4041822:	???+while/lstm_cell_666/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_666/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_666_4041818_0while_lstm_cell_666_4041820_0while_lstm_cell_666_4041822_0*
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4041780?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_666/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_666/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_666/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_666/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_666_4041818while_lstm_cell_666_4041818_0"<
while_lstm_cell_666_4041820while_lstm_cell_666_4041820_0"<
while_lstm_cell_666_4041822while_lstm_cell_666_4041822_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_666/StatefulPartitionedCall+while/lstm_cell_666/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4042213

inputs(
lstm_cell_667_4042131:	d?(
lstm_cell_667_4042133:	2?$
lstm_cell_667_4042135:	?
identity??%lstm_cell_667/StatefulPartitionedCall?while;
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
%lstm_cell_667/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_667_4042131lstm_cell_667_4042133lstm_cell_667_4042135*
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4042130n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_667_4042131lstm_cell_667_4042133lstm_cell_667_4042135*
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
while_body_4042144*
condR
while_cond_4042143*K
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
NoOpNoOp&^lstm_cell_667/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_667/StatefulPartitionedCall%lstm_cell_667/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4045886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_667_layer_call_fn_4046863

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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4042130o
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045354

inputs?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4045270*
condR
while_cond_4045269*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4042977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4042977___redundant_placeholder05
1while_while_cond_4042977___redundant_placeholder15
1while_while_cond_4042977___redundant_placeholder25
1while_while_cond_4042977___redundant_placeholder3
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4046912

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
?T
?
*sequential_265_lstm_795_while_body_4041345L
Hsequential_265_lstm_795_while_sequential_265_lstm_795_while_loop_counterR
Nsequential_265_lstm_795_while_sequential_265_lstm_795_while_maximum_iterations-
)sequential_265_lstm_795_while_placeholder/
+sequential_265_lstm_795_while_placeholder_1/
+sequential_265_lstm_795_while_placeholder_2/
+sequential_265_lstm_795_while_placeholder_3K
Gsequential_265_lstm_795_while_sequential_265_lstm_795_strided_slice_1_0?
?sequential_265_lstm_795_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_795_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_265_lstm_795_while_lstm_cell_666_matmul_readvariableop_resource_0:	?a
Nsequential_265_lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?\
Msequential_265_lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource_0:	?*
&sequential_265_lstm_795_while_identity,
(sequential_265_lstm_795_while_identity_1,
(sequential_265_lstm_795_while_identity_2,
(sequential_265_lstm_795_while_identity_3,
(sequential_265_lstm_795_while_identity_4,
(sequential_265_lstm_795_while_identity_5I
Esequential_265_lstm_795_while_sequential_265_lstm_795_strided_slice_1?
?sequential_265_lstm_795_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_795_tensorarrayunstack_tensorlistfromtensor]
Jsequential_265_lstm_795_while_lstm_cell_666_matmul_readvariableop_resource:	?_
Lsequential_265_lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource:	d?Z
Ksequential_265_lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource:	???Bsequential_265/lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp?Asequential_265/lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp?Csequential_265/lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp?
Osequential_265/lstm_795/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_265/lstm_795/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_265_lstm_795_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_795_tensorarrayunstack_tensorlistfromtensor_0)sequential_265_lstm_795_while_placeholderXsequential_265/lstm_795/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_265/lstm_795/while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOpLsequential_265_lstm_795_while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_265/lstm_795/while/lstm_cell_666/MatMulMatMulHsequential_265/lstm_795/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_265/lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_265/lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOpNsequential_265_lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_265/lstm_795/while/lstm_cell_666/MatMul_1MatMul+sequential_265_lstm_795_while_placeholder_2Ksequential_265/lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_265/lstm_795/while/lstm_cell_666/addAddV2<sequential_265/lstm_795/while/lstm_cell_666/MatMul:product:0>sequential_265/lstm_795/while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_265/lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOpMsequential_265_lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_265/lstm_795/while/lstm_cell_666/BiasAddBiasAdd3sequential_265/lstm_795/while/lstm_cell_666/add:z:0Jsequential_265/lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_265/lstm_795/while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_265/lstm_795/while/lstm_cell_666/splitSplitDsequential_265/lstm_795/while/lstm_cell_666/split/split_dim:output:0<sequential_265/lstm_795/while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_265/lstm_795/while/lstm_cell_666/SigmoidSigmoid:sequential_265/lstm_795/while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_265/lstm_795/while/lstm_cell_666/Sigmoid_1Sigmoid:sequential_265/lstm_795/while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_265/lstm_795/while/lstm_cell_666/mulMul9sequential_265/lstm_795/while/lstm_cell_666/Sigmoid_1:y:0+sequential_265_lstm_795_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_265/lstm_795/while/lstm_cell_666/ReluRelu:sequential_265/lstm_795/while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_265/lstm_795/while/lstm_cell_666/mul_1Mul7sequential_265/lstm_795/while/lstm_cell_666/Sigmoid:y:0>sequential_265/lstm_795/while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_265/lstm_795/while/lstm_cell_666/add_1AddV23sequential_265/lstm_795/while/lstm_cell_666/mul:z:05sequential_265/lstm_795/while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_265/lstm_795/while/lstm_cell_666/Sigmoid_2Sigmoid:sequential_265/lstm_795/while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_265/lstm_795/while/lstm_cell_666/Relu_1Relu5sequential_265/lstm_795/while/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_265/lstm_795/while/lstm_cell_666/mul_2Mul9sequential_265/lstm_795/while/lstm_cell_666/Sigmoid_2:y:0@sequential_265/lstm_795/while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_265/lstm_795/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_265_lstm_795_while_placeholder_1)sequential_265_lstm_795_while_placeholder5sequential_265/lstm_795/while/lstm_cell_666/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_265/lstm_795/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_265/lstm_795/while/addAddV2)sequential_265_lstm_795_while_placeholder,sequential_265/lstm_795/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_265/lstm_795/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_265/lstm_795/while/add_1AddV2Hsequential_265_lstm_795_while_sequential_265_lstm_795_while_loop_counter.sequential_265/lstm_795/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_265/lstm_795/while/IdentityIdentity'sequential_265/lstm_795/while/add_1:z:0#^sequential_265/lstm_795/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_795/while/Identity_1IdentityNsequential_265_lstm_795_while_sequential_265_lstm_795_while_maximum_iterations#^sequential_265/lstm_795/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_795/while/Identity_2Identity%sequential_265/lstm_795/while/add:z:0#^sequential_265/lstm_795/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_795/while/Identity_3IdentityRsequential_265/lstm_795/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_265/lstm_795/while/NoOp*
T0*
_output_shapes
: ?
(sequential_265/lstm_795/while/Identity_4Identity5sequential_265/lstm_795/while/lstm_cell_666/mul_2:z:0#^sequential_265/lstm_795/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_265/lstm_795/while/Identity_5Identity5sequential_265/lstm_795/while/lstm_cell_666/add_1:z:0#^sequential_265/lstm_795/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_265/lstm_795/while/NoOpNoOpC^sequential_265/lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOpB^sequential_265/lstm_795/while/lstm_cell_666/MatMul/ReadVariableOpD^sequential_265/lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_265_lstm_795_while_identity/sequential_265/lstm_795/while/Identity:output:0"]
(sequential_265_lstm_795_while_identity_11sequential_265/lstm_795/while/Identity_1:output:0"]
(sequential_265_lstm_795_while_identity_21sequential_265/lstm_795/while/Identity_2:output:0"]
(sequential_265_lstm_795_while_identity_31sequential_265/lstm_795/while/Identity_3:output:0"]
(sequential_265_lstm_795_while_identity_41sequential_265/lstm_795/while/Identity_4:output:0"]
(sequential_265_lstm_795_while_identity_51sequential_265/lstm_795/while/Identity_5:output:0"?
Ksequential_265_lstm_795_while_lstm_cell_666_biasadd_readvariableop_resourceMsequential_265_lstm_795_while_lstm_cell_666_biasadd_readvariableop_resource_0"?
Lsequential_265_lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resourceNsequential_265_lstm_795_while_lstm_cell_666_matmul_1_readvariableop_resource_0"?
Jsequential_265_lstm_795_while_lstm_cell_666_matmul_readvariableop_resourceLsequential_265_lstm_795_while_lstm_cell_666_matmul_readvariableop_resource_0"?
Esequential_265_lstm_795_while_sequential_265_lstm_795_strided_slice_1Gsequential_265_lstm_795_while_sequential_265_lstm_795_strided_slice_1_0"?
?sequential_265_lstm_795_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_795_tensorarrayunstack_tensorlistfromtensor?sequential_265_lstm_795_while_tensorarrayv2read_tensorlistgetitem_sequential_265_lstm_795_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_265/lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOpBsequential_265/lstm_795/while/lstm_cell_666/BiasAdd/ReadVariableOp2?
Asequential_265/lstm_795/while/lstm_cell_666/MatMul/ReadVariableOpAsequential_265/lstm_795/while/lstm_cell_666/MatMul/ReadVariableOp2?
Csequential_265/lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOpCsequential_265/lstm_795/while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4041926

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

lstm_796_while_body_4044652.
*lstm_796_while_lstm_796_while_loop_counter4
0lstm_796_while_lstm_796_while_maximum_iterations
lstm_796_while_placeholder 
lstm_796_while_placeholder_1 
lstm_796_while_placeholder_2 
lstm_796_while_placeholder_3-
)lstm_796_while_lstm_796_strided_slice_1_0i
elstm_796_while_tensorarrayv2read_tensorlistgetitem_lstm_796_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_796_while_lstm_cell_667_matmul_readvariableop_resource_0:	d?R
?lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?M
>lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
lstm_796_while_identity
lstm_796_while_identity_1
lstm_796_while_identity_2
lstm_796_while_identity_3
lstm_796_while_identity_4
lstm_796_while_identity_5+
'lstm_796_while_lstm_796_strided_slice_1g
clstm_796_while_tensorarrayv2read_tensorlistgetitem_lstm_796_tensorarrayunstack_tensorlistfromtensorN
;lstm_796_while_lstm_cell_667_matmul_readvariableop_resource:	d?P
=lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource:	2?K
<lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource:	???3lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp?2lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp?4lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp?
@lstm_796/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_796/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_796_while_tensorarrayv2read_tensorlistgetitem_lstm_796_tensorarrayunstack_tensorlistfromtensor_0lstm_796_while_placeholderIlstm_796/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_796/while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp=lstm_796_while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_796/while/lstm_cell_667/MatMulMatMul9lstm_796/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp?lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_796/while/lstm_cell_667/MatMul_1MatMullstm_796_while_placeholder_2<lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_796/while/lstm_cell_667/addAddV2-lstm_796/while/lstm_cell_667/MatMul:product:0/lstm_796/while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp>lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_796/while/lstm_cell_667/BiasAddBiasAdd$lstm_796/while/lstm_cell_667/add:z:0;lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_796/while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_796/while/lstm_cell_667/splitSplit5lstm_796/while/lstm_cell_667/split/split_dim:output:0-lstm_796/while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_796/while/lstm_cell_667/SigmoidSigmoid+lstm_796/while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_796/while/lstm_cell_667/Sigmoid_1Sigmoid+lstm_796/while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_796/while/lstm_cell_667/mulMul*lstm_796/while/lstm_cell_667/Sigmoid_1:y:0lstm_796_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_796/while/lstm_cell_667/ReluRelu+lstm_796/while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_796/while/lstm_cell_667/mul_1Mul(lstm_796/while/lstm_cell_667/Sigmoid:y:0/lstm_796/while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_796/while/lstm_cell_667/add_1AddV2$lstm_796/while/lstm_cell_667/mul:z:0&lstm_796/while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_796/while/lstm_cell_667/Sigmoid_2Sigmoid+lstm_796/while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_796/while/lstm_cell_667/Relu_1Relu&lstm_796/while/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_796/while/lstm_cell_667/mul_2Mul*lstm_796/while/lstm_cell_667/Sigmoid_2:y:01lstm_796/while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_796/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_796_while_placeholder_1lstm_796_while_placeholder&lstm_796/while/lstm_cell_667/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_796/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_796/while/addAddV2lstm_796_while_placeholderlstm_796/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_796/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_796/while/add_1AddV2*lstm_796_while_lstm_796_while_loop_counterlstm_796/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_796/while/IdentityIdentitylstm_796/while/add_1:z:0^lstm_796/while/NoOp*
T0*
_output_shapes
: ?
lstm_796/while/Identity_1Identity0lstm_796_while_lstm_796_while_maximum_iterations^lstm_796/while/NoOp*
T0*
_output_shapes
: t
lstm_796/while/Identity_2Identitylstm_796/while/add:z:0^lstm_796/while/NoOp*
T0*
_output_shapes
: ?
lstm_796/while/Identity_3IdentityClstm_796/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_796/while/NoOp*
T0*
_output_shapes
: ?
lstm_796/while/Identity_4Identity&lstm_796/while/lstm_cell_667/mul_2:z:0^lstm_796/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_796/while/Identity_5Identity&lstm_796/while/lstm_cell_667/add_1:z:0^lstm_796/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_796/while/NoOpNoOp4^lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp3^lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp5^lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_796_while_identity lstm_796/while/Identity:output:0"?
lstm_796_while_identity_1"lstm_796/while/Identity_1:output:0"?
lstm_796_while_identity_2"lstm_796/while/Identity_2:output:0"?
lstm_796_while_identity_3"lstm_796/while/Identity_3:output:0"?
lstm_796_while_identity_4"lstm_796/while/Identity_4:output:0"?
lstm_796_while_identity_5"lstm_796/while/Identity_5:output:0"T
'lstm_796_while_lstm_796_strided_slice_1)lstm_796_while_lstm_796_strided_slice_1_0"~
<lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource>lstm_796_while_lstm_cell_667_biasadd_readvariableop_resource_0"?
=lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource?lstm_796_while_lstm_cell_667_matmul_1_readvariableop_resource_0"|
;lstm_796_while_lstm_cell_667_matmul_readvariableop_resource=lstm_796_while_lstm_cell_667_matmul_readvariableop_resource_0"?
clstm_796_while_tensorarrayv2read_tensorlistgetitem_lstm_796_tensorarrayunstack_tensorlistfromtensorelstm_796_while_tensorarrayv2read_tensorlistgetitem_lstm_796_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp3lstm_796/while/lstm_cell_667/BiasAdd/ReadVariableOp2h
2lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp2lstm_796/while/lstm_cell_667/MatMul/ReadVariableOp2l
4lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp4lstm_796/while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_796_layer_call_fn_4045508
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4042213|
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
while_body_4042494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_668_4042518_0:2(/
while_lstm_cell_668_4042520_0:
(+
while_lstm_cell_668_4042522_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_668_4042518:2(-
while_lstm_cell_668_4042520:
()
while_lstm_cell_668_4042522:(??+while/lstm_cell_668/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_668/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_668_4042518_0while_lstm_cell_668_4042520_0while_lstm_cell_668_4042522_0*
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4042480?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_668/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_668/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_668/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_668/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_668_4042518while_lstm_cell_668_4042518_0"<
while_lstm_cell_668_4042520while_lstm_cell_668_4042520_0"<
while_lstm_cell_668_4042522while_lstm_cell_668_4042522_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_668/StatefulPartitionedCall+while/lstm_cell_668/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4042626

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
while_body_4043674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4043509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_797_layer_call_fn_4046124
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4042563o
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
?

?
0__inference_sequential_265_layer_call_fn_4043878
lstm_795_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_795_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043826o
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
_user_specified_namelstm_795_input
?8
?
while_body_4046645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_265_layer_call_and_return_conditional_losses_4044881

inputsH
5lstm_795_lstm_cell_666_matmul_readvariableop_resource:	?J
7lstm_795_lstm_cell_666_matmul_1_readvariableop_resource:	d?E
6lstm_795_lstm_cell_666_biasadd_readvariableop_resource:	?H
5lstm_796_lstm_cell_667_matmul_readvariableop_resource:	d?J
7lstm_796_lstm_cell_667_matmul_1_readvariableop_resource:	2?E
6lstm_796_lstm_cell_667_biasadd_readvariableop_resource:	?G
5lstm_797_lstm_cell_668_matmul_readvariableop_resource:2(I
7lstm_797_lstm_cell_668_matmul_1_readvariableop_resource:
(D
6lstm_797_lstm_cell_668_biasadd_readvariableop_resource:(:
(dense_265_matmul_readvariableop_resource:
7
)dense_265_biasadd_readvariableop_resource:
identity?? dense_265/BiasAdd/ReadVariableOp?dense_265/MatMul/ReadVariableOp?-lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp?,lstm_795/lstm_cell_666/MatMul/ReadVariableOp?.lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp?lstm_795/while?-lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp?,lstm_796/lstm_cell_667/MatMul/ReadVariableOp?.lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp?lstm_796/while?-lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp?,lstm_797/lstm_cell_668/MatMul/ReadVariableOp?.lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp?lstm_797/whileD
lstm_795/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_795/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_795/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_795/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_795/strided_sliceStridedSlicelstm_795/Shape:output:0%lstm_795/strided_slice/stack:output:0'lstm_795/strided_slice/stack_1:output:0'lstm_795/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_795/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_795/zeros/packedPacklstm_795/strided_slice:output:0 lstm_795/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_795/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_795/zerosFilllstm_795/zeros/packed:output:0lstm_795/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_795/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_795/zeros_1/packedPacklstm_795/strided_slice:output:0"lstm_795/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_795/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_795/zeros_1Fill lstm_795/zeros_1/packed:output:0lstm_795/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_795/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_795/transpose	Transposeinputs lstm_795/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_795/Shape_1Shapelstm_795/transpose:y:0*
T0*
_output_shapes
:h
lstm_795/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_795/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_795/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_795/strided_slice_1StridedSlicelstm_795/Shape_1:output:0'lstm_795/strided_slice_1/stack:output:0)lstm_795/strided_slice_1/stack_1:output:0)lstm_795/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_795/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_795/TensorArrayV2TensorListReserve-lstm_795/TensorArrayV2/element_shape:output:0!lstm_795/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_795/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_795/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_795/transpose:y:0Glstm_795/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_795/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_795/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_795/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_795/strided_slice_2StridedSlicelstm_795/transpose:y:0'lstm_795/strided_slice_2/stack:output:0)lstm_795/strided_slice_2/stack_1:output:0)lstm_795/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_795/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp5lstm_795_lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_795/lstm_cell_666/MatMulMatMul!lstm_795/strided_slice_2:output:04lstm_795/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_795/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp7lstm_795_lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_795/lstm_cell_666/MatMul_1MatMullstm_795/zeros:output:06lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_795/lstm_cell_666/addAddV2'lstm_795/lstm_cell_666/MatMul:product:0)lstm_795/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_795/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp6lstm_795_lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_795/lstm_cell_666/BiasAddBiasAddlstm_795/lstm_cell_666/add:z:05lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_795/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_795/lstm_cell_666/splitSplit/lstm_795/lstm_cell_666/split/split_dim:output:0'lstm_795/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_795/lstm_cell_666/SigmoidSigmoid%lstm_795/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_795/lstm_cell_666/Sigmoid_1Sigmoid%lstm_795/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_795/lstm_cell_666/mulMul$lstm_795/lstm_cell_666/Sigmoid_1:y:0lstm_795/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_795/lstm_cell_666/ReluRelu%lstm_795/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_795/lstm_cell_666/mul_1Mul"lstm_795/lstm_cell_666/Sigmoid:y:0)lstm_795/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_795/lstm_cell_666/add_1AddV2lstm_795/lstm_cell_666/mul:z:0 lstm_795/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_795/lstm_cell_666/Sigmoid_2Sigmoid%lstm_795/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_795/lstm_cell_666/Relu_1Relu lstm_795/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_795/lstm_cell_666/mul_2Mul$lstm_795/lstm_cell_666/Sigmoid_2:y:0+lstm_795/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_795/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_795/TensorArrayV2_1TensorListReserve/lstm_795/TensorArrayV2_1/element_shape:output:0!lstm_795/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_795/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_795/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_795/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_795/whileWhile$lstm_795/while/loop_counter:output:0*lstm_795/while/maximum_iterations:output:0lstm_795/time:output:0!lstm_795/TensorArrayV2_1:handle:0lstm_795/zeros:output:0lstm_795/zeros_1:output:0!lstm_795/strided_slice_1:output:0@lstm_795/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_795_lstm_cell_666_matmul_readvariableop_resource7lstm_795_lstm_cell_666_matmul_1_readvariableop_resource6lstm_795_lstm_cell_666_biasadd_readvariableop_resource*
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
lstm_795_while_body_4044513*'
condR
lstm_795_while_cond_4044512*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_795/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_795/TensorArrayV2Stack/TensorListStackTensorListStacklstm_795/while:output:3Blstm_795/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_795/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_795/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_795/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_795/strided_slice_3StridedSlice4lstm_795/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_795/strided_slice_3/stack:output:0)lstm_795/strided_slice_3/stack_1:output:0)lstm_795/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_795/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_795/transpose_1	Transpose4lstm_795/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_795/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_795/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_796/ShapeShapelstm_795/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_796/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_796/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_796/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_796/strided_sliceStridedSlicelstm_796/Shape:output:0%lstm_796/strided_slice/stack:output:0'lstm_796/strided_slice/stack_1:output:0'lstm_796/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_796/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_796/zeros/packedPacklstm_796/strided_slice:output:0 lstm_796/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_796/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_796/zerosFilllstm_796/zeros/packed:output:0lstm_796/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_796/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_796/zeros_1/packedPacklstm_796/strided_slice:output:0"lstm_796/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_796/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_796/zeros_1Fill lstm_796/zeros_1/packed:output:0lstm_796/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_796/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_796/transpose	Transposelstm_795/transpose_1:y:0 lstm_796/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_796/Shape_1Shapelstm_796/transpose:y:0*
T0*
_output_shapes
:h
lstm_796/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_796/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_796/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_796/strided_slice_1StridedSlicelstm_796/Shape_1:output:0'lstm_796/strided_slice_1/stack:output:0)lstm_796/strided_slice_1/stack_1:output:0)lstm_796/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_796/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_796/TensorArrayV2TensorListReserve-lstm_796/TensorArrayV2/element_shape:output:0!lstm_796/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_796/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_796/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_796/transpose:y:0Glstm_796/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_796/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_796/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_796/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_796/strided_slice_2StridedSlicelstm_796/transpose:y:0'lstm_796/strided_slice_2/stack:output:0)lstm_796/strided_slice_2/stack_1:output:0)lstm_796/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_796/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp5lstm_796_lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_796/lstm_cell_667/MatMulMatMul!lstm_796/strided_slice_2:output:04lstm_796/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_796/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp7lstm_796_lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_796/lstm_cell_667/MatMul_1MatMullstm_796/zeros:output:06lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_796/lstm_cell_667/addAddV2'lstm_796/lstm_cell_667/MatMul:product:0)lstm_796/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_796/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp6lstm_796_lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_796/lstm_cell_667/BiasAddBiasAddlstm_796/lstm_cell_667/add:z:05lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_796/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_796/lstm_cell_667/splitSplit/lstm_796/lstm_cell_667/split/split_dim:output:0'lstm_796/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_796/lstm_cell_667/SigmoidSigmoid%lstm_796/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_796/lstm_cell_667/Sigmoid_1Sigmoid%lstm_796/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_796/lstm_cell_667/mulMul$lstm_796/lstm_cell_667/Sigmoid_1:y:0lstm_796/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_796/lstm_cell_667/ReluRelu%lstm_796/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_796/lstm_cell_667/mul_1Mul"lstm_796/lstm_cell_667/Sigmoid:y:0)lstm_796/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_796/lstm_cell_667/add_1AddV2lstm_796/lstm_cell_667/mul:z:0 lstm_796/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_796/lstm_cell_667/Sigmoid_2Sigmoid%lstm_796/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_796/lstm_cell_667/Relu_1Relu lstm_796/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_796/lstm_cell_667/mul_2Mul$lstm_796/lstm_cell_667/Sigmoid_2:y:0+lstm_796/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_796/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_796/TensorArrayV2_1TensorListReserve/lstm_796/TensorArrayV2_1/element_shape:output:0!lstm_796/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_796/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_796/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_796/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_796/whileWhile$lstm_796/while/loop_counter:output:0*lstm_796/while/maximum_iterations:output:0lstm_796/time:output:0!lstm_796/TensorArrayV2_1:handle:0lstm_796/zeros:output:0lstm_796/zeros_1:output:0!lstm_796/strided_slice_1:output:0@lstm_796/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_796_lstm_cell_667_matmul_readvariableop_resource7lstm_796_lstm_cell_667_matmul_1_readvariableop_resource6lstm_796_lstm_cell_667_biasadd_readvariableop_resource*
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
lstm_796_while_body_4044652*'
condR
lstm_796_while_cond_4044651*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_796/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_796/TensorArrayV2Stack/TensorListStackTensorListStacklstm_796/while:output:3Blstm_796/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_796/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_796/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_796/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_796/strided_slice_3StridedSlice4lstm_796/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_796/strided_slice_3/stack:output:0)lstm_796/strided_slice_3/stack_1:output:0)lstm_796/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_796/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_796/transpose_1	Transpose4lstm_796/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_796/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_796/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_797/ShapeShapelstm_796/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_797/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_797/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_797/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_797/strided_sliceStridedSlicelstm_797/Shape:output:0%lstm_797/strided_slice/stack:output:0'lstm_797/strided_slice/stack_1:output:0'lstm_797/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_797/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_797/zeros/packedPacklstm_797/strided_slice:output:0 lstm_797/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_797/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_797/zerosFilllstm_797/zeros/packed:output:0lstm_797/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_797/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_797/zeros_1/packedPacklstm_797/strided_slice:output:0"lstm_797/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_797/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_797/zeros_1Fill lstm_797/zeros_1/packed:output:0lstm_797/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_797/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_797/transpose	Transposelstm_796/transpose_1:y:0 lstm_797/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_797/Shape_1Shapelstm_797/transpose:y:0*
T0*
_output_shapes
:h
lstm_797/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_797/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_797/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_797/strided_slice_1StridedSlicelstm_797/Shape_1:output:0'lstm_797/strided_slice_1/stack:output:0)lstm_797/strided_slice_1/stack_1:output:0)lstm_797/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_797/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_797/TensorArrayV2TensorListReserve-lstm_797/TensorArrayV2/element_shape:output:0!lstm_797/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_797/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_797/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_797/transpose:y:0Glstm_797/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_797/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_797/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_797/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_797/strided_slice_2StridedSlicelstm_797/transpose:y:0'lstm_797/strided_slice_2/stack:output:0)lstm_797/strided_slice_2/stack_1:output:0)lstm_797/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_797/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp5lstm_797_lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_797/lstm_cell_668/MatMulMatMul!lstm_797/strided_slice_2:output:04lstm_797/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_797/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp7lstm_797_lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_797/lstm_cell_668/MatMul_1MatMullstm_797/zeros:output:06lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_797/lstm_cell_668/addAddV2'lstm_797/lstm_cell_668/MatMul:product:0)lstm_797/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_797/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp6lstm_797_lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_797/lstm_cell_668/BiasAddBiasAddlstm_797/lstm_cell_668/add:z:05lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_797/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_797/lstm_cell_668/splitSplit/lstm_797/lstm_cell_668/split/split_dim:output:0'lstm_797/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_797/lstm_cell_668/SigmoidSigmoid%lstm_797/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_797/lstm_cell_668/Sigmoid_1Sigmoid%lstm_797/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_797/lstm_cell_668/mulMul$lstm_797/lstm_cell_668/Sigmoid_1:y:0lstm_797/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_797/lstm_cell_668/ReluRelu%lstm_797/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_797/lstm_cell_668/mul_1Mul"lstm_797/lstm_cell_668/Sigmoid:y:0)lstm_797/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_797/lstm_cell_668/add_1AddV2lstm_797/lstm_cell_668/mul:z:0 lstm_797/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_797/lstm_cell_668/Sigmoid_2Sigmoid%lstm_797/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_797/lstm_cell_668/Relu_1Relu lstm_797/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_797/lstm_cell_668/mul_2Mul$lstm_797/lstm_cell_668/Sigmoid_2:y:0+lstm_797/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_797/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_797/TensorArrayV2_1TensorListReserve/lstm_797/TensorArrayV2_1/element_shape:output:0!lstm_797/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_797/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_797/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_797/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_797/whileWhile$lstm_797/while/loop_counter:output:0*lstm_797/while/maximum_iterations:output:0lstm_797/time:output:0!lstm_797/TensorArrayV2_1:handle:0lstm_797/zeros:output:0lstm_797/zeros_1:output:0!lstm_797/strided_slice_1:output:0@lstm_797/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_797_lstm_cell_668_matmul_readvariableop_resource7lstm_797_lstm_cell_668_matmul_1_readvariableop_resource6lstm_797_lstm_cell_668_biasadd_readvariableop_resource*
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
lstm_797_while_body_4044791*'
condR
lstm_797_while_cond_4044790*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_797/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_797/TensorArrayV2Stack/TensorListStackTensorListStacklstm_797/while:output:3Blstm_797/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_797/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_797/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_797/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_797/strided_slice_3StridedSlice4lstm_797/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_797/strided_slice_3/stack:output:0)lstm_797/strided_slice_3/stack_1:output:0)lstm_797/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_797/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_797/transpose_1	Transpose4lstm_797/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_797/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_797/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_265/MatMul/ReadVariableOpReadVariableOp(dense_265_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_265/MatMulMatMul!lstm_797/strided_slice_3:output:0'dense_265/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_265/BiasAdd/ReadVariableOpReadVariableOp)dense_265_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_265/BiasAddBiasAdddense_265/MatMul:product:0(dense_265/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_265/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_265/BiasAdd/ReadVariableOp ^dense_265/MatMul/ReadVariableOp.^lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp-^lstm_795/lstm_cell_666/MatMul/ReadVariableOp/^lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp^lstm_795/while.^lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp-^lstm_796/lstm_cell_667/MatMul/ReadVariableOp/^lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp^lstm_796/while.^lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp-^lstm_797/lstm_cell_668/MatMul/ReadVariableOp/^lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp^lstm_797/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_265/BiasAdd/ReadVariableOp dense_265/BiasAdd/ReadVariableOp2B
dense_265/MatMul/ReadVariableOpdense_265/MatMul/ReadVariableOp2^
-lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp-lstm_795/lstm_cell_666/BiasAdd/ReadVariableOp2\
,lstm_795/lstm_cell_666/MatMul/ReadVariableOp,lstm_795/lstm_cell_666/MatMul/ReadVariableOp2`
.lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp.lstm_795/lstm_cell_666/MatMul_1/ReadVariableOp2 
lstm_795/whilelstm_795/while2^
-lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp-lstm_796/lstm_cell_667/BiasAdd/ReadVariableOp2\
,lstm_796/lstm_cell_667/MatMul/ReadVariableOp,lstm_796/lstm_cell_667/MatMul/ReadVariableOp2`
.lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp.lstm_796/lstm_cell_667/MatMul_1/ReadVariableOp2 
lstm_796/whilelstm_796/while2^
-lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp-lstm_797/lstm_cell_668/BiasAdd/ReadVariableOp2\
,lstm_797/lstm_cell_668/MatMul/ReadVariableOp,lstm_797/lstm_cell_668/MatMul/ReadVariableOp2`
.lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp.lstm_797/lstm_cell_668/MatMul_1/ReadVariableOp2 
lstm_797/whilelstm_797/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_797_layer_call_fn_4046135
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4042754o
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
?
?
/__inference_lstm_cell_668_layer_call_fn_4046961

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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4042480o
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
while_body_4045127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4042563

inputs'
lstm_cell_668_4042481:2('
lstm_cell_668_4042483:
(#
lstm_cell_668_4042485:(
identity??%lstm_cell_668/StatefulPartitionedCall?while;
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
%lstm_cell_668/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_668_4042481lstm_cell_668_4042483lstm_cell_668_4042485*
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4042480n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_668_4042481lstm_cell_668_4042483lstm_cell_668_4042485*
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
while_body_4042494*
condR
while_cond_4042493*K
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
NoOpNoOp&^lstm_cell_668/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_668/StatefulPartitionedCall%lstm_cell_668/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_797_while_body_4044364.
*lstm_797_while_lstm_797_while_loop_counter4
0lstm_797_while_lstm_797_while_maximum_iterations
lstm_797_while_placeholder 
lstm_797_while_placeholder_1 
lstm_797_while_placeholder_2 
lstm_797_while_placeholder_3-
)lstm_797_while_lstm_797_strided_slice_1_0i
elstm_797_while_tensorarrayv2read_tensorlistgetitem_lstm_797_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_797_while_lstm_cell_668_matmul_readvariableop_resource_0:2(Q
?lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(L
>lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource_0:(
lstm_797_while_identity
lstm_797_while_identity_1
lstm_797_while_identity_2
lstm_797_while_identity_3
lstm_797_while_identity_4
lstm_797_while_identity_5+
'lstm_797_while_lstm_797_strided_slice_1g
clstm_797_while_tensorarrayv2read_tensorlistgetitem_lstm_797_tensorarrayunstack_tensorlistfromtensorM
;lstm_797_while_lstm_cell_668_matmul_readvariableop_resource:2(O
=lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource:
(J
<lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource:(??3lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp?2lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp?4lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp?
@lstm_797/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_797/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_797_while_tensorarrayv2read_tensorlistgetitem_lstm_797_tensorarrayunstack_tensorlistfromtensor_0lstm_797_while_placeholderIlstm_797/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_797/while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp=lstm_797_while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_797/while/lstm_cell_668/MatMulMatMul9lstm_797/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp?lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_797/while/lstm_cell_668/MatMul_1MatMullstm_797_while_placeholder_2<lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_797/while/lstm_cell_668/addAddV2-lstm_797/while/lstm_cell_668/MatMul:product:0/lstm_797/while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp>lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_797/while/lstm_cell_668/BiasAddBiasAdd$lstm_797/while/lstm_cell_668/add:z:0;lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_797/while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_797/while/lstm_cell_668/splitSplit5lstm_797/while/lstm_cell_668/split/split_dim:output:0-lstm_797/while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_797/while/lstm_cell_668/SigmoidSigmoid+lstm_797/while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_797/while/lstm_cell_668/Sigmoid_1Sigmoid+lstm_797/while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_797/while/lstm_cell_668/mulMul*lstm_797/while/lstm_cell_668/Sigmoid_1:y:0lstm_797_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_797/while/lstm_cell_668/ReluRelu+lstm_797/while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_797/while/lstm_cell_668/mul_1Mul(lstm_797/while/lstm_cell_668/Sigmoid:y:0/lstm_797/while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_797/while/lstm_cell_668/add_1AddV2$lstm_797/while/lstm_cell_668/mul:z:0&lstm_797/while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_797/while/lstm_cell_668/Sigmoid_2Sigmoid+lstm_797/while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_797/while/lstm_cell_668/Relu_1Relu&lstm_797/while/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_797/while/lstm_cell_668/mul_2Mul*lstm_797/while/lstm_cell_668/Sigmoid_2:y:01lstm_797/while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_797/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_797_while_placeholder_1lstm_797_while_placeholder&lstm_797/while/lstm_cell_668/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_797/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_797/while/addAddV2lstm_797_while_placeholderlstm_797/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_797/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_797/while/add_1AddV2*lstm_797_while_lstm_797_while_loop_counterlstm_797/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_797/while/IdentityIdentitylstm_797/while/add_1:z:0^lstm_797/while/NoOp*
T0*
_output_shapes
: ?
lstm_797/while/Identity_1Identity0lstm_797_while_lstm_797_while_maximum_iterations^lstm_797/while/NoOp*
T0*
_output_shapes
: t
lstm_797/while/Identity_2Identitylstm_797/while/add:z:0^lstm_797/while/NoOp*
T0*
_output_shapes
: ?
lstm_797/while/Identity_3IdentityClstm_797/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_797/while/NoOp*
T0*
_output_shapes
: ?
lstm_797/while/Identity_4Identity&lstm_797/while/lstm_cell_668/mul_2:z:0^lstm_797/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_797/while/Identity_5Identity&lstm_797/while/lstm_cell_668/add_1:z:0^lstm_797/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_797/while/NoOpNoOp4^lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp3^lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp5^lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_797_while_identity lstm_797/while/Identity:output:0"?
lstm_797_while_identity_1"lstm_797/while/Identity_1:output:0"?
lstm_797_while_identity_2"lstm_797/while/Identity_2:output:0"?
lstm_797_while_identity_3"lstm_797/while/Identity_3:output:0"?
lstm_797_while_identity_4"lstm_797/while/Identity_4:output:0"?
lstm_797_while_identity_5"lstm_797/while/Identity_5:output:0"T
'lstm_797_while_lstm_797_strided_slice_1)lstm_797_while_lstm_797_strided_slice_1_0"~
<lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource>lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource_0"?
=lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource?lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource_0"|
;lstm_797_while_lstm_cell_668_matmul_readvariableop_resource=lstm_797_while_lstm_cell_668_matmul_readvariableop_resource_0"?
clstm_797_while_tensorarrayv2read_tensorlistgetitem_lstm_797_tensorarrayunstack_tensorlistfromtensorelstm_797_while_tensorarrayv2read_tensorlistgetitem_lstm_797_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp3lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp2h
2lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp2lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp2l
4lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp4lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046443
inputs_0>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4046359*
condR
while_cond_4046358*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4042493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4042493___redundant_placeholder05
1while_while_cond_4042493___redundant_placeholder15
1while_while_cond_4042493___redundant_placeholder25
1while_while_cond_4042493___redundant_placeholder3
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
while_body_4042978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4044983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4044983___redundant_placeholder05
1while_while_cond_4044983___redundant_placeholder15
1while_while_cond_4044983___redundant_placeholder25
1while_while_cond_4044983___redundant_placeholder3
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
while_cond_4046215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4046215___redundant_placeholder05
1while_while_cond_4046215___redundant_placeholder15
1while_while_cond_4046215___redundant_placeholder25
1while_while_cond_4046215___redundant_placeholder3
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
/__inference_lstm_cell_666_layer_call_fn_4046782

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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4041926o
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
%__inference_signature_wrapper_4043973
lstm_795_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_795_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4041713o
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
_user_specified_namelstm_795_input
?
?
while_cond_4041793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4041793___redundant_placeholder05
1while_while_cond_4041793___redundant_placeholder15
1while_while_cond_4041793___redundant_placeholder25
1while_while_cond_4041793___redundant_placeholder3
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
*sequential_265_lstm_796_while_cond_4041483L
Hsequential_265_lstm_796_while_sequential_265_lstm_796_while_loop_counterR
Nsequential_265_lstm_796_while_sequential_265_lstm_796_while_maximum_iterations-
)sequential_265_lstm_796_while_placeholder/
+sequential_265_lstm_796_while_placeholder_1/
+sequential_265_lstm_796_while_placeholder_2/
+sequential_265_lstm_796_while_placeholder_3N
Jsequential_265_lstm_796_while_less_sequential_265_lstm_796_strided_slice_1e
asequential_265_lstm_796_while_sequential_265_lstm_796_while_cond_4041483___redundant_placeholder0e
asequential_265_lstm_796_while_sequential_265_lstm_796_while_cond_4041483___redundant_placeholder1e
asequential_265_lstm_796_while_sequential_265_lstm_796_while_cond_4041483___redundant_placeholder2e
asequential_265_lstm_796_while_sequential_265_lstm_796_while_cond_4041483___redundant_placeholder3*
&sequential_265_lstm_796_while_identity
?
"sequential_265/lstm_796/while/LessLess)sequential_265_lstm_796_while_placeholderJsequential_265_lstm_796_while_less_sequential_265_lstm_796_strided_slice_1*
T0*
_output_shapes
: {
&sequential_265/lstm_796/while/IdentityIdentity&sequential_265/lstm_796/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_265_lstm_796_while_identity/sequential_265/lstm_796/while/Identity:output:0*(
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
lstm_797_while_cond_4044363.
*lstm_797_while_lstm_797_while_loop_counter4
0lstm_797_while_lstm_797_while_maximum_iterations
lstm_797_while_placeholder 
lstm_797_while_placeholder_1 
lstm_797_while_placeholder_2 
lstm_797_while_placeholder_30
,lstm_797_while_less_lstm_797_strided_slice_1G
Clstm_797_while_lstm_797_while_cond_4044363___redundant_placeholder0G
Clstm_797_while_lstm_797_while_cond_4044363___redundant_placeholder1G
Clstm_797_while_lstm_797_while_cond_4044363___redundant_placeholder2G
Clstm_797_while_lstm_797_while_cond_4044363___redundant_placeholder3
lstm_797_while_identity
?
lstm_797/while/LessLesslstm_797_while_placeholder,lstm_797_while_less_lstm_797_strided_slice_1*
T0*
_output_shapes
: ]
lstm_797/while/IdentityIdentitylstm_797/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_797_while_identity lstm_797/while/Identity:output:0*(
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
while_body_4043344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4042144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_667_4042168_0:	d?0
while_lstm_cell_667_4042170_0:	2?,
while_lstm_cell_667_4042172_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_667_4042168:	d?.
while_lstm_cell_667_4042170:	2?*
while_lstm_cell_667_4042172:	???+while/lstm_cell_667/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_667/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_667_4042168_0while_lstm_cell_667_4042170_0while_lstm_cell_667_4042172_0*
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4042130?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_667/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_667/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_667/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_667/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_667_4042168while_lstm_cell_667_4042168_0"<
while_lstm_cell_667_4042170while_lstm_cell_667_4042170_0"<
while_lstm_cell_667_4042172while_lstm_cell_667_4042172_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_667/StatefulPartitionedCall+while/lstm_cell_667/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_265_layer_call_fn_4044027

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
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043826o
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
while_body_4042685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_668_4042709_0:2(/
while_lstm_cell_668_4042711_0:
(+
while_lstm_cell_668_4042713_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_668_4042709:2(-
while_lstm_cell_668_4042711:
()
while_lstm_cell_668_4042713:(??+while/lstm_cell_668/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_668/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_668_4042709_0while_lstm_cell_668_4042711_0while_lstm_cell_668_4042713_0*
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4042626?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_668/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_668/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_668/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_668/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_668_4042709while_lstm_cell_668_4042709_0"<
while_lstm_cell_668_4042711while_lstm_cell_668_4042711_0"<
while_lstm_cell_668_4042713while_lstm_cell_668_4042713_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_668/StatefulPartitionedCall+while/lstm_cell_668/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4045742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4045742___redundant_placeholder05
1while_while_cond_4045742___redundant_placeholder15
1while_while_cond_4045742___redundant_placeholder25
1while_while_cond_4045742___redundant_placeholder3
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
while_cond_4045126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4045126___redundant_placeholder05
1while_while_cond_4045126___redundant_placeholder15
1while_while_cond_4045126___redundant_placeholder25
1while_while_cond_4045126___redundant_placeholder3
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4042404

inputs(
lstm_cell_667_4042322:	d?(
lstm_cell_667_4042324:	2?$
lstm_cell_667_4042326:	?
identity??%lstm_cell_667/StatefulPartitionedCall?while;
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
%lstm_cell_667/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_667_4042322lstm_cell_667_4042324lstm_cell_667_4042326*
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4042276n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_667_4042322lstm_cell_667_4042324lstm_cell_667_4042326*
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
while_body_4042335*
condR
while_cond_4042334*K
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
NoOpNoOp&^lstm_cell_667/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_667/StatefulPartitionedCall%lstm_cell_667/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_796_layer_call_fn_4045530

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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4043062s
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
?
?
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043938
lstm_795_input#
lstm_795_4043911:	?#
lstm_795_4043913:	d?
lstm_795_4043915:	?#
lstm_796_4043918:	d?#
lstm_796_4043920:	2?
lstm_796_4043922:	?"
lstm_797_4043925:2("
lstm_797_4043927:
(
lstm_797_4043929:(#
dense_265_4043932:

dense_265_4043934:
identity??!dense_265/StatefulPartitionedCall? lstm_795/StatefulPartitionedCall? lstm_796/StatefulPartitionedCall? lstm_797/StatefulPartitionedCall?
 lstm_795/StatefulPartitionedCallStatefulPartitionedCalllstm_795_inputlstm_795_4043911lstm_795_4043913lstm_795_4043915*
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4043758?
 lstm_796/StatefulPartitionedCallStatefulPartitionedCall)lstm_795/StatefulPartitionedCall:output:0lstm_796_4043918lstm_796_4043920lstm_796_4043922*
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4043593?
 lstm_797/StatefulPartitionedCallStatefulPartitionedCall)lstm_796/StatefulPartitionedCall:output:0lstm_797_4043925lstm_797_4043927lstm_797_4043929*
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4043428?
!dense_265/StatefulPartitionedCallStatefulPartitionedCall)lstm_797/StatefulPartitionedCall:output:0dense_265_4043932dense_265_4043934*
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
F__inference_dense_265_layer_call_and_return_conditional_losses_4043230y
IdentityIdentity*dense_265/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_265/StatefulPartitionedCall!^lstm_795/StatefulPartitionedCall!^lstm_796/StatefulPartitionedCall!^lstm_797/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_265/StatefulPartitionedCall!dense_265/StatefulPartitionedCall2D
 lstm_795/StatefulPartitionedCall lstm_795/StatefulPartitionedCall2D
 lstm_796/StatefulPartitionedCall lstm_796/StatefulPartitionedCall2D
 lstm_797/StatefulPartitionedCall lstm_797/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_795_input
?
?
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4047042

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
while_cond_4045599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4045599___redundant_placeholder05
1while_while_cond_4045599___redundant_placeholder15
1while_while_cond_4045599___redundant_placeholder25
1while_while_cond_4045599___redundant_placeholder3
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
while_body_4042335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_667_4042359_0:	d?0
while_lstm_cell_667_4042361_0:	2?,
while_lstm_cell_667_4042363_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_667_4042359:	d?.
while_lstm_cell_667_4042361:	2?*
while_lstm_cell_667_4042363:	???+while/lstm_cell_667/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_667/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_667_4042359_0while_lstm_cell_667_4042361_0while_lstm_cell_667_4042363_0*
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4042276?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_667/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_667/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_667/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_667/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_667_4042359while_lstm_cell_667_4042359_0"<
while_lstm_cell_667_4042361while_lstm_cell_667_4042361_0"<
while_lstm_cell_667_4042363while_lstm_cell_667_4042363_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_667/StatefulPartitionedCall+while/lstm_cell_667/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_796_layer_call_fn_4045519
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4042404|
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
while_cond_4042334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4042334___redundant_placeholder05
1while_while_cond_4042334___redundant_placeholder15
1while_while_cond_4042334___redundant_placeholder25
1while_while_cond_4042334___redundant_placeholder3
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4042054

inputs(
lstm_cell_666_4041972:	?(
lstm_cell_666_4041974:	d?$
lstm_cell_666_4041976:	?
identity??%lstm_cell_666/StatefulPartitionedCall?while;
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
%lstm_cell_666/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_666_4041972lstm_cell_666_4041974lstm_cell_666_4041976*
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4041926n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_666_4041972lstm_cell_666_4041974lstm_cell_666_4041976*
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
while_body_4041985*
condR
while_cond_4041984*K
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
NoOpNoOp&^lstm_cell_666/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_666/StatefulPartitionedCall%lstm_cell_666/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043237

inputs#
lstm_795_4042913:	?#
lstm_795_4042915:	d?
lstm_795_4042917:	?#
lstm_796_4043063:	d?#
lstm_796_4043065:	2?
lstm_796_4043067:	?"
lstm_797_4043213:2("
lstm_797_4043215:
(
lstm_797_4043217:(#
dense_265_4043231:

dense_265_4043233:
identity??!dense_265/StatefulPartitionedCall? lstm_795/StatefulPartitionedCall? lstm_796/StatefulPartitionedCall? lstm_797/StatefulPartitionedCall?
 lstm_795/StatefulPartitionedCallStatefulPartitionedCallinputslstm_795_4042913lstm_795_4042915lstm_795_4042917*
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4042912?
 lstm_796/StatefulPartitionedCallStatefulPartitionedCall)lstm_795/StatefulPartitionedCall:output:0lstm_796_4043063lstm_796_4043065lstm_796_4043067*
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4043062?
 lstm_797/StatefulPartitionedCallStatefulPartitionedCall)lstm_796/StatefulPartitionedCall:output:0lstm_797_4043213lstm_797_4043215lstm_797_4043217*
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4043212?
!dense_265/StatefulPartitionedCallStatefulPartitionedCall)lstm_797/StatefulPartitionedCall:output:0dense_265_4043231dense_265_4043233*
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
F__inference_dense_265_layer_call_and_return_conditional_losses_4043230y
IdentityIdentity*dense_265/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_265/StatefulPartitionedCall!^lstm_795/StatefulPartitionedCall!^lstm_796/StatefulPartitionedCall!^lstm_797/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_265/StatefulPartitionedCall!dense_265/StatefulPartitionedCall2D
 lstm_795/StatefulPartitionedCall lstm_795/StatefulPartitionedCall2D
 lstm_796/StatefulPartitionedCall lstm_796/StatefulPartitionedCall2D
 lstm_797/StatefulPartitionedCall lstm_797/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_795_layer_call_and_return_conditional_losses_4041863

inputs(
lstm_cell_666_4041781:	?(
lstm_cell_666_4041783:	d?$
lstm_cell_666_4041785:	?
identity??%lstm_cell_666/StatefulPartitionedCall?while;
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
%lstm_cell_666/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_666_4041781lstm_cell_666_4041783lstm_cell_666_4041785*
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4041780n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_666_4041781lstm_cell_666_4041783lstm_cell_666_4041785*
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
while_body_4041794*
condR
while_cond_4041793*K
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
NoOpNoOp&^lstm_cell_666/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_666/StatefulPartitionedCall%lstm_cell_666/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046300
inputs_0>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4046216*
condR
while_cond_4046215*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?	
?
F__inference_dense_265_layer_call_and_return_conditional_losses_4046748

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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4047010

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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4046113

inputs?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4046029*
condR
while_cond_4046028*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_795_while_cond_4044512.
*lstm_795_while_lstm_795_while_loop_counter4
0lstm_795_while_lstm_795_while_maximum_iterations
lstm_795_while_placeholder 
lstm_795_while_placeholder_1 
lstm_795_while_placeholder_2 
lstm_795_while_placeholder_30
,lstm_795_while_less_lstm_795_strided_slice_1G
Clstm_795_while_lstm_795_while_cond_4044512___redundant_placeholder0G
Clstm_795_while_lstm_795_while_cond_4044512___redundant_placeholder1G
Clstm_795_while_lstm_795_while_cond_4044512___redundant_placeholder2G
Clstm_795_while_lstm_795_while_cond_4044512___redundant_placeholder3
lstm_795_while_identity
?
lstm_795/while/LessLesslstm_795_while_placeholder,lstm_795_while_less_lstm_795_strided_slice_1*
T0*
_output_shapes
: ]
lstm_795/while/IdentityIdentitylstm_795/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_795_while_identity lstm_795/while/Identity:output:0*(
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
/__inference_lstm_cell_668_layer_call_fn_4046978

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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4042626o
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

?
lstm_796_while_cond_4044224.
*lstm_796_while_lstm_796_while_loop_counter4
0lstm_796_while_lstm_796_while_maximum_iterations
lstm_796_while_placeholder 
lstm_796_while_placeholder_1 
lstm_796_while_placeholder_2 
lstm_796_while_placeholder_30
,lstm_796_while_less_lstm_796_strided_slice_1G
Clstm_796_while_lstm_796_while_cond_4044224___redundant_placeholder0G
Clstm_796_while_lstm_796_while_cond_4044224___redundant_placeholder1G
Clstm_796_while_lstm_796_while_cond_4044224___redundant_placeholder2G
Clstm_796_while_lstm_796_while_cond_4044224___redundant_placeholder3
lstm_796_while_identity
?
lstm_796/while/LessLesslstm_796_while_placeholder,lstm_796_while_less_lstm_796_strided_slice_1*
T0*
_output_shapes
: ]
lstm_796/while/IdentityIdentitylstm_796/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_796_while_identity lstm_796/while/Identity:output:0*(
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045068
inputs_0?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4044984*
condR
while_cond_4044983*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_796_layer_call_and_return_conditional_losses_4045827
inputs_0?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4045743*
condR
while_cond_4045742*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_265_layer_call_fn_4043262
lstm_795_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_795_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043237o
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
_user_specified_namelstm_795_input
?C
?

lstm_797_while_body_4044791.
*lstm_797_while_lstm_797_while_loop_counter4
0lstm_797_while_lstm_797_while_maximum_iterations
lstm_797_while_placeholder 
lstm_797_while_placeholder_1 
lstm_797_while_placeholder_2 
lstm_797_while_placeholder_3-
)lstm_797_while_lstm_797_strided_slice_1_0i
elstm_797_while_tensorarrayv2read_tensorlistgetitem_lstm_797_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_797_while_lstm_cell_668_matmul_readvariableop_resource_0:2(Q
?lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(L
>lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource_0:(
lstm_797_while_identity
lstm_797_while_identity_1
lstm_797_while_identity_2
lstm_797_while_identity_3
lstm_797_while_identity_4
lstm_797_while_identity_5+
'lstm_797_while_lstm_797_strided_slice_1g
clstm_797_while_tensorarrayv2read_tensorlistgetitem_lstm_797_tensorarrayunstack_tensorlistfromtensorM
;lstm_797_while_lstm_cell_668_matmul_readvariableop_resource:2(O
=lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource:
(J
<lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource:(??3lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp?2lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp?4lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp?
@lstm_797/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_797/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_797_while_tensorarrayv2read_tensorlistgetitem_lstm_797_tensorarrayunstack_tensorlistfromtensor_0lstm_797_while_placeholderIlstm_797/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_797/while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp=lstm_797_while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_797/while/lstm_cell_668/MatMulMatMul9lstm_797/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp?lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_797/while/lstm_cell_668/MatMul_1MatMullstm_797_while_placeholder_2<lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_797/while/lstm_cell_668/addAddV2-lstm_797/while/lstm_cell_668/MatMul:product:0/lstm_797/while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp>lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_797/while/lstm_cell_668/BiasAddBiasAdd$lstm_797/while/lstm_cell_668/add:z:0;lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_797/while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_797/while/lstm_cell_668/splitSplit5lstm_797/while/lstm_cell_668/split/split_dim:output:0-lstm_797/while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_797/while/lstm_cell_668/SigmoidSigmoid+lstm_797/while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_797/while/lstm_cell_668/Sigmoid_1Sigmoid+lstm_797/while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_797/while/lstm_cell_668/mulMul*lstm_797/while/lstm_cell_668/Sigmoid_1:y:0lstm_797_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_797/while/lstm_cell_668/ReluRelu+lstm_797/while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_797/while/lstm_cell_668/mul_1Mul(lstm_797/while/lstm_cell_668/Sigmoid:y:0/lstm_797/while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_797/while/lstm_cell_668/add_1AddV2$lstm_797/while/lstm_cell_668/mul:z:0&lstm_797/while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_797/while/lstm_cell_668/Sigmoid_2Sigmoid+lstm_797/while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_797/while/lstm_cell_668/Relu_1Relu&lstm_797/while/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_797/while/lstm_cell_668/mul_2Mul*lstm_797/while/lstm_cell_668/Sigmoid_2:y:01lstm_797/while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_797/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_797_while_placeholder_1lstm_797_while_placeholder&lstm_797/while/lstm_cell_668/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_797/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_797/while/addAddV2lstm_797_while_placeholderlstm_797/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_797/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_797/while/add_1AddV2*lstm_797_while_lstm_797_while_loop_counterlstm_797/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_797/while/IdentityIdentitylstm_797/while/add_1:z:0^lstm_797/while/NoOp*
T0*
_output_shapes
: ?
lstm_797/while/Identity_1Identity0lstm_797_while_lstm_797_while_maximum_iterations^lstm_797/while/NoOp*
T0*
_output_shapes
: t
lstm_797/while/Identity_2Identitylstm_797/while/add:z:0^lstm_797/while/NoOp*
T0*
_output_shapes
: ?
lstm_797/while/Identity_3IdentityClstm_797/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_797/while/NoOp*
T0*
_output_shapes
: ?
lstm_797/while/Identity_4Identity&lstm_797/while/lstm_cell_668/mul_2:z:0^lstm_797/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_797/while/Identity_5Identity&lstm_797/while/lstm_cell_668/add_1:z:0^lstm_797/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_797/while/NoOpNoOp4^lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp3^lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp5^lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_797_while_identity lstm_797/while/Identity:output:0"?
lstm_797_while_identity_1"lstm_797/while/Identity_1:output:0"?
lstm_797_while_identity_2"lstm_797/while/Identity_2:output:0"?
lstm_797_while_identity_3"lstm_797/while/Identity_3:output:0"?
lstm_797_while_identity_4"lstm_797/while/Identity_4:output:0"?
lstm_797_while_identity_5"lstm_797/while/Identity_5:output:0"T
'lstm_797_while_lstm_797_strided_slice_1)lstm_797_while_lstm_797_strided_slice_1_0"~
<lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource>lstm_797_while_lstm_cell_668_biasadd_readvariableop_resource_0"?
=lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource?lstm_797_while_lstm_cell_668_matmul_1_readvariableop_resource_0"|
;lstm_797_while_lstm_cell_668_matmul_readvariableop_resource=lstm_797_while_lstm_cell_668_matmul_readvariableop_resource_0"?
clstm_797_while_tensorarrayv2read_tensorlistgetitem_lstm_797_tensorarrayunstack_tensorlistfromtensorelstm_797_while_tensorarrayv2read_tensorlistgetitem_lstm_797_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp3lstm_797/while/lstm_cell_668/BiasAdd/ReadVariableOp2h
2lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp2lstm_797/while/lstm_cell_668/MatMul/ReadVariableOp2l
4lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp4lstm_797/while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4045270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_795_input;
 serving_default_lstm_795_input:0?????????=
	dense_2650
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
2dense_265/kernel
:2dense_265/bias
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
0:.	?2lstm_795/lstm_cell_795/kernel
::8	d?2'lstm_795/lstm_cell_795/recurrent_kernel
*:(?2lstm_795/lstm_cell_795/bias
0:.	d?2lstm_796/lstm_cell_796/kernel
::8	2?2'lstm_796/lstm_cell_796/recurrent_kernel
*:(?2lstm_796/lstm_cell_796/bias
/:-2(2lstm_797/lstm_cell_797/kernel
9:7
(2'lstm_797/lstm_cell_797/recurrent_kernel
):'(2lstm_797/lstm_cell_797/bias
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
2Adam/dense_265/kernel/m
!:2Adam/dense_265/bias/m
5:3	?2$Adam/lstm_795/lstm_cell_795/kernel/m
?:=	d?2.Adam/lstm_795/lstm_cell_795/recurrent_kernel/m
/:-?2"Adam/lstm_795/lstm_cell_795/bias/m
5:3	d?2$Adam/lstm_796/lstm_cell_796/kernel/m
?:=	2?2.Adam/lstm_796/lstm_cell_796/recurrent_kernel/m
/:-?2"Adam/lstm_796/lstm_cell_796/bias/m
4:22(2$Adam/lstm_797/lstm_cell_797/kernel/m
>:<
(2.Adam/lstm_797/lstm_cell_797/recurrent_kernel/m
.:,(2"Adam/lstm_797/lstm_cell_797/bias/m
':%
2Adam/dense_265/kernel/v
!:2Adam/dense_265/bias/v
5:3	?2$Adam/lstm_795/lstm_cell_795/kernel/v
?:=	d?2.Adam/lstm_795/lstm_cell_795/recurrent_kernel/v
/:-?2"Adam/lstm_795/lstm_cell_795/bias/v
5:3	d?2$Adam/lstm_796/lstm_cell_796/kernel/v
?:=	2?2.Adam/lstm_796/lstm_cell_796/recurrent_kernel/v
/:-?2"Adam/lstm_796/lstm_cell_796/bias/v
4:22(2$Adam/lstm_797/lstm_cell_797/kernel/v
>:<
(2.Adam/lstm_797/lstm_cell_797/recurrent_kernel/v
.:,(2"Adam/lstm_797/lstm_cell_797/bias/v
?2?
0__inference_sequential_265_layer_call_fn_4043262
0__inference_sequential_265_layer_call_fn_4044000
0__inference_sequential_265_layer_call_fn_4044027
0__inference_sequential_265_layer_call_fn_4043878?
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
K__inference_sequential_265_layer_call_and_return_conditional_losses_4044454
K__inference_sequential_265_layer_call_and_return_conditional_losses_4044881
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043908
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043938?
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
"__inference__wrapped_model_4041713lstm_795_input"?
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
*__inference_lstm_795_layer_call_fn_4044892
*__inference_lstm_795_layer_call_fn_4044903
*__inference_lstm_795_layer_call_fn_4044914
*__inference_lstm_795_layer_call_fn_4044925?
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045068
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045211
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045354
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045497?
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
*__inference_lstm_796_layer_call_fn_4045508
*__inference_lstm_796_layer_call_fn_4045519
*__inference_lstm_796_layer_call_fn_4045530
*__inference_lstm_796_layer_call_fn_4045541?
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4045684
E__inference_lstm_796_layer_call_and_return_conditional_losses_4045827
E__inference_lstm_796_layer_call_and_return_conditional_losses_4045970
E__inference_lstm_796_layer_call_and_return_conditional_losses_4046113?
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
*__inference_lstm_797_layer_call_fn_4046124
*__inference_lstm_797_layer_call_fn_4046135
*__inference_lstm_797_layer_call_fn_4046146
*__inference_lstm_797_layer_call_fn_4046157?
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046300
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046443
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046586
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046729?
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
+__inference_dense_265_layer_call_fn_4046738?
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
F__inference_dense_265_layer_call_and_return_conditional_losses_4046748?
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
%__inference_signature_wrapper_4043973lstm_795_input"?
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
/__inference_lstm_cell_666_layer_call_fn_4046765
/__inference_lstm_cell_666_layer_call_fn_4046782?
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4046814
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4046846?
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
/__inference_lstm_cell_667_layer_call_fn_4046863
/__inference_lstm_cell_667_layer_call_fn_4046880?
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4046912
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4046944?
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
/__inference_lstm_cell_668_layer_call_fn_4046961
/__inference_lstm_cell_668_layer_call_fn_4046978?
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4047010
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4047042?
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
"__inference__wrapped_model_4041713?-./012345!";?8
1?.
,?)
lstm_795_input?????????
? "5?2
0
	dense_265#? 
	dense_265??????????
F__inference_dense_265_layer_call_and_return_conditional_losses_4046748\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_265_layer_call_fn_4046738O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045068?-./O?L
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045211?-./O?L
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045354q-./??<
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
E__inference_lstm_795_layer_call_and_return_conditional_losses_4045497q-./??<
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
*__inference_lstm_795_layer_call_fn_4044892}-./O?L
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
*__inference_lstm_795_layer_call_fn_4044903}-./O?L
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
*__inference_lstm_795_layer_call_fn_4044914d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_795_layer_call_fn_4044925d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_796_layer_call_and_return_conditional_losses_4045684?012O?L
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4045827?012O?L
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4045970q012??<
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
E__inference_lstm_796_layer_call_and_return_conditional_losses_4046113q012??<
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
*__inference_lstm_796_layer_call_fn_4045508}012O?L
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
*__inference_lstm_796_layer_call_fn_4045519}012O?L
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
*__inference_lstm_796_layer_call_fn_4045530d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_796_layer_call_fn_4045541d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046300}345O?L
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046443}345O?L
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046586m345??<
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
E__inference_lstm_797_layer_call_and_return_conditional_losses_4046729m345??<
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
*__inference_lstm_797_layer_call_fn_4046124p345O?L
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
*__inference_lstm_797_layer_call_fn_4046135p345O?L
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
*__inference_lstm_797_layer_call_fn_4046146`345??<
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
*__inference_lstm_797_layer_call_fn_4046157`345??<
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4046814?-./??}
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4046846?-./??}
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
/__inference_lstm_cell_666_layer_call_fn_4046765?-./??}
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
/__inference_lstm_cell_666_layer_call_fn_4046782?-./??}
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4046912?012??}
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4046944?012??}
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
/__inference_lstm_cell_667_layer_call_fn_4046863?012??}
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
/__inference_lstm_cell_667_layer_call_fn_4046880?012??}
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4047010?345??}
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4047042?345??}
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
/__inference_lstm_cell_668_layer_call_fn_4046961?345??}
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
/__inference_lstm_cell_668_layer_call_fn_4046978?345??}
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
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043908y-./012345!"C?@
9?6
,?)
lstm_795_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_265_layer_call_and_return_conditional_losses_4043938y-./012345!"C?@
9?6
,?)
lstm_795_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_265_layer_call_and_return_conditional_losses_4044454q-./012345!";?8
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
K__inference_sequential_265_layer_call_and_return_conditional_losses_4044881q-./012345!";?8
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
0__inference_sequential_265_layer_call_fn_4043262l-./012345!"C?@
9?6
,?)
lstm_795_input?????????
p 

 
? "???????????
0__inference_sequential_265_layer_call_fn_4043878l-./012345!"C?@
9?6
,?)
lstm_795_input?????????
p

 
? "???????????
0__inference_sequential_265_layer_call_fn_4044000d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_265_layer_call_fn_4044027d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4043973?-./012345!"M?J
? 
C?@
>
lstm_795_input,?)
lstm_795_input?????????"5?2
0
	dense_265#? 
	dense_265?????????