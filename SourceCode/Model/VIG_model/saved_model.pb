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
dense_195/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_195/kernel
u
$dense_195/kernel/Read/ReadVariableOpReadVariableOpdense_195/kernel*
_output_shapes

:
*
dtype0
t
dense_195/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_195/bias
m
"dense_195/bias/Read/ReadVariableOpReadVariableOpdense_195/bias*
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
lstm_585/lstm_cell_585/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_585/lstm_cell_585/kernel
?
1lstm_585/lstm_cell_585/kernel/Read/ReadVariableOpReadVariableOplstm_585/lstm_cell_585/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_585/lstm_cell_585/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_585/lstm_cell_585/recurrent_kernel
?
;lstm_585/lstm_cell_585/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_585/lstm_cell_585/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_585/lstm_cell_585/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_585/lstm_cell_585/bias
?
/lstm_585/lstm_cell_585/bias/Read/ReadVariableOpReadVariableOplstm_585/lstm_cell_585/bias*
_output_shapes	
:?*
dtype0
?
lstm_586/lstm_cell_586/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_586/lstm_cell_586/kernel
?
1lstm_586/lstm_cell_586/kernel/Read/ReadVariableOpReadVariableOplstm_586/lstm_cell_586/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_586/lstm_cell_586/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_586/lstm_cell_586/recurrent_kernel
?
;lstm_586/lstm_cell_586/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_586/lstm_cell_586/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_586/lstm_cell_586/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_586/lstm_cell_586/bias
?
/lstm_586/lstm_cell_586/bias/Read/ReadVariableOpReadVariableOplstm_586/lstm_cell_586/bias*
_output_shapes	
:?*
dtype0
?
lstm_587/lstm_cell_587/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_587/lstm_cell_587/kernel
?
1lstm_587/lstm_cell_587/kernel/Read/ReadVariableOpReadVariableOplstm_587/lstm_cell_587/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_587/lstm_cell_587/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_587/lstm_cell_587/recurrent_kernel
?
;lstm_587/lstm_cell_587/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_587/lstm_cell_587/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_587/lstm_cell_587/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_587/lstm_cell_587/bias
?
/lstm_587/lstm_cell_587/bias/Read/ReadVariableOpReadVariableOplstm_587/lstm_cell_587/bias*
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
Adam/dense_195/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_195/kernel/m
?
+Adam/dense_195/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_195/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_195/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_195/bias/m
{
)Adam/dense_195/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_195/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_585/lstm_cell_585/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_585/lstm_cell_585/kernel/m
?
8Adam/lstm_585/lstm_cell_585/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_585/lstm_cell_585/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_585/lstm_cell_585/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_585/lstm_cell_585/recurrent_kernel/m
?
BAdam/lstm_585/lstm_cell_585/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_585/lstm_cell_585/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_585/lstm_cell_585/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_585/lstm_cell_585/bias/m
?
6Adam/lstm_585/lstm_cell_585/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_585/lstm_cell_585/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_586/lstm_cell_586/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_586/lstm_cell_586/kernel/m
?
8Adam/lstm_586/lstm_cell_586/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_586/lstm_cell_586/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_586/lstm_cell_586/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_586/lstm_cell_586/recurrent_kernel/m
?
BAdam/lstm_586/lstm_cell_586/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_586/lstm_cell_586/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_586/lstm_cell_586/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_586/lstm_cell_586/bias/m
?
6Adam/lstm_586/lstm_cell_586/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_586/lstm_cell_586/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_587/lstm_cell_587/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_587/lstm_cell_587/kernel/m
?
8Adam/lstm_587/lstm_cell_587/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_587/lstm_cell_587/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_587/lstm_cell_587/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_587/lstm_cell_587/recurrent_kernel/m
?
BAdam/lstm_587/lstm_cell_587/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_587/lstm_cell_587/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_587/lstm_cell_587/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_587/lstm_cell_587/bias/m
?
6Adam/lstm_587/lstm_cell_587/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_587/lstm_cell_587/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_195/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_195/kernel/v
?
+Adam/dense_195/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_195/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_195/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_195/bias/v
{
)Adam/dense_195/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_195/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_585/lstm_cell_585/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_585/lstm_cell_585/kernel/v
?
8Adam/lstm_585/lstm_cell_585/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_585/lstm_cell_585/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_585/lstm_cell_585/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_585/lstm_cell_585/recurrent_kernel/v
?
BAdam/lstm_585/lstm_cell_585/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_585/lstm_cell_585/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_585/lstm_cell_585/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_585/lstm_cell_585/bias/v
?
6Adam/lstm_585/lstm_cell_585/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_585/lstm_cell_585/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_586/lstm_cell_586/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_586/lstm_cell_586/kernel/v
?
8Adam/lstm_586/lstm_cell_586/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_586/lstm_cell_586/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_586/lstm_cell_586/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_586/lstm_cell_586/recurrent_kernel/v
?
BAdam/lstm_586/lstm_cell_586/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_586/lstm_cell_586/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_586/lstm_cell_586/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_586/lstm_cell_586/bias/v
?
6Adam/lstm_586/lstm_cell_586/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_586/lstm_cell_586/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_587/lstm_cell_587/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_587/lstm_cell_587/kernel/v
?
8Adam/lstm_587/lstm_cell_587/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_587/lstm_cell_587/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_587/lstm_cell_587/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_587/lstm_cell_587/recurrent_kernel/v
?
BAdam/lstm_587/lstm_cell_587/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_587/lstm_cell_587/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_587/lstm_cell_587/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_587/lstm_cell_587/bias/v
?
6Adam/lstm_587/lstm_cell_587/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_587/lstm_cell_587/bias/v*
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
VARIABLE_VALUEdense_195/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_195/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_585/lstm_cell_585/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_585/lstm_cell_585/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_585/lstm_cell_585/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_586/lstm_cell_586/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_586/lstm_cell_586/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_586/lstm_cell_586/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_587/lstm_cell_587/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_587/lstm_cell_587/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_587/lstm_cell_587/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_195/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_195/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_585/lstm_cell_585/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_585/lstm_cell_585/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_585/lstm_cell_585/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_586/lstm_cell_586/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_586/lstm_cell_586/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_586/lstm_cell_586/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_587/lstm_cell_587/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_587/lstm_cell_587/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_587/lstm_cell_587/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_195/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_195/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_585/lstm_cell_585/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_585/lstm_cell_585/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_585/lstm_cell_585/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_586/lstm_cell_586/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_586/lstm_cell_586/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_586/lstm_cell_586/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_587/lstm_cell_587/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_587/lstm_cell_587/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_587/lstm_cell_587/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_585_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_585_inputlstm_585/lstm_cell_585/kernel'lstm_585/lstm_cell_585/recurrent_kernellstm_585/lstm_cell_585/biaslstm_586/lstm_cell_586/kernel'lstm_586/lstm_cell_586/recurrent_kernellstm_586/lstm_cell_586/biaslstm_587/lstm_cell_587/kernel'lstm_587/lstm_cell_587/recurrent_kernellstm_587/lstm_cell_587/biasdense_195/kerneldense_195/bias*
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
%__inference_signature_wrapper_4695489
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_195/kernel/Read/ReadVariableOp"dense_195/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_585/lstm_cell_585/kernel/Read/ReadVariableOp;lstm_585/lstm_cell_585/recurrent_kernel/Read/ReadVariableOp/lstm_585/lstm_cell_585/bias/Read/ReadVariableOp1lstm_586/lstm_cell_586/kernel/Read/ReadVariableOp;lstm_586/lstm_cell_586/recurrent_kernel/Read/ReadVariableOp/lstm_586/lstm_cell_586/bias/Read/ReadVariableOp1lstm_587/lstm_cell_587/kernel/Read/ReadVariableOp;lstm_587/lstm_cell_587/recurrent_kernel/Read/ReadVariableOp/lstm_587/lstm_cell_587/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_195/kernel/m/Read/ReadVariableOp)Adam/dense_195/bias/m/Read/ReadVariableOp8Adam/lstm_585/lstm_cell_585/kernel/m/Read/ReadVariableOpBAdam/lstm_585/lstm_cell_585/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_585/lstm_cell_585/bias/m/Read/ReadVariableOp8Adam/lstm_586/lstm_cell_586/kernel/m/Read/ReadVariableOpBAdam/lstm_586/lstm_cell_586/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_586/lstm_cell_586/bias/m/Read/ReadVariableOp8Adam/lstm_587/lstm_cell_587/kernel/m/Read/ReadVariableOpBAdam/lstm_587/lstm_cell_587/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_587/lstm_cell_587/bias/m/Read/ReadVariableOp+Adam/dense_195/kernel/v/Read/ReadVariableOp)Adam/dense_195/bias/v/Read/ReadVariableOp8Adam/lstm_585/lstm_cell_585/kernel/v/Read/ReadVariableOpBAdam/lstm_585/lstm_cell_585/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_585/lstm_cell_585/bias/v/Read/ReadVariableOp8Adam/lstm_586/lstm_cell_586/kernel/v/Read/ReadVariableOpBAdam/lstm_586/lstm_cell_586/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_586/lstm_cell_586/bias/v/Read/ReadVariableOp8Adam/lstm_587/lstm_cell_587/kernel/v/Read/ReadVariableOpBAdam/lstm_587/lstm_cell_587/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_587/lstm_cell_587/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4698701
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_195/kerneldense_195/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_585/lstm_cell_585/kernel'lstm_585/lstm_cell_585/recurrent_kernellstm_585/lstm_cell_585/biaslstm_586/lstm_cell_586/kernel'lstm_586/lstm_cell_586/recurrent_kernellstm_586/lstm_cell_586/biaslstm_587/lstm_cell_587/kernel'lstm_587/lstm_cell_587/recurrent_kernellstm_587/lstm_cell_587/biastotalcountAdam/dense_195/kernel/mAdam/dense_195/bias/m$Adam/lstm_585/lstm_cell_585/kernel/m.Adam/lstm_585/lstm_cell_585/recurrent_kernel/m"Adam/lstm_585/lstm_cell_585/bias/m$Adam/lstm_586/lstm_cell_586/kernel/m.Adam/lstm_586/lstm_cell_586/recurrent_kernel/m"Adam/lstm_586/lstm_cell_586/bias/m$Adam/lstm_587/lstm_cell_587/kernel/m.Adam/lstm_587/lstm_cell_587/recurrent_kernel/m"Adam/lstm_587/lstm_cell_587/bias/mAdam/dense_195/kernel/vAdam/dense_195/bias/v$Adam/lstm_585/lstm_cell_585/kernel/v.Adam/lstm_585/lstm_cell_585/recurrent_kernel/v"Adam/lstm_585/lstm_cell_585/bias/v$Adam/lstm_586/lstm_cell_586/kernel/v.Adam/lstm_586/lstm_cell_586/recurrent_kernel/v"Adam/lstm_586/lstm_cell_586/bias/v$Adam/lstm_587/lstm_cell_587/kernel/v.Adam/lstm_587/lstm_cell_587/recurrent_kernel/v"Adam/lstm_587/lstm_cell_587/bias/v*4
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
#__inference__traced_restore_4698831??+
?

?
0__inference_sequential_195_layer_call_fn_4695516

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
K__inference_sequential_195_layer_call_and_return_conditional_losses_4694753o
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
while_cond_4697115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4697115___redundant_placeholder05
1while_while_cond_4697115___redundant_placeholder15
1while_while_cond_4697115___redundant_placeholder25
1while_while_cond_4697115___redundant_placeholder3
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
0__inference_sequential_195_layer_call_fn_4695394
lstm_585_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_585_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695342o
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
_user_specified_namelstm_585_input
?J
?
E__inference_lstm_586_layer_call_and_return_conditional_losses_4695109

