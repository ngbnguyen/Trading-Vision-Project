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
dense_233/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_233/kernel
u
$dense_233/kernel/Read/ReadVariableOpReadVariableOpdense_233/kernel*
_output_shapes

:
*
dtype0
t
dense_233/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_233/bias
m
"dense_233/bias/Read/ReadVariableOpReadVariableOpdense_233/bias*
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
lstm_699/lstm_cell_699/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_699/lstm_cell_699/kernel
?
1lstm_699/lstm_cell_699/kernel/Read/ReadVariableOpReadVariableOplstm_699/lstm_cell_699/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_699/lstm_cell_699/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_699/lstm_cell_699/recurrent_kernel
?
;lstm_699/lstm_cell_699/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_699/lstm_cell_699/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_699/lstm_cell_699/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_699/lstm_cell_699/bias
?
/lstm_699/lstm_cell_699/bias/Read/ReadVariableOpReadVariableOplstm_699/lstm_cell_699/bias*
_output_shapes	
:?*
dtype0
?
lstm_700/lstm_cell_700/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_700/lstm_cell_700/kernel
?
1lstm_700/lstm_cell_700/kernel/Read/ReadVariableOpReadVariableOplstm_700/lstm_cell_700/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_700/lstm_cell_700/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_700/lstm_cell_700/recurrent_kernel
?
;lstm_700/lstm_cell_700/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_700/lstm_cell_700/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_700/lstm_cell_700/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_700/lstm_cell_700/bias
?
/lstm_700/lstm_cell_700/bias/Read/ReadVariableOpReadVariableOplstm_700/lstm_cell_700/bias*
_output_shapes	
:?*
dtype0
?
lstm_701/lstm_cell_701/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_701/lstm_cell_701/kernel
?
1lstm_701/lstm_cell_701/kernel/Read/ReadVariableOpReadVariableOplstm_701/lstm_cell_701/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_701/lstm_cell_701/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_701/lstm_cell_701/recurrent_kernel
?
;lstm_701/lstm_cell_701/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_701/lstm_cell_701/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_701/lstm_cell_701/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_701/lstm_cell_701/bias
?
/lstm_701/lstm_cell_701/bias/Read/ReadVariableOpReadVariableOplstm_701/lstm_cell_701/bias*
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
Adam/dense_233/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_233/kernel/m
?
+Adam/dense_233/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_233/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_233/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_233/bias/m
{
)Adam/dense_233/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_233/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_699/lstm_cell_699/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_699/lstm_cell_699/kernel/m
?
8Adam/lstm_699/lstm_cell_699/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_699/lstm_cell_699/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_699/lstm_cell_699/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_699/lstm_cell_699/recurrent_kernel/m
?
BAdam/lstm_699/lstm_cell_699/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_699/lstm_cell_699/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_699/lstm_cell_699/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_699/lstm_cell_699/bias/m
?
6Adam/lstm_699/lstm_cell_699/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_699/lstm_cell_699/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_700/lstm_cell_700/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_700/lstm_cell_700/kernel/m
?
8Adam/lstm_700/lstm_cell_700/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_700/lstm_cell_700/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_700/lstm_cell_700/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_700/lstm_cell_700/recurrent_kernel/m
?
BAdam/lstm_700/lstm_cell_700/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_700/lstm_cell_700/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_700/lstm_cell_700/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_700/lstm_cell_700/bias/m
?
6Adam/lstm_700/lstm_cell_700/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_700/lstm_cell_700/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_701/lstm_cell_701/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_701/lstm_cell_701/kernel/m
?
8Adam/lstm_701/lstm_cell_701/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_701/lstm_cell_701/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_701/lstm_cell_701/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_701/lstm_cell_701/recurrent_kernel/m
?
BAdam/lstm_701/lstm_cell_701/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_701/lstm_cell_701/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_701/lstm_cell_701/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_701/lstm_cell_701/bias/m
?
6Adam/lstm_701/lstm_cell_701/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_701/lstm_cell_701/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_233/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_233/kernel/v
?
+Adam/dense_233/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_233/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_233/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_233/bias/v
{
)Adam/dense_233/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_233/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_699/lstm_cell_699/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_699/lstm_cell_699/kernel/v
?
8Adam/lstm_699/lstm_cell_699/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_699/lstm_cell_699/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_699/lstm_cell_699/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_699/lstm_cell_699/recurrent_kernel/v
?
BAdam/lstm_699/lstm_cell_699/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_699/lstm_cell_699/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_699/lstm_cell_699/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_699/lstm_cell_699/bias/v
?
6Adam/lstm_699/lstm_cell_699/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_699/lstm_cell_699/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_700/lstm_cell_700/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_700/lstm_cell_700/kernel/v
?
8Adam/lstm_700/lstm_cell_700/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_700/lstm_cell_700/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_700/lstm_cell_700/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_700/lstm_cell_700/recurrent_kernel/v
?
BAdam/lstm_700/lstm_cell_700/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_700/lstm_cell_700/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_700/lstm_cell_700/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_700/lstm_cell_700/bias/v
?
6Adam/lstm_700/lstm_cell_700/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_700/lstm_cell_700/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_701/lstm_cell_701/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_701/lstm_cell_701/kernel/v
?
8Adam/lstm_701/lstm_cell_701/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_701/lstm_cell_701/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_701/lstm_cell_701/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_701/lstm_cell_701/recurrent_kernel/v
?
BAdam/lstm_701/lstm_cell_701/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_701/lstm_cell_701/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_701/lstm_cell_701/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_701/lstm_cell_701/bias/v
?
6Adam/lstm_701/lstm_cell_701/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_701/lstm_cell_701/bias/v*
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
VARIABLE_VALUEdense_233/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_233/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_699/lstm_cell_699/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_699/lstm_cell_699/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_699/lstm_cell_699/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_700/lstm_cell_700/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_700/lstm_cell_700/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_700/lstm_cell_700/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_701/lstm_cell_701/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_701/lstm_cell_701/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_701/lstm_cell_701/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_233/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_233/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_699/lstm_cell_699/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_699/lstm_cell_699/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_699/lstm_cell_699/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_700/lstm_cell_700/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_700/lstm_cell_700/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_700/lstm_cell_700/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_701/lstm_cell_701/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_701/lstm_cell_701/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_701/lstm_cell_701/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_233/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_233/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_699/lstm_cell_699/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_699/lstm_cell_699/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_699/lstm_cell_699/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_700/lstm_cell_700/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_700/lstm_cell_700/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_700/lstm_cell_700/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_701/lstm_cell_701/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_701/lstm_cell_701/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_701/lstm_cell_701/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_699_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_699_inputlstm_699/lstm_cell_699/kernel'lstm_699/lstm_cell_699/recurrent_kernellstm_699/lstm_cell_699/biaslstm_700/lstm_cell_700/kernel'lstm_700/lstm_cell_700/recurrent_kernellstm_700/lstm_cell_700/biaslstm_701/lstm_cell_701/kernel'lstm_701/lstm_cell_701/recurrent_kernellstm_701/lstm_cell_701/biasdense_233/kerneldense_233/bias*
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
%__inference_signature_wrapper_4334117
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_233/kernel/Read/ReadVariableOp"dense_233/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_699/lstm_cell_699/kernel/Read/ReadVariableOp;lstm_699/lstm_cell_699/recurrent_kernel/Read/ReadVariableOp/lstm_699/lstm_cell_699/bias/Read/ReadVariableOp1lstm_700/lstm_cell_700/kernel/Read/ReadVariableOp;lstm_700/lstm_cell_700/recurrent_kernel/Read/ReadVariableOp/lstm_700/lstm_cell_700/bias/Read/ReadVariableOp1lstm_701/lstm_cell_701/kernel/Read/ReadVariableOp;lstm_701/lstm_cell_701/recurrent_kernel/Read/ReadVariableOp/lstm_701/lstm_cell_701/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_233/kernel/m/Read/ReadVariableOp)Adam/dense_233/bias/m/Read/ReadVariableOp8Adam/lstm_699/lstm_cell_699/kernel/m/Read/ReadVariableOpBAdam/lstm_699/lstm_cell_699/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_699/lstm_cell_699/bias/m/Read/ReadVariableOp8Adam/lstm_700/lstm_cell_700/kernel/m/Read/ReadVariableOpBAdam/lstm_700/lstm_cell_700/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_700/lstm_cell_700/bias/m/Read/ReadVariableOp8Adam/lstm_701/lstm_cell_701/kernel/m/Read/ReadVariableOpBAdam/lstm_701/lstm_cell_701/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_701/lstm_cell_701/bias/m/Read/ReadVariableOp+Adam/dense_233/kernel/v/Read/ReadVariableOp)Adam/dense_233/bias/v/Read/ReadVariableOp8Adam/lstm_699/lstm_cell_699/kernel/v/Read/ReadVariableOpBAdam/lstm_699/lstm_cell_699/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_699/lstm_cell_699/bias/v/Read/ReadVariableOp8Adam/lstm_700/lstm_cell_700/kernel/v/Read/ReadVariableOpBAdam/lstm_700/lstm_cell_700/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_700/lstm_cell_700/bias/v/Read/ReadVariableOp8Adam/lstm_701/lstm_cell_701/kernel/v/Read/ReadVariableOpBAdam/lstm_701/lstm_cell_701/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_701/lstm_cell_701/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4337329
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_233/kerneldense_233/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_699/lstm_cell_699/kernel'lstm_699/lstm_cell_699/recurrent_kernellstm_699/lstm_cell_699/biaslstm_700/lstm_cell_700/kernel'lstm_700/lstm_cell_700/recurrent_kernellstm_700/lstm_cell_700/biaslstm_701/lstm_cell_701/kernel'lstm_701/lstm_cell_701/recurrent_kernellstm_701/lstm_cell_701/biastotalcountAdam/dense_233/kernel/mAdam/dense_233/bias/m$Adam/lstm_699/lstm_cell_699/kernel/m.Adam/lstm_699/lstm_cell_699/recurrent_kernel/m"Adam/lstm_699/lstm_cell_699/bias/m$Adam/lstm_700/lstm_cell_700/kernel/m.Adam/lstm_700/lstm_cell_700/recurrent_kernel/m"Adam/lstm_700/lstm_cell_700/bias/m$Adam/lstm_701/lstm_cell_701/kernel/m.Adam/lstm_701/lstm_cell_701/recurrent_kernel/m"Adam/lstm_701/lstm_cell_701/bias/mAdam/dense_233/kernel/vAdam/dense_233/bias/v$Adam/lstm_699/lstm_cell_699/kernel/v.Adam/lstm_699/lstm_cell_699/recurrent_kernel/v"Adam/lstm_699/lstm_cell_699/bias/v$Adam/lstm_700/lstm_cell_700/kernel/v.Adam/lstm_700/lstm_cell_700/recurrent_kernel/v"Adam/lstm_700/lstm_cell_700/bias/v$Adam/lstm_701/lstm_cell_701/kernel/v.Adam/lstm_701/lstm_cell_701/recurrent_kernel/v"Adam/lstm_701/lstm_cell_701/bias/v*4
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
#__inference__traced_restore_4337459??+
?
?
while_cond_4335127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4335127___redundant_placeholder05
1while_while_cond_4335127___redundant_placeholder15
1while_while_cond_4335127___redundant_placeholder25
1while_while_cond_4335127___redundant_placeholder3
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
*__inference_lstm_700_layer_call_fn_4335652
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4332357|
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

