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
dense_224/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_224/kernel
u
$dense_224/kernel/Read/ReadVariableOpReadVariableOpdense_224/kernel*
_output_shapes

:
*
dtype0
t
dense_224/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_224/bias
m
"dense_224/bias/Read/ReadVariableOpReadVariableOpdense_224/bias*
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
lstm_672/lstm_cell_672/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_672/lstm_cell_672/kernel
?
1lstm_672/lstm_cell_672/kernel/Read/ReadVariableOpReadVariableOplstm_672/lstm_cell_672/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_672/lstm_cell_672/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_672/lstm_cell_672/recurrent_kernel
?
;lstm_672/lstm_cell_672/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_672/lstm_cell_672/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_672/lstm_cell_672/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_672/lstm_cell_672/bias
?
/lstm_672/lstm_cell_672/bias/Read/ReadVariableOpReadVariableOplstm_672/lstm_cell_672/bias*
_output_shapes	
:?*
dtype0
?
lstm_673/lstm_cell_673/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_673/lstm_cell_673/kernel
?
1lstm_673/lstm_cell_673/kernel/Read/ReadVariableOpReadVariableOplstm_673/lstm_cell_673/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_673/lstm_cell_673/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_673/lstm_cell_673/recurrent_kernel
?
;lstm_673/lstm_cell_673/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_673/lstm_cell_673/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_673/lstm_cell_673/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_673/lstm_cell_673/bias
?
/lstm_673/lstm_cell_673/bias/Read/ReadVariableOpReadVariableOplstm_673/lstm_cell_673/bias*
_output_shapes	
:?*
dtype0
?
lstm_674/lstm_cell_674/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_674/lstm_cell_674/kernel
?
1lstm_674/lstm_cell_674/kernel/Read/ReadVariableOpReadVariableOplstm_674/lstm_cell_674/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_674/lstm_cell_674/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_674/lstm_cell_674/recurrent_kernel
?
;lstm_674/lstm_cell_674/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_674/lstm_cell_674/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_674/lstm_cell_674/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_674/lstm_cell_674/bias
?
/lstm_674/lstm_cell_674/bias/Read/ReadVariableOpReadVariableOplstm_674/lstm_cell_674/bias*
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
Adam/dense_224/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_224/kernel/m
?
+Adam/dense_224/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_224/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_224/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_224/bias/m
{
)Adam/dense_224/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_224/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_672/lstm_cell_672/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_672/lstm_cell_672/kernel/m
?
8Adam/lstm_672/lstm_cell_672/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_672/lstm_cell_672/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_672/lstm_cell_672/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_672/lstm_cell_672/recurrent_kernel/m
?
BAdam/lstm_672/lstm_cell_672/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_672/lstm_cell_672/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_672/lstm_cell_672/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_672/lstm_cell_672/bias/m
?
6Adam/lstm_672/lstm_cell_672/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_672/lstm_cell_672/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_673/lstm_cell_673/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_673/lstm_cell_673/kernel/m
?
8Adam/lstm_673/lstm_cell_673/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_673/lstm_cell_673/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_673/lstm_cell_673/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_673/lstm_cell_673/recurrent_kernel/m
?
BAdam/lstm_673/lstm_cell_673/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_673/lstm_cell_673/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_673/lstm_cell_673/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_673/lstm_cell_673/bias/m
?
6Adam/lstm_673/lstm_cell_673/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_673/lstm_cell_673/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_674/lstm_cell_674/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_674/lstm_cell_674/kernel/m
?
8Adam/lstm_674/lstm_cell_674/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_674/lstm_cell_674/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_674/lstm_cell_674/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_674/lstm_cell_674/recurrent_kernel/m
?
BAdam/lstm_674/lstm_cell_674/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_674/lstm_cell_674/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_674/lstm_cell_674/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_674/lstm_cell_674/bias/m
?
6Adam/lstm_674/lstm_cell_674/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_674/lstm_cell_674/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_224/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_224/kernel/v
?
+Adam/dense_224/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_224/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_224/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_224/bias/v
{
)Adam/dense_224/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_224/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_672/lstm_cell_672/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_672/lstm_cell_672/kernel/v
?
8Adam/lstm_672/lstm_cell_672/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_672/lstm_cell_672/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_672/lstm_cell_672/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_672/lstm_cell_672/recurrent_kernel/v
?
BAdam/lstm_672/lstm_cell_672/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_672/lstm_cell_672/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_672/lstm_cell_672/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_672/lstm_cell_672/bias/v
?
6Adam/lstm_672/lstm_cell_672/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_672/lstm_cell_672/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_673/lstm_cell_673/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_673/lstm_cell_673/kernel/v
?
8Adam/lstm_673/lstm_cell_673/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_673/lstm_cell_673/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_673/lstm_cell_673/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_673/lstm_cell_673/recurrent_kernel/v
?
BAdam/lstm_673/lstm_cell_673/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_673/lstm_cell_673/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_673/lstm_cell_673/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_673/lstm_cell_673/bias/v
?
6Adam/lstm_673/lstm_cell_673/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_673/lstm_cell_673/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_674/lstm_cell_674/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_674/lstm_cell_674/kernel/v
?
8Adam/lstm_674/lstm_cell_674/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_674/lstm_cell_674/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_674/lstm_cell_674/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_674/lstm_cell_674/recurrent_kernel/v
?
BAdam/lstm_674/lstm_cell_674/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_674/lstm_cell_674/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_674/lstm_cell_674/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_674/lstm_cell_674/bias/v
?
6Adam/lstm_674/lstm_cell_674/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_674/lstm_cell_674/bias/v*
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
VARIABLE_VALUEdense_224/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_224/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_672/lstm_cell_672/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_672/lstm_cell_672/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_672/lstm_cell_672/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_673/lstm_cell_673/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_673/lstm_cell_673/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_673/lstm_cell_673/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_674/lstm_cell_674/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_674/lstm_cell_674/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_674/lstm_cell_674/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_224/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_224/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_672/lstm_cell_672/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_672/lstm_cell_672/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_672/lstm_cell_672/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_673/lstm_cell_673/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_673/lstm_cell_673/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_673/lstm_cell_673/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_674/lstm_cell_674/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_674/lstm_cell_674/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_674/lstm_cell_674/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_224/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_224/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_672/lstm_cell_672/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_672/lstm_cell_672/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_672/lstm_cell_672/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_673/lstm_cell_673/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_673/lstm_cell_673/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_673/lstm_cell_673/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_674/lstm_cell_674/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_674/lstm_cell_674/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_674/lstm_cell_674/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_672_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_672_inputlstm_672/lstm_cell_672/kernel'lstm_672/lstm_cell_672/recurrent_kernellstm_672/lstm_cell_672/biaslstm_673/lstm_cell_673/kernel'lstm_673/lstm_cell_673/recurrent_kernellstm_673/lstm_cell_673/biaslstm_674/lstm_cell_674/kernel'lstm_674/lstm_cell_674/recurrent_kernellstm_674/lstm_cell_674/biasdense_224/kerneldense_224/bias*
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
%__inference_signature_wrapper_4261578
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_224/kernel/Read/ReadVariableOp"dense_224/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_672/lstm_cell_672/kernel/Read/ReadVariableOp;lstm_672/lstm_cell_672/recurrent_kernel/Read/ReadVariableOp/lstm_672/lstm_cell_672/bias/Read/ReadVariableOp1lstm_673/lstm_cell_673/kernel/Read/ReadVariableOp;lstm_673/lstm_cell_673/recurrent_kernel/Read/ReadVariableOp/lstm_673/lstm_cell_673/bias/Read/ReadVariableOp1lstm_674/lstm_cell_674/kernel/Read/ReadVariableOp;lstm_674/lstm_cell_674/recurrent_kernel/Read/ReadVariableOp/lstm_674/lstm_cell_674/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_224/kernel/m/Read/ReadVariableOp)Adam/dense_224/bias/m/Read/ReadVariableOp8Adam/lstm_672/lstm_cell_672/kernel/m/Read/ReadVariableOpBAdam/lstm_672/lstm_cell_672/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_672/lstm_cell_672/bias/m/Read/ReadVariableOp8Adam/lstm_673/lstm_cell_673/kernel/m/Read/ReadVariableOpBAdam/lstm_673/lstm_cell_673/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_673/lstm_cell_673/bias/m/Read/ReadVariableOp8Adam/lstm_674/lstm_cell_674/kernel/m/Read/ReadVariableOpBAdam/lstm_674/lstm_cell_674/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_674/lstm_cell_674/bias/m/Read/ReadVariableOp+Adam/dense_224/kernel/v/Read/ReadVariableOp)Adam/dense_224/bias/v/Read/ReadVariableOp8Adam/lstm_672/lstm_cell_672/kernel/v/Read/ReadVariableOpBAdam/lstm_672/lstm_cell_672/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_672/lstm_cell_672/bias/v/Read/ReadVariableOp8Adam/lstm_673/lstm_cell_673/kernel/v/Read/ReadVariableOpBAdam/lstm_673/lstm_cell_673/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_673/lstm_cell_673/bias/v/Read/ReadVariableOp8Adam/lstm_674/lstm_cell_674/kernel/v/Read/ReadVariableOpBAdam/lstm_674/lstm_cell_674/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_674/lstm_cell_674/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4264790
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_224/kerneldense_224/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_672/lstm_cell_672/kernel'lstm_672/lstm_cell_672/recurrent_kernellstm_672/lstm_cell_672/biaslstm_673/lstm_cell_673/kernel'lstm_673/lstm_cell_673/recurrent_kernellstm_673/lstm_cell_673/biaslstm_674/lstm_cell_674/kernel'lstm_674/lstm_cell_674/recurrent_kernellstm_674/lstm_cell_674/biastotalcountAdam/dense_224/kernel/mAdam/dense_224/bias/m$Adam/lstm_672/lstm_cell_672/kernel/m.Adam/lstm_672/lstm_cell_672/recurrent_kernel/m"Adam/lstm_672/lstm_cell_672/bias/m$Adam/lstm_673/lstm_cell_673/kernel/m.Adam/lstm_673/lstm_cell_673/recurrent_kernel/m"Adam/lstm_673/lstm_cell_673/bias/m$Adam/lstm_674/lstm_cell_674/kernel/m.Adam/lstm_674/lstm_cell_674/recurrent_kernel/m"Adam/lstm_674/lstm_cell_674/bias/mAdam/dense_224/kernel/vAdam/dense_224/bias/v$Adam/lstm_672/lstm_cell_672/kernel/v.Adam/lstm_672/lstm_cell_672/recurrent_kernel/v"Adam/lstm_672/lstm_cell_672/bias/v$Adam/lstm_673/lstm_cell_673/kernel/v.Adam/lstm_673/lstm_cell_673/recurrent_kernel/v"Adam/lstm_673/lstm_cell_673/bias/v$Adam/lstm_674/lstm_cell_674/kernel/v.Adam/lstm_674/lstm_cell_674/recurrent_kernel/v"Adam/lstm_674/lstm_cell_674/bias/v*4
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
#__inference__traced_restore_4264920??+
?8
?
while_body_4260733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_704_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_704_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_704_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_704_matmul_readvariableop_resource:2(F
4while_lstm_cell_704_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_704_biasadd_readvariableop_resource:(??*while/lstm_cell_704/BiasAdd/ReadVariableOp?)while/lstm_cell_704/MatMul/ReadVariableOp?+while/lstm_cell_704/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_704/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_704_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_704/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_704_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_704/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_704/addAddV2$while/lstm_cell_704/MatMul:product:0&while/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_704_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_704/BiasAddBiasAddwhile/lstm_cell_704/add:z:02while/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_704/splitSplit,while/lstm_cell_704/split/split_dim:output:0$while/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_704/SigmoidSigmoid"while/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_1Sigmoid"while/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mulMul!while/lstm_cell_704/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_704/ReluRelu"while/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_1Mulwhile/lstm_cell_704/Sigmoid:y:0&while/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/add_1AddV2while/lstm_cell_704/mul:z:0while/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_2Sigmoid"while/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_704/Relu_1Reluwhile/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_2Mul!while/lstm_cell_704/Sigmoid_2:y:0(while/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_704/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_704/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_704/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_704/BiasAdd/ReadVariableOp*^while/lstm_cell_704/MatMul/ReadVariableOp,^while/lstm_cell_704/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_704_biasadd_readvariableop_resource5while_lstm_cell_704_biasadd_readvariableop_resource_0"n
4while_lstm_cell_704_matmul_1_readvariableop_resource6while_lstm_cell_704_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_704_matmul_readvariableop_resource4while_lstm_cell_704_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_704/BiasAdd/ReadVariableOp*while/lstm_cell_704/BiasAdd/ReadVariableOp2V
)while/lstm_cell_704/MatMul/ReadVariableOp)while/lstm_cell_704/MatMul/ReadVariableOp2Z
+while/lstm_cell_704/MatMul_1/ReadVariableOp+while/lstm_cell_704/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_224_layer_call_and_return_conditional_losses_4264353

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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4262486

