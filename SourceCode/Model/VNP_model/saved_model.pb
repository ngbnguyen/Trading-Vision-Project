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
dense_295/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_295/kernel
u
$dense_295/kernel/Read/ReadVariableOpReadVariableOpdense_295/kernel*
_output_shapes

:
*
dtype0
t
dense_295/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_295/bias
m
"dense_295/bias/Read/ReadVariableOpReadVariableOpdense_295/bias*
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
lstm_885/lstm_cell_885/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_885/lstm_cell_885/kernel
?
1lstm_885/lstm_cell_885/kernel/Read/ReadVariableOpReadVariableOplstm_885/lstm_cell_885/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_885/lstm_cell_885/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_885/lstm_cell_885/recurrent_kernel
?
;lstm_885/lstm_cell_885/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_885/lstm_cell_885/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_885/lstm_cell_885/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_885/lstm_cell_885/bias
?
/lstm_885/lstm_cell_885/bias/Read/ReadVariableOpReadVariableOplstm_885/lstm_cell_885/bias*
_output_shapes	
:?*
dtype0
?
lstm_886/lstm_cell_886/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_886/lstm_cell_886/kernel
?
1lstm_886/lstm_cell_886/kernel/Read/ReadVariableOpReadVariableOplstm_886/lstm_cell_886/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_886/lstm_cell_886/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_886/lstm_cell_886/recurrent_kernel
?
;lstm_886/lstm_cell_886/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_886/lstm_cell_886/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_886/lstm_cell_886/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_886/lstm_cell_886/bias
?
/lstm_886/lstm_cell_886/bias/Read/ReadVariableOpReadVariableOplstm_886/lstm_cell_886/bias*
_output_shapes	
:?*
dtype0
?
lstm_887/lstm_cell_887/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_887/lstm_cell_887/kernel
?
1lstm_887/lstm_cell_887/kernel/Read/ReadVariableOpReadVariableOplstm_887/lstm_cell_887/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_887/lstm_cell_887/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_887/lstm_cell_887/recurrent_kernel
?
;lstm_887/lstm_cell_887/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_887/lstm_cell_887/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_887/lstm_cell_887/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_887/lstm_cell_887/bias
?
/lstm_887/lstm_cell_887/bias/Read/ReadVariableOpReadVariableOplstm_887/lstm_cell_887/bias*
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
Adam/dense_295/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_295/kernel/m
?
+Adam/dense_295/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_295/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_295/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_295/bias/m
{
)Adam/dense_295/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_295/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_885/lstm_cell_885/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_885/lstm_cell_885/kernel/m
?
8Adam/lstm_885/lstm_cell_885/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_885/lstm_cell_885/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_885/lstm_cell_885/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_885/lstm_cell_885/recurrent_kernel/m
?
BAdam/lstm_885/lstm_cell_885/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_885/lstm_cell_885/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_885/lstm_cell_885/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_885/lstm_cell_885/bias/m
?
6Adam/lstm_885/lstm_cell_885/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_885/lstm_cell_885/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_886/lstm_cell_886/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_886/lstm_cell_886/kernel/m
?
8Adam/lstm_886/lstm_cell_886/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_886/lstm_cell_886/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_886/lstm_cell_886/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_886/lstm_cell_886/recurrent_kernel/m
?
BAdam/lstm_886/lstm_cell_886/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_886/lstm_cell_886/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_886/lstm_cell_886/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_886/lstm_cell_886/bias/m
?
6Adam/lstm_886/lstm_cell_886/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_886/lstm_cell_886/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_887/lstm_cell_887/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_887/lstm_cell_887/kernel/m
?
8Adam/lstm_887/lstm_cell_887/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_887/lstm_cell_887/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_887/lstm_cell_887/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_887/lstm_cell_887/recurrent_kernel/m
?
BAdam/lstm_887/lstm_cell_887/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_887/lstm_cell_887/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_887/lstm_cell_887/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_887/lstm_cell_887/bias/m
?
6Adam/lstm_887/lstm_cell_887/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_887/lstm_cell_887/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_295/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_295/kernel/v
?
+Adam/dense_295/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_295/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_295/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_295/bias/v
{
)Adam/dense_295/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_295/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_885/lstm_cell_885/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_885/lstm_cell_885/kernel/v
?
8Adam/lstm_885/lstm_cell_885/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_885/lstm_cell_885/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_885/lstm_cell_885/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_885/lstm_cell_885/recurrent_kernel/v
?
BAdam/lstm_885/lstm_cell_885/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_885/lstm_cell_885/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_885/lstm_cell_885/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_885/lstm_cell_885/bias/v
?
6Adam/lstm_885/lstm_cell_885/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_885/lstm_cell_885/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_886/lstm_cell_886/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_886/lstm_cell_886/kernel/v
?
8Adam/lstm_886/lstm_cell_886/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_886/lstm_cell_886/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_886/lstm_cell_886/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_886/lstm_cell_886/recurrent_kernel/v
?
BAdam/lstm_886/lstm_cell_886/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_886/lstm_cell_886/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_886/lstm_cell_886/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_886/lstm_cell_886/bias/v
?
6Adam/lstm_886/lstm_cell_886/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_886/lstm_cell_886/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_887/lstm_cell_887/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_887/lstm_cell_887/kernel/v
?
8Adam/lstm_887/lstm_cell_887/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_887/lstm_cell_887/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_887/lstm_cell_887/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_887/lstm_cell_887/recurrent_kernel/v
?
BAdam/lstm_887/lstm_cell_887/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_887/lstm_cell_887/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_887/lstm_cell_887/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_887/lstm_cell_887/bias/v
?
6Adam/lstm_887/lstm_cell_887/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_887/lstm_cell_887/bias/v*
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
VARIABLE_VALUEdense_295/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_295/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_885/lstm_cell_885/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_885/lstm_cell_885/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_885/lstm_cell_885/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_886/lstm_cell_886/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_886/lstm_cell_886/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_886/lstm_cell_886/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_887/lstm_cell_887/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_887/lstm_cell_887/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_887/lstm_cell_887/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_295/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_295/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_885/lstm_cell_885/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_885/lstm_cell_885/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_885/lstm_cell_885/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_886/lstm_cell_886/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_886/lstm_cell_886/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_886/lstm_cell_886/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_887/lstm_cell_887/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_887/lstm_cell_887/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_887/lstm_cell_887/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_295/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_295/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_885/lstm_cell_885/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_885/lstm_cell_885/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_885/lstm_cell_885/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_886/lstm_cell_886/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_886/lstm_cell_886/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_886/lstm_cell_886/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_887/lstm_cell_887/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_887/lstm_cell_887/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_887/lstm_cell_887/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_885_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_885_inputlstm_885/lstm_cell_885/kernel'lstm_885/lstm_cell_885/recurrent_kernellstm_885/lstm_cell_885/biaslstm_886/lstm_cell_886/kernel'lstm_886/lstm_cell_886/recurrent_kernellstm_886/lstm_cell_886/biaslstm_887/lstm_cell_887/kernel'lstm_887/lstm_cell_887/recurrent_kernellstm_887/lstm_cell_887/biasdense_295/kerneldense_295/bias*
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
%__inference_signature_wrapper_4640986
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_295/kernel/Read/ReadVariableOp"dense_295/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_885/lstm_cell_885/kernel/Read/ReadVariableOp;lstm_885/lstm_cell_885/recurrent_kernel/Read/ReadVariableOp/lstm_885/lstm_cell_885/bias/Read/ReadVariableOp1lstm_886/lstm_cell_886/kernel/Read/ReadVariableOp;lstm_886/lstm_cell_886/recurrent_kernel/Read/ReadVariableOp/lstm_886/lstm_cell_886/bias/Read/ReadVariableOp1lstm_887/lstm_cell_887/kernel/Read/ReadVariableOp;lstm_887/lstm_cell_887/recurrent_kernel/Read/ReadVariableOp/lstm_887/lstm_cell_887/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_295/kernel/m/Read/ReadVariableOp)Adam/dense_295/bias/m/Read/ReadVariableOp8Adam/lstm_885/lstm_cell_885/kernel/m/Read/ReadVariableOpBAdam/lstm_885/lstm_cell_885/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_885/lstm_cell_885/bias/m/Read/ReadVariableOp8Adam/lstm_886/lstm_cell_886/kernel/m/Read/ReadVariableOpBAdam/lstm_886/lstm_cell_886/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_886/lstm_cell_886/bias/m/Read/ReadVariableOp8Adam/lstm_887/lstm_cell_887/kernel/m/Read/ReadVariableOpBAdam/lstm_887/lstm_cell_887/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_887/lstm_cell_887/bias/m/Read/ReadVariableOp+Adam/dense_295/kernel/v/Read/ReadVariableOp)Adam/dense_295/bias/v/Read/ReadVariableOp8Adam/lstm_885/lstm_cell_885/kernel/v/Read/ReadVariableOpBAdam/lstm_885/lstm_cell_885/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_885/lstm_cell_885/bias/v/Read/ReadVariableOp8Adam/lstm_886/lstm_cell_886/kernel/v/Read/ReadVariableOpBAdam/lstm_886/lstm_cell_886/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_886/lstm_cell_886/bias/v/Read/ReadVariableOp8Adam/lstm_887/lstm_cell_887/kernel/v/Read/ReadVariableOpBAdam/lstm_887/lstm_cell_887/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_887/lstm_cell_887/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4644198
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_295/kerneldense_295/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_885/lstm_cell_885/kernel'lstm_885/lstm_cell_885/recurrent_kernellstm_885/lstm_cell_885/biaslstm_886/lstm_cell_886/kernel'lstm_886/lstm_cell_886/recurrent_kernellstm_886/lstm_cell_886/biaslstm_887/lstm_cell_887/kernel'lstm_887/lstm_cell_887/recurrent_kernellstm_887/lstm_cell_887/biastotalcountAdam/dense_295/kernel/mAdam/dense_295/bias/m$Adam/lstm_885/lstm_cell_885/kernel/m.Adam/lstm_885/lstm_cell_885/recurrent_kernel/m"Adam/lstm_885/lstm_cell_885/bias/m$Adam/lstm_886/lstm_cell_886/kernel/m.Adam/lstm_886/lstm_cell_886/recurrent_kernel/m"Adam/lstm_886/lstm_cell_886/bias/m$Adam/lstm_887/lstm_cell_887/kernel/m.Adam/lstm_887/lstm_cell_887/recurrent_kernel/m"Adam/lstm_887/lstm_cell_887/bias/mAdam/dense_295/kernel/vAdam/dense_295/bias/v$Adam/lstm_885/lstm_cell_885/kernel/v.Adam/lstm_885/lstm_cell_885/recurrent_kernel/v"Adam/lstm_885/lstm_cell_885/bias/v$Adam/lstm_886/lstm_cell_886/kernel/v.Adam/lstm_886/lstm_cell_886/recurrent_kernel/v"Adam/lstm_886/lstm_cell_886/bias/v$Adam/lstm_887/lstm_cell_887/kernel/v.Adam/lstm_887/lstm_cell_887/recurrent_kernel/v"Adam/lstm_887/lstm_cell_887/bias/v*4
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
#__inference__traced_restore_4644328??+
?
?
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4638939

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
?
while_cond_4641996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4641996___redundant_placeholder05
1while_while_cond_4641996___redundant_placeholder15
1while_while_cond_4641996___redundant_placeholder25
1while_while_cond_4641996___redundant_placeholder3
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
while_body_4639698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_767_4639722_0:2(/
while_lstm_cell_767_4639724_0:
(+
while_lstm_cell_767_4639726_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_767_4639722:2(-
while_lstm_cell_767_4639724:
()
while_lstm_cell_767_4639726:(??+while/lstm_cell_767/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_767/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_767_4639722_0while_lstm_cell_767_4639724_0while_lstm_cell_767_4639726_0*
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4639639?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_767/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_767/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_767/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_767/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_767_4639722while_lstm_cell_767_4639722_0"<
while_lstm_cell_767_4639724while_lstm_cell_767_4639724_0"<
while_lstm_cell_767_4639726while_lstm_cell_767_4639726_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_767/StatefulPartitionedCall+while/lstm_cell_767/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4644023

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
while_cond_4643041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4643041___redundant_placeholder05
1while_while_cond_4643041___redundant_placeholder15
1while_while_cond_4643041___redundant_placeholder25
1while_while_cond_4643041___redundant_placeholder3
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
while_body_4639991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4639493

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
/__inference_lstm_cell_765_layer_call_fn_4643778

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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4638793o
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
while_cond_4639697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4639697___redundant_placeholder05
1while_while_cond_4639697___redundant_placeholder15
1while_while_cond_4639697___redundant_placeholder25
1while_while_cond_4639697___redundant_placeholder3
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
*sequential_295_lstm_886_while_cond_4638496L
Hsequential_295_lstm_886_while_sequential_295_lstm_886_while_loop_counterR
Nsequential_295_lstm_886_while_sequential_295_lstm_886_while_maximum_iterations-
)sequential_295_lstm_886_while_placeholder/
+sequential_295_lstm_886_while_placeholder_1/
+sequential_295_lstm_886_while_placeholder_2/
+sequential_295_lstm_886_while_placeholder_3N
Jsequential_295_lstm_886_while_less_sequential_295_lstm_886_strided_slice_1e
asequential_295_lstm_886_while_sequential_295_lstm_886_while_cond_4638496___redundant_placeholder0e
asequential_295_lstm_886_while_sequential_295_lstm_886_while_cond_4638496___redundant_placeholder1e
asequential_295_lstm_886_while_sequential_295_lstm_886_while_cond_4638496___redundant_placeholder2e
asequential_295_lstm_886_while_sequential_295_lstm_886_while_cond_4638496___redundant_placeholder3*
&sequential_295_lstm_886_while_identity
?
"sequential_295/lstm_886/while/LessLess)sequential_295_lstm_886_while_placeholderJsequential_295_lstm_886_while_less_sequential_295_lstm_886_strided_slice_1*
T0*
_output_shapes
: {
&sequential_295/lstm_886/while/IdentityIdentity&sequential_295/lstm_886/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_295_lstm_886_while_identity/sequential_295/lstm_886/while/Identity:output:0*(
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
while_body_4643372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_885_layer_call_fn_4641927

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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4639925s
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642510

inputs?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4642426*
condR
while_cond_4642425*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_766_layer_call_fn_4643893

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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4639289o
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
?
?
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640250

inputs#
lstm_885_4639926:	?#
lstm_885_4639928:	d?
lstm_885_4639930:	?#
lstm_886_4640076:	d?#
lstm_886_4640078:	2?
lstm_886_4640080:	?"
lstm_887_4640226:2("
lstm_887_4640228:
(
lstm_887_4640230:(#
dense_295_4640244:

dense_295_4640246:
identity??!dense_295/StatefulPartitionedCall? lstm_885/StatefulPartitionedCall? lstm_886/StatefulPartitionedCall? lstm_887/StatefulPartitionedCall?
 lstm_885/StatefulPartitionedCallStatefulPartitionedCallinputslstm_885_4639926lstm_885_4639928lstm_885_4639930*
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4639925?
 lstm_886/StatefulPartitionedCallStatefulPartitionedCall)lstm_885/StatefulPartitionedCall:output:0lstm_886_4640076lstm_886_4640078lstm_886_4640080*
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4640075?
 lstm_887/StatefulPartitionedCallStatefulPartitionedCall)lstm_886/StatefulPartitionedCall:output:0lstm_887_4640226lstm_887_4640228lstm_887_4640230*
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4640225?
!dense_295/StatefulPartitionedCallStatefulPartitionedCall)lstm_887/StatefulPartitionedCall:output:0dense_295_4640244dense_295_4640246*
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
F__inference_dense_295_layer_call_and_return_conditional_losses_4640243y
IdentityIdentity*dense_295/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_295/StatefulPartitionedCall!^lstm_885/StatefulPartitionedCall!^lstm_886/StatefulPartitionedCall!^lstm_887/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_295/StatefulPartitionedCall!dense_295/StatefulPartitionedCall2D
 lstm_885/StatefulPartitionedCall lstm_885/StatefulPartitionedCall2D
 lstm_886/StatefulPartitionedCall lstm_886/StatefulPartitionedCall2D
 lstm_887/StatefulPartitionedCall lstm_887/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_887_layer_call_and_return_conditional_losses_4640225

inputs>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4640141*
condR
while_cond_4640140*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640951
lstm_885_input#
lstm_885_4640924:	?#
lstm_885_4640926:	d?
lstm_885_4640928:	?#
lstm_886_4640931:	d?#
lstm_886_4640933:	2?
lstm_886_4640935:	?"
lstm_887_4640938:2("
lstm_887_4640940:
(
lstm_887_4640942:(#
dense_295_4640945:

dense_295_4640947:
identity??!dense_295/StatefulPartitionedCall? lstm_885/StatefulPartitionedCall? lstm_886/StatefulPartitionedCall? lstm_887/StatefulPartitionedCall?
 lstm_885/StatefulPartitionedCallStatefulPartitionedCalllstm_885_inputlstm_885_4640924lstm_885_4640926lstm_885_4640928*
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4640771?
 lstm_886/StatefulPartitionedCallStatefulPartitionedCall)lstm_885/StatefulPartitionedCall:output:0lstm_886_4640931lstm_886_4640933lstm_886_4640935*
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4640606?
 lstm_887/StatefulPartitionedCallStatefulPartitionedCall)lstm_886/StatefulPartitionedCall:output:0lstm_887_4640938lstm_887_4640940lstm_887_4640942*
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4640441?
!dense_295/StatefulPartitionedCallStatefulPartitionedCall)lstm_887/StatefulPartitionedCall:output:0dense_295_4640945dense_295_4640947*
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
F__inference_dense_295_layer_call_and_return_conditional_losses_4640243y
IdentityIdentity*dense_295/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_295/StatefulPartitionedCall!^lstm_885/StatefulPartitionedCall!^lstm_886/StatefulPartitionedCall!^lstm_887/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_295/StatefulPartitionedCall!dense_295/StatefulPartitionedCall2D
 lstm_885/StatefulPartitionedCall lstm_885/StatefulPartitionedCall2D
 lstm_886/StatefulPartitionedCall lstm_886/StatefulPartitionedCall2D
 lstm_887/StatefulPartitionedCall lstm_887/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_885_input
?
?
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4643827

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
??
?
K__inference_sequential_295_layer_call_and_return_conditional_losses_4641894

inputsH
5lstm_885_lstm_cell_765_matmul_readvariableop_resource:	?J
7lstm_885_lstm_cell_765_matmul_1_readvariableop_resource:	d?E
6lstm_885_lstm_cell_765_biasadd_readvariableop_resource:	?H
5lstm_886_lstm_cell_766_matmul_readvariableop_resource:	d?J
7lstm_886_lstm_cell_766_matmul_1_readvariableop_resource:	2?E
6lstm_886_lstm_cell_766_biasadd_readvariableop_resource:	?G
5lstm_887_lstm_cell_767_matmul_readvariableop_resource:2(I
7lstm_887_lstm_cell_767_matmul_1_readvariableop_resource:
(D
6lstm_887_lstm_cell_767_biasadd_readvariableop_resource:(:
(dense_295_matmul_readvariableop_resource:
7
)dense_295_biasadd_readvariableop_resource:
identity?? dense_295/BiasAdd/ReadVariableOp?dense_295/MatMul/ReadVariableOp?-lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp?,lstm_885/lstm_cell_765/MatMul/ReadVariableOp?.lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp?lstm_885/while?-lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp?,lstm_886/lstm_cell_766/MatMul/ReadVariableOp?.lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp?lstm_886/while?-lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp?,lstm_887/lstm_cell_767/MatMul/ReadVariableOp?.lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp?lstm_887/whileD
lstm_885/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_885/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_885/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_885/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_885/strided_sliceStridedSlicelstm_885/Shape:output:0%lstm_885/strided_slice/stack:output:0'lstm_885/strided_slice/stack_1:output:0'lstm_885/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_885/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_885/zeros/packedPacklstm_885/strided_slice:output:0 lstm_885/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_885/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_885/zerosFilllstm_885/zeros/packed:output:0lstm_885/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_885/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_885/zeros_1/packedPacklstm_885/strided_slice:output:0"lstm_885/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_885/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_885/zeros_1Fill lstm_885/zeros_1/packed:output:0lstm_885/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_885/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_885/transpose	Transposeinputs lstm_885/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_885/Shape_1Shapelstm_885/transpose:y:0*
T0*
_output_shapes
:h
lstm_885/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_885/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_885/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_885/strided_slice_1StridedSlicelstm_885/Shape_1:output:0'lstm_885/strided_slice_1/stack:output:0)lstm_885/strided_slice_1/stack_1:output:0)lstm_885/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_885/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_885/TensorArrayV2TensorListReserve-lstm_885/TensorArrayV2/element_shape:output:0!lstm_885/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_885/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_885/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_885/transpose:y:0Glstm_885/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_885/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_885/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_885/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_885/strided_slice_2StridedSlicelstm_885/transpose:y:0'lstm_885/strided_slice_2/stack:output:0)lstm_885/strided_slice_2/stack_1:output:0)lstm_885/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_885/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp5lstm_885_lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_885/lstm_cell_765/MatMulMatMul!lstm_885/strided_slice_2:output:04lstm_885/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_885/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp7lstm_885_lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_885/lstm_cell_765/MatMul_1MatMullstm_885/zeros:output:06lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_885/lstm_cell_765/addAddV2'lstm_885/lstm_cell_765/MatMul:product:0)lstm_885/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_885/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp6lstm_885_lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_885/lstm_cell_765/BiasAddBiasAddlstm_885/lstm_cell_765/add:z:05lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_885/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_885/lstm_cell_765/splitSplit/lstm_885/lstm_cell_765/split/split_dim:output:0'lstm_885/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_885/lstm_cell_765/SigmoidSigmoid%lstm_885/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_885/lstm_cell_765/Sigmoid_1Sigmoid%lstm_885/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_885/lstm_cell_765/mulMul$lstm_885/lstm_cell_765/Sigmoid_1:y:0lstm_885/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_885/lstm_cell_765/ReluRelu%lstm_885/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_885/lstm_cell_765/mul_1Mul"lstm_885/lstm_cell_765/Sigmoid:y:0)lstm_885/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_885/lstm_cell_765/add_1AddV2lstm_885/lstm_cell_765/mul:z:0 lstm_885/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_885/lstm_cell_765/Sigmoid_2Sigmoid%lstm_885/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_885/lstm_cell_765/Relu_1Relu lstm_885/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_885/lstm_cell_765/mul_2Mul$lstm_885/lstm_cell_765/Sigmoid_2:y:0+lstm_885/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_885/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_885/TensorArrayV2_1TensorListReserve/lstm_885/TensorArrayV2_1/element_shape:output:0!lstm_885/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_885/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_885/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_885/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_885/whileWhile$lstm_885/while/loop_counter:output:0*lstm_885/while/maximum_iterations:output:0lstm_885/time:output:0!lstm_885/TensorArrayV2_1:handle:0lstm_885/zeros:output:0lstm_885/zeros_1:output:0!lstm_885/strided_slice_1:output:0@lstm_885/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_885_lstm_cell_765_matmul_readvariableop_resource7lstm_885_lstm_cell_765_matmul_1_readvariableop_resource6lstm_885_lstm_cell_765_biasadd_readvariableop_resource*
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
lstm_885_while_body_4641526*'
condR
lstm_885_while_cond_4641525*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_885/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_885/TensorArrayV2Stack/TensorListStackTensorListStacklstm_885/while:output:3Blstm_885/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_885/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_885/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_885/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_885/strided_slice_3StridedSlice4lstm_885/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_885/strided_slice_3/stack:output:0)lstm_885/strided_slice_3/stack_1:output:0)lstm_885/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_885/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_885/transpose_1	Transpose4lstm_885/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_885/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_885/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_886/ShapeShapelstm_885/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_886/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_886/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_886/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_886/strided_sliceStridedSlicelstm_886/Shape:output:0%lstm_886/strided_slice/stack:output:0'lstm_886/strided_slice/stack_1:output:0'lstm_886/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_886/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_886/zeros/packedPacklstm_886/strided_slice:output:0 lstm_886/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_886/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_886/zerosFilllstm_886/zeros/packed:output:0lstm_886/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_886/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_886/zeros_1/packedPacklstm_886/strided_slice:output:0"lstm_886/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_886/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_886/zeros_1Fill lstm_886/zeros_1/packed:output:0lstm_886/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_886/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_886/transpose	Transposelstm_885/transpose_1:y:0 lstm_886/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_886/Shape_1Shapelstm_886/transpose:y:0*
T0*
_output_shapes
:h
lstm_886/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_886/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_886/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_886/strided_slice_1StridedSlicelstm_886/Shape_1:output:0'lstm_886/strided_slice_1/stack:output:0)lstm_886/strided_slice_1/stack_1:output:0)lstm_886/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_886/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_886/TensorArrayV2TensorListReserve-lstm_886/TensorArrayV2/element_shape:output:0!lstm_886/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_886/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_886/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_886/transpose:y:0Glstm_886/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_886/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_886/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_886/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_886/strided_slice_2StridedSlicelstm_886/transpose:y:0'lstm_886/strided_slice_2/stack:output:0)lstm_886/strided_slice_2/stack_1:output:0)lstm_886/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_886/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp5lstm_886_lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_886/lstm_cell_766/MatMulMatMul!lstm_886/strided_slice_2:output:04lstm_886/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_886/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp7lstm_886_lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_886/lstm_cell_766/MatMul_1MatMullstm_886/zeros:output:06lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_886/lstm_cell_766/addAddV2'lstm_886/lstm_cell_766/MatMul:product:0)lstm_886/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_886/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp6lstm_886_lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_886/lstm_cell_766/BiasAddBiasAddlstm_886/lstm_cell_766/add:z:05lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_886/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_886/lstm_cell_766/splitSplit/lstm_886/lstm_cell_766/split/split_dim:output:0'lstm_886/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_886/lstm_cell_766/SigmoidSigmoid%lstm_886/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_886/lstm_cell_766/Sigmoid_1Sigmoid%lstm_886/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_886/lstm_cell_766/mulMul$lstm_886/lstm_cell_766/Sigmoid_1:y:0lstm_886/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_886/lstm_cell_766/ReluRelu%lstm_886/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_886/lstm_cell_766/mul_1Mul"lstm_886/lstm_cell_766/Sigmoid:y:0)lstm_886/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_886/lstm_cell_766/add_1AddV2lstm_886/lstm_cell_766/mul:z:0 lstm_886/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_886/lstm_cell_766/Sigmoid_2Sigmoid%lstm_886/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_886/lstm_cell_766/Relu_1Relu lstm_886/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_886/lstm_cell_766/mul_2Mul$lstm_886/lstm_cell_766/Sigmoid_2:y:0+lstm_886/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_886/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_886/TensorArrayV2_1TensorListReserve/lstm_886/TensorArrayV2_1/element_shape:output:0!lstm_886/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_886/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_886/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_886/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_886/whileWhile$lstm_886/while/loop_counter:output:0*lstm_886/while/maximum_iterations:output:0lstm_886/time:output:0!lstm_886/TensorArrayV2_1:handle:0lstm_886/zeros:output:0lstm_886/zeros_1:output:0!lstm_886/strided_slice_1:output:0@lstm_886/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_886_lstm_cell_766_matmul_readvariableop_resource7lstm_886_lstm_cell_766_matmul_1_readvariableop_resource6lstm_886_lstm_cell_766_biasadd_readvariableop_resource*
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
lstm_886_while_body_4641665*'
condR
lstm_886_while_cond_4641664*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_886/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_886/TensorArrayV2Stack/TensorListStackTensorListStacklstm_886/while:output:3Blstm_886/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_886/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_886/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_886/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_886/strided_slice_3StridedSlice4lstm_886/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_886/strided_slice_3/stack:output:0)lstm_886/strided_slice_3/stack_1:output:0)lstm_886/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_886/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_886/transpose_1	Transpose4lstm_886/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_886/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_886/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_887/ShapeShapelstm_886/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_887/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_887/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_887/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_887/strided_sliceStridedSlicelstm_887/Shape:output:0%lstm_887/strided_slice/stack:output:0'lstm_887/strided_slice/stack_1:output:0'lstm_887/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_887/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_887/zeros/packedPacklstm_887/strided_slice:output:0 lstm_887/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_887/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_887/zerosFilllstm_887/zeros/packed:output:0lstm_887/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_887/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_887/zeros_1/packedPacklstm_887/strided_slice:output:0"lstm_887/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_887/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_887/zeros_1Fill lstm_887/zeros_1/packed:output:0lstm_887/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_887/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_887/transpose	Transposelstm_886/transpose_1:y:0 lstm_887/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_887/Shape_1Shapelstm_887/transpose:y:0*
T0*
_output_shapes
:h
lstm_887/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_887/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_887/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_887/strided_slice_1StridedSlicelstm_887/Shape_1:output:0'lstm_887/strided_slice_1/stack:output:0)lstm_887/strided_slice_1/stack_1:output:0)lstm_887/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_887/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_887/TensorArrayV2TensorListReserve-lstm_887/TensorArrayV2/element_shape:output:0!lstm_887/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_887/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_887/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_887/transpose:y:0Glstm_887/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_887/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_887/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_887/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_887/strided_slice_2StridedSlicelstm_887/transpose:y:0'lstm_887/strided_slice_2/stack:output:0)lstm_887/strided_slice_2/stack_1:output:0)lstm_887/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_887/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp5lstm_887_lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_887/lstm_cell_767/MatMulMatMul!lstm_887/strided_slice_2:output:04lstm_887/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_887/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp7lstm_887_lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_887/lstm_cell_767/MatMul_1MatMullstm_887/zeros:output:06lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_887/lstm_cell_767/addAddV2'lstm_887/lstm_cell_767/MatMul:product:0)lstm_887/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_887/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp6lstm_887_lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_887/lstm_cell_767/BiasAddBiasAddlstm_887/lstm_cell_767/add:z:05lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_887/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_887/lstm_cell_767/splitSplit/lstm_887/lstm_cell_767/split/split_dim:output:0'lstm_887/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_887/lstm_cell_767/SigmoidSigmoid%lstm_887/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_887/lstm_cell_767/Sigmoid_1Sigmoid%lstm_887/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_887/lstm_cell_767/mulMul$lstm_887/lstm_cell_767/Sigmoid_1:y:0lstm_887/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_887/lstm_cell_767/ReluRelu%lstm_887/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_887/lstm_cell_767/mul_1Mul"lstm_887/lstm_cell_767/Sigmoid:y:0)lstm_887/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_887/lstm_cell_767/add_1AddV2lstm_887/lstm_cell_767/mul:z:0 lstm_887/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_887/lstm_cell_767/Sigmoid_2Sigmoid%lstm_887/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_887/lstm_cell_767/Relu_1Relu lstm_887/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_887/lstm_cell_767/mul_2Mul$lstm_887/lstm_cell_767/Sigmoid_2:y:0+lstm_887/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_887/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_887/TensorArrayV2_1TensorListReserve/lstm_887/TensorArrayV2_1/element_shape:output:0!lstm_887/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_887/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_887/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_887/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_887/whileWhile$lstm_887/while/loop_counter:output:0*lstm_887/while/maximum_iterations:output:0lstm_887/time:output:0!lstm_887/TensorArrayV2_1:handle:0lstm_887/zeros:output:0lstm_887/zeros_1:output:0!lstm_887/strided_slice_1:output:0@lstm_887/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_887_lstm_cell_767_matmul_readvariableop_resource7lstm_887_lstm_cell_767_matmul_1_readvariableop_resource6lstm_887_lstm_cell_767_biasadd_readvariableop_resource*
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
lstm_887_while_body_4641804*'
condR
lstm_887_while_cond_4641803*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_887/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_887/TensorArrayV2Stack/TensorListStackTensorListStacklstm_887/while:output:3Blstm_887/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_887/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_887/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_887/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_887/strided_slice_3StridedSlice4lstm_887/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_887/strided_slice_3/stack:output:0)lstm_887/strided_slice_3/stack_1:output:0)lstm_887/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_887/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_887/transpose_1	Transpose4lstm_887/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_887/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_887/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_295/MatMul/ReadVariableOpReadVariableOp(dense_295_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_295/MatMulMatMul!lstm_887/strided_slice_3:output:0'dense_295/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_295/BiasAdd/ReadVariableOpReadVariableOp)dense_295_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_295/BiasAddBiasAdddense_295/MatMul:product:0(dense_295/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_295/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_295/BiasAdd/ReadVariableOp ^dense_295/MatMul/ReadVariableOp.^lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp-^lstm_885/lstm_cell_765/MatMul/ReadVariableOp/^lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp^lstm_885/while.^lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp-^lstm_886/lstm_cell_766/MatMul/ReadVariableOp/^lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp^lstm_886/while.^lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp-^lstm_887/lstm_cell_767/MatMul/ReadVariableOp/^lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp^lstm_887/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_295/BiasAdd/ReadVariableOp dense_295/BiasAdd/ReadVariableOp2B
dense_295/MatMul/ReadVariableOpdense_295/MatMul/ReadVariableOp2^
-lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp-lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp2\
,lstm_885/lstm_cell_765/MatMul/ReadVariableOp,lstm_885/lstm_cell_765/MatMul/ReadVariableOp2`
.lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp.lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp2 
lstm_885/whilelstm_885/while2^
-lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp-lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp2\
,lstm_886/lstm_cell_766/MatMul/ReadVariableOp,lstm_886/lstm_cell_766/MatMul/ReadVariableOp2`
.lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp.lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp2 
lstm_886/whilelstm_886/while2^
-lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp-lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp2\
,lstm_887/lstm_cell_767/MatMul/ReadVariableOp,lstm_887/lstm_cell_767/MatMul/ReadVariableOp2`
.lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp.lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp2 
lstm_887/whilelstm_887/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4642425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4642425___redundant_placeholder05
1while_while_cond_4642425___redundant_placeholder15
1while_while_cond_4642425___redundant_placeholder25
1while_while_cond_4642425___redundant_placeholder3
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
*sequential_295_lstm_887_while_cond_4638635L
Hsequential_295_lstm_887_while_sequential_295_lstm_887_while_loop_counterR
Nsequential_295_lstm_887_while_sequential_295_lstm_887_while_maximum_iterations-
)sequential_295_lstm_887_while_placeholder/
+sequential_295_lstm_887_while_placeholder_1/
+sequential_295_lstm_887_while_placeholder_2/
+sequential_295_lstm_887_while_placeholder_3N
Jsequential_295_lstm_887_while_less_sequential_295_lstm_887_strided_slice_1e
asequential_295_lstm_887_while_sequential_295_lstm_887_while_cond_4638635___redundant_placeholder0e
asequential_295_lstm_887_while_sequential_295_lstm_887_while_cond_4638635___redundant_placeholder1e
asequential_295_lstm_887_while_sequential_295_lstm_887_while_cond_4638635___redundant_placeholder2e
asequential_295_lstm_887_while_sequential_295_lstm_887_while_cond_4638635___redundant_placeholder3*
&sequential_295_lstm_887_while_identity
?
"sequential_295/lstm_887/while/LessLess)sequential_295_lstm_887_while_placeholderJsequential_295_lstm_887_while_less_sequential_295_lstm_887_strided_slice_1*
T0*
_output_shapes
: {
&sequential_295/lstm_887/while/IdentityIdentity&sequential_295/lstm_887/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_295_lstm_887_while_identity/sequential_295/lstm_887/while/Identity:output:0*(
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
*__inference_lstm_885_layer_call_fn_4641905
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4638876|
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
*__inference_lstm_885_layer_call_fn_4641916
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4639067|
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4643957

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
*__inference_lstm_887_layer_call_fn_4643148
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4639767o
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
?
?
+__inference_dense_295_layer_call_fn_4643751

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
F__inference_dense_295_layer_call_and_return_conditional_losses_4640243o
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
?
while_cond_4638806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4638806___redundant_placeholder05
1while_while_cond_4638806___redundant_placeholder15
1while_while_cond_4638806___redundant_placeholder25
1while_while_cond_4638806___redundant_placeholder3
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
lstm_885_while_cond_4641525.
*lstm_885_while_lstm_885_while_loop_counter4
0lstm_885_while_lstm_885_while_maximum_iterations
lstm_885_while_placeholder 
lstm_885_while_placeholder_1 
lstm_885_while_placeholder_2 
lstm_885_while_placeholder_30
,lstm_885_while_less_lstm_885_strided_slice_1G
Clstm_885_while_lstm_885_while_cond_4641525___redundant_placeholder0G
Clstm_885_while_lstm_885_while_cond_4641525___redundant_placeholder1G
Clstm_885_while_lstm_885_while_cond_4641525___redundant_placeholder2G
Clstm_885_while_lstm_885_while_cond_4641525___redundant_placeholder3
lstm_885_while_identity
?
lstm_885/while/LessLesslstm_885_while_placeholder,lstm_885_while_less_lstm_885_strided_slice_1*
T0*
_output_shapes
: ]
lstm_885/while/IdentityIdentitylstm_885/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_885_while_identity lstm_885/while/Identity:output:0*(
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
while_cond_4643228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4643228___redundant_placeholder05
1while_while_cond_4643228___redundant_placeholder15
1while_while_cond_4643228___redundant_placeholder25
1while_while_cond_4643228___redundant_placeholder3
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
/__inference_lstm_cell_766_layer_call_fn_4643876

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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4639143o
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4639417

inputs(
lstm_cell_766_4639335:	d?(
lstm_cell_766_4639337:	2?$
lstm_cell_766_4639339:	?
identity??%lstm_cell_766/StatefulPartitionedCall?while;
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
%lstm_cell_766/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_766_4639335lstm_cell_766_4639337lstm_cell_766_4639339*
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4639289n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_766_4639335lstm_cell_766_4639337lstm_cell_766_4639339*
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
while_body_4639348*
condR
while_cond_4639347*K
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
NoOpNoOp&^lstm_cell_766/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_766/StatefulPartitionedCall%lstm_cell_766/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_886_layer_call_fn_4642521
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4639226|
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
while_cond_4642898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4642898___redundant_placeholder05
1while_while_cond_4642898___redundant_placeholder15
1while_while_cond_4642898___redundant_placeholder25
1while_while_cond_4642898___redundant_placeholder3
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
0__inference_sequential_295_layer_call_fn_4641040

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
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640839o
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
while_body_4641997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4638726
lstm_885_inputW
Dsequential_295_lstm_885_lstm_cell_765_matmul_readvariableop_resource:	?Y
Fsequential_295_lstm_885_lstm_cell_765_matmul_1_readvariableop_resource:	d?T
Esequential_295_lstm_885_lstm_cell_765_biasadd_readvariableop_resource:	?W
Dsequential_295_lstm_886_lstm_cell_766_matmul_readvariableop_resource:	d?Y
Fsequential_295_lstm_886_lstm_cell_766_matmul_1_readvariableop_resource:	2?T
Esequential_295_lstm_886_lstm_cell_766_biasadd_readvariableop_resource:	?V
Dsequential_295_lstm_887_lstm_cell_767_matmul_readvariableop_resource:2(X
Fsequential_295_lstm_887_lstm_cell_767_matmul_1_readvariableop_resource:
(S
Esequential_295_lstm_887_lstm_cell_767_biasadd_readvariableop_resource:(I
7sequential_295_dense_295_matmul_readvariableop_resource:
F
8sequential_295_dense_295_biasadd_readvariableop_resource:
identity??/sequential_295/dense_295/BiasAdd/ReadVariableOp?.sequential_295/dense_295/MatMul/ReadVariableOp?<sequential_295/lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp?;sequential_295/lstm_885/lstm_cell_765/MatMul/ReadVariableOp?=sequential_295/lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp?sequential_295/lstm_885/while?<sequential_295/lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp?;sequential_295/lstm_886/lstm_cell_766/MatMul/ReadVariableOp?=sequential_295/lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp?sequential_295/lstm_886/while?<sequential_295/lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp?;sequential_295/lstm_887/lstm_cell_767/MatMul/ReadVariableOp?=sequential_295/lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp?sequential_295/lstm_887/while[
sequential_295/lstm_885/ShapeShapelstm_885_input*
T0*
_output_shapes
:u
+sequential_295/lstm_885/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_295/lstm_885/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_295/lstm_885/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_295/lstm_885/strided_sliceStridedSlice&sequential_295/lstm_885/Shape:output:04sequential_295/lstm_885/strided_slice/stack:output:06sequential_295/lstm_885/strided_slice/stack_1:output:06sequential_295/lstm_885/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_295/lstm_885/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_295/lstm_885/zeros/packedPack.sequential_295/lstm_885/strided_slice:output:0/sequential_295/lstm_885/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_295/lstm_885/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_295/lstm_885/zerosFill-sequential_295/lstm_885/zeros/packed:output:0,sequential_295/lstm_885/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_295/lstm_885/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_295/lstm_885/zeros_1/packedPack.sequential_295/lstm_885/strided_slice:output:01sequential_295/lstm_885/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_295/lstm_885/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_295/lstm_885/zeros_1Fill/sequential_295/lstm_885/zeros_1/packed:output:0.sequential_295/lstm_885/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_295/lstm_885/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_295/lstm_885/transpose	Transposelstm_885_input/sequential_295/lstm_885/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_295/lstm_885/Shape_1Shape%sequential_295/lstm_885/transpose:y:0*
T0*
_output_shapes
:w
-sequential_295/lstm_885/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_295/lstm_885/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_295/lstm_885/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_295/lstm_885/strided_slice_1StridedSlice(sequential_295/lstm_885/Shape_1:output:06sequential_295/lstm_885/strided_slice_1/stack:output:08sequential_295/lstm_885/strided_slice_1/stack_1:output:08sequential_295/lstm_885/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_295/lstm_885/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_295/lstm_885/TensorArrayV2TensorListReserve<sequential_295/lstm_885/TensorArrayV2/element_shape:output:00sequential_295/lstm_885/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_295/lstm_885/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_295/lstm_885/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_295/lstm_885/transpose:y:0Vsequential_295/lstm_885/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_295/lstm_885/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_295/lstm_885/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_295/lstm_885/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_295/lstm_885/strided_slice_2StridedSlice%sequential_295/lstm_885/transpose:y:06sequential_295/lstm_885/strided_slice_2/stack:output:08sequential_295/lstm_885/strided_slice_2/stack_1:output:08sequential_295/lstm_885/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_295/lstm_885/lstm_cell_765/MatMul/ReadVariableOpReadVariableOpDsequential_295_lstm_885_lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_295/lstm_885/lstm_cell_765/MatMulMatMul0sequential_295/lstm_885/strided_slice_2:output:0Csequential_295/lstm_885/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_295/lstm_885/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOpFsequential_295_lstm_885_lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_295/lstm_885/lstm_cell_765/MatMul_1MatMul&sequential_295/lstm_885/zeros:output:0Esequential_295/lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_295/lstm_885/lstm_cell_765/addAddV26sequential_295/lstm_885/lstm_cell_765/MatMul:product:08sequential_295/lstm_885/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_295/lstm_885/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOpEsequential_295_lstm_885_lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_295/lstm_885/lstm_cell_765/BiasAddBiasAdd-sequential_295/lstm_885/lstm_cell_765/add:z:0Dsequential_295/lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_295/lstm_885/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_295/lstm_885/lstm_cell_765/splitSplit>sequential_295/lstm_885/lstm_cell_765/split/split_dim:output:06sequential_295/lstm_885/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_295/lstm_885/lstm_cell_765/SigmoidSigmoid4sequential_295/lstm_885/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_295/lstm_885/lstm_cell_765/Sigmoid_1Sigmoid4sequential_295/lstm_885/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_295/lstm_885/lstm_cell_765/mulMul3sequential_295/lstm_885/lstm_cell_765/Sigmoid_1:y:0(sequential_295/lstm_885/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_295/lstm_885/lstm_cell_765/ReluRelu4sequential_295/lstm_885/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_295/lstm_885/lstm_cell_765/mul_1Mul1sequential_295/lstm_885/lstm_cell_765/Sigmoid:y:08sequential_295/lstm_885/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_295/lstm_885/lstm_cell_765/add_1AddV2-sequential_295/lstm_885/lstm_cell_765/mul:z:0/sequential_295/lstm_885/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_295/lstm_885/lstm_cell_765/Sigmoid_2Sigmoid4sequential_295/lstm_885/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_295/lstm_885/lstm_cell_765/Relu_1Relu/sequential_295/lstm_885/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_295/lstm_885/lstm_cell_765/mul_2Mul3sequential_295/lstm_885/lstm_cell_765/Sigmoid_2:y:0:sequential_295/lstm_885/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_295/lstm_885/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_295/lstm_885/TensorArrayV2_1TensorListReserve>sequential_295/lstm_885/TensorArrayV2_1/element_shape:output:00sequential_295/lstm_885/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_295/lstm_885/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_295/lstm_885/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_295/lstm_885/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_295/lstm_885/whileWhile3sequential_295/lstm_885/while/loop_counter:output:09sequential_295/lstm_885/while/maximum_iterations:output:0%sequential_295/lstm_885/time:output:00sequential_295/lstm_885/TensorArrayV2_1:handle:0&sequential_295/lstm_885/zeros:output:0(sequential_295/lstm_885/zeros_1:output:00sequential_295/lstm_885/strided_slice_1:output:0Osequential_295/lstm_885/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_295_lstm_885_lstm_cell_765_matmul_readvariableop_resourceFsequential_295_lstm_885_lstm_cell_765_matmul_1_readvariableop_resourceEsequential_295_lstm_885_lstm_cell_765_biasadd_readvariableop_resource*
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
*sequential_295_lstm_885_while_body_4638358*6
cond.R,
*sequential_295_lstm_885_while_cond_4638357*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_295/lstm_885/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_295/lstm_885/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_295/lstm_885/while:output:3Qsequential_295/lstm_885/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_295/lstm_885/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_295/lstm_885/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_295/lstm_885/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_295/lstm_885/strided_slice_3StridedSliceCsequential_295/lstm_885/TensorArrayV2Stack/TensorListStack:tensor:06sequential_295/lstm_885/strided_slice_3/stack:output:08sequential_295/lstm_885/strided_slice_3/stack_1:output:08sequential_295/lstm_885/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_295/lstm_885/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_295/lstm_885/transpose_1	TransposeCsequential_295/lstm_885/TensorArrayV2Stack/TensorListStack:tensor:01sequential_295/lstm_885/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_295/lstm_885/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_295/lstm_886/ShapeShape'sequential_295/lstm_885/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_295/lstm_886/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_295/lstm_886/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_295/lstm_886/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_295/lstm_886/strided_sliceStridedSlice&sequential_295/lstm_886/Shape:output:04sequential_295/lstm_886/strided_slice/stack:output:06sequential_295/lstm_886/strided_slice/stack_1:output:06sequential_295/lstm_886/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_295/lstm_886/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_295/lstm_886/zeros/packedPack.sequential_295/lstm_886/strided_slice:output:0/sequential_295/lstm_886/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_295/lstm_886/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_295/lstm_886/zerosFill-sequential_295/lstm_886/zeros/packed:output:0,sequential_295/lstm_886/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_295/lstm_886/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_295/lstm_886/zeros_1/packedPack.sequential_295/lstm_886/strided_slice:output:01sequential_295/lstm_886/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_295/lstm_886/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_295/lstm_886/zeros_1Fill/sequential_295/lstm_886/zeros_1/packed:output:0.sequential_295/lstm_886/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_295/lstm_886/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_295/lstm_886/transpose	Transpose'sequential_295/lstm_885/transpose_1:y:0/sequential_295/lstm_886/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_295/lstm_886/Shape_1Shape%sequential_295/lstm_886/transpose:y:0*
T0*
_output_shapes
:w
-sequential_295/lstm_886/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_295/lstm_886/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_295/lstm_886/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_295/lstm_886/strided_slice_1StridedSlice(sequential_295/lstm_886/Shape_1:output:06sequential_295/lstm_886/strided_slice_1/stack:output:08sequential_295/lstm_886/strided_slice_1/stack_1:output:08sequential_295/lstm_886/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_295/lstm_886/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_295/lstm_886/TensorArrayV2TensorListReserve<sequential_295/lstm_886/TensorArrayV2/element_shape:output:00sequential_295/lstm_886/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_295/lstm_886/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_295/lstm_886/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_295/lstm_886/transpose:y:0Vsequential_295/lstm_886/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_295/lstm_886/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_295/lstm_886/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_295/lstm_886/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_295/lstm_886/strided_slice_2StridedSlice%sequential_295/lstm_886/transpose:y:06sequential_295/lstm_886/strided_slice_2/stack:output:08sequential_295/lstm_886/strided_slice_2/stack_1:output:08sequential_295/lstm_886/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_295/lstm_886/lstm_cell_766/MatMul/ReadVariableOpReadVariableOpDsequential_295_lstm_886_lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_295/lstm_886/lstm_cell_766/MatMulMatMul0sequential_295/lstm_886/strided_slice_2:output:0Csequential_295/lstm_886/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_295/lstm_886/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOpFsequential_295_lstm_886_lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_295/lstm_886/lstm_cell_766/MatMul_1MatMul&sequential_295/lstm_886/zeros:output:0Esequential_295/lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_295/lstm_886/lstm_cell_766/addAddV26sequential_295/lstm_886/lstm_cell_766/MatMul:product:08sequential_295/lstm_886/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_295/lstm_886/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOpEsequential_295_lstm_886_lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_295/lstm_886/lstm_cell_766/BiasAddBiasAdd-sequential_295/lstm_886/lstm_cell_766/add:z:0Dsequential_295/lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_295/lstm_886/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_295/lstm_886/lstm_cell_766/splitSplit>sequential_295/lstm_886/lstm_cell_766/split/split_dim:output:06sequential_295/lstm_886/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_295/lstm_886/lstm_cell_766/SigmoidSigmoid4sequential_295/lstm_886/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_295/lstm_886/lstm_cell_766/Sigmoid_1Sigmoid4sequential_295/lstm_886/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_295/lstm_886/lstm_cell_766/mulMul3sequential_295/lstm_886/lstm_cell_766/Sigmoid_1:y:0(sequential_295/lstm_886/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_295/lstm_886/lstm_cell_766/ReluRelu4sequential_295/lstm_886/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_295/lstm_886/lstm_cell_766/mul_1Mul1sequential_295/lstm_886/lstm_cell_766/Sigmoid:y:08sequential_295/lstm_886/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_295/lstm_886/lstm_cell_766/add_1AddV2-sequential_295/lstm_886/lstm_cell_766/mul:z:0/sequential_295/lstm_886/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_295/lstm_886/lstm_cell_766/Sigmoid_2Sigmoid4sequential_295/lstm_886/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_295/lstm_886/lstm_cell_766/Relu_1Relu/sequential_295/lstm_886/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_295/lstm_886/lstm_cell_766/mul_2Mul3sequential_295/lstm_886/lstm_cell_766/Sigmoid_2:y:0:sequential_295/lstm_886/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_295/lstm_886/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_295/lstm_886/TensorArrayV2_1TensorListReserve>sequential_295/lstm_886/TensorArrayV2_1/element_shape:output:00sequential_295/lstm_886/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_295/lstm_886/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_295/lstm_886/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_295/lstm_886/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_295/lstm_886/whileWhile3sequential_295/lstm_886/while/loop_counter:output:09sequential_295/lstm_886/while/maximum_iterations:output:0%sequential_295/lstm_886/time:output:00sequential_295/lstm_886/TensorArrayV2_1:handle:0&sequential_295/lstm_886/zeros:output:0(sequential_295/lstm_886/zeros_1:output:00sequential_295/lstm_886/strided_slice_1:output:0Osequential_295/lstm_886/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_295_lstm_886_lstm_cell_766_matmul_readvariableop_resourceFsequential_295_lstm_886_lstm_cell_766_matmul_1_readvariableop_resourceEsequential_295_lstm_886_lstm_cell_766_biasadd_readvariableop_resource*
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
*sequential_295_lstm_886_while_body_4638497*6
cond.R,
*sequential_295_lstm_886_while_cond_4638496*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_295/lstm_886/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_295/lstm_886/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_295/lstm_886/while:output:3Qsequential_295/lstm_886/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_295/lstm_886/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_295/lstm_886/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_295/lstm_886/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_295/lstm_886/strided_slice_3StridedSliceCsequential_295/lstm_886/TensorArrayV2Stack/TensorListStack:tensor:06sequential_295/lstm_886/strided_slice_3/stack:output:08sequential_295/lstm_886/strided_slice_3/stack_1:output:08sequential_295/lstm_886/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_295/lstm_886/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_295/lstm_886/transpose_1	TransposeCsequential_295/lstm_886/TensorArrayV2Stack/TensorListStack:tensor:01sequential_295/lstm_886/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_295/lstm_886/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_295/lstm_887/ShapeShape'sequential_295/lstm_886/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_295/lstm_887/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_295/lstm_887/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_295/lstm_887/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_295/lstm_887/strided_sliceStridedSlice&sequential_295/lstm_887/Shape:output:04sequential_295/lstm_887/strided_slice/stack:output:06sequential_295/lstm_887/strided_slice/stack_1:output:06sequential_295/lstm_887/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_295/lstm_887/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_295/lstm_887/zeros/packedPack.sequential_295/lstm_887/strided_slice:output:0/sequential_295/lstm_887/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_295/lstm_887/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_295/lstm_887/zerosFill-sequential_295/lstm_887/zeros/packed:output:0,sequential_295/lstm_887/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_295/lstm_887/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_295/lstm_887/zeros_1/packedPack.sequential_295/lstm_887/strided_slice:output:01sequential_295/lstm_887/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_295/lstm_887/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_295/lstm_887/zeros_1Fill/sequential_295/lstm_887/zeros_1/packed:output:0.sequential_295/lstm_887/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_295/lstm_887/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_295/lstm_887/transpose	Transpose'sequential_295/lstm_886/transpose_1:y:0/sequential_295/lstm_887/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_295/lstm_887/Shape_1Shape%sequential_295/lstm_887/transpose:y:0*
T0*
_output_shapes
:w
-sequential_295/lstm_887/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_295/lstm_887/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_295/lstm_887/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_295/lstm_887/strided_slice_1StridedSlice(sequential_295/lstm_887/Shape_1:output:06sequential_295/lstm_887/strided_slice_1/stack:output:08sequential_295/lstm_887/strided_slice_1/stack_1:output:08sequential_295/lstm_887/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_295/lstm_887/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_295/lstm_887/TensorArrayV2TensorListReserve<sequential_295/lstm_887/TensorArrayV2/element_shape:output:00sequential_295/lstm_887/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_295/lstm_887/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_295/lstm_887/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_295/lstm_887/transpose:y:0Vsequential_295/lstm_887/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_295/lstm_887/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_295/lstm_887/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_295/lstm_887/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_295/lstm_887/strided_slice_2StridedSlice%sequential_295/lstm_887/transpose:y:06sequential_295/lstm_887/strided_slice_2/stack:output:08sequential_295/lstm_887/strided_slice_2/stack_1:output:08sequential_295/lstm_887/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_295/lstm_887/lstm_cell_767/MatMul/ReadVariableOpReadVariableOpDsequential_295_lstm_887_lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_295/lstm_887/lstm_cell_767/MatMulMatMul0sequential_295/lstm_887/strided_slice_2:output:0Csequential_295/lstm_887/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_295/lstm_887/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOpFsequential_295_lstm_887_lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_295/lstm_887/lstm_cell_767/MatMul_1MatMul&sequential_295/lstm_887/zeros:output:0Esequential_295/lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_295/lstm_887/lstm_cell_767/addAddV26sequential_295/lstm_887/lstm_cell_767/MatMul:product:08sequential_295/lstm_887/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_295/lstm_887/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOpEsequential_295_lstm_887_lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_295/lstm_887/lstm_cell_767/BiasAddBiasAdd-sequential_295/lstm_887/lstm_cell_767/add:z:0Dsequential_295/lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_295/lstm_887/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_295/lstm_887/lstm_cell_767/splitSplit>sequential_295/lstm_887/lstm_cell_767/split/split_dim:output:06sequential_295/lstm_887/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_295/lstm_887/lstm_cell_767/SigmoidSigmoid4sequential_295/lstm_887/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_295/lstm_887/lstm_cell_767/Sigmoid_1Sigmoid4sequential_295/lstm_887/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_295/lstm_887/lstm_cell_767/mulMul3sequential_295/lstm_887/lstm_cell_767/Sigmoid_1:y:0(sequential_295/lstm_887/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_295/lstm_887/lstm_cell_767/ReluRelu4sequential_295/lstm_887/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_295/lstm_887/lstm_cell_767/mul_1Mul1sequential_295/lstm_887/lstm_cell_767/Sigmoid:y:08sequential_295/lstm_887/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_295/lstm_887/lstm_cell_767/add_1AddV2-sequential_295/lstm_887/lstm_cell_767/mul:z:0/sequential_295/lstm_887/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_295/lstm_887/lstm_cell_767/Sigmoid_2Sigmoid4sequential_295/lstm_887/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_295/lstm_887/lstm_cell_767/Relu_1Relu/sequential_295/lstm_887/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_295/lstm_887/lstm_cell_767/mul_2Mul3sequential_295/lstm_887/lstm_cell_767/Sigmoid_2:y:0:sequential_295/lstm_887/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_295/lstm_887/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_295/lstm_887/TensorArrayV2_1TensorListReserve>sequential_295/lstm_887/TensorArrayV2_1/element_shape:output:00sequential_295/lstm_887/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_295/lstm_887/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_295/lstm_887/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_295/lstm_887/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_295/lstm_887/whileWhile3sequential_295/lstm_887/while/loop_counter:output:09sequential_295/lstm_887/while/maximum_iterations:output:0%sequential_295/lstm_887/time:output:00sequential_295/lstm_887/TensorArrayV2_1:handle:0&sequential_295/lstm_887/zeros:output:0(sequential_295/lstm_887/zeros_1:output:00sequential_295/lstm_887/strided_slice_1:output:0Osequential_295/lstm_887/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_295_lstm_887_lstm_cell_767_matmul_readvariableop_resourceFsequential_295_lstm_887_lstm_cell_767_matmul_1_readvariableop_resourceEsequential_295_lstm_887_lstm_cell_767_biasadd_readvariableop_resource*
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
*sequential_295_lstm_887_while_body_4638636*6
cond.R,
*sequential_295_lstm_887_while_cond_4638635*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_295/lstm_887/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_295/lstm_887/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_295/lstm_887/while:output:3Qsequential_295/lstm_887/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_295/lstm_887/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_295/lstm_887/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_295/lstm_887/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_295/lstm_887/strided_slice_3StridedSliceCsequential_295/lstm_887/TensorArrayV2Stack/TensorListStack:tensor:06sequential_295/lstm_887/strided_slice_3/stack:output:08sequential_295/lstm_887/strided_slice_3/stack_1:output:08sequential_295/lstm_887/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_295/lstm_887/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_295/lstm_887/transpose_1	TransposeCsequential_295/lstm_887/TensorArrayV2Stack/TensorListStack:tensor:01sequential_295/lstm_887/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_295/lstm_887/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_295/dense_295/MatMul/ReadVariableOpReadVariableOp7sequential_295_dense_295_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_295/dense_295/MatMulMatMul0sequential_295/lstm_887/strided_slice_3:output:06sequential_295/dense_295/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_295/dense_295/BiasAdd/ReadVariableOpReadVariableOp8sequential_295_dense_295_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_295/dense_295/BiasAddBiasAdd)sequential_295/dense_295/MatMul:product:07sequential_295/dense_295/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_295/dense_295/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_295/dense_295/BiasAdd/ReadVariableOp/^sequential_295/dense_295/MatMul/ReadVariableOp=^sequential_295/lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp<^sequential_295/lstm_885/lstm_cell_765/MatMul/ReadVariableOp>^sequential_295/lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp^sequential_295/lstm_885/while=^sequential_295/lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp<^sequential_295/lstm_886/lstm_cell_766/MatMul/ReadVariableOp>^sequential_295/lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp^sequential_295/lstm_886/while=^sequential_295/lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp<^sequential_295/lstm_887/lstm_cell_767/MatMul/ReadVariableOp>^sequential_295/lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp^sequential_295/lstm_887/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_295/dense_295/BiasAdd/ReadVariableOp/sequential_295/dense_295/BiasAdd/ReadVariableOp2`
.sequential_295/dense_295/MatMul/ReadVariableOp.sequential_295/dense_295/MatMul/ReadVariableOp2|
<sequential_295/lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp<sequential_295/lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp2z
;sequential_295/lstm_885/lstm_cell_765/MatMul/ReadVariableOp;sequential_295/lstm_885/lstm_cell_765/MatMul/ReadVariableOp2~
=sequential_295/lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp=sequential_295/lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp2>
sequential_295/lstm_885/whilesequential_295/lstm_885/while2|
<sequential_295/lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp<sequential_295/lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp2z
;sequential_295/lstm_886/lstm_cell_766/MatMul/ReadVariableOp;sequential_295/lstm_886/lstm_cell_766/MatMul/ReadVariableOp2~
=sequential_295/lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp=sequential_295/lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp2>
sequential_295/lstm_886/whilesequential_295/lstm_886/while2|
<sequential_295/lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp<sequential_295/lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp2z
;sequential_295/lstm_887/lstm_cell_767/MatMul/ReadVariableOp;sequential_295/lstm_887/lstm_cell_767/MatMul/ReadVariableOp2~
=sequential_295/lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp=sequential_295/lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp2>
sequential_295/lstm_887/whilesequential_295/lstm_887/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_885_input
?W
?
 __inference__traced_save_4644198
file_prefix/
+savev2_dense_295_kernel_read_readvariableop-
)savev2_dense_295_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_885_lstm_cell_885_kernel_read_readvariableopF
Bsavev2_lstm_885_lstm_cell_885_recurrent_kernel_read_readvariableop:
6savev2_lstm_885_lstm_cell_885_bias_read_readvariableop<
8savev2_lstm_886_lstm_cell_886_kernel_read_readvariableopF
Bsavev2_lstm_886_lstm_cell_886_recurrent_kernel_read_readvariableop:
6savev2_lstm_886_lstm_cell_886_bias_read_readvariableop<
8savev2_lstm_887_lstm_cell_887_kernel_read_readvariableopF
Bsavev2_lstm_887_lstm_cell_887_recurrent_kernel_read_readvariableop:
6savev2_lstm_887_lstm_cell_887_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_295_kernel_m_read_readvariableop4
0savev2_adam_dense_295_bias_m_read_readvariableopC
?savev2_adam_lstm_885_lstm_cell_885_kernel_m_read_readvariableopM
Isavev2_adam_lstm_885_lstm_cell_885_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_885_lstm_cell_885_bias_m_read_readvariableopC
?savev2_adam_lstm_886_lstm_cell_886_kernel_m_read_readvariableopM
Isavev2_adam_lstm_886_lstm_cell_886_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_886_lstm_cell_886_bias_m_read_readvariableopC
?savev2_adam_lstm_887_lstm_cell_887_kernel_m_read_readvariableopM
Isavev2_adam_lstm_887_lstm_cell_887_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_887_lstm_cell_887_bias_m_read_readvariableop6
2savev2_adam_dense_295_kernel_v_read_readvariableop4
0savev2_adam_dense_295_bias_v_read_readvariableopC
?savev2_adam_lstm_885_lstm_cell_885_kernel_v_read_readvariableopM
Isavev2_adam_lstm_885_lstm_cell_885_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_885_lstm_cell_885_bias_v_read_readvariableopC
?savev2_adam_lstm_886_lstm_cell_886_kernel_v_read_readvariableopM
Isavev2_adam_lstm_886_lstm_cell_886_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_886_lstm_cell_886_bias_v_read_readvariableopC
?savev2_adam_lstm_887_lstm_cell_887_kernel_v_read_readvariableopM
Isavev2_adam_lstm_887_lstm_cell_887_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_887_lstm_cell_887_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_295_kernel_read_readvariableop)savev2_dense_295_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_885_lstm_cell_885_kernel_read_readvariableopBsavev2_lstm_885_lstm_cell_885_recurrent_kernel_read_readvariableop6savev2_lstm_885_lstm_cell_885_bias_read_readvariableop8savev2_lstm_886_lstm_cell_886_kernel_read_readvariableopBsavev2_lstm_886_lstm_cell_886_recurrent_kernel_read_readvariableop6savev2_lstm_886_lstm_cell_886_bias_read_readvariableop8savev2_lstm_887_lstm_cell_887_kernel_read_readvariableopBsavev2_lstm_887_lstm_cell_887_recurrent_kernel_read_readvariableop6savev2_lstm_887_lstm_cell_887_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_295_kernel_m_read_readvariableop0savev2_adam_dense_295_bias_m_read_readvariableop?savev2_adam_lstm_885_lstm_cell_885_kernel_m_read_readvariableopIsavev2_adam_lstm_885_lstm_cell_885_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_885_lstm_cell_885_bias_m_read_readvariableop?savev2_adam_lstm_886_lstm_cell_886_kernel_m_read_readvariableopIsavev2_adam_lstm_886_lstm_cell_886_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_886_lstm_cell_886_bias_m_read_readvariableop?savev2_adam_lstm_887_lstm_cell_887_kernel_m_read_readvariableopIsavev2_adam_lstm_887_lstm_cell_887_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_887_lstm_cell_887_bias_m_read_readvariableop2savev2_adam_dense_295_kernel_v_read_readvariableop0savev2_adam_dense_295_bias_v_read_readvariableop?savev2_adam_lstm_885_lstm_cell_885_kernel_v_read_readvariableopIsavev2_adam_lstm_885_lstm_cell_885_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_885_lstm_cell_885_bias_v_read_readvariableop?savev2_adam_lstm_886_lstm_cell_886_kernel_v_read_readvariableopIsavev2_adam_lstm_886_lstm_cell_886_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_886_lstm_cell_886_bias_v_read_readvariableop?savev2_adam_lstm_887_lstm_cell_887_kernel_v_read_readvariableopIsavev2_adam_lstm_887_lstm_cell_887_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_887_lstm_cell_887_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?K
?
E__inference_lstm_886_layer_call_and_return_conditional_losses_4642697
inputs_0?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4642613*
condR
while_cond_4642612*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4642140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_295_layer_call_fn_4641013

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
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640250o
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4640075