?
lstm_699_while_cond_4334656.
*lstm_699_while_lstm_699_while_loop_counter4
0lstm_699_while_lstm_699_while_maximum_iterations
lstm_699_while_placeholder 
lstm_699_while_placeholder_1 
lstm_699_while_placeholder_2 
lstm_699_while_placeholder_30
,lstm_699_while_less_lstm_699_strided_slice_1G
Clstm_699_while_lstm_699_while_cond_4334656___redundant_placeholder0G
Clstm_699_while_lstm_699_while_cond_4334656___redundant_placeholder1G
Clstm_699_while_lstm_699_while_cond_4334656___redundant_placeholder2G
Clstm_699_while_lstm_699_while_cond_4334656___redundant_placeholder3
lstm_699_while_identity
?
lstm_699/while/LessLesslstm_699_while_placeholder,lstm_699_while_less_lstm_699_strided_slice_1*
T0*
_output_shapes
: ]
lstm_699/while/IdentityIdentitylstm_699/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_699_while_identity lstm_699/while/Identity:output:0*(
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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4333970

inputs#
lstm_699_4333943:	?#
lstm_699_4333945:	d?
lstm_699_4333947:	?#
lstm_700_4333950:	d?#
lstm_700_4333952:	2?
lstm_700_4333954:	?"
lstm_701_4333957:2("
lstm_701_4333959:
(
lstm_701_4333961:(#
dense_233_4333964:

dense_233_4333966:
identity??!dense_233/StatefulPartitionedCall? lstm_699/StatefulPartitionedCall? lstm_700/StatefulPartitionedCall? lstm_701/StatefulPartitionedCall?
 lstm_699/StatefulPartitionedCallStatefulPartitionedCallinputslstm_699_4333943lstm_699_4333945lstm_699_4333947*
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4333902?
 lstm_700/StatefulPartitionedCallStatefulPartitionedCall)lstm_699/StatefulPartitionedCall:output:0lstm_700_4333950lstm_700_4333952lstm_700_4333954*
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4333737?
 lstm_701/StatefulPartitionedCallStatefulPartitionedCall)lstm_700/StatefulPartitionedCall:output:0lstm_701_4333957lstm_701_4333959lstm_701_4333961*
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4333572?
!dense_233/StatefulPartitionedCallStatefulPartitionedCall)lstm_701/StatefulPartitionedCall:output:0dense_233_4333964dense_233_4333966*
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
F__inference_dense_233_layer_call_and_return_conditional_losses_4333374y
IdentityIdentity*dense_233/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_233/StatefulPartitionedCall!^lstm_699/StatefulPartitionedCall!^lstm_700/StatefulPartitionedCall!^lstm_701/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_233/StatefulPartitionedCall!dense_233/StatefulPartitionedCall2D
 lstm_699/StatefulPartitionedCall lstm_699/StatefulPartitionedCall2D
 lstm_700/StatefulPartitionedCall lstm_700/StatefulPartitionedCall2D
 lstm_701/StatefulPartitionedCall lstm_701/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4332070

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
/__inference_lstm_cell_716_layer_call_fn_4337122

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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4332770o
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
?
*__inference_lstm_699_layer_call_fn_4335069

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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4333902s
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
while_body_4331938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_714_4331962_0:	?0
while_lstm_cell_714_4331964_0:	d?,
while_lstm_cell_714_4331966_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_714_4331962:	?.
while_lstm_cell_714_4331964:	d?*
while_lstm_cell_714_4331966:	???+while/lstm_cell_714/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_714/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_714_4331962_0while_lstm_cell_714_4331964_0while_lstm_cell_714_4331966_0*
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4331924?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_714/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_714/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_714/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_714/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_714_4331962while_lstm_cell_714_4331962_0"<
while_lstm_cell_714_4331964while_lstm_cell_714_4331964_0"<
while_lstm_cell_714_4331966while_lstm_cell_714_4331966_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_714/StatefulPartitionedCall+while/lstm_cell_714/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4332972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4332770

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
?J
?
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335498

inputs?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4335414*
condR
while_cond_4335413*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_701_while_body_4334935.
*lstm_701_while_lstm_701_while_loop_counter4
0lstm_701_while_lstm_701_while_maximum_iterations
lstm_701_while_placeholder 
lstm_701_while_placeholder_1 
lstm_701_while_placeholder_2 
lstm_701_while_placeholder_3-
)lstm_701_while_lstm_701_strided_slice_1_0i
elstm_701_while_tensorarrayv2read_tensorlistgetitem_lstm_701_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_701_while_lstm_cell_716_matmul_readvariableop_resource_0:2(Q
?lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(L
>lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource_0:(
lstm_701_while_identity
lstm_701_while_identity_1
lstm_701_while_identity_2
lstm_701_while_identity_3
lstm_701_while_identity_4
lstm_701_while_identity_5+
'lstm_701_while_lstm_701_strided_slice_1g
clstm_701_while_tensorarrayv2read_tensorlistgetitem_lstm_701_tensorarrayunstack_tensorlistfromtensorM
;lstm_701_while_lstm_cell_716_matmul_readvariableop_resource:2(O
=lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource:
(J
<lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource:(??3lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp?2lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp?4lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp?
@lstm_701/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_701/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_701_while_tensorarrayv2read_tensorlistgetitem_lstm_701_tensorarrayunstack_tensorlistfromtensor_0lstm_701_while_placeholderIlstm_701/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_701/while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp=lstm_701_while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_701/while/lstm_cell_716/MatMulMatMul9lstm_701/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp?lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_701/while/lstm_cell_716/MatMul_1MatMullstm_701_while_placeholder_2<lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_701/while/lstm_cell_716/addAddV2-lstm_701/while/lstm_cell_716/MatMul:product:0/lstm_701/while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp>lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_701/while/lstm_cell_716/BiasAddBiasAdd$lstm_701/while/lstm_cell_716/add:z:0;lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_701/while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_701/while/lstm_cell_716/splitSplit5lstm_701/while/lstm_cell_716/split/split_dim:output:0-lstm_701/while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_701/while/lstm_cell_716/SigmoidSigmoid+lstm_701/while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_701/while/lstm_cell_716/Sigmoid_1Sigmoid+lstm_701/while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_701/while/lstm_cell_716/mulMul*lstm_701/while/lstm_cell_716/Sigmoid_1:y:0lstm_701_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_701/while/lstm_cell_716/ReluRelu+lstm_701/while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_701/while/lstm_cell_716/mul_1Mul(lstm_701/while/lstm_cell_716/Sigmoid:y:0/lstm_701/while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_701/while/lstm_cell_716/add_1AddV2$lstm_701/while/lstm_cell_716/mul:z:0&lstm_701/while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_701/while/lstm_cell_716/Sigmoid_2Sigmoid+lstm_701/while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_701/while/lstm_cell_716/Relu_1Relu&lstm_701/while/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_701/while/lstm_cell_716/mul_2Mul*lstm_701/while/lstm_cell_716/Sigmoid_2:y:01lstm_701/while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_701/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_701_while_placeholder_1lstm_701_while_placeholder&lstm_701/while/lstm_cell_716/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_701/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_701/while/addAddV2lstm_701_while_placeholderlstm_701/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_701/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_701/while/add_1AddV2*lstm_701_while_lstm_701_while_loop_counterlstm_701/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_701/while/IdentityIdentitylstm_701/while/add_1:z:0^lstm_701/while/NoOp*
T0*
_output_shapes
: ?
lstm_701/while/Identity_1Identity0lstm_701_while_lstm_701_while_maximum_iterations^lstm_701/while/NoOp*
T0*
_output_shapes
: t
lstm_701/while/Identity_2Identitylstm_701/while/add:z:0^lstm_701/while/NoOp*
T0*
_output_shapes
: ?
lstm_701/while/Identity_3IdentityClstm_701/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_701/while/NoOp*
T0*
_output_shapes
: ?
lstm_701/while/Identity_4Identity&lstm_701/while/lstm_cell_716/mul_2:z:0^lstm_701/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_701/while/Identity_5Identity&lstm_701/while/lstm_cell_716/add_1:z:0^lstm_701/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_701/while/NoOpNoOp4^lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp3^lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp5^lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_701_while_identity lstm_701/while/Identity:output:0"?
lstm_701_while_identity_1"lstm_701/while/Identity_1:output:0"?
lstm_701_while_identity_2"lstm_701/while/Identity_2:output:0"?
lstm_701_while_identity_3"lstm_701/while/Identity_3:output:0"?
lstm_701_while_identity_4"lstm_701/while/Identity_4:output:0"?
lstm_701_while_identity_5"lstm_701/while/Identity_5:output:0"T
'lstm_701_while_lstm_701_strided_slice_1)lstm_701_while_lstm_701_strided_slice_1_0"~
<lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource>lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource_0"?
=lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource?lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource_0"|
;lstm_701_while_lstm_cell_716_matmul_readvariableop_resource=lstm_701_while_lstm_cell_716_matmul_readvariableop_resource_0"?
clstm_701_while_tensorarrayv2read_tensorlistgetitem_lstm_701_tensorarrayunstack_tensorlistfromtensorelstm_701_while_tensorarrayv2read_tensorlistgetitem_lstm_701_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp3lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp2h
2lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp2lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp2l
4lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp4lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4332128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4332128___redundant_placeholder05
1while_while_cond_4332128___redundant_placeholder15
1while_while_cond_4332128___redundant_placeholder25
1while_while_cond_4332128___redundant_placeholder3
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
while_cond_4333121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333121___redundant_placeholder05
1while_while_cond_4333121___redundant_placeholder15
1while_while_cond_4333121___redundant_placeholder25
1while_while_cond_4333121___redundant_placeholder3
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4336257

inputs?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4336173*
condR
while_cond_4336172*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4333817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333817___redundant_placeholder05
1while_while_cond_4333817___redundant_placeholder15
1while_while_cond_4333817___redundant_placeholder25
1while_while_cond_4333817___redundant_placeholder3
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
+__inference_dense_233_layer_call_fn_4336882

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
F__inference_dense_233_layer_call_and_return_conditional_losses_4333374o
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

?
0__inference_sequential_233_layer_call_fn_4334144

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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4333381o
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
*__inference_lstm_700_layer_call_fn_4335685

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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4333737s
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
while_body_4336646
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_701_layer_call_fn_4336268
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4332707o
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4335828
inputs_0?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4335744*
condR
while_cond_4335743*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_700_while_cond_4334795.
*lstm_700_while_lstm_700_while_loop_counter4
0lstm_700_while_lstm_700_while_maximum_iterations
lstm_700_while_placeholder 
lstm_700_while_placeholder_1 
lstm_700_while_placeholder_2 
lstm_700_while_placeholder_30
,lstm_700_while_less_lstm_700_strided_slice_1G
Clstm_700_while_lstm_700_while_cond_4334795___redundant_placeholder0G
Clstm_700_while_lstm_700_while_cond_4334795___redundant_placeholder1G
Clstm_700_while_lstm_700_while_cond_4334795___redundant_placeholder2G
Clstm_700_while_lstm_700_while_cond_4334795___redundant_placeholder3
lstm_700_while_identity
?
lstm_700/while/LessLesslstm_700_while_placeholder,lstm_700_while_less_lstm_700_strided_slice_1*
T0*
_output_shapes
: ]
lstm_700/while/IdentityIdentitylstm_700/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_700_while_identity lstm_700/while/Identity:output:0*(
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
while_body_4332288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_715_4332312_0:	d?0
while_lstm_cell_715_4332314_0:	2?,
while_lstm_cell_715_4332316_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_715_4332312:	d?.
while_lstm_cell_715_4332314:	2?*
while_lstm_cell_715_4332316:	???+while/lstm_cell_715/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_715/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_715_4332312_0while_lstm_cell_715_4332314_0while_lstm_cell_715_4332316_0*
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4332274?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_715/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_715/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_715/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_715/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_715_4332312while_lstm_cell_715_4332312_0"<
while_lstm_cell_715_4332314while_lstm_cell_715_4332314_0"<
while_lstm_cell_715_4332316while_lstm_cell_715_4332316_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_715/StatefulPartitionedCall+while/lstm_cell_715/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_700_layer_call_fn_4335674

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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4333206s
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4337154

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
while_cond_4335886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4335886___redundant_placeholder05
1while_while_cond_4335886___redundant_placeholder15
1while_while_cond_4335886___redundant_placeholder25
1while_while_cond_4335886___redundant_placeholder3
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
/__inference_lstm_cell_714_layer_call_fn_4336926

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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4332070o
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
*sequential_233_lstm_701_while_body_4331767L
Hsequential_233_lstm_701_while_sequential_233_lstm_701_while_loop_counterR
Nsequential_233_lstm_701_while_sequential_233_lstm_701_while_maximum_iterations-
)sequential_233_lstm_701_while_placeholder/
+sequential_233_lstm_701_while_placeholder_1/
+sequential_233_lstm_701_while_placeholder_2/
+sequential_233_lstm_701_while_placeholder_3K
Gsequential_233_lstm_701_while_sequential_233_lstm_701_strided_slice_1_0?
?sequential_233_lstm_701_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_701_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_233_lstm_701_while_lstm_cell_716_matmul_readvariableop_resource_0:2(`
Nsequential_233_lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource_0:
([
Msequential_233_lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource_0:(*
&sequential_233_lstm_701_while_identity,
(sequential_233_lstm_701_while_identity_1,
(sequential_233_lstm_701_while_identity_2,
(sequential_233_lstm_701_while_identity_3,
(sequential_233_lstm_701_while_identity_4,
(sequential_233_lstm_701_while_identity_5I
Esequential_233_lstm_701_while_sequential_233_lstm_701_strided_slice_1?
?sequential_233_lstm_701_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_701_tensorarrayunstack_tensorlistfromtensor\
Jsequential_233_lstm_701_while_lstm_cell_716_matmul_readvariableop_resource:2(^
Lsequential_233_lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource:
(Y
Ksequential_233_lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource:(??Bsequential_233/lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp?Asequential_233/lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp?Csequential_233/lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp?
Osequential_233/lstm_701/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_233/lstm_701/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_233_lstm_701_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_701_tensorarrayunstack_tensorlistfromtensor_0)sequential_233_lstm_701_while_placeholderXsequential_233/lstm_701/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_233/lstm_701/while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOpLsequential_233_lstm_701_while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_233/lstm_701/while/lstm_cell_716/MatMulMatMulHsequential_233/lstm_701/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_233/lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_233/lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOpNsequential_233_lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_233/lstm_701/while/lstm_cell_716/MatMul_1MatMul+sequential_233_lstm_701_while_placeholder_2Ksequential_233/lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_233/lstm_701/while/lstm_cell_716/addAddV2<sequential_233/lstm_701/while/lstm_cell_716/MatMul:product:0>sequential_233/lstm_701/while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_233/lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOpMsequential_233_lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_233/lstm_701/while/lstm_cell_716/BiasAddBiasAdd3sequential_233/lstm_701/while/lstm_cell_716/add:z:0Jsequential_233/lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_233/lstm_701/while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_233/lstm_701/while/lstm_cell_716/splitSplitDsequential_233/lstm_701/while/lstm_cell_716/split/split_dim:output:0<sequential_233/lstm_701/while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_233/lstm_701/while/lstm_cell_716/SigmoidSigmoid:sequential_233/lstm_701/while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_233/lstm_701/while/lstm_cell_716/Sigmoid_1Sigmoid:sequential_233/lstm_701/while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_233/lstm_701/while/lstm_cell_716/mulMul9sequential_233/lstm_701/while/lstm_cell_716/Sigmoid_1:y:0+sequential_233_lstm_701_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_233/lstm_701/while/lstm_cell_716/ReluRelu:sequential_233/lstm_701/while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_233/lstm_701/while/lstm_cell_716/mul_1Mul7sequential_233/lstm_701/while/lstm_cell_716/Sigmoid:y:0>sequential_233/lstm_701/while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_233/lstm_701/while/lstm_cell_716/add_1AddV23sequential_233/lstm_701/while/lstm_cell_716/mul:z:05sequential_233/lstm_701/while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_233/lstm_701/while/lstm_cell_716/Sigmoid_2Sigmoid:sequential_233/lstm_701/while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_233/lstm_701/while/lstm_cell_716/Relu_1Relu5sequential_233/lstm_701/while/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_233/lstm_701/while/lstm_cell_716/mul_2Mul9sequential_233/lstm_701/while/lstm_cell_716/Sigmoid_2:y:0@sequential_233/lstm_701/while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_233/lstm_701/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_233_lstm_701_while_placeholder_1)sequential_233_lstm_701_while_placeholder5sequential_233/lstm_701/while/lstm_cell_716/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_233/lstm_701/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_233/lstm_701/while/addAddV2)sequential_233_lstm_701_while_placeholder,sequential_233/lstm_701/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_233/lstm_701/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_233/lstm_701/while/add_1AddV2Hsequential_233_lstm_701_while_sequential_233_lstm_701_while_loop_counter.sequential_233/lstm_701/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_233/lstm_701/while/IdentityIdentity'sequential_233/lstm_701/while/add_1:z:0#^sequential_233/lstm_701/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_701/while/Identity_1IdentityNsequential_233_lstm_701_while_sequential_233_lstm_701_while_maximum_iterations#^sequential_233/lstm_701/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_701/while/Identity_2Identity%sequential_233/lstm_701/while/add:z:0#^sequential_233/lstm_701/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_701/while/Identity_3IdentityRsequential_233/lstm_701/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_233/lstm_701/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_701/while/Identity_4Identity5sequential_233/lstm_701/while/lstm_cell_716/mul_2:z:0#^sequential_233/lstm_701/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_233/lstm_701/while/Identity_5Identity5sequential_233/lstm_701/while/lstm_cell_716/add_1:z:0#^sequential_233/lstm_701/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_233/lstm_701/while/NoOpNoOpC^sequential_233/lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOpB^sequential_233/lstm_701/while/lstm_cell_716/MatMul/ReadVariableOpD^sequential_233/lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_233_lstm_701_while_identity/sequential_233/lstm_701/while/Identity:output:0"]
(sequential_233_lstm_701_while_identity_11sequential_233/lstm_701/while/Identity_1:output:0"]
(sequential_233_lstm_701_while_identity_21sequential_233/lstm_701/while/Identity_2:output:0"]
(sequential_233_lstm_701_while_identity_31sequential_233/lstm_701/while/Identity_3:output:0"]
(sequential_233_lstm_701_while_identity_41sequential_233/lstm_701/while/Identity_4:output:0"]
(sequential_233_lstm_701_while_identity_51sequential_233/lstm_701/while/Identity_5:output:0"?
Ksequential_233_lstm_701_while_lstm_cell_716_biasadd_readvariableop_resourceMsequential_233_lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource_0"?
Lsequential_233_lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resourceNsequential_233_lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource_0"?
Jsequential_233_lstm_701_while_lstm_cell_716_matmul_readvariableop_resourceLsequential_233_lstm_701_while_lstm_cell_716_matmul_readvariableop_resource_0"?
Esequential_233_lstm_701_while_sequential_233_lstm_701_strided_slice_1Gsequential_233_lstm_701_while_sequential_233_lstm_701_strided_slice_1_0"?
?sequential_233_lstm_701_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_701_tensorarrayunstack_tensorlistfromtensor?sequential_233_lstm_701_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_701_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_233/lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOpBsequential_233/lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp2?
Asequential_233/lstm_701/while/lstm_cell_716/MatMul/ReadVariableOpAsequential_233/lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp2?
Csequential_233/lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOpCsequential_233/lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_233_lstm_699_while_body_4331489L
Hsequential_233_lstm_699_while_sequential_233_lstm_699_while_loop_counterR
Nsequential_233_lstm_699_while_sequential_233_lstm_699_while_maximum_iterations-
)sequential_233_lstm_699_while_placeholder/
+sequential_233_lstm_699_while_placeholder_1/
+sequential_233_lstm_699_while_placeholder_2/
+sequential_233_lstm_699_while_placeholder_3K
Gsequential_233_lstm_699_while_sequential_233_lstm_699_strided_slice_1_0?
?sequential_233_lstm_699_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_699_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_233_lstm_699_while_lstm_cell_714_matmul_readvariableop_resource_0:	?a
Nsequential_233_lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?\
Msequential_233_lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource_0:	?*
&sequential_233_lstm_699_while_identity,
(sequential_233_lstm_699_while_identity_1,
(sequential_233_lstm_699_while_identity_2,
(sequential_233_lstm_699_while_identity_3,
(sequential_233_lstm_699_while_identity_4,
(sequential_233_lstm_699_while_identity_5I
Esequential_233_lstm_699_while_sequential_233_lstm_699_strided_slice_1?
?sequential_233_lstm_699_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_699_tensorarrayunstack_tensorlistfromtensor]
Jsequential_233_lstm_699_while_lstm_cell_714_matmul_readvariableop_resource:	?_
Lsequential_233_lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource:	d?Z
Ksequential_233_lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource:	???Bsequential_233/lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp?Asequential_233/lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp?Csequential_233/lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp?
Osequential_233/lstm_699/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_233/lstm_699/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_233_lstm_699_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_699_tensorarrayunstack_tensorlistfromtensor_0)sequential_233_lstm_699_while_placeholderXsequential_233/lstm_699/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_233/lstm_699/while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOpLsequential_233_lstm_699_while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_233/lstm_699/while/lstm_cell_714/MatMulMatMulHsequential_233/lstm_699/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_233/lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_233/lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOpNsequential_233_lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_233/lstm_699/while/lstm_cell_714/MatMul_1MatMul+sequential_233_lstm_699_while_placeholder_2Ksequential_233/lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_233/lstm_699/while/lstm_cell_714/addAddV2<sequential_233/lstm_699/while/lstm_cell_714/MatMul:product:0>sequential_233/lstm_699/while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_233/lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOpMsequential_233_lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_233/lstm_699/while/lstm_cell_714/BiasAddBiasAdd3sequential_233/lstm_699/while/lstm_cell_714/add:z:0Jsequential_233/lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_233/lstm_699/while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_233/lstm_699/while/lstm_cell_714/splitSplitDsequential_233/lstm_699/while/lstm_cell_714/split/split_dim:output:0<sequential_233/lstm_699/while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_233/lstm_699/while/lstm_cell_714/SigmoidSigmoid:sequential_233/lstm_699/while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_233/lstm_699/while/lstm_cell_714/Sigmoid_1Sigmoid:sequential_233/lstm_699/while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_233/lstm_699/while/lstm_cell_714/mulMul9sequential_233/lstm_699/while/lstm_cell_714/Sigmoid_1:y:0+sequential_233_lstm_699_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_233/lstm_699/while/lstm_cell_714/ReluRelu:sequential_233/lstm_699/while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_233/lstm_699/while/lstm_cell_714/mul_1Mul7sequential_233/lstm_699/while/lstm_cell_714/Sigmoid:y:0>sequential_233/lstm_699/while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_233/lstm_699/while/lstm_cell_714/add_1AddV23sequential_233/lstm_699/while/lstm_cell_714/mul:z:05sequential_233/lstm_699/while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_233/lstm_699/while/lstm_cell_714/Sigmoid_2Sigmoid:sequential_233/lstm_699/while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_233/lstm_699/while/lstm_cell_714/Relu_1Relu5sequential_233/lstm_699/while/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_233/lstm_699/while/lstm_cell_714/mul_2Mul9sequential_233/lstm_699/while/lstm_cell_714/Sigmoid_2:y:0@sequential_233/lstm_699/while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_233/lstm_699/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_233_lstm_699_while_placeholder_1)sequential_233_lstm_699_while_placeholder5sequential_233/lstm_699/while/lstm_cell_714/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_233/lstm_699/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_233/lstm_699/while/addAddV2)sequential_233_lstm_699_while_placeholder,sequential_233/lstm_699/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_233/lstm_699/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_233/lstm_699/while/add_1AddV2Hsequential_233_lstm_699_while_sequential_233_lstm_699_while_loop_counter.sequential_233/lstm_699/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_233/lstm_699/while/IdentityIdentity'sequential_233/lstm_699/while/add_1:z:0#^sequential_233/lstm_699/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_699/while/Identity_1IdentityNsequential_233_lstm_699_while_sequential_233_lstm_699_while_maximum_iterations#^sequential_233/lstm_699/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_699/while/Identity_2Identity%sequential_233/lstm_699/while/add:z:0#^sequential_233/lstm_699/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_699/while/Identity_3IdentityRsequential_233/lstm_699/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_233/lstm_699/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_699/while/Identity_4Identity5sequential_233/lstm_699/while/lstm_cell_714/mul_2:z:0#^sequential_233/lstm_699/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_233/lstm_699/while/Identity_5Identity5sequential_233/lstm_699/while/lstm_cell_714/add_1:z:0#^sequential_233/lstm_699/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_233/lstm_699/while/NoOpNoOpC^sequential_233/lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOpB^sequential_233/lstm_699/while/lstm_cell_714/MatMul/ReadVariableOpD^sequential_233/lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_233_lstm_699_while_identity/sequential_233/lstm_699/while/Identity:output:0"]
(sequential_233_lstm_699_while_identity_11sequential_233/lstm_699/while/Identity_1:output:0"]
(sequential_233_lstm_699_while_identity_21sequential_233/lstm_699/while/Identity_2:output:0"]
(sequential_233_lstm_699_while_identity_31sequential_233/lstm_699/while/Identity_3:output:0"]
(sequential_233_lstm_699_while_identity_41sequential_233/lstm_699/while/Identity_4:output:0"]
(sequential_233_lstm_699_while_identity_51sequential_233/lstm_699/while/Identity_5:output:0"?
Ksequential_233_lstm_699_while_lstm_cell_714_biasadd_readvariableop_resourceMsequential_233_lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource_0"?
Lsequential_233_lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resourceNsequential_233_lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource_0"?
Jsequential_233_lstm_699_while_lstm_cell_714_matmul_readvariableop_resourceLsequential_233_lstm_699_while_lstm_cell_714_matmul_readvariableop_resource_0"?
Esequential_233_lstm_699_while_sequential_233_lstm_699_strided_slice_1Gsequential_233_lstm_699_while_sequential_233_lstm_699_strided_slice_1_0"?
?sequential_233_lstm_699_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_699_tensorarrayunstack_tensorlistfromtensor?sequential_233_lstm_699_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_699_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_233/lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOpBsequential_233/lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp2?
Asequential_233/lstm_699/while/lstm_cell_714/MatMul/ReadVariableOpAsequential_233/lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp2?
Csequential_233/lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOpCsequential_233/lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4336788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336788___redundant_placeholder05
1while_while_cond_4336788___redundant_placeholder15
1while_while_cond_4336788___redundant_placeholder25
1while_while_cond_4336788___redundant_placeholder3
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
?
E__inference_lstm_699_layer_call_and_return_conditional_losses_4332007

inputs(
lstm_cell_714_4331925:	?(
lstm_cell_714_4331927:	d?$
lstm_cell_714_4331929:	?
identity??%lstm_cell_714/StatefulPartitionedCall?while;
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
%lstm_cell_714/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_714_4331925lstm_cell_714_4331927lstm_cell_714_4331929*
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4331924n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_714_4331925lstm_cell_714_4331927lstm_cell_714_4331929*
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
while_body_4331938*
condR
while_cond_4331937*K
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
NoOpNoOp&^lstm_cell_714/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_714/StatefulPartitionedCall%lstm_cell_714/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_701_layer_call_and_return_conditional_losses_4333572

inputs>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4333488*
condR
while_cond_4333487*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_4332129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_714_4332153_0:	?0
while_lstm_cell_714_4332155_0:	d?,
while_lstm_cell_714_4332157_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_714_4332153:	?.
while_lstm_cell_714_4332155:	d?*
while_lstm_cell_714_4332157:	???+while/lstm_cell_714/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_714/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_714_4332153_0while_lstm_cell_714_4332155_0while_lstm_cell_714_4332157_0*
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4332070?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_714/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_714/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_714/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_714/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_714_4332153while_lstm_cell_714_4332153_0"<
while_lstm_cell_714_4332155while_lstm_cell_714_4332155_0"<
while_lstm_cell_714_4332157while_lstm_cell_714_4332157_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_714/StatefulPartitionedCall+while/lstm_cell_714/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4332707

inputs'
lstm_cell_716_4332625:2('
lstm_cell_716_4332627:
(#
lstm_cell_716_4332629:(
identity??%lstm_cell_716/StatefulPartitionedCall?while;
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
%lstm_cell_716/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_716_4332625lstm_cell_716_4332627lstm_cell_716_4332629*
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4332624n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_716_4332625lstm_cell_716_4332627lstm_cell_716_4332629*
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
while_body_4332638*
condR
while_cond_4332637*K
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
NoOpNoOp&^lstm_cell_716/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_716/StatefulPartitionedCall%lstm_cell_716/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4335413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4335413___redundant_placeholder05
1while_while_cond_4335413___redundant_placeholder15
1while_while_cond_4335413___redundant_placeholder25
1while_while_cond_4335413___redundant_placeholder3
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
while_cond_4335270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4335270___redundant_placeholder05
1while_while_cond_4335270___redundant_placeholder15
1while_while_cond_4335270___redundant_placeholder25
1while_while_cond_4335270___redundant_placeholder3
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
while_body_4335557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4332898

inputs'
lstm_cell_716_4332816:2('
lstm_cell_716_4332818:
(#
lstm_cell_716_4332820:(
identity??%lstm_cell_716/StatefulPartitionedCall?while;
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
%lstm_cell_716/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_716_4332816lstm_cell_716_4332818lstm_cell_716_4332820*
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4332770n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_716_4332816lstm_cell_716_4332818lstm_cell_716_4332820*
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
while_body_4332829*
condR
while_cond_4332828*K
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
NoOpNoOp&^lstm_cell_716/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_716/StatefulPartitionedCall%lstm_cell_716/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_4332829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_716_4332853_0:2(/
while_lstm_cell_716_4332855_0:
(+
while_lstm_cell_716_4332857_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_716_4332853:2(-
while_lstm_cell_716_4332855:
()
while_lstm_cell_716_4332857:(??+while/lstm_cell_716/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_716/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_716_4332853_0while_lstm_cell_716_4332855_0while_lstm_cell_716_4332857_0*
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4332770?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_716/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_716/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_716/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_716/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_716_4332853while_lstm_cell_716_4332853_0"<
while_lstm_cell_716_4332855while_lstm_cell_716_4332855_0"<
while_lstm_cell_716_4332857while_lstm_cell_716_4332857_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_716/StatefulPartitionedCall+while/lstm_cell_716/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4336360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4336502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336502___redundant_placeholder05
1while_while_cond_4336502___redundant_placeholder15
1while_while_cond_4336502___redundant_placeholder25
1while_while_cond_4336502___redundant_placeholder3
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
?
E__inference_lstm_699_layer_call_and_return_conditional_losses_4332198

inputs(
lstm_cell_714_4332116:	?(
lstm_cell_714_4332118:	d?$
lstm_cell_714_4332120:	?
identity??%lstm_cell_714/StatefulPartitionedCall?while;
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
%lstm_cell_714/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_714_4332116lstm_cell_714_4332118lstm_cell_714_4332120*
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4332070n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_714_4332116lstm_cell_714_4332118lstm_cell_714_4332120*
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
while_body_4332129*
condR
while_cond_4332128*K
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
NoOpNoOp&^lstm_cell_714/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_714/StatefulPartitionedCall%lstm_cell_714/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4335556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4335556___redundant_placeholder05
1while_while_cond_4335556___redundant_placeholder15
1while_while_cond_4335556___redundant_placeholder25
1while_while_cond_4335556___redundant_placeholder3
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
while_body_4333122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_233_layer_call_fn_4333406
lstm_699_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_699_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4333381o
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
_user_specified_namelstm_699_input
?J
?
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336730

inputs>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4336646*
condR
while_cond_4336645*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4335887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_715_layer_call_fn_4337024

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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4332420o
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
while_body_4335414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_701_layer_call_fn_4336279
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4332898o
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
/__inference_lstm_cell_715_layer_call_fn_4337007

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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4332274o
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
?K
?
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335355
inputs_0?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4335271*
condR
while_cond_4335270*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_700_while_cond_4334368.
*lstm_700_while_lstm_700_while_loop_counter4
0lstm_700_while_lstm_700_while_maximum_iterations
lstm_700_while_placeholder 
lstm_700_while_placeholder_1 
lstm_700_while_placeholder_2 
lstm_700_while_placeholder_30
,lstm_700_while_less_lstm_700_strided_slice_1G
Clstm_700_while_lstm_700_while_cond_4334368___redundant_placeholder0G
Clstm_700_while_lstm_700_while_cond_4334368___redundant_placeholder1G
Clstm_700_while_lstm_700_while_cond_4334368___redundant_placeholder2G
Clstm_700_while_lstm_700_while_cond_4334368___redundant_placeholder3
lstm_700_while_identity
?
lstm_700/while/LessLesslstm_700_while_placeholder,lstm_700_while_less_lstm_700_strided_slice_1*
T0*
_output_shapes
: ]
lstm_700/while/IdentityIdentitylstm_700/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_700_while_identity lstm_700/while/Identity:output:0*(
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
while_cond_4332637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4332637___redundant_placeholder05
1while_while_cond_4332637___redundant_placeholder15
1while_while_cond_4332637___redundant_placeholder25
1while_while_cond_4332637___redundant_placeholder3
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4337056

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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4337088

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
while_cond_4333652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333652___redundant_placeholder05
1while_while_cond_4333652___redundant_placeholder15
1while_while_cond_4333652___redundant_placeholder25
1while_while_cond_4333652___redundant_placeholder3
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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4335025

inputsH
5lstm_699_lstm_cell_714_matmul_readvariableop_resource:	?J
7lstm_699_lstm_cell_714_matmul_1_readvariableop_resource:	d?E
6lstm_699_lstm_cell_714_biasadd_readvariableop_resource:	?H
5lstm_700_lstm_cell_715_matmul_readvariableop_resource:	d?J
7lstm_700_lstm_cell_715_matmul_1_readvariableop_resource:	2?E
6lstm_700_lstm_cell_715_biasadd_readvariableop_resource:	?G
5lstm_701_lstm_cell_716_matmul_readvariableop_resource:2(I
7lstm_701_lstm_cell_716_matmul_1_readvariableop_resource:
(D
6lstm_701_lstm_cell_716_biasadd_readvariableop_resource:(:
(dense_233_matmul_readvariableop_resource:
7
)dense_233_biasadd_readvariableop_resource:
identity?? dense_233/BiasAdd/ReadVariableOp?dense_233/MatMul/ReadVariableOp?-lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp?,lstm_699/lstm_cell_714/MatMul/ReadVariableOp?.lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp?lstm_699/while?-lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp?,lstm_700/lstm_cell_715/MatMul/ReadVariableOp?.lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp?lstm_700/while?-lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp?,lstm_701/lstm_cell_716/MatMul/ReadVariableOp?.lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp?lstm_701/whileD
lstm_699/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_699/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_699/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_699/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_699/strided_sliceStridedSlicelstm_699/Shape:output:0%lstm_699/strided_slice/stack:output:0'lstm_699/strided_slice/stack_1:output:0'lstm_699/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_699/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_699/zeros/packedPacklstm_699/strided_slice:output:0 lstm_699/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_699/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_699/zerosFilllstm_699/zeros/packed:output:0lstm_699/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_699/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_699/zeros_1/packedPacklstm_699/strided_slice:output:0"lstm_699/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_699/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_699/zeros_1Fill lstm_699/zeros_1/packed:output:0lstm_699/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_699/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_699/transpose	Transposeinputs lstm_699/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_699/Shape_1Shapelstm_699/transpose:y:0*
T0*
_output_shapes
:h
lstm_699/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_699/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_699/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_699/strided_slice_1StridedSlicelstm_699/Shape_1:output:0'lstm_699/strided_slice_1/stack:output:0)lstm_699/strided_slice_1/stack_1:output:0)lstm_699/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_699/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_699/TensorArrayV2TensorListReserve-lstm_699/TensorArrayV2/element_shape:output:0!lstm_699/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_699/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_699/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_699/transpose:y:0Glstm_699/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_699/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_699/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_699/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_699/strided_slice_2StridedSlicelstm_699/transpose:y:0'lstm_699/strided_slice_2/stack:output:0)lstm_699/strided_slice_2/stack_1:output:0)lstm_699/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_699/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp5lstm_699_lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_699/lstm_cell_714/MatMulMatMul!lstm_699/strided_slice_2:output:04lstm_699/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_699/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp7lstm_699_lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_699/lstm_cell_714/MatMul_1MatMullstm_699/zeros:output:06lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_699/lstm_cell_714/addAddV2'lstm_699/lstm_cell_714/MatMul:product:0)lstm_699/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_699/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp6lstm_699_lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_699/lstm_cell_714/BiasAddBiasAddlstm_699/lstm_cell_714/add:z:05lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_699/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_699/lstm_cell_714/splitSplit/lstm_699/lstm_cell_714/split/split_dim:output:0'lstm_699/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_699/lstm_cell_714/SigmoidSigmoid%lstm_699/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_699/lstm_cell_714/Sigmoid_1Sigmoid%lstm_699/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_699/lstm_cell_714/mulMul$lstm_699/lstm_cell_714/Sigmoid_1:y:0lstm_699/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_699/lstm_cell_714/ReluRelu%lstm_699/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_699/lstm_cell_714/mul_1Mul"lstm_699/lstm_cell_714/Sigmoid:y:0)lstm_699/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_699/lstm_cell_714/add_1AddV2lstm_699/lstm_cell_714/mul:z:0 lstm_699/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_699/lstm_cell_714/Sigmoid_2Sigmoid%lstm_699/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_699/lstm_cell_714/Relu_1Relu lstm_699/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_699/lstm_cell_714/mul_2Mul$lstm_699/lstm_cell_714/Sigmoid_2:y:0+lstm_699/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_699/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_699/TensorArrayV2_1TensorListReserve/lstm_699/TensorArrayV2_1/element_shape:output:0!lstm_699/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_699/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_699/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_699/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_699/whileWhile$lstm_699/while/loop_counter:output:0*lstm_699/while/maximum_iterations:output:0lstm_699/time:output:0!lstm_699/TensorArrayV2_1:handle:0lstm_699/zeros:output:0lstm_699/zeros_1:output:0!lstm_699/strided_slice_1:output:0@lstm_699/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_699_lstm_cell_714_matmul_readvariableop_resource7lstm_699_lstm_cell_714_matmul_1_readvariableop_resource6lstm_699_lstm_cell_714_biasadd_readvariableop_resource*
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
lstm_699_while_body_4334657*'
condR
lstm_699_while_cond_4334656*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_699/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_699/TensorArrayV2Stack/TensorListStackTensorListStacklstm_699/while:output:3Blstm_699/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_699/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_699/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_699/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_699/strided_slice_3StridedSlice4lstm_699/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_699/strided_slice_3/stack:output:0)lstm_699/strided_slice_3/stack_1:output:0)lstm_699/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_699/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_699/transpose_1	Transpose4lstm_699/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_699/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_699/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_700/ShapeShapelstm_699/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_700/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_700/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_700/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_700/strided_sliceStridedSlicelstm_700/Shape:output:0%lstm_700/strided_slice/stack:output:0'lstm_700/strided_slice/stack_1:output:0'lstm_700/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_700/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_700/zeros/packedPacklstm_700/strided_slice:output:0 lstm_700/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_700/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_700/zerosFilllstm_700/zeros/packed:output:0lstm_700/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_700/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_700/zeros_1/packedPacklstm_700/strided_slice:output:0"lstm_700/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_700/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_700/zeros_1Fill lstm_700/zeros_1/packed:output:0lstm_700/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_700/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_700/transpose	Transposelstm_699/transpose_1:y:0 lstm_700/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_700/Shape_1Shapelstm_700/transpose:y:0*
T0*
_output_shapes
:h
lstm_700/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_700/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_700/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_700/strided_slice_1StridedSlicelstm_700/Shape_1:output:0'lstm_700/strided_slice_1/stack:output:0)lstm_700/strided_slice_1/stack_1:output:0)lstm_700/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_700/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_700/TensorArrayV2TensorListReserve-lstm_700/TensorArrayV2/element_shape:output:0!lstm_700/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_700/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_700/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_700/transpose:y:0Glstm_700/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_700/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_700/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_700/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_700/strided_slice_2StridedSlicelstm_700/transpose:y:0'lstm_700/strided_slice_2/stack:output:0)lstm_700/strided_slice_2/stack_1:output:0)lstm_700/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_700/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp5lstm_700_lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_700/lstm_cell_715/MatMulMatMul!lstm_700/strided_slice_2:output:04lstm_700/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_700/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp7lstm_700_lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_700/lstm_cell_715/MatMul_1MatMullstm_700/zeros:output:06lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_700/lstm_cell_715/addAddV2'lstm_700/lstm_cell_715/MatMul:product:0)lstm_700/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_700/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp6lstm_700_lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_700/lstm_cell_715/BiasAddBiasAddlstm_700/lstm_cell_715/add:z:05lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_700/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_700/lstm_cell_715/splitSplit/lstm_700/lstm_cell_715/split/split_dim:output:0'lstm_700/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_700/lstm_cell_715/SigmoidSigmoid%lstm_700/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_700/lstm_cell_715/Sigmoid_1Sigmoid%lstm_700/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_700/lstm_cell_715/mulMul$lstm_700/lstm_cell_715/Sigmoid_1:y:0lstm_700/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_700/lstm_cell_715/ReluRelu%lstm_700/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_700/lstm_cell_715/mul_1Mul"lstm_700/lstm_cell_715/Sigmoid:y:0)lstm_700/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_700/lstm_cell_715/add_1AddV2lstm_700/lstm_cell_715/mul:z:0 lstm_700/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_700/lstm_cell_715/Sigmoid_2Sigmoid%lstm_700/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_700/lstm_cell_715/Relu_1Relu lstm_700/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_700/lstm_cell_715/mul_2Mul$lstm_700/lstm_cell_715/Sigmoid_2:y:0+lstm_700/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_700/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_700/TensorArrayV2_1TensorListReserve/lstm_700/TensorArrayV2_1/element_shape:output:0!lstm_700/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_700/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_700/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_700/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_700/whileWhile$lstm_700/while/loop_counter:output:0*lstm_700/while/maximum_iterations:output:0lstm_700/time:output:0!lstm_700/TensorArrayV2_1:handle:0lstm_700/zeros:output:0lstm_700/zeros_1:output:0!lstm_700/strided_slice_1:output:0@lstm_700/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_700_lstm_cell_715_matmul_readvariableop_resource7lstm_700_lstm_cell_715_matmul_1_readvariableop_resource6lstm_700_lstm_cell_715_biasadd_readvariableop_resource*
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
lstm_700_while_body_4334796*'
condR
lstm_700_while_cond_4334795*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_700/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_700/TensorArrayV2Stack/TensorListStackTensorListStacklstm_700/while:output:3Blstm_700/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_700/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_700/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_700/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_700/strided_slice_3StridedSlice4lstm_700/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_700/strided_slice_3/stack:output:0)lstm_700/strided_slice_3/stack_1:output:0)lstm_700/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_700/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_700/transpose_1	Transpose4lstm_700/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_700/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_700/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_701/ShapeShapelstm_700/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_701/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_701/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_701/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_701/strided_sliceStridedSlicelstm_701/Shape:output:0%lstm_701/strided_slice/stack:output:0'lstm_701/strided_slice/stack_1:output:0'lstm_701/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_701/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_701/zeros/packedPacklstm_701/strided_slice:output:0 lstm_701/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_701/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_701/zerosFilllstm_701/zeros/packed:output:0lstm_701/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_701/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_701/zeros_1/packedPacklstm_701/strided_slice:output:0"lstm_701/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_701/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_701/zeros_1Fill lstm_701/zeros_1/packed:output:0lstm_701/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_701/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_701/transpose	Transposelstm_700/transpose_1:y:0 lstm_701/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_701/Shape_1Shapelstm_701/transpose:y:0*
T0*
_output_shapes
:h
lstm_701/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_701/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_701/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_701/strided_slice_1StridedSlicelstm_701/Shape_1:output:0'lstm_701/strided_slice_1/stack:output:0)lstm_701/strided_slice_1/stack_1:output:0)lstm_701/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_701/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_701/TensorArrayV2TensorListReserve-lstm_701/TensorArrayV2/element_shape:output:0!lstm_701/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_701/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_701/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_701/transpose:y:0Glstm_701/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_701/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_701/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_701/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_701/strided_slice_2StridedSlicelstm_701/transpose:y:0'lstm_701/strided_slice_2/stack:output:0)lstm_701/strided_slice_2/stack_1:output:0)lstm_701/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_701/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp5lstm_701_lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_701/lstm_cell_716/MatMulMatMul!lstm_701/strided_slice_2:output:04lstm_701/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_701/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp7lstm_701_lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_701/lstm_cell_716/MatMul_1MatMullstm_701/zeros:output:06lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_701/lstm_cell_716/addAddV2'lstm_701/lstm_cell_716/MatMul:product:0)lstm_701/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_701/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp6lstm_701_lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_701/lstm_cell_716/BiasAddBiasAddlstm_701/lstm_cell_716/add:z:05lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_701/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_701/lstm_cell_716/splitSplit/lstm_701/lstm_cell_716/split/split_dim:output:0'lstm_701/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_701/lstm_cell_716/SigmoidSigmoid%lstm_701/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_701/lstm_cell_716/Sigmoid_1Sigmoid%lstm_701/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_701/lstm_cell_716/mulMul$lstm_701/lstm_cell_716/Sigmoid_1:y:0lstm_701/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_701/lstm_cell_716/ReluRelu%lstm_701/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_701/lstm_cell_716/mul_1Mul"lstm_701/lstm_cell_716/Sigmoid:y:0)lstm_701/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_701/lstm_cell_716/add_1AddV2lstm_701/lstm_cell_716/mul:z:0 lstm_701/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_701/lstm_cell_716/Sigmoid_2Sigmoid%lstm_701/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_701/lstm_cell_716/Relu_1Relu lstm_701/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_701/lstm_cell_716/mul_2Mul$lstm_701/lstm_cell_716/Sigmoid_2:y:0+lstm_701/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_701/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_701/TensorArrayV2_1TensorListReserve/lstm_701/TensorArrayV2_1/element_shape:output:0!lstm_701/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_701/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_701/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_701/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_701/whileWhile$lstm_701/while/loop_counter:output:0*lstm_701/while/maximum_iterations:output:0lstm_701/time:output:0!lstm_701/TensorArrayV2_1:handle:0lstm_701/zeros:output:0lstm_701/zeros_1:output:0!lstm_701/strided_slice_1:output:0@lstm_701/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_701_lstm_cell_716_matmul_readvariableop_resource7lstm_701_lstm_cell_716_matmul_1_readvariableop_resource6lstm_701_lstm_cell_716_biasadd_readvariableop_resource*
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
lstm_701_while_body_4334935*'
condR
lstm_701_while_cond_4334934*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_701/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_701/TensorArrayV2Stack/TensorListStackTensorListStacklstm_701/while:output:3Blstm_701/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_701/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_701/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_701/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_701/strided_slice_3StridedSlice4lstm_701/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_701/strided_slice_3/stack:output:0)lstm_701/strided_slice_3/stack_1:output:0)lstm_701/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_701/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_701/transpose_1	Transpose4lstm_701/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_701/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_701/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_233/MatMul/ReadVariableOpReadVariableOp(dense_233_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_233/MatMulMatMul!lstm_701/strided_slice_3:output:0'dense_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_233/BiasAdd/ReadVariableOpReadVariableOp)dense_233_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_233/BiasAddBiasAdddense_233/MatMul:product:0(dense_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_233/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_233/BiasAdd/ReadVariableOp ^dense_233/MatMul/ReadVariableOp.^lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp-^lstm_699/lstm_cell_714/MatMul/ReadVariableOp/^lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp^lstm_699/while.^lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp-^lstm_700/lstm_cell_715/MatMul/ReadVariableOp/^lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp^lstm_700/while.^lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp-^lstm_701/lstm_cell_716/MatMul/ReadVariableOp/^lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp^lstm_701/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_233/BiasAdd/ReadVariableOp dense_233/BiasAdd/ReadVariableOp2B
dense_233/MatMul/ReadVariableOpdense_233/MatMul/ReadVariableOp2^
-lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp-lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp2\
,lstm_699/lstm_cell_714/MatMul/ReadVariableOp,lstm_699/lstm_cell_714/MatMul/ReadVariableOp2`
.lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp.lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp2 
lstm_699/whilelstm_699/while2^
-lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp-lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp2\
,lstm_700/lstm_cell_715/MatMul/ReadVariableOp,lstm_700/lstm_cell_715/MatMul/ReadVariableOp2`
.lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp.lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp2 
lstm_700/whilelstm_700/while2^
-lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp-lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp2\
,lstm_701/lstm_cell_716/MatMul/ReadVariableOp,lstm_701/lstm_cell_716/MatMul/ReadVariableOp2`
.lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp.lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp2 
lstm_701/whilelstm_701/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_699_layer_call_fn_4335047
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4332198|
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
?#
?
while_body_4332638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_716_4332662_0:2(/
while_lstm_cell_716_4332664_0:
(+
while_lstm_cell_716_4332666_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_716_4332662:2(-
while_lstm_cell_716_4332664:
()
while_lstm_cell_716_4332666:(??+while/lstm_cell_716/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_716/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_716_4332662_0while_lstm_cell_716_4332664_0while_lstm_cell_716_4332666_0*
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4332624?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_716/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_716/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_716/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_716/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_716_4332662while_lstm_cell_716_4332662_0"<
while_lstm_cell_716_4332664while_lstm_cell_716_4332664_0"<
while_lstm_cell_716_4332666while_lstm_cell_716_4332666_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_716/StatefulPartitionedCall+while/lstm_cell_716/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_700_while_body_4334369.
*lstm_700_while_lstm_700_while_loop_counter4
0lstm_700_while_lstm_700_while_maximum_iterations
lstm_700_while_placeholder 
lstm_700_while_placeholder_1 
lstm_700_while_placeholder_2 
lstm_700_while_placeholder_3-
)lstm_700_while_lstm_700_strided_slice_1_0i
elstm_700_while_tensorarrayv2read_tensorlistgetitem_lstm_700_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_700_while_lstm_cell_715_matmul_readvariableop_resource_0:	d?R
?lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?M
>lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
lstm_700_while_identity
lstm_700_while_identity_1
lstm_700_while_identity_2
lstm_700_while_identity_3
lstm_700_while_identity_4
lstm_700_while_identity_5+
'lstm_700_while_lstm_700_strided_slice_1g
clstm_700_while_tensorarrayv2read_tensorlistgetitem_lstm_700_tensorarrayunstack_tensorlistfromtensorN
;lstm_700_while_lstm_cell_715_matmul_readvariableop_resource:	d?P
=lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource:	2?K
<lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource:	???3lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp?2lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp?4lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp?
@lstm_700/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_700/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_700_while_tensorarrayv2read_tensorlistgetitem_lstm_700_tensorarrayunstack_tensorlistfromtensor_0lstm_700_while_placeholderIlstm_700/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_700/while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp=lstm_700_while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_700/while/lstm_cell_715/MatMulMatMul9lstm_700/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp?lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_700/while/lstm_cell_715/MatMul_1MatMullstm_700_while_placeholder_2<lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_700/while/lstm_cell_715/addAddV2-lstm_700/while/lstm_cell_715/MatMul:product:0/lstm_700/while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp>lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_700/while/lstm_cell_715/BiasAddBiasAdd$lstm_700/while/lstm_cell_715/add:z:0;lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_700/while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_700/while/lstm_cell_715/splitSplit5lstm_700/while/lstm_cell_715/split/split_dim:output:0-lstm_700/while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_700/while/lstm_cell_715/SigmoidSigmoid+lstm_700/while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_700/while/lstm_cell_715/Sigmoid_1Sigmoid+lstm_700/while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_700/while/lstm_cell_715/mulMul*lstm_700/while/lstm_cell_715/Sigmoid_1:y:0lstm_700_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_700/while/lstm_cell_715/ReluRelu+lstm_700/while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_700/while/lstm_cell_715/mul_1Mul(lstm_700/while/lstm_cell_715/Sigmoid:y:0/lstm_700/while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_700/while/lstm_cell_715/add_1AddV2$lstm_700/while/lstm_cell_715/mul:z:0&lstm_700/while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_700/while/lstm_cell_715/Sigmoid_2Sigmoid+lstm_700/while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_700/while/lstm_cell_715/Relu_1Relu&lstm_700/while/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_700/while/lstm_cell_715/mul_2Mul*lstm_700/while/lstm_cell_715/Sigmoid_2:y:01lstm_700/while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_700/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_700_while_placeholder_1lstm_700_while_placeholder&lstm_700/while/lstm_cell_715/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_700/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_700/while/addAddV2lstm_700_while_placeholderlstm_700/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_700/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_700/while/add_1AddV2*lstm_700_while_lstm_700_while_loop_counterlstm_700/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_700/while/IdentityIdentitylstm_700/while/add_1:z:0^lstm_700/while/NoOp*
T0*
_output_shapes
: ?
lstm_700/while/Identity_1Identity0lstm_700_while_lstm_700_while_maximum_iterations^lstm_700/while/NoOp*
T0*
_output_shapes
: t
lstm_700/while/Identity_2Identitylstm_700/while/add:z:0^lstm_700/while/NoOp*
T0*
_output_shapes
: ?
lstm_700/while/Identity_3IdentityClstm_700/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_700/while/NoOp*
T0*
_output_shapes
: ?
lstm_700/while/Identity_4Identity&lstm_700/while/lstm_cell_715/mul_2:z:0^lstm_700/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_700/while/Identity_5Identity&lstm_700/while/lstm_cell_715/add_1:z:0^lstm_700/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_700/while/NoOpNoOp4^lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp3^lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp5^lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_700_while_identity lstm_700/while/Identity:output:0"?
lstm_700_while_identity_1"lstm_700/while/Identity_1:output:0"?
lstm_700_while_identity_2"lstm_700/while/Identity_2:output:0"?
lstm_700_while_identity_3"lstm_700/while/Identity_3:output:0"?
lstm_700_while_identity_4"lstm_700/while/Identity_4:output:0"?
lstm_700_while_identity_5"lstm_700/while/Identity_5:output:0"T
'lstm_700_while_lstm_700_strided_slice_1)lstm_700_while_lstm_700_strided_slice_1_0"~
<lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource>lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource_0"?
=lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource?lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource_0"|
;lstm_700_while_lstm_cell_715_matmul_readvariableop_resource=lstm_700_while_lstm_cell_715_matmul_readvariableop_resource_0"?
clstm_700_while_tensorarrayv2read_tensorlistgetitem_lstm_700_tensorarrayunstack_tensorlistfromtensorelstm_700_while_tensorarrayv2read_tensorlistgetitem_lstm_700_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp3lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp2h
2lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp2lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp2l
4lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp4lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_699_while_body_4334230.
*lstm_699_while_lstm_699_while_loop_counter4
0lstm_699_while_lstm_699_while_maximum_iterations
lstm_699_while_placeholder 
lstm_699_while_placeholder_1 
lstm_699_while_placeholder_2 
lstm_699_while_placeholder_3-
)lstm_699_while_lstm_699_strided_slice_1_0i
elstm_699_while_tensorarrayv2read_tensorlistgetitem_lstm_699_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_699_while_lstm_cell_714_matmul_readvariableop_resource_0:	?R
?lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?M
>lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
lstm_699_while_identity
lstm_699_while_identity_1
lstm_699_while_identity_2
lstm_699_while_identity_3
lstm_699_while_identity_4
lstm_699_while_identity_5+
'lstm_699_while_lstm_699_strided_slice_1g
clstm_699_while_tensorarrayv2read_tensorlistgetitem_lstm_699_tensorarrayunstack_tensorlistfromtensorN
;lstm_699_while_lstm_cell_714_matmul_readvariableop_resource:	?P
=lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource:	d?K
<lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource:	???3lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp?2lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp?4lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp?
@lstm_699/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_699/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_699_while_tensorarrayv2read_tensorlistgetitem_lstm_699_tensorarrayunstack_tensorlistfromtensor_0lstm_699_while_placeholderIlstm_699/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_699/while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp=lstm_699_while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_699/while/lstm_cell_714/MatMulMatMul9lstm_699/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp?lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_699/while/lstm_cell_714/MatMul_1MatMullstm_699_while_placeholder_2<lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_699/while/lstm_cell_714/addAddV2-lstm_699/while/lstm_cell_714/MatMul:product:0/lstm_699/while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp>lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_699/while/lstm_cell_714/BiasAddBiasAdd$lstm_699/while/lstm_cell_714/add:z:0;lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_699/while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_699/while/lstm_cell_714/splitSplit5lstm_699/while/lstm_cell_714/split/split_dim:output:0-lstm_699/while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_699/while/lstm_cell_714/SigmoidSigmoid+lstm_699/while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_699/while/lstm_cell_714/Sigmoid_1Sigmoid+lstm_699/while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_699/while/lstm_cell_714/mulMul*lstm_699/while/lstm_cell_714/Sigmoid_1:y:0lstm_699_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_699/while/lstm_cell_714/ReluRelu+lstm_699/while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_699/while/lstm_cell_714/mul_1Mul(lstm_699/while/lstm_cell_714/Sigmoid:y:0/lstm_699/while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_699/while/lstm_cell_714/add_1AddV2$lstm_699/while/lstm_cell_714/mul:z:0&lstm_699/while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_699/while/lstm_cell_714/Sigmoid_2Sigmoid+lstm_699/while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_699/while/lstm_cell_714/Relu_1Relu&lstm_699/while/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_699/while/lstm_cell_714/mul_2Mul*lstm_699/while/lstm_cell_714/Sigmoid_2:y:01lstm_699/while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_699/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_699_while_placeholder_1lstm_699_while_placeholder&lstm_699/while/lstm_cell_714/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_699/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_699/while/addAddV2lstm_699_while_placeholderlstm_699/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_699/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_699/while/add_1AddV2*lstm_699_while_lstm_699_while_loop_counterlstm_699/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_699/while/IdentityIdentitylstm_699/while/add_1:z:0^lstm_699/while/NoOp*
T0*
_output_shapes
: ?
lstm_699/while/Identity_1Identity0lstm_699_while_lstm_699_while_maximum_iterations^lstm_699/while/NoOp*
T0*
_output_shapes
: t
lstm_699/while/Identity_2Identitylstm_699/while/add:z:0^lstm_699/while/NoOp*
T0*
_output_shapes
: ?
lstm_699/while/Identity_3IdentityClstm_699/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_699/while/NoOp*
T0*
_output_shapes
: ?
lstm_699/while/Identity_4Identity&lstm_699/while/lstm_cell_714/mul_2:z:0^lstm_699/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_699/while/Identity_5Identity&lstm_699/while/lstm_cell_714/add_1:z:0^lstm_699/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_699/while/NoOpNoOp4^lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp3^lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp5^lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_699_while_identity lstm_699/while/Identity:output:0"?
lstm_699_while_identity_1"lstm_699/while/Identity_1:output:0"?
lstm_699_while_identity_2"lstm_699/while/Identity_2:output:0"?
lstm_699_while_identity_3"lstm_699/while/Identity_3:output:0"?
lstm_699_while_identity_4"lstm_699/while/Identity_4:output:0"?
lstm_699_while_identity_5"lstm_699/while/Identity_5:output:0"T
'lstm_699_while_lstm_699_strided_slice_1)lstm_699_while_lstm_699_strided_slice_1_0"~
<lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource>lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource_0"?
=lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource?lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource_0"|
;lstm_699_while_lstm_cell_714_matmul_readvariableop_resource=lstm_699_while_lstm_cell_714_matmul_readvariableop_resource_0"?
clstm_699_while_tensorarrayv2read_tensorlistgetitem_lstm_699_tensorarrayunstack_tensorlistfromtensorelstm_699_while_tensorarrayv2read_tensorlistgetitem_lstm_699_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp3lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp2h
2lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp2lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp2l
4lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp4lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4331857
lstm_699_inputW
Dsequential_233_lstm_699_lstm_cell_714_matmul_readvariableop_resource:	?Y
Fsequential_233_lstm_699_lstm_cell_714_matmul_1_readvariableop_resource:	d?T
Esequential_233_lstm_699_lstm_cell_714_biasadd_readvariableop_resource:	?W
Dsequential_233_lstm_700_lstm_cell_715_matmul_readvariableop_resource:	d?Y
Fsequential_233_lstm_700_lstm_cell_715_matmul_1_readvariableop_resource:	2?T
Esequential_233_lstm_700_lstm_cell_715_biasadd_readvariableop_resource:	?V
Dsequential_233_lstm_701_lstm_cell_716_matmul_readvariableop_resource:2(X
Fsequential_233_lstm_701_lstm_cell_716_matmul_1_readvariableop_resource:
(S
Esequential_233_lstm_701_lstm_cell_716_biasadd_readvariableop_resource:(I
7sequential_233_dense_233_matmul_readvariableop_resource:
F
8sequential_233_dense_233_biasadd_readvariableop_resource:
identity??/sequential_233/dense_233/BiasAdd/ReadVariableOp?.sequential_233/dense_233/MatMul/ReadVariableOp?<sequential_233/lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp?;sequential_233/lstm_699/lstm_cell_714/MatMul/ReadVariableOp?=sequential_233/lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp?sequential_233/lstm_699/while?<sequential_233/lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp?;sequential_233/lstm_700/lstm_cell_715/MatMul/ReadVariableOp?=sequential_233/lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp?sequential_233/lstm_700/while?<sequential_233/lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp?;sequential_233/lstm_701/lstm_cell_716/MatMul/ReadVariableOp?=sequential_233/lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp?sequential_233/lstm_701/while[
sequential_233/lstm_699/ShapeShapelstm_699_input*
T0*
_output_shapes
:u
+sequential_233/lstm_699/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_233/lstm_699/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_233/lstm_699/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_233/lstm_699/strided_sliceStridedSlice&sequential_233/lstm_699/Shape:output:04sequential_233/lstm_699/strided_slice/stack:output:06sequential_233/lstm_699/strided_slice/stack_1:output:06sequential_233/lstm_699/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_233/lstm_699/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_233/lstm_699/zeros/packedPack.sequential_233/lstm_699/strided_slice:output:0/sequential_233/lstm_699/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_233/lstm_699/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_233/lstm_699/zerosFill-sequential_233/lstm_699/zeros/packed:output:0,sequential_233/lstm_699/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_233/lstm_699/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_233/lstm_699/zeros_1/packedPack.sequential_233/lstm_699/strided_slice:output:01sequential_233/lstm_699/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_233/lstm_699/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_233/lstm_699/zeros_1Fill/sequential_233/lstm_699/zeros_1/packed:output:0.sequential_233/lstm_699/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_233/lstm_699/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_233/lstm_699/transpose	Transposelstm_699_input/sequential_233/lstm_699/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_233/lstm_699/Shape_1Shape%sequential_233/lstm_699/transpose:y:0*
T0*
_output_shapes
:w
-sequential_233/lstm_699/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_233/lstm_699/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_233/lstm_699/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_233/lstm_699/strided_slice_1StridedSlice(sequential_233/lstm_699/Shape_1:output:06sequential_233/lstm_699/strided_slice_1/stack:output:08sequential_233/lstm_699/strided_slice_1/stack_1:output:08sequential_233/lstm_699/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_233/lstm_699/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_233/lstm_699/TensorArrayV2TensorListReserve<sequential_233/lstm_699/TensorArrayV2/element_shape:output:00sequential_233/lstm_699/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_233/lstm_699/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_233/lstm_699/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_233/lstm_699/transpose:y:0Vsequential_233/lstm_699/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_233/lstm_699/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_233/lstm_699/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_233/lstm_699/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_233/lstm_699/strided_slice_2StridedSlice%sequential_233/lstm_699/transpose:y:06sequential_233/lstm_699/strided_slice_2/stack:output:08sequential_233/lstm_699/strided_slice_2/stack_1:output:08sequential_233/lstm_699/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_233/lstm_699/lstm_cell_714/MatMul/ReadVariableOpReadVariableOpDsequential_233_lstm_699_lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_233/lstm_699/lstm_cell_714/MatMulMatMul0sequential_233/lstm_699/strided_slice_2:output:0Csequential_233/lstm_699/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_233/lstm_699/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOpFsequential_233_lstm_699_lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_233/lstm_699/lstm_cell_714/MatMul_1MatMul&sequential_233/lstm_699/zeros:output:0Esequential_233/lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_233/lstm_699/lstm_cell_714/addAddV26sequential_233/lstm_699/lstm_cell_714/MatMul:product:08sequential_233/lstm_699/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_233/lstm_699/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOpEsequential_233_lstm_699_lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_233/lstm_699/lstm_cell_714/BiasAddBiasAdd-sequential_233/lstm_699/lstm_cell_714/add:z:0Dsequential_233/lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_233/lstm_699/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_233/lstm_699/lstm_cell_714/splitSplit>sequential_233/lstm_699/lstm_cell_714/split/split_dim:output:06sequential_233/lstm_699/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_233/lstm_699/lstm_cell_714/SigmoidSigmoid4sequential_233/lstm_699/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_233/lstm_699/lstm_cell_714/Sigmoid_1Sigmoid4sequential_233/lstm_699/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_233/lstm_699/lstm_cell_714/mulMul3sequential_233/lstm_699/lstm_cell_714/Sigmoid_1:y:0(sequential_233/lstm_699/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_233/lstm_699/lstm_cell_714/ReluRelu4sequential_233/lstm_699/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_233/lstm_699/lstm_cell_714/mul_1Mul1sequential_233/lstm_699/lstm_cell_714/Sigmoid:y:08sequential_233/lstm_699/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_233/lstm_699/lstm_cell_714/add_1AddV2-sequential_233/lstm_699/lstm_cell_714/mul:z:0/sequential_233/lstm_699/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_233/lstm_699/lstm_cell_714/Sigmoid_2Sigmoid4sequential_233/lstm_699/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_233/lstm_699/lstm_cell_714/Relu_1Relu/sequential_233/lstm_699/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_233/lstm_699/lstm_cell_714/mul_2Mul3sequential_233/lstm_699/lstm_cell_714/Sigmoid_2:y:0:sequential_233/lstm_699/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_233/lstm_699/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_233/lstm_699/TensorArrayV2_1TensorListReserve>sequential_233/lstm_699/TensorArrayV2_1/element_shape:output:00sequential_233/lstm_699/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_233/lstm_699/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_233/lstm_699/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_233/lstm_699/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_233/lstm_699/whileWhile3sequential_233/lstm_699/while/loop_counter:output:09sequential_233/lstm_699/while/maximum_iterations:output:0%sequential_233/lstm_699/time:output:00sequential_233/lstm_699/TensorArrayV2_1:handle:0&sequential_233/lstm_699/zeros:output:0(sequential_233/lstm_699/zeros_1:output:00sequential_233/lstm_699/strided_slice_1:output:0Osequential_233/lstm_699/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_233_lstm_699_lstm_cell_714_matmul_readvariableop_resourceFsequential_233_lstm_699_lstm_cell_714_matmul_1_readvariableop_resourceEsequential_233_lstm_699_lstm_cell_714_biasadd_readvariableop_resource*
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
*sequential_233_lstm_699_while_body_4331489*6
cond.R,
*sequential_233_lstm_699_while_cond_4331488*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_233/lstm_699/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_233/lstm_699/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_233/lstm_699/while:output:3Qsequential_233/lstm_699/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_233/lstm_699/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_233/lstm_699/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_233/lstm_699/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_233/lstm_699/strided_slice_3StridedSliceCsequential_233/lstm_699/TensorArrayV2Stack/TensorListStack:tensor:06sequential_233/lstm_699/strided_slice_3/stack:output:08sequential_233/lstm_699/strided_slice_3/stack_1:output:08sequential_233/lstm_699/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_233/lstm_699/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_233/lstm_699/transpose_1	TransposeCsequential_233/lstm_699/TensorArrayV2Stack/TensorListStack:tensor:01sequential_233/lstm_699/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_233/lstm_699/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_233/lstm_700/ShapeShape'sequential_233/lstm_699/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_233/lstm_700/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_233/lstm_700/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_233/lstm_700/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_233/lstm_700/strided_sliceStridedSlice&sequential_233/lstm_700/Shape:output:04sequential_233/lstm_700/strided_slice/stack:output:06sequential_233/lstm_700/strided_slice/stack_1:output:06sequential_233/lstm_700/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_233/lstm_700/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_233/lstm_700/zeros/packedPack.sequential_233/lstm_700/strided_slice:output:0/sequential_233/lstm_700/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_233/lstm_700/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_233/lstm_700/zerosFill-sequential_233/lstm_700/zeros/packed:output:0,sequential_233/lstm_700/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_233/lstm_700/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_233/lstm_700/zeros_1/packedPack.sequential_233/lstm_700/strided_slice:output:01sequential_233/lstm_700/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_233/lstm_700/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_233/lstm_700/zeros_1Fill/sequential_233/lstm_700/zeros_1/packed:output:0.sequential_233/lstm_700/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_233/lstm_700/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_233/lstm_700/transpose	Transpose'sequential_233/lstm_699/transpose_1:y:0/sequential_233/lstm_700/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_233/lstm_700/Shape_1Shape%sequential_233/lstm_700/transpose:y:0*
T0*
_output_shapes
:w
-sequential_233/lstm_700/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_233/lstm_700/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_233/lstm_700/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_233/lstm_700/strided_slice_1StridedSlice(sequential_233/lstm_700/Shape_1:output:06sequential_233/lstm_700/strided_slice_1/stack:output:08sequential_233/lstm_700/strided_slice_1/stack_1:output:08sequential_233/lstm_700/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_233/lstm_700/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_233/lstm_700/TensorArrayV2TensorListReserve<sequential_233/lstm_700/TensorArrayV2/element_shape:output:00sequential_233/lstm_700/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_233/lstm_700/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_233/lstm_700/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_233/lstm_700/transpose:y:0Vsequential_233/lstm_700/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_233/lstm_700/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_233/lstm_700/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_233/lstm_700/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_233/lstm_700/strided_slice_2StridedSlice%sequential_233/lstm_700/transpose:y:06sequential_233/lstm_700/strided_slice_2/stack:output:08sequential_233/lstm_700/strided_slice_2/stack_1:output:08sequential_233/lstm_700/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_233/lstm_700/lstm_cell_715/MatMul/ReadVariableOpReadVariableOpDsequential_233_lstm_700_lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_233/lstm_700/lstm_cell_715/MatMulMatMul0sequential_233/lstm_700/strided_slice_2:output:0Csequential_233/lstm_700/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_233/lstm_700/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOpFsequential_233_lstm_700_lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_233/lstm_700/lstm_cell_715/MatMul_1MatMul&sequential_233/lstm_700/zeros:output:0Esequential_233/lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_233/lstm_700/lstm_cell_715/addAddV26sequential_233/lstm_700/lstm_cell_715/MatMul:product:08sequential_233/lstm_700/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_233/lstm_700/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOpEsequential_233_lstm_700_lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_233/lstm_700/lstm_cell_715/BiasAddBiasAdd-sequential_233/lstm_700/lstm_cell_715/add:z:0Dsequential_233/lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_233/lstm_700/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_233/lstm_700/lstm_cell_715/splitSplit>sequential_233/lstm_700/lstm_cell_715/split/split_dim:output:06sequential_233/lstm_700/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_233/lstm_700/lstm_cell_715/SigmoidSigmoid4sequential_233/lstm_700/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_233/lstm_700/lstm_cell_715/Sigmoid_1Sigmoid4sequential_233/lstm_700/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_233/lstm_700/lstm_cell_715/mulMul3sequential_233/lstm_700/lstm_cell_715/Sigmoid_1:y:0(sequential_233/lstm_700/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_233/lstm_700/lstm_cell_715/ReluRelu4sequential_233/lstm_700/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_233/lstm_700/lstm_cell_715/mul_1Mul1sequential_233/lstm_700/lstm_cell_715/Sigmoid:y:08sequential_233/lstm_700/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_233/lstm_700/lstm_cell_715/add_1AddV2-sequential_233/lstm_700/lstm_cell_715/mul:z:0/sequential_233/lstm_700/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_233/lstm_700/lstm_cell_715/Sigmoid_2Sigmoid4sequential_233/lstm_700/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_233/lstm_700/lstm_cell_715/Relu_1Relu/sequential_233/lstm_700/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_233/lstm_700/lstm_cell_715/mul_2Mul3sequential_233/lstm_700/lstm_cell_715/Sigmoid_2:y:0:sequential_233/lstm_700/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_233/lstm_700/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_233/lstm_700/TensorArrayV2_1TensorListReserve>sequential_233/lstm_700/TensorArrayV2_1/element_shape:output:00sequential_233/lstm_700/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_233/lstm_700/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_233/lstm_700/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_233/lstm_700/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_233/lstm_700/whileWhile3sequential_233/lstm_700/while/loop_counter:output:09sequential_233/lstm_700/while/maximum_iterations:output:0%sequential_233/lstm_700/time:output:00sequential_233/lstm_700/TensorArrayV2_1:handle:0&sequential_233/lstm_700/zeros:output:0(sequential_233/lstm_700/zeros_1:output:00sequential_233/lstm_700/strided_slice_1:output:0Osequential_233/lstm_700/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_233_lstm_700_lstm_cell_715_matmul_readvariableop_resourceFsequential_233_lstm_700_lstm_cell_715_matmul_1_readvariableop_resourceEsequential_233_lstm_700_lstm_cell_715_biasadd_readvariableop_resource*
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
*sequential_233_lstm_700_while_body_4331628*6
cond.R,
*sequential_233_lstm_700_while_cond_4331627*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_233/lstm_700/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_233/lstm_700/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_233/lstm_700/while:output:3Qsequential_233/lstm_700/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_233/lstm_700/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_233/lstm_700/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_233/lstm_700/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_233/lstm_700/strided_slice_3StridedSliceCsequential_233/lstm_700/TensorArrayV2Stack/TensorListStack:tensor:06sequential_233/lstm_700/strided_slice_3/stack:output:08sequential_233/lstm_700/strided_slice_3/stack_1:output:08sequential_233/lstm_700/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_233/lstm_700/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_233/lstm_700/transpose_1	TransposeCsequential_233/lstm_700/TensorArrayV2Stack/TensorListStack:tensor:01sequential_233/lstm_700/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_233/lstm_700/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_233/lstm_701/ShapeShape'sequential_233/lstm_700/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_233/lstm_701/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_233/lstm_701/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_233/lstm_701/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_233/lstm_701/strided_sliceStridedSlice&sequential_233/lstm_701/Shape:output:04sequential_233/lstm_701/strided_slice/stack:output:06sequential_233/lstm_701/strided_slice/stack_1:output:06sequential_233/lstm_701/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_233/lstm_701/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_233/lstm_701/zeros/packedPack.sequential_233/lstm_701/strided_slice:output:0/sequential_233/lstm_701/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_233/lstm_701/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_233/lstm_701/zerosFill-sequential_233/lstm_701/zeros/packed:output:0,sequential_233/lstm_701/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_233/lstm_701/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_233/lstm_701/zeros_1/packedPack.sequential_233/lstm_701/strided_slice:output:01sequential_233/lstm_701/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_233/lstm_701/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_233/lstm_701/zeros_1Fill/sequential_233/lstm_701/zeros_1/packed:output:0.sequential_233/lstm_701/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_233/lstm_701/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_233/lstm_701/transpose	Transpose'sequential_233/lstm_700/transpose_1:y:0/sequential_233/lstm_701/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_233/lstm_701/Shape_1Shape%sequential_233/lstm_701/transpose:y:0*
T0*
_output_shapes
:w
-sequential_233/lstm_701/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_233/lstm_701/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_233/lstm_701/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_233/lstm_701/strided_slice_1StridedSlice(sequential_233/lstm_701/Shape_1:output:06sequential_233/lstm_701/strided_slice_1/stack:output:08sequential_233/lstm_701/strided_slice_1/stack_1:output:08sequential_233/lstm_701/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_233/lstm_701/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_233/lstm_701/TensorArrayV2TensorListReserve<sequential_233/lstm_701/TensorArrayV2/element_shape:output:00sequential_233/lstm_701/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_233/lstm_701/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_233/lstm_701/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_233/lstm_701/transpose:y:0Vsequential_233/lstm_701/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_233/lstm_701/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_233/lstm_701/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_233/lstm_701/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_233/lstm_701/strided_slice_2StridedSlice%sequential_233/lstm_701/transpose:y:06sequential_233/lstm_701/strided_slice_2/stack:output:08sequential_233/lstm_701/strided_slice_2/stack_1:output:08sequential_233/lstm_701/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_233/lstm_701/lstm_cell_716/MatMul/ReadVariableOpReadVariableOpDsequential_233_lstm_701_lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_233/lstm_701/lstm_cell_716/MatMulMatMul0sequential_233/lstm_701/strided_slice_2:output:0Csequential_233/lstm_701/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_233/lstm_701/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOpFsequential_233_lstm_701_lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_233/lstm_701/lstm_cell_716/MatMul_1MatMul&sequential_233/lstm_701/zeros:output:0Esequential_233/lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_233/lstm_701/lstm_cell_716/addAddV26sequential_233/lstm_701/lstm_cell_716/MatMul:product:08sequential_233/lstm_701/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_233/lstm_701/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOpEsequential_233_lstm_701_lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_233/lstm_701/lstm_cell_716/BiasAddBiasAdd-sequential_233/lstm_701/lstm_cell_716/add:z:0Dsequential_233/lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_233/lstm_701/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_233/lstm_701/lstm_cell_716/splitSplit>sequential_233/lstm_701/lstm_cell_716/split/split_dim:output:06sequential_233/lstm_701/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_233/lstm_701/lstm_cell_716/SigmoidSigmoid4sequential_233/lstm_701/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_233/lstm_701/lstm_cell_716/Sigmoid_1Sigmoid4sequential_233/lstm_701/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_233/lstm_701/lstm_cell_716/mulMul3sequential_233/lstm_701/lstm_cell_716/Sigmoid_1:y:0(sequential_233/lstm_701/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_233/lstm_701/lstm_cell_716/ReluRelu4sequential_233/lstm_701/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_233/lstm_701/lstm_cell_716/mul_1Mul1sequential_233/lstm_701/lstm_cell_716/Sigmoid:y:08sequential_233/lstm_701/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_233/lstm_701/lstm_cell_716/add_1AddV2-sequential_233/lstm_701/lstm_cell_716/mul:z:0/sequential_233/lstm_701/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_233/lstm_701/lstm_cell_716/Sigmoid_2Sigmoid4sequential_233/lstm_701/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_233/lstm_701/lstm_cell_716/Relu_1Relu/sequential_233/lstm_701/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_233/lstm_701/lstm_cell_716/mul_2Mul3sequential_233/lstm_701/lstm_cell_716/Sigmoid_2:y:0:sequential_233/lstm_701/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_233/lstm_701/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_233/lstm_701/TensorArrayV2_1TensorListReserve>sequential_233/lstm_701/TensorArrayV2_1/element_shape:output:00sequential_233/lstm_701/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_233/lstm_701/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_233/lstm_701/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_233/lstm_701/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_233/lstm_701/whileWhile3sequential_233/lstm_701/while/loop_counter:output:09sequential_233/lstm_701/while/maximum_iterations:output:0%sequential_233/lstm_701/time:output:00sequential_233/lstm_701/TensorArrayV2_1:handle:0&sequential_233/lstm_701/zeros:output:0(sequential_233/lstm_701/zeros_1:output:00sequential_233/lstm_701/strided_slice_1:output:0Osequential_233/lstm_701/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_233_lstm_701_lstm_cell_716_matmul_readvariableop_resourceFsequential_233_lstm_701_lstm_cell_716_matmul_1_readvariableop_resourceEsequential_233_lstm_701_lstm_cell_716_biasadd_readvariableop_resource*
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
*sequential_233_lstm_701_while_body_4331767*6
cond.R,
*sequential_233_lstm_701_while_cond_4331766*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_233/lstm_701/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_233/lstm_701/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_233/lstm_701/while:output:3Qsequential_233/lstm_701/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_233/lstm_701/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_233/lstm_701/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_233/lstm_701/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_233/lstm_701/strided_slice_3StridedSliceCsequential_233/lstm_701/TensorArrayV2Stack/TensorListStack:tensor:06sequential_233/lstm_701/strided_slice_3/stack:output:08sequential_233/lstm_701/strided_slice_3/stack_1:output:08sequential_233/lstm_701/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_233/lstm_701/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_233/lstm_701/transpose_1	TransposeCsequential_233/lstm_701/TensorArrayV2Stack/TensorListStack:tensor:01sequential_233/lstm_701/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_233/lstm_701/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_233/dense_233/MatMul/ReadVariableOpReadVariableOp7sequential_233_dense_233_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_233/dense_233/MatMulMatMul0sequential_233/lstm_701/strided_slice_3:output:06sequential_233/dense_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_233/dense_233/BiasAdd/ReadVariableOpReadVariableOp8sequential_233_dense_233_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_233/dense_233/BiasAddBiasAdd)sequential_233/dense_233/MatMul:product:07sequential_233/dense_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_233/dense_233/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_233/dense_233/BiasAdd/ReadVariableOp/^sequential_233/dense_233/MatMul/ReadVariableOp=^sequential_233/lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp<^sequential_233/lstm_699/lstm_cell_714/MatMul/ReadVariableOp>^sequential_233/lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp^sequential_233/lstm_699/while=^sequential_233/lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp<^sequential_233/lstm_700/lstm_cell_715/MatMul/ReadVariableOp>^sequential_233/lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp^sequential_233/lstm_700/while=^sequential_233/lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp<^sequential_233/lstm_701/lstm_cell_716/MatMul/ReadVariableOp>^sequential_233/lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp^sequential_233/lstm_701/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_233/dense_233/BiasAdd/ReadVariableOp/sequential_233/dense_233/BiasAdd/ReadVariableOp2`
.sequential_233/dense_233/MatMul/ReadVariableOp.sequential_233/dense_233/MatMul/ReadVariableOp2|
<sequential_233/lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp<sequential_233/lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp2z
;sequential_233/lstm_699/lstm_cell_714/MatMul/ReadVariableOp;sequential_233/lstm_699/lstm_cell_714/MatMul/ReadVariableOp2~
=sequential_233/lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp=sequential_233/lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp2>
sequential_233/lstm_699/whilesequential_233/lstm_699/while2|
<sequential_233/lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp<sequential_233/lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp2z
;sequential_233/lstm_700/lstm_cell_715/MatMul/ReadVariableOp;sequential_233/lstm_700/lstm_cell_715/MatMul/ReadVariableOp2~
=sequential_233/lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp=sequential_233/lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp2>
sequential_233/lstm_700/whilesequential_233/lstm_700/while2|
<sequential_233/lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp<sequential_233/lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp2z
;sequential_233/lstm_701/lstm_cell_716/MatMul/ReadVariableOp;sequential_233/lstm_701/lstm_cell_716/MatMul/ReadVariableOp2~
=sequential_233/lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp=sequential_233/lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp2>
sequential_233/lstm_701/whilesequential_233/lstm_701/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_699_input
?
?
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4331924

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
?
?
*__inference_lstm_701_layer_call_fn_4336290

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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4333356o
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
*sequential_233_lstm_701_while_cond_4331766L
Hsequential_233_lstm_701_while_sequential_233_lstm_701_while_loop_counterR
Nsequential_233_lstm_701_while_sequential_233_lstm_701_while_maximum_iterations-
)sequential_233_lstm_701_while_placeholder/
+sequential_233_lstm_701_while_placeholder_1/
+sequential_233_lstm_701_while_placeholder_2/
+sequential_233_lstm_701_while_placeholder_3N
Jsequential_233_lstm_701_while_less_sequential_233_lstm_701_strided_slice_1e
asequential_233_lstm_701_while_sequential_233_lstm_701_while_cond_4331766___redundant_placeholder0e
asequential_233_lstm_701_while_sequential_233_lstm_701_while_cond_4331766___redundant_placeholder1e
asequential_233_lstm_701_while_sequential_233_lstm_701_while_cond_4331766___redundant_placeholder2e
asequential_233_lstm_701_while_sequential_233_lstm_701_while_cond_4331766___redundant_placeholder3*
&sequential_233_lstm_701_while_identity
?
"sequential_233/lstm_701/while/LessLess)sequential_233_lstm_701_while_placeholderJsequential_233_lstm_701_while_less_sequential_233_lstm_701_strided_slice_1*
T0*
_output_shapes
: {
&sequential_233/lstm_701/while/IdentityIdentity&sequential_233/lstm_701/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_233_lstm_701_while_identity/sequential_233/lstm_701/while/Identity:output:0*(
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
while_cond_4332828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4332828___redundant_placeholder05
1while_while_cond_4332828___redundant_placeholder15
1while_while_cond_4332828___redundant_placeholder25
1while_while_cond_4332828___redundant_placeholder3
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
while_body_4333272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4336503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_714_layer_call_fn_4336909

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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4331924o
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
?W
?
 __inference__traced_save_4337329
file_prefix/
+savev2_dense_233_kernel_read_readvariableop-
)savev2_dense_233_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_699_lstm_cell_699_kernel_read_readvariableopF
Bsavev2_lstm_699_lstm_cell_699_recurrent_kernel_read_readvariableop:
6savev2_lstm_699_lstm_cell_699_bias_read_readvariableop<
8savev2_lstm_700_lstm_cell_700_kernel_read_readvariableopF
Bsavev2_lstm_700_lstm_cell_700_recurrent_kernel_read_readvariableop:
6savev2_lstm_700_lstm_cell_700_bias_read_readvariableop<
8savev2_lstm_701_lstm_cell_701_kernel_read_readvariableopF
Bsavev2_lstm_701_lstm_cell_701_recurrent_kernel_read_readvariableop:
6savev2_lstm_701_lstm_cell_701_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_233_kernel_m_read_readvariableop4
0savev2_adam_dense_233_bias_m_read_readvariableopC
?savev2_adam_lstm_699_lstm_cell_699_kernel_m_read_readvariableopM
Isavev2_adam_lstm_699_lstm_cell_699_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_699_lstm_cell_699_bias_m_read_readvariableopC
?savev2_adam_lstm_700_lstm_cell_700_kernel_m_read_readvariableopM
Isavev2_adam_lstm_700_lstm_cell_700_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_700_lstm_cell_700_bias_m_read_readvariableopC
?savev2_adam_lstm_701_lstm_cell_701_kernel_m_read_readvariableopM
Isavev2_adam_lstm_701_lstm_cell_701_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_701_lstm_cell_701_bias_m_read_readvariableop6
2savev2_adam_dense_233_kernel_v_read_readvariableop4
0savev2_adam_dense_233_bias_v_read_readvariableopC
?savev2_adam_lstm_699_lstm_cell_699_kernel_v_read_readvariableopM
Isavev2_adam_lstm_699_lstm_cell_699_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_699_lstm_cell_699_bias_v_read_readvariableopC
?savev2_adam_lstm_700_lstm_cell_700_kernel_v_read_readvariableopM
Isavev2_adam_lstm_700_lstm_cell_700_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_700_lstm_cell_700_bias_v_read_readvariableopC
?savev2_adam_lstm_701_lstm_cell_701_kernel_v_read_readvariableopM
Isavev2_adam_lstm_701_lstm_cell_701_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_701_lstm_cell_701_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_233_kernel_read_readvariableop)savev2_dense_233_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_699_lstm_cell_699_kernel_read_readvariableopBsavev2_lstm_699_lstm_cell_699_recurrent_kernel_read_readvariableop6savev2_lstm_699_lstm_cell_699_bias_read_readvariableop8savev2_lstm_700_lstm_cell_700_kernel_read_readvariableopBsavev2_lstm_700_lstm_cell_700_recurrent_kernel_read_readvariableop6savev2_lstm_700_lstm_cell_700_bias_read_readvariableop8savev2_lstm_701_lstm_cell_701_kernel_read_readvariableopBsavev2_lstm_701_lstm_cell_701_recurrent_kernel_read_readvariableop6savev2_lstm_701_lstm_cell_701_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_233_kernel_m_read_readvariableop0savev2_adam_dense_233_bias_m_read_readvariableop?savev2_adam_lstm_699_lstm_cell_699_kernel_m_read_readvariableopIsavev2_adam_lstm_699_lstm_cell_699_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_699_lstm_cell_699_bias_m_read_readvariableop?savev2_adam_lstm_700_lstm_cell_700_kernel_m_read_readvariableopIsavev2_adam_lstm_700_lstm_cell_700_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_700_lstm_cell_700_bias_m_read_readvariableop?savev2_adam_lstm_701_lstm_cell_701_kernel_m_read_readvariableopIsavev2_adam_lstm_701_lstm_cell_701_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_701_lstm_cell_701_bias_m_read_readvariableop2savev2_adam_dense_233_kernel_v_read_readvariableop0savev2_adam_dense_233_bias_v_read_readvariableop?savev2_adam_lstm_699_lstm_cell_699_kernel_v_read_readvariableopIsavev2_adam_lstm_699_lstm_cell_699_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_699_lstm_cell_699_bias_v_read_readvariableop?savev2_adam_lstm_700_lstm_cell_700_kernel_v_read_readvariableopIsavev2_adam_lstm_700_lstm_cell_700_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_700_lstm_cell_700_bias_v_read_readvariableop?savev2_adam_lstm_701_lstm_cell_701_kernel_v_read_readvariableopIsavev2_adam_lstm_701_lstm_cell_701_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_701_lstm_cell_701_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4336114

inputs?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4336030*
condR
while_cond_4336029*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4332274

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
while_cond_4336172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336172___redundant_placeholder05
1while_while_cond_4336172___redundant_placeholder15
1while_while_cond_4336172___redundant_placeholder25
1while_while_cond_4336172___redundant_placeholder3
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
while_cond_4332971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4332971___redundant_placeholder05
1while_while_cond_4332971___redundant_placeholder15
1while_while_cond_4332971___redundant_placeholder25
1while_while_cond_4332971___redundant_placeholder3
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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4334052
lstm_699_input#
lstm_699_4334025:	?#
lstm_699_4334027:	d?
lstm_699_4334029:	?#
lstm_700_4334032:	d?#
lstm_700_4334034:	2?
lstm_700_4334036:	?"
lstm_701_4334039:2("
lstm_701_4334041:
(
lstm_701_4334043:(#
dense_233_4334046:

dense_233_4334048:
identity??!dense_233/StatefulPartitionedCall? lstm_699/StatefulPartitionedCall? lstm_700/StatefulPartitionedCall? lstm_701/StatefulPartitionedCall?
 lstm_699/StatefulPartitionedCallStatefulPartitionedCalllstm_699_inputlstm_699_4334025lstm_699_4334027lstm_699_4334029*
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4333056?
 lstm_700/StatefulPartitionedCallStatefulPartitionedCall)lstm_699/StatefulPartitionedCall:output:0lstm_700_4334032lstm_700_4334034lstm_700_4334036*
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4333206?
 lstm_701/StatefulPartitionedCallStatefulPartitionedCall)lstm_700/StatefulPartitionedCall:output:0lstm_701_4334039lstm_701_4334041lstm_701_4334043*
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4333356?
!dense_233/StatefulPartitionedCallStatefulPartitionedCall)lstm_701/StatefulPartitionedCall:output:0dense_233_4334046dense_233_4334048*
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
F__inference_dense_233_layer_call_and_return_conditional_losses_4333374y
IdentityIdentity*dense_233/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_233/StatefulPartitionedCall!^lstm_699/StatefulPartitionedCall!^lstm_700/StatefulPartitionedCall!^lstm_701/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_233/StatefulPartitionedCall!dense_233/StatefulPartitionedCall2D
 lstm_699/StatefulPartitionedCall lstm_699/StatefulPartitionedCall2D
 lstm_700/StatefulPartitionedCall lstm_700/StatefulPartitionedCall2D
 lstm_701/StatefulPartitionedCall lstm_701/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_699_input
?8
?
while_body_4336173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4332420

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
while_body_4335744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4334082
lstm_699_input#
lstm_699_4334055:	?#
lstm_699_4334057:	d?
lstm_699_4334059:	?#
lstm_700_4334062:	d?#
lstm_700_4334064:	2?
lstm_700_4334066:	?"
lstm_701_4334069:2("
lstm_701_4334071:
(
lstm_701_4334073:(#
dense_233_4334076:

dense_233_4334078:
identity??!dense_233/StatefulPartitionedCall? lstm_699/StatefulPartitionedCall? lstm_700/StatefulPartitionedCall? lstm_701/StatefulPartitionedCall?
 lstm_699/StatefulPartitionedCallStatefulPartitionedCalllstm_699_inputlstm_699_4334055lstm_699_4334057lstm_699_4334059*
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4333902?
 lstm_700/StatefulPartitionedCallStatefulPartitionedCall)lstm_699/StatefulPartitionedCall:output:0lstm_700_4334062lstm_700_4334064lstm_700_4334066*
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4333737?
 lstm_701/StatefulPartitionedCallStatefulPartitionedCall)lstm_700/StatefulPartitionedCall:output:0lstm_701_4334069lstm_701_4334071lstm_701_4334073*
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4333572?
!dense_233/StatefulPartitionedCallStatefulPartitionedCall)lstm_701/StatefulPartitionedCall:output:0dense_233_4334076dense_233_4334078*
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
F__inference_dense_233_layer_call_and_return_conditional_losses_4333374y
IdentityIdentity*dense_233/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_233/StatefulPartitionedCall!^lstm_699/StatefulPartitionedCall!^lstm_700/StatefulPartitionedCall!^lstm_701/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_233/StatefulPartitionedCall!dense_233/StatefulPartitionedCall2D
 lstm_699/StatefulPartitionedCall lstm_699/StatefulPartitionedCall2D
 lstm_700/StatefulPartitionedCall lstm_700/StatefulPartitionedCall2D
 lstm_701/StatefulPartitionedCall lstm_701/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_699_input
?J
?
E__inference_lstm_700_layer_call_and_return_conditional_losses_4333737

inputs?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4333653*
condR
while_cond_4333652*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_699_layer_call_and_return_conditional_losses_4333902

inputs?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4333818*
condR
while_cond_4333817*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_700_layer_call_fn_4335663
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4332548|
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
while_cond_4333487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333487___redundant_placeholder05
1while_while_cond_4333487___redundant_placeholder15
1while_while_cond_4333487___redundant_placeholder25
1while_while_cond_4333487___redundant_placeholder3
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
?
E__inference_lstm_700_layer_call_and_return_conditional_losses_4332357

inputs(
lstm_cell_715_4332275:	d?(
lstm_cell_715_4332277:	2?$
lstm_cell_715_4332279:	?
identity??%lstm_cell_715/StatefulPartitionedCall?while;
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
%lstm_cell_715/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_715_4332275lstm_cell_715_4332277lstm_cell_715_4332279*
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4332274n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_715_4332275lstm_cell_715_4332277lstm_cell_715_4332279*
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
while_body_4332288*
condR
while_cond_4332287*K
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
NoOpNoOp&^lstm_cell_715/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_715/StatefulPartitionedCall%lstm_cell_715/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4333271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333271___redundant_placeholder05
1while_while_cond_4333271___redundant_placeholder15
1while_while_cond_4333271___redundant_placeholder25
1while_while_cond_4333271___redundant_placeholder3
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
while_body_4335128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4336359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336359___redundant_placeholder05
1while_while_cond_4336359___redundant_placeholder15
1while_while_cond_4336359___redundant_placeholder25
1while_while_cond_4336359___redundant_placeholder3
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
while_body_4333653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_233_layer_call_fn_4334171

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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4333970o
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
??
?
K__inference_sequential_233_layer_call_and_return_conditional_losses_4334598

inputsH
5lstm_699_lstm_cell_714_matmul_readvariableop_resource:	?J
7lstm_699_lstm_cell_714_matmul_1_readvariableop_resource:	d?E
6lstm_699_lstm_cell_714_biasadd_readvariableop_resource:	?H
5lstm_700_lstm_cell_715_matmul_readvariableop_resource:	d?J
7lstm_700_lstm_cell_715_matmul_1_readvariableop_resource:	2?E
6lstm_700_lstm_cell_715_biasadd_readvariableop_resource:	?G
5lstm_701_lstm_cell_716_matmul_readvariableop_resource:2(I
7lstm_701_lstm_cell_716_matmul_1_readvariableop_resource:
(D
6lstm_701_lstm_cell_716_biasadd_readvariableop_resource:(:
(dense_233_matmul_readvariableop_resource:
7
)dense_233_biasadd_readvariableop_resource:
identity?? dense_233/BiasAdd/ReadVariableOp?dense_233/MatMul/ReadVariableOp?-lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp?,lstm_699/lstm_cell_714/MatMul/ReadVariableOp?.lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp?lstm_699/while?-lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp?,lstm_700/lstm_cell_715/MatMul/ReadVariableOp?.lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp?lstm_700/while?-lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp?,lstm_701/lstm_cell_716/MatMul/ReadVariableOp?.lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp?lstm_701/whileD
lstm_699/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_699/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_699/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_699/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_699/strided_sliceStridedSlicelstm_699/Shape:output:0%lstm_699/strided_slice/stack:output:0'lstm_699/strided_slice/stack_1:output:0'lstm_699/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_699/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_699/zeros/packedPacklstm_699/strided_slice:output:0 lstm_699/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_699/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_699/zerosFilllstm_699/zeros/packed:output:0lstm_699/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_699/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_699/zeros_1/packedPacklstm_699/strided_slice:output:0"lstm_699/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_699/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_699/zeros_1Fill lstm_699/zeros_1/packed:output:0lstm_699/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_699/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_699/transpose	Transposeinputs lstm_699/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_699/Shape_1Shapelstm_699/transpose:y:0*
T0*
_output_shapes
:h
lstm_699/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_699/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_699/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_699/strided_slice_1StridedSlicelstm_699/Shape_1:output:0'lstm_699/strided_slice_1/stack:output:0)lstm_699/strided_slice_1/stack_1:output:0)lstm_699/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_699/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_699/TensorArrayV2TensorListReserve-lstm_699/TensorArrayV2/element_shape:output:0!lstm_699/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_699/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_699/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_699/transpose:y:0Glstm_699/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_699/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_699/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_699/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_699/strided_slice_2StridedSlicelstm_699/transpose:y:0'lstm_699/strided_slice_2/stack:output:0)lstm_699/strided_slice_2/stack_1:output:0)lstm_699/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_699/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp5lstm_699_lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_699/lstm_cell_714/MatMulMatMul!lstm_699/strided_slice_2:output:04lstm_699/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_699/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp7lstm_699_lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_699/lstm_cell_714/MatMul_1MatMullstm_699/zeros:output:06lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_699/lstm_cell_714/addAddV2'lstm_699/lstm_cell_714/MatMul:product:0)lstm_699/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_699/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp6lstm_699_lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_699/lstm_cell_714/BiasAddBiasAddlstm_699/lstm_cell_714/add:z:05lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_699/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_699/lstm_cell_714/splitSplit/lstm_699/lstm_cell_714/split/split_dim:output:0'lstm_699/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_699/lstm_cell_714/SigmoidSigmoid%lstm_699/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_699/lstm_cell_714/Sigmoid_1Sigmoid%lstm_699/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_699/lstm_cell_714/mulMul$lstm_699/lstm_cell_714/Sigmoid_1:y:0lstm_699/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_699/lstm_cell_714/ReluRelu%lstm_699/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_699/lstm_cell_714/mul_1Mul"lstm_699/lstm_cell_714/Sigmoid:y:0)lstm_699/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_699/lstm_cell_714/add_1AddV2lstm_699/lstm_cell_714/mul:z:0 lstm_699/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_699/lstm_cell_714/Sigmoid_2Sigmoid%lstm_699/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_699/lstm_cell_714/Relu_1Relu lstm_699/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_699/lstm_cell_714/mul_2Mul$lstm_699/lstm_cell_714/Sigmoid_2:y:0+lstm_699/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_699/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_699/TensorArrayV2_1TensorListReserve/lstm_699/TensorArrayV2_1/element_shape:output:0!lstm_699/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_699/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_699/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_699/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_699/whileWhile$lstm_699/while/loop_counter:output:0*lstm_699/while/maximum_iterations:output:0lstm_699/time:output:0!lstm_699/TensorArrayV2_1:handle:0lstm_699/zeros:output:0lstm_699/zeros_1:output:0!lstm_699/strided_slice_1:output:0@lstm_699/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_699_lstm_cell_714_matmul_readvariableop_resource7lstm_699_lstm_cell_714_matmul_1_readvariableop_resource6lstm_699_lstm_cell_714_biasadd_readvariableop_resource*
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
lstm_699_while_body_4334230*'
condR
lstm_699_while_cond_4334229*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_699/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_699/TensorArrayV2Stack/TensorListStackTensorListStacklstm_699/while:output:3Blstm_699/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_699/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_699/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_699/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_699/strided_slice_3StridedSlice4lstm_699/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_699/strided_slice_3/stack:output:0)lstm_699/strided_slice_3/stack_1:output:0)lstm_699/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_699/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_699/transpose_1	Transpose4lstm_699/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_699/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_699/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_700/ShapeShapelstm_699/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_700/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_700/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_700/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_700/strided_sliceStridedSlicelstm_700/Shape:output:0%lstm_700/strided_slice/stack:output:0'lstm_700/strided_slice/stack_1:output:0'lstm_700/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_700/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_700/zeros/packedPacklstm_700/strided_slice:output:0 lstm_700/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_700/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_700/zerosFilllstm_700/zeros/packed:output:0lstm_700/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_700/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_700/zeros_1/packedPacklstm_700/strided_slice:output:0"lstm_700/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_700/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_700/zeros_1Fill lstm_700/zeros_1/packed:output:0lstm_700/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_700/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_700/transpose	Transposelstm_699/transpose_1:y:0 lstm_700/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_700/Shape_1Shapelstm_700/transpose:y:0*
T0*
_output_shapes
:h
lstm_700/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_700/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_700/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_700/strided_slice_1StridedSlicelstm_700/Shape_1:output:0'lstm_700/strided_slice_1/stack:output:0)lstm_700/strided_slice_1/stack_1:output:0)lstm_700/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_700/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_700/TensorArrayV2TensorListReserve-lstm_700/TensorArrayV2/element_shape:output:0!lstm_700/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_700/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_700/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_700/transpose:y:0Glstm_700/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_700/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_700/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_700/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_700/strided_slice_2StridedSlicelstm_700/transpose:y:0'lstm_700/strided_slice_2/stack:output:0)lstm_700/strided_slice_2/stack_1:output:0)lstm_700/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_700/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp5lstm_700_lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_700/lstm_cell_715/MatMulMatMul!lstm_700/strided_slice_2:output:04lstm_700/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_700/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp7lstm_700_lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_700/lstm_cell_715/MatMul_1MatMullstm_700/zeros:output:06lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_700/lstm_cell_715/addAddV2'lstm_700/lstm_cell_715/MatMul:product:0)lstm_700/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_700/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp6lstm_700_lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_700/lstm_cell_715/BiasAddBiasAddlstm_700/lstm_cell_715/add:z:05lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_700/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_700/lstm_cell_715/splitSplit/lstm_700/lstm_cell_715/split/split_dim:output:0'lstm_700/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_700/lstm_cell_715/SigmoidSigmoid%lstm_700/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_700/lstm_cell_715/Sigmoid_1Sigmoid%lstm_700/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_700/lstm_cell_715/mulMul$lstm_700/lstm_cell_715/Sigmoid_1:y:0lstm_700/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_700/lstm_cell_715/ReluRelu%lstm_700/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_700/lstm_cell_715/mul_1Mul"lstm_700/lstm_cell_715/Sigmoid:y:0)lstm_700/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_700/lstm_cell_715/add_1AddV2lstm_700/lstm_cell_715/mul:z:0 lstm_700/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_700/lstm_cell_715/Sigmoid_2Sigmoid%lstm_700/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_700/lstm_cell_715/Relu_1Relu lstm_700/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_700/lstm_cell_715/mul_2Mul$lstm_700/lstm_cell_715/Sigmoid_2:y:0+lstm_700/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_700/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_700/TensorArrayV2_1TensorListReserve/lstm_700/TensorArrayV2_1/element_shape:output:0!lstm_700/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_700/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_700/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_700/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_700/whileWhile$lstm_700/while/loop_counter:output:0*lstm_700/while/maximum_iterations:output:0lstm_700/time:output:0!lstm_700/TensorArrayV2_1:handle:0lstm_700/zeros:output:0lstm_700/zeros_1:output:0!lstm_700/strided_slice_1:output:0@lstm_700/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_700_lstm_cell_715_matmul_readvariableop_resource7lstm_700_lstm_cell_715_matmul_1_readvariableop_resource6lstm_700_lstm_cell_715_biasadd_readvariableop_resource*
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
lstm_700_while_body_4334369*'
condR
lstm_700_while_cond_4334368*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_700/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_700/TensorArrayV2Stack/TensorListStackTensorListStacklstm_700/while:output:3Blstm_700/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_700/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_700/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_700/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_700/strided_slice_3StridedSlice4lstm_700/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_700/strided_slice_3/stack:output:0)lstm_700/strided_slice_3/stack_1:output:0)lstm_700/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_700/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_700/transpose_1	Transpose4lstm_700/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_700/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_700/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_701/ShapeShapelstm_700/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_701/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_701/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_701/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_701/strided_sliceStridedSlicelstm_701/Shape:output:0%lstm_701/strided_slice/stack:output:0'lstm_701/strided_slice/stack_1:output:0'lstm_701/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_701/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_701/zeros/packedPacklstm_701/strided_slice:output:0 lstm_701/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_701/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_701/zerosFilllstm_701/zeros/packed:output:0lstm_701/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_701/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_701/zeros_1/packedPacklstm_701/strided_slice:output:0"lstm_701/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_701/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_701/zeros_1Fill lstm_701/zeros_1/packed:output:0lstm_701/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_701/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_701/transpose	Transposelstm_700/transpose_1:y:0 lstm_701/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_701/Shape_1Shapelstm_701/transpose:y:0*
T0*
_output_shapes
:h
lstm_701/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_701/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_701/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_701/strided_slice_1StridedSlicelstm_701/Shape_1:output:0'lstm_701/strided_slice_1/stack:output:0)lstm_701/strided_slice_1/stack_1:output:0)lstm_701/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_701/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_701/TensorArrayV2TensorListReserve-lstm_701/TensorArrayV2/element_shape:output:0!lstm_701/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_701/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_701/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_701/transpose:y:0Glstm_701/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_701/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_701/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_701/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_701/strided_slice_2StridedSlicelstm_701/transpose:y:0'lstm_701/strided_slice_2/stack:output:0)lstm_701/strided_slice_2/stack_1:output:0)lstm_701/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_701/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp5lstm_701_lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_701/lstm_cell_716/MatMulMatMul!lstm_701/strided_slice_2:output:04lstm_701/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_701/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp7lstm_701_lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_701/lstm_cell_716/MatMul_1MatMullstm_701/zeros:output:06lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_701/lstm_cell_716/addAddV2'lstm_701/lstm_cell_716/MatMul:product:0)lstm_701/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_701/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp6lstm_701_lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_701/lstm_cell_716/BiasAddBiasAddlstm_701/lstm_cell_716/add:z:05lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_701/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_701/lstm_cell_716/splitSplit/lstm_701/lstm_cell_716/split/split_dim:output:0'lstm_701/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_701/lstm_cell_716/SigmoidSigmoid%lstm_701/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_701/lstm_cell_716/Sigmoid_1Sigmoid%lstm_701/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_701/lstm_cell_716/mulMul$lstm_701/lstm_cell_716/Sigmoid_1:y:0lstm_701/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_701/lstm_cell_716/ReluRelu%lstm_701/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_701/lstm_cell_716/mul_1Mul"lstm_701/lstm_cell_716/Sigmoid:y:0)lstm_701/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_701/lstm_cell_716/add_1AddV2lstm_701/lstm_cell_716/mul:z:0 lstm_701/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_701/lstm_cell_716/Sigmoid_2Sigmoid%lstm_701/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_701/lstm_cell_716/Relu_1Relu lstm_701/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_701/lstm_cell_716/mul_2Mul$lstm_701/lstm_cell_716/Sigmoid_2:y:0+lstm_701/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_701/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_701/TensorArrayV2_1TensorListReserve/lstm_701/TensorArrayV2_1/element_shape:output:0!lstm_701/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_701/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_701/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_701/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_701/whileWhile$lstm_701/while/loop_counter:output:0*lstm_701/while/maximum_iterations:output:0lstm_701/time:output:0!lstm_701/TensorArrayV2_1:handle:0lstm_701/zeros:output:0lstm_701/zeros_1:output:0!lstm_701/strided_slice_1:output:0@lstm_701/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_701_lstm_cell_716_matmul_readvariableop_resource7lstm_701_lstm_cell_716_matmul_1_readvariableop_resource6lstm_701_lstm_cell_716_biasadd_readvariableop_resource*
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
lstm_701_while_body_4334508*'
condR
lstm_701_while_cond_4334507*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_701/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_701/TensorArrayV2Stack/TensorListStackTensorListStacklstm_701/while:output:3Blstm_701/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_701/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_701/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_701/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_701/strided_slice_3StridedSlice4lstm_701/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_701/strided_slice_3/stack:output:0)lstm_701/strided_slice_3/stack_1:output:0)lstm_701/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_701/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_701/transpose_1	Transpose4lstm_701/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_701/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_701/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_233/MatMul/ReadVariableOpReadVariableOp(dense_233_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_233/MatMulMatMul!lstm_701/strided_slice_3:output:0'dense_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_233/BiasAdd/ReadVariableOpReadVariableOp)dense_233_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_233/BiasAddBiasAdddense_233/MatMul:product:0(dense_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_233/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_233/BiasAdd/ReadVariableOp ^dense_233/MatMul/ReadVariableOp.^lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp-^lstm_699/lstm_cell_714/MatMul/ReadVariableOp/^lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp^lstm_699/while.^lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp-^lstm_700/lstm_cell_715/MatMul/ReadVariableOp/^lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp^lstm_700/while.^lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp-^lstm_701/lstm_cell_716/MatMul/ReadVariableOp/^lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp^lstm_701/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_233/BiasAdd/ReadVariableOp dense_233/BiasAdd/ReadVariableOp2B
dense_233/MatMul/ReadVariableOpdense_233/MatMul/ReadVariableOp2^
-lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp-lstm_699/lstm_cell_714/BiasAdd/ReadVariableOp2\
,lstm_699/lstm_cell_714/MatMul/ReadVariableOp,lstm_699/lstm_cell_714/MatMul/ReadVariableOp2`
.lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp.lstm_699/lstm_cell_714/MatMul_1/ReadVariableOp2 
lstm_699/whilelstm_699/while2^
-lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp-lstm_700/lstm_cell_715/BiasAdd/ReadVariableOp2\
,lstm_700/lstm_cell_715/MatMul/ReadVariableOp,lstm_700/lstm_cell_715/MatMul/ReadVariableOp2`
.lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp.lstm_700/lstm_cell_715/MatMul_1/ReadVariableOp2 
lstm_700/whilelstm_700/while2^
-lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp-lstm_701/lstm_cell_716/BiasAdd/ReadVariableOp2\
,lstm_701/lstm_cell_716/MatMul/ReadVariableOp,lstm_701/lstm_cell_716/MatMul/ReadVariableOp2`
.lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp.lstm_701/lstm_cell_716/MatMul_1/ReadVariableOp2 
lstm_701/whilelstm_701/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4333488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_699_layer_call_fn_4335058

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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4333056s
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
??
?
#__inference__traced_restore_4337459
file_prefix3
!assignvariableop_dense_233_kernel:
/
!assignvariableop_1_dense_233_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_699_lstm_cell_699_kernel:	?M
:assignvariableop_8_lstm_699_lstm_cell_699_recurrent_kernel:	d?=
.assignvariableop_9_lstm_699_lstm_cell_699_bias:	?D
1assignvariableop_10_lstm_700_lstm_cell_700_kernel:	d?N
;assignvariableop_11_lstm_700_lstm_cell_700_recurrent_kernel:	2?>
/assignvariableop_12_lstm_700_lstm_cell_700_bias:	?C
1assignvariableop_13_lstm_701_lstm_cell_701_kernel:2(M
;assignvariableop_14_lstm_701_lstm_cell_701_recurrent_kernel:
(=
/assignvariableop_15_lstm_701_lstm_cell_701_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_233_kernel_m:
7
)assignvariableop_19_adam_dense_233_bias_m:K
8assignvariableop_20_adam_lstm_699_lstm_cell_699_kernel_m:	?U
Bassignvariableop_21_adam_lstm_699_lstm_cell_699_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_699_lstm_cell_699_bias_m:	?K
8assignvariableop_23_adam_lstm_700_lstm_cell_700_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_700_lstm_cell_700_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_700_lstm_cell_700_bias_m:	?J
8assignvariableop_26_adam_lstm_701_lstm_cell_701_kernel_m:2(T
Bassignvariableop_27_adam_lstm_701_lstm_cell_701_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_701_lstm_cell_701_bias_m:(=
+assignvariableop_29_adam_dense_233_kernel_v:
7
)assignvariableop_30_adam_dense_233_bias_v:K
8assignvariableop_31_adam_lstm_699_lstm_cell_699_kernel_v:	?U
Bassignvariableop_32_adam_lstm_699_lstm_cell_699_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_699_lstm_cell_699_bias_v:	?K
8assignvariableop_34_adam_lstm_700_lstm_cell_700_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_700_lstm_cell_700_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_700_lstm_cell_700_bias_v:	?J
8assignvariableop_37_adam_lstm_701_lstm_cell_701_kernel_v:2(T
Bassignvariableop_38_adam_lstm_701_lstm_cell_701_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_701_lstm_cell_701_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_233_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_233_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_699_lstm_cell_699_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_699_lstm_cell_699_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_699_lstm_cell_699_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_700_lstm_cell_700_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_700_lstm_cell_700_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_700_lstm_cell_700_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_701_lstm_cell_701_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_701_lstm_cell_701_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_701_lstm_cell_701_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_233_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_233_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_699_lstm_cell_699_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_699_lstm_cell_699_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_699_lstm_cell_699_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_700_lstm_cell_700_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_700_lstm_cell_700_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_700_lstm_cell_700_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_701_lstm_cell_701_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_701_lstm_cell_701_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_701_lstm_cell_701_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_233_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_233_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_699_lstm_cell_699_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_699_lstm_cell_699_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_699_lstm_cell_699_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_700_lstm_cell_700_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_700_lstm_cell_700_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_700_lstm_cell_700_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_701_lstm_cell_701_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_701_lstm_cell_701_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_701_lstm_cell_701_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_4336789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_716_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_716_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_716_matmul_readvariableop_resource:2(F
4while_lstm_cell_716_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_716_biasadd_readvariableop_resource:(??*while/lstm_cell_716/BiasAdd/ReadVariableOp?)while/lstm_cell_716/MatMul/ReadVariableOp?+while/lstm_cell_716/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_716/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_716/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_716/addAddV2$while/lstm_cell_716/MatMul:product:0&while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_716/BiasAddBiasAddwhile/lstm_cell_716/add:z:02while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_716/splitSplit,while/lstm_cell_716/split/split_dim:output:0$while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_716/SigmoidSigmoid"while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_1Sigmoid"while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mulMul!while/lstm_cell_716/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_716/ReluRelu"while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_1Mulwhile/lstm_cell_716/Sigmoid:y:0&while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/add_1AddV2while/lstm_cell_716/mul:z:0while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_716/Sigmoid_2Sigmoid"while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_716/Relu_1Reluwhile/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_716/mul_2Mul!while/lstm_cell_716/Sigmoid_2:y:0(while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_716/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_716/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_716/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_716/BiasAdd/ReadVariableOp*^while/lstm_cell_716/MatMul/ReadVariableOp,^while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_716_biasadd_readvariableop_resource5while_lstm_cell_716_biasadd_readvariableop_resource_0"n
4while_lstm_cell_716_matmul_1_readvariableop_resource6while_lstm_cell_716_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_716_matmul_readvariableop_resource4while_lstm_cell_716_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_716/BiasAdd/ReadVariableOp*while/lstm_cell_716/BiasAdd/ReadVariableOp2V
)while/lstm_cell_716/MatMul/ReadVariableOp)while/lstm_cell_716/MatMul/ReadVariableOp2Z
+while/lstm_cell_716/MatMul_1/ReadVariableOp+while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4335271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4332287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4332287___redundant_placeholder05
1while_while_cond_4332287___redundant_placeholder15
1while_while_cond_4332287___redundant_placeholder25
1while_while_cond_4332287___redundant_placeholder3
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336873

inputs>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4336789*
condR
while_cond_4336788*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_701_while_cond_4334934.
*lstm_701_while_lstm_701_while_loop_counter4
0lstm_701_while_lstm_701_while_maximum_iterations
lstm_701_while_placeholder 
lstm_701_while_placeholder_1 
lstm_701_while_placeholder_2 
lstm_701_while_placeholder_30
,lstm_701_while_less_lstm_701_strided_slice_1G
Clstm_701_while_lstm_701_while_cond_4334934___redundant_placeholder0G
Clstm_701_while_lstm_701_while_cond_4334934___redundant_placeholder1G
Clstm_701_while_lstm_701_while_cond_4334934___redundant_placeholder2G
Clstm_701_while_lstm_701_while_cond_4334934___redundant_placeholder3
lstm_701_while_identity
?
lstm_701/while/LessLesslstm_701_while_placeholder,lstm_701_while_less_lstm_701_strided_slice_1*
T0*
_output_shapes
: ]
lstm_701/while/IdentityIdentitylstm_701/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_701_while_identity lstm_701/while/Identity:output:0*(
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
F__inference_dense_233_layer_call_and_return_conditional_losses_4336892

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
while_cond_4332478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4332478___redundant_placeholder05
1while_while_cond_4332478___redundant_placeholder15
1while_while_cond_4332478___redundant_placeholder25
1while_while_cond_4332478___redundant_placeholder3
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336444
inputs_0>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4336360*
condR
while_cond_4336359*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_701_while_body_4334508.
*lstm_701_while_lstm_701_while_loop_counter4
0lstm_701_while_lstm_701_while_maximum_iterations
lstm_701_while_placeholder 
lstm_701_while_placeholder_1 
lstm_701_while_placeholder_2 
lstm_701_while_placeholder_3-
)lstm_701_while_lstm_701_strided_slice_1_0i
elstm_701_while_tensorarrayv2read_tensorlistgetitem_lstm_701_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_701_while_lstm_cell_716_matmul_readvariableop_resource_0:2(Q
?lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource_0:
(L
>lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource_0:(
lstm_701_while_identity
lstm_701_while_identity_1
lstm_701_while_identity_2
lstm_701_while_identity_3
lstm_701_while_identity_4
lstm_701_while_identity_5+
'lstm_701_while_lstm_701_strided_slice_1g
clstm_701_while_tensorarrayv2read_tensorlistgetitem_lstm_701_tensorarrayunstack_tensorlistfromtensorM
;lstm_701_while_lstm_cell_716_matmul_readvariableop_resource:2(O
=lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource:
(J
<lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource:(??3lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp?2lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp?4lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp?
@lstm_701/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_701/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_701_while_tensorarrayv2read_tensorlistgetitem_lstm_701_tensorarrayunstack_tensorlistfromtensor_0lstm_701_while_placeholderIlstm_701/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_701/while/lstm_cell_716/MatMul/ReadVariableOpReadVariableOp=lstm_701_while_lstm_cell_716_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_701/while/lstm_cell_716/MatMulMatMul9lstm_701/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp?lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_701/while/lstm_cell_716/MatMul_1MatMullstm_701_while_placeholder_2<lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_701/while/lstm_cell_716/addAddV2-lstm_701/while/lstm_cell_716/MatMul:product:0/lstm_701/while/lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp>lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_701/while/lstm_cell_716/BiasAddBiasAdd$lstm_701/while/lstm_cell_716/add:z:0;lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_701/while/lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_701/while/lstm_cell_716/splitSplit5lstm_701/while/lstm_cell_716/split/split_dim:output:0-lstm_701/while/lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_701/while/lstm_cell_716/SigmoidSigmoid+lstm_701/while/lstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_701/while/lstm_cell_716/Sigmoid_1Sigmoid+lstm_701/while/lstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_701/while/lstm_cell_716/mulMul*lstm_701/while/lstm_cell_716/Sigmoid_1:y:0lstm_701_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_701/while/lstm_cell_716/ReluRelu+lstm_701/while/lstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_701/while/lstm_cell_716/mul_1Mul(lstm_701/while/lstm_cell_716/Sigmoid:y:0/lstm_701/while/lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_701/while/lstm_cell_716/add_1AddV2$lstm_701/while/lstm_cell_716/mul:z:0&lstm_701/while/lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_701/while/lstm_cell_716/Sigmoid_2Sigmoid+lstm_701/while/lstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_701/while/lstm_cell_716/Relu_1Relu&lstm_701/while/lstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_701/while/lstm_cell_716/mul_2Mul*lstm_701/while/lstm_cell_716/Sigmoid_2:y:01lstm_701/while/lstm_cell_716/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_701/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_701_while_placeholder_1lstm_701_while_placeholder&lstm_701/while/lstm_cell_716/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_701/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_701/while/addAddV2lstm_701_while_placeholderlstm_701/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_701/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_701/while/add_1AddV2*lstm_701_while_lstm_701_while_loop_counterlstm_701/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_701/while/IdentityIdentitylstm_701/while/add_1:z:0^lstm_701/while/NoOp*
T0*
_output_shapes
: ?
lstm_701/while/Identity_1Identity0lstm_701_while_lstm_701_while_maximum_iterations^lstm_701/while/NoOp*
T0*
_output_shapes
: t
lstm_701/while/Identity_2Identitylstm_701/while/add:z:0^lstm_701/while/NoOp*
T0*
_output_shapes
: ?
lstm_701/while/Identity_3IdentityClstm_701/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_701/while/NoOp*
T0*
_output_shapes
: ?
lstm_701/while/Identity_4Identity&lstm_701/while/lstm_cell_716/mul_2:z:0^lstm_701/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_701/while/Identity_5Identity&lstm_701/while/lstm_cell_716/add_1:z:0^lstm_701/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_701/while/NoOpNoOp4^lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp3^lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp5^lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_701_while_identity lstm_701/while/Identity:output:0"?
lstm_701_while_identity_1"lstm_701/while/Identity_1:output:0"?
lstm_701_while_identity_2"lstm_701/while/Identity_2:output:0"?
lstm_701_while_identity_3"lstm_701/while/Identity_3:output:0"?
lstm_701_while_identity_4"lstm_701/while/Identity_4:output:0"?
lstm_701_while_identity_5"lstm_701/while/Identity_5:output:0"T
'lstm_701_while_lstm_701_strided_slice_1)lstm_701_while_lstm_701_strided_slice_1_0"~
<lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource>lstm_701_while_lstm_cell_716_biasadd_readvariableop_resource_0"?
=lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource?lstm_701_while_lstm_cell_716_matmul_1_readvariableop_resource_0"|
;lstm_701_while_lstm_cell_716_matmul_readvariableop_resource=lstm_701_while_lstm_cell_716_matmul_readvariableop_resource_0"?
clstm_701_while_tensorarrayv2read_tensorlistgetitem_lstm_701_tensorarrayunstack_tensorlistfromtensorelstm_701_while_tensorarrayv2read_tensorlistgetitem_lstm_701_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp3lstm_701/while/lstm_cell_716/BiasAdd/ReadVariableOp2h
2lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp2lstm_701/while/lstm_cell_716/MatMul/ReadVariableOp2l
4lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp4lstm_701/while/lstm_cell_716/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4332479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_715_4332503_0:	d?0
while_lstm_cell_715_4332505_0:	2?,
while_lstm_cell_715_4332507_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_715_4332503:	d?.
while_lstm_cell_715_4332505:	2?*
while_lstm_cell_715_4332507:	???+while/lstm_cell_715/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_715/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_715_4332503_0while_lstm_cell_715_4332505_0while_lstm_cell_715_4332507_0*
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4332420?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_715/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_715/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_715/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_715/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_715_4332503while_lstm_cell_715_4332503_0"<
while_lstm_cell_715_4332505while_lstm_cell_715_4332505_0"<
while_lstm_cell_715_4332507while_lstm_cell_715_4332507_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_715/StatefulPartitionedCall+while/lstm_cell_715/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4336029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336029___redundant_placeholder05
1while_while_cond_4336029___redundant_placeholder15
1while_while_cond_4336029___redundant_placeholder25
1while_while_cond_4336029___redundant_placeholder3
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4337186

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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4332624

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

lstm_699_while_body_4334657.
*lstm_699_while_lstm_699_while_loop_counter4
0lstm_699_while_lstm_699_while_maximum_iterations
lstm_699_while_placeholder 
lstm_699_while_placeholder_1 
lstm_699_while_placeholder_2 
lstm_699_while_placeholder_3-
)lstm_699_while_lstm_699_strided_slice_1_0i
elstm_699_while_tensorarrayv2read_tensorlistgetitem_lstm_699_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_699_while_lstm_cell_714_matmul_readvariableop_resource_0:	?R
?lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?M
>lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
lstm_699_while_identity
lstm_699_while_identity_1
lstm_699_while_identity_2
lstm_699_while_identity_3
lstm_699_while_identity_4
lstm_699_while_identity_5+
'lstm_699_while_lstm_699_strided_slice_1g
clstm_699_while_tensorarrayv2read_tensorlistgetitem_lstm_699_tensorarrayunstack_tensorlistfromtensorN
;lstm_699_while_lstm_cell_714_matmul_readvariableop_resource:	?P
=lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource:	d?K
<lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource:	???3lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp?2lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp?4lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp?
@lstm_699/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_699/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_699_while_tensorarrayv2read_tensorlistgetitem_lstm_699_tensorarrayunstack_tensorlistfromtensor_0lstm_699_while_placeholderIlstm_699/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_699/while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp=lstm_699_while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_699/while/lstm_cell_714/MatMulMatMul9lstm_699/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp?lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_699/while/lstm_cell_714/MatMul_1MatMullstm_699_while_placeholder_2<lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_699/while/lstm_cell_714/addAddV2-lstm_699/while/lstm_cell_714/MatMul:product:0/lstm_699/while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp>lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_699/while/lstm_cell_714/BiasAddBiasAdd$lstm_699/while/lstm_cell_714/add:z:0;lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_699/while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_699/while/lstm_cell_714/splitSplit5lstm_699/while/lstm_cell_714/split/split_dim:output:0-lstm_699/while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_699/while/lstm_cell_714/SigmoidSigmoid+lstm_699/while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_699/while/lstm_cell_714/Sigmoid_1Sigmoid+lstm_699/while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_699/while/lstm_cell_714/mulMul*lstm_699/while/lstm_cell_714/Sigmoid_1:y:0lstm_699_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_699/while/lstm_cell_714/ReluRelu+lstm_699/while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_699/while/lstm_cell_714/mul_1Mul(lstm_699/while/lstm_cell_714/Sigmoid:y:0/lstm_699/while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_699/while/lstm_cell_714/add_1AddV2$lstm_699/while/lstm_cell_714/mul:z:0&lstm_699/while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_699/while/lstm_cell_714/Sigmoid_2Sigmoid+lstm_699/while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_699/while/lstm_cell_714/Relu_1Relu&lstm_699/while/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_699/while/lstm_cell_714/mul_2Mul*lstm_699/while/lstm_cell_714/Sigmoid_2:y:01lstm_699/while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_699/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_699_while_placeholder_1lstm_699_while_placeholder&lstm_699/while/lstm_cell_714/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_699/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_699/while/addAddV2lstm_699_while_placeholderlstm_699/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_699/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_699/while/add_1AddV2*lstm_699_while_lstm_699_while_loop_counterlstm_699/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_699/while/IdentityIdentitylstm_699/while/add_1:z:0^lstm_699/while/NoOp*
T0*
_output_shapes
: ?
lstm_699/while/Identity_1Identity0lstm_699_while_lstm_699_while_maximum_iterations^lstm_699/while/NoOp*
T0*
_output_shapes
: t
lstm_699/while/Identity_2Identitylstm_699/while/add:z:0^lstm_699/while/NoOp*
T0*
_output_shapes
: ?
lstm_699/while/Identity_3IdentityClstm_699/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_699/while/NoOp*
T0*
_output_shapes
: ?
lstm_699/while/Identity_4Identity&lstm_699/while/lstm_cell_714/mul_2:z:0^lstm_699/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_699/while/Identity_5Identity&lstm_699/while/lstm_cell_714/add_1:z:0^lstm_699/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_699/while/NoOpNoOp4^lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp3^lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp5^lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_699_while_identity lstm_699/while/Identity:output:0"?
lstm_699_while_identity_1"lstm_699/while/Identity_1:output:0"?
lstm_699_while_identity_2"lstm_699/while/Identity_2:output:0"?
lstm_699_while_identity_3"lstm_699/while/Identity_3:output:0"?
lstm_699_while_identity_4"lstm_699/while/Identity_4:output:0"?
lstm_699_while_identity_5"lstm_699/while/Identity_5:output:0"T
'lstm_699_while_lstm_699_strided_slice_1)lstm_699_while_lstm_699_strided_slice_1_0"~
<lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource>lstm_699_while_lstm_cell_714_biasadd_readvariableop_resource_0"?
=lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource?lstm_699_while_lstm_cell_714_matmul_1_readvariableop_resource_0"|
;lstm_699_while_lstm_cell_714_matmul_readvariableop_resource=lstm_699_while_lstm_cell_714_matmul_readvariableop_resource_0"?
clstm_699_while_tensorarrayv2read_tensorlistgetitem_lstm_699_tensorarrayunstack_tensorlistfromtensorelstm_699_while_tensorarrayv2read_tensorlistgetitem_lstm_699_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp3lstm_699/while/lstm_cell_714/BiasAdd/ReadVariableOp2h
2lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp2lstm_699/while/lstm_cell_714/MatMul/ReadVariableOp2l
4lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp4lstm_699/while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_233_lstm_700_while_body_4331628L
Hsequential_233_lstm_700_while_sequential_233_lstm_700_while_loop_counterR
Nsequential_233_lstm_700_while_sequential_233_lstm_700_while_maximum_iterations-
)sequential_233_lstm_700_while_placeholder/
+sequential_233_lstm_700_while_placeholder_1/
+sequential_233_lstm_700_while_placeholder_2/
+sequential_233_lstm_700_while_placeholder_3K
Gsequential_233_lstm_700_while_sequential_233_lstm_700_strided_slice_1_0?
?sequential_233_lstm_700_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_700_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_233_lstm_700_while_lstm_cell_715_matmul_readvariableop_resource_0:	d?a
Nsequential_233_lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?\
Msequential_233_lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource_0:	?*
&sequential_233_lstm_700_while_identity,
(sequential_233_lstm_700_while_identity_1,
(sequential_233_lstm_700_while_identity_2,
(sequential_233_lstm_700_while_identity_3,
(sequential_233_lstm_700_while_identity_4,
(sequential_233_lstm_700_while_identity_5I
Esequential_233_lstm_700_while_sequential_233_lstm_700_strided_slice_1?
?sequential_233_lstm_700_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_700_tensorarrayunstack_tensorlistfromtensor]
Jsequential_233_lstm_700_while_lstm_cell_715_matmul_readvariableop_resource:	d?_
Lsequential_233_lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource:	2?Z
Ksequential_233_lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource:	???Bsequential_233/lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp?Asequential_233/lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp?Csequential_233/lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp?
Osequential_233/lstm_700/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_233/lstm_700/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_233_lstm_700_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_700_tensorarrayunstack_tensorlistfromtensor_0)sequential_233_lstm_700_while_placeholderXsequential_233/lstm_700/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_233/lstm_700/while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOpLsequential_233_lstm_700_while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_233/lstm_700/while/lstm_cell_715/MatMulMatMulHsequential_233/lstm_700/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_233/lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_233/lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOpNsequential_233_lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_233/lstm_700/while/lstm_cell_715/MatMul_1MatMul+sequential_233_lstm_700_while_placeholder_2Ksequential_233/lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_233/lstm_700/while/lstm_cell_715/addAddV2<sequential_233/lstm_700/while/lstm_cell_715/MatMul:product:0>sequential_233/lstm_700/while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_233/lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOpMsequential_233_lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_233/lstm_700/while/lstm_cell_715/BiasAddBiasAdd3sequential_233/lstm_700/while/lstm_cell_715/add:z:0Jsequential_233/lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_233/lstm_700/while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_233/lstm_700/while/lstm_cell_715/splitSplitDsequential_233/lstm_700/while/lstm_cell_715/split/split_dim:output:0<sequential_233/lstm_700/while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_233/lstm_700/while/lstm_cell_715/SigmoidSigmoid:sequential_233/lstm_700/while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_233/lstm_700/while/lstm_cell_715/Sigmoid_1Sigmoid:sequential_233/lstm_700/while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_233/lstm_700/while/lstm_cell_715/mulMul9sequential_233/lstm_700/while/lstm_cell_715/Sigmoid_1:y:0+sequential_233_lstm_700_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_233/lstm_700/while/lstm_cell_715/ReluRelu:sequential_233/lstm_700/while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_233/lstm_700/while/lstm_cell_715/mul_1Mul7sequential_233/lstm_700/while/lstm_cell_715/Sigmoid:y:0>sequential_233/lstm_700/while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_233/lstm_700/while/lstm_cell_715/add_1AddV23sequential_233/lstm_700/while/lstm_cell_715/mul:z:05sequential_233/lstm_700/while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_233/lstm_700/while/lstm_cell_715/Sigmoid_2Sigmoid:sequential_233/lstm_700/while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_233/lstm_700/while/lstm_cell_715/Relu_1Relu5sequential_233/lstm_700/while/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_233/lstm_700/while/lstm_cell_715/mul_2Mul9sequential_233/lstm_700/while/lstm_cell_715/Sigmoid_2:y:0@sequential_233/lstm_700/while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_233/lstm_700/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_233_lstm_700_while_placeholder_1)sequential_233_lstm_700_while_placeholder5sequential_233/lstm_700/while/lstm_cell_715/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_233/lstm_700/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_233/lstm_700/while/addAddV2)sequential_233_lstm_700_while_placeholder,sequential_233/lstm_700/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_233/lstm_700/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_233/lstm_700/while/add_1AddV2Hsequential_233_lstm_700_while_sequential_233_lstm_700_while_loop_counter.sequential_233/lstm_700/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_233/lstm_700/while/IdentityIdentity'sequential_233/lstm_700/while/add_1:z:0#^sequential_233/lstm_700/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_700/while/Identity_1IdentityNsequential_233_lstm_700_while_sequential_233_lstm_700_while_maximum_iterations#^sequential_233/lstm_700/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_700/while/Identity_2Identity%sequential_233/lstm_700/while/add:z:0#^sequential_233/lstm_700/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_700/while/Identity_3IdentityRsequential_233/lstm_700/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_233/lstm_700/while/NoOp*
T0*
_output_shapes
: ?
(sequential_233/lstm_700/while/Identity_4Identity5sequential_233/lstm_700/while/lstm_cell_715/mul_2:z:0#^sequential_233/lstm_700/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_233/lstm_700/while/Identity_5Identity5sequential_233/lstm_700/while/lstm_cell_715/add_1:z:0#^sequential_233/lstm_700/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_233/lstm_700/while/NoOpNoOpC^sequential_233/lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOpB^sequential_233/lstm_700/while/lstm_cell_715/MatMul/ReadVariableOpD^sequential_233/lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_233_lstm_700_while_identity/sequential_233/lstm_700/while/Identity:output:0"]
(sequential_233_lstm_700_while_identity_11sequential_233/lstm_700/while/Identity_1:output:0"]
(sequential_233_lstm_700_while_identity_21sequential_233/lstm_700/while/Identity_2:output:0"]
(sequential_233_lstm_700_while_identity_31sequential_233/lstm_700/while/Identity_3:output:0"]
(sequential_233_lstm_700_while_identity_41sequential_233/lstm_700/while/Identity_4:output:0"]
(sequential_233_lstm_700_while_identity_51sequential_233/lstm_700/while/Identity_5:output:0"?
Ksequential_233_lstm_700_while_lstm_cell_715_biasadd_readvariableop_resourceMsequential_233_lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource_0"?
Lsequential_233_lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resourceNsequential_233_lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource_0"?
Jsequential_233_lstm_700_while_lstm_cell_715_matmul_readvariableop_resourceLsequential_233_lstm_700_while_lstm_cell_715_matmul_readvariableop_resource_0"?
Esequential_233_lstm_700_while_sequential_233_lstm_700_strided_slice_1Gsequential_233_lstm_700_while_sequential_233_lstm_700_strided_slice_1_0"?
?sequential_233_lstm_700_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_700_tensorarrayunstack_tensorlistfromtensor?sequential_233_lstm_700_while_tensorarrayv2read_tensorlistgetitem_sequential_233_lstm_700_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_233/lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOpBsequential_233/lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp2?
Asequential_233/lstm_700/while/lstm_cell_715/MatMul/ReadVariableOpAsequential_233/lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp2?
Csequential_233/lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOpCsequential_233/lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4333818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_714_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_714_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_714_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_714_matmul_readvariableop_resource:	?G
4while_lstm_cell_714_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_714_biasadd_readvariableop_resource:	???*while/lstm_cell_714/BiasAdd/ReadVariableOp?)while/lstm_cell_714/MatMul/ReadVariableOp?+while/lstm_cell_714/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_714/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_714_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_714/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_714_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_714/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_714/addAddV2$while/lstm_cell_714/MatMul:product:0&while/lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_714_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_714/BiasAddBiasAddwhile/lstm_cell_714/add:z:02while/lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_714/splitSplit,while/lstm_cell_714/split/split_dim:output:0$while/lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_714/SigmoidSigmoid"while/lstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_1Sigmoid"while/lstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mulMul!while/lstm_cell_714/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_714/ReluRelu"while/lstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_1Mulwhile/lstm_cell_714/Sigmoid:y:0&while/lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/add_1AddV2while/lstm_cell_714/mul:z:0while/lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_714/Sigmoid_2Sigmoid"while/lstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_714/Relu_1Reluwhile/lstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_714/mul_2Mul!while/lstm_cell_714/Sigmoid_2:y:0(while/lstm_cell_714/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_714/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_714/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_714/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_714/BiasAdd/ReadVariableOp*^while/lstm_cell_714/MatMul/ReadVariableOp,^while/lstm_cell_714/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_714_biasadd_readvariableop_resource5while_lstm_cell_714_biasadd_readvariableop_resource_0"n
4while_lstm_cell_714_matmul_1_readvariableop_resource6while_lstm_cell_714_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_714_matmul_readvariableop_resource4while_lstm_cell_714_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_714/BiasAdd/ReadVariableOp*while/lstm_cell_714/BiasAdd/ReadVariableOp2V
)while/lstm_cell_714/MatMul/ReadVariableOp)while/lstm_cell_714/MatMul/ReadVariableOp2Z
+while/lstm_cell_714/MatMul_1/ReadVariableOp+while/lstm_cell_714/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_233_layer_call_and_return_conditional_losses_4333374

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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4336990

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

lstm_700_while_body_4334796.
*lstm_700_while_lstm_700_while_loop_counter4
0lstm_700_while_lstm_700_while_maximum_iterations
lstm_700_while_placeholder 
lstm_700_while_placeholder_1 
lstm_700_while_placeholder_2 
lstm_700_while_placeholder_3-
)lstm_700_while_lstm_700_strided_slice_1_0i
elstm_700_while_tensorarrayv2read_tensorlistgetitem_lstm_700_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_700_while_lstm_cell_715_matmul_readvariableop_resource_0:	d?R
?lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?M
>lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
lstm_700_while_identity
lstm_700_while_identity_1
lstm_700_while_identity_2
lstm_700_while_identity_3
lstm_700_while_identity_4
lstm_700_while_identity_5+
'lstm_700_while_lstm_700_strided_slice_1g
clstm_700_while_tensorarrayv2read_tensorlistgetitem_lstm_700_tensorarrayunstack_tensorlistfromtensorN
;lstm_700_while_lstm_cell_715_matmul_readvariableop_resource:	d?P
=lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource:	2?K
<lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource:	???3lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp?2lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp?4lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp?
@lstm_700/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_700/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_700_while_tensorarrayv2read_tensorlistgetitem_lstm_700_tensorarrayunstack_tensorlistfromtensor_0lstm_700_while_placeholderIlstm_700/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_700/while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp=lstm_700_while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_700/while/lstm_cell_715/MatMulMatMul9lstm_700/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp?lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_700/while/lstm_cell_715/MatMul_1MatMullstm_700_while_placeholder_2<lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_700/while/lstm_cell_715/addAddV2-lstm_700/while/lstm_cell_715/MatMul:product:0/lstm_700/while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp>lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_700/while/lstm_cell_715/BiasAddBiasAdd$lstm_700/while/lstm_cell_715/add:z:0;lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_700/while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_700/while/lstm_cell_715/splitSplit5lstm_700/while/lstm_cell_715/split/split_dim:output:0-lstm_700/while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_700/while/lstm_cell_715/SigmoidSigmoid+lstm_700/while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_700/while/lstm_cell_715/Sigmoid_1Sigmoid+lstm_700/while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_700/while/lstm_cell_715/mulMul*lstm_700/while/lstm_cell_715/Sigmoid_1:y:0lstm_700_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_700/while/lstm_cell_715/ReluRelu+lstm_700/while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_700/while/lstm_cell_715/mul_1Mul(lstm_700/while/lstm_cell_715/Sigmoid:y:0/lstm_700/while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_700/while/lstm_cell_715/add_1AddV2$lstm_700/while/lstm_cell_715/mul:z:0&lstm_700/while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_700/while/lstm_cell_715/Sigmoid_2Sigmoid+lstm_700/while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_700/while/lstm_cell_715/Relu_1Relu&lstm_700/while/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_700/while/lstm_cell_715/mul_2Mul*lstm_700/while/lstm_cell_715/Sigmoid_2:y:01lstm_700/while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_700/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_700_while_placeholder_1lstm_700_while_placeholder&lstm_700/while/lstm_cell_715/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_700/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_700/while/addAddV2lstm_700_while_placeholderlstm_700/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_700/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_700/while/add_1AddV2*lstm_700_while_lstm_700_while_loop_counterlstm_700/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_700/while/IdentityIdentitylstm_700/while/add_1:z:0^lstm_700/while/NoOp*
T0*
_output_shapes
: ?
lstm_700/while/Identity_1Identity0lstm_700_while_lstm_700_while_maximum_iterations^lstm_700/while/NoOp*
T0*
_output_shapes
: t
lstm_700/while/Identity_2Identitylstm_700/while/add:z:0^lstm_700/while/NoOp*
T0*
_output_shapes
: ?
lstm_700/while/Identity_3IdentityClstm_700/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_700/while/NoOp*
T0*
_output_shapes
: ?
lstm_700/while/Identity_4Identity&lstm_700/while/lstm_cell_715/mul_2:z:0^lstm_700/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_700/while/Identity_5Identity&lstm_700/while/lstm_cell_715/add_1:z:0^lstm_700/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_700/while/NoOpNoOp4^lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp3^lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp5^lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_700_while_identity lstm_700/while/Identity:output:0"?
lstm_700_while_identity_1"lstm_700/while/Identity_1:output:0"?
lstm_700_while_identity_2"lstm_700/while/Identity_2:output:0"?
lstm_700_while_identity_3"lstm_700/while/Identity_3:output:0"?
lstm_700_while_identity_4"lstm_700/while/Identity_4:output:0"?
lstm_700_while_identity_5"lstm_700/while/Identity_5:output:0"T
'lstm_700_while_lstm_700_strided_slice_1)lstm_700_while_lstm_700_strided_slice_1_0"~
<lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource>lstm_700_while_lstm_cell_715_biasadd_readvariableop_resource_0"?
=lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource?lstm_700_while_lstm_cell_715_matmul_1_readvariableop_resource_0"|
;lstm_700_while_lstm_cell_715_matmul_readvariableop_resource=lstm_700_while_lstm_cell_715_matmul_readvariableop_resource_0"?
clstm_700_while_tensorarrayv2read_tensorlistgetitem_lstm_700_tensorarrayunstack_tensorlistfromtensorelstm_700_while_tensorarrayv2read_tensorlistgetitem_lstm_700_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp3lstm_700/while/lstm_cell_715/BiasAdd/ReadVariableOp2h
2lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp2lstm_700/while/lstm_cell_715/MatMul/ReadVariableOp2l
4lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp4lstm_700/while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335641

inputs?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4335557*
condR
while_cond_4335556*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4336645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336645___redundant_placeholder05
1while_while_cond_4336645___redundant_placeholder15
1while_while_cond_4336645___redundant_placeholder25
1while_while_cond_4336645___redundant_placeholder3
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
lstm_699_while_cond_4334229.
*lstm_699_while_lstm_699_while_loop_counter4
0lstm_699_while_lstm_699_while_maximum_iterations
lstm_699_while_placeholder 
lstm_699_while_placeholder_1 
lstm_699_while_placeholder_2 
lstm_699_while_placeholder_30
,lstm_699_while_less_lstm_699_strided_slice_1G
Clstm_699_while_lstm_699_while_cond_4334229___redundant_placeholder0G
Clstm_699_while_lstm_699_while_cond_4334229___redundant_placeholder1G
Clstm_699_while_lstm_699_while_cond_4334229___redundant_placeholder2G
Clstm_699_while_lstm_699_while_cond_4334229___redundant_placeholder3
lstm_699_while_identity
?
lstm_699/while/LessLesslstm_699_while_placeholder,lstm_699_while_less_lstm_699_strided_slice_1*
T0*
_output_shapes
: ]
lstm_699/while/IdentityIdentitylstm_699/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_699_while_identity lstm_699/while/Identity:output:0*(
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
while_body_4336030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_715_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_715_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_715_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_715_matmul_readvariableop_resource:	d?G
4while_lstm_cell_715_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_715_biasadd_readvariableop_resource:	???*while/lstm_cell_715/BiasAdd/ReadVariableOp?)while/lstm_cell_715/MatMul/ReadVariableOp?+while/lstm_cell_715/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_715/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_715_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_715/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_715_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_715/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_715/addAddV2$while/lstm_cell_715/MatMul:product:0&while/lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_715_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_715/BiasAddBiasAddwhile/lstm_cell_715/add:z:02while/lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_715/splitSplit,while/lstm_cell_715/split/split_dim:output:0$while/lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_715/SigmoidSigmoid"while/lstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_1Sigmoid"while/lstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mulMul!while/lstm_cell_715/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_715/ReluRelu"while/lstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_1Mulwhile/lstm_cell_715/Sigmoid:y:0&while/lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/add_1AddV2while/lstm_cell_715/mul:z:0while/lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_715/Sigmoid_2Sigmoid"while/lstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_715/Relu_1Reluwhile/lstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_715/mul_2Mul!while/lstm_cell_715/Sigmoid_2:y:0(while/lstm_cell_715/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_715/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_715/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_715/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_715/BiasAdd/ReadVariableOp*^while/lstm_cell_715/MatMul/ReadVariableOp,^while/lstm_cell_715/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_715_biasadd_readvariableop_resource5while_lstm_cell_715_biasadd_readvariableop_resource_0"n
4while_lstm_cell_715_matmul_1_readvariableop_resource6while_lstm_cell_715_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_715_matmul_readvariableop_resource4while_lstm_cell_715_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_715/BiasAdd/ReadVariableOp*while/lstm_cell_715/BiasAdd/ReadVariableOp2V
)while/lstm_cell_715/MatMul/ReadVariableOp)while/lstm_cell_715/MatMul/ReadVariableOp2Z
+while/lstm_cell_715/MatMul_1/ReadVariableOp+while/lstm_cell_715/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_233_lstm_700_while_cond_4331627L
Hsequential_233_lstm_700_while_sequential_233_lstm_700_while_loop_counterR
Nsequential_233_lstm_700_while_sequential_233_lstm_700_while_maximum_iterations-
)sequential_233_lstm_700_while_placeholder/
+sequential_233_lstm_700_while_placeholder_1/
+sequential_233_lstm_700_while_placeholder_2/
+sequential_233_lstm_700_while_placeholder_3N
Jsequential_233_lstm_700_while_less_sequential_233_lstm_700_strided_slice_1e
asequential_233_lstm_700_while_sequential_233_lstm_700_while_cond_4331627___redundant_placeholder0e
asequential_233_lstm_700_while_sequential_233_lstm_700_while_cond_4331627___redundant_placeholder1e
asequential_233_lstm_700_while_sequential_233_lstm_700_while_cond_4331627___redundant_placeholder2e
asequential_233_lstm_700_while_sequential_233_lstm_700_while_cond_4331627___redundant_placeholder3*
&sequential_233_lstm_700_while_identity
?
"sequential_233/lstm_700/while/LessLess)sequential_233_lstm_700_while_placeholderJsequential_233_lstm_700_while_less_sequential_233_lstm_700_strided_slice_1*
T0*
_output_shapes
: {
&sequential_233/lstm_700/while/IdentityIdentity&sequential_233/lstm_700/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_233_lstm_700_while_identity/sequential_233/lstm_700/while/Identity:output:0*(
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
while_cond_4335743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4335743___redundant_placeholder05
1while_while_cond_4335743___redundant_placeholder15
1while_while_cond_4335743___redundant_placeholder25
1while_while_cond_4335743___redundant_placeholder3
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
*__inference_lstm_701_layer_call_fn_4336301

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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4333572o
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
*sequential_233_lstm_699_while_cond_4331488L
Hsequential_233_lstm_699_while_sequential_233_lstm_699_while_loop_counterR
Nsequential_233_lstm_699_while_sequential_233_lstm_699_while_maximum_iterations-
)sequential_233_lstm_699_while_placeholder/
+sequential_233_lstm_699_while_placeholder_1/
+sequential_233_lstm_699_while_placeholder_2/
+sequential_233_lstm_699_while_placeholder_3N
Jsequential_233_lstm_699_while_less_sequential_233_lstm_699_strided_slice_1e
asequential_233_lstm_699_while_sequential_233_lstm_699_while_cond_4331488___redundant_placeholder0e
asequential_233_lstm_699_while_sequential_233_lstm_699_while_cond_4331488___redundant_placeholder1e
asequential_233_lstm_699_while_sequential_233_lstm_699_while_cond_4331488___redundant_placeholder2e
asequential_233_lstm_699_while_sequential_233_lstm_699_while_cond_4331488___redundant_placeholder3*
&sequential_233_lstm_699_while_identity
?
"sequential_233/lstm_699/while/LessLess)sequential_233_lstm_699_while_placeholderJsequential_233_lstm_699_while_less_sequential_233_lstm_699_strided_slice_1*
T0*
_output_shapes
: {
&sequential_233/lstm_699/while/IdentityIdentity&sequential_233/lstm_699/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_233_lstm_699_while_identity/sequential_233/lstm_699/while/Identity:output:0*(
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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4333381

inputs#
lstm_699_4333057:	?#
lstm_699_4333059:	d?
lstm_699_4333061:	?#
lstm_700_4333207:	d?#
lstm_700_4333209:	2?
lstm_700_4333211:	?"
lstm_701_4333357:2("
lstm_701_4333359:
(
lstm_701_4333361:(#
dense_233_4333375:

dense_233_4333377:
identity??!dense_233/StatefulPartitionedCall? lstm_699/StatefulPartitionedCall? lstm_700/StatefulPartitionedCall? lstm_701/StatefulPartitionedCall?
 lstm_699/StatefulPartitionedCallStatefulPartitionedCallinputslstm_699_4333057lstm_699_4333059lstm_699_4333061*
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4333056?
 lstm_700/StatefulPartitionedCallStatefulPartitionedCall)lstm_699/StatefulPartitionedCall:output:0lstm_700_4333207lstm_700_4333209lstm_700_4333211*
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4333206?
 lstm_701/StatefulPartitionedCallStatefulPartitionedCall)lstm_700/StatefulPartitionedCall:output:0lstm_701_4333357lstm_701_4333359lstm_701_4333361*
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4333356?
!dense_233/StatefulPartitionedCallStatefulPartitionedCall)lstm_701/StatefulPartitionedCall:output:0dense_233_4333375dense_233_4333377*
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
F__inference_dense_233_layer_call_and_return_conditional_losses_4333374y
IdentityIdentity*dense_233/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_233/StatefulPartitionedCall!^lstm_699/StatefulPartitionedCall!^lstm_700/StatefulPartitionedCall!^lstm_701/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_233/StatefulPartitionedCall!dense_233/StatefulPartitionedCall2D
 lstm_699/StatefulPartitionedCall lstm_699/StatefulPartitionedCall2D
 lstm_700/StatefulPartitionedCall lstm_700/StatefulPartitionedCall2D
 lstm_701/StatefulPartitionedCall lstm_701/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_701_while_cond_4334507.
*lstm_701_while_lstm_701_while_loop_counter4
0lstm_701_while_lstm_701_while_maximum_iterations
lstm_701_while_placeholder 
lstm_701_while_placeholder_1 
lstm_701_while_placeholder_2 
lstm_701_while_placeholder_30
,lstm_701_while_less_lstm_701_strided_slice_1G
Clstm_701_while_lstm_701_while_cond_4334507___redundant_placeholder0G
Clstm_701_while_lstm_701_while_cond_4334507___redundant_placeholder1G
Clstm_701_while_lstm_701_while_cond_4334507___redundant_placeholder2G
Clstm_701_while_lstm_701_while_cond_4334507___redundant_placeholder3
lstm_701_while_identity
?
lstm_701/while/LessLesslstm_701_while_placeholder,lstm_701_while_less_lstm_701_strided_slice_1*
T0*
_output_shapes
: ]
lstm_701/while/IdentityIdentitylstm_701/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_701_while_identity lstm_701/while/Identity:output:0*(
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
%__inference_signature_wrapper_4334117
lstm_699_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_699_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4331857o
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
_user_specified_namelstm_699_input
?
?
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4336958

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
/__inference_lstm_cell_716_layer_call_fn_4337105

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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4332624o
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
?
*__inference_lstm_699_layer_call_fn_4335036
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4332007|
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
?J
?
E__inference_lstm_700_layer_call_and_return_conditional_losses_4333206

inputs?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4333122*
condR
while_cond_4333121*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335212
inputs_0?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4335128*
condR
while_cond_4335127*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_700_layer_call_and_return_conditional_losses_4332548

inputs(
lstm_cell_715_4332466:	d?(
lstm_cell_715_4332468:	2?$
lstm_cell_715_4332470:	?
identity??%lstm_cell_715/StatefulPartitionedCall?while;
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
%lstm_cell_715/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_715_4332466lstm_cell_715_4332468lstm_cell_715_4332470*
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4332420n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_715_4332466lstm_cell_715_4332468lstm_cell_715_4332470*
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
while_body_4332479*
condR
while_cond_4332478*K
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
NoOpNoOp&^lstm_cell_715/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_715/StatefulPartitionedCall%lstm_cell_715/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4331937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4331937___redundant_placeholder05
1while_while_cond_4331937___redundant_placeholder15
1while_while_cond_4331937___redundant_placeholder25
1while_while_cond_4331937___redundant_placeholder3
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4333056

inputs?
,lstm_cell_714_matmul_readvariableop_resource:	?A
.lstm_cell_714_matmul_1_readvariableop_resource:	d?<
-lstm_cell_714_biasadd_readvariableop_resource:	?
identity??$lstm_cell_714/BiasAdd/ReadVariableOp?#lstm_cell_714/MatMul/ReadVariableOp?%lstm_cell_714/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_714/MatMul/ReadVariableOpReadVariableOp,lstm_cell_714_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_714/MatMulMatMulstrided_slice_2:output:0+lstm_cell_714/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_714/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_714_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_714/MatMul_1MatMulzeros:output:0-lstm_cell_714/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_714/addAddV2lstm_cell_714/MatMul:product:0 lstm_cell_714/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_714/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_714_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_714/BiasAddBiasAddlstm_cell_714/add:z:0,lstm_cell_714/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_714/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_714/splitSplit&lstm_cell_714/split/split_dim:output:0lstm_cell_714/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_714/SigmoidSigmoidlstm_cell_714/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_1Sigmoidlstm_cell_714/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_714/mulMullstm_cell_714/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_714/ReluRelulstm_cell_714/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_1Mullstm_cell_714/Sigmoid:y:0 lstm_cell_714/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_714/add_1AddV2lstm_cell_714/mul:z:0lstm_cell_714/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_714/Sigmoid_2Sigmoidlstm_cell_714/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_714/Relu_1Relulstm_cell_714/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_714/mul_2Mullstm_cell_714/Sigmoid_2:y:0"lstm_cell_714/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_714_matmul_readvariableop_resource.lstm_cell_714_matmul_1_readvariableop_resource-lstm_cell_714_biasadd_readvariableop_resource*
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
while_body_4332972*
condR
while_cond_4332971*K
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
NoOpNoOp%^lstm_cell_714/BiasAdd/ReadVariableOp$^lstm_cell_714/MatMul/ReadVariableOp&^lstm_cell_714/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_714/BiasAdd/ReadVariableOp$lstm_cell_714/BiasAdd/ReadVariableOp2J
#lstm_cell_714/MatMul/ReadVariableOp#lstm_cell_714/MatMul/ReadVariableOp2N
%lstm_cell_714/MatMul_1/ReadVariableOp%lstm_cell_714/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336587
inputs_0>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4336503*
condR
while_cond_4336502*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_700_layer_call_and_return_conditional_losses_4335971
inputs_0?
,lstm_cell_715_matmul_readvariableop_resource:	d?A
.lstm_cell_715_matmul_1_readvariableop_resource:	2?<
-lstm_cell_715_biasadd_readvariableop_resource:	?
identity??$lstm_cell_715/BiasAdd/ReadVariableOp?#lstm_cell_715/MatMul/ReadVariableOp?%lstm_cell_715/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_715/MatMul/ReadVariableOpReadVariableOp,lstm_cell_715_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_715/MatMulMatMulstrided_slice_2:output:0+lstm_cell_715/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_715/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_715_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_715/MatMul_1MatMulzeros:output:0-lstm_cell_715/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_715/addAddV2lstm_cell_715/MatMul:product:0 lstm_cell_715/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_715/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_715_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_715/BiasAddBiasAddlstm_cell_715/add:z:0,lstm_cell_715/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_715/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_715/splitSplit&lstm_cell_715/split/split_dim:output:0lstm_cell_715/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_715/SigmoidSigmoidlstm_cell_715/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_1Sigmoidlstm_cell_715/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_715/mulMullstm_cell_715/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_715/ReluRelulstm_cell_715/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_1Mullstm_cell_715/Sigmoid:y:0 lstm_cell_715/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_715/add_1AddV2lstm_cell_715/mul:z:0lstm_cell_715/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_715/Sigmoid_2Sigmoidlstm_cell_715/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_715/Relu_1Relulstm_cell_715/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_715/mul_2Mullstm_cell_715/Sigmoid_2:y:0"lstm_cell_715/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_715_matmul_readvariableop_resource.lstm_cell_715_matmul_1_readvariableop_resource-lstm_cell_715_biasadd_readvariableop_resource*
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
while_body_4335887*
condR
while_cond_4335886*K
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
NoOpNoOp%^lstm_cell_715/BiasAdd/ReadVariableOp$^lstm_cell_715/MatMul/ReadVariableOp&^lstm_cell_715/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_715/BiasAdd/ReadVariableOp$lstm_cell_715/BiasAdd/ReadVariableOp2J
#lstm_cell_715/MatMul/ReadVariableOp#lstm_cell_715/MatMul/ReadVariableOp2N
%lstm_cell_715/MatMul_1/ReadVariableOp%lstm_cell_715/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_233_layer_call_fn_4334022
lstm_699_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_699_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4333970o
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
_user_specified_namelstm_699_input
?J
?
E__inference_lstm_701_layer_call_and_return_conditional_losses_4333356

inputs>
,lstm_cell_716_matmul_readvariableop_resource:2(@
.lstm_cell_716_matmul_1_readvariableop_resource:
(;
-lstm_cell_716_biasadd_readvariableop_resource:(
identity??$lstm_cell_716/BiasAdd/ReadVariableOp?#lstm_cell_716/MatMul/ReadVariableOp?%lstm_cell_716/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_716/MatMul/ReadVariableOpReadVariableOp,lstm_cell_716_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_716/MatMulMatMulstrided_slice_2:output:0+lstm_cell_716/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_716/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_716_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_716/MatMul_1MatMulzeros:output:0-lstm_cell_716/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_716/addAddV2lstm_cell_716/MatMul:product:0 lstm_cell_716/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_716/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_716_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_716/BiasAddBiasAddlstm_cell_716/add:z:0,lstm_cell_716/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_716/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_716/splitSplit&lstm_cell_716/split/split_dim:output:0lstm_cell_716/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_716/SigmoidSigmoidlstm_cell_716/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_1Sigmoidlstm_cell_716/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_716/mulMullstm_cell_716/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_716/ReluRelulstm_cell_716/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_1Mullstm_cell_716/Sigmoid:y:0 lstm_cell_716/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_716/add_1AddV2lstm_cell_716/mul:z:0lstm_cell_716/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_716/Sigmoid_2Sigmoidlstm_cell_716/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_716/Relu_1Relulstm_cell_716/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_716/mul_2Mullstm_cell_716/Sigmoid_2:y:0"lstm_cell_716/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_716_matmul_readvariableop_resource.lstm_cell_716_matmul_1_readvariableop_resource-lstm_cell_716_biasadd_readvariableop_resource*
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
while_body_4333272*
condR
while_cond_4333271*K
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
NoOpNoOp%^lstm_cell_716/BiasAdd/ReadVariableOp$^lstm_cell_716/MatMul/ReadVariableOp&^lstm_cell_716/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_716/BiasAdd/ReadVariableOp$lstm_cell_716/BiasAdd/ReadVariableOp2J
#lstm_cell_716/MatMul/ReadVariableOp#lstm_cell_716/MatMul/ReadVariableOp2N
%lstm_cell_716/MatMul_1/ReadVariableOp%lstm_cell_716/MatMul_1/ReadVariableOp2
whilewhile:S O
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
lstm_699_input;
 serving_default_lstm_699_input:0?????????=
	dense_2330
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
2dense_233/kernel
:2dense_233/bias
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
0:.	?2lstm_699/lstm_cell_699/kernel
::8	d?2'lstm_699/lstm_cell_699/recurrent_kernel
*:(?2lstm_699/lstm_cell_699/bias
0:.	d?2lstm_700/lstm_cell_700/kernel
::8	2?2'lstm_700/lstm_cell_700/recurrent_kernel
*:(?2lstm_700/lstm_cell_700/bias
/:-2(2lstm_701/lstm_cell_701/kernel
9:7
(2'lstm_701/lstm_cell_701/recurrent_kernel
):'(2lstm_701/lstm_cell_701/bias
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
2Adam/dense_233/kernel/m
!:2Adam/dense_233/bias/m
5:3	?2$Adam/lstm_699/lstm_cell_699/kernel/m
?:=	d?2.Adam/lstm_699/lstm_cell_699/recurrent_kernel/m
/:-?2"Adam/lstm_699/lstm_cell_699/bias/m
5:3	d?2$Adam/lstm_700/lstm_cell_700/kernel/m
?:=	2?2.Adam/lstm_700/lstm_cell_700/recurrent_kernel/m
/:-?2"Adam/lstm_700/lstm_cell_700/bias/m
4:22(2$Adam/lstm_701/lstm_cell_701/kernel/m
>:<
(2.Adam/lstm_701/lstm_cell_701/recurrent_kernel/m
.:,(2"Adam/lstm_701/lstm_cell_701/bias/m
':%
2Adam/dense_233/kernel/v
!:2Adam/dense_233/bias/v
5:3	?2$Adam/lstm_699/lstm_cell_699/kernel/v
?:=	d?2.Adam/lstm_699/lstm_cell_699/recurrent_kernel/v
/:-?2"Adam/lstm_699/lstm_cell_699/bias/v
5:3	d?2$Adam/lstm_700/lstm_cell_700/kernel/v
?:=	2?2.Adam/lstm_700/lstm_cell_700/recurrent_kernel/v
/:-?2"Adam/lstm_700/lstm_cell_700/bias/v
4:22(2$Adam/lstm_701/lstm_cell_701/kernel/v
>:<
(2.Adam/lstm_701/lstm_cell_701/recurrent_kernel/v
.:,(2"Adam/lstm_701/lstm_cell_701/bias/v
?2?
0__inference_sequential_233_layer_call_fn_4333406
0__inference_sequential_233_layer_call_fn_4334144
0__inference_sequential_233_layer_call_fn_4334171
0__inference_sequential_233_layer_call_fn_4334022?
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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4334598
K__inference_sequential_233_layer_call_and_return_conditional_losses_4335025
K__inference_sequential_233_layer_call_and_return_conditional_losses_4334052
K__inference_sequential_233_layer_call_and_return_conditional_losses_4334082?
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
"__inference__wrapped_model_4331857lstm_699_input"?
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
*__inference_lstm_699_layer_call_fn_4335036
*__inference_lstm_699_layer_call_fn_4335047
*__inference_lstm_699_layer_call_fn_4335058
*__inference_lstm_699_layer_call_fn_4335069?
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335212
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335355
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335498
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335641?
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
*__inference_lstm_700_layer_call_fn_4335652
*__inference_lstm_700_layer_call_fn_4335663
*__inference_lstm_700_layer_call_fn_4335674
*__inference_lstm_700_layer_call_fn_4335685?
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4335828
E__inference_lstm_700_layer_call_and_return_conditional_losses_4335971
E__inference_lstm_700_layer_call_and_return_conditional_losses_4336114
E__inference_lstm_700_layer_call_and_return_conditional_losses_4336257?
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
*__inference_lstm_701_layer_call_fn_4336268
*__inference_lstm_701_layer_call_fn_4336279
*__inference_lstm_701_layer_call_fn_4336290
*__inference_lstm_701_layer_call_fn_4336301?
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336444
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336587
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336730
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336873?
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
+__inference_dense_233_layer_call_fn_4336882?
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
F__inference_dense_233_layer_call_and_return_conditional_losses_4336892?
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
%__inference_signature_wrapper_4334117lstm_699_input"?
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
/__inference_lstm_cell_714_layer_call_fn_4336909
/__inference_lstm_cell_714_layer_call_fn_4336926?
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4336958
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4336990?
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
/__inference_lstm_cell_715_layer_call_fn_4337007
/__inference_lstm_cell_715_layer_call_fn_4337024?
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4337056
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4337088?
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
/__inference_lstm_cell_716_layer_call_fn_4337105
/__inference_lstm_cell_716_layer_call_fn_4337122?
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4337154
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4337186?
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
"__inference__wrapped_model_4331857?-./012345!";?8
1?.
,?)
lstm_699_input?????????
? "5?2
0
	dense_233#? 
	dense_233??????????
F__inference_dense_233_layer_call_and_return_conditional_losses_4336892\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_233_layer_call_fn_4336882O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335212?-./O?L
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335355?-./O?L
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335498q-./??<
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
E__inference_lstm_699_layer_call_and_return_conditional_losses_4335641q-./??<
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
*__inference_lstm_699_layer_call_fn_4335036}-./O?L
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
*__inference_lstm_699_layer_call_fn_4335047}-./O?L
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
*__inference_lstm_699_layer_call_fn_4335058d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_699_layer_call_fn_4335069d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_700_layer_call_and_return_conditional_losses_4335828?012O?L
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4335971?012O?L
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4336114q012??<
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
E__inference_lstm_700_layer_call_and_return_conditional_losses_4336257q012??<
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
*__inference_lstm_700_layer_call_fn_4335652}012O?L
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
*__inference_lstm_700_layer_call_fn_4335663}012O?L
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
*__inference_lstm_700_layer_call_fn_4335674d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_700_layer_call_fn_4335685d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336444}345O?L
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336587}345O?L
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336730m345??<
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
E__inference_lstm_701_layer_call_and_return_conditional_losses_4336873m345??<
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
*__inference_lstm_701_layer_call_fn_4336268p345O?L
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
*__inference_lstm_701_layer_call_fn_4336279p345O?L
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
*__inference_lstm_701_layer_call_fn_4336290`345??<
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
*__inference_lstm_701_layer_call_fn_4336301`345??<
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4336958?-./??}
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
J__inference_lstm_cell_714_layer_call_and_return_conditional_losses_4336990?-./??}
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
/__inference_lstm_cell_714_layer_call_fn_4336909?-./??}
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
/__inference_lstm_cell_714_layer_call_fn_4336926?-./??}
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4337056?012??}
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
J__inference_lstm_cell_715_layer_call_and_return_conditional_losses_4337088?012??}
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
/__inference_lstm_cell_715_layer_call_fn_4337007?012??}
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
/__inference_lstm_cell_715_layer_call_fn_4337024?012??}
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4337154?345??}
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
J__inference_lstm_cell_716_layer_call_and_return_conditional_losses_4337186?345??}
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
/__inference_lstm_cell_716_layer_call_fn_4337105?345??}
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
/__inference_lstm_cell_716_layer_call_fn_4337122?345??}
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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4334052y-./012345!"C?@
9?6
,?)
lstm_699_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_233_layer_call_and_return_conditional_losses_4334082y-./012345!"C?@
9?6
,?)
lstm_699_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_233_layer_call_and_return_conditional_losses_4334598q-./012345!";?8
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
K__inference_sequential_233_layer_call_and_return_conditional_losses_4335025q-./012345!";?8
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
0__inference_sequential_233_layer_call_fn_4333406l-./012345!"C?@
9?6
,?)
lstm_699_input?????????
p 

 
? "???????????
0__inference_sequential_233_layer_call_fn_4334022l-./012345!"C?@
9?6
,?)
lstm_699_input?????????
p

 
? "???????????
0__inference_sequential_233_layer_call_fn_4334144d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_233_layer_call_fn_4334171d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4334117?-./012345!"M?J
? 
C?@
>
lstm_699_input,?)
lstm_699_input?????????"5?2
0
	dense_233#? 
	dense_233?????????