inputsH
5lstm_672_lstm_cell_702_matmul_readvariableop_resource:	?J
7lstm_672_lstm_cell_702_matmul_1_readvariableop_resource:	d?E
6lstm_672_lstm_cell_702_biasadd_readvariableop_resource:	?H
5lstm_673_lstm_cell_703_matmul_readvariableop_resource:	d?J
7lstm_673_lstm_cell_703_matmul_1_readvariableop_resource:	2?E
6lstm_673_lstm_cell_703_biasadd_readvariableop_resource:	?G
5lstm_674_lstm_cell_704_matmul_readvariableop_resource:2(I
7lstm_674_lstm_cell_704_matmul_1_readvariableop_resource:
(D
6lstm_674_lstm_cell_704_biasadd_readvariableop_resource:(:
(dense_224_matmul_readvariableop_resource:
7
)dense_224_biasadd_readvariableop_resource:
identity?? dense_224/BiasAdd/ReadVariableOp?dense_224/MatMul/ReadVariableOp?-lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp?,lstm_672/lstm_cell_702/MatMul/ReadVariableOp?.lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp?lstm_672/while?-lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp?,lstm_673/lstm_cell_703/MatMul/ReadVariableOp?.lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp?lstm_673/while?-lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp?,lstm_674/lstm_cell_704/MatMul/ReadVariableOp?.lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp?lstm_674/whileD
lstm_672/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_672/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_672/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_672/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_672/strided_sliceStridedSlicelstm_672/Shape:output:0%lstm_672/strided_slice/stack:output:0'lstm_672/strided_slice/stack_1:output:0'lstm_672/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_672/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_672/zeros/packedPacklstm_672/strided_slice:output:0 lstm_672/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_672/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_672/zerosFilllstm_672/zeros/packed:output:0lstm_672/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_672/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_672/zeros_1/packedPacklstm_672/strided_slice:output:0"lstm_672/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_672/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_672/zeros_1Fill lstm_672/zeros_1/packed:output:0lstm_672/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_672/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_672/transpose	Transposeinputs lstm_672/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_672/Shape_1Shapelstm_672/transpose:y:0*
T0*
_output_shapes
:h
lstm_672/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_672/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_672/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_672/strided_slice_1StridedSlicelstm_672/Shape_1:output:0'lstm_672/strided_slice_1/stack:output:0)lstm_672/strided_slice_1/stack_1:output:0)lstm_672/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_672/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_672/TensorArrayV2TensorListReserve-lstm_672/TensorArrayV2/element_shape:output:0!lstm_672/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_672/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_672/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_672/transpose:y:0Glstm_672/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_672/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_672/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_672/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_672/strided_slice_2StridedSlicelstm_672/transpose:y:0'lstm_672/strided_slice_2/stack:output:0)lstm_672/strided_slice_2/stack_1:output:0)lstm_672/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_672/lstm_cell_702/MatMul/ReadVariableOpReadVariableOp5lstm_672_lstm_cell_702_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_672/lstm_cell_702/MatMulMatMul!lstm_672/strided_slice_2:output:04lstm_672/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_672/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp7lstm_672_lstm_cell_702_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_672/lstm_cell_702/MatMul_1MatMullstm_672/zeros:output:06lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_672/lstm_cell_702/addAddV2'lstm_672/lstm_cell_702/MatMul:product:0)lstm_672/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_672/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp6lstm_672_lstm_cell_702_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_672/lstm_cell_702/BiasAddBiasAddlstm_672/lstm_cell_702/add:z:05lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_672/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_672/lstm_cell_702/splitSplit/lstm_672/lstm_cell_702/split/split_dim:output:0'lstm_672/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_672/lstm_cell_702/SigmoidSigmoid%lstm_672/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_672/lstm_cell_702/Sigmoid_1Sigmoid%lstm_672/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_672/lstm_cell_702/mulMul$lstm_672/lstm_cell_702/Sigmoid_1:y:0lstm_672/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_672/lstm_cell_702/ReluRelu%lstm_672/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_672/lstm_cell_702/mul_1Mul"lstm_672/lstm_cell_702/Sigmoid:y:0)lstm_672/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_672/lstm_cell_702/add_1AddV2lstm_672/lstm_cell_702/mul:z:0 lstm_672/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_672/lstm_cell_702/Sigmoid_2Sigmoid%lstm_672/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_672/lstm_cell_702/Relu_1Relu lstm_672/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_672/lstm_cell_702/mul_2Mul$lstm_672/lstm_cell_702/Sigmoid_2:y:0+lstm_672/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_672/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_672/TensorArrayV2_1TensorListReserve/lstm_672/TensorArrayV2_1/element_shape:output:0!lstm_672/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_672/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_672/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_672/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_672/whileWhile$lstm_672/while/loop_counter:output:0*lstm_672/while/maximum_iterations:output:0lstm_672/time:output:0!lstm_672/TensorArrayV2_1:handle:0lstm_672/zeros:output:0lstm_672/zeros_1:output:0!lstm_672/strided_slice_1:output:0@lstm_672/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_672_lstm_cell_702_matmul_readvariableop_resource7lstm_672_lstm_cell_702_matmul_1_readvariableop_resource6lstm_672_lstm_cell_702_biasadd_readvariableop_resource*
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
lstm_672_while_body_4262118*'
condR
lstm_672_while_cond_4262117*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_672/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_672/TensorArrayV2Stack/TensorListStackTensorListStacklstm_672/while:output:3Blstm_672/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_672/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_672/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_672/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_672/strided_slice_3StridedSlice4lstm_672/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_672/strided_slice_3/stack:output:0)lstm_672/strided_slice_3/stack_1:output:0)lstm_672/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_672/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_672/transpose_1	Transpose4lstm_672/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_672/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_672/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_673/ShapeShapelstm_672/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_673/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_673/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_673/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_673/strided_sliceStridedSlicelstm_673/Shape:output:0%lstm_673/strided_slice/stack:output:0'lstm_673/strided_slice/stack_1:output:0'lstm_673/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_673/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_673/zeros/packedPacklstm_673/strided_slice:output:0 lstm_673/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_673/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_673/zerosFilllstm_673/zeros/packed:output:0lstm_673/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_673/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_673/zeros_1/packedPacklstm_673/strided_slice:output:0"lstm_673/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_673/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_673/zeros_1Fill lstm_673/zeros_1/packed:output:0lstm_673/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_673/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_673/transpose	Transposelstm_672/transpose_1:y:0 lstm_673/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_673/Shape_1Shapelstm_673/transpose:y:0*
T0*
_output_shapes
:h
lstm_673/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_673/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_673/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_673/strided_slice_1StridedSlicelstm_673/Shape_1:output:0'lstm_673/strided_slice_1/stack:output:0)lstm_673/strided_slice_1/stack_1:output:0)lstm_673/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_673/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_673/TensorArrayV2TensorListReserve-lstm_673/TensorArrayV2/element_shape:output:0!lstm_673/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_673/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_673/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_673/transpose:y:0Glstm_673/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_673/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_673/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_673/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_673/strided_slice_2StridedSlicelstm_673/transpose:y:0'lstm_673/strided_slice_2/stack:output:0)lstm_673/strided_slice_2/stack_1:output:0)lstm_673/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_673/lstm_cell_703/MatMul/ReadVariableOpReadVariableOp5lstm_673_lstm_cell_703_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_673/lstm_cell_703/MatMulMatMul!lstm_673/strided_slice_2:output:04lstm_673/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_673/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp7lstm_673_lstm_cell_703_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_673/lstm_cell_703/MatMul_1MatMullstm_673/zeros:output:06lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_673/lstm_cell_703/addAddV2'lstm_673/lstm_cell_703/MatMul:product:0)lstm_673/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_673/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp6lstm_673_lstm_cell_703_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_673/lstm_cell_703/BiasAddBiasAddlstm_673/lstm_cell_703/add:z:05lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_673/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_673/lstm_cell_703/splitSplit/lstm_673/lstm_cell_703/split/split_dim:output:0'lstm_673/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_673/lstm_cell_703/SigmoidSigmoid%lstm_673/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_673/lstm_cell_703/Sigmoid_1Sigmoid%lstm_673/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_673/lstm_cell_703/mulMul$lstm_673/lstm_cell_703/Sigmoid_1:y:0lstm_673/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_673/lstm_cell_703/ReluRelu%lstm_673/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_673/lstm_cell_703/mul_1Mul"lstm_673/lstm_cell_703/Sigmoid:y:0)lstm_673/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_673/lstm_cell_703/add_1AddV2lstm_673/lstm_cell_703/mul:z:0 lstm_673/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_673/lstm_cell_703/Sigmoid_2Sigmoid%lstm_673/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_673/lstm_cell_703/Relu_1Relu lstm_673/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_673/lstm_cell_703/mul_2Mul$lstm_673/lstm_cell_703/Sigmoid_2:y:0+lstm_673/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_673/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_673/TensorArrayV2_1TensorListReserve/lstm_673/TensorArrayV2_1/element_shape:output:0!lstm_673/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_673/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_673/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_673/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_673/whileWhile$lstm_673/while/loop_counter:output:0*lstm_673/while/maximum_iterations:output:0lstm_673/time:output:0!lstm_673/TensorArrayV2_1:handle:0lstm_673/zeros:output:0lstm_673/zeros_1:output:0!lstm_673/strided_slice_1:output:0@lstm_673/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_673_lstm_cell_703_matmul_readvariableop_resource7lstm_673_lstm_cell_703_matmul_1_readvariableop_resource6lstm_673_lstm_cell_703_biasadd_readvariableop_resource*
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
lstm_673_while_body_4262257*'
condR
lstm_673_while_cond_4262256*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_673/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_673/TensorArrayV2Stack/TensorListStackTensorListStacklstm_673/while:output:3Blstm_673/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_673/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_673/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_673/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_673/strided_slice_3StridedSlice4lstm_673/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_673/strided_slice_3/stack:output:0)lstm_673/strided_slice_3/stack_1:output:0)lstm_673/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_673/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_673/transpose_1	Transpose4lstm_673/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_673/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_673/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_674/ShapeShapelstm_673/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_674/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_674/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_674/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_674/strided_sliceStridedSlicelstm_674/Shape:output:0%lstm_674/strided_slice/stack:output:0'lstm_674/strided_slice/stack_1:output:0'lstm_674/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_674/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_674/zeros/packedPacklstm_674/strided_slice:output:0 lstm_674/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_674/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_674/zerosFilllstm_674/zeros/packed:output:0lstm_674/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_674/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_674/zeros_1/packedPacklstm_674/strided_slice:output:0"lstm_674/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_674/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_674/zeros_1Fill lstm_674/zeros_1/packed:output:0lstm_674/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_674/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_674/transpose	Transposelstm_673/transpose_1:y:0 lstm_674/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_674/Shape_1Shapelstm_674/transpose:y:0*
T0*
_output_shapes
:h
lstm_674/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_674/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_674/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_674/strided_slice_1StridedSlicelstm_674/Shape_1:output:0'lstm_674/strided_slice_1/stack:output:0)lstm_674/strided_slice_1/stack_1:output:0)lstm_674/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_674/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_674/TensorArrayV2TensorListReserve-lstm_674/TensorArrayV2/element_shape:output:0!lstm_674/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_674/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_674/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_674/transpose:y:0Glstm_674/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_674/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_674/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_674/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_674/strided_slice_2StridedSlicelstm_674/transpose:y:0'lstm_674/strided_slice_2/stack:output:0)lstm_674/strided_slice_2/stack_1:output:0)lstm_674/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_674/lstm_cell_704/MatMul/ReadVariableOpReadVariableOp5lstm_674_lstm_cell_704_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_674/lstm_cell_704/MatMulMatMul!lstm_674/strided_slice_2:output:04lstm_674/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_674/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp7lstm_674_lstm_cell_704_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_674/lstm_cell_704/MatMul_1MatMullstm_674/zeros:output:06lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_674/lstm_cell_704/addAddV2'lstm_674/lstm_cell_704/MatMul:product:0)lstm_674/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_674/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp6lstm_674_lstm_cell_704_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_674/lstm_cell_704/BiasAddBiasAddlstm_674/lstm_cell_704/add:z:05lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_674/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_674/lstm_cell_704/splitSplit/lstm_674/lstm_cell_704/split/split_dim:output:0'lstm_674/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_674/lstm_cell_704/SigmoidSigmoid%lstm_674/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_674/lstm_cell_704/Sigmoid_1Sigmoid%lstm_674/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_674/lstm_cell_704/mulMul$lstm_674/lstm_cell_704/Sigmoid_1:y:0lstm_674/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_674/lstm_cell_704/ReluRelu%lstm_674/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_674/lstm_cell_704/mul_1Mul"lstm_674/lstm_cell_704/Sigmoid:y:0)lstm_674/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_674/lstm_cell_704/add_1AddV2lstm_674/lstm_cell_704/mul:z:0 lstm_674/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_674/lstm_cell_704/Sigmoid_2Sigmoid%lstm_674/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_674/lstm_cell_704/Relu_1Relu lstm_674/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_674/lstm_cell_704/mul_2Mul$lstm_674/lstm_cell_704/Sigmoid_2:y:0+lstm_674/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_674/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_674/TensorArrayV2_1TensorListReserve/lstm_674/TensorArrayV2_1/element_shape:output:0!lstm_674/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_674/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_674/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_674/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_674/whileWhile$lstm_674/while/loop_counter:output:0*lstm_674/while/maximum_iterations:output:0lstm_674/time:output:0!lstm_674/TensorArrayV2_1:handle:0lstm_674/zeros:output:0lstm_674/zeros_1:output:0!lstm_674/strided_slice_1:output:0@lstm_674/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_674_lstm_cell_704_matmul_readvariableop_resource7lstm_674_lstm_cell_704_matmul_1_readvariableop_resource6lstm_674_lstm_cell_704_biasadd_readvariableop_resource*
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
lstm_674_while_body_4262396*'
condR
lstm_674_while_cond_4262395*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_674/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_674/TensorArrayV2Stack/TensorListStackTensorListStacklstm_674/while:output:3Blstm_674/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_674/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_674/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_674/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_674/strided_slice_3StridedSlice4lstm_674/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_674/strided_slice_3/stack:output:0)lstm_674/strided_slice_3/stack_1:output:0)lstm_674/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_674/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_674/transpose_1	Transpose4lstm_674/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_674/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_674/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_224/MatMul/ReadVariableOpReadVariableOp(dense_224_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_224/MatMulMatMul!lstm_674/strided_slice_3:output:0'dense_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_224/BiasAdd/ReadVariableOpReadVariableOp)dense_224_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_224/BiasAddBiasAdddense_224/MatMul:product:0(dense_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_224/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_224/BiasAdd/ReadVariableOp ^dense_224/MatMul/ReadVariableOp.^lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp-^lstm_672/lstm_cell_702/MatMul/ReadVariableOp/^lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp^lstm_672/while.^lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp-^lstm_673/lstm_cell_703/MatMul/ReadVariableOp/^lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp^lstm_673/while.^lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp-^lstm_674/lstm_cell_704/MatMul/ReadVariableOp/^lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp^lstm_674/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_224/BiasAdd/ReadVariableOp dense_224/BiasAdd/ReadVariableOp2B
dense_224/MatMul/ReadVariableOpdense_224/MatMul/ReadVariableOp2^
-lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp-lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp2\
,lstm_672/lstm_cell_702/MatMul/ReadVariableOp,lstm_672/lstm_cell_702/MatMul/ReadVariableOp2`
.lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp.lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp2 
lstm_672/whilelstm_672/while2^
-lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp-lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp2\
,lstm_673/lstm_cell_703/MatMul/ReadVariableOp,lstm_673/lstm_cell_703/MatMul/ReadVariableOp2`
.lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp.lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp2 
lstm_673/whilelstm_673/while2^
-lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp-lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp2\
,lstm_674/lstm_cell_704/MatMul/ReadVariableOp,lstm_674/lstm_cell_704/MatMul/ReadVariableOp2`
.lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp.lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp2 
lstm_674/whilelstm_674/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4260290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_704_4260314_0:2(/
while_lstm_cell_704_4260316_0:
(+
while_lstm_cell_704_4260318_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_704_4260314:2(-
while_lstm_cell_704_4260316:
()
while_lstm_cell_704_4260318:(??+while/lstm_cell_704/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_704/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_704_4260314_0while_lstm_cell_704_4260316_0while_lstm_cell_704_4260318_0*
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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4260231?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_704/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_704/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_704/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_704/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_704_4260314while_lstm_cell_704_4260314_0"<
while_lstm_cell_704_4260316while_lstm_cell_704_4260316_0"<
while_lstm_cell_704_4260318while_lstm_cell_704_4260318_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_704/StatefulPartitionedCall+while/lstm_cell_704/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263575

inputs?
,lstm_cell_703_matmul_readvariableop_resource:	d?A
.lstm_cell_703_matmul_1_readvariableop_resource:	2?<
-lstm_cell_703_biasadd_readvariableop_resource:	?
identity??$lstm_cell_703/BiasAdd/ReadVariableOp?#lstm_cell_703/MatMul/ReadVariableOp?%lstm_cell_703/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_703/MatMul/ReadVariableOpReadVariableOp,lstm_cell_703_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_703/MatMulMatMulstrided_slice_2:output:0+lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_703_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_703/MatMul_1MatMulzeros:output:0-lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_703/addAddV2lstm_cell_703/MatMul:product:0 lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_703_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_703/BiasAddBiasAddlstm_cell_703/add:z:0,lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_703/splitSplit&lstm_cell_703/split/split_dim:output:0lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_703/SigmoidSigmoidlstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_1Sigmoidlstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_703/mulMullstm_cell_703/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_703/ReluRelulstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_1Mullstm_cell_703/Sigmoid:y:0 lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_703/add_1AddV2lstm_cell_703/mul:z:0lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_2Sigmoidlstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_703/Relu_1Relulstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_2Mullstm_cell_703/Sigmoid_2:y:0"lstm_cell_703/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_703_matmul_readvariableop_resource.lstm_cell_703_matmul_1_readvariableop_resource-lstm_cell_703_biasadd_readvariableop_resource*
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
while_body_4263491*
condR
while_cond_4263490*K
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
NoOpNoOp%^lstm_cell_703/BiasAdd/ReadVariableOp$^lstm_cell_703/MatMul/ReadVariableOp&^lstm_cell_703/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_703/BiasAdd/ReadVariableOp$lstm_cell_703/BiasAdd/ReadVariableOp2J
#lstm_cell_703/MatMul/ReadVariableOp#lstm_cell_703/MatMul/ReadVariableOp2N
%lstm_cell_703/MatMul_1/ReadVariableOp%lstm_cell_703/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_4259940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_703_4259964_0:	d?0
while_lstm_cell_703_4259966_0:	2?,
while_lstm_cell_703_4259968_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_703_4259964:	d?.
while_lstm_cell_703_4259966:	2?*
while_lstm_cell_703_4259968:	???+while/lstm_cell_703/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_703/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_703_4259964_0while_lstm_cell_703_4259966_0while_lstm_cell_703_4259968_0*
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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4259881?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_703/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_703/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_703/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_703/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_703_4259964while_lstm_cell_703_4259964_0"<
while_lstm_cell_703_4259966while_lstm_cell_703_4259966_0"<
while_lstm_cell_703_4259968while_lstm_cell_703_4259968_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_703/StatefulPartitionedCall+while/lstm_cell_703/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_673_while_cond_4262256.
*lstm_673_while_lstm_673_while_loop_counter4
0lstm_673_while_lstm_673_while_maximum_iterations
lstm_673_while_placeholder 
lstm_673_while_placeholder_1 
lstm_673_while_placeholder_2 
lstm_673_while_placeholder_30
,lstm_673_while_less_lstm_673_strided_slice_1G
Clstm_673_while_lstm_673_while_cond_4262256___redundant_placeholder0G
Clstm_673_while_lstm_673_while_cond_4262256___redundant_placeholder1G
Clstm_673_while_lstm_673_while_cond_4262256___redundant_placeholder2G
Clstm_673_while_lstm_673_while_cond_4262256___redundant_placeholder3
lstm_673_while_identity
?
lstm_673/while/LessLesslstm_673_while_placeholder,lstm_673_while_less_lstm_673_strided_slice_1*
T0*
_output_shapes
: ]
lstm_673/while/IdentityIdentitylstm_673/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_673_while_identity lstm_673/while/Identity:output:0*(
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
while_cond_4261278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4261278___redundant_placeholder05
1while_while_cond_4261278___redundant_placeholder15
1while_while_cond_4261278___redundant_placeholder25
1while_while_cond_4261278___redundant_placeholder3
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
*__inference_lstm_672_layer_call_fn_4262519

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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4260517s
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4262959

inputs?
,lstm_cell_702_matmul_readvariableop_resource:	?A
.lstm_cell_702_matmul_1_readvariableop_resource:	d?<
-lstm_cell_702_biasadd_readvariableop_resource:	?
identity??$lstm_cell_702/BiasAdd/ReadVariableOp?#lstm_cell_702/MatMul/ReadVariableOp?%lstm_cell_702/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_702/MatMul/ReadVariableOpReadVariableOp,lstm_cell_702_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_702/MatMulMatMulstrided_slice_2:output:0+lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_702_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_702/MatMul_1MatMulzeros:output:0-lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_702/addAddV2lstm_cell_702/MatMul:product:0 lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_702_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_702/BiasAddBiasAddlstm_cell_702/add:z:0,lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_702/splitSplit&lstm_cell_702/split/split_dim:output:0lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_702/SigmoidSigmoidlstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_1Sigmoidlstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_702/mulMullstm_cell_702/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_702/ReluRelulstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_1Mullstm_cell_702/Sigmoid:y:0 lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_702/add_1AddV2lstm_cell_702/mul:z:0lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_2Sigmoidlstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_702/Relu_1Relulstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_2Mullstm_cell_702/Sigmoid_2:y:0"lstm_cell_702/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_702_matmul_readvariableop_resource.lstm_cell_702_matmul_1_readvariableop_resource-lstm_cell_702_biasadd_readvariableop_resource*
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
while_body_4262875*
condR
while_cond_4262874*K
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
NoOpNoOp%^lstm_cell_702/BiasAdd/ReadVariableOp$^lstm_cell_702/MatMul/ReadVariableOp&^lstm_cell_702/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_702/BiasAdd/ReadVariableOp$lstm_cell_702/BiasAdd/ReadVariableOp2J
#lstm_cell_702/MatMul/ReadVariableOp#lstm_cell_702/MatMul/ReadVariableOp2N
%lstm_cell_702/MatMul_1/ReadVariableOp%lstm_cell_702/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4260085

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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4259468

inputs(
lstm_cell_702_4259386:	?(
lstm_cell_702_4259388:	d?$
lstm_cell_702_4259390:	?
identity??%lstm_cell_702/StatefulPartitionedCall?while;
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
%lstm_cell_702/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_702_4259386lstm_cell_702_4259388lstm_cell_702_4259390*
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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4259385n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_702_4259386lstm_cell_702_4259388lstm_cell_702_4259390*
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
while_body_4259399*
condR
while_cond_4259398*K
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
NoOpNoOp&^lstm_cell_702/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_702/StatefulPartitionedCall%lstm_cell_702/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_674_layer_call_and_return_conditional_losses_4261033

inputs>
,lstm_cell_704_matmul_readvariableop_resource:2(@
.lstm_cell_704_matmul_1_readvariableop_resource:
(;
-lstm_cell_704_biasadd_readvariableop_resource:(
identity??$lstm_cell_704/BiasAdd/ReadVariableOp?#lstm_cell_704/MatMul/ReadVariableOp?%lstm_cell_704/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_704/MatMul/ReadVariableOpReadVariableOp,lstm_cell_704_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_704/MatMulMatMulstrided_slice_2:output:0+lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_704_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_704/MatMul_1MatMulzeros:output:0-lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_704/addAddV2lstm_cell_704/MatMul:product:0 lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_704_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_704/BiasAddBiasAddlstm_cell_704/add:z:0,lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_704/splitSplit&lstm_cell_704/split/split_dim:output:0lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_704/SigmoidSigmoidlstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_1Sigmoidlstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_704/mulMullstm_cell_704/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_704/ReluRelulstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_1Mullstm_cell_704/Sigmoid:y:0 lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_704/add_1AddV2lstm_cell_704/mul:z:0lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_2Sigmoidlstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_704/Relu_1Relulstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_2Mullstm_cell_704/Sigmoid_2:y:0"lstm_cell_704/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_704_matmul_readvariableop_resource.lstm_cell_704_matmul_1_readvariableop_resource-lstm_cell_704_biasadd_readvariableop_resource*
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
while_body_4260949*
condR
while_cond_4260948*K
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
NoOpNoOp%^lstm_cell_704/BiasAdd/ReadVariableOp$^lstm_cell_704/MatMul/ReadVariableOp&^lstm_cell_704/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_704/BiasAdd/ReadVariableOp$lstm_cell_704/BiasAdd/ReadVariableOp2J
#lstm_cell_704/MatMul/ReadVariableOp#lstm_cell_704/MatMul/ReadVariableOp2N
%lstm_cell_704/MatMul_1/ReadVariableOp%lstm_cell_704/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4262874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4262874___redundant_placeholder05
1while_while_cond_4262874___redundant_placeholder15
1while_while_cond_4262874___redundant_placeholder25
1while_while_cond_4262874___redundant_placeholder3
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
 __inference__traced_save_4264790
file_prefix/
+savev2_dense_224_kernel_read_readvariableop-
)savev2_dense_224_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_672_lstm_cell_672_kernel_read_readvariableopF
Bsavev2_lstm_672_lstm_cell_672_recurrent_kernel_read_readvariableop:
6savev2_lstm_672_lstm_cell_672_bias_read_readvariableop<
8savev2_lstm_673_lstm_cell_673_kernel_read_readvariableopF
Bsavev2_lstm_673_lstm_cell_673_recurrent_kernel_read_readvariableop:
6savev2_lstm_673_lstm_cell_673_bias_read_readvariableop<
8savev2_lstm_674_lstm_cell_674_kernel_read_readvariableopF
Bsavev2_lstm_674_lstm_cell_674_recurrent_kernel_read_readvariableop:
6savev2_lstm_674_lstm_cell_674_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_224_kernel_m_read_readvariableop4
0savev2_adam_dense_224_bias_m_read_readvariableopC
?savev2_adam_lstm_672_lstm_cell_672_kernel_m_read_readvariableopM
Isavev2_adam_lstm_672_lstm_cell_672_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_672_lstm_cell_672_bias_m_read_readvariableopC
?savev2_adam_lstm_673_lstm_cell_673_kernel_m_read_readvariableopM
Isavev2_adam_lstm_673_lstm_cell_673_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_673_lstm_cell_673_bias_m_read_readvariableopC
?savev2_adam_lstm_674_lstm_cell_674_kernel_m_read_readvariableopM
Isavev2_adam_lstm_674_lstm_cell_674_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_674_lstm_cell_674_bias_m_read_readvariableop6
2savev2_adam_dense_224_kernel_v_read_readvariableop4
0savev2_adam_dense_224_bias_v_read_readvariableopC
?savev2_adam_lstm_672_lstm_cell_672_kernel_v_read_readvariableopM
Isavev2_adam_lstm_672_lstm_cell_672_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_672_lstm_cell_672_bias_v_read_readvariableopC
?savev2_adam_lstm_673_lstm_cell_673_kernel_v_read_readvariableopM
Isavev2_adam_lstm_673_lstm_cell_673_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_673_lstm_cell_673_bias_v_read_readvariableopC
?savev2_adam_lstm_674_lstm_cell_674_kernel_v_read_readvariableopM
Isavev2_adam_lstm_674_lstm_cell_674_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_674_lstm_cell_674_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_224_kernel_read_readvariableop)savev2_dense_224_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_672_lstm_cell_672_kernel_read_readvariableopBsavev2_lstm_672_lstm_cell_672_recurrent_kernel_read_readvariableop6savev2_lstm_672_lstm_cell_672_bias_read_readvariableop8savev2_lstm_673_lstm_cell_673_kernel_read_readvariableopBsavev2_lstm_673_lstm_cell_673_recurrent_kernel_read_readvariableop6savev2_lstm_673_lstm_cell_673_bias_read_readvariableop8savev2_lstm_674_lstm_cell_674_kernel_read_readvariableopBsavev2_lstm_674_lstm_cell_674_recurrent_kernel_read_readvariableop6savev2_lstm_674_lstm_cell_674_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_224_kernel_m_read_readvariableop0savev2_adam_dense_224_bias_m_read_readvariableop?savev2_adam_lstm_672_lstm_cell_672_kernel_m_read_readvariableopIsavev2_adam_lstm_672_lstm_cell_672_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_672_lstm_cell_672_bias_m_read_readvariableop?savev2_adam_lstm_673_lstm_cell_673_kernel_m_read_readvariableopIsavev2_adam_lstm_673_lstm_cell_673_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_673_lstm_cell_673_bias_m_read_readvariableop?savev2_adam_lstm_674_lstm_cell_674_kernel_m_read_readvariableopIsavev2_adam_lstm_674_lstm_cell_674_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_674_lstm_cell_674_bias_m_read_readvariableop2savev2_adam_dense_224_kernel_v_read_readvariableop0savev2_adam_dense_224_bias_v_read_readvariableop?savev2_adam_lstm_672_lstm_cell_672_kernel_v_read_readvariableopIsavev2_adam_lstm_672_lstm_cell_672_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_672_lstm_cell_672_bias_v_read_readvariableop?savev2_adam_lstm_673_lstm_cell_673_kernel_v_read_readvariableopIsavev2_adam_lstm_673_lstm_cell_673_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_673_lstm_cell_673_bias_v_read_readvariableop?savev2_adam_lstm_674_lstm_cell_674_kernel_v_read_readvariableopIsavev2_adam_lstm_674_lstm_cell_674_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_674_lstm_cell_674_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
while_cond_4262731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4262731___redundant_placeholder05
1while_while_cond_4262731___redundant_placeholder15
1while_while_cond_4262731___redundant_placeholder25
1while_while_cond_4262731___redundant_placeholder3
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
while_cond_4259748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4259748___redundant_placeholder05
1while_while_cond_4259748___redundant_placeholder15
1while_while_cond_4259748___redundant_placeholder25
1while_while_cond_4259748___redundant_placeholder3
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4264191

inputs>
,lstm_cell_704_matmul_readvariableop_resource:2(@
.lstm_cell_704_matmul_1_readvariableop_resource:
(;
-lstm_cell_704_biasadd_readvariableop_resource:(
identity??$lstm_cell_704/BiasAdd/ReadVariableOp?#lstm_cell_704/MatMul/ReadVariableOp?%lstm_cell_704/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_704/MatMul/ReadVariableOpReadVariableOp,lstm_cell_704_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_704/MatMulMatMulstrided_slice_2:output:0+lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_704_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_704/MatMul_1MatMulzeros:output:0-lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_704/addAddV2lstm_cell_704/MatMul:product:0 lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_704_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_704/BiasAddBiasAddlstm_cell_704/add:z:0,lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_704/splitSplit&lstm_cell_704/split/split_dim:output:0lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_704/SigmoidSigmoidlstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_1Sigmoidlstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_704/mulMullstm_cell_704/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_704/ReluRelulstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_1Mullstm_cell_704/Sigmoid:y:0 lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_704/add_1AddV2lstm_cell_704/mul:z:0lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_2Sigmoidlstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_704/Relu_1Relulstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_2Mullstm_cell_704/Sigmoid_2:y:0"lstm_cell_704/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_704_matmul_readvariableop_resource.lstm_cell_704_matmul_1_readvariableop_resource-lstm_cell_704_biasadd_readvariableop_resource*
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
while_body_4264107*
condR
while_cond_4264106*K
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
NoOpNoOp%^lstm_cell_704/BiasAdd/ReadVariableOp$^lstm_cell_704/MatMul/ReadVariableOp&^lstm_cell_704/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_704/BiasAdd/ReadVariableOp$lstm_cell_704/BiasAdd/ReadVariableOp2J
#lstm_cell_704/MatMul/ReadVariableOp#lstm_cell_704/MatMul/ReadVariableOp2N
%lstm_cell_704/MatMul_1/ReadVariableOp%lstm_cell_704/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4264647

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
while_cond_4260582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4260582___redundant_placeholder05
1while_while_cond_4260582___redundant_placeholder15
1while_while_cond_4260582___redundant_placeholder25
1while_while_cond_4260582___redundant_placeholder3
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
*__inference_lstm_674_layer_call_fn_4263751

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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4260817o
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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4260231

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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4264048
inputs_0>
,lstm_cell_704_matmul_readvariableop_resource:2(@
.lstm_cell_704_matmul_1_readvariableop_resource:
(;
-lstm_cell_704_biasadd_readvariableop_resource:(
identity??$lstm_cell_704/BiasAdd/ReadVariableOp?#lstm_cell_704/MatMul/ReadVariableOp?%lstm_cell_704/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_704/MatMul/ReadVariableOpReadVariableOp,lstm_cell_704_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_704/MatMulMatMulstrided_slice_2:output:0+lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_704_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_704/MatMul_1MatMulzeros:output:0-lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_704/addAddV2lstm_cell_704/MatMul:product:0 lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_704_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_704/BiasAddBiasAddlstm_cell_704/add:z:0,lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_704/splitSplit&lstm_cell_704/split/split_dim:output:0lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_704/SigmoidSigmoidlstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_1Sigmoidlstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_704/mulMullstm_cell_704/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_704/ReluRelulstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_1Mullstm_cell_704/Sigmoid:y:0 lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_704/add_1AddV2lstm_cell_704/mul:z:0lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_2Sigmoidlstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_704/Relu_1Relulstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_2Mullstm_cell_704/Sigmoid_2:y:0"lstm_cell_704/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_704_matmul_readvariableop_resource.lstm_cell_704_matmul_1_readvariableop_resource-lstm_cell_704_biasadd_readvariableop_resource*
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
while_body_4263964*
condR
while_cond_4263963*K
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
NoOpNoOp%^lstm_cell_704/BiasAdd/ReadVariableOp$^lstm_cell_704/MatMul/ReadVariableOp&^lstm_cell_704/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_704/BiasAdd/ReadVariableOp$lstm_cell_704/BiasAdd/ReadVariableOp2J
#lstm_cell_704/MatMul/ReadVariableOp#lstm_cell_704/MatMul/ReadVariableOp2N
%lstm_cell_704/MatMul_1/ReadVariableOp%lstm_cell_704/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?T
?
*sequential_224_lstm_674_while_body_4259228L
Hsequential_224_lstm_674_while_sequential_224_lstm_674_while_loop_counterR
Nsequential_224_lstm_674_while_sequential_224_lstm_674_while_maximum_iterations-
)sequential_224_lstm_674_while_placeholder/
+sequential_224_lstm_674_while_placeholder_1/
+sequential_224_lstm_674_while_placeholder_2/
+sequential_224_lstm_674_while_placeholder_3K
Gsequential_224_lstm_674_while_sequential_224_lstm_674_strided_slice_1_0?
?sequential_224_lstm_674_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_674_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_224_lstm_674_while_lstm_cell_704_matmul_readvariableop_resource_0:2(`
Nsequential_224_lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource_0:
([
Msequential_224_lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource_0:(*
&sequential_224_lstm_674_while_identity,
(sequential_224_lstm_674_while_identity_1,
(sequential_224_lstm_674_while_identity_2,
(sequential_224_lstm_674_while_identity_3,
(sequential_224_lstm_674_while_identity_4,
(sequential_224_lstm_674_while_identity_5I
Esequential_224_lstm_674_while_sequential_224_lstm_674_strided_slice_1?
?sequential_224_lstm_674_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_674_tensorarrayunstack_tensorlistfromtensor\
Jsequential_224_lstm_674_while_lstm_cell_704_matmul_readvariableop_resource:2(^
Lsequential_224_lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource:
(Y
Ksequential_224_lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource:(??Bsequential_224/lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp?Asequential_224/lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp?Csequential_224/lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp?
Osequential_224/lstm_674/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_224/lstm_674/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_224_lstm_674_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_674_tensorarrayunstack_tensorlistfromtensor_0)sequential_224_lstm_674_while_placeholderXsequential_224/lstm_674/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_224/lstm_674/while/lstm_cell_704/MatMul/ReadVariableOpReadVariableOpLsequential_224_lstm_674_while_lstm_cell_704_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_224/lstm_674/while/lstm_cell_704/MatMulMatMulHsequential_224/lstm_674/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_224/lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_224/lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOpNsequential_224_lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_224/lstm_674/while/lstm_cell_704/MatMul_1MatMul+sequential_224_lstm_674_while_placeholder_2Ksequential_224/lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_224/lstm_674/while/lstm_cell_704/addAddV2<sequential_224/lstm_674/while/lstm_cell_704/MatMul:product:0>sequential_224/lstm_674/while/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_224/lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOpMsequential_224_lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_224/lstm_674/while/lstm_cell_704/BiasAddBiasAdd3sequential_224/lstm_674/while/lstm_cell_704/add:z:0Jsequential_224/lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_224/lstm_674/while/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_224/lstm_674/while/lstm_cell_704/splitSplitDsequential_224/lstm_674/while/lstm_cell_704/split/split_dim:output:0<sequential_224/lstm_674/while/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_224/lstm_674/while/lstm_cell_704/SigmoidSigmoid:sequential_224/lstm_674/while/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_224/lstm_674/while/lstm_cell_704/Sigmoid_1Sigmoid:sequential_224/lstm_674/while/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_224/lstm_674/while/lstm_cell_704/mulMul9sequential_224/lstm_674/while/lstm_cell_704/Sigmoid_1:y:0+sequential_224_lstm_674_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_224/lstm_674/while/lstm_cell_704/ReluRelu:sequential_224/lstm_674/while/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_224/lstm_674/while/lstm_cell_704/mul_1Mul7sequential_224/lstm_674/while/lstm_cell_704/Sigmoid:y:0>sequential_224/lstm_674/while/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_224/lstm_674/while/lstm_cell_704/add_1AddV23sequential_224/lstm_674/while/lstm_cell_704/mul:z:05sequential_224/lstm_674/while/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_224/lstm_674/while/lstm_cell_704/Sigmoid_2Sigmoid:sequential_224/lstm_674/while/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_224/lstm_674/while/lstm_cell_704/Relu_1Relu5sequential_224/lstm_674/while/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_224/lstm_674/while/lstm_cell_704/mul_2Mul9sequential_224/lstm_674/while/lstm_cell_704/Sigmoid_2:y:0@sequential_224/lstm_674/while/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_224/lstm_674/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_224_lstm_674_while_placeholder_1)sequential_224_lstm_674_while_placeholder5sequential_224/lstm_674/while/lstm_cell_704/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_224/lstm_674/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_224/lstm_674/while/addAddV2)sequential_224_lstm_674_while_placeholder,sequential_224/lstm_674/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_224/lstm_674/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_224/lstm_674/while/add_1AddV2Hsequential_224_lstm_674_while_sequential_224_lstm_674_while_loop_counter.sequential_224/lstm_674/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_224/lstm_674/while/IdentityIdentity'sequential_224/lstm_674/while/add_1:z:0#^sequential_224/lstm_674/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_674/while/Identity_1IdentityNsequential_224_lstm_674_while_sequential_224_lstm_674_while_maximum_iterations#^sequential_224/lstm_674/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_674/while/Identity_2Identity%sequential_224/lstm_674/while/add:z:0#^sequential_224/lstm_674/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_674/while/Identity_3IdentityRsequential_224/lstm_674/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_224/lstm_674/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_674/while/Identity_4Identity5sequential_224/lstm_674/while/lstm_cell_704/mul_2:z:0#^sequential_224/lstm_674/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_224/lstm_674/while/Identity_5Identity5sequential_224/lstm_674/while/lstm_cell_704/add_1:z:0#^sequential_224/lstm_674/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_224/lstm_674/while/NoOpNoOpC^sequential_224/lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOpB^sequential_224/lstm_674/while/lstm_cell_704/MatMul/ReadVariableOpD^sequential_224/lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_224_lstm_674_while_identity/sequential_224/lstm_674/while/Identity:output:0"]
(sequential_224_lstm_674_while_identity_11sequential_224/lstm_674/while/Identity_1:output:0"]
(sequential_224_lstm_674_while_identity_21sequential_224/lstm_674/while/Identity_2:output:0"]
(sequential_224_lstm_674_while_identity_31sequential_224/lstm_674/while/Identity_3:output:0"]
(sequential_224_lstm_674_while_identity_41sequential_224/lstm_674/while/Identity_4:output:0"]
(sequential_224_lstm_674_while_identity_51sequential_224/lstm_674/while/Identity_5:output:0"?
Ksequential_224_lstm_674_while_lstm_cell_704_biasadd_readvariableop_resourceMsequential_224_lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource_0"?
Lsequential_224_lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resourceNsequential_224_lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource_0"?
Jsequential_224_lstm_674_while_lstm_cell_704_matmul_readvariableop_resourceLsequential_224_lstm_674_while_lstm_cell_704_matmul_readvariableop_resource_0"?
Esequential_224_lstm_674_while_sequential_224_lstm_674_strided_slice_1Gsequential_224_lstm_674_while_sequential_224_lstm_674_strided_slice_1_0"?
?sequential_224_lstm_674_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_674_tensorarrayunstack_tensorlistfromtensor?sequential_224_lstm_674_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_674_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_224/lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOpBsequential_224/lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp2?
Asequential_224/lstm_674/while/lstm_cell_704/MatMul/ReadVariableOpAsequential_224/lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp2?
Csequential_224/lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOpCsequential_224/lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_673_while_body_4261830.
*lstm_673_while_lstm_673_while_loop_counter4
0lstm_673_while_lstm_673_while_maximum_iterations
lstm_673_while_placeholder 
lstm_673_while_placeholder_1 
lstm_673_while_placeholder_2 
lstm_673_while_placeholder_3-
)lstm_673_while_lstm_673_strided_slice_1_0i
elstm_673_while_tensorarrayv2read_tensorlistgetitem_lstm_673_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_673_while_lstm_cell_703_matmul_readvariableop_resource_0:	d?R
?lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource_0:	2?M
>lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource_0:	?
lstm_673_while_identity
lstm_673_while_identity_1
lstm_673_while_identity_2
lstm_673_while_identity_3
lstm_673_while_identity_4
lstm_673_while_identity_5+
'lstm_673_while_lstm_673_strided_slice_1g
clstm_673_while_tensorarrayv2read_tensorlistgetitem_lstm_673_tensorarrayunstack_tensorlistfromtensorN
;lstm_673_while_lstm_cell_703_matmul_readvariableop_resource:	d?P
=lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource:	2?K
<lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource:	???3lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp?2lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp?4lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp?
@lstm_673/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_673/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_673_while_tensorarrayv2read_tensorlistgetitem_lstm_673_tensorarrayunstack_tensorlistfromtensor_0lstm_673_while_placeholderIlstm_673/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_673/while/lstm_cell_703/MatMul/ReadVariableOpReadVariableOp=lstm_673_while_lstm_cell_703_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_673/while/lstm_cell_703/MatMulMatMul9lstm_673/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp?lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_673/while/lstm_cell_703/MatMul_1MatMullstm_673_while_placeholder_2<lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_673/while/lstm_cell_703/addAddV2-lstm_673/while/lstm_cell_703/MatMul:product:0/lstm_673/while/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp>lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_673/while/lstm_cell_703/BiasAddBiasAdd$lstm_673/while/lstm_cell_703/add:z:0;lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_673/while/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_673/while/lstm_cell_703/splitSplit5lstm_673/while/lstm_cell_703/split/split_dim:output:0-lstm_673/while/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_673/while/lstm_cell_703/SigmoidSigmoid+lstm_673/while/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_673/while/lstm_cell_703/Sigmoid_1Sigmoid+lstm_673/while/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_673/while/lstm_cell_703/mulMul*lstm_673/while/lstm_cell_703/Sigmoid_1:y:0lstm_673_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_673/while/lstm_cell_703/ReluRelu+lstm_673/while/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_673/while/lstm_cell_703/mul_1Mul(lstm_673/while/lstm_cell_703/Sigmoid:y:0/lstm_673/while/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_673/while/lstm_cell_703/add_1AddV2$lstm_673/while/lstm_cell_703/mul:z:0&lstm_673/while/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_673/while/lstm_cell_703/Sigmoid_2Sigmoid+lstm_673/while/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_673/while/lstm_cell_703/Relu_1Relu&lstm_673/while/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_673/while/lstm_cell_703/mul_2Mul*lstm_673/while/lstm_cell_703/Sigmoid_2:y:01lstm_673/while/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_673/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_673_while_placeholder_1lstm_673_while_placeholder&lstm_673/while/lstm_cell_703/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_673/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_673/while/addAddV2lstm_673_while_placeholderlstm_673/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_673/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_673/while/add_1AddV2*lstm_673_while_lstm_673_while_loop_counterlstm_673/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_673/while/IdentityIdentitylstm_673/while/add_1:z:0^lstm_673/while/NoOp*
T0*
_output_shapes
: ?
lstm_673/while/Identity_1Identity0lstm_673_while_lstm_673_while_maximum_iterations^lstm_673/while/NoOp*
T0*
_output_shapes
: t
lstm_673/while/Identity_2Identitylstm_673/while/add:z:0^lstm_673/while/NoOp*
T0*
_output_shapes
: ?
lstm_673/while/Identity_3IdentityClstm_673/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_673/while/NoOp*
T0*
_output_shapes
: ?
lstm_673/while/Identity_4Identity&lstm_673/while/lstm_cell_703/mul_2:z:0^lstm_673/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_673/while/Identity_5Identity&lstm_673/while/lstm_cell_703/add_1:z:0^lstm_673/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_673/while/NoOpNoOp4^lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp3^lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp5^lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_673_while_identity lstm_673/while/Identity:output:0"?
lstm_673_while_identity_1"lstm_673/while/Identity_1:output:0"?
lstm_673_while_identity_2"lstm_673/while/Identity_2:output:0"?
lstm_673_while_identity_3"lstm_673/while/Identity_3:output:0"?
lstm_673_while_identity_4"lstm_673/while/Identity_4:output:0"?
lstm_673_while_identity_5"lstm_673/while/Identity_5:output:0"T
'lstm_673_while_lstm_673_strided_slice_1)lstm_673_while_lstm_673_strided_slice_1_0"~
<lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource>lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource_0"?
=lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource?lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource_0"|
;lstm_673_while_lstm_cell_703_matmul_readvariableop_resource=lstm_673_while_lstm_cell_703_matmul_readvariableop_resource_0"?
clstm_673_while_tensorarrayv2read_tensorlistgetitem_lstm_673_tensorarrayunstack_tensorlistfromtensorelstm_673_while_tensorarrayv2read_tensorlistgetitem_lstm_673_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp3lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp2h
2lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp2lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp2l
4lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp4lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4259399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_702_4259423_0:	?0
while_lstm_cell_702_4259425_0:	d?,
while_lstm_cell_702_4259427_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_702_4259423:	?.
while_lstm_cell_702_4259425:	d?*
while_lstm_cell_702_4259427:	???+while/lstm_cell_702/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_702/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_702_4259423_0while_lstm_cell_702_4259425_0while_lstm_cell_702_4259427_0*
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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4259385?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_702/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_702/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_702/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_702/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_702_4259423while_lstm_cell_702_4259423_0"<
while_lstm_cell_702_4259425while_lstm_cell_702_4259425_0"<
while_lstm_cell_702_4259427while_lstm_cell_702_4259427_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_702/StatefulPartitionedCall+while/lstm_cell_702/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4261513
lstm_672_input#
lstm_672_4261486:	?#
lstm_672_4261488:	d?
lstm_672_4261490:	?#
lstm_673_4261493:	d?#
lstm_673_4261495:	2?
lstm_673_4261497:	?"
lstm_674_4261500:2("
lstm_674_4261502:
(
lstm_674_4261504:(#
dense_224_4261507:

dense_224_4261509:
identity??!dense_224/StatefulPartitionedCall? lstm_672/StatefulPartitionedCall? lstm_673/StatefulPartitionedCall? lstm_674/StatefulPartitionedCall?
 lstm_672/StatefulPartitionedCallStatefulPartitionedCalllstm_672_inputlstm_672_4261486lstm_672_4261488lstm_672_4261490*
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4260517?
 lstm_673/StatefulPartitionedCallStatefulPartitionedCall)lstm_672/StatefulPartitionedCall:output:0lstm_673_4261493lstm_673_4261495lstm_673_4261497*
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4260667?
 lstm_674/StatefulPartitionedCallStatefulPartitionedCall)lstm_673/StatefulPartitionedCall:output:0lstm_674_4261500lstm_674_4261502lstm_674_4261504*
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4260817?
!dense_224/StatefulPartitionedCallStatefulPartitionedCall)lstm_674/StatefulPartitionedCall:output:0dense_224_4261507dense_224_4261509*
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
F__inference_dense_224_layer_call_and_return_conditional_losses_4260835y
IdentityIdentity*dense_224/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_224/StatefulPartitionedCall!^lstm_672/StatefulPartitionedCall!^lstm_673/StatefulPartitionedCall!^lstm_674/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_224/StatefulPartitionedCall!dense_224/StatefulPartitionedCall2D
 lstm_672/StatefulPartitionedCall lstm_672/StatefulPartitionedCall2D
 lstm_673/StatefulPartitionedCall lstm_673/StatefulPartitionedCall2D
 lstm_674/StatefulPartitionedCall lstm_674/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_672_input
??
?
"__inference__wrapped_model_4259318
lstm_672_inputW
Dsequential_224_lstm_672_lstm_cell_702_matmul_readvariableop_resource:	?Y
Fsequential_224_lstm_672_lstm_cell_702_matmul_1_readvariableop_resource:	d?T
Esequential_224_lstm_672_lstm_cell_702_biasadd_readvariableop_resource:	?W
Dsequential_224_lstm_673_lstm_cell_703_matmul_readvariableop_resource:	d?Y
Fsequential_224_lstm_673_lstm_cell_703_matmul_1_readvariableop_resource:	2?T
Esequential_224_lstm_673_lstm_cell_703_biasadd_readvariableop_resource:	?V
Dsequential_224_lstm_674_lstm_cell_704_matmul_readvariableop_resource:2(X
Fsequential_224_lstm_674_lstm_cell_704_matmul_1_readvariableop_resource:
(S
Esequential_224_lstm_674_lstm_cell_704_biasadd_readvariableop_resource:(I
7sequential_224_dense_224_matmul_readvariableop_resource:
F
8sequential_224_dense_224_biasadd_readvariableop_resource:
identity??/sequential_224/dense_224/BiasAdd/ReadVariableOp?.sequential_224/dense_224/MatMul/ReadVariableOp?<sequential_224/lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp?;sequential_224/lstm_672/lstm_cell_702/MatMul/ReadVariableOp?=sequential_224/lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp?sequential_224/lstm_672/while?<sequential_224/lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp?;sequential_224/lstm_673/lstm_cell_703/MatMul/ReadVariableOp?=sequential_224/lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp?sequential_224/lstm_673/while?<sequential_224/lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp?;sequential_224/lstm_674/lstm_cell_704/MatMul/ReadVariableOp?=sequential_224/lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp?sequential_224/lstm_674/while[
sequential_224/lstm_672/ShapeShapelstm_672_input*
T0*
_output_shapes
:u
+sequential_224/lstm_672/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_224/lstm_672/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_224/lstm_672/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_224/lstm_672/strided_sliceStridedSlice&sequential_224/lstm_672/Shape:output:04sequential_224/lstm_672/strided_slice/stack:output:06sequential_224/lstm_672/strided_slice/stack_1:output:06sequential_224/lstm_672/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_224/lstm_672/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_224/lstm_672/zeros/packedPack.sequential_224/lstm_672/strided_slice:output:0/sequential_224/lstm_672/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_224/lstm_672/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_224/lstm_672/zerosFill-sequential_224/lstm_672/zeros/packed:output:0,sequential_224/lstm_672/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_224/lstm_672/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_224/lstm_672/zeros_1/packedPack.sequential_224/lstm_672/strided_slice:output:01sequential_224/lstm_672/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_224/lstm_672/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_224/lstm_672/zeros_1Fill/sequential_224/lstm_672/zeros_1/packed:output:0.sequential_224/lstm_672/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_224/lstm_672/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_224/lstm_672/transpose	Transposelstm_672_input/sequential_224/lstm_672/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_224/lstm_672/Shape_1Shape%sequential_224/lstm_672/transpose:y:0*
T0*
_output_shapes
:w
-sequential_224/lstm_672/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_224/lstm_672/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_224/lstm_672/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_224/lstm_672/strided_slice_1StridedSlice(sequential_224/lstm_672/Shape_1:output:06sequential_224/lstm_672/strided_slice_1/stack:output:08sequential_224/lstm_672/strided_slice_1/stack_1:output:08sequential_224/lstm_672/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_224/lstm_672/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_224/lstm_672/TensorArrayV2TensorListReserve<sequential_224/lstm_672/TensorArrayV2/element_shape:output:00sequential_224/lstm_672/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_224/lstm_672/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_224/lstm_672/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_224/lstm_672/transpose:y:0Vsequential_224/lstm_672/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_224/lstm_672/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_224/lstm_672/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_224/lstm_672/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_224/lstm_672/strided_slice_2StridedSlice%sequential_224/lstm_672/transpose:y:06sequential_224/lstm_672/strided_slice_2/stack:output:08sequential_224/lstm_672/strided_slice_2/stack_1:output:08sequential_224/lstm_672/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_224/lstm_672/lstm_cell_702/MatMul/ReadVariableOpReadVariableOpDsequential_224_lstm_672_lstm_cell_702_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_224/lstm_672/lstm_cell_702/MatMulMatMul0sequential_224/lstm_672/strided_slice_2:output:0Csequential_224/lstm_672/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_224/lstm_672/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOpFsequential_224_lstm_672_lstm_cell_702_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_224/lstm_672/lstm_cell_702/MatMul_1MatMul&sequential_224/lstm_672/zeros:output:0Esequential_224/lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_224/lstm_672/lstm_cell_702/addAddV26sequential_224/lstm_672/lstm_cell_702/MatMul:product:08sequential_224/lstm_672/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_224/lstm_672/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOpEsequential_224_lstm_672_lstm_cell_702_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_224/lstm_672/lstm_cell_702/BiasAddBiasAdd-sequential_224/lstm_672/lstm_cell_702/add:z:0Dsequential_224/lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_224/lstm_672/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_224/lstm_672/lstm_cell_702/splitSplit>sequential_224/lstm_672/lstm_cell_702/split/split_dim:output:06sequential_224/lstm_672/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_224/lstm_672/lstm_cell_702/SigmoidSigmoid4sequential_224/lstm_672/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_224/lstm_672/lstm_cell_702/Sigmoid_1Sigmoid4sequential_224/lstm_672/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_224/lstm_672/lstm_cell_702/mulMul3sequential_224/lstm_672/lstm_cell_702/Sigmoid_1:y:0(sequential_224/lstm_672/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_224/lstm_672/lstm_cell_702/ReluRelu4sequential_224/lstm_672/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_224/lstm_672/lstm_cell_702/mul_1Mul1sequential_224/lstm_672/lstm_cell_702/Sigmoid:y:08sequential_224/lstm_672/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_224/lstm_672/lstm_cell_702/add_1AddV2-sequential_224/lstm_672/lstm_cell_702/mul:z:0/sequential_224/lstm_672/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_224/lstm_672/lstm_cell_702/Sigmoid_2Sigmoid4sequential_224/lstm_672/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_224/lstm_672/lstm_cell_702/Relu_1Relu/sequential_224/lstm_672/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_224/lstm_672/lstm_cell_702/mul_2Mul3sequential_224/lstm_672/lstm_cell_702/Sigmoid_2:y:0:sequential_224/lstm_672/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_224/lstm_672/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_224/lstm_672/TensorArrayV2_1TensorListReserve>sequential_224/lstm_672/TensorArrayV2_1/element_shape:output:00sequential_224/lstm_672/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_224/lstm_672/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_224/lstm_672/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_224/lstm_672/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_224/lstm_672/whileWhile3sequential_224/lstm_672/while/loop_counter:output:09sequential_224/lstm_672/while/maximum_iterations:output:0%sequential_224/lstm_672/time:output:00sequential_224/lstm_672/TensorArrayV2_1:handle:0&sequential_224/lstm_672/zeros:output:0(sequential_224/lstm_672/zeros_1:output:00sequential_224/lstm_672/strided_slice_1:output:0Osequential_224/lstm_672/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_224_lstm_672_lstm_cell_702_matmul_readvariableop_resourceFsequential_224_lstm_672_lstm_cell_702_matmul_1_readvariableop_resourceEsequential_224_lstm_672_lstm_cell_702_biasadd_readvariableop_resource*
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
*sequential_224_lstm_672_while_body_4258950*6
cond.R,
*sequential_224_lstm_672_while_cond_4258949*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_224/lstm_672/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_224/lstm_672/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_224/lstm_672/while:output:3Qsequential_224/lstm_672/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_224/lstm_672/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_224/lstm_672/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_224/lstm_672/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_224/lstm_672/strided_slice_3StridedSliceCsequential_224/lstm_672/TensorArrayV2Stack/TensorListStack:tensor:06sequential_224/lstm_672/strided_slice_3/stack:output:08sequential_224/lstm_672/strided_slice_3/stack_1:output:08sequential_224/lstm_672/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_224/lstm_672/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_224/lstm_672/transpose_1	TransposeCsequential_224/lstm_672/TensorArrayV2Stack/TensorListStack:tensor:01sequential_224/lstm_672/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_224/lstm_672/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_224/lstm_673/ShapeShape'sequential_224/lstm_672/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_224/lstm_673/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_224/lstm_673/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_224/lstm_673/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_224/lstm_673/strided_sliceStridedSlice&sequential_224/lstm_673/Shape:output:04sequential_224/lstm_673/strided_slice/stack:output:06sequential_224/lstm_673/strided_slice/stack_1:output:06sequential_224/lstm_673/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_224/lstm_673/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_224/lstm_673/zeros/packedPack.sequential_224/lstm_673/strided_slice:output:0/sequential_224/lstm_673/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_224/lstm_673/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_224/lstm_673/zerosFill-sequential_224/lstm_673/zeros/packed:output:0,sequential_224/lstm_673/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_224/lstm_673/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_224/lstm_673/zeros_1/packedPack.sequential_224/lstm_673/strided_slice:output:01sequential_224/lstm_673/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_224/lstm_673/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_224/lstm_673/zeros_1Fill/sequential_224/lstm_673/zeros_1/packed:output:0.sequential_224/lstm_673/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_224/lstm_673/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_224/lstm_673/transpose	Transpose'sequential_224/lstm_672/transpose_1:y:0/sequential_224/lstm_673/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_224/lstm_673/Shape_1Shape%sequential_224/lstm_673/transpose:y:0*
T0*
_output_shapes
:w
-sequential_224/lstm_673/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_224/lstm_673/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_224/lstm_673/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_224/lstm_673/strided_slice_1StridedSlice(sequential_224/lstm_673/Shape_1:output:06sequential_224/lstm_673/strided_slice_1/stack:output:08sequential_224/lstm_673/strided_slice_1/stack_1:output:08sequential_224/lstm_673/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_224/lstm_673/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_224/lstm_673/TensorArrayV2TensorListReserve<sequential_224/lstm_673/TensorArrayV2/element_shape:output:00sequential_224/lstm_673/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_224/lstm_673/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_224/lstm_673/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_224/lstm_673/transpose:y:0Vsequential_224/lstm_673/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_224/lstm_673/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_224/lstm_673/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_224/lstm_673/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_224/lstm_673/strided_slice_2StridedSlice%sequential_224/lstm_673/transpose:y:06sequential_224/lstm_673/strided_slice_2/stack:output:08sequential_224/lstm_673/strided_slice_2/stack_1:output:08sequential_224/lstm_673/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_224/lstm_673/lstm_cell_703/MatMul/ReadVariableOpReadVariableOpDsequential_224_lstm_673_lstm_cell_703_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_224/lstm_673/lstm_cell_703/MatMulMatMul0sequential_224/lstm_673/strided_slice_2:output:0Csequential_224/lstm_673/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_224/lstm_673/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOpFsequential_224_lstm_673_lstm_cell_703_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_224/lstm_673/lstm_cell_703/MatMul_1MatMul&sequential_224/lstm_673/zeros:output:0Esequential_224/lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_224/lstm_673/lstm_cell_703/addAddV26sequential_224/lstm_673/lstm_cell_703/MatMul:product:08sequential_224/lstm_673/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_224/lstm_673/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOpEsequential_224_lstm_673_lstm_cell_703_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_224/lstm_673/lstm_cell_703/BiasAddBiasAdd-sequential_224/lstm_673/lstm_cell_703/add:z:0Dsequential_224/lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_224/lstm_673/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_224/lstm_673/lstm_cell_703/splitSplit>sequential_224/lstm_673/lstm_cell_703/split/split_dim:output:06sequential_224/lstm_673/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_224/lstm_673/lstm_cell_703/SigmoidSigmoid4sequential_224/lstm_673/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_224/lstm_673/lstm_cell_703/Sigmoid_1Sigmoid4sequential_224/lstm_673/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_224/lstm_673/lstm_cell_703/mulMul3sequential_224/lstm_673/lstm_cell_703/Sigmoid_1:y:0(sequential_224/lstm_673/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_224/lstm_673/lstm_cell_703/ReluRelu4sequential_224/lstm_673/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_224/lstm_673/lstm_cell_703/mul_1Mul1sequential_224/lstm_673/lstm_cell_703/Sigmoid:y:08sequential_224/lstm_673/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_224/lstm_673/lstm_cell_703/add_1AddV2-sequential_224/lstm_673/lstm_cell_703/mul:z:0/sequential_224/lstm_673/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_224/lstm_673/lstm_cell_703/Sigmoid_2Sigmoid4sequential_224/lstm_673/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_224/lstm_673/lstm_cell_703/Relu_1Relu/sequential_224/lstm_673/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_224/lstm_673/lstm_cell_703/mul_2Mul3sequential_224/lstm_673/lstm_cell_703/Sigmoid_2:y:0:sequential_224/lstm_673/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_224/lstm_673/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_224/lstm_673/TensorArrayV2_1TensorListReserve>sequential_224/lstm_673/TensorArrayV2_1/element_shape:output:00sequential_224/lstm_673/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_224/lstm_673/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_224/lstm_673/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_224/lstm_673/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_224/lstm_673/whileWhile3sequential_224/lstm_673/while/loop_counter:output:09sequential_224/lstm_673/while/maximum_iterations:output:0%sequential_224/lstm_673/time:output:00sequential_224/lstm_673/TensorArrayV2_1:handle:0&sequential_224/lstm_673/zeros:output:0(sequential_224/lstm_673/zeros_1:output:00sequential_224/lstm_673/strided_slice_1:output:0Osequential_224/lstm_673/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_224_lstm_673_lstm_cell_703_matmul_readvariableop_resourceFsequential_224_lstm_673_lstm_cell_703_matmul_1_readvariableop_resourceEsequential_224_lstm_673_lstm_cell_703_biasadd_readvariableop_resource*
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
*sequential_224_lstm_673_while_body_4259089*6
cond.R,
*sequential_224_lstm_673_while_cond_4259088*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_224/lstm_673/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_224/lstm_673/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_224/lstm_673/while:output:3Qsequential_224/lstm_673/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_224/lstm_673/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_224/lstm_673/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_224/lstm_673/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_224/lstm_673/strided_slice_3StridedSliceCsequential_224/lstm_673/TensorArrayV2Stack/TensorListStack:tensor:06sequential_224/lstm_673/strided_slice_3/stack:output:08sequential_224/lstm_673/strided_slice_3/stack_1:output:08sequential_224/lstm_673/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_224/lstm_673/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_224/lstm_673/transpose_1	TransposeCsequential_224/lstm_673/TensorArrayV2Stack/TensorListStack:tensor:01sequential_224/lstm_673/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_224/lstm_673/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_224/lstm_674/ShapeShape'sequential_224/lstm_673/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_224/lstm_674/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_224/lstm_674/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_224/lstm_674/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_224/lstm_674/strided_sliceStridedSlice&sequential_224/lstm_674/Shape:output:04sequential_224/lstm_674/strided_slice/stack:output:06sequential_224/lstm_674/strided_slice/stack_1:output:06sequential_224/lstm_674/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_224/lstm_674/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_224/lstm_674/zeros/packedPack.sequential_224/lstm_674/strided_slice:output:0/sequential_224/lstm_674/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_224/lstm_674/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_224/lstm_674/zerosFill-sequential_224/lstm_674/zeros/packed:output:0,sequential_224/lstm_674/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_224/lstm_674/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_224/lstm_674/zeros_1/packedPack.sequential_224/lstm_674/strided_slice:output:01sequential_224/lstm_674/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_224/lstm_674/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_224/lstm_674/zeros_1Fill/sequential_224/lstm_674/zeros_1/packed:output:0.sequential_224/lstm_674/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_224/lstm_674/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_224/lstm_674/transpose	Transpose'sequential_224/lstm_673/transpose_1:y:0/sequential_224/lstm_674/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_224/lstm_674/Shape_1Shape%sequential_224/lstm_674/transpose:y:0*
T0*
_output_shapes
:w
-sequential_224/lstm_674/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_224/lstm_674/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_224/lstm_674/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_224/lstm_674/strided_slice_1StridedSlice(sequential_224/lstm_674/Shape_1:output:06sequential_224/lstm_674/strided_slice_1/stack:output:08sequential_224/lstm_674/strided_slice_1/stack_1:output:08sequential_224/lstm_674/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_224/lstm_674/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_224/lstm_674/TensorArrayV2TensorListReserve<sequential_224/lstm_674/TensorArrayV2/element_shape:output:00sequential_224/lstm_674/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_224/lstm_674/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_224/lstm_674/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_224/lstm_674/transpose:y:0Vsequential_224/lstm_674/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_224/lstm_674/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_224/lstm_674/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_224/lstm_674/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_224/lstm_674/strided_slice_2StridedSlice%sequential_224/lstm_674/transpose:y:06sequential_224/lstm_674/strided_slice_2/stack:output:08sequential_224/lstm_674/strided_slice_2/stack_1:output:08sequential_224/lstm_674/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_224/lstm_674/lstm_cell_704/MatMul/ReadVariableOpReadVariableOpDsequential_224_lstm_674_lstm_cell_704_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_224/lstm_674/lstm_cell_704/MatMulMatMul0sequential_224/lstm_674/strided_slice_2:output:0Csequential_224/lstm_674/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_224/lstm_674/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOpFsequential_224_lstm_674_lstm_cell_704_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_224/lstm_674/lstm_cell_704/MatMul_1MatMul&sequential_224/lstm_674/zeros:output:0Esequential_224/lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_224/lstm_674/lstm_cell_704/addAddV26sequential_224/lstm_674/lstm_cell_704/MatMul:product:08sequential_224/lstm_674/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_224/lstm_674/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOpEsequential_224_lstm_674_lstm_cell_704_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_224/lstm_674/lstm_cell_704/BiasAddBiasAdd-sequential_224/lstm_674/lstm_cell_704/add:z:0Dsequential_224/lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_224/lstm_674/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_224/lstm_674/lstm_cell_704/splitSplit>sequential_224/lstm_674/lstm_cell_704/split/split_dim:output:06sequential_224/lstm_674/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_224/lstm_674/lstm_cell_704/SigmoidSigmoid4sequential_224/lstm_674/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_224/lstm_674/lstm_cell_704/Sigmoid_1Sigmoid4sequential_224/lstm_674/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_224/lstm_674/lstm_cell_704/mulMul3sequential_224/lstm_674/lstm_cell_704/Sigmoid_1:y:0(sequential_224/lstm_674/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_224/lstm_674/lstm_cell_704/ReluRelu4sequential_224/lstm_674/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_224/lstm_674/lstm_cell_704/mul_1Mul1sequential_224/lstm_674/lstm_cell_704/Sigmoid:y:08sequential_224/lstm_674/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_224/lstm_674/lstm_cell_704/add_1AddV2-sequential_224/lstm_674/lstm_cell_704/mul:z:0/sequential_224/lstm_674/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_224/lstm_674/lstm_cell_704/Sigmoid_2Sigmoid4sequential_224/lstm_674/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_224/lstm_674/lstm_cell_704/Relu_1Relu/sequential_224/lstm_674/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_224/lstm_674/lstm_cell_704/mul_2Mul3sequential_224/lstm_674/lstm_cell_704/Sigmoid_2:y:0:sequential_224/lstm_674/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_224/lstm_674/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_224/lstm_674/TensorArrayV2_1TensorListReserve>sequential_224/lstm_674/TensorArrayV2_1/element_shape:output:00sequential_224/lstm_674/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_224/lstm_674/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_224/lstm_674/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_224/lstm_674/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_224/lstm_674/whileWhile3sequential_224/lstm_674/while/loop_counter:output:09sequential_224/lstm_674/while/maximum_iterations:output:0%sequential_224/lstm_674/time:output:00sequential_224/lstm_674/TensorArrayV2_1:handle:0&sequential_224/lstm_674/zeros:output:0(sequential_224/lstm_674/zeros_1:output:00sequential_224/lstm_674/strided_slice_1:output:0Osequential_224/lstm_674/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_224_lstm_674_lstm_cell_704_matmul_readvariableop_resourceFsequential_224_lstm_674_lstm_cell_704_matmul_1_readvariableop_resourceEsequential_224_lstm_674_lstm_cell_704_biasadd_readvariableop_resource*
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
*sequential_224_lstm_674_while_body_4259228*6
cond.R,
*sequential_224_lstm_674_while_cond_4259227*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_224/lstm_674/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_224/lstm_674/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_224/lstm_674/while:output:3Qsequential_224/lstm_674/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_224/lstm_674/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_224/lstm_674/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_224/lstm_674/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_224/lstm_674/strided_slice_3StridedSliceCsequential_224/lstm_674/TensorArrayV2Stack/TensorListStack:tensor:06sequential_224/lstm_674/strided_slice_3/stack:output:08sequential_224/lstm_674/strided_slice_3/stack_1:output:08sequential_224/lstm_674/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_224/lstm_674/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_224/lstm_674/transpose_1	TransposeCsequential_224/lstm_674/TensorArrayV2Stack/TensorListStack:tensor:01sequential_224/lstm_674/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_224/lstm_674/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_224/dense_224/MatMul/ReadVariableOpReadVariableOp7sequential_224_dense_224_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_224/dense_224/MatMulMatMul0sequential_224/lstm_674/strided_slice_3:output:06sequential_224/dense_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_224/dense_224/BiasAdd/ReadVariableOpReadVariableOp8sequential_224_dense_224_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_224/dense_224/BiasAddBiasAdd)sequential_224/dense_224/MatMul:product:07sequential_224/dense_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_224/dense_224/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_224/dense_224/BiasAdd/ReadVariableOp/^sequential_224/dense_224/MatMul/ReadVariableOp=^sequential_224/lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp<^sequential_224/lstm_672/lstm_cell_702/MatMul/ReadVariableOp>^sequential_224/lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp^sequential_224/lstm_672/while=^sequential_224/lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp<^sequential_224/lstm_673/lstm_cell_703/MatMul/ReadVariableOp>^sequential_224/lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp^sequential_224/lstm_673/while=^sequential_224/lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp<^sequential_224/lstm_674/lstm_cell_704/MatMul/ReadVariableOp>^sequential_224/lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp^sequential_224/lstm_674/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_224/dense_224/BiasAdd/ReadVariableOp/sequential_224/dense_224/BiasAdd/ReadVariableOp2`
.sequential_224/dense_224/MatMul/ReadVariableOp.sequential_224/dense_224/MatMul/ReadVariableOp2|
<sequential_224/lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp<sequential_224/lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp2z
;sequential_224/lstm_672/lstm_cell_702/MatMul/ReadVariableOp;sequential_224/lstm_672/lstm_cell_702/MatMul/ReadVariableOp2~
=sequential_224/lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp=sequential_224/lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp2>
sequential_224/lstm_672/whilesequential_224/lstm_672/while2|
<sequential_224/lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp<sequential_224/lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp2z
;sequential_224/lstm_673/lstm_cell_703/MatMul/ReadVariableOp;sequential_224/lstm_673/lstm_cell_703/MatMul/ReadVariableOp2~
=sequential_224/lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp=sequential_224/lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp2>
sequential_224/lstm_673/whilesequential_224/lstm_673/while2|
<sequential_224/lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp<sequential_224/lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp2z
;sequential_224/lstm_674/lstm_cell_704/MatMul/ReadVariableOp;sequential_224/lstm_674/lstm_cell_704/MatMul/ReadVariableOp2~
=sequential_224/lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp=sequential_224/lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp2>
sequential_224/lstm_674/whilesequential_224/lstm_674/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_672_input
?C
?

lstm_672_while_body_4261691.
*lstm_672_while_lstm_672_while_loop_counter4
0lstm_672_while_lstm_672_while_maximum_iterations
lstm_672_while_placeholder 
lstm_672_while_placeholder_1 
lstm_672_while_placeholder_2 
lstm_672_while_placeholder_3-
)lstm_672_while_lstm_672_strided_slice_1_0i
elstm_672_while_tensorarrayv2read_tensorlistgetitem_lstm_672_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_672_while_lstm_cell_702_matmul_readvariableop_resource_0:	?R
?lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource_0:	d?M
>lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource_0:	?
lstm_672_while_identity
lstm_672_while_identity_1
lstm_672_while_identity_2
lstm_672_while_identity_3
lstm_672_while_identity_4
lstm_672_while_identity_5+
'lstm_672_while_lstm_672_strided_slice_1g
clstm_672_while_tensorarrayv2read_tensorlistgetitem_lstm_672_tensorarrayunstack_tensorlistfromtensorN
;lstm_672_while_lstm_cell_702_matmul_readvariableop_resource:	?P
=lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource:	d?K
<lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource:	???3lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp?2lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp?4lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp?
@lstm_672/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_672/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_672_while_tensorarrayv2read_tensorlistgetitem_lstm_672_tensorarrayunstack_tensorlistfromtensor_0lstm_672_while_placeholderIlstm_672/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_672/while/lstm_cell_702/MatMul/ReadVariableOpReadVariableOp=lstm_672_while_lstm_cell_702_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_672/while/lstm_cell_702/MatMulMatMul9lstm_672/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp?lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_672/while/lstm_cell_702/MatMul_1MatMullstm_672_while_placeholder_2<lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_672/while/lstm_cell_702/addAddV2-lstm_672/while/lstm_cell_702/MatMul:product:0/lstm_672/while/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp>lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_672/while/lstm_cell_702/BiasAddBiasAdd$lstm_672/while/lstm_cell_702/add:z:0;lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_672/while/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_672/while/lstm_cell_702/splitSplit5lstm_672/while/lstm_cell_702/split/split_dim:output:0-lstm_672/while/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_672/while/lstm_cell_702/SigmoidSigmoid+lstm_672/while/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_672/while/lstm_cell_702/Sigmoid_1Sigmoid+lstm_672/while/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_672/while/lstm_cell_702/mulMul*lstm_672/while/lstm_cell_702/Sigmoid_1:y:0lstm_672_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_672/while/lstm_cell_702/ReluRelu+lstm_672/while/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_672/while/lstm_cell_702/mul_1Mul(lstm_672/while/lstm_cell_702/Sigmoid:y:0/lstm_672/while/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_672/while/lstm_cell_702/add_1AddV2$lstm_672/while/lstm_cell_702/mul:z:0&lstm_672/while/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_672/while/lstm_cell_702/Sigmoid_2Sigmoid+lstm_672/while/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_672/while/lstm_cell_702/Relu_1Relu&lstm_672/while/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_672/while/lstm_cell_702/mul_2Mul*lstm_672/while/lstm_cell_702/Sigmoid_2:y:01lstm_672/while/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_672/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_672_while_placeholder_1lstm_672_while_placeholder&lstm_672/while/lstm_cell_702/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_672/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_672/while/addAddV2lstm_672_while_placeholderlstm_672/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_672/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_672/while/add_1AddV2*lstm_672_while_lstm_672_while_loop_counterlstm_672/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_672/while/IdentityIdentitylstm_672/while/add_1:z:0^lstm_672/while/NoOp*
T0*
_output_shapes
: ?
lstm_672/while/Identity_1Identity0lstm_672_while_lstm_672_while_maximum_iterations^lstm_672/while/NoOp*
T0*
_output_shapes
: t
lstm_672/while/Identity_2Identitylstm_672/while/add:z:0^lstm_672/while/NoOp*
T0*
_output_shapes
: ?
lstm_672/while/Identity_3IdentityClstm_672/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_672/while/NoOp*
T0*
_output_shapes
: ?
lstm_672/while/Identity_4Identity&lstm_672/while/lstm_cell_702/mul_2:z:0^lstm_672/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_672/while/Identity_5Identity&lstm_672/while/lstm_cell_702/add_1:z:0^lstm_672/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_672/while/NoOpNoOp4^lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp3^lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp5^lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_672_while_identity lstm_672/while/Identity:output:0"?
lstm_672_while_identity_1"lstm_672/while/Identity_1:output:0"?
lstm_672_while_identity_2"lstm_672/while/Identity_2:output:0"?
lstm_672_while_identity_3"lstm_672/while/Identity_3:output:0"?
lstm_672_while_identity_4"lstm_672/while/Identity_4:output:0"?
lstm_672_while_identity_5"lstm_672/while/Identity_5:output:0"T
'lstm_672_while_lstm_672_strided_slice_1)lstm_672_while_lstm_672_strided_slice_1_0"~
<lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource>lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource_0"?
=lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource?lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource_0"|
;lstm_672_while_lstm_cell_702_matmul_readvariableop_resource=lstm_672_while_lstm_cell_702_matmul_readvariableop_resource_0"?
clstm_672_while_tensorarrayv2read_tensorlistgetitem_lstm_672_tensorarrayunstack_tensorlistfromtensorelstm_672_while_tensorarrayv2read_tensorlistgetitem_lstm_672_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp3lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp2h
2lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp2lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp2l
4lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp4lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4263905
inputs_0>
,lstm_cell_704_matmul_readvariableop_resource:2(@
.lstm_cell_704_matmul_1_readvariableop_resource:
(;
-lstm_cell_704_biasadd_readvariableop_resource:(
identity??$lstm_cell_704/BiasAdd/ReadVariableOp?#lstm_cell_704/MatMul/ReadVariableOp?%lstm_cell_704/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_704/MatMul/ReadVariableOpReadVariableOp,lstm_cell_704_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_704/MatMulMatMulstrided_slice_2:output:0+lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_704_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_704/MatMul_1MatMulzeros:output:0-lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_704/addAddV2lstm_cell_704/MatMul:product:0 lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_704_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_704/BiasAddBiasAddlstm_cell_704/add:z:0,lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_704/splitSplit&lstm_cell_704/split/split_dim:output:0lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_704/SigmoidSigmoidlstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_1Sigmoidlstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_704/mulMullstm_cell_704/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_704/ReluRelulstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_1Mullstm_cell_704/Sigmoid:y:0 lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_704/add_1AddV2lstm_cell_704/mul:z:0lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_2Sigmoidlstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_704/Relu_1Relulstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_2Mullstm_cell_704/Sigmoid_2:y:0"lstm_cell_704/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_704_matmul_readvariableop_resource.lstm_cell_704_matmul_1_readvariableop_resource-lstm_cell_704_biasadd_readvariableop_resource*
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
while_body_4263821*
condR
while_cond_4263820*K
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
NoOpNoOp%^lstm_cell_704/BiasAdd/ReadVariableOp$^lstm_cell_704/MatMul/ReadVariableOp&^lstm_cell_704/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_704/BiasAdd/ReadVariableOp$lstm_cell_704/BiasAdd/ReadVariableOp2J
#lstm_cell_704/MatMul/ReadVariableOp#lstm_cell_704/MatMul/ReadVariableOp2N
%lstm_cell_704/MatMul_1/ReadVariableOp%lstm_cell_704/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4264106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4264106___redundant_placeholder05
1while_while_cond_4264106___redundant_placeholder15
1while_while_cond_4264106___redundant_placeholder25
1while_while_cond_4264106___redundant_placeholder3
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
*sequential_224_lstm_674_while_cond_4259227L
Hsequential_224_lstm_674_while_sequential_224_lstm_674_while_loop_counterR
Nsequential_224_lstm_674_while_sequential_224_lstm_674_while_maximum_iterations-
)sequential_224_lstm_674_while_placeholder/
+sequential_224_lstm_674_while_placeholder_1/
+sequential_224_lstm_674_while_placeholder_2/
+sequential_224_lstm_674_while_placeholder_3N
Jsequential_224_lstm_674_while_less_sequential_224_lstm_674_strided_slice_1e
asequential_224_lstm_674_while_sequential_224_lstm_674_while_cond_4259227___redundant_placeholder0e
asequential_224_lstm_674_while_sequential_224_lstm_674_while_cond_4259227___redundant_placeholder1e
asequential_224_lstm_674_while_sequential_224_lstm_674_while_cond_4259227___redundant_placeholder2e
asequential_224_lstm_674_while_sequential_224_lstm_674_while_cond_4259227___redundant_placeholder3*
&sequential_224_lstm_674_while_identity
?
"sequential_224/lstm_674/while/LessLess)sequential_224_lstm_674_while_placeholderJsequential_224_lstm_674_while_less_sequential_224_lstm_674_strided_slice_1*
T0*
_output_shapes
: {
&sequential_224/lstm_674/while/IdentityIdentity&sequential_224/lstm_674/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_224_lstm_674_while_identity/sequential_224/lstm_674/while/Identity:output:0*(
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
while_body_4262589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_702_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_702_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_702_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_702_matmul_readvariableop_resource:	?G
4while_lstm_cell_702_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_702_biasadd_readvariableop_resource:	???*while/lstm_cell_702/BiasAdd/ReadVariableOp?)while/lstm_cell_702/MatMul/ReadVariableOp?+while/lstm_cell_702/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_702/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_702_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_702/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_702_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_702/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_702/addAddV2$while/lstm_cell_702/MatMul:product:0&while/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_702_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_702/BiasAddBiasAddwhile/lstm_cell_702/add:z:02while/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_702/splitSplit,while/lstm_cell_702/split/split_dim:output:0$while/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_702/SigmoidSigmoid"while/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_1Sigmoid"while/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mulMul!while/lstm_cell_702/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_702/ReluRelu"while/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_1Mulwhile/lstm_cell_702/Sigmoid:y:0&while/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/add_1AddV2while/lstm_cell_702/mul:z:0while/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_2Sigmoid"while/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_702/Relu_1Reluwhile/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_2Mul!while/lstm_cell_702/Sigmoid_2:y:0(while/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_702/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_702/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_702/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_702/BiasAdd/ReadVariableOp*^while/lstm_cell_702/MatMul/ReadVariableOp,^while/lstm_cell_702/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_702_biasadd_readvariableop_resource5while_lstm_cell_702_biasadd_readvariableop_resource_0"n
4while_lstm_cell_702_matmul_1_readvariableop_resource6while_lstm_cell_702_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_702_matmul_readvariableop_resource4while_lstm_cell_702_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_702/BiasAdd/ReadVariableOp*while/lstm_cell_702/BiasAdd/ReadVariableOp2V
)while/lstm_cell_702/MatMul/ReadVariableOp)while/lstm_cell_702/MatMul/ReadVariableOp2Z
+while/lstm_cell_702/MatMul_1/ReadVariableOp+while/lstm_cell_702/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263718

inputs?
,lstm_cell_703_matmul_readvariableop_resource:	d?A
.lstm_cell_703_matmul_1_readvariableop_resource:	2?<
-lstm_cell_703_biasadd_readvariableop_resource:	?
identity??$lstm_cell_703/BiasAdd/ReadVariableOp?#lstm_cell_703/MatMul/ReadVariableOp?%lstm_cell_703/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_703/MatMul/ReadVariableOpReadVariableOp,lstm_cell_703_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_703/MatMulMatMulstrided_slice_2:output:0+lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_703_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_703/MatMul_1MatMulzeros:output:0-lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_703/addAddV2lstm_cell_703/MatMul:product:0 lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_703_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_703/BiasAddBiasAddlstm_cell_703/add:z:0,lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_703/splitSplit&lstm_cell_703/split/split_dim:output:0lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_703/SigmoidSigmoidlstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_1Sigmoidlstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_703/mulMullstm_cell_703/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_703/ReluRelulstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_1Mullstm_cell_703/Sigmoid:y:0 lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_703/add_1AddV2lstm_cell_703/mul:z:0lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_2Sigmoidlstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_703/Relu_1Relulstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_2Mullstm_cell_703/Sigmoid_2:y:0"lstm_cell_703/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_703_matmul_readvariableop_resource.lstm_cell_703_matmul_1_readvariableop_resource-lstm_cell_703_biasadd_readvariableop_resource*
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
while_body_4263634*
condR
while_cond_4263633*K
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
NoOpNoOp%^lstm_cell_703/BiasAdd/ReadVariableOp$^lstm_cell_703/MatMul/ReadVariableOp&^lstm_cell_703/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_703/BiasAdd/ReadVariableOp$lstm_cell_703/BiasAdd/ReadVariableOp2J
#lstm_cell_703/MatMul/ReadVariableOp#lstm_cell_703/MatMul/ReadVariableOp2N
%lstm_cell_703/MatMul_1/ReadVariableOp%lstm_cell_703/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_224_layer_call_and_return_conditional_losses_4260842

inputs#
lstm_672_4260518:	?#
lstm_672_4260520:	d?
lstm_672_4260522:	?#
lstm_673_4260668:	d?#
lstm_673_4260670:	2?
lstm_673_4260672:	?"
lstm_674_4260818:2("
lstm_674_4260820:
(
lstm_674_4260822:(#
dense_224_4260836:

dense_224_4260838:
identity??!dense_224/StatefulPartitionedCall? lstm_672/StatefulPartitionedCall? lstm_673/StatefulPartitionedCall? lstm_674/StatefulPartitionedCall?
 lstm_672/StatefulPartitionedCallStatefulPartitionedCallinputslstm_672_4260518lstm_672_4260520lstm_672_4260522*
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4260517?
 lstm_673/StatefulPartitionedCallStatefulPartitionedCall)lstm_672/StatefulPartitionedCall:output:0lstm_673_4260668lstm_673_4260670lstm_673_4260672*
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4260667?
 lstm_674/StatefulPartitionedCallStatefulPartitionedCall)lstm_673/StatefulPartitionedCall:output:0lstm_674_4260818lstm_674_4260820lstm_674_4260822*
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4260817?
!dense_224/StatefulPartitionedCallStatefulPartitionedCall)lstm_674/StatefulPartitionedCall:output:0dense_224_4260836dense_224_4260838*
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
F__inference_dense_224_layer_call_and_return_conditional_losses_4260835y
IdentityIdentity*dense_224/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_224/StatefulPartitionedCall!^lstm_672/StatefulPartitionedCall!^lstm_673/StatefulPartitionedCall!^lstm_674/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_224/StatefulPartitionedCall!dense_224/StatefulPartitionedCall2D
 lstm_672/StatefulPartitionedCall lstm_672/StatefulPartitionedCall2D
 lstm_673/StatefulPartitionedCall lstm_673/StatefulPartitionedCall2D
 lstm_674/StatefulPartitionedCall lstm_674/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_703_layer_call_fn_4264468

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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4259735o
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
?
*__inference_lstm_672_layer_call_fn_4262508
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4259659|
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
?
/__inference_lstm_cell_704_layer_call_fn_4264566

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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4260085o
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
while_body_4263491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_703_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_703_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_703_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_703_matmul_readvariableop_resource:	d?G
4while_lstm_cell_703_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_703_biasadd_readvariableop_resource:	???*while/lstm_cell_703/BiasAdd/ReadVariableOp?)while/lstm_cell_703/MatMul/ReadVariableOp?+while/lstm_cell_703/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_703/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_703_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_703/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_703_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_703/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_703/addAddV2$while/lstm_cell_703/MatMul:product:0&while/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_703_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_703/BiasAddBiasAddwhile/lstm_cell_703/add:z:02while/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_703/splitSplit,while/lstm_cell_703/split/split_dim:output:0$while/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_703/SigmoidSigmoid"while/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_1Sigmoid"while/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mulMul!while/lstm_cell_703/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_703/ReluRelu"while/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_1Mulwhile/lstm_cell_703/Sigmoid:y:0&while/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/add_1AddV2while/lstm_cell_703/mul:z:0while/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_2Sigmoid"while/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_703/Relu_1Reluwhile/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_2Mul!while/lstm_cell_703/Sigmoid_2:y:0(while/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_703/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_703/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_703/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_703/BiasAdd/ReadVariableOp*^while/lstm_cell_703/MatMul/ReadVariableOp,^while/lstm_cell_703/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_703_biasadd_readvariableop_resource5while_lstm_cell_703_biasadd_readvariableop_resource_0"n
4while_lstm_cell_703_matmul_1_readvariableop_resource6while_lstm_cell_703_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_703_matmul_readvariableop_resource4while_lstm_cell_703_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_703/BiasAdd/ReadVariableOp*while/lstm_cell_703/BiasAdd/ReadVariableOp2V
)while/lstm_cell_703/MatMul/ReadVariableOp)while/lstm_cell_703/MatMul/ReadVariableOp2Z
+while/lstm_cell_703/MatMul_1/ReadVariableOp+while/lstm_cell_703/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4263348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_703_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_703_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_703_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_703_matmul_readvariableop_resource:	d?G
4while_lstm_cell_703_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_703_biasadd_readvariableop_resource:	???*while/lstm_cell_703/BiasAdd/ReadVariableOp?)while/lstm_cell_703/MatMul/ReadVariableOp?+while/lstm_cell_703/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_703/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_703_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_703/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_703_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_703/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_703/addAddV2$while/lstm_cell_703/MatMul:product:0&while/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_703_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_703/BiasAddBiasAddwhile/lstm_cell_703/add:z:02while/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_703/splitSplit,while/lstm_cell_703/split/split_dim:output:0$while/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_703/SigmoidSigmoid"while/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_1Sigmoid"while/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mulMul!while/lstm_cell_703/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_703/ReluRelu"while/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_1Mulwhile/lstm_cell_703/Sigmoid:y:0&while/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/add_1AddV2while/lstm_cell_703/mul:z:0while/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_2Sigmoid"while/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_703/Relu_1Reluwhile/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_2Mul!while/lstm_cell_703/Sigmoid_2:y:0(while/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_703/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_703/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_703/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_703/BiasAdd/ReadVariableOp*^while/lstm_cell_703/MatMul/ReadVariableOp,^while/lstm_cell_703/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_703_biasadd_readvariableop_resource5while_lstm_cell_703_biasadd_readvariableop_resource_0"n
4while_lstm_cell_703_matmul_1_readvariableop_resource6while_lstm_cell_703_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_703_matmul_readvariableop_resource4while_lstm_cell_703_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_703/BiasAdd/ReadVariableOp*while/lstm_cell_703/BiasAdd/ReadVariableOp2V
)while/lstm_cell_703/MatMul/ReadVariableOp)while/lstm_cell_703/MatMul/ReadVariableOp2Z
+while/lstm_cell_703/MatMul_1/ReadVariableOp+while/lstm_cell_703/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_673_while_cond_4261829.
*lstm_673_while_lstm_673_while_loop_counter4
0lstm_673_while_lstm_673_while_maximum_iterations
lstm_673_while_placeholder 
lstm_673_while_placeholder_1 
lstm_673_while_placeholder_2 
lstm_673_while_placeholder_30
,lstm_673_while_less_lstm_673_strided_slice_1G
Clstm_673_while_lstm_673_while_cond_4261829___redundant_placeholder0G
Clstm_673_while_lstm_673_while_cond_4261829___redundant_placeholder1G
Clstm_673_while_lstm_673_while_cond_4261829___redundant_placeholder2G
Clstm_673_while_lstm_673_while_cond_4261829___redundant_placeholder3
lstm_673_while_identity
?
lstm_673/while/LessLesslstm_673_while_placeholder,lstm_673_while_less_lstm_673_strided_slice_1*
T0*
_output_shapes
: ]
lstm_673/while/IdentityIdentitylstm_673/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_673_while_identity lstm_673/while/Identity:output:0*(
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
while_body_4263964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_704_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_704_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_704_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_704_matmul_readvariableop_resource:2(F
4while_lstm_cell_704_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_704_biasadd_readvariableop_resource:(??*while/lstm_cell_704/BiasAdd/ReadVariableOp?)while/lstm_cell_704/MatMul/ReadVariableOp?+while/lstm_cell_704/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_704/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_704_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_704/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_704_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_704/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_704/addAddV2$while/lstm_cell_704/MatMul:product:0&while/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_704_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_704/BiasAddBiasAddwhile/lstm_cell_704/add:z:02while/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_704/splitSplit,while/lstm_cell_704/split/split_dim:output:0$while/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_704/SigmoidSigmoid"while/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_1Sigmoid"while/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mulMul!while/lstm_cell_704/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_704/ReluRelu"while/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_1Mulwhile/lstm_cell_704/Sigmoid:y:0&while/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/add_1AddV2while/lstm_cell_704/mul:z:0while/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_2Sigmoid"while/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_704/Relu_1Reluwhile/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_2Mul!while/lstm_cell_704/Sigmoid_2:y:0(while/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_704/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_704/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_704/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_704/BiasAdd/ReadVariableOp*^while/lstm_cell_704/MatMul/ReadVariableOp,^while/lstm_cell_704/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_704_biasadd_readvariableop_resource5while_lstm_cell_704_biasadd_readvariableop_resource_0"n
4while_lstm_cell_704_matmul_1_readvariableop_resource6while_lstm_cell_704_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_704_matmul_readvariableop_resource4while_lstm_cell_704_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_704/BiasAdd/ReadVariableOp*while/lstm_cell_704/BiasAdd/ReadVariableOp2V
)while/lstm_cell_704/MatMul/ReadVariableOp)while/lstm_cell_704/MatMul/ReadVariableOp2Z
+while/lstm_cell_704/MatMul_1/ReadVariableOp+while/lstm_cell_704/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4263634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_703_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_703_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_703_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_703_matmul_readvariableop_resource:	d?G
4while_lstm_cell_703_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_703_biasadd_readvariableop_resource:	???*while/lstm_cell_703/BiasAdd/ReadVariableOp?)while/lstm_cell_703/MatMul/ReadVariableOp?+while/lstm_cell_703/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_703/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_703_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_703/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_703_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_703/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_703/addAddV2$while/lstm_cell_703/MatMul:product:0&while/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_703_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_703/BiasAddBiasAddwhile/lstm_cell_703/add:z:02while/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_703/splitSplit,while/lstm_cell_703/split/split_dim:output:0$while/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_703/SigmoidSigmoid"while/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_1Sigmoid"while/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mulMul!while/lstm_cell_703/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_703/ReluRelu"while/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_1Mulwhile/lstm_cell_703/Sigmoid:y:0&while/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/add_1AddV2while/lstm_cell_703/mul:z:0while/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_2Sigmoid"while/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_703/Relu_1Reluwhile/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_2Mul!while/lstm_cell_703/Sigmoid_2:y:0(while/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_703/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_703/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_703/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_703/BiasAdd/ReadVariableOp*^while/lstm_cell_703/MatMul/ReadVariableOp,^while/lstm_cell_703/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_703_biasadd_readvariableop_resource5while_lstm_cell_703_biasadd_readvariableop_resource_0"n
4while_lstm_cell_703_matmul_1_readvariableop_resource6while_lstm_cell_703_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_703_matmul_readvariableop_resource4while_lstm_cell_703_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_703/BiasAdd/ReadVariableOp*while/lstm_cell_703/BiasAdd/ReadVariableOp2V
)while/lstm_cell_703/MatMul/ReadVariableOp)while/lstm_cell_703/MatMul/ReadVariableOp2Z
+while/lstm_cell_703/MatMul_1/ReadVariableOp+while/lstm_cell_703/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_672_layer_call_fn_4262530

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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4261363s
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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4264615

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

?
lstm_672_while_cond_4262117.
*lstm_672_while_lstm_672_while_loop_counter4
0lstm_672_while_lstm_672_while_maximum_iterations
lstm_672_while_placeholder 
lstm_672_while_placeholder_1 
lstm_672_while_placeholder_2 
lstm_672_while_placeholder_30
,lstm_672_while_less_lstm_672_strided_slice_1G
Clstm_672_while_lstm_672_while_cond_4262117___redundant_placeholder0G
Clstm_672_while_lstm_672_while_cond_4262117___redundant_placeholder1G
Clstm_672_while_lstm_672_while_cond_4262117___redundant_placeholder2G
Clstm_672_while_lstm_672_while_cond_4262117___redundant_placeholder3
lstm_672_while_identity
?
lstm_672/while/LessLesslstm_672_while_placeholder,lstm_672_while_less_lstm_672_strided_slice_1*
T0*
_output_shapes
: ]
lstm_672/while/IdentityIdentitylstm_672/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_672_while_identity lstm_672/while/Identity:output:0*(
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
while_cond_4263633
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4263633___redundant_placeholder05
1while_while_cond_4263633___redundant_placeholder15
1while_while_cond_4263633___redundant_placeholder25
1while_while_cond_4263633___redundant_placeholder3
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

lstm_674_while_body_4262396.
*lstm_674_while_lstm_674_while_loop_counter4
0lstm_674_while_lstm_674_while_maximum_iterations
lstm_674_while_placeholder 
lstm_674_while_placeholder_1 
lstm_674_while_placeholder_2 
lstm_674_while_placeholder_3-
)lstm_674_while_lstm_674_strided_slice_1_0i
elstm_674_while_tensorarrayv2read_tensorlistgetitem_lstm_674_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_674_while_lstm_cell_704_matmul_readvariableop_resource_0:2(Q
?lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource_0:
(L
>lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource_0:(
lstm_674_while_identity
lstm_674_while_identity_1
lstm_674_while_identity_2
lstm_674_while_identity_3
lstm_674_while_identity_4
lstm_674_while_identity_5+
'lstm_674_while_lstm_674_strided_slice_1g
clstm_674_while_tensorarrayv2read_tensorlistgetitem_lstm_674_tensorarrayunstack_tensorlistfromtensorM
;lstm_674_while_lstm_cell_704_matmul_readvariableop_resource:2(O
=lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource:
(J
<lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource:(??3lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp?2lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp?4lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp?
@lstm_674/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_674/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_674_while_tensorarrayv2read_tensorlistgetitem_lstm_674_tensorarrayunstack_tensorlistfromtensor_0lstm_674_while_placeholderIlstm_674/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_674/while/lstm_cell_704/MatMul/ReadVariableOpReadVariableOp=lstm_674_while_lstm_cell_704_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_674/while/lstm_cell_704/MatMulMatMul9lstm_674/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp?lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_674/while/lstm_cell_704/MatMul_1MatMullstm_674_while_placeholder_2<lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_674/while/lstm_cell_704/addAddV2-lstm_674/while/lstm_cell_704/MatMul:product:0/lstm_674/while/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp>lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_674/while/lstm_cell_704/BiasAddBiasAdd$lstm_674/while/lstm_cell_704/add:z:0;lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_674/while/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_674/while/lstm_cell_704/splitSplit5lstm_674/while/lstm_cell_704/split/split_dim:output:0-lstm_674/while/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_674/while/lstm_cell_704/SigmoidSigmoid+lstm_674/while/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_674/while/lstm_cell_704/Sigmoid_1Sigmoid+lstm_674/while/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_674/while/lstm_cell_704/mulMul*lstm_674/while/lstm_cell_704/Sigmoid_1:y:0lstm_674_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_674/while/lstm_cell_704/ReluRelu+lstm_674/while/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_674/while/lstm_cell_704/mul_1Mul(lstm_674/while/lstm_cell_704/Sigmoid:y:0/lstm_674/while/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_674/while/lstm_cell_704/add_1AddV2$lstm_674/while/lstm_cell_704/mul:z:0&lstm_674/while/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_674/while/lstm_cell_704/Sigmoid_2Sigmoid+lstm_674/while/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_674/while/lstm_cell_704/Relu_1Relu&lstm_674/while/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_674/while/lstm_cell_704/mul_2Mul*lstm_674/while/lstm_cell_704/Sigmoid_2:y:01lstm_674/while/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_674/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_674_while_placeholder_1lstm_674_while_placeholder&lstm_674/while/lstm_cell_704/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_674/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_674/while/addAddV2lstm_674_while_placeholderlstm_674/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_674/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_674/while/add_1AddV2*lstm_674_while_lstm_674_while_loop_counterlstm_674/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_674/while/IdentityIdentitylstm_674/while/add_1:z:0^lstm_674/while/NoOp*
T0*
_output_shapes
: ?
lstm_674/while/Identity_1Identity0lstm_674_while_lstm_674_while_maximum_iterations^lstm_674/while/NoOp*
T0*
_output_shapes
: t
lstm_674/while/Identity_2Identitylstm_674/while/add:z:0^lstm_674/while/NoOp*
T0*
_output_shapes
: ?
lstm_674/while/Identity_3IdentityClstm_674/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_674/while/NoOp*
T0*
_output_shapes
: ?
lstm_674/while/Identity_4Identity&lstm_674/while/lstm_cell_704/mul_2:z:0^lstm_674/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_674/while/Identity_5Identity&lstm_674/while/lstm_cell_704/add_1:z:0^lstm_674/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_674/while/NoOpNoOp4^lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp3^lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp5^lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_674_while_identity lstm_674/while/Identity:output:0"?
lstm_674_while_identity_1"lstm_674/while/Identity_1:output:0"?
lstm_674_while_identity_2"lstm_674/while/Identity_2:output:0"?
lstm_674_while_identity_3"lstm_674/while/Identity_3:output:0"?
lstm_674_while_identity_4"lstm_674/while/Identity_4:output:0"?
lstm_674_while_identity_5"lstm_674/while/Identity_5:output:0"T
'lstm_674_while_lstm_674_strided_slice_1)lstm_674_while_lstm_674_strided_slice_1_0"~
<lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource>lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource_0"?
=lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource?lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource_0"|
;lstm_674_while_lstm_cell_704_matmul_readvariableop_resource=lstm_674_while_lstm_cell_704_matmul_readvariableop_resource_0"?
clstm_674_while_tensorarrayv2read_tensorlistgetitem_lstm_674_tensorarrayunstack_tensorlistfromtensorelstm_674_while_tensorarrayv2read_tensorlistgetitem_lstm_674_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp3lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp2h
2lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp2lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp2l
4lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp4lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4259939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4259939___redundant_placeholder05
1while_while_cond_4259939___redundant_placeholder15
1while_while_cond_4259939___redundant_placeholder25
1while_while_cond_4259939___redundant_placeholder3
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
while_body_4260099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_704_4260123_0:2(/
while_lstm_cell_704_4260125_0:
(+
while_lstm_cell_704_4260127_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_704_4260123:2(-
while_lstm_cell_704_4260125:
()
while_lstm_cell_704_4260127:(??+while/lstm_cell_704/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_704/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_704_4260123_0while_lstm_cell_704_4260125_0while_lstm_cell_704_4260127_0*
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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4260085?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_704/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_704/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_704/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_704/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_704_4260123while_lstm_cell_704_4260123_0"<
while_lstm_cell_704_4260125while_lstm_cell_704_4260125_0"<
while_lstm_cell_704_4260127while_lstm_cell_704_4260127_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_704/StatefulPartitionedCall+while/lstm_cell_704/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4262059

inputsH
5lstm_672_lstm_cell_702_matmul_readvariableop_resource:	?J
7lstm_672_lstm_cell_702_matmul_1_readvariableop_resource:	d?E
6lstm_672_lstm_cell_702_biasadd_readvariableop_resource:	?H
5lstm_673_lstm_cell_703_matmul_readvariableop_resource:	d?J
7lstm_673_lstm_cell_703_matmul_1_readvariableop_resource:	2?E
6lstm_673_lstm_cell_703_biasadd_readvariableop_resource:	?G
5lstm_674_lstm_cell_704_matmul_readvariableop_resource:2(I
7lstm_674_lstm_cell_704_matmul_1_readvariableop_resource:
(D
6lstm_674_lstm_cell_704_biasadd_readvariableop_resource:(:
(dense_224_matmul_readvariableop_resource:
7
)dense_224_biasadd_readvariableop_resource:
identity?? dense_224/BiasAdd/ReadVariableOp?dense_224/MatMul/ReadVariableOp?-lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp?,lstm_672/lstm_cell_702/MatMul/ReadVariableOp?.lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp?lstm_672/while?-lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp?,lstm_673/lstm_cell_703/MatMul/ReadVariableOp?.lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp?lstm_673/while?-lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp?,lstm_674/lstm_cell_704/MatMul/ReadVariableOp?.lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp?lstm_674/whileD
lstm_672/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_672/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_672/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_672/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_672/strided_sliceStridedSlicelstm_672/Shape:output:0%lstm_672/strided_slice/stack:output:0'lstm_672/strided_slice/stack_1:output:0'lstm_672/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_672/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_672/zeros/packedPacklstm_672/strided_slice:output:0 lstm_672/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_672/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_672/zerosFilllstm_672/zeros/packed:output:0lstm_672/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_672/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_672/zeros_1/packedPacklstm_672/strided_slice:output:0"lstm_672/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_672/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_672/zeros_1Fill lstm_672/zeros_1/packed:output:0lstm_672/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_672/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_672/transpose	Transposeinputs lstm_672/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_672/Shape_1Shapelstm_672/transpose:y:0*
T0*
_output_shapes
:h
lstm_672/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_672/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_672/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_672/strided_slice_1StridedSlicelstm_672/Shape_1:output:0'lstm_672/strided_slice_1/stack:output:0)lstm_672/strided_slice_1/stack_1:output:0)lstm_672/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_672/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_672/TensorArrayV2TensorListReserve-lstm_672/TensorArrayV2/element_shape:output:0!lstm_672/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_672/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_672/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_672/transpose:y:0Glstm_672/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_672/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_672/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_672/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_672/strided_slice_2StridedSlicelstm_672/transpose:y:0'lstm_672/strided_slice_2/stack:output:0)lstm_672/strided_slice_2/stack_1:output:0)lstm_672/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_672/lstm_cell_702/MatMul/ReadVariableOpReadVariableOp5lstm_672_lstm_cell_702_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_672/lstm_cell_702/MatMulMatMul!lstm_672/strided_slice_2:output:04lstm_672/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_672/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp7lstm_672_lstm_cell_702_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_672/lstm_cell_702/MatMul_1MatMullstm_672/zeros:output:06lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_672/lstm_cell_702/addAddV2'lstm_672/lstm_cell_702/MatMul:product:0)lstm_672/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_672/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp6lstm_672_lstm_cell_702_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_672/lstm_cell_702/BiasAddBiasAddlstm_672/lstm_cell_702/add:z:05lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_672/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_672/lstm_cell_702/splitSplit/lstm_672/lstm_cell_702/split/split_dim:output:0'lstm_672/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_672/lstm_cell_702/SigmoidSigmoid%lstm_672/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_672/lstm_cell_702/Sigmoid_1Sigmoid%lstm_672/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_672/lstm_cell_702/mulMul$lstm_672/lstm_cell_702/Sigmoid_1:y:0lstm_672/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_672/lstm_cell_702/ReluRelu%lstm_672/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_672/lstm_cell_702/mul_1Mul"lstm_672/lstm_cell_702/Sigmoid:y:0)lstm_672/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_672/lstm_cell_702/add_1AddV2lstm_672/lstm_cell_702/mul:z:0 lstm_672/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_672/lstm_cell_702/Sigmoid_2Sigmoid%lstm_672/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_672/lstm_cell_702/Relu_1Relu lstm_672/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_672/lstm_cell_702/mul_2Mul$lstm_672/lstm_cell_702/Sigmoid_2:y:0+lstm_672/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_672/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_672/TensorArrayV2_1TensorListReserve/lstm_672/TensorArrayV2_1/element_shape:output:0!lstm_672/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_672/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_672/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_672/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_672/whileWhile$lstm_672/while/loop_counter:output:0*lstm_672/while/maximum_iterations:output:0lstm_672/time:output:0!lstm_672/TensorArrayV2_1:handle:0lstm_672/zeros:output:0lstm_672/zeros_1:output:0!lstm_672/strided_slice_1:output:0@lstm_672/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_672_lstm_cell_702_matmul_readvariableop_resource7lstm_672_lstm_cell_702_matmul_1_readvariableop_resource6lstm_672_lstm_cell_702_biasadd_readvariableop_resource*
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
lstm_672_while_body_4261691*'
condR
lstm_672_while_cond_4261690*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_672/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_672/TensorArrayV2Stack/TensorListStackTensorListStacklstm_672/while:output:3Blstm_672/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_672/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_672/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_672/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_672/strided_slice_3StridedSlice4lstm_672/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_672/strided_slice_3/stack:output:0)lstm_672/strided_slice_3/stack_1:output:0)lstm_672/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_672/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_672/transpose_1	Transpose4lstm_672/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_672/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_672/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_673/ShapeShapelstm_672/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_673/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_673/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_673/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_673/strided_sliceStridedSlicelstm_673/Shape:output:0%lstm_673/strided_slice/stack:output:0'lstm_673/strided_slice/stack_1:output:0'lstm_673/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_673/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_673/zeros/packedPacklstm_673/strided_slice:output:0 lstm_673/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_673/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_673/zerosFilllstm_673/zeros/packed:output:0lstm_673/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_673/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_673/zeros_1/packedPacklstm_673/strided_slice:output:0"lstm_673/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_673/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_673/zeros_1Fill lstm_673/zeros_1/packed:output:0lstm_673/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_673/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_673/transpose	Transposelstm_672/transpose_1:y:0 lstm_673/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_673/Shape_1Shapelstm_673/transpose:y:0*
T0*
_output_shapes
:h
lstm_673/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_673/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_673/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_673/strided_slice_1StridedSlicelstm_673/Shape_1:output:0'lstm_673/strided_slice_1/stack:output:0)lstm_673/strided_slice_1/stack_1:output:0)lstm_673/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_673/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_673/TensorArrayV2TensorListReserve-lstm_673/TensorArrayV2/element_shape:output:0!lstm_673/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_673/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_673/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_673/transpose:y:0Glstm_673/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_673/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_673/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_673/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_673/strided_slice_2StridedSlicelstm_673/transpose:y:0'lstm_673/strided_slice_2/stack:output:0)lstm_673/strided_slice_2/stack_1:output:0)lstm_673/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_673/lstm_cell_703/MatMul/ReadVariableOpReadVariableOp5lstm_673_lstm_cell_703_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_673/lstm_cell_703/MatMulMatMul!lstm_673/strided_slice_2:output:04lstm_673/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_673/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp7lstm_673_lstm_cell_703_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_673/lstm_cell_703/MatMul_1MatMullstm_673/zeros:output:06lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_673/lstm_cell_703/addAddV2'lstm_673/lstm_cell_703/MatMul:product:0)lstm_673/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_673/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp6lstm_673_lstm_cell_703_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_673/lstm_cell_703/BiasAddBiasAddlstm_673/lstm_cell_703/add:z:05lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_673/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_673/lstm_cell_703/splitSplit/lstm_673/lstm_cell_703/split/split_dim:output:0'lstm_673/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_673/lstm_cell_703/SigmoidSigmoid%lstm_673/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_673/lstm_cell_703/Sigmoid_1Sigmoid%lstm_673/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_673/lstm_cell_703/mulMul$lstm_673/lstm_cell_703/Sigmoid_1:y:0lstm_673/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_673/lstm_cell_703/ReluRelu%lstm_673/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_673/lstm_cell_703/mul_1Mul"lstm_673/lstm_cell_703/Sigmoid:y:0)lstm_673/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_673/lstm_cell_703/add_1AddV2lstm_673/lstm_cell_703/mul:z:0 lstm_673/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_673/lstm_cell_703/Sigmoid_2Sigmoid%lstm_673/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_673/lstm_cell_703/Relu_1Relu lstm_673/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_673/lstm_cell_703/mul_2Mul$lstm_673/lstm_cell_703/Sigmoid_2:y:0+lstm_673/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_673/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_673/TensorArrayV2_1TensorListReserve/lstm_673/TensorArrayV2_1/element_shape:output:0!lstm_673/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_673/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_673/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_673/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_673/whileWhile$lstm_673/while/loop_counter:output:0*lstm_673/while/maximum_iterations:output:0lstm_673/time:output:0!lstm_673/TensorArrayV2_1:handle:0lstm_673/zeros:output:0lstm_673/zeros_1:output:0!lstm_673/strided_slice_1:output:0@lstm_673/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_673_lstm_cell_703_matmul_readvariableop_resource7lstm_673_lstm_cell_703_matmul_1_readvariableop_resource6lstm_673_lstm_cell_703_biasadd_readvariableop_resource*
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
lstm_673_while_body_4261830*'
condR
lstm_673_while_cond_4261829*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_673/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_673/TensorArrayV2Stack/TensorListStackTensorListStacklstm_673/while:output:3Blstm_673/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_673/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_673/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_673/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_673/strided_slice_3StridedSlice4lstm_673/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_673/strided_slice_3/stack:output:0)lstm_673/strided_slice_3/stack_1:output:0)lstm_673/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_673/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_673/transpose_1	Transpose4lstm_673/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_673/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_673/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_674/ShapeShapelstm_673/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_674/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_674/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_674/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_674/strided_sliceStridedSlicelstm_674/Shape:output:0%lstm_674/strided_slice/stack:output:0'lstm_674/strided_slice/stack_1:output:0'lstm_674/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_674/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_674/zeros/packedPacklstm_674/strided_slice:output:0 lstm_674/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_674/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_674/zerosFilllstm_674/zeros/packed:output:0lstm_674/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_674/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_674/zeros_1/packedPacklstm_674/strided_slice:output:0"lstm_674/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_674/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_674/zeros_1Fill lstm_674/zeros_1/packed:output:0lstm_674/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_674/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_674/transpose	Transposelstm_673/transpose_1:y:0 lstm_674/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_674/Shape_1Shapelstm_674/transpose:y:0*
T0*
_output_shapes
:h
lstm_674/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_674/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_674/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_674/strided_slice_1StridedSlicelstm_674/Shape_1:output:0'lstm_674/strided_slice_1/stack:output:0)lstm_674/strided_slice_1/stack_1:output:0)lstm_674/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_674/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_674/TensorArrayV2TensorListReserve-lstm_674/TensorArrayV2/element_shape:output:0!lstm_674/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_674/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_674/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_674/transpose:y:0Glstm_674/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_674/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_674/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_674/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_674/strided_slice_2StridedSlicelstm_674/transpose:y:0'lstm_674/strided_slice_2/stack:output:0)lstm_674/strided_slice_2/stack_1:output:0)lstm_674/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_674/lstm_cell_704/MatMul/ReadVariableOpReadVariableOp5lstm_674_lstm_cell_704_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_674/lstm_cell_704/MatMulMatMul!lstm_674/strided_slice_2:output:04lstm_674/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_674/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp7lstm_674_lstm_cell_704_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_674/lstm_cell_704/MatMul_1MatMullstm_674/zeros:output:06lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_674/lstm_cell_704/addAddV2'lstm_674/lstm_cell_704/MatMul:product:0)lstm_674/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_674/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp6lstm_674_lstm_cell_704_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_674/lstm_cell_704/BiasAddBiasAddlstm_674/lstm_cell_704/add:z:05lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_674/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_674/lstm_cell_704/splitSplit/lstm_674/lstm_cell_704/split/split_dim:output:0'lstm_674/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_674/lstm_cell_704/SigmoidSigmoid%lstm_674/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_674/lstm_cell_704/Sigmoid_1Sigmoid%lstm_674/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_674/lstm_cell_704/mulMul$lstm_674/lstm_cell_704/Sigmoid_1:y:0lstm_674/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_674/lstm_cell_704/ReluRelu%lstm_674/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_674/lstm_cell_704/mul_1Mul"lstm_674/lstm_cell_704/Sigmoid:y:0)lstm_674/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_674/lstm_cell_704/add_1AddV2lstm_674/lstm_cell_704/mul:z:0 lstm_674/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_674/lstm_cell_704/Sigmoid_2Sigmoid%lstm_674/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_674/lstm_cell_704/Relu_1Relu lstm_674/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_674/lstm_cell_704/mul_2Mul$lstm_674/lstm_cell_704/Sigmoid_2:y:0+lstm_674/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_674/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_674/TensorArrayV2_1TensorListReserve/lstm_674/TensorArrayV2_1/element_shape:output:0!lstm_674/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_674/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_674/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_674/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_674/whileWhile$lstm_674/while/loop_counter:output:0*lstm_674/while/maximum_iterations:output:0lstm_674/time:output:0!lstm_674/TensorArrayV2_1:handle:0lstm_674/zeros:output:0lstm_674/zeros_1:output:0!lstm_674/strided_slice_1:output:0@lstm_674/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_674_lstm_cell_704_matmul_readvariableop_resource7lstm_674_lstm_cell_704_matmul_1_readvariableop_resource6lstm_674_lstm_cell_704_biasadd_readvariableop_resource*
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
lstm_674_while_body_4261969*'
condR
lstm_674_while_cond_4261968*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_674/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_674/TensorArrayV2Stack/TensorListStackTensorListStacklstm_674/while:output:3Blstm_674/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_674/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_674/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_674/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_674/strided_slice_3StridedSlice4lstm_674/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_674/strided_slice_3/stack:output:0)lstm_674/strided_slice_3/stack_1:output:0)lstm_674/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_674/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_674/transpose_1	Transpose4lstm_674/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_674/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_674/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_224/MatMul/ReadVariableOpReadVariableOp(dense_224_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_224/MatMulMatMul!lstm_674/strided_slice_3:output:0'dense_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_224/BiasAdd/ReadVariableOpReadVariableOp)dense_224_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_224/BiasAddBiasAdddense_224/MatMul:product:0(dense_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_224/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_224/BiasAdd/ReadVariableOp ^dense_224/MatMul/ReadVariableOp.^lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp-^lstm_672/lstm_cell_702/MatMul/ReadVariableOp/^lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp^lstm_672/while.^lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp-^lstm_673/lstm_cell_703/MatMul/ReadVariableOp/^lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp^lstm_673/while.^lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp-^lstm_674/lstm_cell_704/MatMul/ReadVariableOp/^lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp^lstm_674/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_224/BiasAdd/ReadVariableOp dense_224/BiasAdd/ReadVariableOp2B
dense_224/MatMul/ReadVariableOpdense_224/MatMul/ReadVariableOp2^
-lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp-lstm_672/lstm_cell_702/BiasAdd/ReadVariableOp2\
,lstm_672/lstm_cell_702/MatMul/ReadVariableOp,lstm_672/lstm_cell_702/MatMul/ReadVariableOp2`
.lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp.lstm_672/lstm_cell_702/MatMul_1/ReadVariableOp2 
lstm_672/whilelstm_672/while2^
-lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp-lstm_673/lstm_cell_703/BiasAdd/ReadVariableOp2\
,lstm_673/lstm_cell_703/MatMul/ReadVariableOp,lstm_673/lstm_cell_703/MatMul/ReadVariableOp2`
.lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp.lstm_673/lstm_cell_703/MatMul_1/ReadVariableOp2 
lstm_673/whilelstm_673/while2^
-lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp-lstm_674/lstm_cell_704/BiasAdd/ReadVariableOp2\
,lstm_674/lstm_cell_704/MatMul/ReadVariableOp,lstm_674/lstm_cell_704/MatMul/ReadVariableOp2`
.lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp.lstm_674/lstm_cell_704/MatMul_1/ReadVariableOp2 
lstm_674/whilelstm_674/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4260948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4260948___redundant_placeholder05
1while_while_cond_4260948___redundant_placeholder15
1while_while_cond_4260948___redundant_placeholder25
1while_while_cond_4260948___redundant_placeholder3
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
while_body_4260949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_704_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_704_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_704_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_704_matmul_readvariableop_resource:2(F
4while_lstm_cell_704_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_704_biasadd_readvariableop_resource:(??*while/lstm_cell_704/BiasAdd/ReadVariableOp?)while/lstm_cell_704/MatMul/ReadVariableOp?+while/lstm_cell_704/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_704/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_704_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_704/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_704_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_704/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_704/addAddV2$while/lstm_cell_704/MatMul:product:0&while/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_704_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_704/BiasAddBiasAddwhile/lstm_cell_704/add:z:02while/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_704/splitSplit,while/lstm_cell_704/split/split_dim:output:0$while/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_704/SigmoidSigmoid"while/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_1Sigmoid"while/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mulMul!while/lstm_cell_704/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_704/ReluRelu"while/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_1Mulwhile/lstm_cell_704/Sigmoid:y:0&while/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/add_1AddV2while/lstm_cell_704/mul:z:0while/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_2Sigmoid"while/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_704/Relu_1Reluwhile/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_2Mul!while/lstm_cell_704/Sigmoid_2:y:0(while/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_704/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_704/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_704/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_704/BiasAdd/ReadVariableOp*^while/lstm_cell_704/MatMul/ReadVariableOp,^while/lstm_cell_704/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_704_biasadd_readvariableop_resource5while_lstm_cell_704_biasadd_readvariableop_resource_0"n
4while_lstm_cell_704_matmul_1_readvariableop_resource6while_lstm_cell_704_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_704_matmul_readvariableop_resource4while_lstm_cell_704_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_704/BiasAdd/ReadVariableOp*while/lstm_cell_704/BiasAdd/ReadVariableOp2V
)while/lstm_cell_704/MatMul/ReadVariableOp)while/lstm_cell_704/MatMul/ReadVariableOp2Z
+while/lstm_cell_704/MatMul_1/ReadVariableOp+while/lstm_cell_704/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_224_layer_call_fn_4261632

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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4261431o
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
?C
?

lstm_674_while_body_4261969.
*lstm_674_while_lstm_674_while_loop_counter4
0lstm_674_while_lstm_674_while_maximum_iterations
lstm_674_while_placeholder 
lstm_674_while_placeholder_1 
lstm_674_while_placeholder_2 
lstm_674_while_placeholder_3-
)lstm_674_while_lstm_674_strided_slice_1_0i
elstm_674_while_tensorarrayv2read_tensorlistgetitem_lstm_674_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_674_while_lstm_cell_704_matmul_readvariableop_resource_0:2(Q
?lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource_0:
(L
>lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource_0:(
lstm_674_while_identity
lstm_674_while_identity_1
lstm_674_while_identity_2
lstm_674_while_identity_3
lstm_674_while_identity_4
lstm_674_while_identity_5+
'lstm_674_while_lstm_674_strided_slice_1g
clstm_674_while_tensorarrayv2read_tensorlistgetitem_lstm_674_tensorarrayunstack_tensorlistfromtensorM
;lstm_674_while_lstm_cell_704_matmul_readvariableop_resource:2(O
=lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource:
(J
<lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource:(??3lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp?2lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp?4lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp?
@lstm_674/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_674/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_674_while_tensorarrayv2read_tensorlistgetitem_lstm_674_tensorarrayunstack_tensorlistfromtensor_0lstm_674_while_placeholderIlstm_674/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_674/while/lstm_cell_704/MatMul/ReadVariableOpReadVariableOp=lstm_674_while_lstm_cell_704_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_674/while/lstm_cell_704/MatMulMatMul9lstm_674/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp?lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_674/while/lstm_cell_704/MatMul_1MatMullstm_674_while_placeholder_2<lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_674/while/lstm_cell_704/addAddV2-lstm_674/while/lstm_cell_704/MatMul:product:0/lstm_674/while/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp>lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_674/while/lstm_cell_704/BiasAddBiasAdd$lstm_674/while/lstm_cell_704/add:z:0;lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_674/while/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_674/while/lstm_cell_704/splitSplit5lstm_674/while/lstm_cell_704/split/split_dim:output:0-lstm_674/while/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_674/while/lstm_cell_704/SigmoidSigmoid+lstm_674/while/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_674/while/lstm_cell_704/Sigmoid_1Sigmoid+lstm_674/while/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_674/while/lstm_cell_704/mulMul*lstm_674/while/lstm_cell_704/Sigmoid_1:y:0lstm_674_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_674/while/lstm_cell_704/ReluRelu+lstm_674/while/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_674/while/lstm_cell_704/mul_1Mul(lstm_674/while/lstm_cell_704/Sigmoid:y:0/lstm_674/while/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_674/while/lstm_cell_704/add_1AddV2$lstm_674/while/lstm_cell_704/mul:z:0&lstm_674/while/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_674/while/lstm_cell_704/Sigmoid_2Sigmoid+lstm_674/while/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_674/while/lstm_cell_704/Relu_1Relu&lstm_674/while/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_674/while/lstm_cell_704/mul_2Mul*lstm_674/while/lstm_cell_704/Sigmoid_2:y:01lstm_674/while/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_674/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_674_while_placeholder_1lstm_674_while_placeholder&lstm_674/while/lstm_cell_704/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_674/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_674/while/addAddV2lstm_674_while_placeholderlstm_674/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_674/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_674/while/add_1AddV2*lstm_674_while_lstm_674_while_loop_counterlstm_674/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_674/while/IdentityIdentitylstm_674/while/add_1:z:0^lstm_674/while/NoOp*
T0*
_output_shapes
: ?
lstm_674/while/Identity_1Identity0lstm_674_while_lstm_674_while_maximum_iterations^lstm_674/while/NoOp*
T0*
_output_shapes
: t
lstm_674/while/Identity_2Identitylstm_674/while/add:z:0^lstm_674/while/NoOp*
T0*
_output_shapes
: ?
lstm_674/while/Identity_3IdentityClstm_674/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_674/while/NoOp*
T0*
_output_shapes
: ?
lstm_674/while/Identity_4Identity&lstm_674/while/lstm_cell_704/mul_2:z:0^lstm_674/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_674/while/Identity_5Identity&lstm_674/while/lstm_cell_704/add_1:z:0^lstm_674/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_674/while/NoOpNoOp4^lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp3^lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp5^lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_674_while_identity lstm_674/while/Identity:output:0"?
lstm_674_while_identity_1"lstm_674/while/Identity_1:output:0"?
lstm_674_while_identity_2"lstm_674/while/Identity_2:output:0"?
lstm_674_while_identity_3"lstm_674/while/Identity_3:output:0"?
lstm_674_while_identity_4"lstm_674/while/Identity_4:output:0"?
lstm_674_while_identity_5"lstm_674/while/Identity_5:output:0"T
'lstm_674_while_lstm_674_strided_slice_1)lstm_674_while_lstm_674_strided_slice_1_0"~
<lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource>lstm_674_while_lstm_cell_704_biasadd_readvariableop_resource_0"?
=lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource?lstm_674_while_lstm_cell_704_matmul_1_readvariableop_resource_0"|
;lstm_674_while_lstm_cell_704_matmul_readvariableop_resource=lstm_674_while_lstm_cell_704_matmul_readvariableop_resource_0"?
clstm_674_while_tensorarrayv2read_tensorlistgetitem_lstm_674_tensorarrayunstack_tensorlistfromtensorelstm_674_while_tensorarrayv2read_tensorlistgetitem_lstm_674_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp3lstm_674/while/lstm_cell_704/BiasAdd/ReadVariableOp2h
2lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp2lstm_674/while/lstm_cell_704/MatMul/ReadVariableOp2l
4lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp4lstm_674/while/lstm_cell_704/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_672_while_body_4262118.
*lstm_672_while_lstm_672_while_loop_counter4
0lstm_672_while_lstm_672_while_maximum_iterations
lstm_672_while_placeholder 
lstm_672_while_placeholder_1 
lstm_672_while_placeholder_2 
lstm_672_while_placeholder_3-
)lstm_672_while_lstm_672_strided_slice_1_0i
elstm_672_while_tensorarrayv2read_tensorlistgetitem_lstm_672_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_672_while_lstm_cell_702_matmul_readvariableop_resource_0:	?R
?lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource_0:	d?M
>lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource_0:	?
lstm_672_while_identity
lstm_672_while_identity_1
lstm_672_while_identity_2
lstm_672_while_identity_3
lstm_672_while_identity_4
lstm_672_while_identity_5+
'lstm_672_while_lstm_672_strided_slice_1g
clstm_672_while_tensorarrayv2read_tensorlistgetitem_lstm_672_tensorarrayunstack_tensorlistfromtensorN
;lstm_672_while_lstm_cell_702_matmul_readvariableop_resource:	?P
=lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource:	d?K
<lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource:	???3lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp?2lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp?4lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp?
@lstm_672/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_672/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_672_while_tensorarrayv2read_tensorlistgetitem_lstm_672_tensorarrayunstack_tensorlistfromtensor_0lstm_672_while_placeholderIlstm_672/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_672/while/lstm_cell_702/MatMul/ReadVariableOpReadVariableOp=lstm_672_while_lstm_cell_702_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_672/while/lstm_cell_702/MatMulMatMul9lstm_672/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp?lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_672/while/lstm_cell_702/MatMul_1MatMullstm_672_while_placeholder_2<lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_672/while/lstm_cell_702/addAddV2-lstm_672/while/lstm_cell_702/MatMul:product:0/lstm_672/while/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp>lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_672/while/lstm_cell_702/BiasAddBiasAdd$lstm_672/while/lstm_cell_702/add:z:0;lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_672/while/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_672/while/lstm_cell_702/splitSplit5lstm_672/while/lstm_cell_702/split/split_dim:output:0-lstm_672/while/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_672/while/lstm_cell_702/SigmoidSigmoid+lstm_672/while/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_672/while/lstm_cell_702/Sigmoid_1Sigmoid+lstm_672/while/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_672/while/lstm_cell_702/mulMul*lstm_672/while/lstm_cell_702/Sigmoid_1:y:0lstm_672_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_672/while/lstm_cell_702/ReluRelu+lstm_672/while/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_672/while/lstm_cell_702/mul_1Mul(lstm_672/while/lstm_cell_702/Sigmoid:y:0/lstm_672/while/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_672/while/lstm_cell_702/add_1AddV2$lstm_672/while/lstm_cell_702/mul:z:0&lstm_672/while/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_672/while/lstm_cell_702/Sigmoid_2Sigmoid+lstm_672/while/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_672/while/lstm_cell_702/Relu_1Relu&lstm_672/while/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_672/while/lstm_cell_702/mul_2Mul*lstm_672/while/lstm_cell_702/Sigmoid_2:y:01lstm_672/while/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_672/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_672_while_placeholder_1lstm_672_while_placeholder&lstm_672/while/lstm_cell_702/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_672/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_672/while/addAddV2lstm_672_while_placeholderlstm_672/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_672/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_672/while/add_1AddV2*lstm_672_while_lstm_672_while_loop_counterlstm_672/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_672/while/IdentityIdentitylstm_672/while/add_1:z:0^lstm_672/while/NoOp*
T0*
_output_shapes
: ?
lstm_672/while/Identity_1Identity0lstm_672_while_lstm_672_while_maximum_iterations^lstm_672/while/NoOp*
T0*
_output_shapes
: t
lstm_672/while/Identity_2Identitylstm_672/while/add:z:0^lstm_672/while/NoOp*
T0*
_output_shapes
: ?
lstm_672/while/Identity_3IdentityClstm_672/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_672/while/NoOp*
T0*
_output_shapes
: ?
lstm_672/while/Identity_4Identity&lstm_672/while/lstm_cell_702/mul_2:z:0^lstm_672/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_672/while/Identity_5Identity&lstm_672/while/lstm_cell_702/add_1:z:0^lstm_672/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_672/while/NoOpNoOp4^lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp3^lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp5^lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_672_while_identity lstm_672/while/Identity:output:0"?
lstm_672_while_identity_1"lstm_672/while/Identity_1:output:0"?
lstm_672_while_identity_2"lstm_672/while/Identity_2:output:0"?
lstm_672_while_identity_3"lstm_672/while/Identity_3:output:0"?
lstm_672_while_identity_4"lstm_672/while/Identity_4:output:0"?
lstm_672_while_identity_5"lstm_672/while/Identity_5:output:0"T
'lstm_672_while_lstm_672_strided_slice_1)lstm_672_while_lstm_672_strided_slice_1_0"~
<lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource>lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource_0"?
=lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource?lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource_0"|
;lstm_672_while_lstm_cell_702_matmul_readvariableop_resource=lstm_672_while_lstm_cell_702_matmul_readvariableop_resource_0"?
clstm_672_while_tensorarrayv2read_tensorlistgetitem_lstm_672_tensorarrayunstack_tensorlistfromtensorelstm_672_while_tensorarrayv2read_tensorlistgetitem_lstm_672_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp3lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp2h
2lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp2lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp2l
4lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp4lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_224_lstm_673_while_cond_4259088L
Hsequential_224_lstm_673_while_sequential_224_lstm_673_while_loop_counterR
Nsequential_224_lstm_673_while_sequential_224_lstm_673_while_maximum_iterations-
)sequential_224_lstm_673_while_placeholder/
+sequential_224_lstm_673_while_placeholder_1/
+sequential_224_lstm_673_while_placeholder_2/
+sequential_224_lstm_673_while_placeholder_3N
Jsequential_224_lstm_673_while_less_sequential_224_lstm_673_strided_slice_1e
asequential_224_lstm_673_while_sequential_224_lstm_673_while_cond_4259088___redundant_placeholder0e
asequential_224_lstm_673_while_sequential_224_lstm_673_while_cond_4259088___redundant_placeholder1e
asequential_224_lstm_673_while_sequential_224_lstm_673_while_cond_4259088___redundant_placeholder2e
asequential_224_lstm_673_while_sequential_224_lstm_673_while_cond_4259088___redundant_placeholder3*
&sequential_224_lstm_673_while_identity
?
"sequential_224/lstm_673/while/LessLess)sequential_224_lstm_673_while_placeholderJsequential_224_lstm_673_while_less_sequential_224_lstm_673_strided_slice_1*
T0*
_output_shapes
: {
&sequential_224/lstm_673/while/IdentityIdentity&sequential_224/lstm_673/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_224_lstm_673_while_identity/sequential_224/lstm_673/while/Identity:output:0*(
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4260359

inputs'
lstm_cell_704_4260277:2('
lstm_cell_704_4260279:
(#
lstm_cell_704_4260281:(
identity??%lstm_cell_704/StatefulPartitionedCall?while;
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
%lstm_cell_704/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_704_4260277lstm_cell_704_4260279lstm_cell_704_4260281*
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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4260231n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_704_4260277lstm_cell_704_4260279lstm_cell_704_4260281*
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
while_body_4260290*
condR
while_cond_4260289*K
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
NoOpNoOp&^lstm_cell_704/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_704/StatefulPartitionedCall%lstm_cell_704/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_672_layer_call_fn_4262497
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4259468|
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

?
%__inference_signature_wrapper_4261578
lstm_672_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_672_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4259318o
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
_user_specified_namelstm_672_input
?K
?
E__inference_lstm_672_layer_call_and_return_conditional_losses_4262816
inputs_0?
,lstm_cell_702_matmul_readvariableop_resource:	?A
.lstm_cell_702_matmul_1_readvariableop_resource:	d?<
-lstm_cell_702_biasadd_readvariableop_resource:	?
identity??$lstm_cell_702/BiasAdd/ReadVariableOp?#lstm_cell_702/MatMul/ReadVariableOp?%lstm_cell_702/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_702/MatMul/ReadVariableOpReadVariableOp,lstm_cell_702_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_702/MatMulMatMulstrided_slice_2:output:0+lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_702_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_702/MatMul_1MatMulzeros:output:0-lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_702/addAddV2lstm_cell_702/MatMul:product:0 lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_702_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_702/BiasAddBiasAddlstm_cell_702/add:z:0,lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_702/splitSplit&lstm_cell_702/split/split_dim:output:0lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_702/SigmoidSigmoidlstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_1Sigmoidlstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_702/mulMullstm_cell_702/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_702/ReluRelulstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_1Mullstm_cell_702/Sigmoid:y:0 lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_702/add_1AddV2lstm_cell_702/mul:z:0lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_2Sigmoidlstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_702/Relu_1Relulstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_2Mullstm_cell_702/Sigmoid_2:y:0"lstm_cell_702/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_702_matmul_readvariableop_resource.lstm_cell_702_matmul_1_readvariableop_resource-lstm_cell_702_biasadd_readvariableop_resource*
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
while_body_4262732*
condR
while_cond_4262731*K
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
NoOpNoOp%^lstm_cell_702/BiasAdd/ReadVariableOp$^lstm_cell_702/MatMul/ReadVariableOp&^lstm_cell_702/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_702/BiasAdd/ReadVariableOp$lstm_cell_702/BiasAdd/ReadVariableOp2J
#lstm_cell_702/MatMul/ReadVariableOp#lstm_cell_702/MatMul/ReadVariableOp2N
%lstm_cell_702/MatMul_1/ReadVariableOp%lstm_cell_702/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_673_while_body_4262257.
*lstm_673_while_lstm_673_while_loop_counter4
0lstm_673_while_lstm_673_while_maximum_iterations
lstm_673_while_placeholder 
lstm_673_while_placeholder_1 
lstm_673_while_placeholder_2 
lstm_673_while_placeholder_3-
)lstm_673_while_lstm_673_strided_slice_1_0i
elstm_673_while_tensorarrayv2read_tensorlistgetitem_lstm_673_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_673_while_lstm_cell_703_matmul_readvariableop_resource_0:	d?R
?lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource_0:	2?M
>lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource_0:	?
lstm_673_while_identity
lstm_673_while_identity_1
lstm_673_while_identity_2
lstm_673_while_identity_3
lstm_673_while_identity_4
lstm_673_while_identity_5+
'lstm_673_while_lstm_673_strided_slice_1g
clstm_673_while_tensorarrayv2read_tensorlistgetitem_lstm_673_tensorarrayunstack_tensorlistfromtensorN
;lstm_673_while_lstm_cell_703_matmul_readvariableop_resource:	d?P
=lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource:	2?K
<lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource:	???3lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp?2lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp?4lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp?
@lstm_673/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_673/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_673_while_tensorarrayv2read_tensorlistgetitem_lstm_673_tensorarrayunstack_tensorlistfromtensor_0lstm_673_while_placeholderIlstm_673/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_673/while/lstm_cell_703/MatMul/ReadVariableOpReadVariableOp=lstm_673_while_lstm_cell_703_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_673/while/lstm_cell_703/MatMulMatMul9lstm_673/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp?lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_673/while/lstm_cell_703/MatMul_1MatMullstm_673_while_placeholder_2<lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_673/while/lstm_cell_703/addAddV2-lstm_673/while/lstm_cell_703/MatMul:product:0/lstm_673/while/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp>lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_673/while/lstm_cell_703/BiasAddBiasAdd$lstm_673/while/lstm_cell_703/add:z:0;lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_673/while/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_673/while/lstm_cell_703/splitSplit5lstm_673/while/lstm_cell_703/split/split_dim:output:0-lstm_673/while/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_673/while/lstm_cell_703/SigmoidSigmoid+lstm_673/while/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_673/while/lstm_cell_703/Sigmoid_1Sigmoid+lstm_673/while/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_673/while/lstm_cell_703/mulMul*lstm_673/while/lstm_cell_703/Sigmoid_1:y:0lstm_673_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_673/while/lstm_cell_703/ReluRelu+lstm_673/while/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_673/while/lstm_cell_703/mul_1Mul(lstm_673/while/lstm_cell_703/Sigmoid:y:0/lstm_673/while/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_673/while/lstm_cell_703/add_1AddV2$lstm_673/while/lstm_cell_703/mul:z:0&lstm_673/while/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_673/while/lstm_cell_703/Sigmoid_2Sigmoid+lstm_673/while/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_673/while/lstm_cell_703/Relu_1Relu&lstm_673/while/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_673/while/lstm_cell_703/mul_2Mul*lstm_673/while/lstm_cell_703/Sigmoid_2:y:01lstm_673/while/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_673/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_673_while_placeholder_1lstm_673_while_placeholder&lstm_673/while/lstm_cell_703/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_673/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_673/while/addAddV2lstm_673_while_placeholderlstm_673/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_673/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_673/while/add_1AddV2*lstm_673_while_lstm_673_while_loop_counterlstm_673/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_673/while/IdentityIdentitylstm_673/while/add_1:z:0^lstm_673/while/NoOp*
T0*
_output_shapes
: ?
lstm_673/while/Identity_1Identity0lstm_673_while_lstm_673_while_maximum_iterations^lstm_673/while/NoOp*
T0*
_output_shapes
: t
lstm_673/while/Identity_2Identitylstm_673/while/add:z:0^lstm_673/while/NoOp*
T0*
_output_shapes
: ?
lstm_673/while/Identity_3IdentityClstm_673/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_673/while/NoOp*
T0*
_output_shapes
: ?
lstm_673/while/Identity_4Identity&lstm_673/while/lstm_cell_703/mul_2:z:0^lstm_673/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_673/while/Identity_5Identity&lstm_673/while/lstm_cell_703/add_1:z:0^lstm_673/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_673/while/NoOpNoOp4^lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp3^lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp5^lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_673_while_identity lstm_673/while/Identity:output:0"?
lstm_673_while_identity_1"lstm_673/while/Identity_1:output:0"?
lstm_673_while_identity_2"lstm_673/while/Identity_2:output:0"?
lstm_673_while_identity_3"lstm_673/while/Identity_3:output:0"?
lstm_673_while_identity_4"lstm_673/while/Identity_4:output:0"?
lstm_673_while_identity_5"lstm_673/while/Identity_5:output:0"T
'lstm_673_while_lstm_673_strided_slice_1)lstm_673_while_lstm_673_strided_slice_1_0"~
<lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource>lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource_0"?
=lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource?lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource_0"|
;lstm_673_while_lstm_cell_703_matmul_readvariableop_resource=lstm_673_while_lstm_cell_703_matmul_readvariableop_resource_0"?
clstm_673_while_tensorarrayv2read_tensorlistgetitem_lstm_673_tensorarrayunstack_tensorlistfromtensorelstm_673_while_tensorarrayv2read_tensorlistgetitem_lstm_673_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp3lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp2h
2lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp2lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp2l
4lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp4lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4259398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4259398___redundant_placeholder05
1while_while_cond_4259398___redundant_placeholder15
1while_while_cond_4259398___redundant_placeholder25
1while_while_cond_4259398___redundant_placeholder3
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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4261543
lstm_672_input#
lstm_672_4261516:	?#
lstm_672_4261518:	d?
lstm_672_4261520:	?#
lstm_673_4261523:	d?#
lstm_673_4261525:	2?
lstm_673_4261527:	?"
lstm_674_4261530:2("
lstm_674_4261532:
(
lstm_674_4261534:(#
dense_224_4261537:

dense_224_4261539:
identity??!dense_224/StatefulPartitionedCall? lstm_672/StatefulPartitionedCall? lstm_673/StatefulPartitionedCall? lstm_674/StatefulPartitionedCall?
 lstm_672/StatefulPartitionedCallStatefulPartitionedCalllstm_672_inputlstm_672_4261516lstm_672_4261518lstm_672_4261520*
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4261363?
 lstm_673/StatefulPartitionedCallStatefulPartitionedCall)lstm_672/StatefulPartitionedCall:output:0lstm_673_4261523lstm_673_4261525lstm_673_4261527*
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4261198?
 lstm_674/StatefulPartitionedCallStatefulPartitionedCall)lstm_673/StatefulPartitionedCall:output:0lstm_674_4261530lstm_674_4261532lstm_674_4261534*
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4261033?
!dense_224/StatefulPartitionedCallStatefulPartitionedCall)lstm_674/StatefulPartitionedCall:output:0dense_224_4261537dense_224_4261539*
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
F__inference_dense_224_layer_call_and_return_conditional_losses_4260835y
IdentityIdentity*dense_224/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_224/StatefulPartitionedCall!^lstm_672/StatefulPartitionedCall!^lstm_673/StatefulPartitionedCall!^lstm_674/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_224/StatefulPartitionedCall!dense_224/StatefulPartitionedCall2D
 lstm_672/StatefulPartitionedCall lstm_672/StatefulPartitionedCall2D
 lstm_673/StatefulPartitionedCall lstm_673/StatefulPartitionedCall2D
 lstm_674/StatefulPartitionedCall lstm_674/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_672_input
?T
?
*sequential_224_lstm_672_while_body_4258950L
Hsequential_224_lstm_672_while_sequential_224_lstm_672_while_loop_counterR
Nsequential_224_lstm_672_while_sequential_224_lstm_672_while_maximum_iterations-
)sequential_224_lstm_672_while_placeholder/
+sequential_224_lstm_672_while_placeholder_1/
+sequential_224_lstm_672_while_placeholder_2/
+sequential_224_lstm_672_while_placeholder_3K
Gsequential_224_lstm_672_while_sequential_224_lstm_672_strided_slice_1_0?
?sequential_224_lstm_672_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_672_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_224_lstm_672_while_lstm_cell_702_matmul_readvariableop_resource_0:	?a
Nsequential_224_lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource_0:	d?\
Msequential_224_lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource_0:	?*
&sequential_224_lstm_672_while_identity,
(sequential_224_lstm_672_while_identity_1,
(sequential_224_lstm_672_while_identity_2,
(sequential_224_lstm_672_while_identity_3,
(sequential_224_lstm_672_while_identity_4,
(sequential_224_lstm_672_while_identity_5I
Esequential_224_lstm_672_while_sequential_224_lstm_672_strided_slice_1?
?sequential_224_lstm_672_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_672_tensorarrayunstack_tensorlistfromtensor]
Jsequential_224_lstm_672_while_lstm_cell_702_matmul_readvariableop_resource:	?_
Lsequential_224_lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource:	d?Z
Ksequential_224_lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource:	???Bsequential_224/lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp?Asequential_224/lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp?Csequential_224/lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp?
Osequential_224/lstm_672/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_224/lstm_672/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_224_lstm_672_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_672_tensorarrayunstack_tensorlistfromtensor_0)sequential_224_lstm_672_while_placeholderXsequential_224/lstm_672/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_224/lstm_672/while/lstm_cell_702/MatMul/ReadVariableOpReadVariableOpLsequential_224_lstm_672_while_lstm_cell_702_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_224/lstm_672/while/lstm_cell_702/MatMulMatMulHsequential_224/lstm_672/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_224/lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_224/lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOpNsequential_224_lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_224/lstm_672/while/lstm_cell_702/MatMul_1MatMul+sequential_224_lstm_672_while_placeholder_2Ksequential_224/lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_224/lstm_672/while/lstm_cell_702/addAddV2<sequential_224/lstm_672/while/lstm_cell_702/MatMul:product:0>sequential_224/lstm_672/while/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_224/lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOpMsequential_224_lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_224/lstm_672/while/lstm_cell_702/BiasAddBiasAdd3sequential_224/lstm_672/while/lstm_cell_702/add:z:0Jsequential_224/lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_224/lstm_672/while/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_224/lstm_672/while/lstm_cell_702/splitSplitDsequential_224/lstm_672/while/lstm_cell_702/split/split_dim:output:0<sequential_224/lstm_672/while/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_224/lstm_672/while/lstm_cell_702/SigmoidSigmoid:sequential_224/lstm_672/while/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_224/lstm_672/while/lstm_cell_702/Sigmoid_1Sigmoid:sequential_224/lstm_672/while/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_224/lstm_672/while/lstm_cell_702/mulMul9sequential_224/lstm_672/while/lstm_cell_702/Sigmoid_1:y:0+sequential_224_lstm_672_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_224/lstm_672/while/lstm_cell_702/ReluRelu:sequential_224/lstm_672/while/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_224/lstm_672/while/lstm_cell_702/mul_1Mul7sequential_224/lstm_672/while/lstm_cell_702/Sigmoid:y:0>sequential_224/lstm_672/while/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_224/lstm_672/while/lstm_cell_702/add_1AddV23sequential_224/lstm_672/while/lstm_cell_702/mul:z:05sequential_224/lstm_672/while/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_224/lstm_672/while/lstm_cell_702/Sigmoid_2Sigmoid:sequential_224/lstm_672/while/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_224/lstm_672/while/lstm_cell_702/Relu_1Relu5sequential_224/lstm_672/while/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_224/lstm_672/while/lstm_cell_702/mul_2Mul9sequential_224/lstm_672/while/lstm_cell_702/Sigmoid_2:y:0@sequential_224/lstm_672/while/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_224/lstm_672/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_224_lstm_672_while_placeholder_1)sequential_224_lstm_672_while_placeholder5sequential_224/lstm_672/while/lstm_cell_702/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_224/lstm_672/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_224/lstm_672/while/addAddV2)sequential_224_lstm_672_while_placeholder,sequential_224/lstm_672/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_224/lstm_672/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_224/lstm_672/while/add_1AddV2Hsequential_224_lstm_672_while_sequential_224_lstm_672_while_loop_counter.sequential_224/lstm_672/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_224/lstm_672/while/IdentityIdentity'sequential_224/lstm_672/while/add_1:z:0#^sequential_224/lstm_672/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_672/while/Identity_1IdentityNsequential_224_lstm_672_while_sequential_224_lstm_672_while_maximum_iterations#^sequential_224/lstm_672/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_672/while/Identity_2Identity%sequential_224/lstm_672/while/add:z:0#^sequential_224/lstm_672/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_672/while/Identity_3IdentityRsequential_224/lstm_672/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_224/lstm_672/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_672/while/Identity_4Identity5sequential_224/lstm_672/while/lstm_cell_702/mul_2:z:0#^sequential_224/lstm_672/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_224/lstm_672/while/Identity_5Identity5sequential_224/lstm_672/while/lstm_cell_702/add_1:z:0#^sequential_224/lstm_672/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_224/lstm_672/while/NoOpNoOpC^sequential_224/lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOpB^sequential_224/lstm_672/while/lstm_cell_702/MatMul/ReadVariableOpD^sequential_224/lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_224_lstm_672_while_identity/sequential_224/lstm_672/while/Identity:output:0"]
(sequential_224_lstm_672_while_identity_11sequential_224/lstm_672/while/Identity_1:output:0"]
(sequential_224_lstm_672_while_identity_21sequential_224/lstm_672/while/Identity_2:output:0"]
(sequential_224_lstm_672_while_identity_31sequential_224/lstm_672/while/Identity_3:output:0"]
(sequential_224_lstm_672_while_identity_41sequential_224/lstm_672/while/Identity_4:output:0"]
(sequential_224_lstm_672_while_identity_51sequential_224/lstm_672/while/Identity_5:output:0"?
Ksequential_224_lstm_672_while_lstm_cell_702_biasadd_readvariableop_resourceMsequential_224_lstm_672_while_lstm_cell_702_biasadd_readvariableop_resource_0"?
Lsequential_224_lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resourceNsequential_224_lstm_672_while_lstm_cell_702_matmul_1_readvariableop_resource_0"?
Jsequential_224_lstm_672_while_lstm_cell_702_matmul_readvariableop_resourceLsequential_224_lstm_672_while_lstm_cell_702_matmul_readvariableop_resource_0"?
Esequential_224_lstm_672_while_sequential_224_lstm_672_strided_slice_1Gsequential_224_lstm_672_while_sequential_224_lstm_672_strided_slice_1_0"?
?sequential_224_lstm_672_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_672_tensorarrayunstack_tensorlistfromtensor?sequential_224_lstm_672_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_672_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_224/lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOpBsequential_224/lstm_672/while/lstm_cell_702/BiasAdd/ReadVariableOp2?
Asequential_224/lstm_672/while/lstm_cell_702/MatMul/ReadVariableOpAsequential_224/lstm_672/while/lstm_cell_702/MatMul/ReadVariableOp2?
Csequential_224/lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOpCsequential_224/lstm_672/while/lstm_cell_702/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_224_layer_call_fn_4264343

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
F__inference_dense_224_layer_call_and_return_conditional_losses_4260835o
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
while_body_4263018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_702_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_702_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_702_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_702_matmul_readvariableop_resource:	?G
4while_lstm_cell_702_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_702_biasadd_readvariableop_resource:	???*while/lstm_cell_702/BiasAdd/ReadVariableOp?)while/lstm_cell_702/MatMul/ReadVariableOp?+while/lstm_cell_702/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_702/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_702_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_702/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_702_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_702/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_702/addAddV2$while/lstm_cell_702/MatMul:product:0&while/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_702_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_702/BiasAddBiasAddwhile/lstm_cell_702/add:z:02while/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_702/splitSplit,while/lstm_cell_702/split/split_dim:output:0$while/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_702/SigmoidSigmoid"while/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_1Sigmoid"while/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mulMul!while/lstm_cell_702/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_702/ReluRelu"while/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_1Mulwhile/lstm_cell_702/Sigmoid:y:0&while/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/add_1AddV2while/lstm_cell_702/mul:z:0while/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_2Sigmoid"while/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_702/Relu_1Reluwhile/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_2Mul!while/lstm_cell_702/Sigmoid_2:y:0(while/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_702/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_702/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_702/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_702/BiasAdd/ReadVariableOp*^while/lstm_cell_702/MatMul/ReadVariableOp,^while/lstm_cell_702/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_702_biasadd_readvariableop_resource5while_lstm_cell_702_biasadd_readvariableop_resource_0"n
4while_lstm_cell_702_matmul_1_readvariableop_resource6while_lstm_cell_702_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_702_matmul_readvariableop_resource4while_lstm_cell_702_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_702/BiasAdd/ReadVariableOp*while/lstm_cell_702/BiasAdd/ReadVariableOp2V
)while/lstm_cell_702/MatMul/ReadVariableOp)while/lstm_cell_702/MatMul/ReadVariableOp2Z
+while/lstm_cell_702/MatMul_1/ReadVariableOp+while/lstm_cell_702/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4263347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4263347___redundant_placeholder05
1while_while_cond_4263347___redundant_placeholder15
1while_while_cond_4263347___redundant_placeholder25
1while_while_cond_4263347___redundant_placeholder3
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
*__inference_lstm_674_layer_call_fn_4263729
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4260168o
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
while_cond_4260098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4260098___redundant_placeholder05
1while_while_cond_4260098___redundant_placeholder15
1while_while_cond_4260098___redundant_placeholder25
1while_while_cond_4260098___redundant_placeholder3
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
while_cond_4261113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4261113___redundant_placeholder05
1while_while_cond_4261113___redundant_placeholder15
1while_while_cond_4261113___redundant_placeholder25
1while_while_cond_4261113___redundant_placeholder3
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
*__inference_lstm_673_layer_call_fn_4263135

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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4260667s
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

?
0__inference_sequential_224_layer_call_fn_4261483
lstm_672_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_672_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4261431o
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
_user_specified_namelstm_672_input
?J
?
E__inference_lstm_672_layer_call_and_return_conditional_losses_4263102

inputs?
,lstm_cell_702_matmul_readvariableop_resource:	?A
.lstm_cell_702_matmul_1_readvariableop_resource:	d?<
-lstm_cell_702_biasadd_readvariableop_resource:	?
identity??$lstm_cell_702/BiasAdd/ReadVariableOp?#lstm_cell_702/MatMul/ReadVariableOp?%lstm_cell_702/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_702/MatMul/ReadVariableOpReadVariableOp,lstm_cell_702_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_702/MatMulMatMulstrided_slice_2:output:0+lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_702_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_702/MatMul_1MatMulzeros:output:0-lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_702/addAddV2lstm_cell_702/MatMul:product:0 lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_702_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_702/BiasAddBiasAddlstm_cell_702/add:z:0,lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_702/splitSplit&lstm_cell_702/split/split_dim:output:0lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_702/SigmoidSigmoidlstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_1Sigmoidlstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_702/mulMullstm_cell_702/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_702/ReluRelulstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_1Mullstm_cell_702/Sigmoid:y:0 lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_702/add_1AddV2lstm_cell_702/mul:z:0lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_2Sigmoidlstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_702/Relu_1Relulstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_2Mullstm_cell_702/Sigmoid_2:y:0"lstm_cell_702/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_702_matmul_readvariableop_resource.lstm_cell_702_matmul_1_readvariableop_resource-lstm_cell_702_biasadd_readvariableop_resource*
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
while_body_4263018*
condR
while_cond_4263017*K
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
NoOpNoOp%^lstm_cell_702/BiasAdd/ReadVariableOp$^lstm_cell_702/MatMul/ReadVariableOp&^lstm_cell_702/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_702/BiasAdd/ReadVariableOp$lstm_cell_702/BiasAdd/ReadVariableOp2J
#lstm_cell_702/MatMul/ReadVariableOp#lstm_cell_702/MatMul/ReadVariableOp2N
%lstm_cell_702/MatMul_1/ReadVariableOp%lstm_cell_702/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_224_layer_call_and_return_conditional_losses_4260835

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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4264451

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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4259818

inputs(
lstm_cell_703_4259736:	d?(
lstm_cell_703_4259738:	2?$
lstm_cell_703_4259740:	?
identity??%lstm_cell_703/StatefulPartitionedCall?while;
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
%lstm_cell_703/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_703_4259736lstm_cell_703_4259738lstm_cell_703_4259740*
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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4259735n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_703_4259736lstm_cell_703_4259738lstm_cell_703_4259740*
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
while_body_4259749*
condR
while_cond_4259748*K
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
NoOpNoOp&^lstm_cell_703/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_703/StatefulPartitionedCall%lstm_cell_703/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_673_layer_call_and_return_conditional_losses_4260667

inputs?
,lstm_cell_703_matmul_readvariableop_resource:	d?A
.lstm_cell_703_matmul_1_readvariableop_resource:	2?<
-lstm_cell_703_biasadd_readvariableop_resource:	?
identity??$lstm_cell_703/BiasAdd/ReadVariableOp?#lstm_cell_703/MatMul/ReadVariableOp?%lstm_cell_703/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_703/MatMul/ReadVariableOpReadVariableOp,lstm_cell_703_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_703/MatMulMatMulstrided_slice_2:output:0+lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_703_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_703/MatMul_1MatMulzeros:output:0-lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_703/addAddV2lstm_cell_703/MatMul:product:0 lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_703_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_703/BiasAddBiasAddlstm_cell_703/add:z:0,lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_703/splitSplit&lstm_cell_703/split/split_dim:output:0lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_703/SigmoidSigmoidlstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_1Sigmoidlstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_703/mulMullstm_cell_703/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_703/ReluRelulstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_1Mullstm_cell_703/Sigmoid:y:0 lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_703/add_1AddV2lstm_cell_703/mul:z:0lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_2Sigmoidlstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_703/Relu_1Relulstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_2Mullstm_cell_703/Sigmoid_2:y:0"lstm_cell_703/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_703_matmul_readvariableop_resource.lstm_cell_703_matmul_1_readvariableop_resource-lstm_cell_703_biasadd_readvariableop_resource*
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
while_body_4260583*
condR
while_cond_4260582*K
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
NoOpNoOp%^lstm_cell_703/BiasAdd/ReadVariableOp$^lstm_cell_703/MatMul/ReadVariableOp&^lstm_cell_703/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_703/BiasAdd/ReadVariableOp$lstm_cell_703/BiasAdd/ReadVariableOp2J
#lstm_cell_703/MatMul/ReadVariableOp#lstm_cell_703/MatMul/ReadVariableOp2N
%lstm_cell_703/MatMul_1/ReadVariableOp%lstm_cell_703/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4264419

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
/__inference_lstm_cell_703_layer_call_fn_4264485

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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4259881o
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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4264549

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
while_cond_4264249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4264249___redundant_placeholder05
1while_while_cond_4264249___redundant_placeholder15
1while_while_cond_4264249___redundant_placeholder25
1while_while_cond_4264249___redundant_placeholder3
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
while_cond_4263017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4263017___redundant_placeholder05
1while_while_cond_4263017___redundant_placeholder15
1while_while_cond_4263017___redundant_placeholder25
1while_while_cond_4263017___redundant_placeholder3
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
0__inference_sequential_224_layer_call_fn_4261605

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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4260842o
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
??
?
#__inference__traced_restore_4264920
file_prefix3
!assignvariableop_dense_224_kernel:
/
!assignvariableop_1_dense_224_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_672_lstm_cell_672_kernel:	?M
:assignvariableop_8_lstm_672_lstm_cell_672_recurrent_kernel:	d?=
.assignvariableop_9_lstm_672_lstm_cell_672_bias:	?D
1assignvariableop_10_lstm_673_lstm_cell_673_kernel:	d?N
;assignvariableop_11_lstm_673_lstm_cell_673_recurrent_kernel:	2?>
/assignvariableop_12_lstm_673_lstm_cell_673_bias:	?C
1assignvariableop_13_lstm_674_lstm_cell_674_kernel:2(M
;assignvariableop_14_lstm_674_lstm_cell_674_recurrent_kernel:
(=
/assignvariableop_15_lstm_674_lstm_cell_674_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_224_kernel_m:
7
)assignvariableop_19_adam_dense_224_bias_m:K
8assignvariableop_20_adam_lstm_672_lstm_cell_672_kernel_m:	?U
Bassignvariableop_21_adam_lstm_672_lstm_cell_672_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_672_lstm_cell_672_bias_m:	?K
8assignvariableop_23_adam_lstm_673_lstm_cell_673_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_673_lstm_cell_673_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_673_lstm_cell_673_bias_m:	?J
8assignvariableop_26_adam_lstm_674_lstm_cell_674_kernel_m:2(T
Bassignvariableop_27_adam_lstm_674_lstm_cell_674_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_674_lstm_cell_674_bias_m:(=
+assignvariableop_29_adam_dense_224_kernel_v:
7
)assignvariableop_30_adam_dense_224_bias_v:K
8assignvariableop_31_adam_lstm_672_lstm_cell_672_kernel_v:	?U
Bassignvariableop_32_adam_lstm_672_lstm_cell_672_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_672_lstm_cell_672_bias_v:	?K
8assignvariableop_34_adam_lstm_673_lstm_cell_673_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_673_lstm_cell_673_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_673_lstm_cell_673_bias_v:	?J
8assignvariableop_37_adam_lstm_674_lstm_cell_674_kernel_v:2(T
Bassignvariableop_38_adam_lstm_674_lstm_cell_674_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_674_lstm_cell_674_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_224_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_224_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_672_lstm_cell_672_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_672_lstm_cell_672_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_672_lstm_cell_672_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_673_lstm_cell_673_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_673_lstm_cell_673_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_673_lstm_cell_673_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_674_lstm_cell_674_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_674_lstm_cell_674_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_674_lstm_cell_674_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_224_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_224_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_672_lstm_cell_672_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_672_lstm_cell_672_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_672_lstm_cell_672_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_673_lstm_cell_673_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_673_lstm_cell_673_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_673_lstm_cell_673_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_674_lstm_cell_674_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_674_lstm_cell_674_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_674_lstm_cell_674_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_224_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_224_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_672_lstm_cell_672_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_672_lstm_cell_672_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_672_lstm_cell_672_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_673_lstm_cell_673_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_673_lstm_cell_673_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_673_lstm_cell_673_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_674_lstm_cell_674_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_674_lstm_cell_674_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_674_lstm_cell_674_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_4260433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_702_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_702_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_702_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_702_matmul_readvariableop_resource:	?G
4while_lstm_cell_702_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_702_biasadd_readvariableop_resource:	???*while/lstm_cell_702/BiasAdd/ReadVariableOp?)while/lstm_cell_702/MatMul/ReadVariableOp?+while/lstm_cell_702/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_702/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_702_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_702/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_702_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_702/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_702/addAddV2$while/lstm_cell_702/MatMul:product:0&while/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_702_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_702/BiasAddBiasAddwhile/lstm_cell_702/add:z:02while/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_702/splitSplit,while/lstm_cell_702/split/split_dim:output:0$while/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_702/SigmoidSigmoid"while/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_1Sigmoid"while/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mulMul!while/lstm_cell_702/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_702/ReluRelu"while/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_1Mulwhile/lstm_cell_702/Sigmoid:y:0&while/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/add_1AddV2while/lstm_cell_702/mul:z:0while/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_2Sigmoid"while/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_702/Relu_1Reluwhile/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_2Mul!while/lstm_cell_702/Sigmoid_2:y:0(while/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_702/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_702/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_702/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_702/BiasAdd/ReadVariableOp*^while/lstm_cell_702/MatMul/ReadVariableOp,^while/lstm_cell_702/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_702_biasadd_readvariableop_resource5while_lstm_cell_702_biasadd_readvariableop_resource_0"n
4while_lstm_cell_702_matmul_1_readvariableop_resource6while_lstm_cell_702_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_702_matmul_readvariableop_resource4while_lstm_cell_702_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_702/BiasAdd/ReadVariableOp*while/lstm_cell_702/BiasAdd/ReadVariableOp2V
)while/lstm_cell_702/MatMul/ReadVariableOp)while/lstm_cell_702/MatMul/ReadVariableOp2Z
+while/lstm_cell_702/MatMul_1/ReadVariableOp+while/lstm_cell_702/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4260583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_703_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_703_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_703_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_703_matmul_readvariableop_resource:	d?G
4while_lstm_cell_703_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_703_biasadd_readvariableop_resource:	???*while/lstm_cell_703/BiasAdd/ReadVariableOp?)while/lstm_cell_703/MatMul/ReadVariableOp?+while/lstm_cell_703/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_703/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_703_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_703/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_703_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_703/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_703/addAddV2$while/lstm_cell_703/MatMul:product:0&while/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_703_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_703/BiasAddBiasAddwhile/lstm_cell_703/add:z:02while/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_703/splitSplit,while/lstm_cell_703/split/split_dim:output:0$while/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_703/SigmoidSigmoid"while/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_1Sigmoid"while/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mulMul!while/lstm_cell_703/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_703/ReluRelu"while/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_1Mulwhile/lstm_cell_703/Sigmoid:y:0&while/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/add_1AddV2while/lstm_cell_703/mul:z:0while/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_2Sigmoid"while/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_703/Relu_1Reluwhile/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_2Mul!while/lstm_cell_703/Sigmoid_2:y:0(while/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_703/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_703/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_703/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_703/BiasAdd/ReadVariableOp*^while/lstm_cell_703/MatMul/ReadVariableOp,^while/lstm_cell_703/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_703_biasadd_readvariableop_resource5while_lstm_cell_703_biasadd_readvariableop_resource_0"n
4while_lstm_cell_703_matmul_1_readvariableop_resource6while_lstm_cell_703_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_703_matmul_readvariableop_resource4while_lstm_cell_703_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_703/BiasAdd/ReadVariableOp*while/lstm_cell_703/BiasAdd/ReadVariableOp2V
)while/lstm_cell_703/MatMul/ReadVariableOp)while/lstm_cell_703/MatMul/ReadVariableOp2Z
+while/lstm_cell_703/MatMul_1/ReadVariableOp+while/lstm_cell_703/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4262732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_702_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_702_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_702_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_702_matmul_readvariableop_resource:	?G
4while_lstm_cell_702_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_702_biasadd_readvariableop_resource:	???*while/lstm_cell_702/BiasAdd/ReadVariableOp?)while/lstm_cell_702/MatMul/ReadVariableOp?+while/lstm_cell_702/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_702/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_702_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_702/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_702_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_702/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_702/addAddV2$while/lstm_cell_702/MatMul:product:0&while/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_702_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_702/BiasAddBiasAddwhile/lstm_cell_702/add:z:02while/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_702/splitSplit,while/lstm_cell_702/split/split_dim:output:0$while/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_702/SigmoidSigmoid"while/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_1Sigmoid"while/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mulMul!while/lstm_cell_702/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_702/ReluRelu"while/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_1Mulwhile/lstm_cell_702/Sigmoid:y:0&while/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/add_1AddV2while/lstm_cell_702/mul:z:0while/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_2Sigmoid"while/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_702/Relu_1Reluwhile/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_2Mul!while/lstm_cell_702/Sigmoid_2:y:0(while/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_702/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_702/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_702/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_702/BiasAdd/ReadVariableOp*^while/lstm_cell_702/MatMul/ReadVariableOp,^while/lstm_cell_702/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_702_biasadd_readvariableop_resource5while_lstm_cell_702_biasadd_readvariableop_resource_0"n
4while_lstm_cell_702_matmul_1_readvariableop_resource6while_lstm_cell_702_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_702_matmul_readvariableop_resource4while_lstm_cell_702_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_702/BiasAdd/ReadVariableOp*while/lstm_cell_702/BiasAdd/ReadVariableOp2V
)while/lstm_cell_702/MatMul/ReadVariableOp)while/lstm_cell_702/MatMul/ReadVariableOp2Z
+while/lstm_cell_702/MatMul_1/ReadVariableOp+while/lstm_cell_702/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4263821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_704_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_704_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_704_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_704_matmul_readvariableop_resource:2(F
4while_lstm_cell_704_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_704_biasadd_readvariableop_resource:(??*while/lstm_cell_704/BiasAdd/ReadVariableOp?)while/lstm_cell_704/MatMul/ReadVariableOp?+while/lstm_cell_704/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_704/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_704_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_704/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_704_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_704/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_704/addAddV2$while/lstm_cell_704/MatMul:product:0&while/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_704_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_704/BiasAddBiasAddwhile/lstm_cell_704/add:z:02while/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_704/splitSplit,while/lstm_cell_704/split/split_dim:output:0$while/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_704/SigmoidSigmoid"while/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_1Sigmoid"while/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mulMul!while/lstm_cell_704/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_704/ReluRelu"while/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_1Mulwhile/lstm_cell_704/Sigmoid:y:0&while/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/add_1AddV2while/lstm_cell_704/mul:z:0while/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_2Sigmoid"while/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_704/Relu_1Reluwhile/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_2Mul!while/lstm_cell_704/Sigmoid_2:y:0(while/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_704/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_704/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_704/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_704/BiasAdd/ReadVariableOp*^while/lstm_cell_704/MatMul/ReadVariableOp,^while/lstm_cell_704/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_704_biasadd_readvariableop_resource5while_lstm_cell_704_biasadd_readvariableop_resource_0"n
4while_lstm_cell_704_matmul_1_readvariableop_resource6while_lstm_cell_704_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_704_matmul_readvariableop_resource4while_lstm_cell_704_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_704/BiasAdd/ReadVariableOp*while/lstm_cell_704/BiasAdd/ReadVariableOp2V
)while/lstm_cell_704/MatMul/ReadVariableOp)while/lstm_cell_704/MatMul/ReadVariableOp2Z
+while/lstm_cell_704/MatMul_1/ReadVariableOp+while/lstm_cell_704/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_224_lstm_673_while_body_4259089L
Hsequential_224_lstm_673_while_sequential_224_lstm_673_while_loop_counterR
Nsequential_224_lstm_673_while_sequential_224_lstm_673_while_maximum_iterations-
)sequential_224_lstm_673_while_placeholder/
+sequential_224_lstm_673_while_placeholder_1/
+sequential_224_lstm_673_while_placeholder_2/
+sequential_224_lstm_673_while_placeholder_3K
Gsequential_224_lstm_673_while_sequential_224_lstm_673_strided_slice_1_0?
?sequential_224_lstm_673_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_673_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_224_lstm_673_while_lstm_cell_703_matmul_readvariableop_resource_0:	d?a
Nsequential_224_lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource_0:	2?\
Msequential_224_lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource_0:	?*
&sequential_224_lstm_673_while_identity,
(sequential_224_lstm_673_while_identity_1,
(sequential_224_lstm_673_while_identity_2,
(sequential_224_lstm_673_while_identity_3,
(sequential_224_lstm_673_while_identity_4,
(sequential_224_lstm_673_while_identity_5I
Esequential_224_lstm_673_while_sequential_224_lstm_673_strided_slice_1?
?sequential_224_lstm_673_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_673_tensorarrayunstack_tensorlistfromtensor]
Jsequential_224_lstm_673_while_lstm_cell_703_matmul_readvariableop_resource:	d?_
Lsequential_224_lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource:	2?Z
Ksequential_224_lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource:	???Bsequential_224/lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp?Asequential_224/lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp?Csequential_224/lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp?
Osequential_224/lstm_673/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_224/lstm_673/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_224_lstm_673_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_673_tensorarrayunstack_tensorlistfromtensor_0)sequential_224_lstm_673_while_placeholderXsequential_224/lstm_673/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_224/lstm_673/while/lstm_cell_703/MatMul/ReadVariableOpReadVariableOpLsequential_224_lstm_673_while_lstm_cell_703_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_224/lstm_673/while/lstm_cell_703/MatMulMatMulHsequential_224/lstm_673/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_224/lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_224/lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOpNsequential_224_lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_224/lstm_673/while/lstm_cell_703/MatMul_1MatMul+sequential_224_lstm_673_while_placeholder_2Ksequential_224/lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_224/lstm_673/while/lstm_cell_703/addAddV2<sequential_224/lstm_673/while/lstm_cell_703/MatMul:product:0>sequential_224/lstm_673/while/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_224/lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOpMsequential_224_lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_224/lstm_673/while/lstm_cell_703/BiasAddBiasAdd3sequential_224/lstm_673/while/lstm_cell_703/add:z:0Jsequential_224/lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_224/lstm_673/while/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_224/lstm_673/while/lstm_cell_703/splitSplitDsequential_224/lstm_673/while/lstm_cell_703/split/split_dim:output:0<sequential_224/lstm_673/while/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_224/lstm_673/while/lstm_cell_703/SigmoidSigmoid:sequential_224/lstm_673/while/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_224/lstm_673/while/lstm_cell_703/Sigmoid_1Sigmoid:sequential_224/lstm_673/while/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_224/lstm_673/while/lstm_cell_703/mulMul9sequential_224/lstm_673/while/lstm_cell_703/Sigmoid_1:y:0+sequential_224_lstm_673_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_224/lstm_673/while/lstm_cell_703/ReluRelu:sequential_224/lstm_673/while/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_224/lstm_673/while/lstm_cell_703/mul_1Mul7sequential_224/lstm_673/while/lstm_cell_703/Sigmoid:y:0>sequential_224/lstm_673/while/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_224/lstm_673/while/lstm_cell_703/add_1AddV23sequential_224/lstm_673/while/lstm_cell_703/mul:z:05sequential_224/lstm_673/while/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_224/lstm_673/while/lstm_cell_703/Sigmoid_2Sigmoid:sequential_224/lstm_673/while/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_224/lstm_673/while/lstm_cell_703/Relu_1Relu5sequential_224/lstm_673/while/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_224/lstm_673/while/lstm_cell_703/mul_2Mul9sequential_224/lstm_673/while/lstm_cell_703/Sigmoid_2:y:0@sequential_224/lstm_673/while/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_224/lstm_673/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_224_lstm_673_while_placeholder_1)sequential_224_lstm_673_while_placeholder5sequential_224/lstm_673/while/lstm_cell_703/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_224/lstm_673/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_224/lstm_673/while/addAddV2)sequential_224_lstm_673_while_placeholder,sequential_224/lstm_673/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_224/lstm_673/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_224/lstm_673/while/add_1AddV2Hsequential_224_lstm_673_while_sequential_224_lstm_673_while_loop_counter.sequential_224/lstm_673/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_224/lstm_673/while/IdentityIdentity'sequential_224/lstm_673/while/add_1:z:0#^sequential_224/lstm_673/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_673/while/Identity_1IdentityNsequential_224_lstm_673_while_sequential_224_lstm_673_while_maximum_iterations#^sequential_224/lstm_673/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_673/while/Identity_2Identity%sequential_224/lstm_673/while/add:z:0#^sequential_224/lstm_673/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_673/while/Identity_3IdentityRsequential_224/lstm_673/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_224/lstm_673/while/NoOp*
T0*
_output_shapes
: ?
(sequential_224/lstm_673/while/Identity_4Identity5sequential_224/lstm_673/while/lstm_cell_703/mul_2:z:0#^sequential_224/lstm_673/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_224/lstm_673/while/Identity_5Identity5sequential_224/lstm_673/while/lstm_cell_703/add_1:z:0#^sequential_224/lstm_673/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_224/lstm_673/while/NoOpNoOpC^sequential_224/lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOpB^sequential_224/lstm_673/while/lstm_cell_703/MatMul/ReadVariableOpD^sequential_224/lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_224_lstm_673_while_identity/sequential_224/lstm_673/while/Identity:output:0"]
(sequential_224_lstm_673_while_identity_11sequential_224/lstm_673/while/Identity_1:output:0"]
(sequential_224_lstm_673_while_identity_21sequential_224/lstm_673/while/Identity_2:output:0"]
(sequential_224_lstm_673_while_identity_31sequential_224/lstm_673/while/Identity_3:output:0"]
(sequential_224_lstm_673_while_identity_41sequential_224/lstm_673/while/Identity_4:output:0"]
(sequential_224_lstm_673_while_identity_51sequential_224/lstm_673/while/Identity_5:output:0"?
Ksequential_224_lstm_673_while_lstm_cell_703_biasadd_readvariableop_resourceMsequential_224_lstm_673_while_lstm_cell_703_biasadd_readvariableop_resource_0"?
Lsequential_224_lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resourceNsequential_224_lstm_673_while_lstm_cell_703_matmul_1_readvariableop_resource_0"?
Jsequential_224_lstm_673_while_lstm_cell_703_matmul_readvariableop_resourceLsequential_224_lstm_673_while_lstm_cell_703_matmul_readvariableop_resource_0"?
Esequential_224_lstm_673_while_sequential_224_lstm_673_strided_slice_1Gsequential_224_lstm_673_while_sequential_224_lstm_673_strided_slice_1_0"?
?sequential_224_lstm_673_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_673_tensorarrayunstack_tensorlistfromtensor?sequential_224_lstm_673_while_tensorarrayv2read_tensorlistgetitem_sequential_224_lstm_673_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_224/lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOpBsequential_224/lstm_673/while/lstm_cell_703/BiasAdd/ReadVariableOp2?
Asequential_224/lstm_673/while/lstm_cell_703/MatMul/ReadVariableOpAsequential_224/lstm_673/while/lstm_cell_703/MatMul/ReadVariableOp2?
Csequential_224/lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOpCsequential_224/lstm_673/while/lstm_cell_703/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_673_layer_call_fn_4263146

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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4261198s
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
?#
?
while_body_4259749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_703_4259773_0:	d?0
while_lstm_cell_703_4259775_0:	2?,
while_lstm_cell_703_4259777_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_703_4259773:	d?.
while_lstm_cell_703_4259775:	2?*
while_lstm_cell_703_4259777:	???+while/lstm_cell_703/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_703/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_703_4259773_0while_lstm_cell_703_4259775_0while_lstm_cell_703_4259777_0*
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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4259735?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_703/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_703/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_703/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_703/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_703_4259773while_lstm_cell_703_4259773_0"<
while_lstm_cell_703_4259775while_lstm_cell_703_4259775_0"<
while_lstm_cell_703_4259777while_lstm_cell_703_4259777_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_703/StatefulPartitionedCall+while/lstm_cell_703/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4260732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4260732___redundant_placeholder05
1while_while_cond_4260732___redundant_placeholder15
1while_while_cond_4260732___redundant_placeholder25
1while_while_cond_4260732___redundant_placeholder3
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
while_cond_4263963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4263963___redundant_placeholder05
1while_while_cond_4263963___redundant_placeholder15
1while_while_cond_4263963___redundant_placeholder25
1while_while_cond_4263963___redundant_placeholder3
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
*__inference_lstm_674_layer_call_fn_4263740
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4260359o
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
?J
?
E__inference_lstm_674_layer_call_and_return_conditional_losses_4260817

inputs>
,lstm_cell_704_matmul_readvariableop_resource:2(@
.lstm_cell_704_matmul_1_readvariableop_resource:
(;
-lstm_cell_704_biasadd_readvariableop_resource:(
identity??$lstm_cell_704/BiasAdd/ReadVariableOp?#lstm_cell_704/MatMul/ReadVariableOp?%lstm_cell_704/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_704/MatMul/ReadVariableOpReadVariableOp,lstm_cell_704_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_704/MatMulMatMulstrided_slice_2:output:0+lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_704_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_704/MatMul_1MatMulzeros:output:0-lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_704/addAddV2lstm_cell_704/MatMul:product:0 lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_704_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_704/BiasAddBiasAddlstm_cell_704/add:z:0,lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_704/splitSplit&lstm_cell_704/split/split_dim:output:0lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_704/SigmoidSigmoidlstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_1Sigmoidlstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_704/mulMullstm_cell_704/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_704/ReluRelulstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_1Mullstm_cell_704/Sigmoid:y:0 lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_704/add_1AddV2lstm_cell_704/mul:z:0lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_2Sigmoidlstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_704/Relu_1Relulstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_2Mullstm_cell_704/Sigmoid_2:y:0"lstm_cell_704/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_704_matmul_readvariableop_resource.lstm_cell_704_matmul_1_readvariableop_resource-lstm_cell_704_biasadd_readvariableop_resource*
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
while_body_4260733*
condR
while_cond_4260732*K
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
NoOpNoOp%^lstm_cell_704/BiasAdd/ReadVariableOp$^lstm_cell_704/MatMul/ReadVariableOp&^lstm_cell_704/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_704/BiasAdd/ReadVariableOp$lstm_cell_704/BiasAdd/ReadVariableOp2J
#lstm_cell_704/MatMul/ReadVariableOp#lstm_cell_704/MatMul/ReadVariableOp2N
%lstm_cell_704/MatMul_1/ReadVariableOp%lstm_cell_704/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_224_layer_call_fn_4260867
lstm_672_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_672_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4260842o
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
_user_specified_namelstm_672_input
?J
?
E__inference_lstm_673_layer_call_and_return_conditional_losses_4261198

inputs?
,lstm_cell_703_matmul_readvariableop_resource:	d?A
.lstm_cell_703_matmul_1_readvariableop_resource:	2?<
-lstm_cell_703_biasadd_readvariableop_resource:	?
identity??$lstm_cell_703/BiasAdd/ReadVariableOp?#lstm_cell_703/MatMul/ReadVariableOp?%lstm_cell_703/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_703/MatMul/ReadVariableOpReadVariableOp,lstm_cell_703_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_703/MatMulMatMulstrided_slice_2:output:0+lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_703_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_703/MatMul_1MatMulzeros:output:0-lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_703/addAddV2lstm_cell_703/MatMul:product:0 lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_703_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_703/BiasAddBiasAddlstm_cell_703/add:z:0,lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_703/splitSplit&lstm_cell_703/split/split_dim:output:0lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_703/SigmoidSigmoidlstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_1Sigmoidlstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_703/mulMullstm_cell_703/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_703/ReluRelulstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_1Mullstm_cell_703/Sigmoid:y:0 lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_703/add_1AddV2lstm_cell_703/mul:z:0lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_2Sigmoidlstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_703/Relu_1Relulstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_2Mullstm_cell_703/Sigmoid_2:y:0"lstm_cell_703/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_703_matmul_readvariableop_resource.lstm_cell_703_matmul_1_readvariableop_resource-lstm_cell_703_biasadd_readvariableop_resource*
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
while_body_4261114*
condR
while_cond_4261113*K
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
NoOpNoOp%^lstm_cell_703/BiasAdd/ReadVariableOp$^lstm_cell_703/MatMul/ReadVariableOp&^lstm_cell_703/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_703/BiasAdd/ReadVariableOp$lstm_cell_703/BiasAdd/ReadVariableOp2J
#lstm_cell_703/MatMul/ReadVariableOp#lstm_cell_703/MatMul/ReadVariableOp2N
%lstm_cell_703/MatMul_1/ReadVariableOp%lstm_cell_703/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_672_while_cond_4261690.
*lstm_672_while_lstm_672_while_loop_counter4
0lstm_672_while_lstm_672_while_maximum_iterations
lstm_672_while_placeholder 
lstm_672_while_placeholder_1 
lstm_672_while_placeholder_2 
lstm_672_while_placeholder_30
,lstm_672_while_less_lstm_672_strided_slice_1G
Clstm_672_while_lstm_672_while_cond_4261690___redundant_placeholder0G
Clstm_672_while_lstm_672_while_cond_4261690___redundant_placeholder1G
Clstm_672_while_lstm_672_while_cond_4261690___redundant_placeholder2G
Clstm_672_while_lstm_672_while_cond_4261690___redundant_placeholder3
lstm_672_while_identity
?
lstm_672/while/LessLesslstm_672_while_placeholder,lstm_672_while_less_lstm_672_strided_slice_1*
T0*
_output_shapes
: ]
lstm_672/while/IdentityIdentitylstm_672/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_672_while_identity lstm_672/while/Identity:output:0*(
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4261363

inputs?
,lstm_cell_702_matmul_readvariableop_resource:	?A
.lstm_cell_702_matmul_1_readvariableop_resource:	d?<
-lstm_cell_702_biasadd_readvariableop_resource:	?
identity??$lstm_cell_702/BiasAdd/ReadVariableOp?#lstm_cell_702/MatMul/ReadVariableOp?%lstm_cell_702/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_702/MatMul/ReadVariableOpReadVariableOp,lstm_cell_702_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_702/MatMulMatMulstrided_slice_2:output:0+lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_702_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_702/MatMul_1MatMulzeros:output:0-lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_702/addAddV2lstm_cell_702/MatMul:product:0 lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_702_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_702/BiasAddBiasAddlstm_cell_702/add:z:0,lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_702/splitSplit&lstm_cell_702/split/split_dim:output:0lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_702/SigmoidSigmoidlstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_1Sigmoidlstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_702/mulMullstm_cell_702/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_702/ReluRelulstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_1Mullstm_cell_702/Sigmoid:y:0 lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_702/add_1AddV2lstm_cell_702/mul:z:0lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_2Sigmoidlstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_702/Relu_1Relulstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_2Mullstm_cell_702/Sigmoid_2:y:0"lstm_cell_702/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_702_matmul_readvariableop_resource.lstm_cell_702_matmul_1_readvariableop_resource-lstm_cell_702_biasadd_readvariableop_resource*
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
while_body_4261279*
condR
while_cond_4261278*K
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
NoOpNoOp%^lstm_cell_702/BiasAdd/ReadVariableOp$^lstm_cell_702/MatMul/ReadVariableOp&^lstm_cell_702/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_702/BiasAdd/ReadVariableOp$lstm_cell_702/BiasAdd/ReadVariableOp2J
#lstm_cell_702/MatMul/ReadVariableOp#lstm_cell_702/MatMul/ReadVariableOp2N
%lstm_cell_702/MatMul_1/ReadVariableOp%lstm_cell_702/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_674_layer_call_and_return_conditional_losses_4264334

inputs>
,lstm_cell_704_matmul_readvariableop_resource:2(@
.lstm_cell_704_matmul_1_readvariableop_resource:
(;
-lstm_cell_704_biasadd_readvariableop_resource:(
identity??$lstm_cell_704/BiasAdd/ReadVariableOp?#lstm_cell_704/MatMul/ReadVariableOp?%lstm_cell_704/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_704/MatMul/ReadVariableOpReadVariableOp,lstm_cell_704_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_704/MatMulMatMulstrided_slice_2:output:0+lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_704_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_704/MatMul_1MatMulzeros:output:0-lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_704/addAddV2lstm_cell_704/MatMul:product:0 lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_704_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_704/BiasAddBiasAddlstm_cell_704/add:z:0,lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_704/splitSplit&lstm_cell_704/split/split_dim:output:0lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_704/SigmoidSigmoidlstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_1Sigmoidlstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_704/mulMullstm_cell_704/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_704/ReluRelulstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_1Mullstm_cell_704/Sigmoid:y:0 lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_704/add_1AddV2lstm_cell_704/mul:z:0lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_704/Sigmoid_2Sigmoidlstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_704/Relu_1Relulstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_704/mul_2Mullstm_cell_704/Sigmoid_2:y:0"lstm_cell_704/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_704_matmul_readvariableop_resource.lstm_cell_704_matmul_1_readvariableop_resource-lstm_cell_704_biasadd_readvariableop_resource*
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
while_body_4264250*
condR
while_cond_4264249*K
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
NoOpNoOp%^lstm_cell_704/BiasAdd/ReadVariableOp$^lstm_cell_704/MatMul/ReadVariableOp&^lstm_cell_704/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_704/BiasAdd/ReadVariableOp$lstm_cell_704/BiasAdd/ReadVariableOp2J
#lstm_cell_704/MatMul/ReadVariableOp#lstm_cell_704/MatMul/ReadVariableOp2N
%lstm_cell_704/MatMul_1/ReadVariableOp%lstm_cell_704/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_674_while_cond_4261968.
*lstm_674_while_lstm_674_while_loop_counter4
0lstm_674_while_lstm_674_while_maximum_iterations
lstm_674_while_placeholder 
lstm_674_while_placeholder_1 
lstm_674_while_placeholder_2 
lstm_674_while_placeholder_30
,lstm_674_while_less_lstm_674_strided_slice_1G
Clstm_674_while_lstm_674_while_cond_4261968___redundant_placeholder0G
Clstm_674_while_lstm_674_while_cond_4261968___redundant_placeholder1G
Clstm_674_while_lstm_674_while_cond_4261968___redundant_placeholder2G
Clstm_674_while_lstm_674_while_cond_4261968___redundant_placeholder3
lstm_674_while_identity
?
lstm_674/while/LessLesslstm_674_while_placeholder,lstm_674_while_less_lstm_674_strided_slice_1*
T0*
_output_shapes
: ]
lstm_674/while/IdentityIdentitylstm_674/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_674_while_identity lstm_674/while/Identity:output:0*(
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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4259531

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
while_cond_4259589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4259589___redundant_placeholder05
1while_while_cond_4259589___redundant_placeholder15
1while_while_cond_4259589___redundant_placeholder25
1while_while_cond_4259589___redundant_placeholder3
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
?K
?
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263432
inputs_0?
,lstm_cell_703_matmul_readvariableop_resource:	d?A
.lstm_cell_703_matmul_1_readvariableop_resource:	2?<
-lstm_cell_703_biasadd_readvariableop_resource:	?
identity??$lstm_cell_703/BiasAdd/ReadVariableOp?#lstm_cell_703/MatMul/ReadVariableOp?%lstm_cell_703/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_703/MatMul/ReadVariableOpReadVariableOp,lstm_cell_703_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_703/MatMulMatMulstrided_slice_2:output:0+lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_703_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_703/MatMul_1MatMulzeros:output:0-lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_703/addAddV2lstm_cell_703/MatMul:product:0 lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_703_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_703/BiasAddBiasAddlstm_cell_703/add:z:0,lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_703/splitSplit&lstm_cell_703/split/split_dim:output:0lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_703/SigmoidSigmoidlstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_1Sigmoidlstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_703/mulMullstm_cell_703/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_703/ReluRelulstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_1Mullstm_cell_703/Sigmoid:y:0 lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_703/add_1AddV2lstm_cell_703/mul:z:0lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_2Sigmoidlstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_703/Relu_1Relulstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_2Mullstm_cell_703/Sigmoid_2:y:0"lstm_cell_703/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_703_matmul_readvariableop_resource.lstm_cell_703_matmul_1_readvariableop_resource-lstm_cell_703_biasadd_readvariableop_resource*
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
while_body_4263348*
condR
while_cond_4263347*K
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
NoOpNoOp%^lstm_cell_703/BiasAdd/ReadVariableOp$^lstm_cell_703/MatMul/ReadVariableOp&^lstm_cell_703/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_703/BiasAdd/ReadVariableOp$lstm_cell_703/BiasAdd/ReadVariableOp2J
#lstm_cell_703/MatMul/ReadVariableOp#lstm_cell_703/MatMul/ReadVariableOp2N
%lstm_cell_703/MatMul_1/ReadVariableOp%lstm_cell_703/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4260289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4260289___redundant_placeholder05
1while_while_cond_4260289___redundant_placeholder15
1while_while_cond_4260289___redundant_placeholder25
1while_while_cond_4260289___redundant_placeholder3
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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4259385

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
while_cond_4263204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4263204___redundant_placeholder05
1while_while_cond_4263204___redundant_placeholder15
1while_while_cond_4263204___redundant_placeholder25
1while_while_cond_4263204___redundant_placeholder3
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
*__inference_lstm_673_layer_call_fn_4263124
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4260009|
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
?K
?
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263289
inputs_0?
,lstm_cell_703_matmul_readvariableop_resource:	d?A
.lstm_cell_703_matmul_1_readvariableop_resource:	2?<
-lstm_cell_703_biasadd_readvariableop_resource:	?
identity??$lstm_cell_703/BiasAdd/ReadVariableOp?#lstm_cell_703/MatMul/ReadVariableOp?%lstm_cell_703/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_703/MatMul/ReadVariableOpReadVariableOp,lstm_cell_703_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_703/MatMulMatMulstrided_slice_2:output:0+lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_703_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_703/MatMul_1MatMulzeros:output:0-lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_703/addAddV2lstm_cell_703/MatMul:product:0 lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_703_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_703/BiasAddBiasAddlstm_cell_703/add:z:0,lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_703/splitSplit&lstm_cell_703/split/split_dim:output:0lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_703/SigmoidSigmoidlstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_1Sigmoidlstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_703/mulMullstm_cell_703/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_703/ReluRelulstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_1Mullstm_cell_703/Sigmoid:y:0 lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_703/add_1AddV2lstm_cell_703/mul:z:0lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_703/Sigmoid_2Sigmoidlstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_703/Relu_1Relulstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_703/mul_2Mullstm_cell_703/Sigmoid_2:y:0"lstm_cell_703/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_703_matmul_readvariableop_resource.lstm_cell_703_matmul_1_readvariableop_resource-lstm_cell_703_biasadd_readvariableop_resource*
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
while_body_4263205*
condR
while_cond_4263204*K
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
NoOpNoOp%^lstm_cell_703/BiasAdd/ReadVariableOp$^lstm_cell_703/MatMul/ReadVariableOp&^lstm_cell_703/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_703/BiasAdd/ReadVariableOp$lstm_cell_703/BiasAdd/ReadVariableOp2J
#lstm_cell_703/MatMul/ReadVariableOp#lstm_cell_703/MatMul/ReadVariableOp2N
%lstm_cell_703/MatMul_1/ReadVariableOp%lstm_cell_703/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4263820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4263820___redundant_placeholder05
1while_while_cond_4263820___redundant_placeholder15
1while_while_cond_4263820___redundant_placeholder25
1while_while_cond_4263820___redundant_placeholder3
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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4259735

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
while_body_4264107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_704_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_704_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_704_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_704_matmul_readvariableop_resource:2(F
4while_lstm_cell_704_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_704_biasadd_readvariableop_resource:(??*while/lstm_cell_704/BiasAdd/ReadVariableOp?)while/lstm_cell_704/MatMul/ReadVariableOp?+while/lstm_cell_704/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_704/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_704_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_704/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_704_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_704/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_704/addAddV2$while/lstm_cell_704/MatMul:product:0&while/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_704_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_704/BiasAddBiasAddwhile/lstm_cell_704/add:z:02while/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_704/splitSplit,while/lstm_cell_704/split/split_dim:output:0$while/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_704/SigmoidSigmoid"while/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_1Sigmoid"while/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mulMul!while/lstm_cell_704/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_704/ReluRelu"while/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_1Mulwhile/lstm_cell_704/Sigmoid:y:0&while/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/add_1AddV2while/lstm_cell_704/mul:z:0while/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_2Sigmoid"while/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_704/Relu_1Reluwhile/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_2Mul!while/lstm_cell_704/Sigmoid_2:y:0(while/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_704/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_704/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_704/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_704/BiasAdd/ReadVariableOp*^while/lstm_cell_704/MatMul/ReadVariableOp,^while/lstm_cell_704/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_704_biasadd_readvariableop_resource5while_lstm_cell_704_biasadd_readvariableop_resource_0"n
4while_lstm_cell_704_matmul_1_readvariableop_resource6while_lstm_cell_704_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_704_matmul_readvariableop_resource4while_lstm_cell_704_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_704/BiasAdd/ReadVariableOp*while/lstm_cell_704/BiasAdd/ReadVariableOp2V
)while/lstm_cell_704/MatMul/ReadVariableOp)while/lstm_cell_704/MatMul/ReadVariableOp2Z
+while/lstm_cell_704/MatMul_1/ReadVariableOp+while/lstm_cell_704/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4264250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_704_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_704_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_704_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_704_matmul_readvariableop_resource:2(F
4while_lstm_cell_704_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_704_biasadd_readvariableop_resource:(??*while/lstm_cell_704/BiasAdd/ReadVariableOp?)while/lstm_cell_704/MatMul/ReadVariableOp?+while/lstm_cell_704/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_704/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_704_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_704/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_704/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_704_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_704/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_704/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_704/addAddV2$while/lstm_cell_704/MatMul:product:0&while/lstm_cell_704/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_704/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_704_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_704/BiasAddBiasAddwhile/lstm_cell_704/add:z:02while/lstm_cell_704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_704/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_704/splitSplit,while/lstm_cell_704/split/split_dim:output:0$while/lstm_cell_704/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_704/SigmoidSigmoid"while/lstm_cell_704/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_1Sigmoid"while/lstm_cell_704/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mulMul!while/lstm_cell_704/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_704/ReluRelu"while/lstm_cell_704/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_1Mulwhile/lstm_cell_704/Sigmoid:y:0&while/lstm_cell_704/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/add_1AddV2while/lstm_cell_704/mul:z:0while/lstm_cell_704/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_704/Sigmoid_2Sigmoid"while/lstm_cell_704/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_704/Relu_1Reluwhile/lstm_cell_704/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_704/mul_2Mul!while/lstm_cell_704/Sigmoid_2:y:0(while/lstm_cell_704/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_704/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_704/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_704/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_704/BiasAdd/ReadVariableOp*^while/lstm_cell_704/MatMul/ReadVariableOp,^while/lstm_cell_704/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_704_biasadd_readvariableop_resource5while_lstm_cell_704_biasadd_readvariableop_resource_0"n
4while_lstm_cell_704_matmul_1_readvariableop_resource6while_lstm_cell_704_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_704_matmul_readvariableop_resource4while_lstm_cell_704_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_704/BiasAdd/ReadVariableOp*while/lstm_cell_704/BiasAdd/ReadVariableOp2V
)while/lstm_cell_704/MatMul/ReadVariableOp)while/lstm_cell_704/MatMul/ReadVariableOp2Z
+while/lstm_cell_704/MatMul_1/ReadVariableOp+while/lstm_cell_704/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4260432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4260432___redundant_placeholder05
1while_while_cond_4260432___redundant_placeholder15
1while_while_cond_4260432___redundant_placeholder25
1while_while_cond_4260432___redundant_placeholder3
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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4261431

inputs#
lstm_672_4261404:	?#
lstm_672_4261406:	d?
lstm_672_4261408:	?#
lstm_673_4261411:	d?#
lstm_673_4261413:	2?
lstm_673_4261415:	?"
lstm_674_4261418:2("
lstm_674_4261420:
(
lstm_674_4261422:(#
dense_224_4261425:

dense_224_4261427:
identity??!dense_224/StatefulPartitionedCall? lstm_672/StatefulPartitionedCall? lstm_673/StatefulPartitionedCall? lstm_674/StatefulPartitionedCall?
 lstm_672/StatefulPartitionedCallStatefulPartitionedCallinputslstm_672_4261404lstm_672_4261406lstm_672_4261408*
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4261363?
 lstm_673/StatefulPartitionedCallStatefulPartitionedCall)lstm_672/StatefulPartitionedCall:output:0lstm_673_4261411lstm_673_4261413lstm_673_4261415*
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4261198?
 lstm_674/StatefulPartitionedCallStatefulPartitionedCall)lstm_673/StatefulPartitionedCall:output:0lstm_674_4261418lstm_674_4261420lstm_674_4261422*
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4261033?
!dense_224/StatefulPartitionedCallStatefulPartitionedCall)lstm_674/StatefulPartitionedCall:output:0dense_224_4261425dense_224_4261427*
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
F__inference_dense_224_layer_call_and_return_conditional_losses_4260835y
IdentityIdentity*dense_224/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_224/StatefulPartitionedCall!^lstm_672/StatefulPartitionedCall!^lstm_673/StatefulPartitionedCall!^lstm_674/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_224/StatefulPartitionedCall!dense_224/StatefulPartitionedCall2D
 lstm_672/StatefulPartitionedCall lstm_672/StatefulPartitionedCall2D
 lstm_673/StatefulPartitionedCall lstm_673/StatefulPartitionedCall2D
 lstm_674/StatefulPartitionedCall lstm_674/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4263205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_703_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_703_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_703_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_703_matmul_readvariableop_resource:	d?G
4while_lstm_cell_703_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_703_biasadd_readvariableop_resource:	???*while/lstm_cell_703/BiasAdd/ReadVariableOp?)while/lstm_cell_703/MatMul/ReadVariableOp?+while/lstm_cell_703/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_703/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_703_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_703/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_703_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_703/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_703/addAddV2$while/lstm_cell_703/MatMul:product:0&while/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_703_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_703/BiasAddBiasAddwhile/lstm_cell_703/add:z:02while/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_703/splitSplit,while/lstm_cell_703/split/split_dim:output:0$while/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_703/SigmoidSigmoid"while/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_1Sigmoid"while/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mulMul!while/lstm_cell_703/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_703/ReluRelu"while/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_1Mulwhile/lstm_cell_703/Sigmoid:y:0&while/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/add_1AddV2while/lstm_cell_703/mul:z:0while/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_2Sigmoid"while/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_703/Relu_1Reluwhile/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_2Mul!while/lstm_cell_703/Sigmoid_2:y:0(while/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_703/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_703/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_703/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_703/BiasAdd/ReadVariableOp*^while/lstm_cell_703/MatMul/ReadVariableOp,^while/lstm_cell_703/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_703_biasadd_readvariableop_resource5while_lstm_cell_703_biasadd_readvariableop_resource_0"n
4while_lstm_cell_703_matmul_1_readvariableop_resource6while_lstm_cell_703_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_703_matmul_readvariableop_resource4while_lstm_cell_703_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_703/BiasAdd/ReadVariableOp*while/lstm_cell_703/BiasAdd/ReadVariableOp2V
)while/lstm_cell_703/MatMul/ReadVariableOp)while/lstm_cell_703/MatMul/ReadVariableOp2Z
+while/lstm_cell_703/MatMul_1/ReadVariableOp+while/lstm_cell_703/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4261279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_702_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_702_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_702_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_702_matmul_readvariableop_resource:	?G
4while_lstm_cell_702_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_702_biasadd_readvariableop_resource:	???*while/lstm_cell_702/BiasAdd/ReadVariableOp?)while/lstm_cell_702/MatMul/ReadVariableOp?+while/lstm_cell_702/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_702/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_702_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_702/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_702_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_702/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_702/addAddV2$while/lstm_cell_702/MatMul:product:0&while/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_702_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_702/BiasAddBiasAddwhile/lstm_cell_702/add:z:02while/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_702/splitSplit,while/lstm_cell_702/split/split_dim:output:0$while/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_702/SigmoidSigmoid"while/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_1Sigmoid"while/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mulMul!while/lstm_cell_702/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_702/ReluRelu"while/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_1Mulwhile/lstm_cell_702/Sigmoid:y:0&while/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/add_1AddV2while/lstm_cell_702/mul:z:0while/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_2Sigmoid"while/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_702/Relu_1Reluwhile/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_2Mul!while/lstm_cell_702/Sigmoid_2:y:0(while/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_702/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_702/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_702/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_702/BiasAdd/ReadVariableOp*^while/lstm_cell_702/MatMul/ReadVariableOp,^while/lstm_cell_702/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_702_biasadd_readvariableop_resource5while_lstm_cell_702_biasadd_readvariableop_resource_0"n
4while_lstm_cell_702_matmul_1_readvariableop_resource6while_lstm_cell_702_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_702_matmul_readvariableop_resource4while_lstm_cell_702_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_702/BiasAdd/ReadVariableOp*while/lstm_cell_702/BiasAdd/ReadVariableOp2V
)while/lstm_cell_702/MatMul/ReadVariableOp)while/lstm_cell_702/MatMul/ReadVariableOp2Z
+while/lstm_cell_702/MatMul_1/ReadVariableOp+while/lstm_cell_702/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4262875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_702_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_702_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_702_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_702_matmul_readvariableop_resource:	?G
4while_lstm_cell_702_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_702_biasadd_readvariableop_resource:	???*while/lstm_cell_702/BiasAdd/ReadVariableOp?)while/lstm_cell_702/MatMul/ReadVariableOp?+while/lstm_cell_702/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_702/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_702_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_702/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_702_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_702/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_702/addAddV2$while/lstm_cell_702/MatMul:product:0&while/lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_702_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_702/BiasAddBiasAddwhile/lstm_cell_702/add:z:02while/lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_702/splitSplit,while/lstm_cell_702/split/split_dim:output:0$while/lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_702/SigmoidSigmoid"while/lstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_1Sigmoid"while/lstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mulMul!while/lstm_cell_702/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_702/ReluRelu"while/lstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_1Mulwhile/lstm_cell_702/Sigmoid:y:0&while/lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/add_1AddV2while/lstm_cell_702/mul:z:0while/lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_702/Sigmoid_2Sigmoid"while/lstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_702/Relu_1Reluwhile/lstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_702/mul_2Mul!while/lstm_cell_702/Sigmoid_2:y:0(while/lstm_cell_702/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_702/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_702/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_702/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_702/BiasAdd/ReadVariableOp*^while/lstm_cell_702/MatMul/ReadVariableOp,^while/lstm_cell_702/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_702_biasadd_readvariableop_resource5while_lstm_cell_702_biasadd_readvariableop_resource_0"n
4while_lstm_cell_702_matmul_1_readvariableop_resource6while_lstm_cell_702_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_702_matmul_readvariableop_resource4while_lstm_cell_702_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_702/BiasAdd/ReadVariableOp*while/lstm_cell_702/BiasAdd/ReadVariableOp2V
)while/lstm_cell_702/MatMul/ReadVariableOp)while/lstm_cell_702/MatMul/ReadVariableOp2Z
+while/lstm_cell_702/MatMul_1/ReadVariableOp+while/lstm_cell_702/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_674_layer_call_fn_4263762

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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4261033o
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

?
lstm_674_while_cond_4262395.
*lstm_674_while_lstm_674_while_loop_counter4
0lstm_674_while_lstm_674_while_maximum_iterations
lstm_674_while_placeholder 
lstm_674_while_placeholder_1 
lstm_674_while_placeholder_2 
lstm_674_while_placeholder_30
,lstm_674_while_less_lstm_674_strided_slice_1G
Clstm_674_while_lstm_674_while_cond_4262395___redundant_placeholder0G
Clstm_674_while_lstm_674_while_cond_4262395___redundant_placeholder1G
Clstm_674_while_lstm_674_while_cond_4262395___redundant_placeholder2G
Clstm_674_while_lstm_674_while_cond_4262395___redundant_placeholder3
lstm_674_while_identity
?
lstm_674/while/LessLesslstm_674_while_placeholder,lstm_674_while_less_lstm_674_strided_slice_1*
T0*
_output_shapes
: ]
lstm_674/while/IdentityIdentitylstm_674/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_674_while_identity lstm_674/while/Identity:output:0*(
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
/__inference_lstm_cell_702_layer_call_fn_4264387

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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4259531o
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
/__inference_lstm_cell_704_layer_call_fn_4264583

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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4260231o
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
?K
?
E__inference_lstm_672_layer_call_and_return_conditional_losses_4262673
inputs_0?
,lstm_cell_702_matmul_readvariableop_resource:	?A
.lstm_cell_702_matmul_1_readvariableop_resource:	d?<
-lstm_cell_702_biasadd_readvariableop_resource:	?
identity??$lstm_cell_702/BiasAdd/ReadVariableOp?#lstm_cell_702/MatMul/ReadVariableOp?%lstm_cell_702/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_702/MatMul/ReadVariableOpReadVariableOp,lstm_cell_702_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_702/MatMulMatMulstrided_slice_2:output:0+lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_702_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_702/MatMul_1MatMulzeros:output:0-lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_702/addAddV2lstm_cell_702/MatMul:product:0 lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_702_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_702/BiasAddBiasAddlstm_cell_702/add:z:0,lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_702/splitSplit&lstm_cell_702/split/split_dim:output:0lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_702/SigmoidSigmoidlstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_1Sigmoidlstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_702/mulMullstm_cell_702/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_702/ReluRelulstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_1Mullstm_cell_702/Sigmoid:y:0 lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_702/add_1AddV2lstm_cell_702/mul:z:0lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_2Sigmoidlstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_702/Relu_1Relulstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_2Mullstm_cell_702/Sigmoid_2:y:0"lstm_cell_702/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_702_matmul_readvariableop_resource.lstm_cell_702_matmul_1_readvariableop_resource-lstm_cell_702_biasadd_readvariableop_resource*
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
while_body_4262589*
condR
while_cond_4262588*K
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
NoOpNoOp%^lstm_cell_702/BiasAdd/ReadVariableOp$^lstm_cell_702/MatMul/ReadVariableOp&^lstm_cell_702/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_702/BiasAdd/ReadVariableOp$lstm_cell_702/BiasAdd/ReadVariableOp2J
#lstm_cell_702/MatMul/ReadVariableOp#lstm_cell_702/MatMul/ReadVariableOp2N
%lstm_cell_702/MatMul_1/ReadVariableOp%lstm_cell_702/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_672_layer_call_and_return_conditional_losses_4260517

inputs?
,lstm_cell_702_matmul_readvariableop_resource:	?A
.lstm_cell_702_matmul_1_readvariableop_resource:	d?<
-lstm_cell_702_biasadd_readvariableop_resource:	?
identity??$lstm_cell_702/BiasAdd/ReadVariableOp?#lstm_cell_702/MatMul/ReadVariableOp?%lstm_cell_702/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_702/MatMul/ReadVariableOpReadVariableOp,lstm_cell_702_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_702/MatMulMatMulstrided_slice_2:output:0+lstm_cell_702/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_702/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_702_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_702/MatMul_1MatMulzeros:output:0-lstm_cell_702/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_702/addAddV2lstm_cell_702/MatMul:product:0 lstm_cell_702/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_702/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_702_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_702/BiasAddBiasAddlstm_cell_702/add:z:0,lstm_cell_702/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_702/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_702/splitSplit&lstm_cell_702/split/split_dim:output:0lstm_cell_702/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_702/SigmoidSigmoidlstm_cell_702/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_1Sigmoidlstm_cell_702/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_702/mulMullstm_cell_702/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_702/ReluRelulstm_cell_702/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_1Mullstm_cell_702/Sigmoid:y:0 lstm_cell_702/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_702/add_1AddV2lstm_cell_702/mul:z:0lstm_cell_702/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_702/Sigmoid_2Sigmoidlstm_cell_702/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_702/Relu_1Relulstm_cell_702/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_702/mul_2Mullstm_cell_702/Sigmoid_2:y:0"lstm_cell_702/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_702_matmul_readvariableop_resource.lstm_cell_702_matmul_1_readvariableop_resource-lstm_cell_702_biasadd_readvariableop_resource*
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
while_body_4260433*
condR
while_cond_4260432*K
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
NoOpNoOp%^lstm_cell_702/BiasAdd/ReadVariableOp$^lstm_cell_702/MatMul/ReadVariableOp&^lstm_cell_702/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_702/BiasAdd/ReadVariableOp$lstm_cell_702/BiasAdd/ReadVariableOp2J
#lstm_cell_702/MatMul/ReadVariableOp#lstm_cell_702/MatMul/ReadVariableOp2N
%lstm_cell_702/MatMul_1/ReadVariableOp%lstm_cell_702/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4261114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_703_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_703_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_703_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_703_matmul_readvariableop_resource:	d?G
4while_lstm_cell_703_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_703_biasadd_readvariableop_resource:	???*while/lstm_cell_703/BiasAdd/ReadVariableOp?)while/lstm_cell_703/MatMul/ReadVariableOp?+while/lstm_cell_703/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_703/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_703_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_703/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_703/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_703/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_703_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_703/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_703/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_703/addAddV2$while/lstm_cell_703/MatMul:product:0&while/lstm_cell_703/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_703/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_703_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_703/BiasAddBiasAddwhile/lstm_cell_703/add:z:02while/lstm_cell_703/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_703/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_703/splitSplit,while/lstm_cell_703/split/split_dim:output:0$while/lstm_cell_703/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_703/SigmoidSigmoid"while/lstm_cell_703/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_1Sigmoid"while/lstm_cell_703/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mulMul!while/lstm_cell_703/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_703/ReluRelu"while/lstm_cell_703/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_1Mulwhile/lstm_cell_703/Sigmoid:y:0&while/lstm_cell_703/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/add_1AddV2while/lstm_cell_703/mul:z:0while/lstm_cell_703/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_703/Sigmoid_2Sigmoid"while/lstm_cell_703/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_703/Relu_1Reluwhile/lstm_cell_703/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_703/mul_2Mul!while/lstm_cell_703/Sigmoid_2:y:0(while/lstm_cell_703/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_703/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_703/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_703/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_703/BiasAdd/ReadVariableOp*^while/lstm_cell_703/MatMul/ReadVariableOp,^while/lstm_cell_703/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_703_biasadd_readvariableop_resource5while_lstm_cell_703_biasadd_readvariableop_resource_0"n
4while_lstm_cell_703_matmul_1_readvariableop_resource6while_lstm_cell_703_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_703_matmul_readvariableop_resource4while_lstm_cell_703_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_703/BiasAdd/ReadVariableOp*while/lstm_cell_703/BiasAdd/ReadVariableOp2V
)while/lstm_cell_703/MatMul/ReadVariableOp)while/lstm_cell_703/MatMul/ReadVariableOp2Z
+while/lstm_cell_703/MatMul_1/ReadVariableOp+while/lstm_cell_703/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4259590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_702_4259614_0:	?0
while_lstm_cell_702_4259616_0:	d?,
while_lstm_cell_702_4259618_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_702_4259614:	?.
while_lstm_cell_702_4259616:	d?*
while_lstm_cell_702_4259618:	???+while/lstm_cell_702/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_702/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_702_4259614_0while_lstm_cell_702_4259616_0while_lstm_cell_702_4259618_0*
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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4259531?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_702/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_702/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_702/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_702/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_702_4259614while_lstm_cell_702_4259614_0"<
while_lstm_cell_702_4259616while_lstm_cell_702_4259616_0"<
while_lstm_cell_702_4259618while_lstm_cell_702_4259618_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_702/StatefulPartitionedCall+while/lstm_cell_702/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4259881

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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4260168

inputs'
lstm_cell_704_4260086:2('
lstm_cell_704_4260088:
(#
lstm_cell_704_4260090:(
identity??%lstm_cell_704/StatefulPartitionedCall?while;
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
%lstm_cell_704/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_704_4260086lstm_cell_704_4260088lstm_cell_704_4260090*
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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4260085n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_704_4260086lstm_cell_704_4260088lstm_cell_704_4260090*
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
while_body_4260099*
condR
while_cond_4260098*K
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
NoOpNoOp&^lstm_cell_704/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_704/StatefulPartitionedCall%lstm_cell_704/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4264517

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
?
E__inference_lstm_673_layer_call_and_return_conditional_losses_4260009

inputs(
lstm_cell_703_4259927:	d?(
lstm_cell_703_4259929:	2?$
lstm_cell_703_4259931:	?
identity??%lstm_cell_703/StatefulPartitionedCall?while;
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
%lstm_cell_703/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_703_4259927lstm_cell_703_4259929lstm_cell_703_4259931*
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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4259881n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_703_4259927lstm_cell_703_4259929lstm_cell_703_4259931*
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
while_body_4259940*
condR
while_cond_4259939*K
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
NoOpNoOp&^lstm_cell_703/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_703/StatefulPartitionedCall%lstm_cell_703/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_702_layer_call_fn_4264370

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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4259385o
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
while_cond_4262588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4262588___redundant_placeholder05
1while_while_cond_4262588___redundant_placeholder15
1while_while_cond_4262588___redundant_placeholder25
1while_while_cond_4262588___redundant_placeholder3
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
while_cond_4263490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4263490___redundant_placeholder05
1while_while_cond_4263490___redundant_placeholder15
1while_while_cond_4263490___redundant_placeholder25
1while_while_cond_4263490___redundant_placeholder3
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4259659

inputs(
lstm_cell_702_4259577:	?(
lstm_cell_702_4259579:	d?$
lstm_cell_702_4259581:	?
identity??%lstm_cell_702/StatefulPartitionedCall?while;
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
%lstm_cell_702/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_702_4259577lstm_cell_702_4259579lstm_cell_702_4259581*
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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4259531n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_702_4259577lstm_cell_702_4259579lstm_cell_702_4259581*
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
while_body_4259590*
condR
while_cond_4259589*K
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
NoOpNoOp&^lstm_cell_702/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_702/StatefulPartitionedCall%lstm_cell_702/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_673_layer_call_fn_4263113
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4259818|
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
?
*sequential_224_lstm_672_while_cond_4258949L
Hsequential_224_lstm_672_while_sequential_224_lstm_672_while_loop_counterR
Nsequential_224_lstm_672_while_sequential_224_lstm_672_while_maximum_iterations-
)sequential_224_lstm_672_while_placeholder/
+sequential_224_lstm_672_while_placeholder_1/
+sequential_224_lstm_672_while_placeholder_2/
+sequential_224_lstm_672_while_placeholder_3N
Jsequential_224_lstm_672_while_less_sequential_224_lstm_672_strided_slice_1e
asequential_224_lstm_672_while_sequential_224_lstm_672_while_cond_4258949___redundant_placeholder0e
asequential_224_lstm_672_while_sequential_224_lstm_672_while_cond_4258949___redundant_placeholder1e
asequential_224_lstm_672_while_sequential_224_lstm_672_while_cond_4258949___redundant_placeholder2e
asequential_224_lstm_672_while_sequential_224_lstm_672_while_cond_4258949___redundant_placeholder3*
&sequential_224_lstm_672_while_identity
?
"sequential_224/lstm_672/while/LessLess)sequential_224_lstm_672_while_placeholderJsequential_224_lstm_672_while_less_sequential_224_lstm_672_strided_slice_1*
T0*
_output_shapes
: {
&sequential_224/lstm_672/while/IdentityIdentity&sequential_224/lstm_672/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_224_lstm_672_while_identity/sequential_224/lstm_672/while/Identity:output:0*(
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
lstm_672_input;
 serving_default_lstm_672_input:0?????????=
	dense_2240
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
2dense_224/kernel
:2dense_224/bias
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
0:.	?2lstm_672/lstm_cell_672/kernel
::8	d?2'lstm_672/lstm_cell_672/recurrent_kernel
*:(?2lstm_672/lstm_cell_672/bias
0:.	d?2lstm_673/lstm_cell_673/kernel
::8	2?2'lstm_673/lstm_cell_673/recurrent_kernel
*:(?2lstm_673/lstm_cell_673/bias
/:-2(2lstm_674/lstm_cell_674/kernel
9:7
(2'lstm_674/lstm_cell_674/recurrent_kernel
):'(2lstm_674/lstm_cell_674/bias
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
2Adam/dense_224/kernel/m
!:2Adam/dense_224/bias/m
5:3	?2$Adam/lstm_672/lstm_cell_672/kernel/m
?:=	d?2.Adam/lstm_672/lstm_cell_672/recurrent_kernel/m
/:-?2"Adam/lstm_672/lstm_cell_672/bias/m
5:3	d?2$Adam/lstm_673/lstm_cell_673/kernel/m
?:=	2?2.Adam/lstm_673/lstm_cell_673/recurrent_kernel/m
/:-?2"Adam/lstm_673/lstm_cell_673/bias/m
4:22(2$Adam/lstm_674/lstm_cell_674/kernel/m
>:<
(2.Adam/lstm_674/lstm_cell_674/recurrent_kernel/m
.:,(2"Adam/lstm_674/lstm_cell_674/bias/m
':%
2Adam/dense_224/kernel/v
!:2Adam/dense_224/bias/v
5:3	?2$Adam/lstm_672/lstm_cell_672/kernel/v
?:=	d?2.Adam/lstm_672/lstm_cell_672/recurrent_kernel/v
/:-?2"Adam/lstm_672/lstm_cell_672/bias/v
5:3	d?2$Adam/lstm_673/lstm_cell_673/kernel/v
?:=	2?2.Adam/lstm_673/lstm_cell_673/recurrent_kernel/v
/:-?2"Adam/lstm_673/lstm_cell_673/bias/v
4:22(2$Adam/lstm_674/lstm_cell_674/kernel/v
>:<
(2.Adam/lstm_674/lstm_cell_674/recurrent_kernel/v
.:,(2"Adam/lstm_674/lstm_cell_674/bias/v
?2?
0__inference_sequential_224_layer_call_fn_4260867
0__inference_sequential_224_layer_call_fn_4261605
0__inference_sequential_224_layer_call_fn_4261632
0__inference_sequential_224_layer_call_fn_4261483?
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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4262059
K__inference_sequential_224_layer_call_and_return_conditional_losses_4262486
K__inference_sequential_224_layer_call_and_return_conditional_losses_4261513
K__inference_sequential_224_layer_call_and_return_conditional_losses_4261543?
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
"__inference__wrapped_model_4259318lstm_672_input"?
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
*__inference_lstm_672_layer_call_fn_4262497
*__inference_lstm_672_layer_call_fn_4262508
*__inference_lstm_672_layer_call_fn_4262519
*__inference_lstm_672_layer_call_fn_4262530?
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4262673
E__inference_lstm_672_layer_call_and_return_conditional_losses_4262816
E__inference_lstm_672_layer_call_and_return_conditional_losses_4262959
E__inference_lstm_672_layer_call_and_return_conditional_losses_4263102?
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
*__inference_lstm_673_layer_call_fn_4263113
*__inference_lstm_673_layer_call_fn_4263124
*__inference_lstm_673_layer_call_fn_4263135
*__inference_lstm_673_layer_call_fn_4263146?
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263289
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263432
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263575
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263718?
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
*__inference_lstm_674_layer_call_fn_4263729
*__inference_lstm_674_layer_call_fn_4263740
*__inference_lstm_674_layer_call_fn_4263751
*__inference_lstm_674_layer_call_fn_4263762?
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4263905
E__inference_lstm_674_layer_call_and_return_conditional_losses_4264048
E__inference_lstm_674_layer_call_and_return_conditional_losses_4264191
E__inference_lstm_674_layer_call_and_return_conditional_losses_4264334?
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
+__inference_dense_224_layer_call_fn_4264343?
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
F__inference_dense_224_layer_call_and_return_conditional_losses_4264353?
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
%__inference_signature_wrapper_4261578lstm_672_input"?
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
/__inference_lstm_cell_702_layer_call_fn_4264370
/__inference_lstm_cell_702_layer_call_fn_4264387?
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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4264419
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4264451?
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
/__inference_lstm_cell_703_layer_call_fn_4264468
/__inference_lstm_cell_703_layer_call_fn_4264485?
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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4264517
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4264549?
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
/__inference_lstm_cell_704_layer_call_fn_4264566
/__inference_lstm_cell_704_layer_call_fn_4264583?
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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4264615
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4264647?
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
"__inference__wrapped_model_4259318?-./012345!";?8
1?.
,?)
lstm_672_input?????????
? "5?2
0
	dense_224#? 
	dense_224??????????
F__inference_dense_224_layer_call_and_return_conditional_losses_4264353\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_224_layer_call_fn_4264343O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_672_layer_call_and_return_conditional_losses_4262673?-./O?L
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4262816?-./O?L
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4262959q-./??<
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
E__inference_lstm_672_layer_call_and_return_conditional_losses_4263102q-./??<
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
*__inference_lstm_672_layer_call_fn_4262497}-./O?L
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
*__inference_lstm_672_layer_call_fn_4262508}-./O?L
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
*__inference_lstm_672_layer_call_fn_4262519d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_672_layer_call_fn_4262530d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263289?012O?L
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263432?012O?L
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263575q012??<
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
E__inference_lstm_673_layer_call_and_return_conditional_losses_4263718q012??<
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
*__inference_lstm_673_layer_call_fn_4263113}012O?L
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
*__inference_lstm_673_layer_call_fn_4263124}012O?L
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
*__inference_lstm_673_layer_call_fn_4263135d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_673_layer_call_fn_4263146d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_674_layer_call_and_return_conditional_losses_4263905}345O?L
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4264048}345O?L
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4264191m345??<
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
E__inference_lstm_674_layer_call_and_return_conditional_losses_4264334m345??<
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
*__inference_lstm_674_layer_call_fn_4263729p345O?L
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
*__inference_lstm_674_layer_call_fn_4263740p345O?L
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
*__inference_lstm_674_layer_call_fn_4263751`345??<
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
*__inference_lstm_674_layer_call_fn_4263762`345??<
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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4264419?-./??}
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
J__inference_lstm_cell_702_layer_call_and_return_conditional_losses_4264451?-./??}
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
/__inference_lstm_cell_702_layer_call_fn_4264370?-./??}
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
/__inference_lstm_cell_702_layer_call_fn_4264387?-./??}
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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4264517?012??}
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
J__inference_lstm_cell_703_layer_call_and_return_conditional_losses_4264549?012??}
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
/__inference_lstm_cell_703_layer_call_fn_4264468?012??}
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
/__inference_lstm_cell_703_layer_call_fn_4264485?012??}
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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4264615?345??}
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
J__inference_lstm_cell_704_layer_call_and_return_conditional_losses_4264647?345??}
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
/__inference_lstm_cell_704_layer_call_fn_4264566?345??}
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
/__inference_lstm_cell_704_layer_call_fn_4264583?345??}
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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4261513y-./012345!"C?@
9?6
,?)
lstm_672_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_224_layer_call_and_return_conditional_losses_4261543y-./012345!"C?@
9?6
,?)
lstm_672_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_224_layer_call_and_return_conditional_losses_4262059q-./012345!";?8
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
K__inference_sequential_224_layer_call_and_return_conditional_losses_4262486q-./012345!";?8
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
0__inference_sequential_224_layer_call_fn_4260867l-./012345!"C?@
9?6
,?)
lstm_672_input?????????
p 

 
? "???????????
0__inference_sequential_224_layer_call_fn_4261483l-./012345!"C?@
9?6
,?)
lstm_672_input?????????
p

 
? "???????????
0__inference_sequential_224_layer_call_fn_4261605d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_224_layer_call_fn_4261632d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4261578?-./012345!"M?J
? 
C?@
>
lstm_672_input,?)
lstm_672_input?????????"5?2
0
	dense_224#? 
	dense_224?????????