inputs?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4639991*
condR
while_cond_4639990*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4642613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4639348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_766_4639372_0:	d?0
while_lstm_cell_766_4639374_0:	2?,
while_lstm_cell_766_4639376_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_766_4639372:	d?.
while_lstm_cell_766_4639374:	2?*
while_lstm_cell_766_4639376:	???+while/lstm_cell_766/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_766/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_766_4639372_0while_lstm_cell_766_4639374_0while_lstm_cell_766_4639376_0*
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4639289?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_766/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_766/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_766/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_766/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_766_4639372while_lstm_cell_766_4639372_0"<
while_lstm_cell_766_4639374while_lstm_cell_766_4639374_0"<
while_lstm_cell_766_4639376while_lstm_cell_766_4639376_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_766/StatefulPartitionedCall+while/lstm_cell_766/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4642840
inputs_0?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4642756*
condR
while_cond_4642755*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4640521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4640521___redundant_placeholder05
1while_while_cond_4640521___redundant_placeholder15
1while_while_cond_4640521___redundant_placeholder25
1while_while_cond_4640521___redundant_placeholder3
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643313
inputs_0>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4643229*
condR
while_cond_4643228*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4640686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4640686___redundant_placeholder05
1while_while_cond_4640686___redundant_placeholder15
1while_while_cond_4640686___redundant_placeholder25
1while_while_cond_4640686___redundant_placeholder3
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
while_body_4639157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_766_4639181_0:	d?0
while_lstm_cell_766_4639183_0:	2?,
while_lstm_cell_766_4639185_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_766_4639181:	d?.
while_lstm_cell_766_4639183:	2?*
while_lstm_cell_766_4639185:	???+while/lstm_cell_766/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_766/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_766_4639181_0while_lstm_cell_766_4639183_0while_lstm_cell_766_4639185_0*
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4639143?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_766/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_766/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_766/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_766/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_766_4639181while_lstm_cell_766_4639181_0"<
while_lstm_cell_766_4639183while_lstm_cell_766_4639183_0"<
while_lstm_cell_766_4639185while_lstm_cell_766_4639185_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_766/StatefulPartitionedCall+while/lstm_cell_766/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4639990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4639990___redundant_placeholder05
1while_while_cond_4639990___redundant_placeholder15
1while_while_cond_4639990___redundant_placeholder25
1while_while_cond_4639990___redundant_placeholder3
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
while_cond_4642612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4642612___redundant_placeholder05
1while_while_cond_4642612___redundant_placeholder15
1while_while_cond_4642612___redundant_placeholder25
1while_while_cond_4642612___redundant_placeholder3
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
K__inference_sequential_295_layer_call_and_return_conditional_losses_4641467