inputs?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4695025*
condR
while_cond_4695024*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4697258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4697258___redundant_placeholder05
1while_while_cond_4697258___redundant_placeholder15
1while_while_cond_4697258___redundant_placeholder25
1while_while_cond_4697258___redundant_placeholder3
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
while_cond_4697731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4697731___redundant_placeholder05
1while_while_cond_4697731___redundant_placeholder15
1while_while_cond_4697731___redundant_placeholder25
1while_while_cond_4697731___redundant_placeholder3
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
*sequential_195_lstm_587_while_cond_4693138L
Hsequential_195_lstm_587_while_sequential_195_lstm_587_while_loop_counterR
Nsequential_195_lstm_587_while_sequential_195_lstm_587_while_maximum_iterations-
)sequential_195_lstm_587_while_placeholder/
+sequential_195_lstm_587_while_placeholder_1/
+sequential_195_lstm_587_while_placeholder_2/
+sequential_195_lstm_587_while_placeholder_3N
Jsequential_195_lstm_587_while_less_sequential_195_lstm_587_strided_slice_1e
asequential_195_lstm_587_while_sequential_195_lstm_587_while_cond_4693138___redundant_placeholder0e
asequential_195_lstm_587_while_sequential_195_lstm_587_while_cond_4693138___redundant_placeholder1e
asequential_195_lstm_587_while_sequential_195_lstm_587_while_cond_4693138___redundant_placeholder2e
asequential_195_lstm_587_while_sequential_195_lstm_587_while_cond_4693138___redundant_placeholder3*
&sequential_195_lstm_587_while_identity
?
"sequential_195/lstm_587/while/LessLess)sequential_195_lstm_587_while_placeholderJsequential_195_lstm_587_while_less_sequential_195_lstm_587_strided_slice_1*
T0*
_output_shapes
: {
&sequential_195/lstm_587/while/IdentityIdentity&sequential_195/lstm_587/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_195_lstm_587_while_identity/sequential_195/lstm_587/while/Identity:output:0*(
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
while_body_4693501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_774_4693525_0:	?0
while_lstm_cell_774_4693527_0:	d?,
while_lstm_cell_774_4693529_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_774_4693525:	?.
while_lstm_cell_774_4693527:	d?*
while_lstm_cell_774_4693529:	???+while/lstm_cell_774/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_774/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_774_4693525_0while_lstm_cell_774_4693527_0while_lstm_cell_774_4693529_0*
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4693442?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_774/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_774/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_774/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_774/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_774_4693525while_lstm_cell_774_4693525_0"<
while_lstm_cell_774_4693527while_lstm_cell_774_4693527_0"<
while_lstm_cell_774_4693529while_lstm_cell_774_4693529_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_774/StatefulPartitionedCall+while/lstm_cell_774/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_586_while_body_4695741.
*lstm_586_while_lstm_586_while_loop_counter4
0lstm_586_while_lstm_586_while_maximum_iterations
lstm_586_while_placeholder 
lstm_586_while_placeholder_1 
lstm_586_while_placeholder_2 
lstm_586_while_placeholder_3-
)lstm_586_while_lstm_586_strided_slice_1_0i
elstm_586_while_tensorarrayv2read_tensorlistgetitem_lstm_586_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_586_while_lstm_cell_775_matmul_readvariableop_resource_0:	d?R
?lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?M
>lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
lstm_586_while_identity
lstm_586_while_identity_1
lstm_586_while_identity_2
lstm_586_while_identity_3
lstm_586_while_identity_4
lstm_586_while_identity_5+
'lstm_586_while_lstm_586_strided_slice_1g
clstm_586_while_tensorarrayv2read_tensorlistgetitem_lstm_586_tensorarrayunstack_tensorlistfromtensorN
;lstm_586_while_lstm_cell_775_matmul_readvariableop_resource:	d?P
=lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource:	2?K
<lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource:	???3lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp?2lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp?4lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp?
@lstm_586/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_586/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_586_while_tensorarrayv2read_tensorlistgetitem_lstm_586_tensorarrayunstack_tensorlistfromtensor_0lstm_586_while_placeholderIlstm_586/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_586/while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp=lstm_586_while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_586/while/lstm_cell_775/MatMulMatMul9lstm_586/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp?lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_586/while/lstm_cell_775/MatMul_1MatMullstm_586_while_placeholder_2<lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_586/while/lstm_cell_775/addAddV2-lstm_586/while/lstm_cell_775/MatMul:product:0/lstm_586/while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp>lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_586/while/lstm_cell_775/BiasAddBiasAdd$lstm_586/while/lstm_cell_775/add:z:0;lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_586/while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_586/while/lstm_cell_775/splitSplit5lstm_586/while/lstm_cell_775/split/split_dim:output:0-lstm_586/while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_586/while/lstm_cell_775/SigmoidSigmoid+lstm_586/while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_586/while/lstm_cell_775/Sigmoid_1Sigmoid+lstm_586/while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_586/while/lstm_cell_775/mulMul*lstm_586/while/lstm_cell_775/Sigmoid_1:y:0lstm_586_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_586/while/lstm_cell_775/ReluRelu+lstm_586/while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_586/while/lstm_cell_775/mul_1Mul(lstm_586/while/lstm_cell_775/Sigmoid:y:0/lstm_586/while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_586/while/lstm_cell_775/add_1AddV2$lstm_586/while/lstm_cell_775/mul:z:0&lstm_586/while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_586/while/lstm_cell_775/Sigmoid_2Sigmoid+lstm_586/while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_586/while/lstm_cell_775/Relu_1Relu&lstm_586/while/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_586/while/lstm_cell_775/mul_2Mul*lstm_586/while/lstm_cell_775/Sigmoid_2:y:01lstm_586/while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_586/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_586_while_placeholder_1lstm_586_while_placeholder&lstm_586/while/lstm_cell_775/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_586/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_586/while/addAddV2lstm_586_while_placeholderlstm_586/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_586/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_586/while/add_1AddV2*lstm_586_while_lstm_586_while_loop_counterlstm_586/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_586/while/IdentityIdentitylstm_586/while/add_1:z:0^lstm_586/while/NoOp*
T0*
_output_shapes
: ?
lstm_586/while/Identity_1Identity0lstm_586_while_lstm_586_while_maximum_iterations^lstm_586/while/NoOp*
T0*
_output_shapes
: t
lstm_586/while/Identity_2Identitylstm_586/while/add:z:0^lstm_586/while/NoOp*
T0*
_output_shapes
: ?
lstm_586/while/Identity_3IdentityClstm_586/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_586/while/NoOp*
T0*
_output_shapes
: ?
lstm_586/while/Identity_4Identity&lstm_586/while/lstm_cell_775/mul_2:z:0^lstm_586/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_586/while/Identity_5Identity&lstm_586/while/lstm_cell_775/add_1:z:0^lstm_586/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_586/while/NoOpNoOp4^lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp3^lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp5^lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_586_while_identity lstm_586/while/Identity:output:0"?
lstm_586_while_identity_1"lstm_586/while/Identity_1:output:0"?
lstm_586_while_identity_2"lstm_586/while/Identity_2:output:0"?
lstm_586_while_identity_3"lstm_586/while/Identity_3:output:0"?
lstm_586_while_identity_4"lstm_586/while/Identity_4:output:0"?
lstm_586_while_identity_5"lstm_586/while/Identity_5:output:0"T
'lstm_586_while_lstm_586_strided_slice_1)lstm_586_while_lstm_586_strided_slice_1_0"~
<lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource>lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource_0"?
=lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource?lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource_0"|
;lstm_586_while_lstm_cell_775_matmul_readvariableop_resource=lstm_586_while_lstm_cell_775_matmul_readvariableop_resource_0"?
clstm_586_while_tensorarrayv2read_tensorlistgetitem_lstm_586_tensorarrayunstack_tensorlistfromtensorelstm_586_while_tensorarrayv2read_tensorlistgetitem_lstm_586_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp3lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp2h
2lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp2lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp2l
4lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp4lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_585_while_body_4695602.
*lstm_585_while_lstm_585_while_loop_counter4
0lstm_585_while_lstm_585_while_maximum_iterations
lstm_585_while_placeholder 
lstm_585_while_placeholder_1 
lstm_585_while_placeholder_2 
lstm_585_while_placeholder_3-
)lstm_585_while_lstm_585_strided_slice_1_0i
elstm_585_while_tensorarrayv2read_tensorlistgetitem_lstm_585_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_585_while_lstm_cell_774_matmul_readvariableop_resource_0:	?R
?lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?M
>lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
lstm_585_while_identity
lstm_585_while_identity_1
lstm_585_while_identity_2
lstm_585_while_identity_3
lstm_585_while_identity_4
lstm_585_while_identity_5+
'lstm_585_while_lstm_585_strided_slice_1g
clstm_585_while_tensorarrayv2read_tensorlistgetitem_lstm_585_tensorarrayunstack_tensorlistfromtensorN
;lstm_585_while_lstm_cell_774_matmul_readvariableop_resource:	?P
=lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource:	d?K
<lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource:	???3lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp?2lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp?4lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp?
@lstm_585/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_585/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_585_while_tensorarrayv2read_tensorlistgetitem_lstm_585_tensorarrayunstack_tensorlistfromtensor_0lstm_585_while_placeholderIlstm_585/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_585/while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp=lstm_585_while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_585/while/lstm_cell_774/MatMulMatMul9lstm_585/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp?lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_585/while/lstm_cell_774/MatMul_1MatMullstm_585_while_placeholder_2<lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_585/while/lstm_cell_774/addAddV2-lstm_585/while/lstm_cell_774/MatMul:product:0/lstm_585/while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp>lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_585/while/lstm_cell_774/BiasAddBiasAdd$lstm_585/while/lstm_cell_774/add:z:0;lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_585/while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_585/while/lstm_cell_774/splitSplit5lstm_585/while/lstm_cell_774/split/split_dim:output:0-lstm_585/while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_585/while/lstm_cell_774/SigmoidSigmoid+lstm_585/while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_585/while/lstm_cell_774/Sigmoid_1Sigmoid+lstm_585/while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_585/while/lstm_cell_774/mulMul*lstm_585/while/lstm_cell_774/Sigmoid_1:y:0lstm_585_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_585/while/lstm_cell_774/ReluRelu+lstm_585/while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_585/while/lstm_cell_774/mul_1Mul(lstm_585/while/lstm_cell_774/Sigmoid:y:0/lstm_585/while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_585/while/lstm_cell_774/add_1AddV2$lstm_585/while/lstm_cell_774/mul:z:0&lstm_585/while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_585/while/lstm_cell_774/Sigmoid_2Sigmoid+lstm_585/while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_585/while/lstm_cell_774/Relu_1Relu&lstm_585/while/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_585/while/lstm_cell_774/mul_2Mul*lstm_585/while/lstm_cell_774/Sigmoid_2:y:01lstm_585/while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_585/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_585_while_placeholder_1lstm_585_while_placeholder&lstm_585/while/lstm_cell_774/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_585/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_585/while/addAddV2lstm_585_while_placeholderlstm_585/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_585/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_585/while/add_1AddV2*lstm_585_while_lstm_585_while_loop_counterlstm_585/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_585/while/IdentityIdentitylstm_585/while/add_1:z:0^lstm_585/while/NoOp*
T0*
_output_shapes
: ?
lstm_585/while/Identity_1Identity0lstm_585_while_lstm_585_while_maximum_iterations^lstm_585/while/NoOp*
T0*
_output_shapes
: t
lstm_585/while/Identity_2Identitylstm_585/while/add:z:0^lstm_585/while/NoOp*
T0*
_output_shapes
: ?
lstm_585/while/Identity_3IdentityClstm_585/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_585/while/NoOp*
T0*
_output_shapes
: ?
lstm_585/while/Identity_4Identity&lstm_585/while/lstm_cell_774/mul_2:z:0^lstm_585/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_585/while/Identity_5Identity&lstm_585/while/lstm_cell_774/add_1:z:0^lstm_585/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_585/while/NoOpNoOp4^lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp3^lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp5^lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_585_while_identity lstm_585/while/Identity:output:0"?
lstm_585_while_identity_1"lstm_585/while/Identity_1:output:0"?
lstm_585_while_identity_2"lstm_585/while/Identity_2:output:0"?
lstm_585_while_identity_3"lstm_585/while/Identity_3:output:0"?
lstm_585_while_identity_4"lstm_585/while/Identity_4:output:0"?
lstm_585_while_identity_5"lstm_585/while/Identity_5:output:0"T
'lstm_585_while_lstm_585_strided_slice_1)lstm_585_while_lstm_585_strided_slice_1_0"~
<lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource>lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource_0"?
=lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource?lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource_0"|
;lstm_585_while_lstm_cell_774_matmul_readvariableop_resource=lstm_585_while_lstm_cell_774_matmul_readvariableop_resource_0"?
clstm_585_while_tensorarrayv2read_tensorlistgetitem_lstm_585_tensorarrayunstack_tensorlistfromtensorelstm_585_while_tensorarrayv2read_tensorlistgetitem_lstm_585_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp3lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp2h
2lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp2lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp2l
4lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp4lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_195_layer_call_and_return_conditional_losses_4696397

inputsH
5lstm_585_lstm_cell_774_matmul_readvariableop_resource:	?J
7lstm_585_lstm_cell_774_matmul_1_readvariableop_resource:	d?E
6lstm_585_lstm_cell_774_biasadd_readvariableop_resource:	?H
5lstm_586_lstm_cell_775_matmul_readvariableop_resource:	d?J
7lstm_586_lstm_cell_775_matmul_1_readvariableop_resource:	2?E
6lstm_586_lstm_cell_775_biasadd_readvariableop_resource:	?G
5lstm_587_lstm_cell_776_matmul_readvariableop_resource:2(I
7lstm_587_lstm_cell_776_matmul_1_readvariableop_resource:
(D
6lstm_587_lstm_cell_776_biasadd_readvariableop_resource:(:
(dense_195_matmul_readvariableop_resource:
7
)dense_195_biasadd_readvariableop_resource:
identity?? dense_195/BiasAdd/ReadVariableOp?dense_195/MatMul/ReadVariableOp?-lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp?,lstm_585/lstm_cell_774/MatMul/ReadVariableOp?.lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp?lstm_585/while?-lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp?,lstm_586/lstm_cell_775/MatMul/ReadVariableOp?.lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp?lstm_586/while?-lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp?,lstm_587/lstm_cell_776/MatMul/ReadVariableOp?.lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp?lstm_587/whileD
lstm_585/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_585/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_585/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_585/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_585/strided_sliceStridedSlicelstm_585/Shape:output:0%lstm_585/strided_slice/stack:output:0'lstm_585/strided_slice/stack_1:output:0'lstm_585/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_585/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_585/zeros/packedPacklstm_585/strided_slice:output:0 lstm_585/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_585/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_585/zerosFilllstm_585/zeros/packed:output:0lstm_585/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_585/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_585/zeros_1/packedPacklstm_585/strided_slice:output:0"lstm_585/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_585/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_585/zeros_1Fill lstm_585/zeros_1/packed:output:0lstm_585/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_585/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_585/transpose	Transposeinputs lstm_585/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_585/Shape_1Shapelstm_585/transpose:y:0*
T0*
_output_shapes
:h
lstm_585/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_585/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_585/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_585/strided_slice_1StridedSlicelstm_585/Shape_1:output:0'lstm_585/strided_slice_1/stack:output:0)lstm_585/strided_slice_1/stack_1:output:0)lstm_585/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_585/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_585/TensorArrayV2TensorListReserve-lstm_585/TensorArrayV2/element_shape:output:0!lstm_585/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_585/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_585/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_585/transpose:y:0Glstm_585/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_585/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_585/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_585/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_585/strided_slice_2StridedSlicelstm_585/transpose:y:0'lstm_585/strided_slice_2/stack:output:0)lstm_585/strided_slice_2/stack_1:output:0)lstm_585/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_585/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp5lstm_585_lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_585/lstm_cell_774/MatMulMatMul!lstm_585/strided_slice_2:output:04lstm_585/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_585/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp7lstm_585_lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_585/lstm_cell_774/MatMul_1MatMullstm_585/zeros:output:06lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_585/lstm_cell_774/addAddV2'lstm_585/lstm_cell_774/MatMul:product:0)lstm_585/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_585/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp6lstm_585_lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_585/lstm_cell_774/BiasAddBiasAddlstm_585/lstm_cell_774/add:z:05lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_585/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_585/lstm_cell_774/splitSplit/lstm_585/lstm_cell_774/split/split_dim:output:0'lstm_585/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_585/lstm_cell_774/SigmoidSigmoid%lstm_585/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_585/lstm_cell_774/Sigmoid_1Sigmoid%lstm_585/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_585/lstm_cell_774/mulMul$lstm_585/lstm_cell_774/Sigmoid_1:y:0lstm_585/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_585/lstm_cell_774/ReluRelu%lstm_585/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_585/lstm_cell_774/mul_1Mul"lstm_585/lstm_cell_774/Sigmoid:y:0)lstm_585/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_585/lstm_cell_774/add_1AddV2lstm_585/lstm_cell_774/mul:z:0 lstm_585/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_585/lstm_cell_774/Sigmoid_2Sigmoid%lstm_585/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_585/lstm_cell_774/Relu_1Relu lstm_585/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_585/lstm_cell_774/mul_2Mul$lstm_585/lstm_cell_774/Sigmoid_2:y:0+lstm_585/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_585/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_585/TensorArrayV2_1TensorListReserve/lstm_585/TensorArrayV2_1/element_shape:output:0!lstm_585/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_585/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_585/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_585/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_585/whileWhile$lstm_585/while/loop_counter:output:0*lstm_585/while/maximum_iterations:output:0lstm_585/time:output:0!lstm_585/TensorArrayV2_1:handle:0lstm_585/zeros:output:0lstm_585/zeros_1:output:0!lstm_585/strided_slice_1:output:0@lstm_585/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_585_lstm_cell_774_matmul_readvariableop_resource7lstm_585_lstm_cell_774_matmul_1_readvariableop_resource6lstm_585_lstm_cell_774_biasadd_readvariableop_resource*
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
lstm_585_while_body_4696029*'
condR
lstm_585_while_cond_4696028*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_585/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_585/TensorArrayV2Stack/TensorListStackTensorListStacklstm_585/while:output:3Blstm_585/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_585/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_585/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_585/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_585/strided_slice_3StridedSlice4lstm_585/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_585/strided_slice_3/stack:output:0)lstm_585/strided_slice_3/stack_1:output:0)lstm_585/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_585/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_585/transpose_1	Transpose4lstm_585/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_585/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_585/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_586/ShapeShapelstm_585/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_586/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_586/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_586/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_586/strided_sliceStridedSlicelstm_586/Shape:output:0%lstm_586/strided_slice/stack:output:0'lstm_586/strided_slice/stack_1:output:0'lstm_586/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_586/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_586/zeros/packedPacklstm_586/strided_slice:output:0 lstm_586/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_586/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_586/zerosFilllstm_586/zeros/packed:output:0lstm_586/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_586/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_586/zeros_1/packedPacklstm_586/strided_slice:output:0"lstm_586/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_586/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_586/zeros_1Fill lstm_586/zeros_1/packed:output:0lstm_586/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_586/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_586/transpose	Transposelstm_585/transpose_1:y:0 lstm_586/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_586/Shape_1Shapelstm_586/transpose:y:0*
T0*
_output_shapes
:h
lstm_586/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_586/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_586/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_586/strided_slice_1StridedSlicelstm_586/Shape_1:output:0'lstm_586/strided_slice_1/stack:output:0)lstm_586/strided_slice_1/stack_1:output:0)lstm_586/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_586/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_586/TensorArrayV2TensorListReserve-lstm_586/TensorArrayV2/element_shape:output:0!lstm_586/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_586/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_586/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_586/transpose:y:0Glstm_586/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_586/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_586/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_586/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_586/strided_slice_2StridedSlicelstm_586/transpose:y:0'lstm_586/strided_slice_2/stack:output:0)lstm_586/strided_slice_2/stack_1:output:0)lstm_586/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_586/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp5lstm_586_lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_586/lstm_cell_775/MatMulMatMul!lstm_586/strided_slice_2:output:04lstm_586/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_586/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp7lstm_586_lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_586/lstm_cell_775/MatMul_1MatMullstm_586/zeros:output:06lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_586/lstm_cell_775/addAddV2'lstm_586/lstm_cell_775/MatMul:product:0)lstm_586/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_586/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp6lstm_586_lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_586/lstm_cell_775/BiasAddBiasAddlstm_586/lstm_cell_775/add:z:05lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_586/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_586/lstm_cell_775/splitSplit/lstm_586/lstm_cell_775/split/split_dim:output:0'lstm_586/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_586/lstm_cell_775/SigmoidSigmoid%lstm_586/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_586/lstm_cell_775/Sigmoid_1Sigmoid%lstm_586/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_586/lstm_cell_775/mulMul$lstm_586/lstm_cell_775/Sigmoid_1:y:0lstm_586/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_586/lstm_cell_775/ReluRelu%lstm_586/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_586/lstm_cell_775/mul_1Mul"lstm_586/lstm_cell_775/Sigmoid:y:0)lstm_586/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_586/lstm_cell_775/add_1AddV2lstm_586/lstm_cell_775/mul:z:0 lstm_586/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_586/lstm_cell_775/Sigmoid_2Sigmoid%lstm_586/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_586/lstm_cell_775/Relu_1Relu lstm_586/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_586/lstm_cell_775/mul_2Mul$lstm_586/lstm_cell_775/Sigmoid_2:y:0+lstm_586/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_586/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_586/TensorArrayV2_1TensorListReserve/lstm_586/TensorArrayV2_1/element_shape:output:0!lstm_586/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_586/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_586/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_586/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_586/whileWhile$lstm_586/while/loop_counter:output:0*lstm_586/while/maximum_iterations:output:0lstm_586/time:output:0!lstm_586/TensorArrayV2_1:handle:0lstm_586/zeros:output:0lstm_586/zeros_1:output:0!lstm_586/strided_slice_1:output:0@lstm_586/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_586_lstm_cell_775_matmul_readvariableop_resource7lstm_586_lstm_cell_775_matmul_1_readvariableop_resource6lstm_586_lstm_cell_775_biasadd_readvariableop_resource*
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
lstm_586_while_body_4696168*'
condR
lstm_586_while_cond_4696167*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_586/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_586/TensorArrayV2Stack/TensorListStackTensorListStacklstm_586/while:output:3Blstm_586/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_586/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_586/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_586/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_586/strided_slice_3StridedSlice4lstm_586/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_586/strided_slice_3/stack:output:0)lstm_586/strided_slice_3/stack_1:output:0)lstm_586/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_586/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_586/transpose_1	Transpose4lstm_586/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_586/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_586/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_587/ShapeShapelstm_586/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_587/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_587/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_587/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_587/strided_sliceStridedSlicelstm_587/Shape:output:0%lstm_587/strided_slice/stack:output:0'lstm_587/strided_slice/stack_1:output:0'lstm_587/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_587/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_587/zeros/packedPacklstm_587/strided_slice:output:0 lstm_587/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_587/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_587/zerosFilllstm_587/zeros/packed:output:0lstm_587/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_587/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_587/zeros_1/packedPacklstm_587/strided_slice:output:0"lstm_587/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_587/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_587/zeros_1Fill lstm_587/zeros_1/packed:output:0lstm_587/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_587/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_587/transpose	Transposelstm_586/transpose_1:y:0 lstm_587/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_587/Shape_1Shapelstm_587/transpose:y:0*
T0*
_output_shapes
:h
lstm_587/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_587/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_587/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_587/strided_slice_1StridedSlicelstm_587/Shape_1:output:0'lstm_587/strided_slice_1/stack:output:0)lstm_587/strided_slice_1/stack_1:output:0)lstm_587/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_587/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_587/TensorArrayV2TensorListReserve-lstm_587/TensorArrayV2/element_shape:output:0!lstm_587/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_587/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_587/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_587/transpose:y:0Glstm_587/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_587/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_587/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_587/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_587/strided_slice_2StridedSlicelstm_587/transpose:y:0'lstm_587/strided_slice_2/stack:output:0)lstm_587/strided_slice_2/stack_1:output:0)lstm_587/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_587/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp5lstm_587_lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_587/lstm_cell_776/MatMulMatMul!lstm_587/strided_slice_2:output:04lstm_587/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_587/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp7lstm_587_lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_587/lstm_cell_776/MatMul_1MatMullstm_587/zeros:output:06lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_587/lstm_cell_776/addAddV2'lstm_587/lstm_cell_776/MatMul:product:0)lstm_587/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_587/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp6lstm_587_lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_587/lstm_cell_776/BiasAddBiasAddlstm_587/lstm_cell_776/add:z:05lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_587/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_587/lstm_cell_776/splitSplit/lstm_587/lstm_cell_776/split/split_dim:output:0'lstm_587/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_587/lstm_cell_776/SigmoidSigmoid%lstm_587/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_587/lstm_cell_776/Sigmoid_1Sigmoid%lstm_587/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_587/lstm_cell_776/mulMul$lstm_587/lstm_cell_776/Sigmoid_1:y:0lstm_587/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_587/lstm_cell_776/ReluRelu%lstm_587/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_587/lstm_cell_776/mul_1Mul"lstm_587/lstm_cell_776/Sigmoid:y:0)lstm_587/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_587/lstm_cell_776/add_1AddV2lstm_587/lstm_cell_776/mul:z:0 lstm_587/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_587/lstm_cell_776/Sigmoid_2Sigmoid%lstm_587/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_587/lstm_cell_776/Relu_1Relu lstm_587/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_587/lstm_cell_776/mul_2Mul$lstm_587/lstm_cell_776/Sigmoid_2:y:0+lstm_587/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_587/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_587/TensorArrayV2_1TensorListReserve/lstm_587/TensorArrayV2_1/element_shape:output:0!lstm_587/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_587/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_587/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_587/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_587/whileWhile$lstm_587/while/loop_counter:output:0*lstm_587/while/maximum_iterations:output:0lstm_587/time:output:0!lstm_587/TensorArrayV2_1:handle:0lstm_587/zeros:output:0lstm_587/zeros_1:output:0!lstm_587/strided_slice_1:output:0@lstm_587/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_587_lstm_cell_776_matmul_readvariableop_resource7lstm_587_lstm_cell_776_matmul_1_readvariableop_resource6lstm_587_lstm_cell_776_biasadd_readvariableop_resource*
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
lstm_587_while_body_4696307*'
condR
lstm_587_while_cond_4696306*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_587/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_587/TensorArrayV2Stack/TensorListStackTensorListStacklstm_587/while:output:3Blstm_587/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_587/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_587/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_587/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_587/strided_slice_3StridedSlice4lstm_587/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_587/strided_slice_3/stack:output:0)lstm_587/strided_slice_3/stack_1:output:0)lstm_587/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_587/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_587/transpose_1	Transpose4lstm_587/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_587/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_587/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_195/MatMul/ReadVariableOpReadVariableOp(dense_195_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_195/MatMulMatMul!lstm_587/strided_slice_3:output:0'dense_195/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_195/BiasAdd/ReadVariableOpReadVariableOp)dense_195_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_195/BiasAddBiasAdddense_195/MatMul:product:0(dense_195/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_195/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_195/BiasAdd/ReadVariableOp ^dense_195/MatMul/ReadVariableOp.^lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp-^lstm_585/lstm_cell_774/MatMul/ReadVariableOp/^lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp^lstm_585/while.^lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp-^lstm_586/lstm_cell_775/MatMul/ReadVariableOp/^lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp^lstm_586/while.^lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp-^lstm_587/lstm_cell_776/MatMul/ReadVariableOp/^lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp^lstm_587/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_195/BiasAdd/ReadVariableOp dense_195/BiasAdd/ReadVariableOp2B
dense_195/MatMul/ReadVariableOpdense_195/MatMul/ReadVariableOp2^
-lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp-lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp2\
,lstm_585/lstm_cell_774/MatMul/ReadVariableOp,lstm_585/lstm_cell_774/MatMul/ReadVariableOp2`
.lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp.lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp2 
lstm_585/whilelstm_585/while2^
-lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp-lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp2\
,lstm_586/lstm_cell_775/MatMul/ReadVariableOp,lstm_586/lstm_cell_775/MatMul/ReadVariableOp2`
.lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp.lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp2 
lstm_586/whilelstm_586/while2^
-lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp-lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp2\
,lstm_587/lstm_cell_776/MatMul/ReadVariableOp,lstm_587/lstm_cell_776/MatMul/ReadVariableOp2`
.lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp.lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp2 
lstm_587/whilelstm_587/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_586_layer_call_and_return_conditional_losses_4693729

inputs(
lstm_cell_775_4693647:	d?(
lstm_cell_775_4693649:	2?$
lstm_cell_775_4693651:	?
identity??%lstm_cell_775/StatefulPartitionedCall?while;
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
%lstm_cell_775/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_775_4693647lstm_cell_775_4693649lstm_cell_775_4693651*
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4693646n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_775_4693647lstm_cell_775_4693649lstm_cell_775_4693651*
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
while_body_4693660*
condR
while_cond_4693659*K
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
NoOpNoOp&^lstm_cell_775/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_775/StatefulPartitionedCall%lstm_cell_775/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4696499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4696499___redundant_placeholder05
1while_while_cond_4696499___redundant_placeholder15
1while_while_cond_4696499___redundant_placeholder25
1while_while_cond_4696499___redundant_placeholder3
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
%__inference_signature_wrapper_4695489
lstm_585_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_585_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4693229o
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
_user_specified_namelstm_585_input
?
?
while_cond_4697544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4697544___redundant_placeholder05
1while_while_cond_4697544___redundant_placeholder15
1while_while_cond_4697544___redundant_placeholder25
1while_while_cond_4697544___redundant_placeholder3
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4693920

inputs(
lstm_cell_775_4693838:	d?(
lstm_cell_775_4693840:	2?$
lstm_cell_775_4693842:	?
identity??%lstm_cell_775/StatefulPartitionedCall?while;
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
%lstm_cell_775/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_775_4693838lstm_cell_775_4693840lstm_cell_775_4693842*
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4693792n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_775_4693838lstm_cell_775_4693840lstm_cell_775_4693842*
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
while_body_4693851*
condR
while_cond_4693850*K
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
NoOpNoOp&^lstm_cell_775/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_775/StatefulPartitionedCall%lstm_cell_775/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_774_layer_call_fn_4698298

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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4693442o
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
?
*__inference_lstm_586_layer_call_fn_4697024
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4693729|
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
*__inference_lstm_585_layer_call_fn_4696419
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4693570|
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
?T
?
*sequential_195_lstm_587_while_body_4693139L
Hsequential_195_lstm_587_while_sequential_195_lstm_587_while_loop_counterR
Nsequential_195_lstm_587_while_sequential_195_lstm_587_while_maximum_iterations-
)sequential_195_lstm_587_while_placeholder/
+sequential_195_lstm_587_while_placeholder_1/
+sequential_195_lstm_587_while_placeholder_2/
+sequential_195_lstm_587_while_placeholder_3K
Gsequential_195_lstm_587_while_sequential_195_lstm_587_strided_slice_1_0?
?sequential_195_lstm_587_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_587_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_195_lstm_587_while_lstm_cell_776_matmul_readvariableop_resource_0:2(`
Nsequential_195_lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource_0:
([
Msequential_195_lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource_0:(*
&sequential_195_lstm_587_while_identity,
(sequential_195_lstm_587_while_identity_1,
(sequential_195_lstm_587_while_identity_2,
(sequential_195_lstm_587_while_identity_3,
(sequential_195_lstm_587_while_identity_4,
(sequential_195_lstm_587_while_identity_5I
Esequential_195_lstm_587_while_sequential_195_lstm_587_strided_slice_1?
?sequential_195_lstm_587_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_587_tensorarrayunstack_tensorlistfromtensor\
Jsequential_195_lstm_587_while_lstm_cell_776_matmul_readvariableop_resource:2(^
Lsequential_195_lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource:
(Y
Ksequential_195_lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource:(??Bsequential_195/lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp?Asequential_195/lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp?Csequential_195/lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp?
Osequential_195/lstm_587/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_195/lstm_587/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_195_lstm_587_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_587_tensorarrayunstack_tensorlistfromtensor_0)sequential_195_lstm_587_while_placeholderXsequential_195/lstm_587/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_195/lstm_587/while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOpLsequential_195_lstm_587_while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_195/lstm_587/while/lstm_cell_776/MatMulMatMulHsequential_195/lstm_587/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_195/lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_195/lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOpNsequential_195_lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_195/lstm_587/while/lstm_cell_776/MatMul_1MatMul+sequential_195_lstm_587_while_placeholder_2Ksequential_195/lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_195/lstm_587/while/lstm_cell_776/addAddV2<sequential_195/lstm_587/while/lstm_cell_776/MatMul:product:0>sequential_195/lstm_587/while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_195/lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOpMsequential_195_lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_195/lstm_587/while/lstm_cell_776/BiasAddBiasAdd3sequential_195/lstm_587/while/lstm_cell_776/add:z:0Jsequential_195/lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_195/lstm_587/while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_195/lstm_587/while/lstm_cell_776/splitSplitDsequential_195/lstm_587/while/lstm_cell_776/split/split_dim:output:0<sequential_195/lstm_587/while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_195/lstm_587/while/lstm_cell_776/SigmoidSigmoid:sequential_195/lstm_587/while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_195/lstm_587/while/lstm_cell_776/Sigmoid_1Sigmoid:sequential_195/lstm_587/while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_195/lstm_587/while/lstm_cell_776/mulMul9sequential_195/lstm_587/while/lstm_cell_776/Sigmoid_1:y:0+sequential_195_lstm_587_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_195/lstm_587/while/lstm_cell_776/ReluRelu:sequential_195/lstm_587/while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_195/lstm_587/while/lstm_cell_776/mul_1Mul7sequential_195/lstm_587/while/lstm_cell_776/Sigmoid:y:0>sequential_195/lstm_587/while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_195/lstm_587/while/lstm_cell_776/add_1AddV23sequential_195/lstm_587/while/lstm_cell_776/mul:z:05sequential_195/lstm_587/while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_195/lstm_587/while/lstm_cell_776/Sigmoid_2Sigmoid:sequential_195/lstm_587/while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_195/lstm_587/while/lstm_cell_776/Relu_1Relu5sequential_195/lstm_587/while/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_195/lstm_587/while/lstm_cell_776/mul_2Mul9sequential_195/lstm_587/while/lstm_cell_776/Sigmoid_2:y:0@sequential_195/lstm_587/while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_195/lstm_587/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_195_lstm_587_while_placeholder_1)sequential_195_lstm_587_while_placeholder5sequential_195/lstm_587/while/lstm_cell_776/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_195/lstm_587/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_195/lstm_587/while/addAddV2)sequential_195_lstm_587_while_placeholder,sequential_195/lstm_587/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_195/lstm_587/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_195/lstm_587/while/add_1AddV2Hsequential_195_lstm_587_while_sequential_195_lstm_587_while_loop_counter.sequential_195/lstm_587/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_195/lstm_587/while/IdentityIdentity'sequential_195/lstm_587/while/add_1:z:0#^sequential_195/lstm_587/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_587/while/Identity_1IdentityNsequential_195_lstm_587_while_sequential_195_lstm_587_while_maximum_iterations#^sequential_195/lstm_587/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_587/while/Identity_2Identity%sequential_195/lstm_587/while/add:z:0#^sequential_195/lstm_587/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_587/while/Identity_3IdentityRsequential_195/lstm_587/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_195/lstm_587/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_587/while/Identity_4Identity5sequential_195/lstm_587/while/lstm_cell_776/mul_2:z:0#^sequential_195/lstm_587/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_195/lstm_587/while/Identity_5Identity5sequential_195/lstm_587/while/lstm_cell_776/add_1:z:0#^sequential_195/lstm_587/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_195/lstm_587/while/NoOpNoOpC^sequential_195/lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOpB^sequential_195/lstm_587/while/lstm_cell_776/MatMul/ReadVariableOpD^sequential_195/lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_195_lstm_587_while_identity/sequential_195/lstm_587/while/Identity:output:0"]
(sequential_195_lstm_587_while_identity_11sequential_195/lstm_587/while/Identity_1:output:0"]
(sequential_195_lstm_587_while_identity_21sequential_195/lstm_587/while/Identity_2:output:0"]
(sequential_195_lstm_587_while_identity_31sequential_195/lstm_587/while/Identity_3:output:0"]
(sequential_195_lstm_587_while_identity_41sequential_195/lstm_587/while/Identity_4:output:0"]
(sequential_195_lstm_587_while_identity_51sequential_195/lstm_587/while/Identity_5:output:0"?
Ksequential_195_lstm_587_while_lstm_cell_776_biasadd_readvariableop_resourceMsequential_195_lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource_0"?
Lsequential_195_lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resourceNsequential_195_lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource_0"?
Jsequential_195_lstm_587_while_lstm_cell_776_matmul_readvariableop_resourceLsequential_195_lstm_587_while_lstm_cell_776_matmul_readvariableop_resource_0"?
Esequential_195_lstm_587_while_sequential_195_lstm_587_strided_slice_1Gsequential_195_lstm_587_while_sequential_195_lstm_587_strided_slice_1_0"?
?sequential_195_lstm_587_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_587_tensorarrayunstack_tensorlistfromtensor?sequential_195_lstm_587_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_587_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_195/lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOpBsequential_195/lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp2?
Asequential_195/lstm_587/while/lstm_cell_776/MatMul/ReadVariableOpAsequential_195/lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp2?
Csequential_195/lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOpCsequential_195/lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4697875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_587_layer_call_fn_4697662

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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694728o
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
while_cond_4696642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4696642___redundant_placeholder05
1while_while_cond_4696642___redundant_placeholder15
1while_while_cond_4696642___redundant_placeholder25
1while_while_cond_4696642___redundant_placeholder3
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
while_cond_4698160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4698160___redundant_placeholder05
1while_while_cond_4698160___redundant_placeholder15
1while_while_cond_4698160___redundant_placeholder25
1while_while_cond_4698160___redundant_placeholder3
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
while_body_4697545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4698558

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
0__inference_sequential_195_layer_call_fn_4694778
lstm_585_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_585_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_195_layer_call_and_return_conditional_losses_4694753o
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
_user_specified_namelstm_585_input
?
?
/__inference_lstm_cell_775_layer_call_fn_4698379

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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4693646o
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4696870

inputs?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4696786*
condR
while_cond_4696785*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4693659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4693659___redundant_placeholder05
1while_while_cond_4693659___redundant_placeholder15
1while_while_cond_4693659___redundant_placeholder25
1while_while_cond_4693659___redundant_placeholder3
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4693379

inputs(
lstm_cell_774_4693297:	?(
lstm_cell_774_4693299:	d?$
lstm_cell_774_4693301:	?
identity??%lstm_cell_774/StatefulPartitionedCall?while;
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
%lstm_cell_774/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_774_4693297lstm_cell_774_4693299lstm_cell_774_4693301*
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4693296n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_774_4693297lstm_cell_774_4693299lstm_cell_774_4693301*
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
while_body_4693310*
condR
while_cond_4693309*K
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
NoOpNoOp&^lstm_cell_774/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_774/StatefulPartitionedCall%lstm_cell_774/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_4694201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_776_4694225_0:2(/
while_lstm_cell_776_4694227_0:
(+
while_lstm_cell_776_4694229_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_776_4694225:2(-
while_lstm_cell_776_4694227:
()
while_lstm_cell_776_4694229:(??+while/lstm_cell_776/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_776/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_776_4694225_0while_lstm_cell_776_4694227_0while_lstm_cell_776_4694229_0*
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4694142?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_776/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_776/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_776/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_776/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_776_4694225while_lstm_cell_776_4694225_0"<
while_lstm_cell_776_4694227while_lstm_cell_776_4694227_0"<
while_lstm_cell_776_4694229while_lstm_cell_776_4694229_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_776/StatefulPartitionedCall+while/lstm_cell_776/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_586_layer_call_fn_4697057

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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4695109s
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
?J
?
E__inference_lstm_585_layer_call_and_return_conditional_losses_4694428

inputs?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4694344*
condR
while_cond_4694343*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_587_while_cond_4696306.
*lstm_587_while_lstm_587_while_loop_counter4
0lstm_587_while_lstm_587_while_maximum_iterations
lstm_587_while_placeholder 
lstm_587_while_placeholder_1 
lstm_587_while_placeholder_2 
lstm_587_while_placeholder_30
,lstm_587_while_less_lstm_587_strided_slice_1G
Clstm_587_while_lstm_587_while_cond_4696306___redundant_placeholder0G
Clstm_587_while_lstm_587_while_cond_4696306___redundant_placeholder1G
Clstm_587_while_lstm_587_while_cond_4696306___redundant_placeholder2G
Clstm_587_while_lstm_587_while_cond_4696306___redundant_placeholder3
lstm_587_while_identity
?
lstm_587/while/LessLesslstm_587_while_placeholder,lstm_587_while_less_lstm_587_strided_slice_1*
T0*
_output_shapes
: ]
lstm_587/while/IdentityIdentitylstm_587/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_587_while_identity lstm_587/while/Identity:output:0*(
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
lstm_585_while_cond_4695601.
*lstm_585_while_lstm_585_while_loop_counter4
0lstm_585_while_lstm_585_while_maximum_iterations
lstm_585_while_placeholder 
lstm_585_while_placeholder_1 
lstm_585_while_placeholder_2 
lstm_585_while_placeholder_30
,lstm_585_while_less_lstm_585_strided_slice_1G
Clstm_585_while_lstm_585_while_cond_4695601___redundant_placeholder0G
Clstm_585_while_lstm_585_while_cond_4695601___redundant_placeholder1G
Clstm_585_while_lstm_585_while_cond_4695601___redundant_placeholder2G
Clstm_585_while_lstm_585_while_cond_4695601___redundant_placeholder3
lstm_585_while_identity
?
lstm_585/while/LessLesslstm_585_while_placeholder,lstm_585_while_less_lstm_585_strided_slice_1*
T0*
_output_shapes
: ]
lstm_585/while/IdentityIdentitylstm_585/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_585_while_identity lstm_585/while/Identity:output:0*(
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
?T
?
*sequential_195_lstm_585_while_body_4692861L
Hsequential_195_lstm_585_while_sequential_195_lstm_585_while_loop_counterR
Nsequential_195_lstm_585_while_sequential_195_lstm_585_while_maximum_iterations-
)sequential_195_lstm_585_while_placeholder/
+sequential_195_lstm_585_while_placeholder_1/
+sequential_195_lstm_585_while_placeholder_2/
+sequential_195_lstm_585_while_placeholder_3K
Gsequential_195_lstm_585_while_sequential_195_lstm_585_strided_slice_1_0?
?sequential_195_lstm_585_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_585_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_195_lstm_585_while_lstm_cell_774_matmul_readvariableop_resource_0:	?a
Nsequential_195_lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?\
Msequential_195_lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource_0:	?*
&sequential_195_lstm_585_while_identity,
(sequential_195_lstm_585_while_identity_1,
(sequential_195_lstm_585_while_identity_2,
(sequential_195_lstm_585_while_identity_3,
(sequential_195_lstm_585_while_identity_4,
(sequential_195_lstm_585_while_identity_5I
Esequential_195_lstm_585_while_sequential_195_lstm_585_strided_slice_1?
?sequential_195_lstm_585_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_585_tensorarrayunstack_tensorlistfromtensor]
Jsequential_195_lstm_585_while_lstm_cell_774_matmul_readvariableop_resource:	?_
Lsequential_195_lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource:	d?Z
Ksequential_195_lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource:	???Bsequential_195/lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp?Asequential_195/lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp?Csequential_195/lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp?
Osequential_195/lstm_585/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_195/lstm_585/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_195_lstm_585_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_585_tensorarrayunstack_tensorlistfromtensor_0)sequential_195_lstm_585_while_placeholderXsequential_195/lstm_585/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_195/lstm_585/while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOpLsequential_195_lstm_585_while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_195/lstm_585/while/lstm_cell_774/MatMulMatMulHsequential_195/lstm_585/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_195/lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_195/lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOpNsequential_195_lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_195/lstm_585/while/lstm_cell_774/MatMul_1MatMul+sequential_195_lstm_585_while_placeholder_2Ksequential_195/lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_195/lstm_585/while/lstm_cell_774/addAddV2<sequential_195/lstm_585/while/lstm_cell_774/MatMul:product:0>sequential_195/lstm_585/while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_195/lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOpMsequential_195_lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_195/lstm_585/while/lstm_cell_774/BiasAddBiasAdd3sequential_195/lstm_585/while/lstm_cell_774/add:z:0Jsequential_195/lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_195/lstm_585/while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_195/lstm_585/while/lstm_cell_774/splitSplitDsequential_195/lstm_585/while/lstm_cell_774/split/split_dim:output:0<sequential_195/lstm_585/while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_195/lstm_585/while/lstm_cell_774/SigmoidSigmoid:sequential_195/lstm_585/while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_195/lstm_585/while/lstm_cell_774/Sigmoid_1Sigmoid:sequential_195/lstm_585/while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_195/lstm_585/while/lstm_cell_774/mulMul9sequential_195/lstm_585/while/lstm_cell_774/Sigmoid_1:y:0+sequential_195_lstm_585_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_195/lstm_585/while/lstm_cell_774/ReluRelu:sequential_195/lstm_585/while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_195/lstm_585/while/lstm_cell_774/mul_1Mul7sequential_195/lstm_585/while/lstm_cell_774/Sigmoid:y:0>sequential_195/lstm_585/while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_195/lstm_585/while/lstm_cell_774/add_1AddV23sequential_195/lstm_585/while/lstm_cell_774/mul:z:05sequential_195/lstm_585/while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_195/lstm_585/while/lstm_cell_774/Sigmoid_2Sigmoid:sequential_195/lstm_585/while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_195/lstm_585/while/lstm_cell_774/Relu_1Relu5sequential_195/lstm_585/while/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_195/lstm_585/while/lstm_cell_774/mul_2Mul9sequential_195/lstm_585/while/lstm_cell_774/Sigmoid_2:y:0@sequential_195/lstm_585/while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_195/lstm_585/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_195_lstm_585_while_placeholder_1)sequential_195_lstm_585_while_placeholder5sequential_195/lstm_585/while/lstm_cell_774/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_195/lstm_585/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_195/lstm_585/while/addAddV2)sequential_195_lstm_585_while_placeholder,sequential_195/lstm_585/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_195/lstm_585/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_195/lstm_585/while/add_1AddV2Hsequential_195_lstm_585_while_sequential_195_lstm_585_while_loop_counter.sequential_195/lstm_585/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_195/lstm_585/while/IdentityIdentity'sequential_195/lstm_585/while/add_1:z:0#^sequential_195/lstm_585/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_585/while/Identity_1IdentityNsequential_195_lstm_585_while_sequential_195_lstm_585_while_maximum_iterations#^sequential_195/lstm_585/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_585/while/Identity_2Identity%sequential_195/lstm_585/while/add:z:0#^sequential_195/lstm_585/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_585/while/Identity_3IdentityRsequential_195/lstm_585/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_195/lstm_585/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_585/while/Identity_4Identity5sequential_195/lstm_585/while/lstm_cell_774/mul_2:z:0#^sequential_195/lstm_585/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_195/lstm_585/while/Identity_5Identity5sequential_195/lstm_585/while/lstm_cell_774/add_1:z:0#^sequential_195/lstm_585/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_195/lstm_585/while/NoOpNoOpC^sequential_195/lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOpB^sequential_195/lstm_585/while/lstm_cell_774/MatMul/ReadVariableOpD^sequential_195/lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_195_lstm_585_while_identity/sequential_195/lstm_585/while/Identity:output:0"]
(sequential_195_lstm_585_while_identity_11sequential_195/lstm_585/while/Identity_1:output:0"]
(sequential_195_lstm_585_while_identity_21sequential_195/lstm_585/while/Identity_2:output:0"]
(sequential_195_lstm_585_while_identity_31sequential_195/lstm_585/while/Identity_3:output:0"]
(sequential_195_lstm_585_while_identity_41sequential_195/lstm_585/while/Identity_4:output:0"]
(sequential_195_lstm_585_while_identity_51sequential_195/lstm_585/while/Identity_5:output:0"?
Ksequential_195_lstm_585_while_lstm_cell_774_biasadd_readvariableop_resourceMsequential_195_lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource_0"?
Lsequential_195_lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resourceNsequential_195_lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource_0"?
Jsequential_195_lstm_585_while_lstm_cell_774_matmul_readvariableop_resourceLsequential_195_lstm_585_while_lstm_cell_774_matmul_readvariableop_resource_0"?
Esequential_195_lstm_585_while_sequential_195_lstm_585_strided_slice_1Gsequential_195_lstm_585_while_sequential_195_lstm_585_strided_slice_1_0"?
?sequential_195_lstm_585_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_585_tensorarrayunstack_tensorlistfromtensor?sequential_195_lstm_585_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_585_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_195/lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOpBsequential_195/lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp2?
Asequential_195/lstm_585/while/lstm_cell_774/MatMul/ReadVariableOpAsequential_195/lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp2?
Csequential_195/lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOpCsequential_195/lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_585_while_body_4696029.
*lstm_585_while_lstm_585_while_loop_counter4
0lstm_585_while_lstm_585_while_maximum_iterations
lstm_585_while_placeholder 
lstm_585_while_placeholder_1 
lstm_585_while_placeholder_2 
lstm_585_while_placeholder_3-
)lstm_585_while_lstm_585_strided_slice_1_0i
elstm_585_while_tensorarrayv2read_tensorlistgetitem_lstm_585_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_585_while_lstm_cell_774_matmul_readvariableop_resource_0:	?R
?lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?M
>lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
lstm_585_while_identity
lstm_585_while_identity_1
lstm_585_while_identity_2
lstm_585_while_identity_3
lstm_585_while_identity_4
lstm_585_while_identity_5+
'lstm_585_while_lstm_585_strided_slice_1g
clstm_585_while_tensorarrayv2read_tensorlistgetitem_lstm_585_tensorarrayunstack_tensorlistfromtensorN
;lstm_585_while_lstm_cell_774_matmul_readvariableop_resource:	?P
=lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource:	d?K
<lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource:	???3lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp?2lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp?4lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp?
@lstm_585/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_585/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_585_while_tensorarrayv2read_tensorlistgetitem_lstm_585_tensorarrayunstack_tensorlistfromtensor_0lstm_585_while_placeholderIlstm_585/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_585/while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp=lstm_585_while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_585/while/lstm_cell_774/MatMulMatMul9lstm_585/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp?lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_585/while/lstm_cell_774/MatMul_1MatMullstm_585_while_placeholder_2<lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_585/while/lstm_cell_774/addAddV2-lstm_585/while/lstm_cell_774/MatMul:product:0/lstm_585/while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp>lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_585/while/lstm_cell_774/BiasAddBiasAdd$lstm_585/while/lstm_cell_774/add:z:0;lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_585/while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_585/while/lstm_cell_774/splitSplit5lstm_585/while/lstm_cell_774/split/split_dim:output:0-lstm_585/while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_585/while/lstm_cell_774/SigmoidSigmoid+lstm_585/while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_585/while/lstm_cell_774/Sigmoid_1Sigmoid+lstm_585/while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_585/while/lstm_cell_774/mulMul*lstm_585/while/lstm_cell_774/Sigmoid_1:y:0lstm_585_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_585/while/lstm_cell_774/ReluRelu+lstm_585/while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_585/while/lstm_cell_774/mul_1Mul(lstm_585/while/lstm_cell_774/Sigmoid:y:0/lstm_585/while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_585/while/lstm_cell_774/add_1AddV2$lstm_585/while/lstm_cell_774/mul:z:0&lstm_585/while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_585/while/lstm_cell_774/Sigmoid_2Sigmoid+lstm_585/while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_585/while/lstm_cell_774/Relu_1Relu&lstm_585/while/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_585/while/lstm_cell_774/mul_2Mul*lstm_585/while/lstm_cell_774/Sigmoid_2:y:01lstm_585/while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_585/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_585_while_placeholder_1lstm_585_while_placeholder&lstm_585/while/lstm_cell_774/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_585/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_585/while/addAddV2lstm_585_while_placeholderlstm_585/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_585/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_585/while/add_1AddV2*lstm_585_while_lstm_585_while_loop_counterlstm_585/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_585/while/IdentityIdentitylstm_585/while/add_1:z:0^lstm_585/while/NoOp*
T0*
_output_shapes
: ?
lstm_585/while/Identity_1Identity0lstm_585_while_lstm_585_while_maximum_iterations^lstm_585/while/NoOp*
T0*
_output_shapes
: t
lstm_585/while/Identity_2Identitylstm_585/while/add:z:0^lstm_585/while/NoOp*
T0*
_output_shapes
: ?
lstm_585/while/Identity_3IdentityClstm_585/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_585/while/NoOp*
T0*
_output_shapes
: ?
lstm_585/while/Identity_4Identity&lstm_585/while/lstm_cell_774/mul_2:z:0^lstm_585/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_585/while/Identity_5Identity&lstm_585/while/lstm_cell_774/add_1:z:0^lstm_585/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_585/while/NoOpNoOp4^lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp3^lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp5^lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_585_while_identity lstm_585/while/Identity:output:0"?
lstm_585_while_identity_1"lstm_585/while/Identity_1:output:0"?
lstm_585_while_identity_2"lstm_585/while/Identity_2:output:0"?
lstm_585_while_identity_3"lstm_585/while/Identity_3:output:0"?
lstm_585_while_identity_4"lstm_585/while/Identity_4:output:0"?
lstm_585_while_identity_5"lstm_585/while/Identity_5:output:0"T
'lstm_585_while_lstm_585_strided_slice_1)lstm_585_while_lstm_585_strided_slice_1_0"~
<lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource>lstm_585_while_lstm_cell_774_biasadd_readvariableop_resource_0"?
=lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource?lstm_585_while_lstm_cell_774_matmul_1_readvariableop_resource_0"|
;lstm_585_while_lstm_cell_774_matmul_readvariableop_resource=lstm_585_while_lstm_cell_774_matmul_readvariableop_resource_0"?
clstm_585_while_tensorarrayv2read_tensorlistgetitem_lstm_585_tensorarrayunstack_tensorlistfromtensorelstm_585_while_tensorarrayv2read_tensorlistgetitem_lstm_585_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp3lstm_585/while/lstm_cell_774/BiasAdd/ReadVariableOp2h
2lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp2lstm_585/while/lstm_cell_774/MatMul/ReadVariableOp2l
4lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp4lstm_585/while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4694493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4694493___redundant_placeholder05
1while_while_cond_4694493___redundant_placeholder15
1while_while_cond_4694493___redundant_placeholder25
1while_while_cond_4694493___redundant_placeholder3
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

lstm_587_while_body_4695880.
*lstm_587_while_lstm_587_while_loop_counter4
0lstm_587_while_lstm_587_while_maximum_iterations
lstm_587_while_placeholder 
lstm_587_while_placeholder_1 
lstm_587_while_placeholder_2 
lstm_587_while_placeholder_3-
)lstm_587_while_lstm_587_strided_slice_1_0i
elstm_587_while_tensorarrayv2read_tensorlistgetitem_lstm_587_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_587_while_lstm_cell_776_matmul_readvariableop_resource_0:2(Q
?lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(L
>lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource_0:(
lstm_587_while_identity
lstm_587_while_identity_1
lstm_587_while_identity_2
lstm_587_while_identity_3
lstm_587_while_identity_4
lstm_587_while_identity_5+
'lstm_587_while_lstm_587_strided_slice_1g
clstm_587_while_tensorarrayv2read_tensorlistgetitem_lstm_587_tensorarrayunstack_tensorlistfromtensorM
;lstm_587_while_lstm_cell_776_matmul_readvariableop_resource:2(O
=lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource:
(J
<lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource:(??3lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp?2lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp?4lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp?
@lstm_587/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_587/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_587_while_tensorarrayv2read_tensorlistgetitem_lstm_587_tensorarrayunstack_tensorlistfromtensor_0lstm_587_while_placeholderIlstm_587/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_587/while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp=lstm_587_while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_587/while/lstm_cell_776/MatMulMatMul9lstm_587/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp?lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_587/while/lstm_cell_776/MatMul_1MatMullstm_587_while_placeholder_2<lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_587/while/lstm_cell_776/addAddV2-lstm_587/while/lstm_cell_776/MatMul:product:0/lstm_587/while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp>lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_587/while/lstm_cell_776/BiasAddBiasAdd$lstm_587/while/lstm_cell_776/add:z:0;lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_587/while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_587/while/lstm_cell_776/splitSplit5lstm_587/while/lstm_cell_776/split/split_dim:output:0-lstm_587/while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_587/while/lstm_cell_776/SigmoidSigmoid+lstm_587/while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_587/while/lstm_cell_776/Sigmoid_1Sigmoid+lstm_587/while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_587/while/lstm_cell_776/mulMul*lstm_587/while/lstm_cell_776/Sigmoid_1:y:0lstm_587_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_587/while/lstm_cell_776/ReluRelu+lstm_587/while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_587/while/lstm_cell_776/mul_1Mul(lstm_587/while/lstm_cell_776/Sigmoid:y:0/lstm_587/while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_587/while/lstm_cell_776/add_1AddV2$lstm_587/while/lstm_cell_776/mul:z:0&lstm_587/while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_587/while/lstm_cell_776/Sigmoid_2Sigmoid+lstm_587/while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_587/while/lstm_cell_776/Relu_1Relu&lstm_587/while/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_587/while/lstm_cell_776/mul_2Mul*lstm_587/while/lstm_cell_776/Sigmoid_2:y:01lstm_587/while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_587/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_587_while_placeholder_1lstm_587_while_placeholder&lstm_587/while/lstm_cell_776/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_587/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_587/while/addAddV2lstm_587_while_placeholderlstm_587/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_587/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_587/while/add_1AddV2*lstm_587_while_lstm_587_while_loop_counterlstm_587/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_587/while/IdentityIdentitylstm_587/while/add_1:z:0^lstm_587/while/NoOp*
T0*
_output_shapes
: ?
lstm_587/while/Identity_1Identity0lstm_587_while_lstm_587_while_maximum_iterations^lstm_587/while/NoOp*
T0*
_output_shapes
: t
lstm_587/while/Identity_2Identitylstm_587/while/add:z:0^lstm_587/while/NoOp*
T0*
_output_shapes
: ?
lstm_587/while/Identity_3IdentityClstm_587/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_587/while/NoOp*
T0*
_output_shapes
: ?
lstm_587/while/Identity_4Identity&lstm_587/while/lstm_cell_776/mul_2:z:0^lstm_587/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_587/while/Identity_5Identity&lstm_587/while/lstm_cell_776/add_1:z:0^lstm_587/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_587/while/NoOpNoOp4^lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp3^lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp5^lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_587_while_identity lstm_587/while/Identity:output:0"?
lstm_587_while_identity_1"lstm_587/while/Identity_1:output:0"?
lstm_587_while_identity_2"lstm_587/while/Identity_2:output:0"?
lstm_587_while_identity_3"lstm_587/while/Identity_3:output:0"?
lstm_587_while_identity_4"lstm_587/while/Identity_4:output:0"?
lstm_587_while_identity_5"lstm_587/while/Identity_5:output:0"T
'lstm_587_while_lstm_587_strided_slice_1)lstm_587_while_lstm_587_strided_slice_1_0"~
<lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource>lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource_0"?
=lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource?lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource_0"|
;lstm_587_while_lstm_cell_776_matmul_readvariableop_resource=lstm_587_while_lstm_cell_776_matmul_readvariableop_resource_0"?
clstm_587_while_tensorarrayv2read_tensorlistgetitem_lstm_587_tensorarrayunstack_tensorlistfromtensorelstm_587_while_tensorarrayv2read_tensorlistgetitem_lstm_587_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp3lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp2h
2lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp2lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp2l
4lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp4lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4696786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694079

inputs'
lstm_cell_776_4693997:2('
lstm_cell_776_4693999:
(#
lstm_cell_776_4694001:(
identity??%lstm_cell_776/StatefulPartitionedCall?while;
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
%lstm_cell_776/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_776_4693997lstm_cell_776_4693999lstm_cell_776_4694001*
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4693996n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_776_4693997lstm_cell_776_4693999lstm_cell_776_4694001*
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
while_body_4694010*
condR
while_cond_4694009*K
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
NoOpNoOp&^lstm_cell_776/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_776/StatefulPartitionedCall%lstm_cell_776/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4693309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4693309___redundant_placeholder05
1while_while_cond_4693309___redundant_placeholder15
1while_while_cond_4693309___redundant_placeholder25
1while_while_cond_4693309___redundant_placeholder3
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
while_cond_4696928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4696928___redundant_placeholder05
1while_while_cond_4696928___redundant_placeholder15
1while_while_cond_4696928___redundant_placeholder25
1while_while_cond_4696928___redundant_placeholder3
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4698245

inputs>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4698161*
condR
while_cond_4698160*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_585_layer_call_fn_4696441

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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4695274s
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4698102

inputs>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4698018*
condR
while_cond_4698017*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4698017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4698017___redundant_placeholder05
1while_while_cond_4698017___redundant_placeholder15
1while_while_cond_4698017___redundant_placeholder25
1while_while_cond_4698017___redundant_placeholder3
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
0__inference_sequential_195_layer_call_fn_4695543

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
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695342o
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4697013

inputs?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4696929*
condR
while_cond_4696928*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695454
lstm_585_input#
lstm_585_4695427:	?#
lstm_585_4695429:	d?
lstm_585_4695431:	?#
lstm_586_4695434:	d?#
lstm_586_4695436:	2?
lstm_586_4695438:	?"
lstm_587_4695441:2("
lstm_587_4695443:
(
lstm_587_4695445:(#
dense_195_4695448:

dense_195_4695450:
identity??!dense_195/StatefulPartitionedCall? lstm_585/StatefulPartitionedCall? lstm_586/StatefulPartitionedCall? lstm_587/StatefulPartitionedCall?
 lstm_585/StatefulPartitionedCallStatefulPartitionedCalllstm_585_inputlstm_585_4695427lstm_585_4695429lstm_585_4695431*
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4695274?
 lstm_586/StatefulPartitionedCallStatefulPartitionedCall)lstm_585/StatefulPartitionedCall:output:0lstm_586_4695434lstm_586_4695436lstm_586_4695438*
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4695109?
 lstm_587/StatefulPartitionedCallStatefulPartitionedCall)lstm_586/StatefulPartitionedCall:output:0lstm_587_4695441lstm_587_4695443lstm_587_4695445*
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694944?
!dense_195/StatefulPartitionedCallStatefulPartitionedCall)lstm_587/StatefulPartitionedCall:output:0dense_195_4695448dense_195_4695450*
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
F__inference_dense_195_layer_call_and_return_conditional_losses_4694746y
IdentityIdentity*dense_195/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_195/StatefulPartitionedCall!^lstm_585/StatefulPartitionedCall!^lstm_586/StatefulPartitionedCall!^lstm_587/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_195/StatefulPartitionedCall!dense_195/StatefulPartitionedCall2D
 lstm_585/StatefulPartitionedCall lstm_585/StatefulPartitionedCall2D
 lstm_586/StatefulPartitionedCall lstm_586/StatefulPartitionedCall2D
 lstm_587/StatefulPartitionedCall lstm_587/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_585_input
?8
?
while_body_4694860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_585_while_cond_4696028.
*lstm_585_while_lstm_585_while_loop_counter4
0lstm_585_while_lstm_585_while_maximum_iterations
lstm_585_while_placeholder 
lstm_585_while_placeholder_1 
lstm_585_while_placeholder_2 
lstm_585_while_placeholder_30
,lstm_585_while_less_lstm_585_strided_slice_1G
Clstm_585_while_lstm_585_while_cond_4696028___redundant_placeholder0G
Clstm_585_while_lstm_585_while_cond_4696028___redundant_placeholder1G
Clstm_585_while_lstm_585_while_cond_4696028___redundant_placeholder2G
Clstm_585_while_lstm_585_while_cond_4696028___redundant_placeholder3
lstm_585_while_identity
?
lstm_585/while/LessLesslstm_585_while_placeholder,lstm_585_while_less_lstm_585_strided_slice_1*
T0*
_output_shapes
: ]
lstm_585/while/IdentityIdentitylstm_585/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_585_while_identity lstm_585/while/Identity:output:0*(
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
while_body_4694010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_776_4694034_0:2(/
while_lstm_cell_776_4694036_0:
(+
while_lstm_cell_776_4694038_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_776_4694034:2(-
while_lstm_cell_776_4694036:
()
while_lstm_cell_776_4694038:(??+while/lstm_cell_776/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_776/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_776_4694034_0while_lstm_cell_776_4694036_0while_lstm_cell_776_4694038_0*
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4693996?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_776/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_776/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_776/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_776/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_776_4694034while_lstm_cell_776_4694034_0"<
while_lstm_cell_776_4694036while_lstm_cell_776_4694036_0"<
while_lstm_cell_776_4694038while_lstm_cell_776_4694038_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_776/StatefulPartitionedCall+while/lstm_cell_776/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_774_layer_call_fn_4698281

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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4693296o
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4697959
inputs_0>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4697875*
condR
while_cond_4697874*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_4698018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_195_layer_call_and_return_conditional_losses_4698264

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
while_cond_4697874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4697874___redundant_placeholder05
1while_while_cond_4697874___redundant_placeholder15
1while_while_cond_4697874___redundant_placeholder25
1while_while_cond_4697874___redundant_placeholder3
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
lstm_587_while_cond_4695879.
*lstm_587_while_lstm_587_while_loop_counter4
0lstm_587_while_lstm_587_while_maximum_iterations
lstm_587_while_placeholder 
lstm_587_while_placeholder_1 
lstm_587_while_placeholder_2 
lstm_587_while_placeholder_30
,lstm_587_while_less_lstm_587_strided_slice_1G
Clstm_587_while_lstm_587_while_cond_4695879___redundant_placeholder0G
Clstm_587_while_lstm_587_while_cond_4695879___redundant_placeholder1G
Clstm_587_while_lstm_587_while_cond_4695879___redundant_placeholder2G
Clstm_587_while_lstm_587_while_cond_4695879___redundant_placeholder3
lstm_587_while_identity
?
lstm_587/while/LessLesslstm_587_while_placeholder,lstm_587_while_less_lstm_587_strided_slice_1*
T0*
_output_shapes
: ]
lstm_587/while/IdentityIdentitylstm_587/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_587_while_identity lstm_587/while/Identity:output:0*(
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4698362

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
while_cond_4693850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4693850___redundant_placeholder05
1while_while_cond_4693850___redundant_placeholder15
1while_while_cond_4693850___redundant_placeholder25
1while_while_cond_4693850___redundant_placeholder3
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
*__inference_lstm_587_layer_call_fn_4697673

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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694944o
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
while_cond_4694009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4694009___redundant_placeholder05
1while_while_cond_4694009___redundant_placeholder15
1while_while_cond_4694009___redundant_placeholder25
1while_while_cond_4694009___redundant_placeholder3
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
while_body_4694644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4694200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4694200___redundant_placeholder05
1while_while_cond_4694200___redundant_placeholder15
1while_while_cond_4694200___redundant_placeholder25
1while_while_cond_4694200___redundant_placeholder3
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
while_cond_4697401
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4697401___redundant_placeholder05
1while_while_cond_4697401___redundant_placeholder15
1while_while_cond_4697401___redundant_placeholder25
1while_while_cond_4697401___redundant_placeholder3
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
"__inference__wrapped_model_4693229
lstm_585_inputW
Dsequential_195_lstm_585_lstm_cell_774_matmul_readvariableop_resource:	?Y
Fsequential_195_lstm_585_lstm_cell_774_matmul_1_readvariableop_resource:	d?T
Esequential_195_lstm_585_lstm_cell_774_biasadd_readvariableop_resource:	?W
Dsequential_195_lstm_586_lstm_cell_775_matmul_readvariableop_resource:	d?Y
Fsequential_195_lstm_586_lstm_cell_775_matmul_1_readvariableop_resource:	2?T
Esequential_195_lstm_586_lstm_cell_775_biasadd_readvariableop_resource:	?V
Dsequential_195_lstm_587_lstm_cell_776_matmul_readvariableop_resource:2(X
Fsequential_195_lstm_587_lstm_cell_776_matmul_1_readvariableop_resource:
(S
Esequential_195_lstm_587_lstm_cell_776_biasadd_readvariableop_resource:(I
7sequential_195_dense_195_matmul_readvariableop_resource:
F
8sequential_195_dense_195_biasadd_readvariableop_resource:
identity??/sequential_195/dense_195/BiasAdd/ReadVariableOp?.sequential_195/dense_195/MatMul/ReadVariableOp?<sequential_195/lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp?;sequential_195/lstm_585/lstm_cell_774/MatMul/ReadVariableOp?=sequential_195/lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp?sequential_195/lstm_585/while?<sequential_195/lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp?;sequential_195/lstm_586/lstm_cell_775/MatMul/ReadVariableOp?=sequential_195/lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp?sequential_195/lstm_586/while?<sequential_195/lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp?;sequential_195/lstm_587/lstm_cell_776/MatMul/ReadVariableOp?=sequential_195/lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp?sequential_195/lstm_587/while[
sequential_195/lstm_585/ShapeShapelstm_585_input*
T0*
_output_shapes
:u
+sequential_195/lstm_585/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_195/lstm_585/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_195/lstm_585/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_195/lstm_585/strided_sliceStridedSlice&sequential_195/lstm_585/Shape:output:04sequential_195/lstm_585/strided_slice/stack:output:06sequential_195/lstm_585/strided_slice/stack_1:output:06sequential_195/lstm_585/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_195/lstm_585/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_195/lstm_585/zeros/packedPack.sequential_195/lstm_585/strided_slice:output:0/sequential_195/lstm_585/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_195/lstm_585/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_195/lstm_585/zerosFill-sequential_195/lstm_585/zeros/packed:output:0,sequential_195/lstm_585/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_195/lstm_585/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_195/lstm_585/zeros_1/packedPack.sequential_195/lstm_585/strided_slice:output:01sequential_195/lstm_585/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_195/lstm_585/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_195/lstm_585/zeros_1Fill/sequential_195/lstm_585/zeros_1/packed:output:0.sequential_195/lstm_585/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_195/lstm_585/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_195/lstm_585/transpose	Transposelstm_585_input/sequential_195/lstm_585/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_195/lstm_585/Shape_1Shape%sequential_195/lstm_585/transpose:y:0*
T0*
_output_shapes
:w
-sequential_195/lstm_585/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_195/lstm_585/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_195/lstm_585/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_195/lstm_585/strided_slice_1StridedSlice(sequential_195/lstm_585/Shape_1:output:06sequential_195/lstm_585/strided_slice_1/stack:output:08sequential_195/lstm_585/strided_slice_1/stack_1:output:08sequential_195/lstm_585/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_195/lstm_585/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_195/lstm_585/TensorArrayV2TensorListReserve<sequential_195/lstm_585/TensorArrayV2/element_shape:output:00sequential_195/lstm_585/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_195/lstm_585/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_195/lstm_585/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_195/lstm_585/transpose:y:0Vsequential_195/lstm_585/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_195/lstm_585/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_195/lstm_585/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_195/lstm_585/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_195/lstm_585/strided_slice_2StridedSlice%sequential_195/lstm_585/transpose:y:06sequential_195/lstm_585/strided_slice_2/stack:output:08sequential_195/lstm_585/strided_slice_2/stack_1:output:08sequential_195/lstm_585/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_195/lstm_585/lstm_cell_774/MatMul/ReadVariableOpReadVariableOpDsequential_195_lstm_585_lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_195/lstm_585/lstm_cell_774/MatMulMatMul0sequential_195/lstm_585/strided_slice_2:output:0Csequential_195/lstm_585/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_195/lstm_585/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOpFsequential_195_lstm_585_lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_195/lstm_585/lstm_cell_774/MatMul_1MatMul&sequential_195/lstm_585/zeros:output:0Esequential_195/lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_195/lstm_585/lstm_cell_774/addAddV26sequential_195/lstm_585/lstm_cell_774/MatMul:product:08sequential_195/lstm_585/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_195/lstm_585/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOpEsequential_195_lstm_585_lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_195/lstm_585/lstm_cell_774/BiasAddBiasAdd-sequential_195/lstm_585/lstm_cell_774/add:z:0Dsequential_195/lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_195/lstm_585/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_195/lstm_585/lstm_cell_774/splitSplit>sequential_195/lstm_585/lstm_cell_774/split/split_dim:output:06sequential_195/lstm_585/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_195/lstm_585/lstm_cell_774/SigmoidSigmoid4sequential_195/lstm_585/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_195/lstm_585/lstm_cell_774/Sigmoid_1Sigmoid4sequential_195/lstm_585/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_195/lstm_585/lstm_cell_774/mulMul3sequential_195/lstm_585/lstm_cell_774/Sigmoid_1:y:0(sequential_195/lstm_585/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_195/lstm_585/lstm_cell_774/ReluRelu4sequential_195/lstm_585/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_195/lstm_585/lstm_cell_774/mul_1Mul1sequential_195/lstm_585/lstm_cell_774/Sigmoid:y:08sequential_195/lstm_585/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_195/lstm_585/lstm_cell_774/add_1AddV2-sequential_195/lstm_585/lstm_cell_774/mul:z:0/sequential_195/lstm_585/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_195/lstm_585/lstm_cell_774/Sigmoid_2Sigmoid4sequential_195/lstm_585/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_195/lstm_585/lstm_cell_774/Relu_1Relu/sequential_195/lstm_585/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_195/lstm_585/lstm_cell_774/mul_2Mul3sequential_195/lstm_585/lstm_cell_774/Sigmoid_2:y:0:sequential_195/lstm_585/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_195/lstm_585/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_195/lstm_585/TensorArrayV2_1TensorListReserve>sequential_195/lstm_585/TensorArrayV2_1/element_shape:output:00sequential_195/lstm_585/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_195/lstm_585/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_195/lstm_585/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_195/lstm_585/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_195/lstm_585/whileWhile3sequential_195/lstm_585/while/loop_counter:output:09sequential_195/lstm_585/while/maximum_iterations:output:0%sequential_195/lstm_585/time:output:00sequential_195/lstm_585/TensorArrayV2_1:handle:0&sequential_195/lstm_585/zeros:output:0(sequential_195/lstm_585/zeros_1:output:00sequential_195/lstm_585/strided_slice_1:output:0Osequential_195/lstm_585/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_195_lstm_585_lstm_cell_774_matmul_readvariableop_resourceFsequential_195_lstm_585_lstm_cell_774_matmul_1_readvariableop_resourceEsequential_195_lstm_585_lstm_cell_774_biasadd_readvariableop_resource*
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
*sequential_195_lstm_585_while_body_4692861*6
cond.R,
*sequential_195_lstm_585_while_cond_4692860*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_195/lstm_585/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_195/lstm_585/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_195/lstm_585/while:output:3Qsequential_195/lstm_585/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_195/lstm_585/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_195/lstm_585/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_195/lstm_585/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_195/lstm_585/strided_slice_3StridedSliceCsequential_195/lstm_585/TensorArrayV2Stack/TensorListStack:tensor:06sequential_195/lstm_585/strided_slice_3/stack:output:08sequential_195/lstm_585/strided_slice_3/stack_1:output:08sequential_195/lstm_585/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_195/lstm_585/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_195/lstm_585/transpose_1	TransposeCsequential_195/lstm_585/TensorArrayV2Stack/TensorListStack:tensor:01sequential_195/lstm_585/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_195/lstm_585/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_195/lstm_586/ShapeShape'sequential_195/lstm_585/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_195/lstm_586/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_195/lstm_586/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_195/lstm_586/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_195/lstm_586/strided_sliceStridedSlice&sequential_195/lstm_586/Shape:output:04sequential_195/lstm_586/strided_slice/stack:output:06sequential_195/lstm_586/strided_slice/stack_1:output:06sequential_195/lstm_586/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_195/lstm_586/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_195/lstm_586/zeros/packedPack.sequential_195/lstm_586/strided_slice:output:0/sequential_195/lstm_586/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_195/lstm_586/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_195/lstm_586/zerosFill-sequential_195/lstm_586/zeros/packed:output:0,sequential_195/lstm_586/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_195/lstm_586/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_195/lstm_586/zeros_1/packedPack.sequential_195/lstm_586/strided_slice:output:01sequential_195/lstm_586/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_195/lstm_586/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_195/lstm_586/zeros_1Fill/sequential_195/lstm_586/zeros_1/packed:output:0.sequential_195/lstm_586/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_195/lstm_586/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_195/lstm_586/transpose	Transpose'sequential_195/lstm_585/transpose_1:y:0/sequential_195/lstm_586/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_195/lstm_586/Shape_1Shape%sequential_195/lstm_586/transpose:y:0*
T0*
_output_shapes
:w
-sequential_195/lstm_586/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_195/lstm_586/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_195/lstm_586/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_195/lstm_586/strided_slice_1StridedSlice(sequential_195/lstm_586/Shape_1:output:06sequential_195/lstm_586/strided_slice_1/stack:output:08sequential_195/lstm_586/strided_slice_1/stack_1:output:08sequential_195/lstm_586/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_195/lstm_586/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_195/lstm_586/TensorArrayV2TensorListReserve<sequential_195/lstm_586/TensorArrayV2/element_shape:output:00sequential_195/lstm_586/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_195/lstm_586/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_195/lstm_586/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_195/lstm_586/transpose:y:0Vsequential_195/lstm_586/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_195/lstm_586/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_195/lstm_586/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_195/lstm_586/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_195/lstm_586/strided_slice_2StridedSlice%sequential_195/lstm_586/transpose:y:06sequential_195/lstm_586/strided_slice_2/stack:output:08sequential_195/lstm_586/strided_slice_2/stack_1:output:08sequential_195/lstm_586/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_195/lstm_586/lstm_cell_775/MatMul/ReadVariableOpReadVariableOpDsequential_195_lstm_586_lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_195/lstm_586/lstm_cell_775/MatMulMatMul0sequential_195/lstm_586/strided_slice_2:output:0Csequential_195/lstm_586/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_195/lstm_586/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOpFsequential_195_lstm_586_lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_195/lstm_586/lstm_cell_775/MatMul_1MatMul&sequential_195/lstm_586/zeros:output:0Esequential_195/lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_195/lstm_586/lstm_cell_775/addAddV26sequential_195/lstm_586/lstm_cell_775/MatMul:product:08sequential_195/lstm_586/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_195/lstm_586/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOpEsequential_195_lstm_586_lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_195/lstm_586/lstm_cell_775/BiasAddBiasAdd-sequential_195/lstm_586/lstm_cell_775/add:z:0Dsequential_195/lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_195/lstm_586/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_195/lstm_586/lstm_cell_775/splitSplit>sequential_195/lstm_586/lstm_cell_775/split/split_dim:output:06sequential_195/lstm_586/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_195/lstm_586/lstm_cell_775/SigmoidSigmoid4sequential_195/lstm_586/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_195/lstm_586/lstm_cell_775/Sigmoid_1Sigmoid4sequential_195/lstm_586/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_195/lstm_586/lstm_cell_775/mulMul3sequential_195/lstm_586/lstm_cell_775/Sigmoid_1:y:0(sequential_195/lstm_586/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_195/lstm_586/lstm_cell_775/ReluRelu4sequential_195/lstm_586/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_195/lstm_586/lstm_cell_775/mul_1Mul1sequential_195/lstm_586/lstm_cell_775/Sigmoid:y:08sequential_195/lstm_586/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_195/lstm_586/lstm_cell_775/add_1AddV2-sequential_195/lstm_586/lstm_cell_775/mul:z:0/sequential_195/lstm_586/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_195/lstm_586/lstm_cell_775/Sigmoid_2Sigmoid4sequential_195/lstm_586/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_195/lstm_586/lstm_cell_775/Relu_1Relu/sequential_195/lstm_586/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_195/lstm_586/lstm_cell_775/mul_2Mul3sequential_195/lstm_586/lstm_cell_775/Sigmoid_2:y:0:sequential_195/lstm_586/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_195/lstm_586/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_195/lstm_586/TensorArrayV2_1TensorListReserve>sequential_195/lstm_586/TensorArrayV2_1/element_shape:output:00sequential_195/lstm_586/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_195/lstm_586/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_195/lstm_586/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_195/lstm_586/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_195/lstm_586/whileWhile3sequential_195/lstm_586/while/loop_counter:output:09sequential_195/lstm_586/while/maximum_iterations:output:0%sequential_195/lstm_586/time:output:00sequential_195/lstm_586/TensorArrayV2_1:handle:0&sequential_195/lstm_586/zeros:output:0(sequential_195/lstm_586/zeros_1:output:00sequential_195/lstm_586/strided_slice_1:output:0Osequential_195/lstm_586/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_195_lstm_586_lstm_cell_775_matmul_readvariableop_resourceFsequential_195_lstm_586_lstm_cell_775_matmul_1_readvariableop_resourceEsequential_195_lstm_586_lstm_cell_775_biasadd_readvariableop_resource*
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
*sequential_195_lstm_586_while_body_4693000*6
cond.R,
*sequential_195_lstm_586_while_cond_4692999*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_195/lstm_586/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_195/lstm_586/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_195/lstm_586/while:output:3Qsequential_195/lstm_586/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_195/lstm_586/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_195/lstm_586/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_195/lstm_586/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_195/lstm_586/strided_slice_3StridedSliceCsequential_195/lstm_586/TensorArrayV2Stack/TensorListStack:tensor:06sequential_195/lstm_586/strided_slice_3/stack:output:08sequential_195/lstm_586/strided_slice_3/stack_1:output:08sequential_195/lstm_586/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_195/lstm_586/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_195/lstm_586/transpose_1	TransposeCsequential_195/lstm_586/TensorArrayV2Stack/TensorListStack:tensor:01sequential_195/lstm_586/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_195/lstm_586/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_195/lstm_587/ShapeShape'sequential_195/lstm_586/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_195/lstm_587/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_195/lstm_587/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_195/lstm_587/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_195/lstm_587/strided_sliceStridedSlice&sequential_195/lstm_587/Shape:output:04sequential_195/lstm_587/strided_slice/stack:output:06sequential_195/lstm_587/strided_slice/stack_1:output:06sequential_195/lstm_587/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_195/lstm_587/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_195/lstm_587/zeros/packedPack.sequential_195/lstm_587/strided_slice:output:0/sequential_195/lstm_587/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_195/lstm_587/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_195/lstm_587/zerosFill-sequential_195/lstm_587/zeros/packed:output:0,sequential_195/lstm_587/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_195/lstm_587/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_195/lstm_587/zeros_1/packedPack.sequential_195/lstm_587/strided_slice:output:01sequential_195/lstm_587/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_195/lstm_587/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_195/lstm_587/zeros_1Fill/sequential_195/lstm_587/zeros_1/packed:output:0.sequential_195/lstm_587/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_195/lstm_587/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_195/lstm_587/transpose	Transpose'sequential_195/lstm_586/transpose_1:y:0/sequential_195/lstm_587/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_195/lstm_587/Shape_1Shape%sequential_195/lstm_587/transpose:y:0*
T0*
_output_shapes
:w
-sequential_195/lstm_587/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_195/lstm_587/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_195/lstm_587/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_195/lstm_587/strided_slice_1StridedSlice(sequential_195/lstm_587/Shape_1:output:06sequential_195/lstm_587/strided_slice_1/stack:output:08sequential_195/lstm_587/strided_slice_1/stack_1:output:08sequential_195/lstm_587/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_195/lstm_587/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_195/lstm_587/TensorArrayV2TensorListReserve<sequential_195/lstm_587/TensorArrayV2/element_shape:output:00sequential_195/lstm_587/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_195/lstm_587/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_195/lstm_587/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_195/lstm_587/transpose:y:0Vsequential_195/lstm_587/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_195/lstm_587/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_195/lstm_587/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_195/lstm_587/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_195/lstm_587/strided_slice_2StridedSlice%sequential_195/lstm_587/transpose:y:06sequential_195/lstm_587/strided_slice_2/stack:output:08sequential_195/lstm_587/strided_slice_2/stack_1:output:08sequential_195/lstm_587/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_195/lstm_587/lstm_cell_776/MatMul/ReadVariableOpReadVariableOpDsequential_195_lstm_587_lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_195/lstm_587/lstm_cell_776/MatMulMatMul0sequential_195/lstm_587/strided_slice_2:output:0Csequential_195/lstm_587/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_195/lstm_587/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOpFsequential_195_lstm_587_lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_195/lstm_587/lstm_cell_776/MatMul_1MatMul&sequential_195/lstm_587/zeros:output:0Esequential_195/lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_195/lstm_587/lstm_cell_776/addAddV26sequential_195/lstm_587/lstm_cell_776/MatMul:product:08sequential_195/lstm_587/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_195/lstm_587/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOpEsequential_195_lstm_587_lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_195/lstm_587/lstm_cell_776/BiasAddBiasAdd-sequential_195/lstm_587/lstm_cell_776/add:z:0Dsequential_195/lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_195/lstm_587/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_195/lstm_587/lstm_cell_776/splitSplit>sequential_195/lstm_587/lstm_cell_776/split/split_dim:output:06sequential_195/lstm_587/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_195/lstm_587/lstm_cell_776/SigmoidSigmoid4sequential_195/lstm_587/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_195/lstm_587/lstm_cell_776/Sigmoid_1Sigmoid4sequential_195/lstm_587/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_195/lstm_587/lstm_cell_776/mulMul3sequential_195/lstm_587/lstm_cell_776/Sigmoid_1:y:0(sequential_195/lstm_587/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_195/lstm_587/lstm_cell_776/ReluRelu4sequential_195/lstm_587/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_195/lstm_587/lstm_cell_776/mul_1Mul1sequential_195/lstm_587/lstm_cell_776/Sigmoid:y:08sequential_195/lstm_587/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_195/lstm_587/lstm_cell_776/add_1AddV2-sequential_195/lstm_587/lstm_cell_776/mul:z:0/sequential_195/lstm_587/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_195/lstm_587/lstm_cell_776/Sigmoid_2Sigmoid4sequential_195/lstm_587/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_195/lstm_587/lstm_cell_776/Relu_1Relu/sequential_195/lstm_587/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_195/lstm_587/lstm_cell_776/mul_2Mul3sequential_195/lstm_587/lstm_cell_776/Sigmoid_2:y:0:sequential_195/lstm_587/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_195/lstm_587/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_195/lstm_587/TensorArrayV2_1TensorListReserve>sequential_195/lstm_587/TensorArrayV2_1/element_shape:output:00sequential_195/lstm_587/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_195/lstm_587/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_195/lstm_587/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_195/lstm_587/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_195/lstm_587/whileWhile3sequential_195/lstm_587/while/loop_counter:output:09sequential_195/lstm_587/while/maximum_iterations:output:0%sequential_195/lstm_587/time:output:00sequential_195/lstm_587/TensorArrayV2_1:handle:0&sequential_195/lstm_587/zeros:output:0(sequential_195/lstm_587/zeros_1:output:00sequential_195/lstm_587/strided_slice_1:output:0Osequential_195/lstm_587/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_195_lstm_587_lstm_cell_776_matmul_readvariableop_resourceFsequential_195_lstm_587_lstm_cell_776_matmul_1_readvariableop_resourceEsequential_195_lstm_587_lstm_cell_776_biasadd_readvariableop_resource*
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
*sequential_195_lstm_587_while_body_4693139*6
cond.R,
*sequential_195_lstm_587_while_cond_4693138*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_195/lstm_587/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_195/lstm_587/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_195/lstm_587/while:output:3Qsequential_195/lstm_587/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_195/lstm_587/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_195/lstm_587/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_195/lstm_587/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_195/lstm_587/strided_slice_3StridedSliceCsequential_195/lstm_587/TensorArrayV2Stack/TensorListStack:tensor:06sequential_195/lstm_587/strided_slice_3/stack:output:08sequential_195/lstm_587/strided_slice_3/stack_1:output:08sequential_195/lstm_587/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_195/lstm_587/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_195/lstm_587/transpose_1	TransposeCsequential_195/lstm_587/TensorArrayV2Stack/TensorListStack:tensor:01sequential_195/lstm_587/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_195/lstm_587/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_195/dense_195/MatMul/ReadVariableOpReadVariableOp7sequential_195_dense_195_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_195/dense_195/MatMulMatMul0sequential_195/lstm_587/strided_slice_3:output:06sequential_195/dense_195/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_195/dense_195/BiasAdd/ReadVariableOpReadVariableOp8sequential_195_dense_195_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_195/dense_195/BiasAddBiasAdd)sequential_195/dense_195/MatMul:product:07sequential_195/dense_195/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_195/dense_195/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_195/dense_195/BiasAdd/ReadVariableOp/^sequential_195/dense_195/MatMul/ReadVariableOp=^sequential_195/lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp<^sequential_195/lstm_585/lstm_cell_774/MatMul/ReadVariableOp>^sequential_195/lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp^sequential_195/lstm_585/while=^sequential_195/lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp<^sequential_195/lstm_586/lstm_cell_775/MatMul/ReadVariableOp>^sequential_195/lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp^sequential_195/lstm_586/while=^sequential_195/lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp<^sequential_195/lstm_587/lstm_cell_776/MatMul/ReadVariableOp>^sequential_195/lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp^sequential_195/lstm_587/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_195/dense_195/BiasAdd/ReadVariableOp/sequential_195/dense_195/BiasAdd/ReadVariableOp2`
.sequential_195/dense_195/MatMul/ReadVariableOp.sequential_195/dense_195/MatMul/ReadVariableOp2|
<sequential_195/lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp<sequential_195/lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp2z
;sequential_195/lstm_585/lstm_cell_774/MatMul/ReadVariableOp;sequential_195/lstm_585/lstm_cell_774/MatMul/ReadVariableOp2~
=sequential_195/lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp=sequential_195/lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp2>
sequential_195/lstm_585/whilesequential_195/lstm_585/while2|
<sequential_195/lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp<sequential_195/lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp2z
;sequential_195/lstm_586/lstm_cell_775/MatMul/ReadVariableOp;sequential_195/lstm_586/lstm_cell_775/MatMul/ReadVariableOp2~
=sequential_195/lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp=sequential_195/lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp2>
sequential_195/lstm_586/whilesequential_195/lstm_586/while2|
<sequential_195/lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp<sequential_195/lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp2z
;sequential_195/lstm_587/lstm_cell_776/MatMul/ReadVariableOp;sequential_195/lstm_587/lstm_cell_776/MatMul/ReadVariableOp2~
=sequential_195/lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp=sequential_195/lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp2>
sequential_195/lstm_587/whilesequential_195/lstm_587/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_585_input
?#
?
while_body_4693310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_774_4693334_0:	?0
while_lstm_cell_774_4693336_0:	d?,
while_lstm_cell_774_4693338_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_774_4693334:	?.
while_lstm_cell_774_4693336:	d?*
while_lstm_cell_774_4693338:	???+while/lstm_cell_774/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_774/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_774_4693334_0while_lstm_cell_774_4693336_0while_lstm_cell_774_4693338_0*
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4693296?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_774/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_774/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_774/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_774/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_774_4693334while_lstm_cell_774_4693334_0"<
while_lstm_cell_774_4693336while_lstm_cell_774_4693336_0"<
while_lstm_cell_774_4693338while_lstm_cell_774_4693338_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_774/StatefulPartitionedCall+while/lstm_cell_774/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_585_layer_call_fn_4696430

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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4694428s
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

?
lstm_586_while_cond_4695740.
*lstm_586_while_lstm_586_while_loop_counter4
0lstm_586_while_lstm_586_while_maximum_iterations
lstm_586_while_placeholder 
lstm_586_while_placeholder_1 
lstm_586_while_placeholder_2 
lstm_586_while_placeholder_30
,lstm_586_while_less_lstm_586_strided_slice_1G
Clstm_586_while_lstm_586_while_cond_4695740___redundant_placeholder0G
Clstm_586_while_lstm_586_while_cond_4695740___redundant_placeholder1G
Clstm_586_while_lstm_586_while_cond_4695740___redundant_placeholder2G
Clstm_586_while_lstm_586_while_cond_4695740___redundant_placeholder3
lstm_586_while_identity
?
lstm_586/while/LessLesslstm_586_while_placeholder,lstm_586_while_less_lstm_586_strided_slice_1*
T0*
_output_shapes
: ]
lstm_586/while/IdentityIdentitylstm_586/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_586_while_identity lstm_586/while/Identity:output:0*(
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697343
inputs_0?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4697259*
condR
while_cond_4697258*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697200
inputs_0?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4697116*
condR
while_cond_4697115*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4693646

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
?
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694270

inputs'
lstm_cell_776_4694188:2('
lstm_cell_776_4694190:
(#
lstm_cell_776_4694192:(
identity??%lstm_cell_776/StatefulPartitionedCall?while;
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
%lstm_cell_776/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_776_4694188lstm_cell_776_4694190lstm_cell_776_4694192*
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4694142n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_776_4694188lstm_cell_776_4694190lstm_cell_776_4694192*
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
while_body_4694201*
condR
while_cond_4694200*K
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
NoOpNoOp&^lstm_cell_776/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_776/StatefulPartitionedCall%lstm_cell_776/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4695189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4695189___redundant_placeholder05
1while_while_cond_4695189___redundant_placeholder15
1while_while_cond_4695189___redundant_placeholder25
1while_while_cond_4695189___redundant_placeholder3
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
while_body_4696500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4698161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4694142

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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4696727
inputs_0?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4696643*
condR
while_cond_4696642*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_587_layer_call_and_return_conditional_losses_4697816
inputs_0>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4697732*
condR
while_cond_4697731*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4693442

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
?
*sequential_195_lstm_585_while_cond_4692860L
Hsequential_195_lstm_585_while_sequential_195_lstm_585_while_loop_counterR
Nsequential_195_lstm_585_while_sequential_195_lstm_585_while_maximum_iterations-
)sequential_195_lstm_585_while_placeholder/
+sequential_195_lstm_585_while_placeholder_1/
+sequential_195_lstm_585_while_placeholder_2/
+sequential_195_lstm_585_while_placeholder_3N
Jsequential_195_lstm_585_while_less_sequential_195_lstm_585_strided_slice_1e
asequential_195_lstm_585_while_sequential_195_lstm_585_while_cond_4692860___redundant_placeholder0e
asequential_195_lstm_585_while_sequential_195_lstm_585_while_cond_4692860___redundant_placeholder1e
asequential_195_lstm_585_while_sequential_195_lstm_585_while_cond_4692860___redundant_placeholder2e
asequential_195_lstm_585_while_sequential_195_lstm_585_while_cond_4692860___redundant_placeholder3*
&sequential_195_lstm_585_while_identity
?
"sequential_195/lstm_585/while/LessLess)sequential_195_lstm_585_while_placeholderJsequential_195_lstm_585_while_less_sequential_195_lstm_585_strided_slice_1*
T0*
_output_shapes
: {
&sequential_195/lstm_585/while/IdentityIdentity&sequential_195/lstm_585/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_195_lstm_585_while_identity/sequential_195/lstm_585/while/Identity:output:0*(
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694728

inputs>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4694644*
condR
while_cond_4694643*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4697116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_587_layer_call_fn_4697651
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694270o
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
while_cond_4694859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4694859___redundant_placeholder05
1while_while_cond_4694859___redundant_placeholder15
1while_while_cond_4694859___redundant_placeholder25
1while_while_cond_4694859___redundant_placeholder3
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
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695424
lstm_585_input#
lstm_585_4695397:	?#
lstm_585_4695399:	d?
lstm_585_4695401:	?#
lstm_586_4695404:	d?#
lstm_586_4695406:	2?
lstm_586_4695408:	?"
lstm_587_4695411:2("
lstm_587_4695413:
(
lstm_587_4695415:(#
dense_195_4695418:

dense_195_4695420:
identity??!dense_195/StatefulPartitionedCall? lstm_585/StatefulPartitionedCall? lstm_586/StatefulPartitionedCall? lstm_587/StatefulPartitionedCall?
 lstm_585/StatefulPartitionedCallStatefulPartitionedCalllstm_585_inputlstm_585_4695397lstm_585_4695399lstm_585_4695401*
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4694428?
 lstm_586/StatefulPartitionedCallStatefulPartitionedCall)lstm_585/StatefulPartitionedCall:output:0lstm_586_4695404lstm_586_4695406lstm_586_4695408*
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4694578?
 lstm_587/StatefulPartitionedCallStatefulPartitionedCall)lstm_586/StatefulPartitionedCall:output:0lstm_587_4695411lstm_587_4695413lstm_587_4695415*
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694728?
!dense_195/StatefulPartitionedCallStatefulPartitionedCall)lstm_587/StatefulPartitionedCall:output:0dense_195_4695418dense_195_4695420*
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
F__inference_dense_195_layer_call_and_return_conditional_losses_4694746y
IdentityIdentity*dense_195/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_195/StatefulPartitionedCall!^lstm_585/StatefulPartitionedCall!^lstm_586/StatefulPartitionedCall!^lstm_587/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_195/StatefulPartitionedCall!dense_195/StatefulPartitionedCall2D
 lstm_585/StatefulPartitionedCall lstm_585/StatefulPartitionedCall2D
 lstm_586/StatefulPartitionedCall lstm_586/StatefulPartitionedCall2D
 lstm_587/StatefulPartitionedCall lstm_587/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_585_input
?
?
*__inference_lstm_587_layer_call_fn_4697640
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694079o
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4698460

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
?
?
K__inference_sequential_195_layer_call_and_return_conditional_losses_4694753

inputs#
lstm_585_4694429:	?#
lstm_585_4694431:	d?
lstm_585_4694433:	?#
lstm_586_4694579:	d?#
lstm_586_4694581:	2?
lstm_586_4694583:	?"
lstm_587_4694729:2("
lstm_587_4694731:
(
lstm_587_4694733:(#
dense_195_4694747:

dense_195_4694749:
identity??!dense_195/StatefulPartitionedCall? lstm_585/StatefulPartitionedCall? lstm_586/StatefulPartitionedCall? lstm_587/StatefulPartitionedCall?
 lstm_585/StatefulPartitionedCallStatefulPartitionedCallinputslstm_585_4694429lstm_585_4694431lstm_585_4694433*
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4694428?
 lstm_586/StatefulPartitionedCallStatefulPartitionedCall)lstm_585/StatefulPartitionedCall:output:0lstm_586_4694579lstm_586_4694581lstm_586_4694583*
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4694578?
 lstm_587/StatefulPartitionedCallStatefulPartitionedCall)lstm_586/StatefulPartitionedCall:output:0lstm_587_4694729lstm_587_4694731lstm_587_4694733*
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694728?
!dense_195/StatefulPartitionedCallStatefulPartitionedCall)lstm_587/StatefulPartitionedCall:output:0dense_195_4694747dense_195_4694749*
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
F__inference_dense_195_layer_call_and_return_conditional_losses_4694746y
IdentityIdentity*dense_195/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_195/StatefulPartitionedCall!^lstm_585/StatefulPartitionedCall!^lstm_586/StatefulPartitionedCall!^lstm_587/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_195/StatefulPartitionedCall!dense_195/StatefulPartitionedCall2D
 lstm_585/StatefulPartitionedCall lstm_585/StatefulPartitionedCall2D
 lstm_586/StatefulPartitionedCall lstm_586/StatefulPartitionedCall2D
 lstm_587/StatefulPartitionedCall lstm_587/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4696785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4696785___redundant_placeholder05
1while_while_cond_4696785___redundant_placeholder15
1while_while_cond_4696785___redundant_placeholder25
1while_while_cond_4696785___redundant_placeholder3
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
+__inference_dense_195_layer_call_fn_4698254

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
F__inference_dense_195_layer_call_and_return_conditional_losses_4694746o
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
while_body_4694494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4695274

inputs?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4695190*
condR
while_cond_4695189*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_195_lstm_586_while_body_4693000L
Hsequential_195_lstm_586_while_sequential_195_lstm_586_while_loop_counterR
Nsequential_195_lstm_586_while_sequential_195_lstm_586_while_maximum_iterations-
)sequential_195_lstm_586_while_placeholder/
+sequential_195_lstm_586_while_placeholder_1/
+sequential_195_lstm_586_while_placeholder_2/
+sequential_195_lstm_586_while_placeholder_3K
Gsequential_195_lstm_586_while_sequential_195_lstm_586_strided_slice_1_0?
?sequential_195_lstm_586_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_586_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_195_lstm_586_while_lstm_cell_775_matmul_readvariableop_resource_0:	d?a
Nsequential_195_lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?\
Msequential_195_lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource_0:	?*
&sequential_195_lstm_586_while_identity,
(sequential_195_lstm_586_while_identity_1,
(sequential_195_lstm_586_while_identity_2,
(sequential_195_lstm_586_while_identity_3,
(sequential_195_lstm_586_while_identity_4,
(sequential_195_lstm_586_while_identity_5I
Esequential_195_lstm_586_while_sequential_195_lstm_586_strided_slice_1?
?sequential_195_lstm_586_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_586_tensorarrayunstack_tensorlistfromtensor]
Jsequential_195_lstm_586_while_lstm_cell_775_matmul_readvariableop_resource:	d?_
Lsequential_195_lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource:	2?Z
Ksequential_195_lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource:	???Bsequential_195/lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp?Asequential_195/lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp?Csequential_195/lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp?
Osequential_195/lstm_586/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_195/lstm_586/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_195_lstm_586_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_586_tensorarrayunstack_tensorlistfromtensor_0)sequential_195_lstm_586_while_placeholderXsequential_195/lstm_586/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_195/lstm_586/while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOpLsequential_195_lstm_586_while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_195/lstm_586/while/lstm_cell_775/MatMulMatMulHsequential_195/lstm_586/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_195/lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_195/lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOpNsequential_195_lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_195/lstm_586/while/lstm_cell_775/MatMul_1MatMul+sequential_195_lstm_586_while_placeholder_2Ksequential_195/lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_195/lstm_586/while/lstm_cell_775/addAddV2<sequential_195/lstm_586/while/lstm_cell_775/MatMul:product:0>sequential_195/lstm_586/while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_195/lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOpMsequential_195_lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_195/lstm_586/while/lstm_cell_775/BiasAddBiasAdd3sequential_195/lstm_586/while/lstm_cell_775/add:z:0Jsequential_195/lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_195/lstm_586/while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_195/lstm_586/while/lstm_cell_775/splitSplitDsequential_195/lstm_586/while/lstm_cell_775/split/split_dim:output:0<sequential_195/lstm_586/while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_195/lstm_586/while/lstm_cell_775/SigmoidSigmoid:sequential_195/lstm_586/while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_195/lstm_586/while/lstm_cell_775/Sigmoid_1Sigmoid:sequential_195/lstm_586/while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_195/lstm_586/while/lstm_cell_775/mulMul9sequential_195/lstm_586/while/lstm_cell_775/Sigmoid_1:y:0+sequential_195_lstm_586_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_195/lstm_586/while/lstm_cell_775/ReluRelu:sequential_195/lstm_586/while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_195/lstm_586/while/lstm_cell_775/mul_1Mul7sequential_195/lstm_586/while/lstm_cell_775/Sigmoid:y:0>sequential_195/lstm_586/while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_195/lstm_586/while/lstm_cell_775/add_1AddV23sequential_195/lstm_586/while/lstm_cell_775/mul:z:05sequential_195/lstm_586/while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_195/lstm_586/while/lstm_cell_775/Sigmoid_2Sigmoid:sequential_195/lstm_586/while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_195/lstm_586/while/lstm_cell_775/Relu_1Relu5sequential_195/lstm_586/while/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_195/lstm_586/while/lstm_cell_775/mul_2Mul9sequential_195/lstm_586/while/lstm_cell_775/Sigmoid_2:y:0@sequential_195/lstm_586/while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_195/lstm_586/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_195_lstm_586_while_placeholder_1)sequential_195_lstm_586_while_placeholder5sequential_195/lstm_586/while/lstm_cell_775/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_195/lstm_586/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_195/lstm_586/while/addAddV2)sequential_195_lstm_586_while_placeholder,sequential_195/lstm_586/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_195/lstm_586/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_195/lstm_586/while/add_1AddV2Hsequential_195_lstm_586_while_sequential_195_lstm_586_while_loop_counter.sequential_195/lstm_586/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_195/lstm_586/while/IdentityIdentity'sequential_195/lstm_586/while/add_1:z:0#^sequential_195/lstm_586/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_586/while/Identity_1IdentityNsequential_195_lstm_586_while_sequential_195_lstm_586_while_maximum_iterations#^sequential_195/lstm_586/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_586/while/Identity_2Identity%sequential_195/lstm_586/while/add:z:0#^sequential_195/lstm_586/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_586/while/Identity_3IdentityRsequential_195/lstm_586/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_195/lstm_586/while/NoOp*
T0*
_output_shapes
: ?
(sequential_195/lstm_586/while/Identity_4Identity5sequential_195/lstm_586/while/lstm_cell_775/mul_2:z:0#^sequential_195/lstm_586/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_195/lstm_586/while/Identity_5Identity5sequential_195/lstm_586/while/lstm_cell_775/add_1:z:0#^sequential_195/lstm_586/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_195/lstm_586/while/NoOpNoOpC^sequential_195/lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOpB^sequential_195/lstm_586/while/lstm_cell_775/MatMul/ReadVariableOpD^sequential_195/lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_195_lstm_586_while_identity/sequential_195/lstm_586/while/Identity:output:0"]
(sequential_195_lstm_586_while_identity_11sequential_195/lstm_586/while/Identity_1:output:0"]
(sequential_195_lstm_586_while_identity_21sequential_195/lstm_586/while/Identity_2:output:0"]
(sequential_195_lstm_586_while_identity_31sequential_195/lstm_586/while/Identity_3:output:0"]
(sequential_195_lstm_586_while_identity_41sequential_195/lstm_586/while/Identity_4:output:0"]
(sequential_195_lstm_586_while_identity_51sequential_195/lstm_586/while/Identity_5:output:0"?
Ksequential_195_lstm_586_while_lstm_cell_775_biasadd_readvariableop_resourceMsequential_195_lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource_0"?
Lsequential_195_lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resourceNsequential_195_lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource_0"?
Jsequential_195_lstm_586_while_lstm_cell_775_matmul_readvariableop_resourceLsequential_195_lstm_586_while_lstm_cell_775_matmul_readvariableop_resource_0"?
Esequential_195_lstm_586_while_sequential_195_lstm_586_strided_slice_1Gsequential_195_lstm_586_while_sequential_195_lstm_586_strided_slice_1_0"?
?sequential_195_lstm_586_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_586_tensorarrayunstack_tensorlistfromtensor?sequential_195_lstm_586_while_tensorarrayv2read_tensorlistgetitem_sequential_195_lstm_586_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_195/lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOpBsequential_195/lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp2?
Asequential_195/lstm_586/while/lstm_cell_775/MatMul/ReadVariableOpAsequential_195/lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp2?
Csequential_195/lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOpCsequential_195/lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4696584
inputs_0?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4696500*
condR
while_cond_4696499*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4696643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4696929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4694344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4693792

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
?
E__inference_lstm_585_layer_call_and_return_conditional_losses_4693570

inputs(
lstm_cell_774_4693488:	?(
lstm_cell_774_4693490:	d?$
lstm_cell_774_4693492:	?
identity??%lstm_cell_774/StatefulPartitionedCall?while;
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
%lstm_cell_774/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_774_4693488lstm_cell_774_4693490lstm_cell_774_4693492*
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4693442n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_774_4693488lstm_cell_774_4693490lstm_cell_774_4693492*
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
while_body_4693501*
condR
while_cond_4693500*K
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
NoOpNoOp&^lstm_cell_774/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_774/StatefulPartitionedCall%lstm_cell_774/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_586_layer_call_and_return_conditional_losses_4694578

inputs?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4694494*
condR
while_cond_4694493*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695342

inputs#
lstm_585_4695315:	?#
lstm_585_4695317:	d?
lstm_585_4695319:	?#
lstm_586_4695322:	d?#
lstm_586_4695324:	2?
lstm_586_4695326:	?"
lstm_587_4695329:2("
lstm_587_4695331:
(
lstm_587_4695333:(#
dense_195_4695336:

dense_195_4695338:
identity??!dense_195/StatefulPartitionedCall? lstm_585/StatefulPartitionedCall? lstm_586/StatefulPartitionedCall? lstm_587/StatefulPartitionedCall?
 lstm_585/StatefulPartitionedCallStatefulPartitionedCallinputslstm_585_4695315lstm_585_4695317lstm_585_4695319*
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4695274?
 lstm_586/StatefulPartitionedCallStatefulPartitionedCall)lstm_585/StatefulPartitionedCall:output:0lstm_586_4695322lstm_586_4695324lstm_586_4695326*
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4695109?
 lstm_587/StatefulPartitionedCallStatefulPartitionedCall)lstm_586/StatefulPartitionedCall:output:0lstm_587_4695329lstm_587_4695331lstm_587_4695333*
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694944?
!dense_195/StatefulPartitionedCallStatefulPartitionedCall)lstm_587/StatefulPartitionedCall:output:0dense_195_4695336dense_195_4695338*
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
F__inference_dense_195_layer_call_and_return_conditional_losses_4694746y
IdentityIdentity*dense_195/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_195/StatefulPartitionedCall!^lstm_585/StatefulPartitionedCall!^lstm_586/StatefulPartitionedCall!^lstm_587/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_195/StatefulPartitionedCall!dense_195/StatefulPartitionedCall2D
 lstm_585/StatefulPartitionedCall lstm_585/StatefulPartitionedCall2D
 lstm_586/StatefulPartitionedCall lstm_586/StatefulPartitionedCall2D
 lstm_587/StatefulPartitionedCall lstm_587/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4698526

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
?
?
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4693296

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
?
*sequential_195_lstm_586_while_cond_4692999L
Hsequential_195_lstm_586_while_sequential_195_lstm_586_while_loop_counterR
Nsequential_195_lstm_586_while_sequential_195_lstm_586_while_maximum_iterations-
)sequential_195_lstm_586_while_placeholder/
+sequential_195_lstm_586_while_placeholder_1/
+sequential_195_lstm_586_while_placeholder_2/
+sequential_195_lstm_586_while_placeholder_3N
Jsequential_195_lstm_586_while_less_sequential_195_lstm_586_strided_slice_1e
asequential_195_lstm_586_while_sequential_195_lstm_586_while_cond_4692999___redundant_placeholder0e
asequential_195_lstm_586_while_sequential_195_lstm_586_while_cond_4692999___redundant_placeholder1e
asequential_195_lstm_586_while_sequential_195_lstm_586_while_cond_4692999___redundant_placeholder2e
asequential_195_lstm_586_while_sequential_195_lstm_586_while_cond_4692999___redundant_placeholder3*
&sequential_195_lstm_586_while_identity
?
"sequential_195/lstm_586/while/LessLess)sequential_195_lstm_586_while_placeholderJsequential_195_lstm_586_while_less_sequential_195_lstm_586_strided_slice_1*
T0*
_output_shapes
: {
&sequential_195/lstm_586/while/IdentityIdentity&sequential_195/lstm_586/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_195_lstm_586_while_identity/sequential_195/lstm_586/while/Identity:output:0*(
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4698330

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
/__inference_lstm_cell_775_layer_call_fn_4698396

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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4693792o
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
while_body_4697402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4698428

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
while_body_4693660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_775_4693684_0:	d?0
while_lstm_cell_775_4693686_0:	2?,
while_lstm_cell_775_4693688_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_775_4693684:	d?.
while_lstm_cell_775_4693686:	2?*
while_lstm_cell_775_4693688:	???+while/lstm_cell_775/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_775/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_775_4693684_0while_lstm_cell_775_4693686_0while_lstm_cell_775_4693688_0*
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4693646?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_775/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_775/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_775/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_775/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_775_4693684while_lstm_cell_775_4693684_0"<
while_lstm_cell_775_4693686while_lstm_cell_775_4693686_0"<
while_lstm_cell_775_4693688while_lstm_cell_775_4693688_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_775/StatefulPartitionedCall+while/lstm_cell_775/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_587_while_body_4696307.
*lstm_587_while_lstm_587_while_loop_counter4
0lstm_587_while_lstm_587_while_maximum_iterations
lstm_587_while_placeholder 
lstm_587_while_placeholder_1 
lstm_587_while_placeholder_2 
lstm_587_while_placeholder_3-
)lstm_587_while_lstm_587_strided_slice_1_0i
elstm_587_while_tensorarrayv2read_tensorlistgetitem_lstm_587_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_587_while_lstm_cell_776_matmul_readvariableop_resource_0:2(Q
?lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(L
>lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource_0:(
lstm_587_while_identity
lstm_587_while_identity_1
lstm_587_while_identity_2
lstm_587_while_identity_3
lstm_587_while_identity_4
lstm_587_while_identity_5+
'lstm_587_while_lstm_587_strided_slice_1g
clstm_587_while_tensorarrayv2read_tensorlistgetitem_lstm_587_tensorarrayunstack_tensorlistfromtensorM
;lstm_587_while_lstm_cell_776_matmul_readvariableop_resource:2(O
=lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource:
(J
<lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource:(??3lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp?2lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp?4lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp?
@lstm_587/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_587/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_587_while_tensorarrayv2read_tensorlistgetitem_lstm_587_tensorarrayunstack_tensorlistfromtensor_0lstm_587_while_placeholderIlstm_587/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_587/while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp=lstm_587_while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_587/while/lstm_cell_776/MatMulMatMul9lstm_587/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp?lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_587/while/lstm_cell_776/MatMul_1MatMullstm_587_while_placeholder_2<lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_587/while/lstm_cell_776/addAddV2-lstm_587/while/lstm_cell_776/MatMul:product:0/lstm_587/while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp>lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_587/while/lstm_cell_776/BiasAddBiasAdd$lstm_587/while/lstm_cell_776/add:z:0;lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_587/while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_587/while/lstm_cell_776/splitSplit5lstm_587/while/lstm_cell_776/split/split_dim:output:0-lstm_587/while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_587/while/lstm_cell_776/SigmoidSigmoid+lstm_587/while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_587/while/lstm_cell_776/Sigmoid_1Sigmoid+lstm_587/while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_587/while/lstm_cell_776/mulMul*lstm_587/while/lstm_cell_776/Sigmoid_1:y:0lstm_587_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_587/while/lstm_cell_776/ReluRelu+lstm_587/while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_587/while/lstm_cell_776/mul_1Mul(lstm_587/while/lstm_cell_776/Sigmoid:y:0/lstm_587/while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_587/while/lstm_cell_776/add_1AddV2$lstm_587/while/lstm_cell_776/mul:z:0&lstm_587/while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_587/while/lstm_cell_776/Sigmoid_2Sigmoid+lstm_587/while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_587/while/lstm_cell_776/Relu_1Relu&lstm_587/while/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_587/while/lstm_cell_776/mul_2Mul*lstm_587/while/lstm_cell_776/Sigmoid_2:y:01lstm_587/while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_587/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_587_while_placeholder_1lstm_587_while_placeholder&lstm_587/while/lstm_cell_776/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_587/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_587/while/addAddV2lstm_587_while_placeholderlstm_587/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_587/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_587/while/add_1AddV2*lstm_587_while_lstm_587_while_loop_counterlstm_587/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_587/while/IdentityIdentitylstm_587/while/add_1:z:0^lstm_587/while/NoOp*
T0*
_output_shapes
: ?
lstm_587/while/Identity_1Identity0lstm_587_while_lstm_587_while_maximum_iterations^lstm_587/while/NoOp*
T0*
_output_shapes
: t
lstm_587/while/Identity_2Identitylstm_587/while/add:z:0^lstm_587/while/NoOp*
T0*
_output_shapes
: ?
lstm_587/while/Identity_3IdentityClstm_587/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_587/while/NoOp*
T0*
_output_shapes
: ?
lstm_587/while/Identity_4Identity&lstm_587/while/lstm_cell_776/mul_2:z:0^lstm_587/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_587/while/Identity_5Identity&lstm_587/while/lstm_cell_776/add_1:z:0^lstm_587/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_587/while/NoOpNoOp4^lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp3^lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp5^lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_587_while_identity lstm_587/while/Identity:output:0"?
lstm_587_while_identity_1"lstm_587/while/Identity_1:output:0"?
lstm_587_while_identity_2"lstm_587/while/Identity_2:output:0"?
lstm_587_while_identity_3"lstm_587/while/Identity_3:output:0"?
lstm_587_while_identity_4"lstm_587/while/Identity_4:output:0"?
lstm_587_while_identity_5"lstm_587/while/Identity_5:output:0"T
'lstm_587_while_lstm_587_strided_slice_1)lstm_587_while_lstm_587_strided_slice_1_0"~
<lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource>lstm_587_while_lstm_cell_776_biasadd_readvariableop_resource_0"?
=lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource?lstm_587_while_lstm_cell_776_matmul_1_readvariableop_resource_0"|
;lstm_587_while_lstm_cell_776_matmul_readvariableop_resource=lstm_587_while_lstm_cell_776_matmul_readvariableop_resource_0"?
clstm_587_while_tensorarrayv2read_tensorlistgetitem_lstm_587_tensorarrayunstack_tensorlistfromtensorelstm_587_while_tensorarrayv2read_tensorlistgetitem_lstm_587_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp3lstm_587/while/lstm_cell_776/BiasAdd/ReadVariableOp2h
2lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp2lstm_587/while/lstm_cell_776/MatMul/ReadVariableOp2l
4lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp4lstm_587/while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_586_layer_call_fn_4697046

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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4694578s
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
lstm_586_while_cond_4696167.
*lstm_586_while_lstm_586_while_loop_counter4
0lstm_586_while_lstm_586_while_maximum_iterations
lstm_586_while_placeholder 
lstm_586_while_placeholder_1 
lstm_586_while_placeholder_2 
lstm_586_while_placeholder_30
,lstm_586_while_less_lstm_586_strided_slice_1G
Clstm_586_while_lstm_586_while_cond_4696167___redundant_placeholder0G
Clstm_586_while_lstm_586_while_cond_4696167___redundant_placeholder1G
Clstm_586_while_lstm_586_while_cond_4696167___redundant_placeholder2G
Clstm_586_while_lstm_586_while_cond_4696167___redundant_placeholder3
lstm_586_while_identity
?
lstm_586/while/LessLesslstm_586_while_placeholder,lstm_586_while_less_lstm_586_strided_slice_1*
T0*
_output_shapes
: ]
lstm_586/while/IdentityIdentitylstm_586/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_586_while_identity lstm_586/while/Identity:output:0*(
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
while_body_4695025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_195_layer_call_and_return_conditional_losses_4694746

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
*__inference_lstm_585_layer_call_fn_4696408
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4693379|
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
??
?
#__inference__traced_restore_4698831
file_prefix3
!assignvariableop_dense_195_kernel:
/
!assignvariableop_1_dense_195_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_585_lstm_cell_585_kernel:	?M
:assignvariableop_8_lstm_585_lstm_cell_585_recurrent_kernel:	d?=
.assignvariableop_9_lstm_585_lstm_cell_585_bias:	?D
1assignvariableop_10_lstm_586_lstm_cell_586_kernel:	d?N
;assignvariableop_11_lstm_586_lstm_cell_586_recurrent_kernel:	2?>
/assignvariableop_12_lstm_586_lstm_cell_586_bias:	?C
1assignvariableop_13_lstm_587_lstm_cell_587_kernel:2(M
;assignvariableop_14_lstm_587_lstm_cell_587_recurrent_kernel:
(=
/assignvariableop_15_lstm_587_lstm_cell_587_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_195_kernel_m:
7
)assignvariableop_19_adam_dense_195_bias_m:K
8assignvariableop_20_adam_lstm_585_lstm_cell_585_kernel_m:	?U
Bassignvariableop_21_adam_lstm_585_lstm_cell_585_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_585_lstm_cell_585_bias_m:	?K
8assignvariableop_23_adam_lstm_586_lstm_cell_586_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_586_lstm_cell_586_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_586_lstm_cell_586_bias_m:	?J
8assignvariableop_26_adam_lstm_587_lstm_cell_587_kernel_m:2(T
Bassignvariableop_27_adam_lstm_587_lstm_cell_587_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_587_lstm_cell_587_bias_m:(=
+assignvariableop_29_adam_dense_195_kernel_v:
7
)assignvariableop_30_adam_dense_195_bias_v:K
8assignvariableop_31_adam_lstm_585_lstm_cell_585_kernel_v:	?U
Bassignvariableop_32_adam_lstm_585_lstm_cell_585_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_585_lstm_cell_585_bias_v:	?K
8assignvariableop_34_adam_lstm_586_lstm_cell_586_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_586_lstm_cell_586_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_586_lstm_cell_586_bias_v:	?J
8assignvariableop_37_adam_lstm_587_lstm_cell_587_kernel_v:2(T
Bassignvariableop_38_adam_lstm_587_lstm_cell_587_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_587_lstm_cell_587_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_195_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_195_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_585_lstm_cell_585_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_585_lstm_cell_585_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_585_lstm_cell_585_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_586_lstm_cell_586_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_586_lstm_cell_586_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_586_lstm_cell_586_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_587_lstm_cell_587_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_587_lstm_cell_587_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_587_lstm_cell_587_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_195_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_195_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_585_lstm_cell_585_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_585_lstm_cell_585_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_585_lstm_cell_585_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_586_lstm_cell_586_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_586_lstm_cell_586_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_586_lstm_cell_586_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_587_lstm_cell_587_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_587_lstm_cell_587_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_587_lstm_cell_587_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_195_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_195_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_585_lstm_cell_585_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_585_lstm_cell_585_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_585_lstm_cell_585_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_586_lstm_cell_586_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_586_lstm_cell_586_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_586_lstm_cell_586_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_587_lstm_cell_587_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_587_lstm_cell_587_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_587_lstm_cell_587_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_4694643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4694643___redundant_placeholder05
1while_while_cond_4694643___redundant_placeholder15
1while_while_cond_4694643___redundant_placeholder25
1while_while_cond_4694643___redundant_placeholder3
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
while_cond_4695024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4695024___redundant_placeholder05
1while_while_cond_4695024___redundant_placeholder15
1while_while_cond_4695024___redundant_placeholder25
1while_while_cond_4695024___redundant_placeholder3
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
*__inference_lstm_586_layer_call_fn_4697035
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4693920|
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697486

inputs?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4697402*
condR
while_cond_4697401*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4695190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_776_layer_call_fn_4698494

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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4694142o
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
while_cond_4693500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4693500___redundant_placeholder05
1while_while_cond_4693500___redundant_placeholder15
1while_while_cond_4693500___redundant_placeholder25
1while_while_cond_4693500___redundant_placeholder3
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

lstm_586_while_body_4696168.
*lstm_586_while_lstm_586_while_loop_counter4
0lstm_586_while_lstm_586_while_maximum_iterations
lstm_586_while_placeholder 
lstm_586_while_placeholder_1 
lstm_586_while_placeholder_2 
lstm_586_while_placeholder_3-
)lstm_586_while_lstm_586_strided_slice_1_0i
elstm_586_while_tensorarrayv2read_tensorlistgetitem_lstm_586_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_586_while_lstm_cell_775_matmul_readvariableop_resource_0:	d?R
?lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?M
>lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
lstm_586_while_identity
lstm_586_while_identity_1
lstm_586_while_identity_2
lstm_586_while_identity_3
lstm_586_while_identity_4
lstm_586_while_identity_5+
'lstm_586_while_lstm_586_strided_slice_1g
clstm_586_while_tensorarrayv2read_tensorlistgetitem_lstm_586_tensorarrayunstack_tensorlistfromtensorN
;lstm_586_while_lstm_cell_775_matmul_readvariableop_resource:	d?P
=lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource:	2?K
<lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource:	???3lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp?2lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp?4lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp?
@lstm_586/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_586/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_586_while_tensorarrayv2read_tensorlistgetitem_lstm_586_tensorarrayunstack_tensorlistfromtensor_0lstm_586_while_placeholderIlstm_586/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_586/while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp=lstm_586_while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_586/while/lstm_cell_775/MatMulMatMul9lstm_586/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp?lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_586/while/lstm_cell_775/MatMul_1MatMullstm_586_while_placeholder_2<lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_586/while/lstm_cell_775/addAddV2-lstm_586/while/lstm_cell_775/MatMul:product:0/lstm_586/while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp>lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_586/while/lstm_cell_775/BiasAddBiasAdd$lstm_586/while/lstm_cell_775/add:z:0;lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_586/while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_586/while/lstm_cell_775/splitSplit5lstm_586/while/lstm_cell_775/split/split_dim:output:0-lstm_586/while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_586/while/lstm_cell_775/SigmoidSigmoid+lstm_586/while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_586/while/lstm_cell_775/Sigmoid_1Sigmoid+lstm_586/while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_586/while/lstm_cell_775/mulMul*lstm_586/while/lstm_cell_775/Sigmoid_1:y:0lstm_586_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_586/while/lstm_cell_775/ReluRelu+lstm_586/while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_586/while/lstm_cell_775/mul_1Mul(lstm_586/while/lstm_cell_775/Sigmoid:y:0/lstm_586/while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_586/while/lstm_cell_775/add_1AddV2$lstm_586/while/lstm_cell_775/mul:z:0&lstm_586/while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_586/while/lstm_cell_775/Sigmoid_2Sigmoid+lstm_586/while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_586/while/lstm_cell_775/Relu_1Relu&lstm_586/while/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_586/while/lstm_cell_775/mul_2Mul*lstm_586/while/lstm_cell_775/Sigmoid_2:y:01lstm_586/while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_586/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_586_while_placeholder_1lstm_586_while_placeholder&lstm_586/while/lstm_cell_775/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_586/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_586/while/addAddV2lstm_586_while_placeholderlstm_586/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_586/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_586/while/add_1AddV2*lstm_586_while_lstm_586_while_loop_counterlstm_586/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_586/while/IdentityIdentitylstm_586/while/add_1:z:0^lstm_586/while/NoOp*
T0*
_output_shapes
: ?
lstm_586/while/Identity_1Identity0lstm_586_while_lstm_586_while_maximum_iterations^lstm_586/while/NoOp*
T0*
_output_shapes
: t
lstm_586/while/Identity_2Identitylstm_586/while/add:z:0^lstm_586/while/NoOp*
T0*
_output_shapes
: ?
lstm_586/while/Identity_3IdentityClstm_586/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_586/while/NoOp*
T0*
_output_shapes
: ?
lstm_586/while/Identity_4Identity&lstm_586/while/lstm_cell_775/mul_2:z:0^lstm_586/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_586/while/Identity_5Identity&lstm_586/while/lstm_cell_775/add_1:z:0^lstm_586/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_586/while/NoOpNoOp4^lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp3^lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp5^lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_586_while_identity lstm_586/while/Identity:output:0"?
lstm_586_while_identity_1"lstm_586/while/Identity_1:output:0"?
lstm_586_while_identity_2"lstm_586/while/Identity_2:output:0"?
lstm_586_while_identity_3"lstm_586/while/Identity_3:output:0"?
lstm_586_while_identity_4"lstm_586/while/Identity_4:output:0"?
lstm_586_while_identity_5"lstm_586/while/Identity_5:output:0"T
'lstm_586_while_lstm_586_strided_slice_1)lstm_586_while_lstm_586_strided_slice_1_0"~
<lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource>lstm_586_while_lstm_cell_775_biasadd_readvariableop_resource_0"?
=lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource?lstm_586_while_lstm_cell_775_matmul_1_readvariableop_resource_0"|
;lstm_586_while_lstm_cell_775_matmul_readvariableop_resource=lstm_586_while_lstm_cell_775_matmul_readvariableop_resource_0"?
clstm_586_while_tensorarrayv2read_tensorlistgetitem_lstm_586_tensorarrayunstack_tensorlistfromtensorelstm_586_while_tensorarrayv2read_tensorlistgetitem_lstm_586_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp3lstm_586/while/lstm_cell_775/BiasAdd/ReadVariableOp2h
2lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp2lstm_586/while/lstm_cell_775/MatMul/ReadVariableOp2l
4lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp4lstm_586/while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_776_layer_call_fn_4698477

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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4693996o
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
?#
?
while_body_4693851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_775_4693875_0:	d?0
while_lstm_cell_775_4693877_0:	2?,
while_lstm_cell_775_4693879_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_775_4693875:	d?.
while_lstm_cell_775_4693877:	2?*
while_lstm_cell_775_4693879:	???+while/lstm_cell_775/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_775/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_775_4693875_0while_lstm_cell_775_4693877_0while_lstm_cell_775_4693879_0*
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4693792?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_775/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_775/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_775/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_775/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_775_4693875while_lstm_cell_775_4693875_0"<
while_lstm_cell_775_4693877while_lstm_cell_775_4693877_0"<
while_lstm_cell_775_4693879while_lstm_cell_775_4693879_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_775/StatefulPartitionedCall+while/lstm_cell_775/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4694343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4694343___redundant_placeholder05
1while_while_cond_4694343___redundant_placeholder15
1while_while_cond_4694343___redundant_placeholder25
1while_while_cond_4694343___redundant_placeholder3
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4694944

inputs>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4694860*
condR
while_cond_4694859*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4693996

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
while_body_4697732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697629

inputs?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4697545*
condR
while_cond_4697544*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695970

inputsH
5lstm_585_lstm_cell_774_matmul_readvariableop_resource:	?J
7lstm_585_lstm_cell_774_matmul_1_readvariableop_resource:	d?E
6lstm_585_lstm_cell_774_biasadd_readvariableop_resource:	?H
5lstm_586_lstm_cell_775_matmul_readvariableop_resource:	d?J
7lstm_586_lstm_cell_775_matmul_1_readvariableop_resource:	2?E
6lstm_586_lstm_cell_775_biasadd_readvariableop_resource:	?G
5lstm_587_lstm_cell_776_matmul_readvariableop_resource:2(I
7lstm_587_lstm_cell_776_matmul_1_readvariableop_resource:
(D
6lstm_587_lstm_cell_776_biasadd_readvariableop_resource:(:
(dense_195_matmul_readvariableop_resource:
7
)dense_195_biasadd_readvariableop_resource:
identity?? dense_195/BiasAdd/ReadVariableOp?dense_195/MatMul/ReadVariableOp?-lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp?,lstm_585/lstm_cell_774/MatMul/ReadVariableOp?.lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp?lstm_585/while?-lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp?,lstm_586/lstm_cell_775/MatMul/ReadVariableOp?.lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp?lstm_586/while?-lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp?,lstm_587/lstm_cell_776/MatMul/ReadVariableOp?.lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp?lstm_587/whileD
lstm_585/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_585/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_585/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_585/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_585/strided_sliceStridedSlicelstm_585/Shape:output:0%lstm_585/strided_slice/stack:output:0'lstm_585/strided_slice/stack_1:output:0'lstm_585/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_585/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_585/zeros/packedPacklstm_585/strided_slice:output:0 lstm_585/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_585/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_585/zerosFilllstm_585/zeros/packed:output:0lstm_585/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_585/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_585/zeros_1/packedPacklstm_585/strided_slice:output:0"lstm_585/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_585/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_585/zeros_1Fill lstm_585/zeros_1/packed:output:0lstm_585/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_585/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_585/transpose	Transposeinputs lstm_585/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_585/Shape_1Shapelstm_585/transpose:y:0*
T0*
_output_shapes
:h
lstm_585/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_585/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_585/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_585/strided_slice_1StridedSlicelstm_585/Shape_1:output:0'lstm_585/strided_slice_1/stack:output:0)lstm_585/strided_slice_1/stack_1:output:0)lstm_585/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_585/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_585/TensorArrayV2TensorListReserve-lstm_585/TensorArrayV2/element_shape:output:0!lstm_585/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_585/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_585/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_585/transpose:y:0Glstm_585/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_585/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_585/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_585/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_585/strided_slice_2StridedSlicelstm_585/transpose:y:0'lstm_585/strided_slice_2/stack:output:0)lstm_585/strided_slice_2/stack_1:output:0)lstm_585/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_585/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp5lstm_585_lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_585/lstm_cell_774/MatMulMatMul!lstm_585/strided_slice_2:output:04lstm_585/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_585/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp7lstm_585_lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_585/lstm_cell_774/MatMul_1MatMullstm_585/zeros:output:06lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_585/lstm_cell_774/addAddV2'lstm_585/lstm_cell_774/MatMul:product:0)lstm_585/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_585/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp6lstm_585_lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_585/lstm_cell_774/BiasAddBiasAddlstm_585/lstm_cell_774/add:z:05lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_585/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_585/lstm_cell_774/splitSplit/lstm_585/lstm_cell_774/split/split_dim:output:0'lstm_585/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_585/lstm_cell_774/SigmoidSigmoid%lstm_585/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_585/lstm_cell_774/Sigmoid_1Sigmoid%lstm_585/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_585/lstm_cell_774/mulMul$lstm_585/lstm_cell_774/Sigmoid_1:y:0lstm_585/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_585/lstm_cell_774/ReluRelu%lstm_585/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_585/lstm_cell_774/mul_1Mul"lstm_585/lstm_cell_774/Sigmoid:y:0)lstm_585/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_585/lstm_cell_774/add_1AddV2lstm_585/lstm_cell_774/mul:z:0 lstm_585/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_585/lstm_cell_774/Sigmoid_2Sigmoid%lstm_585/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_585/lstm_cell_774/Relu_1Relu lstm_585/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_585/lstm_cell_774/mul_2Mul$lstm_585/lstm_cell_774/Sigmoid_2:y:0+lstm_585/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_585/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_585/TensorArrayV2_1TensorListReserve/lstm_585/TensorArrayV2_1/element_shape:output:0!lstm_585/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_585/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_585/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_585/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_585/whileWhile$lstm_585/while/loop_counter:output:0*lstm_585/while/maximum_iterations:output:0lstm_585/time:output:0!lstm_585/TensorArrayV2_1:handle:0lstm_585/zeros:output:0lstm_585/zeros_1:output:0!lstm_585/strided_slice_1:output:0@lstm_585/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_585_lstm_cell_774_matmul_readvariableop_resource7lstm_585_lstm_cell_774_matmul_1_readvariableop_resource6lstm_585_lstm_cell_774_biasadd_readvariableop_resource*
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
lstm_585_while_body_4695602*'
condR
lstm_585_while_cond_4695601*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_585/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_585/TensorArrayV2Stack/TensorListStackTensorListStacklstm_585/while:output:3Blstm_585/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_585/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_585/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_585/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_585/strided_slice_3StridedSlice4lstm_585/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_585/strided_slice_3/stack:output:0)lstm_585/strided_slice_3/stack_1:output:0)lstm_585/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_585/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_585/transpose_1	Transpose4lstm_585/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_585/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_585/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_586/ShapeShapelstm_585/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_586/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_586/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_586/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_586/strided_sliceStridedSlicelstm_586/Shape:output:0%lstm_586/strided_slice/stack:output:0'lstm_586/strided_slice/stack_1:output:0'lstm_586/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_586/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_586/zeros/packedPacklstm_586/strided_slice:output:0 lstm_586/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_586/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_586/zerosFilllstm_586/zeros/packed:output:0lstm_586/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_586/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_586/zeros_1/packedPacklstm_586/strided_slice:output:0"lstm_586/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_586/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_586/zeros_1Fill lstm_586/zeros_1/packed:output:0lstm_586/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_586/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_586/transpose	Transposelstm_585/transpose_1:y:0 lstm_586/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_586/Shape_1Shapelstm_586/transpose:y:0*
T0*
_output_shapes
:h
lstm_586/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_586/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_586/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_586/strided_slice_1StridedSlicelstm_586/Shape_1:output:0'lstm_586/strided_slice_1/stack:output:0)lstm_586/strided_slice_1/stack_1:output:0)lstm_586/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_586/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_586/TensorArrayV2TensorListReserve-lstm_586/TensorArrayV2/element_shape:output:0!lstm_586/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_586/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_586/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_586/transpose:y:0Glstm_586/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_586/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_586/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_586/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_586/strided_slice_2StridedSlicelstm_586/transpose:y:0'lstm_586/strided_slice_2/stack:output:0)lstm_586/strided_slice_2/stack_1:output:0)lstm_586/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_586/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp5lstm_586_lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_586/lstm_cell_775/MatMulMatMul!lstm_586/strided_slice_2:output:04lstm_586/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_586/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp7lstm_586_lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_586/lstm_cell_775/MatMul_1MatMullstm_586/zeros:output:06lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_586/lstm_cell_775/addAddV2'lstm_586/lstm_cell_775/MatMul:product:0)lstm_586/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_586/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp6lstm_586_lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_586/lstm_cell_775/BiasAddBiasAddlstm_586/lstm_cell_775/add:z:05lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_586/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_586/lstm_cell_775/splitSplit/lstm_586/lstm_cell_775/split/split_dim:output:0'lstm_586/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_586/lstm_cell_775/SigmoidSigmoid%lstm_586/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_586/lstm_cell_775/Sigmoid_1Sigmoid%lstm_586/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_586/lstm_cell_775/mulMul$lstm_586/lstm_cell_775/Sigmoid_1:y:0lstm_586/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_586/lstm_cell_775/ReluRelu%lstm_586/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_586/lstm_cell_775/mul_1Mul"lstm_586/lstm_cell_775/Sigmoid:y:0)lstm_586/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_586/lstm_cell_775/add_1AddV2lstm_586/lstm_cell_775/mul:z:0 lstm_586/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_586/lstm_cell_775/Sigmoid_2Sigmoid%lstm_586/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_586/lstm_cell_775/Relu_1Relu lstm_586/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_586/lstm_cell_775/mul_2Mul$lstm_586/lstm_cell_775/Sigmoid_2:y:0+lstm_586/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_586/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_586/TensorArrayV2_1TensorListReserve/lstm_586/TensorArrayV2_1/element_shape:output:0!lstm_586/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_586/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_586/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_586/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_586/whileWhile$lstm_586/while/loop_counter:output:0*lstm_586/while/maximum_iterations:output:0lstm_586/time:output:0!lstm_586/TensorArrayV2_1:handle:0lstm_586/zeros:output:0lstm_586/zeros_1:output:0!lstm_586/strided_slice_1:output:0@lstm_586/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_586_lstm_cell_775_matmul_readvariableop_resource7lstm_586_lstm_cell_775_matmul_1_readvariableop_resource6lstm_586_lstm_cell_775_biasadd_readvariableop_resource*
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
lstm_586_while_body_4695741*'
condR
lstm_586_while_cond_4695740*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_586/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_586/TensorArrayV2Stack/TensorListStackTensorListStacklstm_586/while:output:3Blstm_586/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_586/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_586/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_586/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_586/strided_slice_3StridedSlice4lstm_586/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_586/strided_slice_3/stack:output:0)lstm_586/strided_slice_3/stack_1:output:0)lstm_586/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_586/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_586/transpose_1	Transpose4lstm_586/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_586/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_586/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_587/ShapeShapelstm_586/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_587/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_587/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_587/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_587/strided_sliceStridedSlicelstm_587/Shape:output:0%lstm_587/strided_slice/stack:output:0'lstm_587/strided_slice/stack_1:output:0'lstm_587/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_587/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_587/zeros/packedPacklstm_587/strided_slice:output:0 lstm_587/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_587/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_587/zerosFilllstm_587/zeros/packed:output:0lstm_587/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_587/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_587/zeros_1/packedPacklstm_587/strided_slice:output:0"lstm_587/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_587/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_587/zeros_1Fill lstm_587/zeros_1/packed:output:0lstm_587/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_587/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_587/transpose	Transposelstm_586/transpose_1:y:0 lstm_587/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_587/Shape_1Shapelstm_587/transpose:y:0*
T0*
_output_shapes
:h
lstm_587/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_587/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_587/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_587/strided_slice_1StridedSlicelstm_587/Shape_1:output:0'lstm_587/strided_slice_1/stack:output:0)lstm_587/strided_slice_1/stack_1:output:0)lstm_587/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_587/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_587/TensorArrayV2TensorListReserve-lstm_587/TensorArrayV2/element_shape:output:0!lstm_587/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_587/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_587/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_587/transpose:y:0Glstm_587/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_587/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_587/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_587/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_587/strided_slice_2StridedSlicelstm_587/transpose:y:0'lstm_587/strided_slice_2/stack:output:0)lstm_587/strided_slice_2/stack_1:output:0)lstm_587/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_587/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp5lstm_587_lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_587/lstm_cell_776/MatMulMatMul!lstm_587/strided_slice_2:output:04lstm_587/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_587/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp7lstm_587_lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_587/lstm_cell_776/MatMul_1MatMullstm_587/zeros:output:06lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_587/lstm_cell_776/addAddV2'lstm_587/lstm_cell_776/MatMul:product:0)lstm_587/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_587/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp6lstm_587_lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_587/lstm_cell_776/BiasAddBiasAddlstm_587/lstm_cell_776/add:z:05lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_587/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_587/lstm_cell_776/splitSplit/lstm_587/lstm_cell_776/split/split_dim:output:0'lstm_587/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_587/lstm_cell_776/SigmoidSigmoid%lstm_587/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_587/lstm_cell_776/Sigmoid_1Sigmoid%lstm_587/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_587/lstm_cell_776/mulMul$lstm_587/lstm_cell_776/Sigmoid_1:y:0lstm_587/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_587/lstm_cell_776/ReluRelu%lstm_587/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_587/lstm_cell_776/mul_1Mul"lstm_587/lstm_cell_776/Sigmoid:y:0)lstm_587/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_587/lstm_cell_776/add_1AddV2lstm_587/lstm_cell_776/mul:z:0 lstm_587/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_587/lstm_cell_776/Sigmoid_2Sigmoid%lstm_587/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_587/lstm_cell_776/Relu_1Relu lstm_587/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_587/lstm_cell_776/mul_2Mul$lstm_587/lstm_cell_776/Sigmoid_2:y:0+lstm_587/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_587/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_587/TensorArrayV2_1TensorListReserve/lstm_587/TensorArrayV2_1/element_shape:output:0!lstm_587/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_587/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_587/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_587/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_587/whileWhile$lstm_587/while/loop_counter:output:0*lstm_587/while/maximum_iterations:output:0lstm_587/time:output:0!lstm_587/TensorArrayV2_1:handle:0lstm_587/zeros:output:0lstm_587/zeros_1:output:0!lstm_587/strided_slice_1:output:0@lstm_587/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_587_lstm_cell_776_matmul_readvariableop_resource7lstm_587_lstm_cell_776_matmul_1_readvariableop_resource6lstm_587_lstm_cell_776_biasadd_readvariableop_resource*
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
lstm_587_while_body_4695880*'
condR
lstm_587_while_cond_4695879*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_587/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_587/TensorArrayV2Stack/TensorListStackTensorListStacklstm_587/while:output:3Blstm_587/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_587/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_587/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_587/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_587/strided_slice_3StridedSlice4lstm_587/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_587/strided_slice_3/stack:output:0)lstm_587/strided_slice_3/stack_1:output:0)lstm_587/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_587/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_587/transpose_1	Transpose4lstm_587/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_587/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_587/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_195/MatMul/ReadVariableOpReadVariableOp(dense_195_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_195/MatMulMatMul!lstm_587/strided_slice_3:output:0'dense_195/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_195/BiasAdd/ReadVariableOpReadVariableOp)dense_195_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_195/BiasAddBiasAdddense_195/MatMul:product:0(dense_195/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_195/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_195/BiasAdd/ReadVariableOp ^dense_195/MatMul/ReadVariableOp.^lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp-^lstm_585/lstm_cell_774/MatMul/ReadVariableOp/^lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp^lstm_585/while.^lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp-^lstm_586/lstm_cell_775/MatMul/ReadVariableOp/^lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp^lstm_586/while.^lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp-^lstm_587/lstm_cell_776/MatMul/ReadVariableOp/^lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp^lstm_587/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_195/BiasAdd/ReadVariableOp dense_195/BiasAdd/ReadVariableOp2B
dense_195/MatMul/ReadVariableOpdense_195/MatMul/ReadVariableOp2^
-lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp-lstm_585/lstm_cell_774/BiasAdd/ReadVariableOp2\
,lstm_585/lstm_cell_774/MatMul/ReadVariableOp,lstm_585/lstm_cell_774/MatMul/ReadVariableOp2`
.lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp.lstm_585/lstm_cell_774/MatMul_1/ReadVariableOp2 
lstm_585/whilelstm_585/while2^
-lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp-lstm_586/lstm_cell_775/BiasAdd/ReadVariableOp2\
,lstm_586/lstm_cell_775/MatMul/ReadVariableOp,lstm_586/lstm_cell_775/MatMul/ReadVariableOp2`
.lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp.lstm_586/lstm_cell_775/MatMul_1/ReadVariableOp2 
lstm_586/whilelstm_586/while2^
-lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp-lstm_587/lstm_cell_776/BiasAdd/ReadVariableOp2\
,lstm_587/lstm_cell_776/MatMul/ReadVariableOp,lstm_587/lstm_cell_776/MatMul/ReadVariableOp2`
.lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp.lstm_587/lstm_cell_776/MatMul_1/ReadVariableOp2 
lstm_587/whilelstm_587/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4697259
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_4698701
file_prefix/
+savev2_dense_195_kernel_read_readvariableop-
)savev2_dense_195_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_585_lstm_cell_585_kernel_read_readvariableopF
Bsavev2_lstm_585_lstm_cell_585_recurrent_kernel_read_readvariableop:
6savev2_lstm_585_lstm_cell_585_bias_read_readvariableop<
8savev2_lstm_586_lstm_cell_586_kernel_read_readvariableopF
Bsavev2_lstm_586_lstm_cell_586_recurrent_kernel_read_readvariableop:
6savev2_lstm_586_lstm_cell_586_bias_read_readvariableop<
8savev2_lstm_587_lstm_cell_587_kernel_read_readvariableopF
Bsavev2_lstm_587_lstm_cell_587_recurrent_kernel_read_readvariableop:
6savev2_lstm_587_lstm_cell_587_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_195_kernel_m_read_readvariableop4
0savev2_adam_dense_195_bias_m_read_readvariableopC
?savev2_adam_lstm_585_lstm_cell_585_kernel_m_read_readvariableopM
Isavev2_adam_lstm_585_lstm_cell_585_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_585_lstm_cell_585_bias_m_read_readvariableopC
?savev2_adam_lstm_586_lstm_cell_586_kernel_m_read_readvariableopM
Isavev2_adam_lstm_586_lstm_cell_586_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_586_lstm_cell_586_bias_m_read_readvariableopC
?savev2_adam_lstm_587_lstm_cell_587_kernel_m_read_readvariableopM
Isavev2_adam_lstm_587_lstm_cell_587_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_587_lstm_cell_587_bias_m_read_readvariableop6
2savev2_adam_dense_195_kernel_v_read_readvariableop4
0savev2_adam_dense_195_bias_v_read_readvariableopC
?savev2_adam_lstm_585_lstm_cell_585_kernel_v_read_readvariableopM
Isavev2_adam_lstm_585_lstm_cell_585_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_585_lstm_cell_585_bias_v_read_readvariableopC
?savev2_adam_lstm_586_lstm_cell_586_kernel_v_read_readvariableopM
Isavev2_adam_lstm_586_lstm_cell_586_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_586_lstm_cell_586_bias_v_read_readvariableopC
?savev2_adam_lstm_587_lstm_cell_587_kernel_v_read_readvariableopM
Isavev2_adam_lstm_587_lstm_cell_587_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_587_lstm_cell_587_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_195_kernel_read_readvariableop)savev2_dense_195_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_585_lstm_cell_585_kernel_read_readvariableopBsavev2_lstm_585_lstm_cell_585_recurrent_kernel_read_readvariableop6savev2_lstm_585_lstm_cell_585_bias_read_readvariableop8savev2_lstm_586_lstm_cell_586_kernel_read_readvariableopBsavev2_lstm_586_lstm_cell_586_recurrent_kernel_read_readvariableop6savev2_lstm_586_lstm_cell_586_bias_read_readvariableop8savev2_lstm_587_lstm_cell_587_kernel_read_readvariableopBsavev2_lstm_587_lstm_cell_587_recurrent_kernel_read_readvariableop6savev2_lstm_587_lstm_cell_587_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_195_kernel_m_read_readvariableop0savev2_adam_dense_195_bias_m_read_readvariableop?savev2_adam_lstm_585_lstm_cell_585_kernel_m_read_readvariableopIsavev2_adam_lstm_585_lstm_cell_585_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_585_lstm_cell_585_bias_m_read_readvariableop?savev2_adam_lstm_586_lstm_cell_586_kernel_m_read_readvariableopIsavev2_adam_lstm_586_lstm_cell_586_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_586_lstm_cell_586_bias_m_read_readvariableop?savev2_adam_lstm_587_lstm_cell_587_kernel_m_read_readvariableopIsavev2_adam_lstm_587_lstm_cell_587_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_587_lstm_cell_587_bias_m_read_readvariableop2savev2_adam_dense_195_kernel_v_read_readvariableop0savev2_adam_dense_195_bias_v_read_readvariableop?savev2_adam_lstm_585_lstm_cell_585_kernel_v_read_readvariableopIsavev2_adam_lstm_585_lstm_cell_585_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_585_lstm_cell_585_bias_v_read_readvariableop?savev2_adam_lstm_586_lstm_cell_586_kernel_v_read_readvariableopIsavev2_adam_lstm_586_lstm_cell_586_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_586_lstm_cell_586_bias_v_read_readvariableop?savev2_adam_lstm_587_lstm_cell_587_kernel_v_read_readvariableopIsavev2_adam_lstm_587_lstm_cell_587_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_587_lstm_cell_587_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
lstm_585_input;
 serving_default_lstm_585_input:0?????????=
	dense_1950
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
2dense_195/kernel
:2dense_195/bias
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
0:.	?2lstm_585/lstm_cell_585/kernel
::8	d?2'lstm_585/lstm_cell_585/recurrent_kernel
*:(?2lstm_585/lstm_cell_585/bias
0:.	d?2lstm_586/lstm_cell_586/kernel
::8	2?2'lstm_586/lstm_cell_586/recurrent_kernel
*:(?2lstm_586/lstm_cell_586/bias
/:-2(2lstm_587/lstm_cell_587/kernel
9:7
(2'lstm_587/lstm_cell_587/recurrent_kernel
):'(2lstm_587/lstm_cell_587/bias
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
2Adam/dense_195/kernel/m
!:2Adam/dense_195/bias/m
5:3	?2$Adam/lstm_585/lstm_cell_585/kernel/m
?:=	d?2.Adam/lstm_585/lstm_cell_585/recurrent_kernel/m
/:-?2"Adam/lstm_585/lstm_cell_585/bias/m
5:3	d?2$Adam/lstm_586/lstm_cell_586/kernel/m
?:=	2?2.Adam/lstm_586/lstm_cell_586/recurrent_kernel/m
/:-?2"Adam/lstm_586/lstm_cell_586/bias/m
4:22(2$Adam/lstm_587/lstm_cell_587/kernel/m
>:<
(2.Adam/lstm_587/lstm_cell_587/recurrent_kernel/m
.:,(2"Adam/lstm_587/lstm_cell_587/bias/m
':%
2Adam/dense_195/kernel/v
!:2Adam/dense_195/bias/v
5:3	?2$Adam/lstm_585/lstm_cell_585/kernel/v
?:=	d?2.Adam/lstm_585/lstm_cell_585/recurrent_kernel/v
/:-?2"Adam/lstm_585/lstm_cell_585/bias/v
5:3	d?2$Adam/lstm_586/lstm_cell_586/kernel/v
?:=	2?2.Adam/lstm_586/lstm_cell_586/recurrent_kernel/v
/:-?2"Adam/lstm_586/lstm_cell_586/bias/v
4:22(2$Adam/lstm_587/lstm_cell_587/kernel/v
>:<
(2.Adam/lstm_587/lstm_cell_587/recurrent_kernel/v
.:,(2"Adam/lstm_587/lstm_cell_587/bias/v
?2?
0__inference_sequential_195_layer_call_fn_4694778
0__inference_sequential_195_layer_call_fn_4695516
0__inference_sequential_195_layer_call_fn_4695543
0__inference_sequential_195_layer_call_fn_4695394?
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
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695970
K__inference_sequential_195_layer_call_and_return_conditional_losses_4696397
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695424
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695454?
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
"__inference__wrapped_model_4693229lstm_585_input"?
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
*__inference_lstm_585_layer_call_fn_4696408
*__inference_lstm_585_layer_call_fn_4696419
*__inference_lstm_585_layer_call_fn_4696430
*__inference_lstm_585_layer_call_fn_4696441?
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4696584
E__inference_lstm_585_layer_call_and_return_conditional_losses_4696727
E__inference_lstm_585_layer_call_and_return_conditional_losses_4696870
E__inference_lstm_585_layer_call_and_return_conditional_losses_4697013?
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
*__inference_lstm_586_layer_call_fn_4697024
*__inference_lstm_586_layer_call_fn_4697035
*__inference_lstm_586_layer_call_fn_4697046
*__inference_lstm_586_layer_call_fn_4697057?
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697200
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697343
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697486
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697629?
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
*__inference_lstm_587_layer_call_fn_4697640
*__inference_lstm_587_layer_call_fn_4697651
*__inference_lstm_587_layer_call_fn_4697662
*__inference_lstm_587_layer_call_fn_4697673?
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4697816
E__inference_lstm_587_layer_call_and_return_conditional_losses_4697959
E__inference_lstm_587_layer_call_and_return_conditional_losses_4698102
E__inference_lstm_587_layer_call_and_return_conditional_losses_4698245?
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
+__inference_dense_195_layer_call_fn_4698254?
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
F__inference_dense_195_layer_call_and_return_conditional_losses_4698264?
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
%__inference_signature_wrapper_4695489lstm_585_input"?
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
/__inference_lstm_cell_774_layer_call_fn_4698281
/__inference_lstm_cell_774_layer_call_fn_4698298?
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4698330
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4698362?
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
/__inference_lstm_cell_775_layer_call_fn_4698379
/__inference_lstm_cell_775_layer_call_fn_4698396?
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4698428
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4698460?
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
/__inference_lstm_cell_776_layer_call_fn_4698477
/__inference_lstm_cell_776_layer_call_fn_4698494?
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4698526
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4698558?
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
"__inference__wrapped_model_4693229?-./012345!";?8
1?.
,?)
lstm_585_input?????????
? "5?2
0
	dense_195#? 
	dense_195??????????
F__inference_dense_195_layer_call_and_return_conditional_losses_4698264\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_195_layer_call_fn_4698254O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_585_layer_call_and_return_conditional_losses_4696584?-./O?L
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4696727?-./O?L
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4696870q-./??<
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
E__inference_lstm_585_layer_call_and_return_conditional_losses_4697013q-./??<
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
*__inference_lstm_585_layer_call_fn_4696408}-./O?L
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
*__inference_lstm_585_layer_call_fn_4696419}-./O?L
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
*__inference_lstm_585_layer_call_fn_4696430d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_585_layer_call_fn_4696441d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697200?012O?L
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697343?012O?L
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697486q012??<
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
E__inference_lstm_586_layer_call_and_return_conditional_losses_4697629q012??<
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
*__inference_lstm_586_layer_call_fn_4697024}012O?L
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
*__inference_lstm_586_layer_call_fn_4697035}012O?L
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
*__inference_lstm_586_layer_call_fn_4697046d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_586_layer_call_fn_4697057d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_587_layer_call_and_return_conditional_losses_4697816}345O?L
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4697959}345O?L
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4698102m345??<
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
E__inference_lstm_587_layer_call_and_return_conditional_losses_4698245m345??<
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
*__inference_lstm_587_layer_call_fn_4697640p345O?L
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
*__inference_lstm_587_layer_call_fn_4697651p345O?L
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
*__inference_lstm_587_layer_call_fn_4697662`345??<
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
*__inference_lstm_587_layer_call_fn_4697673`345??<
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4698330?-./??}
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4698362?-./??}
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
/__inference_lstm_cell_774_layer_call_fn_4698281?-./??}
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
/__inference_lstm_cell_774_layer_call_fn_4698298?-./??}
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4698428?012??}
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4698460?012??}
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
/__inference_lstm_cell_775_layer_call_fn_4698379?012??}
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
/__inference_lstm_cell_775_layer_call_fn_4698396?012??}
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4698526?345??}
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4698558?345??}
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
/__inference_lstm_cell_776_layer_call_fn_4698477?345??}
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
/__inference_lstm_cell_776_layer_call_fn_4698494?345??}
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
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695424y-./012345!"C?@
9?6
,?)
lstm_585_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695454y-./012345!"C?@
9?6
,?)
lstm_585_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_195_layer_call_and_return_conditional_losses_4695970q-./012345!";?8
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
K__inference_sequential_195_layer_call_and_return_conditional_losses_4696397q-./012345!";?8
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
0__inference_sequential_195_layer_call_fn_4694778l-./012345!"C?@
9?6
,?)
lstm_585_input?????????
p 

 
? "???????????
0__inference_sequential_195_layer_call_fn_4695394l-./012345!"C?@
9?6
,?)
lstm_585_input?????????
p

 
? "???????????
0__inference_sequential_195_layer_call_fn_4695516d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_195_layer_call_fn_4695543d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4695489?-./012345!"M?J
? 
C?@
>
lstm_585_input,?)
lstm_585_input?????????"5?2
0
	dense_195#? 
	dense_195?????????