inputsH
5lstm_885_lstm_cell_765_matmul_readvariableop_resource:	?J
7lstm_885_lstm_cell_765_matmul_1_readvariableop_resource:	d?E
6lstm_885_lstm_cell_765_biasadd_readvariableop_resource:	?H
5lstm_886_lstm_cell_766_matmul_readvariableop_resource:	d?J
7lstm_886_lstm_cell_766_matmul_1_readvariableop_resource:	2?E
6lstm_886_lstm_cell_766_biasadd_readvariableop_resource:	?G
5lstm_887_lstm_cell_767_matmul_readvariableop_resource:2(I
7lstm_887_lstm_cell_767_matmul_1_readvariableop_resource:
(D
6lstm_887_lstm_cell_767_biasadd_readvariableop_resource:(:
(dense_295_matmul_readvariableop_resource:
7
)dense_295_biasadd_readvariableop_resource:
identity?? dense_295/BiasAdd/ReadVariableOp?dense_295/MatMul/ReadVariableOp?-lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp?,lstm_885/lstm_cell_765/MatMul/ReadVariableOp?.lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp?lstm_885/while?-lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp?,lstm_886/lstm_cell_766/MatMul/ReadVariableOp?.lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp?lstm_886/while?-lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp?,lstm_887/lstm_cell_767/MatMul/ReadVariableOp?.lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp?lstm_887/whileD
lstm_885/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_885/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_885/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_885/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_885/strided_sliceStridedSlicelstm_885/Shape:output:0%lstm_885/strided_slice/stack:output:0'lstm_885/strided_slice/stack_1:output:0'lstm_885/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_885/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_885/zeros/packedPacklstm_885/strided_slice:output:0 lstm_885/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_885/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_885/zerosFilllstm_885/zeros/packed:output:0lstm_885/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_885/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_885/zeros_1/packedPacklstm_885/strided_slice:output:0"lstm_885/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_885/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_885/zeros_1Fill lstm_885/zeros_1/packed:output:0lstm_885/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_885/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_885/transpose	Transposeinputs lstm_885/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_885/Shape_1Shapelstm_885/transpose:y:0*
T0*
_output_shapes
:h
lstm_885/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_885/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_885/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_885/strided_slice_1StridedSlicelstm_885/Shape_1:output:0'lstm_885/strided_slice_1/stack:output:0)lstm_885/strided_slice_1/stack_1:output:0)lstm_885/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_885/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_885/TensorArrayV2TensorListReserve-lstm_885/TensorArrayV2/element_shape:output:0!lstm_885/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_885/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_885/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_885/transpose:y:0Glstm_885/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_885/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_885/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_885/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_885/strided_slice_2StridedSlicelstm_885/transpose:y:0'lstm_885/strided_slice_2/stack:output:0)lstm_885/strided_slice_2/stack_1:output:0)lstm_885/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_885/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp5lstm_885_lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_885/lstm_cell_765/MatMulMatMul!lstm_885/strided_slice_2:output:04lstm_885/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_885/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp7lstm_885_lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_885/lstm_cell_765/MatMul_1MatMullstm_885/zeros:output:06lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_885/lstm_cell_765/addAddV2'lstm_885/lstm_cell_765/MatMul:product:0)lstm_885/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_885/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp6lstm_885_lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_885/lstm_cell_765/BiasAddBiasAddlstm_885/lstm_cell_765/add:z:05lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_885/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_885/lstm_cell_765/splitSplit/lstm_885/lstm_cell_765/split/split_dim:output:0'lstm_885/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_885/lstm_cell_765/SigmoidSigmoid%lstm_885/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_885/lstm_cell_765/Sigmoid_1Sigmoid%lstm_885/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_885/lstm_cell_765/mulMul$lstm_885/lstm_cell_765/Sigmoid_1:y:0lstm_885/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_885/lstm_cell_765/ReluRelu%lstm_885/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_885/lstm_cell_765/mul_1Mul"lstm_885/lstm_cell_765/Sigmoid:y:0)lstm_885/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_885/lstm_cell_765/add_1AddV2lstm_885/lstm_cell_765/mul:z:0 lstm_885/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_885/lstm_cell_765/Sigmoid_2Sigmoid%lstm_885/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_885/lstm_cell_765/Relu_1Relu lstm_885/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_885/lstm_cell_765/mul_2Mul$lstm_885/lstm_cell_765/Sigmoid_2:y:0+lstm_885/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_885/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_885/TensorArrayV2_1TensorListReserve/lstm_885/TensorArrayV2_1/element_shape:output:0!lstm_885/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_885/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_885/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_885/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_885/whileWhile$lstm_885/while/loop_counter:output:0*lstm_885/while/maximum_iterations:output:0lstm_885/time:output:0!lstm_885/TensorArrayV2_1:handle:0lstm_885/zeros:output:0lstm_885/zeros_1:output:0!lstm_885/strided_slice_1:output:0@lstm_885/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_885_lstm_cell_765_matmul_readvariableop_resource7lstm_885_lstm_cell_765_matmul_1_readvariableop_resource6lstm_885_lstm_cell_765_biasadd_readvariableop_resource*
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
lstm_885_while_body_4641099*'
condR
lstm_885_while_cond_4641098*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_885/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_885/TensorArrayV2Stack/TensorListStackTensorListStacklstm_885/while:output:3Blstm_885/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_885/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_885/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_885/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_885/strided_slice_3StridedSlice4lstm_885/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_885/strided_slice_3/stack:output:0)lstm_885/strided_slice_3/stack_1:output:0)lstm_885/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_885/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_885/transpose_1	Transpose4lstm_885/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_885/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_885/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_886/ShapeShapelstm_885/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_886/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_886/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_886/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_886/strided_sliceStridedSlicelstm_886/Shape:output:0%lstm_886/strided_slice/stack:output:0'lstm_886/strided_slice/stack_1:output:0'lstm_886/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_886/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_886/zeros/packedPacklstm_886/strided_slice:output:0 lstm_886/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_886/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_886/zerosFilllstm_886/zeros/packed:output:0lstm_886/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_886/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_886/zeros_1/packedPacklstm_886/strided_slice:output:0"lstm_886/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_886/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_886/zeros_1Fill lstm_886/zeros_1/packed:output:0lstm_886/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_886/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_886/transpose	Transposelstm_885/transpose_1:y:0 lstm_886/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_886/Shape_1Shapelstm_886/transpose:y:0*
T0*
_output_shapes
:h
lstm_886/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_886/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_886/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_886/strided_slice_1StridedSlicelstm_886/Shape_1:output:0'lstm_886/strided_slice_1/stack:output:0)lstm_886/strided_slice_1/stack_1:output:0)lstm_886/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_886/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_886/TensorArrayV2TensorListReserve-lstm_886/TensorArrayV2/element_shape:output:0!lstm_886/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_886/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_886/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_886/transpose:y:0Glstm_886/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_886/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_886/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_886/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_886/strided_slice_2StridedSlicelstm_886/transpose:y:0'lstm_886/strided_slice_2/stack:output:0)lstm_886/strided_slice_2/stack_1:output:0)lstm_886/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_886/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp5lstm_886_lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_886/lstm_cell_766/MatMulMatMul!lstm_886/strided_slice_2:output:04lstm_886/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_886/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp7lstm_886_lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_886/lstm_cell_766/MatMul_1MatMullstm_886/zeros:output:06lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_886/lstm_cell_766/addAddV2'lstm_886/lstm_cell_766/MatMul:product:0)lstm_886/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_886/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp6lstm_886_lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_886/lstm_cell_766/BiasAddBiasAddlstm_886/lstm_cell_766/add:z:05lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_886/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_886/lstm_cell_766/splitSplit/lstm_886/lstm_cell_766/split/split_dim:output:0'lstm_886/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_886/lstm_cell_766/SigmoidSigmoid%lstm_886/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_886/lstm_cell_766/Sigmoid_1Sigmoid%lstm_886/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_886/lstm_cell_766/mulMul$lstm_886/lstm_cell_766/Sigmoid_1:y:0lstm_886/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_886/lstm_cell_766/ReluRelu%lstm_886/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_886/lstm_cell_766/mul_1Mul"lstm_886/lstm_cell_766/Sigmoid:y:0)lstm_886/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_886/lstm_cell_766/add_1AddV2lstm_886/lstm_cell_766/mul:z:0 lstm_886/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_886/lstm_cell_766/Sigmoid_2Sigmoid%lstm_886/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_886/lstm_cell_766/Relu_1Relu lstm_886/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_886/lstm_cell_766/mul_2Mul$lstm_886/lstm_cell_766/Sigmoid_2:y:0+lstm_886/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_886/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_886/TensorArrayV2_1TensorListReserve/lstm_886/TensorArrayV2_1/element_shape:output:0!lstm_886/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_886/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_886/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_886/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_886/whileWhile$lstm_886/while/loop_counter:output:0*lstm_886/while/maximum_iterations:output:0lstm_886/time:output:0!lstm_886/TensorArrayV2_1:handle:0lstm_886/zeros:output:0lstm_886/zeros_1:output:0!lstm_886/strided_slice_1:output:0@lstm_886/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_886_lstm_cell_766_matmul_readvariableop_resource7lstm_886_lstm_cell_766_matmul_1_readvariableop_resource6lstm_886_lstm_cell_766_biasadd_readvariableop_resource*
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
lstm_886_while_body_4641238*'
condR
lstm_886_while_cond_4641237*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_886/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_886/TensorArrayV2Stack/TensorListStackTensorListStacklstm_886/while:output:3Blstm_886/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_886/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_886/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_886/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_886/strided_slice_3StridedSlice4lstm_886/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_886/strided_slice_3/stack:output:0)lstm_886/strided_slice_3/stack_1:output:0)lstm_886/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_886/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_886/transpose_1	Transpose4lstm_886/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_886/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_886/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_887/ShapeShapelstm_886/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_887/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_887/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_887/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_887/strided_sliceStridedSlicelstm_887/Shape:output:0%lstm_887/strided_slice/stack:output:0'lstm_887/strided_slice/stack_1:output:0'lstm_887/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_887/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_887/zeros/packedPacklstm_887/strided_slice:output:0 lstm_887/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_887/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_887/zerosFilllstm_887/zeros/packed:output:0lstm_887/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_887/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_887/zeros_1/packedPacklstm_887/strided_slice:output:0"lstm_887/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_887/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_887/zeros_1Fill lstm_887/zeros_1/packed:output:0lstm_887/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_887/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_887/transpose	Transposelstm_886/transpose_1:y:0 lstm_887/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_887/Shape_1Shapelstm_887/transpose:y:0*
T0*
_output_shapes
:h
lstm_887/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_887/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_887/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_887/strided_slice_1StridedSlicelstm_887/Shape_1:output:0'lstm_887/strided_slice_1/stack:output:0)lstm_887/strided_slice_1/stack_1:output:0)lstm_887/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_887/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_887/TensorArrayV2TensorListReserve-lstm_887/TensorArrayV2/element_shape:output:0!lstm_887/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_887/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_887/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_887/transpose:y:0Glstm_887/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_887/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_887/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_887/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_887/strided_slice_2StridedSlicelstm_887/transpose:y:0'lstm_887/strided_slice_2/stack:output:0)lstm_887/strided_slice_2/stack_1:output:0)lstm_887/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_887/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp5lstm_887_lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_887/lstm_cell_767/MatMulMatMul!lstm_887/strided_slice_2:output:04lstm_887/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_887/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp7lstm_887_lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_887/lstm_cell_767/MatMul_1MatMullstm_887/zeros:output:06lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_887/lstm_cell_767/addAddV2'lstm_887/lstm_cell_767/MatMul:product:0)lstm_887/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_887/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp6lstm_887_lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_887/lstm_cell_767/BiasAddBiasAddlstm_887/lstm_cell_767/add:z:05lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_887/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_887/lstm_cell_767/splitSplit/lstm_887/lstm_cell_767/split/split_dim:output:0'lstm_887/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_887/lstm_cell_767/SigmoidSigmoid%lstm_887/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_887/lstm_cell_767/Sigmoid_1Sigmoid%lstm_887/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_887/lstm_cell_767/mulMul$lstm_887/lstm_cell_767/Sigmoid_1:y:0lstm_887/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_887/lstm_cell_767/ReluRelu%lstm_887/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_887/lstm_cell_767/mul_1Mul"lstm_887/lstm_cell_767/Sigmoid:y:0)lstm_887/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_887/lstm_cell_767/add_1AddV2lstm_887/lstm_cell_767/mul:z:0 lstm_887/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_887/lstm_cell_767/Sigmoid_2Sigmoid%lstm_887/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_887/lstm_cell_767/Relu_1Relu lstm_887/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_887/lstm_cell_767/mul_2Mul$lstm_887/lstm_cell_767/Sigmoid_2:y:0+lstm_887/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_887/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_887/TensorArrayV2_1TensorListReserve/lstm_887/TensorArrayV2_1/element_shape:output:0!lstm_887/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_887/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_887/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_887/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_887/whileWhile$lstm_887/while/loop_counter:output:0*lstm_887/while/maximum_iterations:output:0lstm_887/time:output:0!lstm_887/TensorArrayV2_1:handle:0lstm_887/zeros:output:0lstm_887/zeros_1:output:0!lstm_887/strided_slice_1:output:0@lstm_887/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_887_lstm_cell_767_matmul_readvariableop_resource7lstm_887_lstm_cell_767_matmul_1_readvariableop_resource6lstm_887_lstm_cell_767_biasadd_readvariableop_resource*
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
lstm_887_while_body_4641377*'
condR
lstm_887_while_cond_4641376*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_887/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_887/TensorArrayV2Stack/TensorListStackTensorListStacklstm_887/while:output:3Blstm_887/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_887/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_887/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_887/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_887/strided_slice_3StridedSlice4lstm_887/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_887/strided_slice_3/stack:output:0)lstm_887/strided_slice_3/stack_1:output:0)lstm_887/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_887/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_887/transpose_1	Transpose4lstm_887/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_887/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_887/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_295/MatMul/ReadVariableOpReadVariableOp(dense_295_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_295/MatMulMatMul!lstm_887/strided_slice_3:output:0'dense_295/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_295/BiasAdd/ReadVariableOpReadVariableOp)dense_295_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_295/BiasAddBiasAdddense_295/MatMul:product:0(dense_295/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_295/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_295/BiasAdd/ReadVariableOp ^dense_295/MatMul/ReadVariableOp.^lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp-^lstm_885/lstm_cell_765/MatMul/ReadVariableOp/^lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp^lstm_885/while.^lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp-^lstm_886/lstm_cell_766/MatMul/ReadVariableOp/^lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp^lstm_886/while.^lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp-^lstm_887/lstm_cell_767/MatMul/ReadVariableOp/^lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp^lstm_887/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_295/BiasAdd/ReadVariableOp dense_295/BiasAdd/ReadVariableOp2B
dense_295/MatMul/ReadVariableOpdense_295/MatMul/ReadVariableOp2^
-lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp-lstm_885/lstm_cell_765/BiasAdd/ReadVariableOp2\
,lstm_885/lstm_cell_765/MatMul/ReadVariableOp,lstm_885/lstm_cell_765/MatMul/ReadVariableOp2`
.lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp.lstm_885/lstm_cell_765/MatMul_1/ReadVariableOp2 
lstm_885/whilelstm_885/while2^
-lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp-lstm_886/lstm_cell_766/BiasAdd/ReadVariableOp2\
,lstm_886/lstm_cell_766/MatMul/ReadVariableOp,lstm_886/lstm_cell_766/MatMul/ReadVariableOp2`
.lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp.lstm_886/lstm_cell_766/MatMul_1/ReadVariableOp2 
lstm_886/whilelstm_886/while2^
-lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp-lstm_887/lstm_cell_767/BiasAdd/ReadVariableOp2\
,lstm_887/lstm_cell_767/MatMul/ReadVariableOp,lstm_887/lstm_cell_767/MatMul/ReadVariableOp2`
.lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp.lstm_887/lstm_cell_767/MatMul_1/ReadVariableOp2 
lstm_887/whilelstm_887/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_885_layer_call_and_return_conditional_losses_4640771

inputs?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4640687*
condR
while_cond_4640686*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4642282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4642282___redundant_placeholder05
1while_while_cond_4642282___redundant_placeholder15
1while_while_cond_4642282___redundant_placeholder25
1while_while_cond_4642282___redundant_placeholder3
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
while_body_4642283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_295_layer_call_and_return_conditional_losses_4643761

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
?T
?
*sequential_295_lstm_887_while_body_4638636L
Hsequential_295_lstm_887_while_sequential_295_lstm_887_while_loop_counterR
Nsequential_295_lstm_887_while_sequential_295_lstm_887_while_maximum_iterations-
)sequential_295_lstm_887_while_placeholder/
+sequential_295_lstm_887_while_placeholder_1/
+sequential_295_lstm_887_while_placeholder_2/
+sequential_295_lstm_887_while_placeholder_3K
Gsequential_295_lstm_887_while_sequential_295_lstm_887_strided_slice_1_0?
?sequential_295_lstm_887_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_887_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_295_lstm_887_while_lstm_cell_767_matmul_readvariableop_resource_0:2(`
Nsequential_295_lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource_0:
([
Msequential_295_lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource_0:(*
&sequential_295_lstm_887_while_identity,
(sequential_295_lstm_887_while_identity_1,
(sequential_295_lstm_887_while_identity_2,
(sequential_295_lstm_887_while_identity_3,
(sequential_295_lstm_887_while_identity_4,
(sequential_295_lstm_887_while_identity_5I
Esequential_295_lstm_887_while_sequential_295_lstm_887_strided_slice_1?
?sequential_295_lstm_887_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_887_tensorarrayunstack_tensorlistfromtensor\
Jsequential_295_lstm_887_while_lstm_cell_767_matmul_readvariableop_resource:2(^
Lsequential_295_lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource:
(Y
Ksequential_295_lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource:(??Bsequential_295/lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp?Asequential_295/lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp?Csequential_295/lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp?
Osequential_295/lstm_887/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_295/lstm_887/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_295_lstm_887_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_887_tensorarrayunstack_tensorlistfromtensor_0)sequential_295_lstm_887_while_placeholderXsequential_295/lstm_887/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_295/lstm_887/while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOpLsequential_295_lstm_887_while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_295/lstm_887/while/lstm_cell_767/MatMulMatMulHsequential_295/lstm_887/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_295/lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_295/lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOpNsequential_295_lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_295/lstm_887/while/lstm_cell_767/MatMul_1MatMul+sequential_295_lstm_887_while_placeholder_2Ksequential_295/lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_295/lstm_887/while/lstm_cell_767/addAddV2<sequential_295/lstm_887/while/lstm_cell_767/MatMul:product:0>sequential_295/lstm_887/while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_295/lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOpMsequential_295_lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_295/lstm_887/while/lstm_cell_767/BiasAddBiasAdd3sequential_295/lstm_887/while/lstm_cell_767/add:z:0Jsequential_295/lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_295/lstm_887/while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_295/lstm_887/while/lstm_cell_767/splitSplitDsequential_295/lstm_887/while/lstm_cell_767/split/split_dim:output:0<sequential_295/lstm_887/while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_295/lstm_887/while/lstm_cell_767/SigmoidSigmoid:sequential_295/lstm_887/while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_295/lstm_887/while/lstm_cell_767/Sigmoid_1Sigmoid:sequential_295/lstm_887/while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_295/lstm_887/while/lstm_cell_767/mulMul9sequential_295/lstm_887/while/lstm_cell_767/Sigmoid_1:y:0+sequential_295_lstm_887_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_295/lstm_887/while/lstm_cell_767/ReluRelu:sequential_295/lstm_887/while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_295/lstm_887/while/lstm_cell_767/mul_1Mul7sequential_295/lstm_887/while/lstm_cell_767/Sigmoid:y:0>sequential_295/lstm_887/while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_295/lstm_887/while/lstm_cell_767/add_1AddV23sequential_295/lstm_887/while/lstm_cell_767/mul:z:05sequential_295/lstm_887/while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_295/lstm_887/while/lstm_cell_767/Sigmoid_2Sigmoid:sequential_295/lstm_887/while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_295/lstm_887/while/lstm_cell_767/Relu_1Relu5sequential_295/lstm_887/while/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_295/lstm_887/while/lstm_cell_767/mul_2Mul9sequential_295/lstm_887/while/lstm_cell_767/Sigmoid_2:y:0@sequential_295/lstm_887/while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_295/lstm_887/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_295_lstm_887_while_placeholder_1)sequential_295_lstm_887_while_placeholder5sequential_295/lstm_887/while/lstm_cell_767/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_295/lstm_887/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_295/lstm_887/while/addAddV2)sequential_295_lstm_887_while_placeholder,sequential_295/lstm_887/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_295/lstm_887/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_295/lstm_887/while/add_1AddV2Hsequential_295_lstm_887_while_sequential_295_lstm_887_while_loop_counter.sequential_295/lstm_887/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_295/lstm_887/while/IdentityIdentity'sequential_295/lstm_887/while/add_1:z:0#^sequential_295/lstm_887/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_887/while/Identity_1IdentityNsequential_295_lstm_887_while_sequential_295_lstm_887_while_maximum_iterations#^sequential_295/lstm_887/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_887/while/Identity_2Identity%sequential_295/lstm_887/while/add:z:0#^sequential_295/lstm_887/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_887/while/Identity_3IdentityRsequential_295/lstm_887/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_295/lstm_887/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_887/while/Identity_4Identity5sequential_295/lstm_887/while/lstm_cell_767/mul_2:z:0#^sequential_295/lstm_887/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_295/lstm_887/while/Identity_5Identity5sequential_295/lstm_887/while/lstm_cell_767/add_1:z:0#^sequential_295/lstm_887/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_295/lstm_887/while/NoOpNoOpC^sequential_295/lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOpB^sequential_295/lstm_887/while/lstm_cell_767/MatMul/ReadVariableOpD^sequential_295/lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_295_lstm_887_while_identity/sequential_295/lstm_887/while/Identity:output:0"]
(sequential_295_lstm_887_while_identity_11sequential_295/lstm_887/while/Identity_1:output:0"]
(sequential_295_lstm_887_while_identity_21sequential_295/lstm_887/while/Identity_2:output:0"]
(sequential_295_lstm_887_while_identity_31sequential_295/lstm_887/while/Identity_3:output:0"]
(sequential_295_lstm_887_while_identity_41sequential_295/lstm_887/while/Identity_4:output:0"]
(sequential_295_lstm_887_while_identity_51sequential_295/lstm_887/while/Identity_5:output:0"?
Ksequential_295_lstm_887_while_lstm_cell_767_biasadd_readvariableop_resourceMsequential_295_lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource_0"?
Lsequential_295_lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resourceNsequential_295_lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource_0"?
Jsequential_295_lstm_887_while_lstm_cell_767_matmul_readvariableop_resourceLsequential_295_lstm_887_while_lstm_cell_767_matmul_readvariableop_resource_0"?
Esequential_295_lstm_887_while_sequential_295_lstm_887_strided_slice_1Gsequential_295_lstm_887_while_sequential_295_lstm_887_strided_slice_1_0"?
?sequential_295_lstm_887_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_887_tensorarrayunstack_tensorlistfromtensor?sequential_295_lstm_887_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_887_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_295/lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOpBsequential_295/lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp2?
Asequential_295/lstm_887/while/lstm_cell_767/MatMul/ReadVariableOpAsequential_295/lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp2?
Csequential_295/lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOpCsequential_295/lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_295_layer_call_and_return_conditional_losses_4640243

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
while_body_4643042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_886_while_cond_4641664.
*lstm_886_while_lstm_886_while_loop_counter4
0lstm_886_while_lstm_886_while_maximum_iterations
lstm_886_while_placeholder 
lstm_886_while_placeholder_1 
lstm_886_while_placeholder_2 
lstm_886_while_placeholder_30
,lstm_886_while_less_lstm_886_strided_slice_1G
Clstm_886_while_lstm_886_while_cond_4641664___redundant_placeholder0G
Clstm_886_while_lstm_886_while_cond_4641664___redundant_placeholder1G
Clstm_886_while_lstm_886_while_cond_4641664___redundant_placeholder2G
Clstm_886_while_lstm_886_while_cond_4641664___redundant_placeholder3
lstm_886_while_identity
?
lstm_886/while/LessLesslstm_886_while_placeholder,lstm_886_while_less_lstm_886_strided_slice_1*
T0*
_output_shapes
: ]
lstm_886/while/IdentityIdentitylstm_886/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_886_while_identity lstm_886/while/Identity:output:0*(
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4639289

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
?#
?
while_body_4639507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_767_4639531_0:2(/
while_lstm_cell_767_4639533_0:
(+
while_lstm_cell_767_4639535_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_767_4639531:2(-
while_lstm_cell_767_4639533:
()
while_lstm_cell_767_4639535:(??+while/lstm_cell_767/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_767/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_767_4639531_0while_lstm_cell_767_4639533_0while_lstm_cell_767_4639535_0*
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4639493?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_767/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_767/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_767/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_767/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_767_4639531while_lstm_cell_767_4639531_0"<
while_lstm_cell_767_4639533while_lstm_cell_767_4639533_0"<
while_lstm_cell_767_4639535while_lstm_cell_767_4639535_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_767/StatefulPartitionedCall+while/lstm_cell_767/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4638807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_765_4638831_0:	?0
while_lstm_cell_765_4638833_0:	d?,
while_lstm_cell_765_4638835_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_765_4638831:	?.
while_lstm_cell_765_4638833:	d?*
while_lstm_cell_765_4638835:	???+while/lstm_cell_765/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_765/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_765_4638831_0while_lstm_cell_765_4638833_0while_lstm_cell_765_4638835_0*
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4638793?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_765/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_765/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_765/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_765/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_765_4638831while_lstm_cell_765_4638831_0"<
while_lstm_cell_765_4638833while_lstm_cell_765_4638833_0"<
while_lstm_cell_765_4638835while_lstm_cell_765_4638835_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_765/StatefulPartitionedCall+while/lstm_cell_765/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4639925

inputs?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4639841*
condR
while_cond_4639840*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_295_layer_call_fn_4640275
lstm_885_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_885_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640250o
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
_user_specified_namelstm_885_input
?J
?
E__inference_lstm_886_layer_call_and_return_conditional_losses_4642983

inputs?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4642899*
condR
while_cond_4642898*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4642755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4642755___redundant_placeholder05
1while_while_cond_4642755___redundant_placeholder15
1while_while_cond_4642755___redundant_placeholder25
1while_while_cond_4642755___redundant_placeholder3
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
*__inference_lstm_885_layer_call_fn_4641938

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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4640771s
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
?C
?

lstm_885_while_body_4641099.
*lstm_885_while_lstm_885_while_loop_counter4
0lstm_885_while_lstm_885_while_maximum_iterations
lstm_885_while_placeholder 
lstm_885_while_placeholder_1 
lstm_885_while_placeholder_2 
lstm_885_while_placeholder_3-
)lstm_885_while_lstm_885_strided_slice_1_0i
elstm_885_while_tensorarrayv2read_tensorlistgetitem_lstm_885_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_885_while_lstm_cell_765_matmul_readvariableop_resource_0:	?R
?lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?M
>lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
lstm_885_while_identity
lstm_885_while_identity_1
lstm_885_while_identity_2
lstm_885_while_identity_3
lstm_885_while_identity_4
lstm_885_while_identity_5+
'lstm_885_while_lstm_885_strided_slice_1g
clstm_885_while_tensorarrayv2read_tensorlistgetitem_lstm_885_tensorarrayunstack_tensorlistfromtensorN
;lstm_885_while_lstm_cell_765_matmul_readvariableop_resource:	?P
=lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource:	d?K
<lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource:	???3lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp?2lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp?4lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp?
@lstm_885/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_885/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_885_while_tensorarrayv2read_tensorlistgetitem_lstm_885_tensorarrayunstack_tensorlistfromtensor_0lstm_885_while_placeholderIlstm_885/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_885/while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp=lstm_885_while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_885/while/lstm_cell_765/MatMulMatMul9lstm_885/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp?lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_885/while/lstm_cell_765/MatMul_1MatMullstm_885_while_placeholder_2<lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_885/while/lstm_cell_765/addAddV2-lstm_885/while/lstm_cell_765/MatMul:product:0/lstm_885/while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp>lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_885/while/lstm_cell_765/BiasAddBiasAdd$lstm_885/while/lstm_cell_765/add:z:0;lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_885/while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_885/while/lstm_cell_765/splitSplit5lstm_885/while/lstm_cell_765/split/split_dim:output:0-lstm_885/while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_885/while/lstm_cell_765/SigmoidSigmoid+lstm_885/while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_885/while/lstm_cell_765/Sigmoid_1Sigmoid+lstm_885/while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_885/while/lstm_cell_765/mulMul*lstm_885/while/lstm_cell_765/Sigmoid_1:y:0lstm_885_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_885/while/lstm_cell_765/ReluRelu+lstm_885/while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_885/while/lstm_cell_765/mul_1Mul(lstm_885/while/lstm_cell_765/Sigmoid:y:0/lstm_885/while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_885/while/lstm_cell_765/add_1AddV2$lstm_885/while/lstm_cell_765/mul:z:0&lstm_885/while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_885/while/lstm_cell_765/Sigmoid_2Sigmoid+lstm_885/while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_885/while/lstm_cell_765/Relu_1Relu&lstm_885/while/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_885/while/lstm_cell_765/mul_2Mul*lstm_885/while/lstm_cell_765/Sigmoid_2:y:01lstm_885/while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_885/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_885_while_placeholder_1lstm_885_while_placeholder&lstm_885/while/lstm_cell_765/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_885/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_885/while/addAddV2lstm_885_while_placeholderlstm_885/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_885/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_885/while/add_1AddV2*lstm_885_while_lstm_885_while_loop_counterlstm_885/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_885/while/IdentityIdentitylstm_885/while/add_1:z:0^lstm_885/while/NoOp*
T0*
_output_shapes
: ?
lstm_885/while/Identity_1Identity0lstm_885_while_lstm_885_while_maximum_iterations^lstm_885/while/NoOp*
T0*
_output_shapes
: t
lstm_885/while/Identity_2Identitylstm_885/while/add:z:0^lstm_885/while/NoOp*
T0*
_output_shapes
: ?
lstm_885/while/Identity_3IdentityClstm_885/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_885/while/NoOp*
T0*
_output_shapes
: ?
lstm_885/while/Identity_4Identity&lstm_885/while/lstm_cell_765/mul_2:z:0^lstm_885/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_885/while/Identity_5Identity&lstm_885/while/lstm_cell_765/add_1:z:0^lstm_885/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_885/while/NoOpNoOp4^lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp3^lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp5^lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_885_while_identity lstm_885/while/Identity:output:0"?
lstm_885_while_identity_1"lstm_885/while/Identity_1:output:0"?
lstm_885_while_identity_2"lstm_885/while/Identity_2:output:0"?
lstm_885_while_identity_3"lstm_885/while/Identity_3:output:0"?
lstm_885_while_identity_4"lstm_885/while/Identity_4:output:0"?
lstm_885_while_identity_5"lstm_885/while/Identity_5:output:0"T
'lstm_885_while_lstm_885_strided_slice_1)lstm_885_while_lstm_885_strided_slice_1_0"~
<lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource>lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource_0"?
=lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource?lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource_0"|
;lstm_885_while_lstm_cell_765_matmul_readvariableop_resource=lstm_885_while_lstm_cell_765_matmul_readvariableop_resource_0"?
clstm_885_while_tensorarrayv2read_tensorlistgetitem_lstm_885_tensorarrayunstack_tensorlistfromtensorelstm_885_while_tensorarrayv2read_tensorlistgetitem_lstm_885_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp3lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp2h
2lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp2lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp2l
4lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp4lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4639840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4639840___redundant_placeholder05
1while_while_cond_4639840___redundant_placeholder15
1while_while_cond_4639840___redundant_placeholder25
1while_while_cond_4639840___redundant_placeholder3
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
*__inference_lstm_887_layer_call_fn_4643170

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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4640441o
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643742

inputs>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4643658*
condR
while_cond_4643657*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4642899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4643371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4643371___redundant_placeholder05
1while_while_cond_4643371___redundant_placeholder15
1while_while_cond_4643371___redundant_placeholder25
1while_while_cond_4643371___redundant_placeholder3
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
while_cond_4638997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4638997___redundant_placeholder05
1while_while_cond_4638997___redundant_placeholder15
1while_while_cond_4638997___redundant_placeholder25
1while_while_cond_4638997___redundant_placeholder3
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
*__inference_lstm_886_layer_call_fn_4642554

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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4640606s
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642224
inputs_0?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4642140*
condR
while_cond_4642139*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4643515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643456
inputs_0>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4643372*
condR
while_cond_4643371*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_887_layer_call_fn_4643159

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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4640225o
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
*sequential_295_lstm_885_while_cond_4638357L
Hsequential_295_lstm_885_while_sequential_295_lstm_885_while_loop_counterR
Nsequential_295_lstm_885_while_sequential_295_lstm_885_while_maximum_iterations-
)sequential_295_lstm_885_while_placeholder/
+sequential_295_lstm_885_while_placeholder_1/
+sequential_295_lstm_885_while_placeholder_2/
+sequential_295_lstm_885_while_placeholder_3N
Jsequential_295_lstm_885_while_less_sequential_295_lstm_885_strided_slice_1e
asequential_295_lstm_885_while_sequential_295_lstm_885_while_cond_4638357___redundant_placeholder0e
asequential_295_lstm_885_while_sequential_295_lstm_885_while_cond_4638357___redundant_placeholder1e
asequential_295_lstm_885_while_sequential_295_lstm_885_while_cond_4638357___redundant_placeholder2e
asequential_295_lstm_885_while_sequential_295_lstm_885_while_cond_4638357___redundant_placeholder3*
&sequential_295_lstm_885_while_identity
?
"sequential_295/lstm_885/while/LessLess)sequential_295_lstm_885_while_placeholderJsequential_295_lstm_885_while_less_sequential_295_lstm_885_strided_slice_1*
T0*
_output_shapes
: {
&sequential_295/lstm_885/while/IdentityIdentity&sequential_295/lstm_885/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_295_lstm_885_while_identity/sequential_295/lstm_885/while/Identity:output:0*(
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4644055

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
while_cond_4639156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4639156___redundant_placeholder05
1while_while_cond_4639156___redundant_placeholder15
1while_while_cond_4639156___redundant_placeholder25
1while_while_cond_4639156___redundant_placeholder3
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4639226

inputs(
lstm_cell_766_4639144:	d?(
lstm_cell_766_4639146:	2?$
lstm_cell_766_4639148:	?
identity??%lstm_cell_766/StatefulPartitionedCall?while;
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
%lstm_cell_766/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_766_4639144lstm_cell_766_4639146lstm_cell_766_4639148*
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4639143n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_766_4639144lstm_cell_766_4639146lstm_cell_766_4639148*
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
while_body_4639157*
condR
while_cond_4639156*K
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
NoOpNoOp&^lstm_cell_766/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_766/StatefulPartitionedCall%lstm_cell_766/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4640141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_887_layer_call_fn_4643137
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4639576o
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
*sequential_295_lstm_886_while_body_4638497L
Hsequential_295_lstm_886_while_sequential_295_lstm_886_while_loop_counterR
Nsequential_295_lstm_886_while_sequential_295_lstm_886_while_maximum_iterations-
)sequential_295_lstm_886_while_placeholder/
+sequential_295_lstm_886_while_placeholder_1/
+sequential_295_lstm_886_while_placeholder_2/
+sequential_295_lstm_886_while_placeholder_3K
Gsequential_295_lstm_886_while_sequential_295_lstm_886_strided_slice_1_0?
?sequential_295_lstm_886_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_886_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_295_lstm_886_while_lstm_cell_766_matmul_readvariableop_resource_0:	d?a
Nsequential_295_lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?\
Msequential_295_lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource_0:	?*
&sequential_295_lstm_886_while_identity,
(sequential_295_lstm_886_while_identity_1,
(sequential_295_lstm_886_while_identity_2,
(sequential_295_lstm_886_while_identity_3,
(sequential_295_lstm_886_while_identity_4,
(sequential_295_lstm_886_while_identity_5I
Esequential_295_lstm_886_while_sequential_295_lstm_886_strided_slice_1?
?sequential_295_lstm_886_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_886_tensorarrayunstack_tensorlistfromtensor]
Jsequential_295_lstm_886_while_lstm_cell_766_matmul_readvariableop_resource:	d?_
Lsequential_295_lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource:	2?Z
Ksequential_295_lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource:	???Bsequential_295/lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp?Asequential_295/lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp?Csequential_295/lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp?
Osequential_295/lstm_886/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_295/lstm_886/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_295_lstm_886_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_886_tensorarrayunstack_tensorlistfromtensor_0)sequential_295_lstm_886_while_placeholderXsequential_295/lstm_886/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_295/lstm_886/while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOpLsequential_295_lstm_886_while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_295/lstm_886/while/lstm_cell_766/MatMulMatMulHsequential_295/lstm_886/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_295/lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_295/lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOpNsequential_295_lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_295/lstm_886/while/lstm_cell_766/MatMul_1MatMul+sequential_295_lstm_886_while_placeholder_2Ksequential_295/lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_295/lstm_886/while/lstm_cell_766/addAddV2<sequential_295/lstm_886/while/lstm_cell_766/MatMul:product:0>sequential_295/lstm_886/while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_295/lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOpMsequential_295_lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_295/lstm_886/while/lstm_cell_766/BiasAddBiasAdd3sequential_295/lstm_886/while/lstm_cell_766/add:z:0Jsequential_295/lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_295/lstm_886/while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_295/lstm_886/while/lstm_cell_766/splitSplitDsequential_295/lstm_886/while/lstm_cell_766/split/split_dim:output:0<sequential_295/lstm_886/while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_295/lstm_886/while/lstm_cell_766/SigmoidSigmoid:sequential_295/lstm_886/while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_295/lstm_886/while/lstm_cell_766/Sigmoid_1Sigmoid:sequential_295/lstm_886/while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_295/lstm_886/while/lstm_cell_766/mulMul9sequential_295/lstm_886/while/lstm_cell_766/Sigmoid_1:y:0+sequential_295_lstm_886_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_295/lstm_886/while/lstm_cell_766/ReluRelu:sequential_295/lstm_886/while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_295/lstm_886/while/lstm_cell_766/mul_1Mul7sequential_295/lstm_886/while/lstm_cell_766/Sigmoid:y:0>sequential_295/lstm_886/while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_295/lstm_886/while/lstm_cell_766/add_1AddV23sequential_295/lstm_886/while/lstm_cell_766/mul:z:05sequential_295/lstm_886/while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_295/lstm_886/while/lstm_cell_766/Sigmoid_2Sigmoid:sequential_295/lstm_886/while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_295/lstm_886/while/lstm_cell_766/Relu_1Relu5sequential_295/lstm_886/while/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_295/lstm_886/while/lstm_cell_766/mul_2Mul9sequential_295/lstm_886/while/lstm_cell_766/Sigmoid_2:y:0@sequential_295/lstm_886/while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_295/lstm_886/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_295_lstm_886_while_placeholder_1)sequential_295_lstm_886_while_placeholder5sequential_295/lstm_886/while/lstm_cell_766/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_295/lstm_886/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_295/lstm_886/while/addAddV2)sequential_295_lstm_886_while_placeholder,sequential_295/lstm_886/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_295/lstm_886/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_295/lstm_886/while/add_1AddV2Hsequential_295_lstm_886_while_sequential_295_lstm_886_while_loop_counter.sequential_295/lstm_886/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_295/lstm_886/while/IdentityIdentity'sequential_295/lstm_886/while/add_1:z:0#^sequential_295/lstm_886/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_886/while/Identity_1IdentityNsequential_295_lstm_886_while_sequential_295_lstm_886_while_maximum_iterations#^sequential_295/lstm_886/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_886/while/Identity_2Identity%sequential_295/lstm_886/while/add:z:0#^sequential_295/lstm_886/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_886/while/Identity_3IdentityRsequential_295/lstm_886/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_295/lstm_886/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_886/while/Identity_4Identity5sequential_295/lstm_886/while/lstm_cell_766/mul_2:z:0#^sequential_295/lstm_886/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_295/lstm_886/while/Identity_5Identity5sequential_295/lstm_886/while/lstm_cell_766/add_1:z:0#^sequential_295/lstm_886/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_295/lstm_886/while/NoOpNoOpC^sequential_295/lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOpB^sequential_295/lstm_886/while/lstm_cell_766/MatMul/ReadVariableOpD^sequential_295/lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_295_lstm_886_while_identity/sequential_295/lstm_886/while/Identity:output:0"]
(sequential_295_lstm_886_while_identity_11sequential_295/lstm_886/while/Identity_1:output:0"]
(sequential_295_lstm_886_while_identity_21sequential_295/lstm_886/while/Identity_2:output:0"]
(sequential_295_lstm_886_while_identity_31sequential_295/lstm_886/while/Identity_3:output:0"]
(sequential_295_lstm_886_while_identity_41sequential_295/lstm_886/while/Identity_4:output:0"]
(sequential_295_lstm_886_while_identity_51sequential_295/lstm_886/while/Identity_5:output:0"?
Ksequential_295_lstm_886_while_lstm_cell_766_biasadd_readvariableop_resourceMsequential_295_lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource_0"?
Lsequential_295_lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resourceNsequential_295_lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource_0"?
Jsequential_295_lstm_886_while_lstm_cell_766_matmul_readvariableop_resourceLsequential_295_lstm_886_while_lstm_cell_766_matmul_readvariableop_resource_0"?
Esequential_295_lstm_886_while_sequential_295_lstm_886_strided_slice_1Gsequential_295_lstm_886_while_sequential_295_lstm_886_strided_slice_1_0"?
?sequential_295_lstm_886_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_886_tensorarrayunstack_tensorlistfromtensor?sequential_295_lstm_886_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_886_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_295/lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOpBsequential_295/lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp2?
Asequential_295/lstm_886/while/lstm_cell_766/MatMul/ReadVariableOpAsequential_295/lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp2?
Csequential_295/lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOpCsequential_295/lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4639576

inputs'
lstm_cell_767_4639494:2('
lstm_cell_767_4639496:
(#
lstm_cell_767_4639498:(
identity??%lstm_cell_767/StatefulPartitionedCall?while;
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
%lstm_cell_767/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_767_4639494lstm_cell_767_4639496lstm_cell_767_4639498*
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4639493n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_767_4639494lstm_cell_767_4639496lstm_cell_767_4639498*
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
while_body_4639507*
condR
while_cond_4639506*K
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
NoOpNoOp&^lstm_cell_767/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_767/StatefulPartitionedCall%lstm_cell_767/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4642756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4638998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_765_4639022_0:	?0
while_lstm_cell_765_4639024_0:	d?,
while_lstm_cell_765_4639026_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_765_4639022:	?.
while_lstm_cell_765_4639024:	d?*
while_lstm_cell_765_4639026:	???+while/lstm_cell_765/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_765/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_765_4639022_0while_lstm_cell_765_4639024_0while_lstm_cell_765_4639026_0*
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4638939?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_765/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_765/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_765/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_765/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_765_4639022while_lstm_cell_765_4639022_0"<
while_lstm_cell_765_4639024while_lstm_cell_765_4639024_0"<
while_lstm_cell_765_4639026while_lstm_cell_765_4639026_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_765/StatefulPartitionedCall+while/lstm_cell_765/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_886_layer_call_fn_4642543

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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4640075s
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
lstm_887_while_cond_4641803.
*lstm_887_while_lstm_887_while_loop_counter4
0lstm_887_while_lstm_887_while_maximum_iterations
lstm_887_while_placeholder 
lstm_887_while_placeholder_1 
lstm_887_while_placeholder_2 
lstm_887_while_placeholder_30
,lstm_887_while_less_lstm_887_strided_slice_1G
Clstm_887_while_lstm_887_while_cond_4641803___redundant_placeholder0G
Clstm_887_while_lstm_887_while_cond_4641803___redundant_placeholder1G
Clstm_887_while_lstm_887_while_cond_4641803___redundant_placeholder2G
Clstm_887_while_lstm_887_while_cond_4641803___redundant_placeholder3
lstm_887_while_identity
?
lstm_887/while/LessLesslstm_887_while_placeholder,lstm_887_while_less_lstm_887_strided_slice_1*
T0*
_output_shapes
: ]
lstm_887/while/IdentityIdentitylstm_887/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_887_while_identity lstm_887/while/Identity:output:0*(
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4638876

inputs(
lstm_cell_765_4638794:	?(
lstm_cell_765_4638796:	d?$
lstm_cell_765_4638798:	?
identity??%lstm_cell_765/StatefulPartitionedCall?while;
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
%lstm_cell_765/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_765_4638794lstm_cell_765_4638796lstm_cell_765_4638798*
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4638793n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_765_4638794lstm_cell_765_4638796lstm_cell_765_4638798*
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
while_body_4638807*
condR
while_cond_4638806*K
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
NoOpNoOp&^lstm_cell_765/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_765/StatefulPartitionedCall%lstm_cell_765/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4639143

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
/__inference_lstm_cell_767_layer_call_fn_4643974

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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4639493o
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
lstm_887_while_cond_4641376.
*lstm_887_while_lstm_887_while_loop_counter4
0lstm_887_while_lstm_887_while_maximum_iterations
lstm_887_while_placeholder 
lstm_887_while_placeholder_1 
lstm_887_while_placeholder_2 
lstm_887_while_placeholder_30
,lstm_887_while_less_lstm_887_strided_slice_1G
Clstm_887_while_lstm_887_while_cond_4641376___redundant_placeholder0G
Clstm_887_while_lstm_887_while_cond_4641376___redundant_placeholder1G
Clstm_887_while_lstm_887_while_cond_4641376___redundant_placeholder2G
Clstm_887_while_lstm_887_while_cond_4641376___redundant_placeholder3
lstm_887_while_identity
?
lstm_887/while/LessLesslstm_887_while_placeholder,lstm_887_while_less_lstm_887_strided_slice_1*
T0*
_output_shapes
: ]
lstm_887/while/IdentityIdentitylstm_887/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_887_while_identity lstm_887/while/Identity:output:0*(
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
/__inference_lstm_cell_765_layer_call_fn_4643795

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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4638939o
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4643925

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
while_body_4640357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_886_while_body_4641665.
*lstm_886_while_lstm_886_while_loop_counter4
0lstm_886_while_lstm_886_while_maximum_iterations
lstm_886_while_placeholder 
lstm_886_while_placeholder_1 
lstm_886_while_placeholder_2 
lstm_886_while_placeholder_3-
)lstm_886_while_lstm_886_strided_slice_1_0i
elstm_886_while_tensorarrayv2read_tensorlistgetitem_lstm_886_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_886_while_lstm_cell_766_matmul_readvariableop_resource_0:	d?R
?lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?M
>lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
lstm_886_while_identity
lstm_886_while_identity_1
lstm_886_while_identity_2
lstm_886_while_identity_3
lstm_886_while_identity_4
lstm_886_while_identity_5+
'lstm_886_while_lstm_886_strided_slice_1g
clstm_886_while_tensorarrayv2read_tensorlistgetitem_lstm_886_tensorarrayunstack_tensorlistfromtensorN
;lstm_886_while_lstm_cell_766_matmul_readvariableop_resource:	d?P
=lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource:	2?K
<lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource:	???3lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp?2lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp?4lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp?
@lstm_886/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_886/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_886_while_tensorarrayv2read_tensorlistgetitem_lstm_886_tensorarrayunstack_tensorlistfromtensor_0lstm_886_while_placeholderIlstm_886/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_886/while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp=lstm_886_while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_886/while/lstm_cell_766/MatMulMatMul9lstm_886/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp?lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_886/while/lstm_cell_766/MatMul_1MatMullstm_886_while_placeholder_2<lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_886/while/lstm_cell_766/addAddV2-lstm_886/while/lstm_cell_766/MatMul:product:0/lstm_886/while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp>lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_886/while/lstm_cell_766/BiasAddBiasAdd$lstm_886/while/lstm_cell_766/add:z:0;lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_886/while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_886/while/lstm_cell_766/splitSplit5lstm_886/while/lstm_cell_766/split/split_dim:output:0-lstm_886/while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_886/while/lstm_cell_766/SigmoidSigmoid+lstm_886/while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_886/while/lstm_cell_766/Sigmoid_1Sigmoid+lstm_886/while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_886/while/lstm_cell_766/mulMul*lstm_886/while/lstm_cell_766/Sigmoid_1:y:0lstm_886_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_886/while/lstm_cell_766/ReluRelu+lstm_886/while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_886/while/lstm_cell_766/mul_1Mul(lstm_886/while/lstm_cell_766/Sigmoid:y:0/lstm_886/while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_886/while/lstm_cell_766/add_1AddV2$lstm_886/while/lstm_cell_766/mul:z:0&lstm_886/while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_886/while/lstm_cell_766/Sigmoid_2Sigmoid+lstm_886/while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_886/while/lstm_cell_766/Relu_1Relu&lstm_886/while/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_886/while/lstm_cell_766/mul_2Mul*lstm_886/while/lstm_cell_766/Sigmoid_2:y:01lstm_886/while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_886/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_886_while_placeholder_1lstm_886_while_placeholder&lstm_886/while/lstm_cell_766/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_886/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_886/while/addAddV2lstm_886_while_placeholderlstm_886/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_886/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_886/while/add_1AddV2*lstm_886_while_lstm_886_while_loop_counterlstm_886/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_886/while/IdentityIdentitylstm_886/while/add_1:z:0^lstm_886/while/NoOp*
T0*
_output_shapes
: ?
lstm_886/while/Identity_1Identity0lstm_886_while_lstm_886_while_maximum_iterations^lstm_886/while/NoOp*
T0*
_output_shapes
: t
lstm_886/while/Identity_2Identitylstm_886/while/add:z:0^lstm_886/while/NoOp*
T0*
_output_shapes
: ?
lstm_886/while/Identity_3IdentityClstm_886/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_886/while/NoOp*
T0*
_output_shapes
: ?
lstm_886/while/Identity_4Identity&lstm_886/while/lstm_cell_766/mul_2:z:0^lstm_886/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_886/while/Identity_5Identity&lstm_886/while/lstm_cell_766/add_1:z:0^lstm_886/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_886/while/NoOpNoOp4^lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp3^lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp5^lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_886_while_identity lstm_886/while/Identity:output:0"?
lstm_886_while_identity_1"lstm_886/while/Identity_1:output:0"?
lstm_886_while_identity_2"lstm_886/while/Identity_2:output:0"?
lstm_886_while_identity_3"lstm_886/while/Identity_3:output:0"?
lstm_886_while_identity_4"lstm_886/while/Identity_4:output:0"?
lstm_886_while_identity_5"lstm_886/while/Identity_5:output:0"T
'lstm_886_while_lstm_886_strided_slice_1)lstm_886_while_lstm_886_strided_slice_1_0"~
<lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource>lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource_0"?
=lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource?lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource_0"|
;lstm_886_while_lstm_cell_766_matmul_readvariableop_resource=lstm_886_while_lstm_cell_766_matmul_readvariableop_resource_0"?
clstm_886_while_tensorarrayv2read_tensorlistgetitem_lstm_886_tensorarrayunstack_tensorlistfromtensorelstm_886_while_tensorarrayv2read_tensorlistgetitem_lstm_886_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp3lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp2h
2lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp2lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp2l
4lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp4lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4639506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4639506___redundant_placeholder05
1while_while_cond_4639506___redundant_placeholder15
1while_while_cond_4639506___redundant_placeholder25
1while_while_cond_4639506___redundant_placeholder3
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
while_body_4640687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4640522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4643657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4643657___redundant_placeholder05
1while_while_cond_4643657___redundant_placeholder15
1while_while_cond_4643657___redundant_placeholder25
1while_while_cond_4643657___redundant_placeholder3
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
while_cond_4642139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4642139___redundant_placeholder05
1while_while_cond_4642139___redundant_placeholder15
1while_while_cond_4642139___redundant_placeholder25
1while_while_cond_4642139___redundant_placeholder3
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
??
?
#__inference__traced_restore_4644328
file_prefix3
!assignvariableop_dense_295_kernel:
/
!assignvariableop_1_dense_295_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_885_lstm_cell_885_kernel:	?M
:assignvariableop_8_lstm_885_lstm_cell_885_recurrent_kernel:	d?=
.assignvariableop_9_lstm_885_lstm_cell_885_bias:	?D
1assignvariableop_10_lstm_886_lstm_cell_886_kernel:	d?N
;assignvariableop_11_lstm_886_lstm_cell_886_recurrent_kernel:	2?>
/assignvariableop_12_lstm_886_lstm_cell_886_bias:	?C
1assignvariableop_13_lstm_887_lstm_cell_887_kernel:2(M
;assignvariableop_14_lstm_887_lstm_cell_887_recurrent_kernel:
(=
/assignvariableop_15_lstm_887_lstm_cell_887_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_295_kernel_m:
7
)assignvariableop_19_adam_dense_295_bias_m:K
8assignvariableop_20_adam_lstm_885_lstm_cell_885_kernel_m:	?U
Bassignvariableop_21_adam_lstm_885_lstm_cell_885_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_885_lstm_cell_885_bias_m:	?K
8assignvariableop_23_adam_lstm_886_lstm_cell_886_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_886_lstm_cell_886_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_886_lstm_cell_886_bias_m:	?J
8assignvariableop_26_adam_lstm_887_lstm_cell_887_kernel_m:2(T
Bassignvariableop_27_adam_lstm_887_lstm_cell_887_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_887_lstm_cell_887_bias_m:(=
+assignvariableop_29_adam_dense_295_kernel_v:
7
)assignvariableop_30_adam_dense_295_bias_v:K
8assignvariableop_31_adam_lstm_885_lstm_cell_885_kernel_v:	?U
Bassignvariableop_32_adam_lstm_885_lstm_cell_885_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_885_lstm_cell_885_bias_v:	?K
8assignvariableop_34_adam_lstm_886_lstm_cell_886_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_886_lstm_cell_886_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_886_lstm_cell_886_bias_v:	?J
8assignvariableop_37_adam_lstm_887_lstm_cell_887_kernel_v:2(T
Bassignvariableop_38_adam_lstm_887_lstm_cell_887_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_887_lstm_cell_887_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_295_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_295_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_885_lstm_cell_885_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_885_lstm_cell_885_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_885_lstm_cell_885_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_886_lstm_cell_886_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_886_lstm_cell_886_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_886_lstm_cell_886_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_887_lstm_cell_887_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_887_lstm_cell_887_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_887_lstm_cell_887_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_295_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_295_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_885_lstm_cell_885_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_885_lstm_cell_885_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_885_lstm_cell_885_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_886_lstm_cell_886_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_886_lstm_cell_886_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_886_lstm_cell_886_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_887_lstm_cell_887_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_887_lstm_cell_887_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_887_lstm_cell_887_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_295_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_295_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_885_lstm_cell_885_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_885_lstm_cell_885_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_885_lstm_cell_885_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_886_lstm_cell_886_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_886_lstm_cell_886_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_886_lstm_cell_886_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_887_lstm_cell_887_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_887_lstm_cell_887_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_887_lstm_cell_887_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4639639

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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4639067

inputs(
lstm_cell_765_4638985:	?(
lstm_cell_765_4638987:	d?$
lstm_cell_765_4638989:	?
identity??%lstm_cell_765/StatefulPartitionedCall?while;
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
%lstm_cell_765/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_765_4638985lstm_cell_765_4638987lstm_cell_765_4638989*
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4638939n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_765_4638985lstm_cell_765_4638987lstm_cell_765_4638989*
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
while_body_4638998*
condR
while_cond_4638997*K
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
NoOpNoOp&^lstm_cell_765/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_765/StatefulPartitionedCall%lstm_cell_765/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_4643229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4638793

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

lstm_887_while_body_4641377.
*lstm_887_while_lstm_887_while_loop_counter4
0lstm_887_while_lstm_887_while_maximum_iterations
lstm_887_while_placeholder 
lstm_887_while_placeholder_1 
lstm_887_while_placeholder_2 
lstm_887_while_placeholder_3-
)lstm_887_while_lstm_887_strided_slice_1_0i
elstm_887_while_tensorarrayv2read_tensorlistgetitem_lstm_887_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_887_while_lstm_cell_767_matmul_readvariableop_resource_0:2(Q
?lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(L
>lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource_0:(
lstm_887_while_identity
lstm_887_while_identity_1
lstm_887_while_identity_2
lstm_887_while_identity_3
lstm_887_while_identity_4
lstm_887_while_identity_5+
'lstm_887_while_lstm_887_strided_slice_1g
clstm_887_while_tensorarrayv2read_tensorlistgetitem_lstm_887_tensorarrayunstack_tensorlistfromtensorM
;lstm_887_while_lstm_cell_767_matmul_readvariableop_resource:2(O
=lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource:
(J
<lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource:(??3lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp?2lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp?4lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp?
@lstm_887/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_887/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_887_while_tensorarrayv2read_tensorlistgetitem_lstm_887_tensorarrayunstack_tensorlistfromtensor_0lstm_887_while_placeholderIlstm_887/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_887/while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp=lstm_887_while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_887/while/lstm_cell_767/MatMulMatMul9lstm_887/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp?lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_887/while/lstm_cell_767/MatMul_1MatMullstm_887_while_placeholder_2<lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_887/while/lstm_cell_767/addAddV2-lstm_887/while/lstm_cell_767/MatMul:product:0/lstm_887/while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp>lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_887/while/lstm_cell_767/BiasAddBiasAdd$lstm_887/while/lstm_cell_767/add:z:0;lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_887/while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_887/while/lstm_cell_767/splitSplit5lstm_887/while/lstm_cell_767/split/split_dim:output:0-lstm_887/while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_887/while/lstm_cell_767/SigmoidSigmoid+lstm_887/while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_887/while/lstm_cell_767/Sigmoid_1Sigmoid+lstm_887/while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_887/while/lstm_cell_767/mulMul*lstm_887/while/lstm_cell_767/Sigmoid_1:y:0lstm_887_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_887/while/lstm_cell_767/ReluRelu+lstm_887/while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_887/while/lstm_cell_767/mul_1Mul(lstm_887/while/lstm_cell_767/Sigmoid:y:0/lstm_887/while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_887/while/lstm_cell_767/add_1AddV2$lstm_887/while/lstm_cell_767/mul:z:0&lstm_887/while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_887/while/lstm_cell_767/Sigmoid_2Sigmoid+lstm_887/while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_887/while/lstm_cell_767/Relu_1Relu&lstm_887/while/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_887/while/lstm_cell_767/mul_2Mul*lstm_887/while/lstm_cell_767/Sigmoid_2:y:01lstm_887/while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_887/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_887_while_placeholder_1lstm_887_while_placeholder&lstm_887/while/lstm_cell_767/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_887/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_887/while/addAddV2lstm_887_while_placeholderlstm_887/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_887/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_887/while/add_1AddV2*lstm_887_while_lstm_887_while_loop_counterlstm_887/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_887/while/IdentityIdentitylstm_887/while/add_1:z:0^lstm_887/while/NoOp*
T0*
_output_shapes
: ?
lstm_887/while/Identity_1Identity0lstm_887_while_lstm_887_while_maximum_iterations^lstm_887/while/NoOp*
T0*
_output_shapes
: t
lstm_887/while/Identity_2Identitylstm_887/while/add:z:0^lstm_887/while/NoOp*
T0*
_output_shapes
: ?
lstm_887/while/Identity_3IdentityClstm_887/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_887/while/NoOp*
T0*
_output_shapes
: ?
lstm_887/while/Identity_4Identity&lstm_887/while/lstm_cell_767/mul_2:z:0^lstm_887/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_887/while/Identity_5Identity&lstm_887/while/lstm_cell_767/add_1:z:0^lstm_887/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_887/while/NoOpNoOp4^lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp3^lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp5^lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_887_while_identity lstm_887/while/Identity:output:0"?
lstm_887_while_identity_1"lstm_887/while/Identity_1:output:0"?
lstm_887_while_identity_2"lstm_887/while/Identity_2:output:0"?
lstm_887_while_identity_3"lstm_887/while/Identity_3:output:0"?
lstm_887_while_identity_4"lstm_887/while/Identity_4:output:0"?
lstm_887_while_identity_5"lstm_887/while/Identity_5:output:0"T
'lstm_887_while_lstm_887_strided_slice_1)lstm_887_while_lstm_887_strided_slice_1_0"~
<lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource>lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource_0"?
=lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource?lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource_0"|
;lstm_887_while_lstm_cell_767_matmul_readvariableop_resource=lstm_887_while_lstm_cell_767_matmul_readvariableop_resource_0"?
clstm_887_while_tensorarrayv2read_tensorlistgetitem_lstm_887_tensorarrayunstack_tensorlistfromtensorelstm_887_while_tensorarrayv2read_tensorlistgetitem_lstm_887_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp3lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp2h
2lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp2lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp2l
4lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp4lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4639841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4639347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4639347___redundant_placeholder05
1while_while_cond_4639347___redundant_placeholder15
1while_while_cond_4639347___redundant_placeholder25
1while_while_cond_4639347___redundant_placeholder3
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
while_cond_4640356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4640356___redundant_placeholder05
1while_while_cond_4640356___redundant_placeholder15
1while_while_cond_4640356___redundant_placeholder25
1while_while_cond_4640356___redundant_placeholder3
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4640441

inputs>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4640357*
condR
while_cond_4640356*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_887_while_body_4641804.
*lstm_887_while_lstm_887_while_loop_counter4
0lstm_887_while_lstm_887_while_maximum_iterations
lstm_887_while_placeholder 
lstm_887_while_placeholder_1 
lstm_887_while_placeholder_2 
lstm_887_while_placeholder_3-
)lstm_887_while_lstm_887_strided_slice_1_0i
elstm_887_while_tensorarrayv2read_tensorlistgetitem_lstm_887_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_887_while_lstm_cell_767_matmul_readvariableop_resource_0:2(Q
?lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(L
>lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource_0:(
lstm_887_while_identity
lstm_887_while_identity_1
lstm_887_while_identity_2
lstm_887_while_identity_3
lstm_887_while_identity_4
lstm_887_while_identity_5+
'lstm_887_while_lstm_887_strided_slice_1g
clstm_887_while_tensorarrayv2read_tensorlistgetitem_lstm_887_tensorarrayunstack_tensorlistfromtensorM
;lstm_887_while_lstm_cell_767_matmul_readvariableop_resource:2(O
=lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource:
(J
<lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource:(??3lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp?2lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp?4lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp?
@lstm_887/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_887/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_887_while_tensorarrayv2read_tensorlistgetitem_lstm_887_tensorarrayunstack_tensorlistfromtensor_0lstm_887_while_placeholderIlstm_887/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_887/while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp=lstm_887_while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_887/while/lstm_cell_767/MatMulMatMul9lstm_887/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp?lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_887/while/lstm_cell_767/MatMul_1MatMullstm_887_while_placeholder_2<lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_887/while/lstm_cell_767/addAddV2-lstm_887/while/lstm_cell_767/MatMul:product:0/lstm_887/while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp>lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_887/while/lstm_cell_767/BiasAddBiasAdd$lstm_887/while/lstm_cell_767/add:z:0;lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_887/while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_887/while/lstm_cell_767/splitSplit5lstm_887/while/lstm_cell_767/split/split_dim:output:0-lstm_887/while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_887/while/lstm_cell_767/SigmoidSigmoid+lstm_887/while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_887/while/lstm_cell_767/Sigmoid_1Sigmoid+lstm_887/while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_887/while/lstm_cell_767/mulMul*lstm_887/while/lstm_cell_767/Sigmoid_1:y:0lstm_887_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_887/while/lstm_cell_767/ReluRelu+lstm_887/while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_887/while/lstm_cell_767/mul_1Mul(lstm_887/while/lstm_cell_767/Sigmoid:y:0/lstm_887/while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_887/while/lstm_cell_767/add_1AddV2$lstm_887/while/lstm_cell_767/mul:z:0&lstm_887/while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_887/while/lstm_cell_767/Sigmoid_2Sigmoid+lstm_887/while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_887/while/lstm_cell_767/Relu_1Relu&lstm_887/while/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_887/while/lstm_cell_767/mul_2Mul*lstm_887/while/lstm_cell_767/Sigmoid_2:y:01lstm_887/while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_887/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_887_while_placeholder_1lstm_887_while_placeholder&lstm_887/while/lstm_cell_767/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_887/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_887/while/addAddV2lstm_887_while_placeholderlstm_887/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_887/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_887/while/add_1AddV2*lstm_887_while_lstm_887_while_loop_counterlstm_887/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_887/while/IdentityIdentitylstm_887/while/add_1:z:0^lstm_887/while/NoOp*
T0*
_output_shapes
: ?
lstm_887/while/Identity_1Identity0lstm_887_while_lstm_887_while_maximum_iterations^lstm_887/while/NoOp*
T0*
_output_shapes
: t
lstm_887/while/Identity_2Identitylstm_887/while/add:z:0^lstm_887/while/NoOp*
T0*
_output_shapes
: ?
lstm_887/while/Identity_3IdentityClstm_887/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_887/while/NoOp*
T0*
_output_shapes
: ?
lstm_887/while/Identity_4Identity&lstm_887/while/lstm_cell_767/mul_2:z:0^lstm_887/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_887/while/Identity_5Identity&lstm_887/while/lstm_cell_767/add_1:z:0^lstm_887/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_887/while/NoOpNoOp4^lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp3^lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp5^lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_887_while_identity lstm_887/while/Identity:output:0"?
lstm_887_while_identity_1"lstm_887/while/Identity_1:output:0"?
lstm_887_while_identity_2"lstm_887/while/Identity_2:output:0"?
lstm_887_while_identity_3"lstm_887/while/Identity_3:output:0"?
lstm_887_while_identity_4"lstm_887/while/Identity_4:output:0"?
lstm_887_while_identity_5"lstm_887/while/Identity_5:output:0"T
'lstm_887_while_lstm_887_strided_slice_1)lstm_887_while_lstm_887_strided_slice_1_0"~
<lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource>lstm_887_while_lstm_cell_767_biasadd_readvariableop_resource_0"?
=lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource?lstm_887_while_lstm_cell_767_matmul_1_readvariableop_resource_0"|
;lstm_887_while_lstm_cell_767_matmul_readvariableop_resource=lstm_887_while_lstm_cell_767_matmul_readvariableop_resource_0"?
clstm_887_while_tensorarrayv2read_tensorlistgetitem_lstm_887_tensorarrayunstack_tensorlistfromtensorelstm_887_while_tensorarrayv2read_tensorlistgetitem_lstm_887_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp3lstm_887/while/lstm_cell_767/BiasAdd/ReadVariableOp2h
2lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp2lstm_887/while/lstm_cell_767/MatMul/ReadVariableOp2l
4lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp4lstm_887/while/lstm_cell_767/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4643859

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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4640606

inputs?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4640522*
condR
while_cond_4640521*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643599

inputs>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4643515*
condR
while_cond_4643514*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_4640986
lstm_885_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_885_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4638726o
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
_user_specified_namelstm_885_input
?C
?

lstm_886_while_body_4641238.
*lstm_886_while_lstm_886_while_loop_counter4
0lstm_886_while_lstm_886_while_maximum_iterations
lstm_886_while_placeholder 
lstm_886_while_placeholder_1 
lstm_886_while_placeholder_2 
lstm_886_while_placeholder_3-
)lstm_886_while_lstm_886_strided_slice_1_0i
elstm_886_while_tensorarrayv2read_tensorlistgetitem_lstm_886_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_886_while_lstm_cell_766_matmul_readvariableop_resource_0:	d?R
?lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?M
>lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
lstm_886_while_identity
lstm_886_while_identity_1
lstm_886_while_identity_2
lstm_886_while_identity_3
lstm_886_while_identity_4
lstm_886_while_identity_5+
'lstm_886_while_lstm_886_strided_slice_1g
clstm_886_while_tensorarrayv2read_tensorlistgetitem_lstm_886_tensorarrayunstack_tensorlistfromtensorN
;lstm_886_while_lstm_cell_766_matmul_readvariableop_resource:	d?P
=lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource:	2?K
<lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource:	???3lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp?2lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp?4lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp?
@lstm_886/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_886/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_886_while_tensorarrayv2read_tensorlistgetitem_lstm_886_tensorarrayunstack_tensorlistfromtensor_0lstm_886_while_placeholderIlstm_886/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_886/while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp=lstm_886_while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_886/while/lstm_cell_766/MatMulMatMul9lstm_886/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp?lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_886/while/lstm_cell_766/MatMul_1MatMullstm_886_while_placeholder_2<lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_886/while/lstm_cell_766/addAddV2-lstm_886/while/lstm_cell_766/MatMul:product:0/lstm_886/while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp>lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_886/while/lstm_cell_766/BiasAddBiasAdd$lstm_886/while/lstm_cell_766/add:z:0;lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_886/while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_886/while/lstm_cell_766/splitSplit5lstm_886/while/lstm_cell_766/split/split_dim:output:0-lstm_886/while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_886/while/lstm_cell_766/SigmoidSigmoid+lstm_886/while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_886/while/lstm_cell_766/Sigmoid_1Sigmoid+lstm_886/while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_886/while/lstm_cell_766/mulMul*lstm_886/while/lstm_cell_766/Sigmoid_1:y:0lstm_886_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_886/while/lstm_cell_766/ReluRelu+lstm_886/while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_886/while/lstm_cell_766/mul_1Mul(lstm_886/while/lstm_cell_766/Sigmoid:y:0/lstm_886/while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_886/while/lstm_cell_766/add_1AddV2$lstm_886/while/lstm_cell_766/mul:z:0&lstm_886/while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_886/while/lstm_cell_766/Sigmoid_2Sigmoid+lstm_886/while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_886/while/lstm_cell_766/Relu_1Relu&lstm_886/while/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_886/while/lstm_cell_766/mul_2Mul*lstm_886/while/lstm_cell_766/Sigmoid_2:y:01lstm_886/while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_886/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_886_while_placeholder_1lstm_886_while_placeholder&lstm_886/while/lstm_cell_766/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_886/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_886/while/addAddV2lstm_886_while_placeholderlstm_886/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_886/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_886/while/add_1AddV2*lstm_886_while_lstm_886_while_loop_counterlstm_886/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_886/while/IdentityIdentitylstm_886/while/add_1:z:0^lstm_886/while/NoOp*
T0*
_output_shapes
: ?
lstm_886/while/Identity_1Identity0lstm_886_while_lstm_886_while_maximum_iterations^lstm_886/while/NoOp*
T0*
_output_shapes
: t
lstm_886/while/Identity_2Identitylstm_886/while/add:z:0^lstm_886/while/NoOp*
T0*
_output_shapes
: ?
lstm_886/while/Identity_3IdentityClstm_886/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_886/while/NoOp*
T0*
_output_shapes
: ?
lstm_886/while/Identity_4Identity&lstm_886/while/lstm_cell_766/mul_2:z:0^lstm_886/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_886/while/Identity_5Identity&lstm_886/while/lstm_cell_766/add_1:z:0^lstm_886/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_886/while/NoOpNoOp4^lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp3^lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp5^lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_886_while_identity lstm_886/while/Identity:output:0"?
lstm_886_while_identity_1"lstm_886/while/Identity_1:output:0"?
lstm_886_while_identity_2"lstm_886/while/Identity_2:output:0"?
lstm_886_while_identity_3"lstm_886/while/Identity_3:output:0"?
lstm_886_while_identity_4"lstm_886/while/Identity_4:output:0"?
lstm_886_while_identity_5"lstm_886/while/Identity_5:output:0"T
'lstm_886_while_lstm_886_strided_slice_1)lstm_886_while_lstm_886_strided_slice_1_0"~
<lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource>lstm_886_while_lstm_cell_766_biasadd_readvariableop_resource_0"?
=lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource?lstm_886_while_lstm_cell_766_matmul_1_readvariableop_resource_0"|
;lstm_886_while_lstm_cell_766_matmul_readvariableop_resource=lstm_886_while_lstm_cell_766_matmul_readvariableop_resource_0"?
clstm_886_while_tensorarrayv2read_tensorlistgetitem_lstm_886_tensorarrayunstack_tensorlistfromtensorelstm_886_while_tensorarrayv2read_tensorlistgetitem_lstm_886_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp3lstm_886/while/lstm_cell_766/BiasAdd/ReadVariableOp2h
2lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp2lstm_886/while/lstm_cell_766/MatMul/ReadVariableOp2l
4lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp4lstm_886/while/lstm_cell_766/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4643126

inputs?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4643042*
condR
while_cond_4643041*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_885_while_cond_4641098.
*lstm_885_while_lstm_885_while_loop_counter4
0lstm_885_while_lstm_885_while_maximum_iterations
lstm_885_while_placeholder 
lstm_885_while_placeholder_1 
lstm_885_while_placeholder_2 
lstm_885_while_placeholder_30
,lstm_885_while_less_lstm_885_strided_slice_1G
Clstm_885_while_lstm_885_while_cond_4641098___redundant_placeholder0G
Clstm_885_while_lstm_885_while_cond_4641098___redundant_placeholder1G
Clstm_885_while_lstm_885_while_cond_4641098___redundant_placeholder2G
Clstm_885_while_lstm_885_while_cond_4641098___redundant_placeholder3
lstm_885_while_identity
?
lstm_885/while/LessLesslstm_885_while_placeholder,lstm_885_while_less_lstm_885_strided_slice_1*
T0*
_output_shapes
: ]
lstm_885/while/IdentityIdentitylstm_885/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_885_while_identity lstm_885/while/Identity:output:0*(
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
lstm_886_while_cond_4641237.
*lstm_886_while_lstm_886_while_loop_counter4
0lstm_886_while_lstm_886_while_maximum_iterations
lstm_886_while_placeholder 
lstm_886_while_placeholder_1 
lstm_886_while_placeholder_2 
lstm_886_while_placeholder_30
,lstm_886_while_less_lstm_886_strided_slice_1G
Clstm_886_while_lstm_886_while_cond_4641237___redundant_placeholder0G
Clstm_886_while_lstm_886_while_cond_4641237___redundant_placeholder1G
Clstm_886_while_lstm_886_while_cond_4641237___redundant_placeholder2G
Clstm_886_while_lstm_886_while_cond_4641237___redundant_placeholder3
lstm_886_while_identity
?
lstm_886/while/LessLesslstm_886_while_placeholder,lstm_886_while_less_lstm_886_strided_slice_1*
T0*
_output_shapes
: ]
lstm_886/while/IdentityIdentitylstm_886/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_886_while_identity lstm_886/while/Identity:output:0*(
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
*__inference_lstm_886_layer_call_fn_4642532
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4639417|
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
?T
?
*sequential_295_lstm_885_while_body_4638358L
Hsequential_295_lstm_885_while_sequential_295_lstm_885_while_loop_counterR
Nsequential_295_lstm_885_while_sequential_295_lstm_885_while_maximum_iterations-
)sequential_295_lstm_885_while_placeholder/
+sequential_295_lstm_885_while_placeholder_1/
+sequential_295_lstm_885_while_placeholder_2/
+sequential_295_lstm_885_while_placeholder_3K
Gsequential_295_lstm_885_while_sequential_295_lstm_885_strided_slice_1_0?
?sequential_295_lstm_885_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_885_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_295_lstm_885_while_lstm_cell_765_matmul_readvariableop_resource_0:	?a
Nsequential_295_lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?\
Msequential_295_lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource_0:	?*
&sequential_295_lstm_885_while_identity,
(sequential_295_lstm_885_while_identity_1,
(sequential_295_lstm_885_while_identity_2,
(sequential_295_lstm_885_while_identity_3,
(sequential_295_lstm_885_while_identity_4,
(sequential_295_lstm_885_while_identity_5I
Esequential_295_lstm_885_while_sequential_295_lstm_885_strided_slice_1?
?sequential_295_lstm_885_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_885_tensorarrayunstack_tensorlistfromtensor]
Jsequential_295_lstm_885_while_lstm_cell_765_matmul_readvariableop_resource:	?_
Lsequential_295_lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource:	d?Z
Ksequential_295_lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource:	???Bsequential_295/lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp?Asequential_295/lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp?Csequential_295/lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp?
Osequential_295/lstm_885/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_295/lstm_885/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_295_lstm_885_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_885_tensorarrayunstack_tensorlistfromtensor_0)sequential_295_lstm_885_while_placeholderXsequential_295/lstm_885/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_295/lstm_885/while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOpLsequential_295_lstm_885_while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_295/lstm_885/while/lstm_cell_765/MatMulMatMulHsequential_295/lstm_885/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_295/lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_295/lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOpNsequential_295_lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_295/lstm_885/while/lstm_cell_765/MatMul_1MatMul+sequential_295_lstm_885_while_placeholder_2Ksequential_295/lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_295/lstm_885/while/lstm_cell_765/addAddV2<sequential_295/lstm_885/while/lstm_cell_765/MatMul:product:0>sequential_295/lstm_885/while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_295/lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOpMsequential_295_lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_295/lstm_885/while/lstm_cell_765/BiasAddBiasAdd3sequential_295/lstm_885/while/lstm_cell_765/add:z:0Jsequential_295/lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_295/lstm_885/while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_295/lstm_885/while/lstm_cell_765/splitSplitDsequential_295/lstm_885/while/lstm_cell_765/split/split_dim:output:0<sequential_295/lstm_885/while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_295/lstm_885/while/lstm_cell_765/SigmoidSigmoid:sequential_295/lstm_885/while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_295/lstm_885/while/lstm_cell_765/Sigmoid_1Sigmoid:sequential_295/lstm_885/while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_295/lstm_885/while/lstm_cell_765/mulMul9sequential_295/lstm_885/while/lstm_cell_765/Sigmoid_1:y:0+sequential_295_lstm_885_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_295/lstm_885/while/lstm_cell_765/ReluRelu:sequential_295/lstm_885/while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_295/lstm_885/while/lstm_cell_765/mul_1Mul7sequential_295/lstm_885/while/lstm_cell_765/Sigmoid:y:0>sequential_295/lstm_885/while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_295/lstm_885/while/lstm_cell_765/add_1AddV23sequential_295/lstm_885/while/lstm_cell_765/mul:z:05sequential_295/lstm_885/while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_295/lstm_885/while/lstm_cell_765/Sigmoid_2Sigmoid:sequential_295/lstm_885/while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_295/lstm_885/while/lstm_cell_765/Relu_1Relu5sequential_295/lstm_885/while/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_295/lstm_885/while/lstm_cell_765/mul_2Mul9sequential_295/lstm_885/while/lstm_cell_765/Sigmoid_2:y:0@sequential_295/lstm_885/while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_295/lstm_885/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_295_lstm_885_while_placeholder_1)sequential_295_lstm_885_while_placeholder5sequential_295/lstm_885/while/lstm_cell_765/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_295/lstm_885/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_295/lstm_885/while/addAddV2)sequential_295_lstm_885_while_placeholder,sequential_295/lstm_885/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_295/lstm_885/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_295/lstm_885/while/add_1AddV2Hsequential_295_lstm_885_while_sequential_295_lstm_885_while_loop_counter.sequential_295/lstm_885/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_295/lstm_885/while/IdentityIdentity'sequential_295/lstm_885/while/add_1:z:0#^sequential_295/lstm_885/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_885/while/Identity_1IdentityNsequential_295_lstm_885_while_sequential_295_lstm_885_while_maximum_iterations#^sequential_295/lstm_885/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_885/while/Identity_2Identity%sequential_295/lstm_885/while/add:z:0#^sequential_295/lstm_885/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_885/while/Identity_3IdentityRsequential_295/lstm_885/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_295/lstm_885/while/NoOp*
T0*
_output_shapes
: ?
(sequential_295/lstm_885/while/Identity_4Identity5sequential_295/lstm_885/while/lstm_cell_765/mul_2:z:0#^sequential_295/lstm_885/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_295/lstm_885/while/Identity_5Identity5sequential_295/lstm_885/while/lstm_cell_765/add_1:z:0#^sequential_295/lstm_885/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_295/lstm_885/while/NoOpNoOpC^sequential_295/lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOpB^sequential_295/lstm_885/while/lstm_cell_765/MatMul/ReadVariableOpD^sequential_295/lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_295_lstm_885_while_identity/sequential_295/lstm_885/while/Identity:output:0"]
(sequential_295_lstm_885_while_identity_11sequential_295/lstm_885/while/Identity_1:output:0"]
(sequential_295_lstm_885_while_identity_21sequential_295/lstm_885/while/Identity_2:output:0"]
(sequential_295_lstm_885_while_identity_31sequential_295/lstm_885/while/Identity_3:output:0"]
(sequential_295_lstm_885_while_identity_41sequential_295/lstm_885/while/Identity_4:output:0"]
(sequential_295_lstm_885_while_identity_51sequential_295/lstm_885/while/Identity_5:output:0"?
Ksequential_295_lstm_885_while_lstm_cell_765_biasadd_readvariableop_resourceMsequential_295_lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource_0"?
Lsequential_295_lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resourceNsequential_295_lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource_0"?
Jsequential_295_lstm_885_while_lstm_cell_765_matmul_readvariableop_resourceLsequential_295_lstm_885_while_lstm_cell_765_matmul_readvariableop_resource_0"?
Esequential_295_lstm_885_while_sequential_295_lstm_885_strided_slice_1Gsequential_295_lstm_885_while_sequential_295_lstm_885_strided_slice_1_0"?
?sequential_295_lstm_885_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_885_tensorarrayunstack_tensorlistfromtensor?sequential_295_lstm_885_while_tensorarrayv2read_tensorlistgetitem_sequential_295_lstm_885_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_295/lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOpBsequential_295/lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp2?
Asequential_295/lstm_885/while/lstm_cell_765/MatMul/ReadVariableOpAsequential_295/lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp2?
Csequential_295/lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOpCsequential_295/lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_885_while_body_4641526.
*lstm_885_while_lstm_885_while_loop_counter4
0lstm_885_while_lstm_885_while_maximum_iterations
lstm_885_while_placeholder 
lstm_885_while_placeholder_1 
lstm_885_while_placeholder_2 
lstm_885_while_placeholder_3-
)lstm_885_while_lstm_885_strided_slice_1_0i
elstm_885_while_tensorarrayv2read_tensorlistgetitem_lstm_885_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_885_while_lstm_cell_765_matmul_readvariableop_resource_0:	?R
?lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?M
>lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
lstm_885_while_identity
lstm_885_while_identity_1
lstm_885_while_identity_2
lstm_885_while_identity_3
lstm_885_while_identity_4
lstm_885_while_identity_5+
'lstm_885_while_lstm_885_strided_slice_1g
clstm_885_while_tensorarrayv2read_tensorlistgetitem_lstm_885_tensorarrayunstack_tensorlistfromtensorN
;lstm_885_while_lstm_cell_765_matmul_readvariableop_resource:	?P
=lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource:	d?K
<lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource:	???3lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp?2lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp?4lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp?
@lstm_885/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_885/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_885_while_tensorarrayv2read_tensorlistgetitem_lstm_885_tensorarrayunstack_tensorlistfromtensor_0lstm_885_while_placeholderIlstm_885/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_885/while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp=lstm_885_while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_885/while/lstm_cell_765/MatMulMatMul9lstm_885/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp?lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_885/while/lstm_cell_765/MatMul_1MatMullstm_885_while_placeholder_2<lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_885/while/lstm_cell_765/addAddV2-lstm_885/while/lstm_cell_765/MatMul:product:0/lstm_885/while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp>lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_885/while/lstm_cell_765/BiasAddBiasAdd$lstm_885/while/lstm_cell_765/add:z:0;lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_885/while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_885/while/lstm_cell_765/splitSplit5lstm_885/while/lstm_cell_765/split/split_dim:output:0-lstm_885/while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_885/while/lstm_cell_765/SigmoidSigmoid+lstm_885/while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_885/while/lstm_cell_765/Sigmoid_1Sigmoid+lstm_885/while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_885/while/lstm_cell_765/mulMul*lstm_885/while/lstm_cell_765/Sigmoid_1:y:0lstm_885_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_885/while/lstm_cell_765/ReluRelu+lstm_885/while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_885/while/lstm_cell_765/mul_1Mul(lstm_885/while/lstm_cell_765/Sigmoid:y:0/lstm_885/while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_885/while/lstm_cell_765/add_1AddV2$lstm_885/while/lstm_cell_765/mul:z:0&lstm_885/while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_885/while/lstm_cell_765/Sigmoid_2Sigmoid+lstm_885/while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_885/while/lstm_cell_765/Relu_1Relu&lstm_885/while/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_885/while/lstm_cell_765/mul_2Mul*lstm_885/while/lstm_cell_765/Sigmoid_2:y:01lstm_885/while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_885/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_885_while_placeholder_1lstm_885_while_placeholder&lstm_885/while/lstm_cell_765/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_885/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_885/while/addAddV2lstm_885_while_placeholderlstm_885/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_885/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_885/while/add_1AddV2*lstm_885_while_lstm_885_while_loop_counterlstm_885/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_885/while/IdentityIdentitylstm_885/while/add_1:z:0^lstm_885/while/NoOp*
T0*
_output_shapes
: ?
lstm_885/while/Identity_1Identity0lstm_885_while_lstm_885_while_maximum_iterations^lstm_885/while/NoOp*
T0*
_output_shapes
: t
lstm_885/while/Identity_2Identitylstm_885/while/add:z:0^lstm_885/while/NoOp*
T0*
_output_shapes
: ?
lstm_885/while/Identity_3IdentityClstm_885/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_885/while/NoOp*
T0*
_output_shapes
: ?
lstm_885/while/Identity_4Identity&lstm_885/while/lstm_cell_765/mul_2:z:0^lstm_885/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_885/while/Identity_5Identity&lstm_885/while/lstm_cell_765/add_1:z:0^lstm_885/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_885/while/NoOpNoOp4^lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp3^lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp5^lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_885_while_identity lstm_885/while/Identity:output:0"?
lstm_885_while_identity_1"lstm_885/while/Identity_1:output:0"?
lstm_885_while_identity_2"lstm_885/while/Identity_2:output:0"?
lstm_885_while_identity_3"lstm_885/while/Identity_3:output:0"?
lstm_885_while_identity_4"lstm_885/while/Identity_4:output:0"?
lstm_885_while_identity_5"lstm_885/while/Identity_5:output:0"T
'lstm_885_while_lstm_885_strided_slice_1)lstm_885_while_lstm_885_strided_slice_1_0"~
<lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource>lstm_885_while_lstm_cell_765_biasadd_readvariableop_resource_0"?
=lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource?lstm_885_while_lstm_cell_765_matmul_1_readvariableop_resource_0"|
;lstm_885_while_lstm_cell_765_matmul_readvariableop_resource=lstm_885_while_lstm_cell_765_matmul_readvariableop_resource_0"?
clstm_885_while_tensorarrayv2read_tensorlistgetitem_lstm_885_tensorarrayunstack_tensorlistfromtensorelstm_885_while_tensorarrayv2read_tensorlistgetitem_lstm_885_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp3lstm_885/while/lstm_cell_765/BiasAdd/ReadVariableOp2h
2lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp2lstm_885/while/lstm_cell_765/MatMul/ReadVariableOp2l
4lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp4lstm_885/while/lstm_cell_765/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4642426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642081
inputs_0?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4641997*
condR
while_cond_4641996*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4640140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4640140___redundant_placeholder05
1while_while_cond_4640140___redundant_placeholder15
1while_while_cond_4640140___redundant_placeholder25
1while_while_cond_4640140___redundant_placeholder3
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4639767

inputs'
lstm_cell_767_4639685:2('
lstm_cell_767_4639687:
(#
lstm_cell_767_4639689:(
identity??%lstm_cell_767/StatefulPartitionedCall?while;
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
%lstm_cell_767/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_767_4639685lstm_cell_767_4639687lstm_cell_767_4639689*
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4639639n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_767_4639685lstm_cell_767_4639687lstm_cell_767_4639689*
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
while_body_4639698*
condR
while_cond_4639697*K
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
NoOpNoOp&^lstm_cell_767/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_767/StatefulPartitionedCall%lstm_cell_767/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640839

inputs#
lstm_885_4640812:	?#
lstm_885_4640814:	d?
lstm_885_4640816:	?#
lstm_886_4640819:	d?#
lstm_886_4640821:	2?
lstm_886_4640823:	?"
lstm_887_4640826:2("
lstm_887_4640828:
(
lstm_887_4640830:(#
dense_295_4640833:

dense_295_4640835:
identity??!dense_295/StatefulPartitionedCall? lstm_885/StatefulPartitionedCall? lstm_886/StatefulPartitionedCall? lstm_887/StatefulPartitionedCall?
 lstm_885/StatefulPartitionedCallStatefulPartitionedCallinputslstm_885_4640812lstm_885_4640814lstm_885_4640816*
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4640771?
 lstm_886/StatefulPartitionedCallStatefulPartitionedCall)lstm_885/StatefulPartitionedCall:output:0lstm_886_4640819lstm_886_4640821lstm_886_4640823*
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4640606?
 lstm_887/StatefulPartitionedCallStatefulPartitionedCall)lstm_886/StatefulPartitionedCall:output:0lstm_887_4640826lstm_887_4640828lstm_887_4640830*
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4640441?
!dense_295/StatefulPartitionedCallStatefulPartitionedCall)lstm_887/StatefulPartitionedCall:output:0dense_295_4640833dense_295_4640835*
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
F__inference_dense_295_layer_call_and_return_conditional_losses_4640243y
IdentityIdentity*dense_295/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_295/StatefulPartitionedCall!^lstm_885/StatefulPartitionedCall!^lstm_886/StatefulPartitionedCall!^lstm_887/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_295/StatefulPartitionedCall!dense_295/StatefulPartitionedCall2D
 lstm_885/StatefulPartitionedCall lstm_885/StatefulPartitionedCall2D
 lstm_886/StatefulPartitionedCall lstm_886/StatefulPartitionedCall2D
 lstm_887/StatefulPartitionedCall lstm_887/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4643514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4643514___redundant_placeholder05
1while_while_cond_4643514___redundant_placeholder15
1while_while_cond_4643514___redundant_placeholder25
1while_while_cond_4643514___redundant_placeholder3
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
while_body_4643658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640921
lstm_885_input#
lstm_885_4640894:	?#
lstm_885_4640896:	d?
lstm_885_4640898:	?#
lstm_886_4640901:	d?#
lstm_886_4640903:	2?
lstm_886_4640905:	?"
lstm_887_4640908:2("
lstm_887_4640910:
(
lstm_887_4640912:(#
dense_295_4640915:

dense_295_4640917:
identity??!dense_295/StatefulPartitionedCall? lstm_885/StatefulPartitionedCall? lstm_886/StatefulPartitionedCall? lstm_887/StatefulPartitionedCall?
 lstm_885/StatefulPartitionedCallStatefulPartitionedCalllstm_885_inputlstm_885_4640894lstm_885_4640896lstm_885_4640898*
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4639925?
 lstm_886/StatefulPartitionedCallStatefulPartitionedCall)lstm_885/StatefulPartitionedCall:output:0lstm_886_4640901lstm_886_4640903lstm_886_4640905*
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4640075?
 lstm_887/StatefulPartitionedCallStatefulPartitionedCall)lstm_886/StatefulPartitionedCall:output:0lstm_887_4640908lstm_887_4640910lstm_887_4640912*
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4640225?
!dense_295/StatefulPartitionedCallStatefulPartitionedCall)lstm_887/StatefulPartitionedCall:output:0dense_295_4640915dense_295_4640917*
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
F__inference_dense_295_layer_call_and_return_conditional_losses_4640243y
IdentityIdentity*dense_295/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_295/StatefulPartitionedCall!^lstm_885/StatefulPartitionedCall!^lstm_886/StatefulPartitionedCall!^lstm_887/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_295/StatefulPartitionedCall!dense_295/StatefulPartitionedCall2D
 lstm_885/StatefulPartitionedCall lstm_885/StatefulPartitionedCall2D
 lstm_886/StatefulPartitionedCall lstm_886/StatefulPartitionedCall2D
 lstm_887/StatefulPartitionedCall lstm_887/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_885_input
?J
?
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642367

inputs?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4642283*
condR
while_cond_4642282*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_295_layer_call_fn_4640891
lstm_885_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_885_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640839o
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
_user_specified_namelstm_885_input
?
?
/__inference_lstm_cell_767_layer_call_fn_4643991

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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4639639o
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
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_885_input;
 serving_default_lstm_885_input:0?????????=
	dense_2950
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
2dense_295/kernel
:2dense_295/bias
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
0:.	?2lstm_885/lstm_cell_885/kernel
::8	d?2'lstm_885/lstm_cell_885/recurrent_kernel
*:(?2lstm_885/lstm_cell_885/bias
0:.	d?2lstm_886/lstm_cell_886/kernel
::8	2?2'lstm_886/lstm_cell_886/recurrent_kernel
*:(?2lstm_886/lstm_cell_886/bias
/:-2(2lstm_887/lstm_cell_887/kernel
9:7
(2'lstm_887/lstm_cell_887/recurrent_kernel
):'(2lstm_887/lstm_cell_887/bias
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
2Adam/dense_295/kernel/m
!:2Adam/dense_295/bias/m
5:3	?2$Adam/lstm_885/lstm_cell_885/kernel/m
?:=	d?2.Adam/lstm_885/lstm_cell_885/recurrent_kernel/m
/:-?2"Adam/lstm_885/lstm_cell_885/bias/m
5:3	d?2$Adam/lstm_886/lstm_cell_886/kernel/m
?:=	2?2.Adam/lstm_886/lstm_cell_886/recurrent_kernel/m
/:-?2"Adam/lstm_886/lstm_cell_886/bias/m
4:22(2$Adam/lstm_887/lstm_cell_887/kernel/m
>:<
(2.Adam/lstm_887/lstm_cell_887/recurrent_kernel/m
.:,(2"Adam/lstm_887/lstm_cell_887/bias/m
':%
2Adam/dense_295/kernel/v
!:2Adam/dense_295/bias/v
5:3	?2$Adam/lstm_885/lstm_cell_885/kernel/v
?:=	d?2.Adam/lstm_885/lstm_cell_885/recurrent_kernel/v
/:-?2"Adam/lstm_885/lstm_cell_885/bias/v
5:3	d?2$Adam/lstm_886/lstm_cell_886/kernel/v
?:=	2?2.Adam/lstm_886/lstm_cell_886/recurrent_kernel/v
/:-?2"Adam/lstm_886/lstm_cell_886/bias/v
4:22(2$Adam/lstm_887/lstm_cell_887/kernel/v
>:<
(2.Adam/lstm_887/lstm_cell_887/recurrent_kernel/v
.:,(2"Adam/lstm_887/lstm_cell_887/bias/v
?2?
0__inference_sequential_295_layer_call_fn_4640275
0__inference_sequential_295_layer_call_fn_4641013
0__inference_sequential_295_layer_call_fn_4641040
0__inference_sequential_295_layer_call_fn_4640891?
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
K__inference_sequential_295_layer_call_and_return_conditional_losses_4641467
K__inference_sequential_295_layer_call_and_return_conditional_losses_4641894
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640921
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640951?
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
"__inference__wrapped_model_4638726lstm_885_input"?
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
*__inference_lstm_885_layer_call_fn_4641905
*__inference_lstm_885_layer_call_fn_4641916
*__inference_lstm_885_layer_call_fn_4641927
*__inference_lstm_885_layer_call_fn_4641938?
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642081
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642224
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642367
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642510?
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
*__inference_lstm_886_layer_call_fn_4642521
*__inference_lstm_886_layer_call_fn_4642532
*__inference_lstm_886_layer_call_fn_4642543
*__inference_lstm_886_layer_call_fn_4642554?
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4642697
E__inference_lstm_886_layer_call_and_return_conditional_losses_4642840
E__inference_lstm_886_layer_call_and_return_conditional_losses_4642983
E__inference_lstm_886_layer_call_and_return_conditional_losses_4643126?
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
*__inference_lstm_887_layer_call_fn_4643137
*__inference_lstm_887_layer_call_fn_4643148
*__inference_lstm_887_layer_call_fn_4643159
*__inference_lstm_887_layer_call_fn_4643170?
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643313
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643456
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643599
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643742?
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
+__inference_dense_295_layer_call_fn_4643751?
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
F__inference_dense_295_layer_call_and_return_conditional_losses_4643761?
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
%__inference_signature_wrapper_4640986lstm_885_input"?
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
/__inference_lstm_cell_765_layer_call_fn_4643778
/__inference_lstm_cell_765_layer_call_fn_4643795?
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4643827
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4643859?
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
/__inference_lstm_cell_766_layer_call_fn_4643876
/__inference_lstm_cell_766_layer_call_fn_4643893?
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4643925
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4643957?
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
/__inference_lstm_cell_767_layer_call_fn_4643974
/__inference_lstm_cell_767_layer_call_fn_4643991?
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4644023
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4644055?
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
"__inference__wrapped_model_4638726?-./012345!";?8
1?.
,?)
lstm_885_input?????????
? "5?2
0
	dense_295#? 
	dense_295??????????
F__inference_dense_295_layer_call_and_return_conditional_losses_4643761\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_295_layer_call_fn_4643751O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642081?-./O?L
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642224?-./O?L
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642367q-./??<
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
E__inference_lstm_885_layer_call_and_return_conditional_losses_4642510q-./??<
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
*__inference_lstm_885_layer_call_fn_4641905}-./O?L
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
*__inference_lstm_885_layer_call_fn_4641916}-./O?L
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
*__inference_lstm_885_layer_call_fn_4641927d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_885_layer_call_fn_4641938d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_886_layer_call_and_return_conditional_losses_4642697?012O?L
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4642840?012O?L
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4642983q012??<
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
E__inference_lstm_886_layer_call_and_return_conditional_losses_4643126q012??<
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
*__inference_lstm_886_layer_call_fn_4642521}012O?L
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
*__inference_lstm_886_layer_call_fn_4642532}012O?L
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
*__inference_lstm_886_layer_call_fn_4642543d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_886_layer_call_fn_4642554d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643313}345O?L
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643456}345O?L
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643599m345??<
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
E__inference_lstm_887_layer_call_and_return_conditional_losses_4643742m345??<
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
*__inference_lstm_887_layer_call_fn_4643137p345O?L
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
*__inference_lstm_887_layer_call_fn_4643148p345O?L
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
*__inference_lstm_887_layer_call_fn_4643159`345??<
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
*__inference_lstm_887_layer_call_fn_4643170`345??<
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4643827?-./??}
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4643859?-./??}
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
/__inference_lstm_cell_765_layer_call_fn_4643778?-./??}
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
/__inference_lstm_cell_765_layer_call_fn_4643795?-./??}
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4643925?012??}
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4643957?012??}
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
/__inference_lstm_cell_766_layer_call_fn_4643876?012??}
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
/__inference_lstm_cell_766_layer_call_fn_4643893?012??}
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4644023?345??}
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4644055?345??}
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
/__inference_lstm_cell_767_layer_call_fn_4643974?345??}
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
/__inference_lstm_cell_767_layer_call_fn_4643991?345??}
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
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640921y-./012345!"C?@
9?6
,?)
lstm_885_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_295_layer_call_and_return_conditional_losses_4640951y-./012345!"C?@
9?6
,?)
lstm_885_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_295_layer_call_and_return_conditional_losses_4641467q-./012345!";?8
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
K__inference_sequential_295_layer_call_and_return_conditional_losses_4641894q-./012345!";?8
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
0__inference_sequential_295_layer_call_fn_4640275l-./012345!"C?@
9?6
,?)
lstm_885_input?????????
p 

 
? "???????????
0__inference_sequential_295_layer_call_fn_4640891l-./012345!"C?@
9?6
,?)
lstm_885_input?????????
p

 
? "???????????
0__inference_sequential_295_layer_call_fn_4641013d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_295_layer_call_fn_4641040d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4640986?-./012345!"M?J
? 
C?@
>
lstm_885_input,?)
lstm_885_input?????????"5?2
0
	dense_295#? 
	dense_295?????????