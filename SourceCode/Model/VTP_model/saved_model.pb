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
dense_298/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_298/kernel
u
$dense_298/kernel/Read/ReadVariableOpReadVariableOpdense_298/kernel*
_output_shapes

:
*
dtype0
t
dense_298/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_298/bias
m
"dense_298/bias/Read/ReadVariableOpReadVariableOpdense_298/bias*
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
lstm_894/lstm_cell_894/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_894/lstm_cell_894/kernel
?
1lstm_894/lstm_cell_894/kernel/Read/ReadVariableOpReadVariableOplstm_894/lstm_cell_894/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_894/lstm_cell_894/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_894/lstm_cell_894/recurrent_kernel
?
;lstm_894/lstm_cell_894/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_894/lstm_cell_894/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_894/lstm_cell_894/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_894/lstm_cell_894/bias
?
/lstm_894/lstm_cell_894/bias/Read/ReadVariableOpReadVariableOplstm_894/lstm_cell_894/bias*
_output_shapes	
:?*
dtype0
?
lstm_895/lstm_cell_895/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_895/lstm_cell_895/kernel
?
1lstm_895/lstm_cell_895/kernel/Read/ReadVariableOpReadVariableOplstm_895/lstm_cell_895/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_895/lstm_cell_895/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_895/lstm_cell_895/recurrent_kernel
?
;lstm_895/lstm_cell_895/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_895/lstm_cell_895/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_895/lstm_cell_895/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_895/lstm_cell_895/bias
?
/lstm_895/lstm_cell_895/bias/Read/ReadVariableOpReadVariableOplstm_895/lstm_cell_895/bias*
_output_shapes	
:?*
dtype0
?
lstm_896/lstm_cell_896/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_896/lstm_cell_896/kernel
?
1lstm_896/lstm_cell_896/kernel/Read/ReadVariableOpReadVariableOplstm_896/lstm_cell_896/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_896/lstm_cell_896/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_896/lstm_cell_896/recurrent_kernel
?
;lstm_896/lstm_cell_896/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_896/lstm_cell_896/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_896/lstm_cell_896/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_896/lstm_cell_896/bias
?
/lstm_896/lstm_cell_896/bias/Read/ReadVariableOpReadVariableOplstm_896/lstm_cell_896/bias*
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
Adam/dense_298/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_298/kernel/m
?
+Adam/dense_298/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_298/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_298/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_298/bias/m
{
)Adam/dense_298/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_298/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_894/lstm_cell_894/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_894/lstm_cell_894/kernel/m
?
8Adam/lstm_894/lstm_cell_894/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_894/lstm_cell_894/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_894/lstm_cell_894/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_894/lstm_cell_894/recurrent_kernel/m
?
BAdam/lstm_894/lstm_cell_894/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_894/lstm_cell_894/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_894/lstm_cell_894/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_894/lstm_cell_894/bias/m
?
6Adam/lstm_894/lstm_cell_894/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_894/lstm_cell_894/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_895/lstm_cell_895/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_895/lstm_cell_895/kernel/m
?
8Adam/lstm_895/lstm_cell_895/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_895/lstm_cell_895/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_895/lstm_cell_895/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_895/lstm_cell_895/recurrent_kernel/m
?
BAdam/lstm_895/lstm_cell_895/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_895/lstm_cell_895/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_895/lstm_cell_895/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_895/lstm_cell_895/bias/m
?
6Adam/lstm_895/lstm_cell_895/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_895/lstm_cell_895/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_896/lstm_cell_896/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_896/lstm_cell_896/kernel/m
?
8Adam/lstm_896/lstm_cell_896/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_896/lstm_cell_896/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_896/lstm_cell_896/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_896/lstm_cell_896/recurrent_kernel/m
?
BAdam/lstm_896/lstm_cell_896/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_896/lstm_cell_896/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_896/lstm_cell_896/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_896/lstm_cell_896/bias/m
?
6Adam/lstm_896/lstm_cell_896/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_896/lstm_cell_896/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_298/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_298/kernel/v
?
+Adam/dense_298/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_298/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_298/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_298/bias/v
{
)Adam/dense_298/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_298/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_894/lstm_cell_894/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_894/lstm_cell_894/kernel/v
?
8Adam/lstm_894/lstm_cell_894/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_894/lstm_cell_894/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_894/lstm_cell_894/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_894/lstm_cell_894/recurrent_kernel/v
?
BAdam/lstm_894/lstm_cell_894/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_894/lstm_cell_894/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_894/lstm_cell_894/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_894/lstm_cell_894/bias/v
?
6Adam/lstm_894/lstm_cell_894/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_894/lstm_cell_894/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_895/lstm_cell_895/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_895/lstm_cell_895/kernel/v
?
8Adam/lstm_895/lstm_cell_895/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_895/lstm_cell_895/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_895/lstm_cell_895/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_895/lstm_cell_895/recurrent_kernel/v
?
BAdam/lstm_895/lstm_cell_895/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_895/lstm_cell_895/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_895/lstm_cell_895/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_895/lstm_cell_895/bias/v
?
6Adam/lstm_895/lstm_cell_895/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_895/lstm_cell_895/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_896/lstm_cell_896/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_896/lstm_cell_896/kernel/v
?
8Adam/lstm_896/lstm_cell_896/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_896/lstm_cell_896/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_896/lstm_cell_896/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_896/lstm_cell_896/recurrent_kernel/v
?
BAdam/lstm_896/lstm_cell_896/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_896/lstm_cell_896/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_896/lstm_cell_896/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_896/lstm_cell_896/bias/v
?
6Adam/lstm_896/lstm_cell_896/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_896/lstm_cell_896/bias/v*
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
VARIABLE_VALUEdense_298/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_298/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_894/lstm_cell_894/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_894/lstm_cell_894/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_894/lstm_cell_894/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_895/lstm_cell_895/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_895/lstm_cell_895/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_895/lstm_cell_895/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_896/lstm_cell_896/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_896/lstm_cell_896/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_896/lstm_cell_896/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_298/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_298/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_894/lstm_cell_894/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_894/lstm_cell_894/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_894/lstm_cell_894/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_895/lstm_cell_895/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_895/lstm_cell_895/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_895/lstm_cell_895/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_896/lstm_cell_896/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_896/lstm_cell_896/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_896/lstm_cell_896/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_298/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_298/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_894/lstm_cell_894/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_894/lstm_cell_894/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_894/lstm_cell_894/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_895/lstm_cell_895/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_895/lstm_cell_895/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_895/lstm_cell_895/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_896/lstm_cell_896/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_896/lstm_cell_896/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_896/lstm_cell_896/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_894_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_894_inputlstm_894/lstm_cell_894/kernel'lstm_894/lstm_cell_894/recurrent_kernellstm_894/lstm_cell_894/biaslstm_895/lstm_cell_895/kernel'lstm_895/lstm_cell_895/recurrent_kernellstm_895/lstm_cell_895/biaslstm_896/lstm_cell_896/kernel'lstm_896/lstm_cell_896/recurrent_kernellstm_896/lstm_cell_896/biasdense_298/kerneldense_298/bias*
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
%__inference_signature_wrapper_4658831
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_298/kernel/Read/ReadVariableOp"dense_298/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_894/lstm_cell_894/kernel/Read/ReadVariableOp;lstm_894/lstm_cell_894/recurrent_kernel/Read/ReadVariableOp/lstm_894/lstm_cell_894/bias/Read/ReadVariableOp1lstm_895/lstm_cell_895/kernel/Read/ReadVariableOp;lstm_895/lstm_cell_895/recurrent_kernel/Read/ReadVariableOp/lstm_895/lstm_cell_895/bias/Read/ReadVariableOp1lstm_896/lstm_cell_896/kernel/Read/ReadVariableOp;lstm_896/lstm_cell_896/recurrent_kernel/Read/ReadVariableOp/lstm_896/lstm_cell_896/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_298/kernel/m/Read/ReadVariableOp)Adam/dense_298/bias/m/Read/ReadVariableOp8Adam/lstm_894/lstm_cell_894/kernel/m/Read/ReadVariableOpBAdam/lstm_894/lstm_cell_894/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_894/lstm_cell_894/bias/m/Read/ReadVariableOp8Adam/lstm_895/lstm_cell_895/kernel/m/Read/ReadVariableOpBAdam/lstm_895/lstm_cell_895/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_895/lstm_cell_895/bias/m/Read/ReadVariableOp8Adam/lstm_896/lstm_cell_896/kernel/m/Read/ReadVariableOpBAdam/lstm_896/lstm_cell_896/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_896/lstm_cell_896/bias/m/Read/ReadVariableOp+Adam/dense_298/kernel/v/Read/ReadVariableOp)Adam/dense_298/bias/v/Read/ReadVariableOp8Adam/lstm_894/lstm_cell_894/kernel/v/Read/ReadVariableOpBAdam/lstm_894/lstm_cell_894/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_894/lstm_cell_894/bias/v/Read/ReadVariableOp8Adam/lstm_895/lstm_cell_895/kernel/v/Read/ReadVariableOpBAdam/lstm_895/lstm_cell_895/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_895/lstm_cell_895/bias/v/Read/ReadVariableOp8Adam/lstm_896/lstm_cell_896/kernel/v/Read/ReadVariableOpBAdam/lstm_896/lstm_cell_896/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_896/lstm_cell_896/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4662043
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_298/kerneldense_298/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_894/lstm_cell_894/kernel'lstm_894/lstm_cell_894/recurrent_kernellstm_894/lstm_cell_894/biaslstm_895/lstm_cell_895/kernel'lstm_895/lstm_cell_895/recurrent_kernellstm_895/lstm_cell_895/biaslstm_896/lstm_cell_896/kernel'lstm_896/lstm_cell_896/recurrent_kernellstm_896/lstm_cell_896/biastotalcountAdam/dense_298/kernel/mAdam/dense_298/bias/m$Adam/lstm_894/lstm_cell_894/kernel/m.Adam/lstm_894/lstm_cell_894/recurrent_kernel/m"Adam/lstm_894/lstm_cell_894/bias/m$Adam/lstm_895/lstm_cell_895/kernel/m.Adam/lstm_895/lstm_cell_895/recurrent_kernel/m"Adam/lstm_895/lstm_cell_895/bias/m$Adam/lstm_896/lstm_cell_896/kernel/m.Adam/lstm_896/lstm_cell_896/recurrent_kernel/m"Adam/lstm_896/lstm_cell_896/bias/mAdam/dense_298/kernel/vAdam/dense_298/bias/v$Adam/lstm_894/lstm_cell_894/kernel/v.Adam/lstm_894/lstm_cell_894/recurrent_kernel/v"Adam/lstm_894/lstm_cell_894/bias/v$Adam/lstm_895/lstm_cell_895/kernel/v.Adam/lstm_895/lstm_cell_895/recurrent_kernel/v"Adam/lstm_895/lstm_cell_895/bias/v$Adam/lstm_896/lstm_cell_896/kernel/v.Adam/lstm_896/lstm_cell_896/recurrent_kernel/v"Adam/lstm_896/lstm_cell_896/bias/v*4
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
#__inference__traced_restore_4662173??+
?
?
while_cond_4657985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4657985___redundant_placeholder05
1while_while_cond_4657985___redundant_placeholder15
1while_while_cond_4657985___redundant_placeholder25
1while_while_cond_4657985___redundant_placeholder3
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
while_body_4658367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_769_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_769_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_769_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_769_matmul_readvariableop_resource:	d?G
4while_lstm_cell_769_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_769_biasadd_readvariableop_resource:	???*while/lstm_cell_769/BiasAdd/ReadVariableOp?)while/lstm_cell_769/MatMul/ReadVariableOp?+while/lstm_cell_769/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_769/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_769_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_769/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_769_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_769/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_769/addAddV2$while/lstm_cell_769/MatMul:product:0&while/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_769_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_769/BiasAddBiasAddwhile/lstm_cell_769/add:z:02while/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_769/splitSplit,while/lstm_cell_769/split/split_dim:output:0$while/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_769/SigmoidSigmoid"while/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_1Sigmoid"while/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mulMul!while/lstm_cell_769/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_769/ReluRelu"while/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_1Mulwhile/lstm_cell_769/Sigmoid:y:0&while/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/add_1AddV2while/lstm_cell_769/mul:z:0while/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_2Sigmoid"while/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_769/Relu_1Reluwhile/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_2Mul!while/lstm_cell_769/Sigmoid_2:y:0(while/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_769/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_769/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_769/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_769/BiasAdd/ReadVariableOp*^while/lstm_cell_769/MatMul/ReadVariableOp,^while/lstm_cell_769/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_769_biasadd_readvariableop_resource5while_lstm_cell_769_biasadd_readvariableop_resource_0"n
4while_lstm_cell_769_matmul_1_readvariableop_resource6while_lstm_cell_769_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_769_matmul_readvariableop_resource4while_lstm_cell_769_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_769/BiasAdd/ReadVariableOp*while/lstm_cell_769/BiasAdd/ReadVariableOp2V
)while/lstm_cell_769/MatMul/ReadVariableOp)while/lstm_cell_769/MatMul/ReadVariableOp2Z
+while/lstm_cell_769/MatMul_1/ReadVariableOp+while/lstm_cell_769/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660542
inputs_0?
,lstm_cell_769_matmul_readvariableop_resource:	d?A
.lstm_cell_769_matmul_1_readvariableop_resource:	2?<
-lstm_cell_769_biasadd_readvariableop_resource:	?
identity??$lstm_cell_769/BiasAdd/ReadVariableOp?#lstm_cell_769/MatMul/ReadVariableOp?%lstm_cell_769/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_769/MatMul/ReadVariableOpReadVariableOp,lstm_cell_769_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_769/MatMulMatMulstrided_slice_2:output:0+lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_769_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_769/MatMul_1MatMulzeros:output:0-lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_769/addAddV2lstm_cell_769/MatMul:product:0 lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_769_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_769/BiasAddBiasAddlstm_cell_769/add:z:0,lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_769/splitSplit&lstm_cell_769/split/split_dim:output:0lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_769/SigmoidSigmoidlstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_1Sigmoidlstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_769/mulMullstm_cell_769/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_769/ReluRelulstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_1Mullstm_cell_769/Sigmoid:y:0 lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_769/add_1AddV2lstm_cell_769/mul:z:0lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_2Sigmoidlstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_769/Relu_1Relulstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_2Mullstm_cell_769/Sigmoid_2:y:0"lstm_cell_769/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_769_matmul_readvariableop_resource.lstm_cell_769_matmul_1_readvariableop_resource-lstm_cell_769_biasadd_readvariableop_resource*
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
while_body_4660458*
condR
while_cond_4660457*K
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
NoOpNoOp%^lstm_cell_769/BiasAdd/ReadVariableOp$^lstm_cell_769/MatMul/ReadVariableOp&^lstm_cell_769/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_769/BiasAdd/ReadVariableOp$lstm_cell_769/BiasAdd/ReadVariableOp2J
#lstm_cell_769/MatMul/ReadVariableOp#lstm_cell_769/MatMul/ReadVariableOp2N
%lstm_cell_769/MatMul_1/ReadVariableOp%lstm_cell_769/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_894_layer_call_and_return_conditional_losses_4656721

inputs(
lstm_cell_768_4656639:	?(
lstm_cell_768_4656641:	d?$
lstm_cell_768_4656643:	?
identity??%lstm_cell_768/StatefulPartitionedCall?while;
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
%lstm_cell_768/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_768_4656639lstm_cell_768_4656641lstm_cell_768_4656643*
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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4656638n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_768_4656639lstm_cell_768_4656641lstm_cell_768_4656643*
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
while_body_4656652*
condR
while_cond_4656651*K
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
NoOpNoOp&^lstm_cell_768/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_768/StatefulPartitionedCall%lstm_cell_768/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4660743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4660743___redundant_placeholder05
1while_while_cond_4660743___redundant_placeholder15
1while_while_cond_4660743___redundant_placeholder25
1while_while_cond_4660743___redundant_placeholder3
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660971

inputs?
,lstm_cell_769_matmul_readvariableop_resource:	d?A
.lstm_cell_769_matmul_1_readvariableop_resource:	2?<
-lstm_cell_769_biasadd_readvariableop_resource:	?
identity??$lstm_cell_769/BiasAdd/ReadVariableOp?#lstm_cell_769/MatMul/ReadVariableOp?%lstm_cell_769/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_769/MatMul/ReadVariableOpReadVariableOp,lstm_cell_769_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_769/MatMulMatMulstrided_slice_2:output:0+lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_769_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_769/MatMul_1MatMulzeros:output:0-lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_769/addAddV2lstm_cell_769/MatMul:product:0 lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_769_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_769/BiasAddBiasAddlstm_cell_769/add:z:0,lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_769/splitSplit&lstm_cell_769/split/split_dim:output:0lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_769/SigmoidSigmoidlstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_1Sigmoidlstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_769/mulMullstm_cell_769/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_769/ReluRelulstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_1Mullstm_cell_769/Sigmoid:y:0 lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_769/add_1AddV2lstm_cell_769/mul:z:0lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_2Sigmoidlstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_769/Relu_1Relulstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_2Mullstm_cell_769/Sigmoid_2:y:0"lstm_cell_769/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_769_matmul_readvariableop_resource.lstm_cell_769_matmul_1_readvariableop_resource-lstm_cell_769_biasadd_readvariableop_resource*
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
while_body_4660887*
condR
while_cond_4660886*K
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
NoOpNoOp%^lstm_cell_769/BiasAdd/ReadVariableOp$^lstm_cell_769/MatMul/ReadVariableOp&^lstm_cell_769/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_769/BiasAdd/ReadVariableOp$lstm_cell_769/BiasAdd/ReadVariableOp2J
#lstm_cell_769/MatMul/ReadVariableOp#lstm_cell_769/MatMul/ReadVariableOp2N
%lstm_cell_769/MatMul_1/ReadVariableOp%lstm_cell_769/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_895_while_body_4659083.
*lstm_895_while_lstm_895_while_loop_counter4
0lstm_895_while_lstm_895_while_maximum_iterations
lstm_895_while_placeholder 
lstm_895_while_placeholder_1 
lstm_895_while_placeholder_2 
lstm_895_while_placeholder_3-
)lstm_895_while_lstm_895_strided_slice_1_0i
elstm_895_while_tensorarrayv2read_tensorlistgetitem_lstm_895_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_895_while_lstm_cell_769_matmul_readvariableop_resource_0:	d?R
?lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource_0:	2?M
>lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource_0:	?
lstm_895_while_identity
lstm_895_while_identity_1
lstm_895_while_identity_2
lstm_895_while_identity_3
lstm_895_while_identity_4
lstm_895_while_identity_5+
'lstm_895_while_lstm_895_strided_slice_1g
clstm_895_while_tensorarrayv2read_tensorlistgetitem_lstm_895_tensorarrayunstack_tensorlistfromtensorN
;lstm_895_while_lstm_cell_769_matmul_readvariableop_resource:	d?P
=lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource:	2?K
<lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource:	???3lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp?2lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp?4lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp?
@lstm_895/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_895/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_895_while_tensorarrayv2read_tensorlistgetitem_lstm_895_tensorarrayunstack_tensorlistfromtensor_0lstm_895_while_placeholderIlstm_895/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_895/while/lstm_cell_769/MatMul/ReadVariableOpReadVariableOp=lstm_895_while_lstm_cell_769_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_895/while/lstm_cell_769/MatMulMatMul9lstm_895/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp?lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_895/while/lstm_cell_769/MatMul_1MatMullstm_895_while_placeholder_2<lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_895/while/lstm_cell_769/addAddV2-lstm_895/while/lstm_cell_769/MatMul:product:0/lstm_895/while/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp>lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_895/while/lstm_cell_769/BiasAddBiasAdd$lstm_895/while/lstm_cell_769/add:z:0;lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_895/while/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_895/while/lstm_cell_769/splitSplit5lstm_895/while/lstm_cell_769/split/split_dim:output:0-lstm_895/while/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_895/while/lstm_cell_769/SigmoidSigmoid+lstm_895/while/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_895/while/lstm_cell_769/Sigmoid_1Sigmoid+lstm_895/while/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_895/while/lstm_cell_769/mulMul*lstm_895/while/lstm_cell_769/Sigmoid_1:y:0lstm_895_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_895/while/lstm_cell_769/ReluRelu+lstm_895/while/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_895/while/lstm_cell_769/mul_1Mul(lstm_895/while/lstm_cell_769/Sigmoid:y:0/lstm_895/while/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_895/while/lstm_cell_769/add_1AddV2$lstm_895/while/lstm_cell_769/mul:z:0&lstm_895/while/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_895/while/lstm_cell_769/Sigmoid_2Sigmoid+lstm_895/while/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_895/while/lstm_cell_769/Relu_1Relu&lstm_895/while/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_895/while/lstm_cell_769/mul_2Mul*lstm_895/while/lstm_cell_769/Sigmoid_2:y:01lstm_895/while/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_895/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_895_while_placeholder_1lstm_895_while_placeholder&lstm_895/while/lstm_cell_769/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_895/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_895/while/addAddV2lstm_895_while_placeholderlstm_895/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_895/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_895/while/add_1AddV2*lstm_895_while_lstm_895_while_loop_counterlstm_895/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_895/while/IdentityIdentitylstm_895/while/add_1:z:0^lstm_895/while/NoOp*
T0*
_output_shapes
: ?
lstm_895/while/Identity_1Identity0lstm_895_while_lstm_895_while_maximum_iterations^lstm_895/while/NoOp*
T0*
_output_shapes
: t
lstm_895/while/Identity_2Identitylstm_895/while/add:z:0^lstm_895/while/NoOp*
T0*
_output_shapes
: ?
lstm_895/while/Identity_3IdentityClstm_895/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_895/while/NoOp*
T0*
_output_shapes
: ?
lstm_895/while/Identity_4Identity&lstm_895/while/lstm_cell_769/mul_2:z:0^lstm_895/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_895/while/Identity_5Identity&lstm_895/while/lstm_cell_769/add_1:z:0^lstm_895/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_895/while/NoOpNoOp4^lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp3^lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp5^lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_895_while_identity lstm_895/while/Identity:output:0"?
lstm_895_while_identity_1"lstm_895/while/Identity_1:output:0"?
lstm_895_while_identity_2"lstm_895/while/Identity_2:output:0"?
lstm_895_while_identity_3"lstm_895/while/Identity_3:output:0"?
lstm_895_while_identity_4"lstm_895/while/Identity_4:output:0"?
lstm_895_while_identity_5"lstm_895/while/Identity_5:output:0"T
'lstm_895_while_lstm_895_strided_slice_1)lstm_895_while_lstm_895_strided_slice_1_0"~
<lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource>lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource_0"?
=lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource?lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource_0"|
;lstm_895_while_lstm_cell_769_matmul_readvariableop_resource=lstm_895_while_lstm_cell_769_matmul_readvariableop_resource_0"?
clstm_895_while_tensorarrayv2read_tensorlistgetitem_lstm_895_tensorarrayunstack_tensorlistfromtensorelstm_895_while_tensorarrayv2read_tensorlistgetitem_lstm_895_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp3lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp2h
2lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp2lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp2l
4lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp4lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4661672

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
while_cond_4660127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4660127___redundant_placeholder05
1while_while_cond_4660127___redundant_placeholder15
1while_while_cond_4660127___redundant_placeholder25
1while_while_cond_4660127___redundant_placeholder3
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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4656988

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
/__inference_lstm_cell_770_layer_call_fn_4661819

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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4657338o
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
while_cond_4660886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4660886___redundant_placeholder05
1while_while_cond_4660886___redundant_placeholder15
1while_while_cond_4660886___redundant_placeholder25
1while_while_cond_4660886___redundant_placeholder3
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
*__inference_lstm_895_layer_call_fn_4660366
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4657071|
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
lstm_895_while_cond_4659509.
*lstm_895_while_lstm_895_while_loop_counter4
0lstm_895_while_lstm_895_while_maximum_iterations
lstm_895_while_placeholder 
lstm_895_while_placeholder_1 
lstm_895_while_placeholder_2 
lstm_895_while_placeholder_30
,lstm_895_while_less_lstm_895_strided_slice_1G
Clstm_895_while_lstm_895_while_cond_4659509___redundant_placeholder0G
Clstm_895_while_lstm_895_while_cond_4659509___redundant_placeholder1G
Clstm_895_while_lstm_895_while_cond_4659509___redundant_placeholder2G
Clstm_895_while_lstm_895_while_cond_4659509___redundant_placeholder3
lstm_895_while_identity
?
lstm_895/while/LessLesslstm_895_while_placeholder,lstm_895_while_less_lstm_895_strided_slice_1*
T0*
_output_shapes
: ]
lstm_895/while/IdentityIdentitylstm_895/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_895_while_identity lstm_895/while/Identity:output:0*(
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
0__inference_sequential_298_layer_call_fn_4658120
lstm_894_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_894_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658095o
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
_user_specified_namelstm_894_input
?8
?
while_body_4660271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_768_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_768_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_768_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_768_matmul_readvariableop_resource:	?G
4while_lstm_cell_768_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_768_biasadd_readvariableop_resource:	???*while/lstm_cell_768/BiasAdd/ReadVariableOp?)while/lstm_cell_768/MatMul/ReadVariableOp?+while/lstm_cell_768/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_768/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_768_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_768/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_768_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_768/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_768/addAddV2$while/lstm_cell_768/MatMul:product:0&while/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_768_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_768/BiasAddBiasAddwhile/lstm_cell_768/add:z:02while/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_768/splitSplit,while/lstm_cell_768/split/split_dim:output:0$while/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_768/SigmoidSigmoid"while/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_1Sigmoid"while/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mulMul!while/lstm_cell_768/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_768/ReluRelu"while/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_1Mulwhile/lstm_cell_768/Sigmoid:y:0&while/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/add_1AddV2while/lstm_cell_768/mul:z:0while/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_2Sigmoid"while/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_768/Relu_1Reluwhile/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_2Mul!while/lstm_cell_768/Sigmoid_2:y:0(while/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_768/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_768/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_768/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_768/BiasAdd/ReadVariableOp*^while/lstm_cell_768/MatMul/ReadVariableOp,^while/lstm_cell_768/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_768_biasadd_readvariableop_resource5while_lstm_cell_768_biasadd_readvariableop_resource_0"n
4while_lstm_cell_768_matmul_1_readvariableop_resource6while_lstm_cell_768_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_768_matmul_readvariableop_resource4while_lstm_cell_768_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_768/BiasAdd/ReadVariableOp*while/lstm_cell_768/BiasAdd/ReadVariableOp2V
)while/lstm_cell_768/MatMul/ReadVariableOp)while/lstm_cell_768/MatMul/ReadVariableOp2Z
+while/lstm_cell_768/MatMul_1/ReadVariableOp+while/lstm_cell_768/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4660887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_769_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_769_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_769_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_769_matmul_readvariableop_resource:	d?G
4while_lstm_cell_769_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_769_biasadd_readvariableop_resource:	???*while/lstm_cell_769/BiasAdd/ReadVariableOp?)while/lstm_cell_769/MatMul/ReadVariableOp?+while/lstm_cell_769/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_769/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_769_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_769/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_769_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_769/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_769/addAddV2$while/lstm_cell_769/MatMul:product:0&while/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_769_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_769/BiasAddBiasAddwhile/lstm_cell_769/add:z:02while/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_769/splitSplit,while/lstm_cell_769/split/split_dim:output:0$while/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_769/SigmoidSigmoid"while/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_1Sigmoid"while/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mulMul!while/lstm_cell_769/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_769/ReluRelu"while/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_1Mulwhile/lstm_cell_769/Sigmoid:y:0&while/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/add_1AddV2while/lstm_cell_769/mul:z:0while/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_2Sigmoid"while/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_769/Relu_1Reluwhile/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_2Mul!while/lstm_cell_769/Sigmoid_2:y:0(while/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_769/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_769/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_769/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_769/BiasAdd/ReadVariableOp*^while/lstm_cell_769/MatMul/ReadVariableOp,^while/lstm_cell_769/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_769_biasadd_readvariableop_resource5while_lstm_cell_769_biasadd_readvariableop_resource_0"n
4while_lstm_cell_769_matmul_1_readvariableop_resource6while_lstm_cell_769_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_769_matmul_readvariableop_resource4while_lstm_cell_769_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_769/BiasAdd/ReadVariableOp*while/lstm_cell_769/BiasAdd/ReadVariableOp2V
)while/lstm_cell_769/MatMul/ReadVariableOp)while/lstm_cell_769/MatMul/ReadVariableOp2Z
+while/lstm_cell_769/MatMul_1/ReadVariableOp+while/lstm_cell_769/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4657192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4657192___redundant_placeholder05
1while_while_cond_4657192___redundant_placeholder15
1while_while_cond_4657192___redundant_placeholder25
1while_while_cond_4657192___redundant_placeholder3
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
while_body_4657543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_770_4657567_0:2(/
while_lstm_cell_770_4657569_0:
(+
while_lstm_cell_770_4657571_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_770_4657567:2(-
while_lstm_cell_770_4657569:
()
while_lstm_cell_770_4657571:(??+while/lstm_cell_770/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_770/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_770_4657567_0while_lstm_cell_770_4657569_0while_lstm_cell_770_4657571_0*
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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4657484?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_770/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_770/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_770/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_770/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_770_4657567while_lstm_cell_770_4657567_0"<
while_lstm_cell_770_4657569while_lstm_cell_770_4657569_0"<
while_lstm_cell_770_4657571while_lstm_cell_770_4657571_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_770/StatefulPartitionedCall+while/lstm_cell_770/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_896_layer_call_fn_4661015

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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4658286o
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
"__inference__wrapped_model_4656571
lstm_894_inputW
Dsequential_298_lstm_894_lstm_cell_768_matmul_readvariableop_resource:	?Y
Fsequential_298_lstm_894_lstm_cell_768_matmul_1_readvariableop_resource:	d?T
Esequential_298_lstm_894_lstm_cell_768_biasadd_readvariableop_resource:	?W
Dsequential_298_lstm_895_lstm_cell_769_matmul_readvariableop_resource:	d?Y
Fsequential_298_lstm_895_lstm_cell_769_matmul_1_readvariableop_resource:	2?T
Esequential_298_lstm_895_lstm_cell_769_biasadd_readvariableop_resource:	?V
Dsequential_298_lstm_896_lstm_cell_770_matmul_readvariableop_resource:2(X
Fsequential_298_lstm_896_lstm_cell_770_matmul_1_readvariableop_resource:
(S
Esequential_298_lstm_896_lstm_cell_770_biasadd_readvariableop_resource:(I
7sequential_298_dense_298_matmul_readvariableop_resource:
F
8sequential_298_dense_298_biasadd_readvariableop_resource:
identity??/sequential_298/dense_298/BiasAdd/ReadVariableOp?.sequential_298/dense_298/MatMul/ReadVariableOp?<sequential_298/lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp?;sequential_298/lstm_894/lstm_cell_768/MatMul/ReadVariableOp?=sequential_298/lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp?sequential_298/lstm_894/while?<sequential_298/lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp?;sequential_298/lstm_895/lstm_cell_769/MatMul/ReadVariableOp?=sequential_298/lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp?sequential_298/lstm_895/while?<sequential_298/lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp?;sequential_298/lstm_896/lstm_cell_770/MatMul/ReadVariableOp?=sequential_298/lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp?sequential_298/lstm_896/while[
sequential_298/lstm_894/ShapeShapelstm_894_input*
T0*
_output_shapes
:u
+sequential_298/lstm_894/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_298/lstm_894/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_298/lstm_894/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_298/lstm_894/strided_sliceStridedSlice&sequential_298/lstm_894/Shape:output:04sequential_298/lstm_894/strided_slice/stack:output:06sequential_298/lstm_894/strided_slice/stack_1:output:06sequential_298/lstm_894/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_298/lstm_894/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_298/lstm_894/zeros/packedPack.sequential_298/lstm_894/strided_slice:output:0/sequential_298/lstm_894/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_298/lstm_894/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_298/lstm_894/zerosFill-sequential_298/lstm_894/zeros/packed:output:0,sequential_298/lstm_894/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_298/lstm_894/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_298/lstm_894/zeros_1/packedPack.sequential_298/lstm_894/strided_slice:output:01sequential_298/lstm_894/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_298/lstm_894/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_298/lstm_894/zeros_1Fill/sequential_298/lstm_894/zeros_1/packed:output:0.sequential_298/lstm_894/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_298/lstm_894/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_298/lstm_894/transpose	Transposelstm_894_input/sequential_298/lstm_894/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_298/lstm_894/Shape_1Shape%sequential_298/lstm_894/transpose:y:0*
T0*
_output_shapes
:w
-sequential_298/lstm_894/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_298/lstm_894/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_298/lstm_894/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_298/lstm_894/strided_slice_1StridedSlice(sequential_298/lstm_894/Shape_1:output:06sequential_298/lstm_894/strided_slice_1/stack:output:08sequential_298/lstm_894/strided_slice_1/stack_1:output:08sequential_298/lstm_894/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_298/lstm_894/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_298/lstm_894/TensorArrayV2TensorListReserve<sequential_298/lstm_894/TensorArrayV2/element_shape:output:00sequential_298/lstm_894/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_298/lstm_894/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_298/lstm_894/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_298/lstm_894/transpose:y:0Vsequential_298/lstm_894/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_298/lstm_894/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_298/lstm_894/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_298/lstm_894/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_298/lstm_894/strided_slice_2StridedSlice%sequential_298/lstm_894/transpose:y:06sequential_298/lstm_894/strided_slice_2/stack:output:08sequential_298/lstm_894/strided_slice_2/stack_1:output:08sequential_298/lstm_894/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_298/lstm_894/lstm_cell_768/MatMul/ReadVariableOpReadVariableOpDsequential_298_lstm_894_lstm_cell_768_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_298/lstm_894/lstm_cell_768/MatMulMatMul0sequential_298/lstm_894/strided_slice_2:output:0Csequential_298/lstm_894/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_298/lstm_894/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOpFsequential_298_lstm_894_lstm_cell_768_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_298/lstm_894/lstm_cell_768/MatMul_1MatMul&sequential_298/lstm_894/zeros:output:0Esequential_298/lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_298/lstm_894/lstm_cell_768/addAddV26sequential_298/lstm_894/lstm_cell_768/MatMul:product:08sequential_298/lstm_894/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_298/lstm_894/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOpEsequential_298_lstm_894_lstm_cell_768_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_298/lstm_894/lstm_cell_768/BiasAddBiasAdd-sequential_298/lstm_894/lstm_cell_768/add:z:0Dsequential_298/lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_298/lstm_894/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_298/lstm_894/lstm_cell_768/splitSplit>sequential_298/lstm_894/lstm_cell_768/split/split_dim:output:06sequential_298/lstm_894/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_298/lstm_894/lstm_cell_768/SigmoidSigmoid4sequential_298/lstm_894/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_298/lstm_894/lstm_cell_768/Sigmoid_1Sigmoid4sequential_298/lstm_894/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_298/lstm_894/lstm_cell_768/mulMul3sequential_298/lstm_894/lstm_cell_768/Sigmoid_1:y:0(sequential_298/lstm_894/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_298/lstm_894/lstm_cell_768/ReluRelu4sequential_298/lstm_894/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_298/lstm_894/lstm_cell_768/mul_1Mul1sequential_298/lstm_894/lstm_cell_768/Sigmoid:y:08sequential_298/lstm_894/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_298/lstm_894/lstm_cell_768/add_1AddV2-sequential_298/lstm_894/lstm_cell_768/mul:z:0/sequential_298/lstm_894/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_298/lstm_894/lstm_cell_768/Sigmoid_2Sigmoid4sequential_298/lstm_894/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_298/lstm_894/lstm_cell_768/Relu_1Relu/sequential_298/lstm_894/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_298/lstm_894/lstm_cell_768/mul_2Mul3sequential_298/lstm_894/lstm_cell_768/Sigmoid_2:y:0:sequential_298/lstm_894/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_298/lstm_894/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_298/lstm_894/TensorArrayV2_1TensorListReserve>sequential_298/lstm_894/TensorArrayV2_1/element_shape:output:00sequential_298/lstm_894/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_298/lstm_894/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_298/lstm_894/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_298/lstm_894/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_298/lstm_894/whileWhile3sequential_298/lstm_894/while/loop_counter:output:09sequential_298/lstm_894/while/maximum_iterations:output:0%sequential_298/lstm_894/time:output:00sequential_298/lstm_894/TensorArrayV2_1:handle:0&sequential_298/lstm_894/zeros:output:0(sequential_298/lstm_894/zeros_1:output:00sequential_298/lstm_894/strided_slice_1:output:0Osequential_298/lstm_894/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_298_lstm_894_lstm_cell_768_matmul_readvariableop_resourceFsequential_298_lstm_894_lstm_cell_768_matmul_1_readvariableop_resourceEsequential_298_lstm_894_lstm_cell_768_biasadd_readvariableop_resource*
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
*sequential_298_lstm_894_while_body_4656203*6
cond.R,
*sequential_298_lstm_894_while_cond_4656202*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_298/lstm_894/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_298/lstm_894/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_298/lstm_894/while:output:3Qsequential_298/lstm_894/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_298/lstm_894/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_298/lstm_894/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_298/lstm_894/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_298/lstm_894/strided_slice_3StridedSliceCsequential_298/lstm_894/TensorArrayV2Stack/TensorListStack:tensor:06sequential_298/lstm_894/strided_slice_3/stack:output:08sequential_298/lstm_894/strided_slice_3/stack_1:output:08sequential_298/lstm_894/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_298/lstm_894/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_298/lstm_894/transpose_1	TransposeCsequential_298/lstm_894/TensorArrayV2Stack/TensorListStack:tensor:01sequential_298/lstm_894/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_298/lstm_894/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_298/lstm_895/ShapeShape'sequential_298/lstm_894/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_298/lstm_895/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_298/lstm_895/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_298/lstm_895/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_298/lstm_895/strided_sliceStridedSlice&sequential_298/lstm_895/Shape:output:04sequential_298/lstm_895/strided_slice/stack:output:06sequential_298/lstm_895/strided_slice/stack_1:output:06sequential_298/lstm_895/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_298/lstm_895/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_298/lstm_895/zeros/packedPack.sequential_298/lstm_895/strided_slice:output:0/sequential_298/lstm_895/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_298/lstm_895/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_298/lstm_895/zerosFill-sequential_298/lstm_895/zeros/packed:output:0,sequential_298/lstm_895/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_298/lstm_895/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_298/lstm_895/zeros_1/packedPack.sequential_298/lstm_895/strided_slice:output:01sequential_298/lstm_895/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_298/lstm_895/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_298/lstm_895/zeros_1Fill/sequential_298/lstm_895/zeros_1/packed:output:0.sequential_298/lstm_895/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_298/lstm_895/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_298/lstm_895/transpose	Transpose'sequential_298/lstm_894/transpose_1:y:0/sequential_298/lstm_895/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_298/lstm_895/Shape_1Shape%sequential_298/lstm_895/transpose:y:0*
T0*
_output_shapes
:w
-sequential_298/lstm_895/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_298/lstm_895/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_298/lstm_895/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_298/lstm_895/strided_slice_1StridedSlice(sequential_298/lstm_895/Shape_1:output:06sequential_298/lstm_895/strided_slice_1/stack:output:08sequential_298/lstm_895/strided_slice_1/stack_1:output:08sequential_298/lstm_895/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_298/lstm_895/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_298/lstm_895/TensorArrayV2TensorListReserve<sequential_298/lstm_895/TensorArrayV2/element_shape:output:00sequential_298/lstm_895/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_298/lstm_895/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_298/lstm_895/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_298/lstm_895/transpose:y:0Vsequential_298/lstm_895/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_298/lstm_895/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_298/lstm_895/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_298/lstm_895/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_298/lstm_895/strided_slice_2StridedSlice%sequential_298/lstm_895/transpose:y:06sequential_298/lstm_895/strided_slice_2/stack:output:08sequential_298/lstm_895/strided_slice_2/stack_1:output:08sequential_298/lstm_895/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_298/lstm_895/lstm_cell_769/MatMul/ReadVariableOpReadVariableOpDsequential_298_lstm_895_lstm_cell_769_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_298/lstm_895/lstm_cell_769/MatMulMatMul0sequential_298/lstm_895/strided_slice_2:output:0Csequential_298/lstm_895/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_298/lstm_895/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOpFsequential_298_lstm_895_lstm_cell_769_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_298/lstm_895/lstm_cell_769/MatMul_1MatMul&sequential_298/lstm_895/zeros:output:0Esequential_298/lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_298/lstm_895/lstm_cell_769/addAddV26sequential_298/lstm_895/lstm_cell_769/MatMul:product:08sequential_298/lstm_895/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_298/lstm_895/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOpEsequential_298_lstm_895_lstm_cell_769_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_298/lstm_895/lstm_cell_769/BiasAddBiasAdd-sequential_298/lstm_895/lstm_cell_769/add:z:0Dsequential_298/lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_298/lstm_895/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_298/lstm_895/lstm_cell_769/splitSplit>sequential_298/lstm_895/lstm_cell_769/split/split_dim:output:06sequential_298/lstm_895/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_298/lstm_895/lstm_cell_769/SigmoidSigmoid4sequential_298/lstm_895/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_298/lstm_895/lstm_cell_769/Sigmoid_1Sigmoid4sequential_298/lstm_895/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_298/lstm_895/lstm_cell_769/mulMul3sequential_298/lstm_895/lstm_cell_769/Sigmoid_1:y:0(sequential_298/lstm_895/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_298/lstm_895/lstm_cell_769/ReluRelu4sequential_298/lstm_895/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_298/lstm_895/lstm_cell_769/mul_1Mul1sequential_298/lstm_895/lstm_cell_769/Sigmoid:y:08sequential_298/lstm_895/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_298/lstm_895/lstm_cell_769/add_1AddV2-sequential_298/lstm_895/lstm_cell_769/mul:z:0/sequential_298/lstm_895/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_298/lstm_895/lstm_cell_769/Sigmoid_2Sigmoid4sequential_298/lstm_895/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_298/lstm_895/lstm_cell_769/Relu_1Relu/sequential_298/lstm_895/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_298/lstm_895/lstm_cell_769/mul_2Mul3sequential_298/lstm_895/lstm_cell_769/Sigmoid_2:y:0:sequential_298/lstm_895/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_298/lstm_895/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_298/lstm_895/TensorArrayV2_1TensorListReserve>sequential_298/lstm_895/TensorArrayV2_1/element_shape:output:00sequential_298/lstm_895/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_298/lstm_895/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_298/lstm_895/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_298/lstm_895/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_298/lstm_895/whileWhile3sequential_298/lstm_895/while/loop_counter:output:09sequential_298/lstm_895/while/maximum_iterations:output:0%sequential_298/lstm_895/time:output:00sequential_298/lstm_895/TensorArrayV2_1:handle:0&sequential_298/lstm_895/zeros:output:0(sequential_298/lstm_895/zeros_1:output:00sequential_298/lstm_895/strided_slice_1:output:0Osequential_298/lstm_895/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_298_lstm_895_lstm_cell_769_matmul_readvariableop_resourceFsequential_298_lstm_895_lstm_cell_769_matmul_1_readvariableop_resourceEsequential_298_lstm_895_lstm_cell_769_biasadd_readvariableop_resource*
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
*sequential_298_lstm_895_while_body_4656342*6
cond.R,
*sequential_298_lstm_895_while_cond_4656341*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_298/lstm_895/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_298/lstm_895/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_298/lstm_895/while:output:3Qsequential_298/lstm_895/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_298/lstm_895/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_298/lstm_895/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_298/lstm_895/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_298/lstm_895/strided_slice_3StridedSliceCsequential_298/lstm_895/TensorArrayV2Stack/TensorListStack:tensor:06sequential_298/lstm_895/strided_slice_3/stack:output:08sequential_298/lstm_895/strided_slice_3/stack_1:output:08sequential_298/lstm_895/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_298/lstm_895/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_298/lstm_895/transpose_1	TransposeCsequential_298/lstm_895/TensorArrayV2Stack/TensorListStack:tensor:01sequential_298/lstm_895/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_298/lstm_895/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_298/lstm_896/ShapeShape'sequential_298/lstm_895/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_298/lstm_896/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_298/lstm_896/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_298/lstm_896/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_298/lstm_896/strided_sliceStridedSlice&sequential_298/lstm_896/Shape:output:04sequential_298/lstm_896/strided_slice/stack:output:06sequential_298/lstm_896/strided_slice/stack_1:output:06sequential_298/lstm_896/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_298/lstm_896/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_298/lstm_896/zeros/packedPack.sequential_298/lstm_896/strided_slice:output:0/sequential_298/lstm_896/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_298/lstm_896/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_298/lstm_896/zerosFill-sequential_298/lstm_896/zeros/packed:output:0,sequential_298/lstm_896/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_298/lstm_896/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_298/lstm_896/zeros_1/packedPack.sequential_298/lstm_896/strided_slice:output:01sequential_298/lstm_896/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_298/lstm_896/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_298/lstm_896/zeros_1Fill/sequential_298/lstm_896/zeros_1/packed:output:0.sequential_298/lstm_896/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_298/lstm_896/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_298/lstm_896/transpose	Transpose'sequential_298/lstm_895/transpose_1:y:0/sequential_298/lstm_896/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_298/lstm_896/Shape_1Shape%sequential_298/lstm_896/transpose:y:0*
T0*
_output_shapes
:w
-sequential_298/lstm_896/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_298/lstm_896/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_298/lstm_896/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_298/lstm_896/strided_slice_1StridedSlice(sequential_298/lstm_896/Shape_1:output:06sequential_298/lstm_896/strided_slice_1/stack:output:08sequential_298/lstm_896/strided_slice_1/stack_1:output:08sequential_298/lstm_896/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_298/lstm_896/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_298/lstm_896/TensorArrayV2TensorListReserve<sequential_298/lstm_896/TensorArrayV2/element_shape:output:00sequential_298/lstm_896/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_298/lstm_896/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_298/lstm_896/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_298/lstm_896/transpose:y:0Vsequential_298/lstm_896/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_298/lstm_896/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_298/lstm_896/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_298/lstm_896/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_298/lstm_896/strided_slice_2StridedSlice%sequential_298/lstm_896/transpose:y:06sequential_298/lstm_896/strided_slice_2/stack:output:08sequential_298/lstm_896/strided_slice_2/stack_1:output:08sequential_298/lstm_896/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_298/lstm_896/lstm_cell_770/MatMul/ReadVariableOpReadVariableOpDsequential_298_lstm_896_lstm_cell_770_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_298/lstm_896/lstm_cell_770/MatMulMatMul0sequential_298/lstm_896/strided_slice_2:output:0Csequential_298/lstm_896/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_298/lstm_896/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOpFsequential_298_lstm_896_lstm_cell_770_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_298/lstm_896/lstm_cell_770/MatMul_1MatMul&sequential_298/lstm_896/zeros:output:0Esequential_298/lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_298/lstm_896/lstm_cell_770/addAddV26sequential_298/lstm_896/lstm_cell_770/MatMul:product:08sequential_298/lstm_896/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_298/lstm_896/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOpEsequential_298_lstm_896_lstm_cell_770_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_298/lstm_896/lstm_cell_770/BiasAddBiasAdd-sequential_298/lstm_896/lstm_cell_770/add:z:0Dsequential_298/lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_298/lstm_896/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_298/lstm_896/lstm_cell_770/splitSplit>sequential_298/lstm_896/lstm_cell_770/split/split_dim:output:06sequential_298/lstm_896/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_298/lstm_896/lstm_cell_770/SigmoidSigmoid4sequential_298/lstm_896/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_298/lstm_896/lstm_cell_770/Sigmoid_1Sigmoid4sequential_298/lstm_896/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_298/lstm_896/lstm_cell_770/mulMul3sequential_298/lstm_896/lstm_cell_770/Sigmoid_1:y:0(sequential_298/lstm_896/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_298/lstm_896/lstm_cell_770/ReluRelu4sequential_298/lstm_896/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_298/lstm_896/lstm_cell_770/mul_1Mul1sequential_298/lstm_896/lstm_cell_770/Sigmoid:y:08sequential_298/lstm_896/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_298/lstm_896/lstm_cell_770/add_1AddV2-sequential_298/lstm_896/lstm_cell_770/mul:z:0/sequential_298/lstm_896/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_298/lstm_896/lstm_cell_770/Sigmoid_2Sigmoid4sequential_298/lstm_896/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_298/lstm_896/lstm_cell_770/Relu_1Relu/sequential_298/lstm_896/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_298/lstm_896/lstm_cell_770/mul_2Mul3sequential_298/lstm_896/lstm_cell_770/Sigmoid_2:y:0:sequential_298/lstm_896/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_298/lstm_896/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_298/lstm_896/TensorArrayV2_1TensorListReserve>sequential_298/lstm_896/TensorArrayV2_1/element_shape:output:00sequential_298/lstm_896/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_298/lstm_896/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_298/lstm_896/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_298/lstm_896/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_298/lstm_896/whileWhile3sequential_298/lstm_896/while/loop_counter:output:09sequential_298/lstm_896/while/maximum_iterations:output:0%sequential_298/lstm_896/time:output:00sequential_298/lstm_896/TensorArrayV2_1:handle:0&sequential_298/lstm_896/zeros:output:0(sequential_298/lstm_896/zeros_1:output:00sequential_298/lstm_896/strided_slice_1:output:0Osequential_298/lstm_896/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_298_lstm_896_lstm_cell_770_matmul_readvariableop_resourceFsequential_298_lstm_896_lstm_cell_770_matmul_1_readvariableop_resourceEsequential_298_lstm_896_lstm_cell_770_biasadd_readvariableop_resource*
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
*sequential_298_lstm_896_while_body_4656481*6
cond.R,
*sequential_298_lstm_896_while_cond_4656480*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_298/lstm_896/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_298/lstm_896/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_298/lstm_896/while:output:3Qsequential_298/lstm_896/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_298/lstm_896/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_298/lstm_896/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_298/lstm_896/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_298/lstm_896/strided_slice_3StridedSliceCsequential_298/lstm_896/TensorArrayV2Stack/TensorListStack:tensor:06sequential_298/lstm_896/strided_slice_3/stack:output:08sequential_298/lstm_896/strided_slice_3/stack_1:output:08sequential_298/lstm_896/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_298/lstm_896/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_298/lstm_896/transpose_1	TransposeCsequential_298/lstm_896/TensorArrayV2Stack/TensorListStack:tensor:01sequential_298/lstm_896/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_298/lstm_896/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_298/dense_298/MatMul/ReadVariableOpReadVariableOp7sequential_298_dense_298_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_298/dense_298/MatMulMatMul0sequential_298/lstm_896/strided_slice_3:output:06sequential_298/dense_298/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_298/dense_298/BiasAdd/ReadVariableOpReadVariableOp8sequential_298_dense_298_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_298/dense_298/BiasAddBiasAdd)sequential_298/dense_298/MatMul:product:07sequential_298/dense_298/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_298/dense_298/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_298/dense_298/BiasAdd/ReadVariableOp/^sequential_298/dense_298/MatMul/ReadVariableOp=^sequential_298/lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp<^sequential_298/lstm_894/lstm_cell_768/MatMul/ReadVariableOp>^sequential_298/lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp^sequential_298/lstm_894/while=^sequential_298/lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp<^sequential_298/lstm_895/lstm_cell_769/MatMul/ReadVariableOp>^sequential_298/lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp^sequential_298/lstm_895/while=^sequential_298/lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp<^sequential_298/lstm_896/lstm_cell_770/MatMul/ReadVariableOp>^sequential_298/lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp^sequential_298/lstm_896/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_298/dense_298/BiasAdd/ReadVariableOp/sequential_298/dense_298/BiasAdd/ReadVariableOp2`
.sequential_298/dense_298/MatMul/ReadVariableOp.sequential_298/dense_298/MatMul/ReadVariableOp2|
<sequential_298/lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp<sequential_298/lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp2z
;sequential_298/lstm_894/lstm_cell_768/MatMul/ReadVariableOp;sequential_298/lstm_894/lstm_cell_768/MatMul/ReadVariableOp2~
=sequential_298/lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp=sequential_298/lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp2>
sequential_298/lstm_894/whilesequential_298/lstm_894/while2|
<sequential_298/lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp<sequential_298/lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp2z
;sequential_298/lstm_895/lstm_cell_769/MatMul/ReadVariableOp;sequential_298/lstm_895/lstm_cell_769/MatMul/ReadVariableOp2~
=sequential_298/lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp=sequential_298/lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp2>
sequential_298/lstm_895/whilesequential_298/lstm_895/while2|
<sequential_298/lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp<sequential_298/lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp2z
;sequential_298/lstm_896/lstm_cell_770/MatMul/ReadVariableOp;sequential_298/lstm_896/lstm_cell_770/MatMul/ReadVariableOp2~
=sequential_298/lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp=sequential_298/lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp2>
sequential_298/lstm_896/whilesequential_298/lstm_896/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_894_input
?#
?
while_body_4657352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_770_4657376_0:2(/
while_lstm_cell_770_4657378_0:
(+
while_lstm_cell_770_4657380_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_770_4657376:2(-
while_lstm_cell_770_4657378:
()
while_lstm_cell_770_4657380:(??+while/lstm_cell_770/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_770/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_770_4657376_0while_lstm_cell_770_4657378_0while_lstm_cell_770_4657380_0*
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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4657338?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_770/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_770/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_770/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_770/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_770_4657376while_lstm_cell_770_4657376_0"<
while_lstm_cell_770_4657378while_lstm_cell_770_4657378_0"<
while_lstm_cell_770_4657380while_lstm_cell_770_4657380_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_770/StatefulPartitionedCall+while/lstm_cell_770/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_896_while_body_4659649.
*lstm_896_while_lstm_896_while_loop_counter4
0lstm_896_while_lstm_896_while_maximum_iterations
lstm_896_while_placeholder 
lstm_896_while_placeholder_1 
lstm_896_while_placeholder_2 
lstm_896_while_placeholder_3-
)lstm_896_while_lstm_896_strided_slice_1_0i
elstm_896_while_tensorarrayv2read_tensorlistgetitem_lstm_896_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_896_while_lstm_cell_770_matmul_readvariableop_resource_0:2(Q
?lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource_0:
(L
>lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource_0:(
lstm_896_while_identity
lstm_896_while_identity_1
lstm_896_while_identity_2
lstm_896_while_identity_3
lstm_896_while_identity_4
lstm_896_while_identity_5+
'lstm_896_while_lstm_896_strided_slice_1g
clstm_896_while_tensorarrayv2read_tensorlistgetitem_lstm_896_tensorarrayunstack_tensorlistfromtensorM
;lstm_896_while_lstm_cell_770_matmul_readvariableop_resource:2(O
=lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource:
(J
<lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource:(??3lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp?2lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp?4lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp?
@lstm_896/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_896/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_896_while_tensorarrayv2read_tensorlistgetitem_lstm_896_tensorarrayunstack_tensorlistfromtensor_0lstm_896_while_placeholderIlstm_896/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_896/while/lstm_cell_770/MatMul/ReadVariableOpReadVariableOp=lstm_896_while_lstm_cell_770_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_896/while/lstm_cell_770/MatMulMatMul9lstm_896/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp?lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_896/while/lstm_cell_770/MatMul_1MatMullstm_896_while_placeholder_2<lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_896/while/lstm_cell_770/addAddV2-lstm_896/while/lstm_cell_770/MatMul:product:0/lstm_896/while/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp>lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_896/while/lstm_cell_770/BiasAddBiasAdd$lstm_896/while/lstm_cell_770/add:z:0;lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_896/while/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_896/while/lstm_cell_770/splitSplit5lstm_896/while/lstm_cell_770/split/split_dim:output:0-lstm_896/while/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_896/while/lstm_cell_770/SigmoidSigmoid+lstm_896/while/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_896/while/lstm_cell_770/Sigmoid_1Sigmoid+lstm_896/while/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_896/while/lstm_cell_770/mulMul*lstm_896/while/lstm_cell_770/Sigmoid_1:y:0lstm_896_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_896/while/lstm_cell_770/ReluRelu+lstm_896/while/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_896/while/lstm_cell_770/mul_1Mul(lstm_896/while/lstm_cell_770/Sigmoid:y:0/lstm_896/while/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_896/while/lstm_cell_770/add_1AddV2$lstm_896/while/lstm_cell_770/mul:z:0&lstm_896/while/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_896/while/lstm_cell_770/Sigmoid_2Sigmoid+lstm_896/while/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_896/while/lstm_cell_770/Relu_1Relu&lstm_896/while/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_896/while/lstm_cell_770/mul_2Mul*lstm_896/while/lstm_cell_770/Sigmoid_2:y:01lstm_896/while/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_896/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_896_while_placeholder_1lstm_896_while_placeholder&lstm_896/while/lstm_cell_770/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_896/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_896/while/addAddV2lstm_896_while_placeholderlstm_896/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_896/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_896/while/add_1AddV2*lstm_896_while_lstm_896_while_loop_counterlstm_896/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_896/while/IdentityIdentitylstm_896/while/add_1:z:0^lstm_896/while/NoOp*
T0*
_output_shapes
: ?
lstm_896/while/Identity_1Identity0lstm_896_while_lstm_896_while_maximum_iterations^lstm_896/while/NoOp*
T0*
_output_shapes
: t
lstm_896/while/Identity_2Identitylstm_896/while/add:z:0^lstm_896/while/NoOp*
T0*
_output_shapes
: ?
lstm_896/while/Identity_3IdentityClstm_896/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_896/while/NoOp*
T0*
_output_shapes
: ?
lstm_896/while/Identity_4Identity&lstm_896/while/lstm_cell_770/mul_2:z:0^lstm_896/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_896/while/Identity_5Identity&lstm_896/while/lstm_cell_770/add_1:z:0^lstm_896/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_896/while/NoOpNoOp4^lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp3^lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp5^lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_896_while_identity lstm_896/while/Identity:output:0"?
lstm_896_while_identity_1"lstm_896/while/Identity_1:output:0"?
lstm_896_while_identity_2"lstm_896/while/Identity_2:output:0"?
lstm_896_while_identity_3"lstm_896/while/Identity_3:output:0"?
lstm_896_while_identity_4"lstm_896/while/Identity_4:output:0"?
lstm_896_while_identity_5"lstm_896/while/Identity_5:output:0"T
'lstm_896_while_lstm_896_strided_slice_1)lstm_896_while_lstm_896_strided_slice_1_0"~
<lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource>lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource_0"?
=lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource?lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource_0"|
;lstm_896_while_lstm_cell_770_matmul_readvariableop_resource=lstm_896_while_lstm_cell_770_matmul_readvariableop_resource_0"?
clstm_896_while_tensorarrayv2read_tensorlistgetitem_lstm_896_tensorarrayunstack_tensorlistfromtensorelstm_896_while_tensorarrayv2read_tensorlistgetitem_lstm_896_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp3lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp2h
2lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp2lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp2l
4lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp4lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4659841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4659841___redundant_placeholder05
1while_while_cond_4659841___redundant_placeholder15
1while_while_cond_4659841___redundant_placeholder25
1while_while_cond_4659841___redundant_placeholder3
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4656912

inputs(
lstm_cell_768_4656830:	?(
lstm_cell_768_4656832:	d?$
lstm_cell_768_4656834:	?
identity??%lstm_cell_768/StatefulPartitionedCall?while;
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
%lstm_cell_768/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_768_4656830lstm_cell_768_4656832lstm_cell_768_4656834*
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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4656784n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_768_4656830lstm_cell_768_4656832lstm_cell_768_4656834*
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
while_body_4656843*
condR
while_cond_4656842*K
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
NoOpNoOp&^lstm_cell_768/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_768/StatefulPartitionedCall%lstm_cell_768/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_896_layer_call_and_return_conditional_losses_4658286

inputs>
,lstm_cell_770_matmul_readvariableop_resource:2(@
.lstm_cell_770_matmul_1_readvariableop_resource:
(;
-lstm_cell_770_biasadd_readvariableop_resource:(
identity??$lstm_cell_770/BiasAdd/ReadVariableOp?#lstm_cell_770/MatMul/ReadVariableOp?%lstm_cell_770/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_770/MatMul/ReadVariableOpReadVariableOp,lstm_cell_770_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_770/MatMulMatMulstrided_slice_2:output:0+lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_770_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_770/MatMul_1MatMulzeros:output:0-lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_770/addAddV2lstm_cell_770/MatMul:product:0 lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_770_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_770/BiasAddBiasAddlstm_cell_770/add:z:0,lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_770/splitSplit&lstm_cell_770/split/split_dim:output:0lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_770/SigmoidSigmoidlstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_1Sigmoidlstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_770/mulMullstm_cell_770/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_770/ReluRelulstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_1Mullstm_cell_770/Sigmoid:y:0 lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_770/add_1AddV2lstm_cell_770/mul:z:0lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_2Sigmoidlstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_770/Relu_1Relulstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_2Mullstm_cell_770/Sigmoid_2:y:0"lstm_cell_770/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_770_matmul_readvariableop_resource.lstm_cell_770_matmul_1_readvariableop_resource-lstm_cell_770_biasadd_readvariableop_resource*
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
while_body_4658202*
condR
while_cond_4658201*K
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
NoOpNoOp%^lstm_cell_770/BiasAdd/ReadVariableOp$^lstm_cell_770/MatMul/ReadVariableOp&^lstm_cell_770/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_770/BiasAdd/ReadVariableOp$lstm_cell_770/BiasAdd/ReadVariableOp2J
#lstm_cell_770/MatMul/ReadVariableOp#lstm_cell_770/MatMul/ReadVariableOp2N
%lstm_cell_770/MatMul_1/ReadVariableOp%lstm_cell_770/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_298_lstm_895_while_body_4656342L
Hsequential_298_lstm_895_while_sequential_298_lstm_895_while_loop_counterR
Nsequential_298_lstm_895_while_sequential_298_lstm_895_while_maximum_iterations-
)sequential_298_lstm_895_while_placeholder/
+sequential_298_lstm_895_while_placeholder_1/
+sequential_298_lstm_895_while_placeholder_2/
+sequential_298_lstm_895_while_placeholder_3K
Gsequential_298_lstm_895_while_sequential_298_lstm_895_strided_slice_1_0?
?sequential_298_lstm_895_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_895_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_298_lstm_895_while_lstm_cell_769_matmul_readvariableop_resource_0:	d?a
Nsequential_298_lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource_0:	2?\
Msequential_298_lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource_0:	?*
&sequential_298_lstm_895_while_identity,
(sequential_298_lstm_895_while_identity_1,
(sequential_298_lstm_895_while_identity_2,
(sequential_298_lstm_895_while_identity_3,
(sequential_298_lstm_895_while_identity_4,
(sequential_298_lstm_895_while_identity_5I
Esequential_298_lstm_895_while_sequential_298_lstm_895_strided_slice_1?
?sequential_298_lstm_895_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_895_tensorarrayunstack_tensorlistfromtensor]
Jsequential_298_lstm_895_while_lstm_cell_769_matmul_readvariableop_resource:	d?_
Lsequential_298_lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource:	2?Z
Ksequential_298_lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource:	???Bsequential_298/lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp?Asequential_298/lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp?Csequential_298/lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp?
Osequential_298/lstm_895/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_298/lstm_895/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_298_lstm_895_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_895_tensorarrayunstack_tensorlistfromtensor_0)sequential_298_lstm_895_while_placeholderXsequential_298/lstm_895/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_298/lstm_895/while/lstm_cell_769/MatMul/ReadVariableOpReadVariableOpLsequential_298_lstm_895_while_lstm_cell_769_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_298/lstm_895/while/lstm_cell_769/MatMulMatMulHsequential_298/lstm_895/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_298/lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_298/lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOpNsequential_298_lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_298/lstm_895/while/lstm_cell_769/MatMul_1MatMul+sequential_298_lstm_895_while_placeholder_2Ksequential_298/lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_298/lstm_895/while/lstm_cell_769/addAddV2<sequential_298/lstm_895/while/lstm_cell_769/MatMul:product:0>sequential_298/lstm_895/while/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_298/lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOpMsequential_298_lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_298/lstm_895/while/lstm_cell_769/BiasAddBiasAdd3sequential_298/lstm_895/while/lstm_cell_769/add:z:0Jsequential_298/lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_298/lstm_895/while/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_298/lstm_895/while/lstm_cell_769/splitSplitDsequential_298/lstm_895/while/lstm_cell_769/split/split_dim:output:0<sequential_298/lstm_895/while/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_298/lstm_895/while/lstm_cell_769/SigmoidSigmoid:sequential_298/lstm_895/while/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_298/lstm_895/while/lstm_cell_769/Sigmoid_1Sigmoid:sequential_298/lstm_895/while/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_298/lstm_895/while/lstm_cell_769/mulMul9sequential_298/lstm_895/while/lstm_cell_769/Sigmoid_1:y:0+sequential_298_lstm_895_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_298/lstm_895/while/lstm_cell_769/ReluRelu:sequential_298/lstm_895/while/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_298/lstm_895/while/lstm_cell_769/mul_1Mul7sequential_298/lstm_895/while/lstm_cell_769/Sigmoid:y:0>sequential_298/lstm_895/while/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_298/lstm_895/while/lstm_cell_769/add_1AddV23sequential_298/lstm_895/while/lstm_cell_769/mul:z:05sequential_298/lstm_895/while/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_298/lstm_895/while/lstm_cell_769/Sigmoid_2Sigmoid:sequential_298/lstm_895/while/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_298/lstm_895/while/lstm_cell_769/Relu_1Relu5sequential_298/lstm_895/while/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_298/lstm_895/while/lstm_cell_769/mul_2Mul9sequential_298/lstm_895/while/lstm_cell_769/Sigmoid_2:y:0@sequential_298/lstm_895/while/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_298/lstm_895/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_298_lstm_895_while_placeholder_1)sequential_298_lstm_895_while_placeholder5sequential_298/lstm_895/while/lstm_cell_769/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_298/lstm_895/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_298/lstm_895/while/addAddV2)sequential_298_lstm_895_while_placeholder,sequential_298/lstm_895/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_298/lstm_895/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_298/lstm_895/while/add_1AddV2Hsequential_298_lstm_895_while_sequential_298_lstm_895_while_loop_counter.sequential_298/lstm_895/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_298/lstm_895/while/IdentityIdentity'sequential_298/lstm_895/while/add_1:z:0#^sequential_298/lstm_895/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_895/while/Identity_1IdentityNsequential_298_lstm_895_while_sequential_298_lstm_895_while_maximum_iterations#^sequential_298/lstm_895/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_895/while/Identity_2Identity%sequential_298/lstm_895/while/add:z:0#^sequential_298/lstm_895/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_895/while/Identity_3IdentityRsequential_298/lstm_895/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_298/lstm_895/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_895/while/Identity_4Identity5sequential_298/lstm_895/while/lstm_cell_769/mul_2:z:0#^sequential_298/lstm_895/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_298/lstm_895/while/Identity_5Identity5sequential_298/lstm_895/while/lstm_cell_769/add_1:z:0#^sequential_298/lstm_895/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_298/lstm_895/while/NoOpNoOpC^sequential_298/lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOpB^sequential_298/lstm_895/while/lstm_cell_769/MatMul/ReadVariableOpD^sequential_298/lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_298_lstm_895_while_identity/sequential_298/lstm_895/while/Identity:output:0"]
(sequential_298_lstm_895_while_identity_11sequential_298/lstm_895/while/Identity_1:output:0"]
(sequential_298_lstm_895_while_identity_21sequential_298/lstm_895/while/Identity_2:output:0"]
(sequential_298_lstm_895_while_identity_31sequential_298/lstm_895/while/Identity_3:output:0"]
(sequential_298_lstm_895_while_identity_41sequential_298/lstm_895/while/Identity_4:output:0"]
(sequential_298_lstm_895_while_identity_51sequential_298/lstm_895/while/Identity_5:output:0"?
Ksequential_298_lstm_895_while_lstm_cell_769_biasadd_readvariableop_resourceMsequential_298_lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource_0"?
Lsequential_298_lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resourceNsequential_298_lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource_0"?
Jsequential_298_lstm_895_while_lstm_cell_769_matmul_readvariableop_resourceLsequential_298_lstm_895_while_lstm_cell_769_matmul_readvariableop_resource_0"?
Esequential_298_lstm_895_while_sequential_298_lstm_895_strided_slice_1Gsequential_298_lstm_895_while_sequential_298_lstm_895_strided_slice_1_0"?
?sequential_298_lstm_895_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_895_tensorarrayunstack_tensorlistfromtensor?sequential_298_lstm_895_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_895_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_298/lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOpBsequential_298/lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp2?
Asequential_298/lstm_895/while/lstm_cell_769/MatMul/ReadVariableOpAsequential_298/lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp2?
Csequential_298/lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOpCsequential_298/lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4657001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4657001___redundant_placeholder05
1while_while_cond_4657001___redundant_placeholder15
1while_while_cond_4657001___redundant_placeholder25
1while_while_cond_4657001___redundant_placeholder3
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
while_cond_4660457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4660457___redundant_placeholder05
1while_while_cond_4660457___redundant_placeholder15
1while_while_cond_4660457___redundant_placeholder25
1while_while_cond_4660457___redundant_placeholder3
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
*sequential_298_lstm_896_while_body_4656481L
Hsequential_298_lstm_896_while_sequential_298_lstm_896_while_loop_counterR
Nsequential_298_lstm_896_while_sequential_298_lstm_896_while_maximum_iterations-
)sequential_298_lstm_896_while_placeholder/
+sequential_298_lstm_896_while_placeholder_1/
+sequential_298_lstm_896_while_placeholder_2/
+sequential_298_lstm_896_while_placeholder_3K
Gsequential_298_lstm_896_while_sequential_298_lstm_896_strided_slice_1_0?
?sequential_298_lstm_896_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_896_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_298_lstm_896_while_lstm_cell_770_matmul_readvariableop_resource_0:2(`
Nsequential_298_lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource_0:
([
Msequential_298_lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource_0:(*
&sequential_298_lstm_896_while_identity,
(sequential_298_lstm_896_while_identity_1,
(sequential_298_lstm_896_while_identity_2,
(sequential_298_lstm_896_while_identity_3,
(sequential_298_lstm_896_while_identity_4,
(sequential_298_lstm_896_while_identity_5I
Esequential_298_lstm_896_while_sequential_298_lstm_896_strided_slice_1?
?sequential_298_lstm_896_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_896_tensorarrayunstack_tensorlistfromtensor\
Jsequential_298_lstm_896_while_lstm_cell_770_matmul_readvariableop_resource:2(^
Lsequential_298_lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource:
(Y
Ksequential_298_lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource:(??Bsequential_298/lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp?Asequential_298/lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp?Csequential_298/lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp?
Osequential_298/lstm_896/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_298/lstm_896/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_298_lstm_896_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_896_tensorarrayunstack_tensorlistfromtensor_0)sequential_298_lstm_896_while_placeholderXsequential_298/lstm_896/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_298/lstm_896/while/lstm_cell_770/MatMul/ReadVariableOpReadVariableOpLsequential_298_lstm_896_while_lstm_cell_770_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_298/lstm_896/while/lstm_cell_770/MatMulMatMulHsequential_298/lstm_896/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_298/lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_298/lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOpNsequential_298_lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_298/lstm_896/while/lstm_cell_770/MatMul_1MatMul+sequential_298_lstm_896_while_placeholder_2Ksequential_298/lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_298/lstm_896/while/lstm_cell_770/addAddV2<sequential_298/lstm_896/while/lstm_cell_770/MatMul:product:0>sequential_298/lstm_896/while/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_298/lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOpMsequential_298_lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_298/lstm_896/while/lstm_cell_770/BiasAddBiasAdd3sequential_298/lstm_896/while/lstm_cell_770/add:z:0Jsequential_298/lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_298/lstm_896/while/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_298/lstm_896/while/lstm_cell_770/splitSplitDsequential_298/lstm_896/while/lstm_cell_770/split/split_dim:output:0<sequential_298/lstm_896/while/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_298/lstm_896/while/lstm_cell_770/SigmoidSigmoid:sequential_298/lstm_896/while/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_298/lstm_896/while/lstm_cell_770/Sigmoid_1Sigmoid:sequential_298/lstm_896/while/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_298/lstm_896/while/lstm_cell_770/mulMul9sequential_298/lstm_896/while/lstm_cell_770/Sigmoid_1:y:0+sequential_298_lstm_896_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_298/lstm_896/while/lstm_cell_770/ReluRelu:sequential_298/lstm_896/while/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_298/lstm_896/while/lstm_cell_770/mul_1Mul7sequential_298/lstm_896/while/lstm_cell_770/Sigmoid:y:0>sequential_298/lstm_896/while/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_298/lstm_896/while/lstm_cell_770/add_1AddV23sequential_298/lstm_896/while/lstm_cell_770/mul:z:05sequential_298/lstm_896/while/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_298/lstm_896/while/lstm_cell_770/Sigmoid_2Sigmoid:sequential_298/lstm_896/while/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_298/lstm_896/while/lstm_cell_770/Relu_1Relu5sequential_298/lstm_896/while/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_298/lstm_896/while/lstm_cell_770/mul_2Mul9sequential_298/lstm_896/while/lstm_cell_770/Sigmoid_2:y:0@sequential_298/lstm_896/while/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_298/lstm_896/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_298_lstm_896_while_placeholder_1)sequential_298_lstm_896_while_placeholder5sequential_298/lstm_896/while/lstm_cell_770/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_298/lstm_896/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_298/lstm_896/while/addAddV2)sequential_298_lstm_896_while_placeholder,sequential_298/lstm_896/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_298/lstm_896/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_298/lstm_896/while/add_1AddV2Hsequential_298_lstm_896_while_sequential_298_lstm_896_while_loop_counter.sequential_298/lstm_896/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_298/lstm_896/while/IdentityIdentity'sequential_298/lstm_896/while/add_1:z:0#^sequential_298/lstm_896/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_896/while/Identity_1IdentityNsequential_298_lstm_896_while_sequential_298_lstm_896_while_maximum_iterations#^sequential_298/lstm_896/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_896/while/Identity_2Identity%sequential_298/lstm_896/while/add:z:0#^sequential_298/lstm_896/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_896/while/Identity_3IdentityRsequential_298/lstm_896/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_298/lstm_896/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_896/while/Identity_4Identity5sequential_298/lstm_896/while/lstm_cell_770/mul_2:z:0#^sequential_298/lstm_896/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_298/lstm_896/while/Identity_5Identity5sequential_298/lstm_896/while/lstm_cell_770/add_1:z:0#^sequential_298/lstm_896/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_298/lstm_896/while/NoOpNoOpC^sequential_298/lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOpB^sequential_298/lstm_896/while/lstm_cell_770/MatMul/ReadVariableOpD^sequential_298/lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_298_lstm_896_while_identity/sequential_298/lstm_896/while/Identity:output:0"]
(sequential_298_lstm_896_while_identity_11sequential_298/lstm_896/while/Identity_1:output:0"]
(sequential_298_lstm_896_while_identity_21sequential_298/lstm_896/while/Identity_2:output:0"]
(sequential_298_lstm_896_while_identity_31sequential_298/lstm_896/while/Identity_3:output:0"]
(sequential_298_lstm_896_while_identity_41sequential_298/lstm_896/while/Identity_4:output:0"]
(sequential_298_lstm_896_while_identity_51sequential_298/lstm_896/while/Identity_5:output:0"?
Ksequential_298_lstm_896_while_lstm_cell_770_biasadd_readvariableop_resourceMsequential_298_lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource_0"?
Lsequential_298_lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resourceNsequential_298_lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource_0"?
Jsequential_298_lstm_896_while_lstm_cell_770_matmul_readvariableop_resourceLsequential_298_lstm_896_while_lstm_cell_770_matmul_readvariableop_resource_0"?
Esequential_298_lstm_896_while_sequential_298_lstm_896_strided_slice_1Gsequential_298_lstm_896_while_sequential_298_lstm_896_strided_slice_1_0"?
?sequential_298_lstm_896_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_896_tensorarrayunstack_tensorlistfromtensor?sequential_298_lstm_896_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_896_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_298/lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOpBsequential_298/lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp2?
Asequential_298/lstm_896/while/lstm_cell_770/MatMul/ReadVariableOpAsequential_298/lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp2?
Csequential_298/lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOpCsequential_298/lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_298_layer_call_fn_4658885

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
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658684o
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
?
*sequential_298_lstm_894_while_cond_4656202L
Hsequential_298_lstm_894_while_sequential_298_lstm_894_while_loop_counterR
Nsequential_298_lstm_894_while_sequential_298_lstm_894_while_maximum_iterations-
)sequential_298_lstm_894_while_placeholder/
+sequential_298_lstm_894_while_placeholder_1/
+sequential_298_lstm_894_while_placeholder_2/
+sequential_298_lstm_894_while_placeholder_3N
Jsequential_298_lstm_894_while_less_sequential_298_lstm_894_strided_slice_1e
asequential_298_lstm_894_while_sequential_298_lstm_894_while_cond_4656202___redundant_placeholder0e
asequential_298_lstm_894_while_sequential_298_lstm_894_while_cond_4656202___redundant_placeholder1e
asequential_298_lstm_894_while_sequential_298_lstm_894_while_cond_4656202___redundant_placeholder2e
asequential_298_lstm_894_while_sequential_298_lstm_894_while_cond_4656202___redundant_placeholder3*
&sequential_298_lstm_894_while_identity
?
"sequential_298/lstm_894/while/LessLess)sequential_298_lstm_894_while_placeholderJsequential_298_lstm_894_while_less_sequential_298_lstm_894_strided_slice_1*
T0*
_output_shapes
: {
&sequential_298/lstm_894/while/IdentityIdentity&sequential_298/lstm_894/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_298_lstm_894_while_identity/sequential_298/lstm_894/while/Identity:output:0*(
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
while_body_4659842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_768_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_768_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_768_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_768_matmul_readvariableop_resource:	?G
4while_lstm_cell_768_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_768_biasadd_readvariableop_resource:	???*while/lstm_cell_768/BiasAdd/ReadVariableOp?)while/lstm_cell_768/MatMul/ReadVariableOp?+while/lstm_cell_768/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_768/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_768_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_768/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_768_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_768/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_768/addAddV2$while/lstm_cell_768/MatMul:product:0&while/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_768_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_768/BiasAddBiasAddwhile/lstm_cell_768/add:z:02while/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_768/splitSplit,while/lstm_cell_768/split/split_dim:output:0$while/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_768/SigmoidSigmoid"while/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_1Sigmoid"while/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mulMul!while/lstm_cell_768/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_768/ReluRelu"while/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_1Mulwhile/lstm_cell_768/Sigmoid:y:0&while/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/add_1AddV2while/lstm_cell_768/mul:z:0while/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_2Sigmoid"while/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_768/Relu_1Reluwhile/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_2Mul!while/lstm_cell_768/Sigmoid_2:y:0(while/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_768/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_768/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_768/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_768/BiasAdd/ReadVariableOp*^while/lstm_cell_768/MatMul/ReadVariableOp,^while/lstm_cell_768/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_768_biasadd_readvariableop_resource5while_lstm_cell_768_biasadd_readvariableop_resource_0"n
4while_lstm_cell_768_matmul_1_readvariableop_resource6while_lstm_cell_768_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_768_matmul_readvariableop_resource4while_lstm_cell_768_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_768/BiasAdd/ReadVariableOp*while/lstm_cell_768/BiasAdd/ReadVariableOp2V
)while/lstm_cell_768/MatMul/ReadVariableOp)while/lstm_cell_768/MatMul/ReadVariableOp2Z
+while/lstm_cell_768/MatMul_1/ReadVariableOp+while/lstm_cell_768/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4661216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4661216___redundant_placeholder05
1while_while_cond_4661216___redundant_placeholder15
1while_while_cond_4661216___redundant_placeholder25
1while_while_cond_4661216___redundant_placeholder3
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
while_cond_4658531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4658531___redundant_placeholder05
1while_while_cond_4658531___redundant_placeholder15
1while_while_cond_4658531___redundant_placeholder25
1while_while_cond_4658531___redundant_placeholder3
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4660069
inputs_0?
,lstm_cell_768_matmul_readvariableop_resource:	?A
.lstm_cell_768_matmul_1_readvariableop_resource:	d?<
-lstm_cell_768_biasadd_readvariableop_resource:	?
identity??$lstm_cell_768/BiasAdd/ReadVariableOp?#lstm_cell_768/MatMul/ReadVariableOp?%lstm_cell_768/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_768/MatMul/ReadVariableOpReadVariableOp,lstm_cell_768_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_768/MatMulMatMulstrided_slice_2:output:0+lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_768_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_768/MatMul_1MatMulzeros:output:0-lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_768/addAddV2lstm_cell_768/MatMul:product:0 lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_768_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_768/BiasAddBiasAddlstm_cell_768/add:z:0,lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_768/splitSplit&lstm_cell_768/split/split_dim:output:0lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_768/SigmoidSigmoidlstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_1Sigmoidlstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_768/mulMullstm_cell_768/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_768/ReluRelulstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_1Mullstm_cell_768/Sigmoid:y:0 lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_768/add_1AddV2lstm_cell_768/mul:z:0lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_2Sigmoidlstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_768/Relu_1Relulstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_2Mullstm_cell_768/Sigmoid_2:y:0"lstm_cell_768/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_768_matmul_readvariableop_resource.lstm_cell_768_matmul_1_readvariableop_resource-lstm_cell_768_biasadd_readvariableop_resource*
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
while_body_4659985*
condR
while_cond_4659984*K
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
NoOpNoOp%^lstm_cell_768/BiasAdd/ReadVariableOp$^lstm_cell_768/MatMul/ReadVariableOp&^lstm_cell_768/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_768/BiasAdd/ReadVariableOp$lstm_cell_768/BiasAdd/ReadVariableOp2J
#lstm_cell_768/MatMul/ReadVariableOp#lstm_cell_768/MatMul/ReadVariableOp2N
%lstm_cell_768/MatMul_1/ReadVariableOp%lstm_cell_768/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4661074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_770_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_770_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_770_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_770_matmul_readvariableop_resource:2(F
4while_lstm_cell_770_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_770_biasadd_readvariableop_resource:(??*while/lstm_cell_770/BiasAdd/ReadVariableOp?)while/lstm_cell_770/MatMul/ReadVariableOp?+while/lstm_cell_770/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_770/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_770_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_770/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_770_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_770/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_770/addAddV2$while/lstm_cell_770/MatMul:product:0&while/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_770_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_770/BiasAddBiasAddwhile/lstm_cell_770/add:z:02while/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_770/splitSplit,while/lstm_cell_770/split/split_dim:output:0$while/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_770/SigmoidSigmoid"while/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_1Sigmoid"while/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mulMul!while/lstm_cell_770/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_770/ReluRelu"while/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_1Mulwhile/lstm_cell_770/Sigmoid:y:0&while/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/add_1AddV2while/lstm_cell_770/mul:z:0while/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_2Sigmoid"while/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_770/Relu_1Reluwhile/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_2Mul!while/lstm_cell_770/Sigmoid_2:y:0(while/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_770/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_770/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_770/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_770/BiasAdd/ReadVariableOp*^while/lstm_cell_770/MatMul/ReadVariableOp,^while/lstm_cell_770/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_770_biasadd_readvariableop_resource5while_lstm_cell_770_biasadd_readvariableop_resource_0"n
4while_lstm_cell_770_matmul_1_readvariableop_resource6while_lstm_cell_770_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_770_matmul_readvariableop_resource4while_lstm_cell_770_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_770/BiasAdd/ReadVariableOp*while/lstm_cell_770/BiasAdd/ReadVariableOp2V
)while/lstm_cell_770/MatMul/ReadVariableOp)while/lstm_cell_770/MatMul/ReadVariableOp2Z
+while/lstm_cell_770/MatMul_1/ReadVariableOp+while/lstm_cell_770/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4661217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_770_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_770_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_770_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_770_matmul_readvariableop_resource:2(F
4while_lstm_cell_770_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_770_biasadd_readvariableop_resource:(??*while/lstm_cell_770/BiasAdd/ReadVariableOp?)while/lstm_cell_770/MatMul/ReadVariableOp?+while/lstm_cell_770/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_770/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_770_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_770/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_770_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_770/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_770/addAddV2$while/lstm_cell_770/MatMul:product:0&while/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_770_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_770/BiasAddBiasAddwhile/lstm_cell_770/add:z:02while/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_770/splitSplit,while/lstm_cell_770/split/split_dim:output:0$while/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_770/SigmoidSigmoid"while/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_1Sigmoid"while/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mulMul!while/lstm_cell_770/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_770/ReluRelu"while/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_1Mulwhile/lstm_cell_770/Sigmoid:y:0&while/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/add_1AddV2while/lstm_cell_770/mul:z:0while/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_2Sigmoid"while/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_770/Relu_1Reluwhile/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_2Mul!while/lstm_cell_770/Sigmoid_2:y:0(while/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_770/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_770/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_770/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_770/BiasAdd/ReadVariableOp*^while/lstm_cell_770/MatMul/ReadVariableOp,^while/lstm_cell_770/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_770_biasadd_readvariableop_resource5while_lstm_cell_770_biasadd_readvariableop_resource_0"n
4while_lstm_cell_770_matmul_1_readvariableop_resource6while_lstm_cell_770_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_770_matmul_readvariableop_resource4while_lstm_cell_770_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_770/BiasAdd/ReadVariableOp*while/lstm_cell_770/BiasAdd/ReadVariableOp2V
)while/lstm_cell_770/MatMul/ReadVariableOp)while/lstm_cell_770/MatMul/ReadVariableOp2Z
+while/lstm_cell_770/MatMul_1/ReadVariableOp+while/lstm_cell_770/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4658366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4658366___redundant_placeholder05
1while_while_cond_4658366___redundant_placeholder15
1while_while_cond_4658366___redundant_placeholder25
1while_while_cond_4658366___redundant_placeholder3
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4658070

inputs>
,lstm_cell_770_matmul_readvariableop_resource:2(@
.lstm_cell_770_matmul_1_readvariableop_resource:
(;
-lstm_cell_770_biasadd_readvariableop_resource:(
identity??$lstm_cell_770/BiasAdd/ReadVariableOp?#lstm_cell_770/MatMul/ReadVariableOp?%lstm_cell_770/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_770/MatMul/ReadVariableOpReadVariableOp,lstm_cell_770_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_770/MatMulMatMulstrided_slice_2:output:0+lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_770_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_770/MatMul_1MatMulzeros:output:0-lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_770/addAddV2lstm_cell_770/MatMul:product:0 lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_770_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_770/BiasAddBiasAddlstm_cell_770/add:z:0,lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_770/splitSplit&lstm_cell_770/split/split_dim:output:0lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_770/SigmoidSigmoidlstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_1Sigmoidlstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_770/mulMullstm_cell_770/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_770/ReluRelulstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_1Mullstm_cell_770/Sigmoid:y:0 lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_770/add_1AddV2lstm_cell_770/mul:z:0lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_2Sigmoidlstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_770/Relu_1Relulstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_2Mullstm_cell_770/Sigmoid_2:y:0"lstm_cell_770/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_770_matmul_readvariableop_resource.lstm_cell_770_matmul_1_readvariableop_resource-lstm_cell_770_biasadd_readvariableop_resource*
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
while_body_4657986*
condR
while_cond_4657985*K
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
NoOpNoOp%^lstm_cell_770/BiasAdd/ReadVariableOp$^lstm_cell_770/MatMul/ReadVariableOp&^lstm_cell_770/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_770/BiasAdd/ReadVariableOp$lstm_cell_770/BiasAdd/ReadVariableOp2J
#lstm_cell_770/MatMul/ReadVariableOp#lstm_cell_770/MatMul/ReadVariableOp2N
%lstm_cell_770/MatMul_1/ReadVariableOp%lstm_cell_770/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4658201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4658201___redundant_placeholder05
1while_while_cond_4658201___redundant_placeholder15
1while_while_cond_4658201___redundant_placeholder25
1while_while_cond_4658201___redundant_placeholder3
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
lstm_894_while_cond_4659370.
*lstm_894_while_lstm_894_while_loop_counter4
0lstm_894_while_lstm_894_while_maximum_iterations
lstm_894_while_placeholder 
lstm_894_while_placeholder_1 
lstm_894_while_placeholder_2 
lstm_894_while_placeholder_30
,lstm_894_while_less_lstm_894_strided_slice_1G
Clstm_894_while_lstm_894_while_cond_4659370___redundant_placeholder0G
Clstm_894_while_lstm_894_while_cond_4659370___redundant_placeholder1G
Clstm_894_while_lstm_894_while_cond_4659370___redundant_placeholder2G
Clstm_894_while_lstm_894_while_cond_4659370___redundant_placeholder3
lstm_894_while_identity
?
lstm_894/while/LessLesslstm_894_while_placeholder,lstm_894_while_less_lstm_894_strided_slice_1*
T0*
_output_shapes
: ]
lstm_894/while/IdentityIdentitylstm_894/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_894_while_identity lstm_894/while/Identity:output:0*(
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
while_body_4657193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_769_4657217_0:	d?0
while_lstm_cell_769_4657219_0:	2?,
while_lstm_cell_769_4657221_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_769_4657217:	d?.
while_lstm_cell_769_4657219:	2?*
while_lstm_cell_769_4657221:	???+while/lstm_cell_769/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_769/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_769_4657217_0while_lstm_cell_769_4657219_0while_lstm_cell_769_4657221_0*
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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4657134?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_769/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_769/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_769/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_769/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_769_4657217while_lstm_cell_769_4657217_0"<
while_lstm_cell_769_4657219while_lstm_cell_769_4657219_0"<
while_lstm_cell_769_4657221while_lstm_cell_769_4657221_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_769/StatefulPartitionedCall+while/lstm_cell_769/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4660600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4660600___redundant_placeholder05
1while_while_cond_4660600___redundant_placeholder15
1while_while_cond_4660600___redundant_placeholder25
1while_while_cond_4660600___redundant_placeholder3
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660685
inputs_0?
,lstm_cell_769_matmul_readvariableop_resource:	d?A
.lstm_cell_769_matmul_1_readvariableop_resource:	2?<
-lstm_cell_769_biasadd_readvariableop_resource:	?
identity??$lstm_cell_769/BiasAdd/ReadVariableOp?#lstm_cell_769/MatMul/ReadVariableOp?%lstm_cell_769/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_769/MatMul/ReadVariableOpReadVariableOp,lstm_cell_769_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_769/MatMulMatMulstrided_slice_2:output:0+lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_769_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_769/MatMul_1MatMulzeros:output:0-lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_769/addAddV2lstm_cell_769/MatMul:product:0 lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_769_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_769/BiasAddBiasAddlstm_cell_769/add:z:0,lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_769/splitSplit&lstm_cell_769/split/split_dim:output:0lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_769/SigmoidSigmoidlstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_1Sigmoidlstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_769/mulMullstm_cell_769/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_769/ReluRelulstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_1Mullstm_cell_769/Sigmoid:y:0 lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_769/add_1AddV2lstm_cell_769/mul:z:0lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_2Sigmoidlstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_769/Relu_1Relulstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_2Mullstm_cell_769/Sigmoid_2:y:0"lstm_cell_769/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_769_matmul_readvariableop_resource.lstm_cell_769_matmul_1_readvariableop_resource-lstm_cell_769_biasadd_readvariableop_resource*
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
while_body_4660601*
condR
while_cond_4660600*K
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
NoOpNoOp%^lstm_cell_769/BiasAdd/ReadVariableOp$^lstm_cell_769/MatMul/ReadVariableOp&^lstm_cell_769/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_769/BiasAdd/ReadVariableOp$lstm_cell_769/BiasAdd/ReadVariableOp2J
#lstm_cell_769/MatMul/ReadVariableOp#lstm_cell_769/MatMul/ReadVariableOp2N
%lstm_cell_769/MatMul_1/ReadVariableOp%lstm_cell_769/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_896_layer_call_fn_4661004

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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4658070o
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
?
F__inference_dense_298_layer_call_and_return_conditional_losses_4661606

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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4661770

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
?C
?

lstm_894_while_body_4658944.
*lstm_894_while_lstm_894_while_loop_counter4
0lstm_894_while_lstm_894_while_maximum_iterations
lstm_894_while_placeholder 
lstm_894_while_placeholder_1 
lstm_894_while_placeholder_2 
lstm_894_while_placeholder_3-
)lstm_894_while_lstm_894_strided_slice_1_0i
elstm_894_while_tensorarrayv2read_tensorlistgetitem_lstm_894_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_894_while_lstm_cell_768_matmul_readvariableop_resource_0:	?R
?lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource_0:	d?M
>lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource_0:	?
lstm_894_while_identity
lstm_894_while_identity_1
lstm_894_while_identity_2
lstm_894_while_identity_3
lstm_894_while_identity_4
lstm_894_while_identity_5+
'lstm_894_while_lstm_894_strided_slice_1g
clstm_894_while_tensorarrayv2read_tensorlistgetitem_lstm_894_tensorarrayunstack_tensorlistfromtensorN
;lstm_894_while_lstm_cell_768_matmul_readvariableop_resource:	?P
=lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource:	d?K
<lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource:	???3lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp?2lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp?4lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp?
@lstm_894/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_894/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_894_while_tensorarrayv2read_tensorlistgetitem_lstm_894_tensorarrayunstack_tensorlistfromtensor_0lstm_894_while_placeholderIlstm_894/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_894/while/lstm_cell_768/MatMul/ReadVariableOpReadVariableOp=lstm_894_while_lstm_cell_768_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_894/while/lstm_cell_768/MatMulMatMul9lstm_894/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp?lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_894/while/lstm_cell_768/MatMul_1MatMullstm_894_while_placeholder_2<lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_894/while/lstm_cell_768/addAddV2-lstm_894/while/lstm_cell_768/MatMul:product:0/lstm_894/while/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp>lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_894/while/lstm_cell_768/BiasAddBiasAdd$lstm_894/while/lstm_cell_768/add:z:0;lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_894/while/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_894/while/lstm_cell_768/splitSplit5lstm_894/while/lstm_cell_768/split/split_dim:output:0-lstm_894/while/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_894/while/lstm_cell_768/SigmoidSigmoid+lstm_894/while/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_894/while/lstm_cell_768/Sigmoid_1Sigmoid+lstm_894/while/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_894/while/lstm_cell_768/mulMul*lstm_894/while/lstm_cell_768/Sigmoid_1:y:0lstm_894_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_894/while/lstm_cell_768/ReluRelu+lstm_894/while/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_894/while/lstm_cell_768/mul_1Mul(lstm_894/while/lstm_cell_768/Sigmoid:y:0/lstm_894/while/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_894/while/lstm_cell_768/add_1AddV2$lstm_894/while/lstm_cell_768/mul:z:0&lstm_894/while/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_894/while/lstm_cell_768/Sigmoid_2Sigmoid+lstm_894/while/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_894/while/lstm_cell_768/Relu_1Relu&lstm_894/while/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_894/while/lstm_cell_768/mul_2Mul*lstm_894/while/lstm_cell_768/Sigmoid_2:y:01lstm_894/while/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_894/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_894_while_placeholder_1lstm_894_while_placeholder&lstm_894/while/lstm_cell_768/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_894/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_894/while/addAddV2lstm_894_while_placeholderlstm_894/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_894/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_894/while/add_1AddV2*lstm_894_while_lstm_894_while_loop_counterlstm_894/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_894/while/IdentityIdentitylstm_894/while/add_1:z:0^lstm_894/while/NoOp*
T0*
_output_shapes
: ?
lstm_894/while/Identity_1Identity0lstm_894_while_lstm_894_while_maximum_iterations^lstm_894/while/NoOp*
T0*
_output_shapes
: t
lstm_894/while/Identity_2Identitylstm_894/while/add:z:0^lstm_894/while/NoOp*
T0*
_output_shapes
: ?
lstm_894/while/Identity_3IdentityClstm_894/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_894/while/NoOp*
T0*
_output_shapes
: ?
lstm_894/while/Identity_4Identity&lstm_894/while/lstm_cell_768/mul_2:z:0^lstm_894/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_894/while/Identity_5Identity&lstm_894/while/lstm_cell_768/add_1:z:0^lstm_894/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_894/while/NoOpNoOp4^lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp3^lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp5^lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_894_while_identity lstm_894/while/Identity:output:0"?
lstm_894_while_identity_1"lstm_894/while/Identity_1:output:0"?
lstm_894_while_identity_2"lstm_894/while/Identity_2:output:0"?
lstm_894_while_identity_3"lstm_894/while/Identity_3:output:0"?
lstm_894_while_identity_4"lstm_894/while/Identity_4:output:0"?
lstm_894_while_identity_5"lstm_894/while/Identity_5:output:0"T
'lstm_894_while_lstm_894_strided_slice_1)lstm_894_while_lstm_894_strided_slice_1_0"~
<lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource>lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource_0"?
=lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource?lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource_0"|
;lstm_894_while_lstm_cell_768_matmul_readvariableop_resource=lstm_894_while_lstm_cell_768_matmul_readvariableop_resource_0"?
clstm_894_while_tensorarrayv2read_tensorlistgetitem_lstm_894_tensorarrayunstack_tensorlistfromtensorelstm_894_while_tensorarrayv2read_tensorlistgetitem_lstm_894_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp3lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp2h
2lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp2lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp2l
4lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp4lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_298_layer_call_fn_4658858

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
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658095o
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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4657338

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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4657612

inputs'
lstm_cell_770_4657530:2('
lstm_cell_770_4657532:
(#
lstm_cell_770_4657534:(
identity??%lstm_cell_770/StatefulPartitionedCall?while;
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
%lstm_cell_770/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_770_4657530lstm_cell_770_4657532lstm_cell_770_4657534*
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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4657484n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_770_4657530lstm_cell_770_4657532lstm_cell_770_4657534*
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
while_body_4657543*
condR
while_cond_4657542*K
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
NoOpNoOp&^lstm_cell_770/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_770/StatefulPartitionedCall%lstm_cell_770/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_895_layer_call_fn_4660377
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4657262|
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
*__inference_lstm_895_layer_call_fn_4660399

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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4658451s
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
?
/__inference_lstm_cell_770_layer_call_fn_4661836

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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4657484o
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
?
/__inference_lstm_cell_768_layer_call_fn_4661640

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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4656784o
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
??
?
#__inference__traced_restore_4662173
file_prefix3
!assignvariableop_dense_298_kernel:
/
!assignvariableop_1_dense_298_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_894_lstm_cell_894_kernel:	?M
:assignvariableop_8_lstm_894_lstm_cell_894_recurrent_kernel:	d?=
.assignvariableop_9_lstm_894_lstm_cell_894_bias:	?D
1assignvariableop_10_lstm_895_lstm_cell_895_kernel:	d?N
;assignvariableop_11_lstm_895_lstm_cell_895_recurrent_kernel:	2?>
/assignvariableop_12_lstm_895_lstm_cell_895_bias:	?C
1assignvariableop_13_lstm_896_lstm_cell_896_kernel:2(M
;assignvariableop_14_lstm_896_lstm_cell_896_recurrent_kernel:
(=
/assignvariableop_15_lstm_896_lstm_cell_896_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_298_kernel_m:
7
)assignvariableop_19_adam_dense_298_bias_m:K
8assignvariableop_20_adam_lstm_894_lstm_cell_894_kernel_m:	?U
Bassignvariableop_21_adam_lstm_894_lstm_cell_894_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_894_lstm_cell_894_bias_m:	?K
8assignvariableop_23_adam_lstm_895_lstm_cell_895_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_895_lstm_cell_895_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_895_lstm_cell_895_bias_m:	?J
8assignvariableop_26_adam_lstm_896_lstm_cell_896_kernel_m:2(T
Bassignvariableop_27_adam_lstm_896_lstm_cell_896_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_896_lstm_cell_896_bias_m:(=
+assignvariableop_29_adam_dense_298_kernel_v:
7
)assignvariableop_30_adam_dense_298_bias_v:K
8assignvariableop_31_adam_lstm_894_lstm_cell_894_kernel_v:	?U
Bassignvariableop_32_adam_lstm_894_lstm_cell_894_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_894_lstm_cell_894_bias_v:	?K
8assignvariableop_34_adam_lstm_895_lstm_cell_895_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_895_lstm_cell_895_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_895_lstm_cell_895_bias_v:	?J
8assignvariableop_37_adam_lstm_896_lstm_cell_896_kernel_v:2(T
Bassignvariableop_38_adam_lstm_896_lstm_cell_896_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_896_lstm_cell_896_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_298_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_298_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_894_lstm_cell_894_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_894_lstm_cell_894_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_894_lstm_cell_894_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_895_lstm_cell_895_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_895_lstm_cell_895_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_895_lstm_cell_895_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_896_lstm_cell_896_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_896_lstm_cell_896_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_896_lstm_cell_896_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_298_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_298_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_894_lstm_cell_894_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_894_lstm_cell_894_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_894_lstm_cell_894_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_895_lstm_cell_895_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_895_lstm_cell_895_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_895_lstm_cell_895_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_896_lstm_cell_896_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_896_lstm_cell_896_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_896_lstm_cell_896_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_298_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_298_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_894_lstm_cell_894_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_894_lstm_cell_894_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_894_lstm_cell_894_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_895_lstm_cell_895_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_895_lstm_cell_895_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_895_lstm_cell_895_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_896_lstm_cell_896_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_896_lstm_cell_896_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_896_lstm_cell_896_bias_vIdentity_39:output:0"/device:CPU:0*
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661158
inputs_0>
,lstm_cell_770_matmul_readvariableop_resource:2(@
.lstm_cell_770_matmul_1_readvariableop_resource:
(;
-lstm_cell_770_biasadd_readvariableop_resource:(
identity??$lstm_cell_770/BiasAdd/ReadVariableOp?#lstm_cell_770/MatMul/ReadVariableOp?%lstm_cell_770/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_770/MatMul/ReadVariableOpReadVariableOp,lstm_cell_770_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_770/MatMulMatMulstrided_slice_2:output:0+lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_770_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_770/MatMul_1MatMulzeros:output:0-lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_770/addAddV2lstm_cell_770/MatMul:product:0 lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_770_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_770/BiasAddBiasAddlstm_cell_770/add:z:0,lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_770/splitSplit&lstm_cell_770/split/split_dim:output:0lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_770/SigmoidSigmoidlstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_1Sigmoidlstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_770/mulMullstm_cell_770/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_770/ReluRelulstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_1Mullstm_cell_770/Sigmoid:y:0 lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_770/add_1AddV2lstm_cell_770/mul:z:0lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_2Sigmoidlstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_770/Relu_1Relulstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_2Mullstm_cell_770/Sigmoid_2:y:0"lstm_cell_770/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_770_matmul_readvariableop_resource.lstm_cell_770_matmul_1_readvariableop_resource-lstm_cell_770_biasadd_readvariableop_resource*
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
while_body_4661074*
condR
while_cond_4661073*K
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
NoOpNoOp%^lstm_cell_770/BiasAdd/ReadVariableOp$^lstm_cell_770/MatMul/ReadVariableOp&^lstm_cell_770/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_770/BiasAdd/ReadVariableOp$lstm_cell_770/BiasAdd/ReadVariableOp2J
#lstm_cell_770/MatMul/ReadVariableOp#lstm_cell_770/MatMul/ReadVariableOp2N
%lstm_cell_770/MatMul_1/ReadVariableOp%lstm_cell_770/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_896_layer_call_and_return_conditional_losses_4657421

inputs'
lstm_cell_770_4657339:2('
lstm_cell_770_4657341:
(#
lstm_cell_770_4657343:(
identity??%lstm_cell_770/StatefulPartitionedCall?while;
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
%lstm_cell_770/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_770_4657339lstm_cell_770_4657341lstm_cell_770_4657343*
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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4657338n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_770_4657339lstm_cell_770_4657341lstm_cell_770_4657343*
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
while_body_4657352*
condR
while_cond_4657351*K
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
NoOpNoOp&^lstm_cell_770/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_770/StatefulPartitionedCall%lstm_cell_770/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4656784

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
*__inference_lstm_896_layer_call_fn_4660982
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4657421o
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
while_body_4661503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_770_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_770_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_770_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_770_matmul_readvariableop_resource:2(F
4while_lstm_cell_770_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_770_biasadd_readvariableop_resource:(??*while/lstm_cell_770/BiasAdd/ReadVariableOp?)while/lstm_cell_770/MatMul/ReadVariableOp?+while/lstm_cell_770/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_770/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_770_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_770/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_770_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_770/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_770/addAddV2$while/lstm_cell_770/MatMul:product:0&while/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_770_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_770/BiasAddBiasAddwhile/lstm_cell_770/add:z:02while/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_770/splitSplit,while/lstm_cell_770/split/split_dim:output:0$while/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_770/SigmoidSigmoid"while/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_1Sigmoid"while/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mulMul!while/lstm_cell_770/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_770/ReluRelu"while/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_1Mulwhile/lstm_cell_770/Sigmoid:y:0&while/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/add_1AddV2while/lstm_cell_770/mul:z:0while/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_2Sigmoid"while/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_770/Relu_1Reluwhile/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_2Mul!while/lstm_cell_770/Sigmoid_2:y:0(while/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_770/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_770/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_770/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_770/BiasAdd/ReadVariableOp*^while/lstm_cell_770/MatMul/ReadVariableOp,^while/lstm_cell_770/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_770_biasadd_readvariableop_resource5while_lstm_cell_770_biasadd_readvariableop_resource_0"n
4while_lstm_cell_770_matmul_1_readvariableop_resource6while_lstm_cell_770_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_770_matmul_readvariableop_resource4while_lstm_cell_770_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_770/BiasAdd/ReadVariableOp*while/lstm_cell_770/BiasAdd/ReadVariableOp2V
)while/lstm_cell_770/MatMul/ReadVariableOp)while/lstm_cell_770/MatMul/ReadVariableOp2Z
+while/lstm_cell_770/MatMul_1/ReadVariableOp+while/lstm_cell_770/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4660601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_769_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_769_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_769_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_769_matmul_readvariableop_resource:	d?G
4while_lstm_cell_769_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_769_biasadd_readvariableop_resource:	???*while/lstm_cell_769/BiasAdd/ReadVariableOp?)while/lstm_cell_769/MatMul/ReadVariableOp?+while/lstm_cell_769/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_769/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_769_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_769/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_769_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_769/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_769/addAddV2$while/lstm_cell_769/MatMul:product:0&while/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_769_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_769/BiasAddBiasAddwhile/lstm_cell_769/add:z:02while/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_769/splitSplit,while/lstm_cell_769/split/split_dim:output:0$while/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_769/SigmoidSigmoid"while/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_1Sigmoid"while/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mulMul!while/lstm_cell_769/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_769/ReluRelu"while/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_1Mulwhile/lstm_cell_769/Sigmoid:y:0&while/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/add_1AddV2while/lstm_cell_769/mul:z:0while/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_2Sigmoid"while/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_769/Relu_1Reluwhile/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_2Mul!while/lstm_cell_769/Sigmoid_2:y:0(while/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_769/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_769/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_769/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_769/BiasAdd/ReadVariableOp*^while/lstm_cell_769/MatMul/ReadVariableOp,^while/lstm_cell_769/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_769_biasadd_readvariableop_resource5while_lstm_cell_769_biasadd_readvariableop_resource_0"n
4while_lstm_cell_769_matmul_1_readvariableop_resource6while_lstm_cell_769_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_769_matmul_readvariableop_resource4while_lstm_cell_769_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_769/BiasAdd/ReadVariableOp*while/lstm_cell_769/BiasAdd/ReadVariableOp2V
)while/lstm_cell_769/MatMul/ReadVariableOp)while/lstm_cell_769/MatMul/ReadVariableOp2Z
+while/lstm_cell_769/MatMul_1/ReadVariableOp+while/lstm_cell_769/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4657836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_769_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_769_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_769_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_769_matmul_readvariableop_resource:	d?G
4while_lstm_cell_769_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_769_biasadd_readvariableop_resource:	???*while/lstm_cell_769/BiasAdd/ReadVariableOp?)while/lstm_cell_769/MatMul/ReadVariableOp?+while/lstm_cell_769/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_769/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_769_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_769/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_769_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_769/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_769/addAddV2$while/lstm_cell_769/MatMul:product:0&while/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_769_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_769/BiasAddBiasAddwhile/lstm_cell_769/add:z:02while/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_769/splitSplit,while/lstm_cell_769/split/split_dim:output:0$while/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_769/SigmoidSigmoid"while/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_1Sigmoid"while/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mulMul!while/lstm_cell_769/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_769/ReluRelu"while/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_1Mulwhile/lstm_cell_769/Sigmoid:y:0&while/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/add_1AddV2while/lstm_cell_769/mul:z:0while/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_2Sigmoid"while/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_769/Relu_1Reluwhile/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_2Mul!while/lstm_cell_769/Sigmoid_2:y:0(while/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_769/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_769/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_769/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_769/BiasAdd/ReadVariableOp*^while/lstm_cell_769/MatMul/ReadVariableOp,^while/lstm_cell_769/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_769_biasadd_readvariableop_resource5while_lstm_cell_769_biasadd_readvariableop_resource_0"n
4while_lstm_cell_769_matmul_1_readvariableop_resource6while_lstm_cell_769_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_769_matmul_readvariableop_resource4while_lstm_cell_769_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_769/BiasAdd/ReadVariableOp*while/lstm_cell_769/BiasAdd/ReadVariableOp2V
)while/lstm_cell_769/MatMul/ReadVariableOp)while/lstm_cell_769/MatMul/ReadVariableOp2Z
+while/lstm_cell_769/MatMul_1/ReadVariableOp+while/lstm_cell_769/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4661360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_770_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_770_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_770_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_770_matmul_readvariableop_resource:2(F
4while_lstm_cell_770_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_770_biasadd_readvariableop_resource:(??*while/lstm_cell_770/BiasAdd/ReadVariableOp?)while/lstm_cell_770/MatMul/ReadVariableOp?+while/lstm_cell_770/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_770/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_770_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_770/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_770_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_770/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_770/addAddV2$while/lstm_cell_770/MatMul:product:0&while/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_770_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_770/BiasAddBiasAddwhile/lstm_cell_770/add:z:02while/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_770/splitSplit,while/lstm_cell_770/split/split_dim:output:0$while/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_770/SigmoidSigmoid"while/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_1Sigmoid"while/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mulMul!while/lstm_cell_770/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_770/ReluRelu"while/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_1Mulwhile/lstm_cell_770/Sigmoid:y:0&while/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/add_1AddV2while/lstm_cell_770/mul:z:0while/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_2Sigmoid"while/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_770/Relu_1Reluwhile/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_2Mul!while/lstm_cell_770/Sigmoid_2:y:0(while/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_770/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_770/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_770/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_770/BiasAdd/ReadVariableOp*^while/lstm_cell_770/MatMul/ReadVariableOp,^while/lstm_cell_770/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_770_biasadd_readvariableop_resource5while_lstm_cell_770_biasadd_readvariableop_resource_0"n
4while_lstm_cell_770_matmul_1_readvariableop_resource6while_lstm_cell_770_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_770_matmul_readvariableop_resource4while_lstm_cell_770_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_770/BiasAdd/ReadVariableOp*while/lstm_cell_770/BiasAdd/ReadVariableOp2V
)while/lstm_cell_770/MatMul/ReadVariableOp)while/lstm_cell_770/MatMul/ReadVariableOp2Z
+while/lstm_cell_770/MatMul_1/ReadVariableOp+while/lstm_cell_770/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4657986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_770_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_770_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_770_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_770_matmul_readvariableop_resource:2(F
4while_lstm_cell_770_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_770_biasadd_readvariableop_resource:(??*while/lstm_cell_770/BiasAdd/ReadVariableOp?)while/lstm_cell_770/MatMul/ReadVariableOp?+while/lstm_cell_770/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_770/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_770_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_770/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_770_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_770/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_770/addAddV2$while/lstm_cell_770/MatMul:product:0&while/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_770_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_770/BiasAddBiasAddwhile/lstm_cell_770/add:z:02while/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_770/splitSplit,while/lstm_cell_770/split/split_dim:output:0$while/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_770/SigmoidSigmoid"while/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_1Sigmoid"while/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mulMul!while/lstm_cell_770/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_770/ReluRelu"while/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_1Mulwhile/lstm_cell_770/Sigmoid:y:0&while/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/add_1AddV2while/lstm_cell_770/mul:z:0while/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_2Sigmoid"while/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_770/Relu_1Reluwhile/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_2Mul!while/lstm_cell_770/Sigmoid_2:y:0(while/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_770/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_770/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_770/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_770/BiasAdd/ReadVariableOp*^while/lstm_cell_770/MatMul/ReadVariableOp,^while/lstm_cell_770/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_770_biasadd_readvariableop_resource5while_lstm_cell_770_biasadd_readvariableop_resource_0"n
4while_lstm_cell_770_matmul_1_readvariableop_resource6while_lstm_cell_770_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_770_matmul_readvariableop_resource4while_lstm_cell_770_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_770/BiasAdd/ReadVariableOp*while/lstm_cell_770/BiasAdd/ReadVariableOp2V
)while/lstm_cell_770/MatMul/ReadVariableOp)while/lstm_cell_770/MatMul/ReadVariableOp2Z
+while/lstm_cell_770/MatMul_1/ReadVariableOp+while/lstm_cell_770/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4659985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_768_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_768_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_768_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_768_matmul_readvariableop_resource:	?G
4while_lstm_cell_768_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_768_biasadd_readvariableop_resource:	???*while/lstm_cell_768/BiasAdd/ReadVariableOp?)while/lstm_cell_768/MatMul/ReadVariableOp?+while/lstm_cell_768/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_768/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_768_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_768/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_768_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_768/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_768/addAddV2$while/lstm_cell_768/MatMul:product:0&while/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_768_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_768/BiasAddBiasAddwhile/lstm_cell_768/add:z:02while/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_768/splitSplit,while/lstm_cell_768/split/split_dim:output:0$while/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_768/SigmoidSigmoid"while/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_1Sigmoid"while/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mulMul!while/lstm_cell_768/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_768/ReluRelu"while/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_1Mulwhile/lstm_cell_768/Sigmoid:y:0&while/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/add_1AddV2while/lstm_cell_768/mul:z:0while/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_2Sigmoid"while/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_768/Relu_1Reluwhile/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_2Mul!while/lstm_cell_768/Sigmoid_2:y:0(while/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_768/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_768/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_768/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_768/BiasAdd/ReadVariableOp*^while/lstm_cell_768/MatMul/ReadVariableOp,^while/lstm_cell_768/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_768_biasadd_readvariableop_resource5while_lstm_cell_768_biasadd_readvariableop_resource_0"n
4while_lstm_cell_768_matmul_1_readvariableop_resource6while_lstm_cell_768_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_768_matmul_readvariableop_resource4while_lstm_cell_768_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_768/BiasAdd/ReadVariableOp*while/lstm_cell_768/BiasAdd/ReadVariableOp2V
)while/lstm_cell_768/MatMul/ReadVariableOp)while/lstm_cell_768/MatMul/ReadVariableOp2Z
+while/lstm_cell_768/MatMul_1/ReadVariableOp+while/lstm_cell_768/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4658451

inputs?
,lstm_cell_769_matmul_readvariableop_resource:	d?A
.lstm_cell_769_matmul_1_readvariableop_resource:	2?<
-lstm_cell_769_biasadd_readvariableop_resource:	?
identity??$lstm_cell_769/BiasAdd/ReadVariableOp?#lstm_cell_769/MatMul/ReadVariableOp?%lstm_cell_769/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_769/MatMul/ReadVariableOpReadVariableOp,lstm_cell_769_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_769/MatMulMatMulstrided_slice_2:output:0+lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_769_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_769/MatMul_1MatMulzeros:output:0-lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_769/addAddV2lstm_cell_769/MatMul:product:0 lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_769_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_769/BiasAddBiasAddlstm_cell_769/add:z:0,lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_769/splitSplit&lstm_cell_769/split/split_dim:output:0lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_769/SigmoidSigmoidlstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_1Sigmoidlstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_769/mulMullstm_cell_769/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_769/ReluRelulstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_1Mullstm_cell_769/Sigmoid:y:0 lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_769/add_1AddV2lstm_cell_769/mul:z:0lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_2Sigmoidlstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_769/Relu_1Relulstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_2Mullstm_cell_769/Sigmoid_2:y:0"lstm_cell_769/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_769_matmul_readvariableop_resource.lstm_cell_769_matmul_1_readvariableop_resource-lstm_cell_769_biasadd_readvariableop_resource*
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
while_body_4658367*
condR
while_cond_4658366*K
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
NoOpNoOp%^lstm_cell_769/BiasAdd/ReadVariableOp$^lstm_cell_769/MatMul/ReadVariableOp&^lstm_cell_769/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_769/BiasAdd/ReadVariableOp$lstm_cell_769/BiasAdd/ReadVariableOp2J
#lstm_cell_769/MatMul/ReadVariableOp#lstm_cell_769/MatMul/ReadVariableOp2N
%lstm_cell_769/MatMul_1/ReadVariableOp%lstm_cell_769/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_895_layer_call_fn_4660388

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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4657920s
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
while_cond_4661359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4661359___redundant_placeholder05
1while_while_cond_4661359___redundant_placeholder15
1while_while_cond_4661359___redundant_placeholder25
1while_while_cond_4661359___redundant_placeholder3
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
lstm_894_while_cond_4658943.
*lstm_894_while_lstm_894_while_loop_counter4
0lstm_894_while_lstm_894_while_maximum_iterations
lstm_894_while_placeholder 
lstm_894_while_placeholder_1 
lstm_894_while_placeholder_2 
lstm_894_while_placeholder_30
,lstm_894_while_less_lstm_894_strided_slice_1G
Clstm_894_while_lstm_894_while_cond_4658943___redundant_placeholder0G
Clstm_894_while_lstm_894_while_cond_4658943___redundant_placeholder1G
Clstm_894_while_lstm_894_while_cond_4658943___redundant_placeholder2G
Clstm_894_while_lstm_894_while_cond_4658943___redundant_placeholder3
lstm_894_while_identity
?
lstm_894/while/LessLesslstm_894_while_placeholder,lstm_894_while_less_lstm_894_strided_slice_1*
T0*
_output_shapes
: ]
lstm_894/while/IdentityIdentitylstm_894/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_894_while_identity lstm_894/while/Identity:output:0*(
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
K__inference_sequential_298_layer_call_and_return_conditional_losses_4659739

inputsH
5lstm_894_lstm_cell_768_matmul_readvariableop_resource:	?J
7lstm_894_lstm_cell_768_matmul_1_readvariableop_resource:	d?E
6lstm_894_lstm_cell_768_biasadd_readvariableop_resource:	?H
5lstm_895_lstm_cell_769_matmul_readvariableop_resource:	d?J
7lstm_895_lstm_cell_769_matmul_1_readvariableop_resource:	2?E
6lstm_895_lstm_cell_769_biasadd_readvariableop_resource:	?G
5lstm_896_lstm_cell_770_matmul_readvariableop_resource:2(I
7lstm_896_lstm_cell_770_matmul_1_readvariableop_resource:
(D
6lstm_896_lstm_cell_770_biasadd_readvariableop_resource:(:
(dense_298_matmul_readvariableop_resource:
7
)dense_298_biasadd_readvariableop_resource:
identity?? dense_298/BiasAdd/ReadVariableOp?dense_298/MatMul/ReadVariableOp?-lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp?,lstm_894/lstm_cell_768/MatMul/ReadVariableOp?.lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp?lstm_894/while?-lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp?,lstm_895/lstm_cell_769/MatMul/ReadVariableOp?.lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp?lstm_895/while?-lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp?,lstm_896/lstm_cell_770/MatMul/ReadVariableOp?.lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp?lstm_896/whileD
lstm_894/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_894/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_894/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_894/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_894/strided_sliceStridedSlicelstm_894/Shape:output:0%lstm_894/strided_slice/stack:output:0'lstm_894/strided_slice/stack_1:output:0'lstm_894/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_894/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_894/zeros/packedPacklstm_894/strided_slice:output:0 lstm_894/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_894/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_894/zerosFilllstm_894/zeros/packed:output:0lstm_894/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_894/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_894/zeros_1/packedPacklstm_894/strided_slice:output:0"lstm_894/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_894/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_894/zeros_1Fill lstm_894/zeros_1/packed:output:0lstm_894/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_894/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_894/transpose	Transposeinputs lstm_894/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_894/Shape_1Shapelstm_894/transpose:y:0*
T0*
_output_shapes
:h
lstm_894/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_894/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_894/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_894/strided_slice_1StridedSlicelstm_894/Shape_1:output:0'lstm_894/strided_slice_1/stack:output:0)lstm_894/strided_slice_1/stack_1:output:0)lstm_894/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_894/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_894/TensorArrayV2TensorListReserve-lstm_894/TensorArrayV2/element_shape:output:0!lstm_894/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_894/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_894/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_894/transpose:y:0Glstm_894/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_894/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_894/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_894/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_894/strided_slice_2StridedSlicelstm_894/transpose:y:0'lstm_894/strided_slice_2/stack:output:0)lstm_894/strided_slice_2/stack_1:output:0)lstm_894/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_894/lstm_cell_768/MatMul/ReadVariableOpReadVariableOp5lstm_894_lstm_cell_768_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_894/lstm_cell_768/MatMulMatMul!lstm_894/strided_slice_2:output:04lstm_894/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_894/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp7lstm_894_lstm_cell_768_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_894/lstm_cell_768/MatMul_1MatMullstm_894/zeros:output:06lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_894/lstm_cell_768/addAddV2'lstm_894/lstm_cell_768/MatMul:product:0)lstm_894/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_894/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp6lstm_894_lstm_cell_768_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_894/lstm_cell_768/BiasAddBiasAddlstm_894/lstm_cell_768/add:z:05lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_894/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_894/lstm_cell_768/splitSplit/lstm_894/lstm_cell_768/split/split_dim:output:0'lstm_894/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_894/lstm_cell_768/SigmoidSigmoid%lstm_894/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_894/lstm_cell_768/Sigmoid_1Sigmoid%lstm_894/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_894/lstm_cell_768/mulMul$lstm_894/lstm_cell_768/Sigmoid_1:y:0lstm_894/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_894/lstm_cell_768/ReluRelu%lstm_894/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_894/lstm_cell_768/mul_1Mul"lstm_894/lstm_cell_768/Sigmoid:y:0)lstm_894/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_894/lstm_cell_768/add_1AddV2lstm_894/lstm_cell_768/mul:z:0 lstm_894/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_894/lstm_cell_768/Sigmoid_2Sigmoid%lstm_894/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_894/lstm_cell_768/Relu_1Relu lstm_894/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_894/lstm_cell_768/mul_2Mul$lstm_894/lstm_cell_768/Sigmoid_2:y:0+lstm_894/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_894/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_894/TensorArrayV2_1TensorListReserve/lstm_894/TensorArrayV2_1/element_shape:output:0!lstm_894/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_894/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_894/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_894/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_894/whileWhile$lstm_894/while/loop_counter:output:0*lstm_894/while/maximum_iterations:output:0lstm_894/time:output:0!lstm_894/TensorArrayV2_1:handle:0lstm_894/zeros:output:0lstm_894/zeros_1:output:0!lstm_894/strided_slice_1:output:0@lstm_894/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_894_lstm_cell_768_matmul_readvariableop_resource7lstm_894_lstm_cell_768_matmul_1_readvariableop_resource6lstm_894_lstm_cell_768_biasadd_readvariableop_resource*
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
lstm_894_while_body_4659371*'
condR
lstm_894_while_cond_4659370*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_894/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_894/TensorArrayV2Stack/TensorListStackTensorListStacklstm_894/while:output:3Blstm_894/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_894/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_894/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_894/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_894/strided_slice_3StridedSlice4lstm_894/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_894/strided_slice_3/stack:output:0)lstm_894/strided_slice_3/stack_1:output:0)lstm_894/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_894/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_894/transpose_1	Transpose4lstm_894/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_894/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_894/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_895/ShapeShapelstm_894/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_895/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_895/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_895/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_895/strided_sliceStridedSlicelstm_895/Shape:output:0%lstm_895/strided_slice/stack:output:0'lstm_895/strided_slice/stack_1:output:0'lstm_895/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_895/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_895/zeros/packedPacklstm_895/strided_slice:output:0 lstm_895/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_895/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_895/zerosFilllstm_895/zeros/packed:output:0lstm_895/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_895/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_895/zeros_1/packedPacklstm_895/strided_slice:output:0"lstm_895/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_895/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_895/zeros_1Fill lstm_895/zeros_1/packed:output:0lstm_895/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_895/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_895/transpose	Transposelstm_894/transpose_1:y:0 lstm_895/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_895/Shape_1Shapelstm_895/transpose:y:0*
T0*
_output_shapes
:h
lstm_895/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_895/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_895/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_895/strided_slice_1StridedSlicelstm_895/Shape_1:output:0'lstm_895/strided_slice_1/stack:output:0)lstm_895/strided_slice_1/stack_1:output:0)lstm_895/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_895/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_895/TensorArrayV2TensorListReserve-lstm_895/TensorArrayV2/element_shape:output:0!lstm_895/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_895/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_895/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_895/transpose:y:0Glstm_895/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_895/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_895/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_895/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_895/strided_slice_2StridedSlicelstm_895/transpose:y:0'lstm_895/strided_slice_2/stack:output:0)lstm_895/strided_slice_2/stack_1:output:0)lstm_895/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_895/lstm_cell_769/MatMul/ReadVariableOpReadVariableOp5lstm_895_lstm_cell_769_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_895/lstm_cell_769/MatMulMatMul!lstm_895/strided_slice_2:output:04lstm_895/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_895/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp7lstm_895_lstm_cell_769_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_895/lstm_cell_769/MatMul_1MatMullstm_895/zeros:output:06lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_895/lstm_cell_769/addAddV2'lstm_895/lstm_cell_769/MatMul:product:0)lstm_895/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_895/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp6lstm_895_lstm_cell_769_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_895/lstm_cell_769/BiasAddBiasAddlstm_895/lstm_cell_769/add:z:05lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_895/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_895/lstm_cell_769/splitSplit/lstm_895/lstm_cell_769/split/split_dim:output:0'lstm_895/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_895/lstm_cell_769/SigmoidSigmoid%lstm_895/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_895/lstm_cell_769/Sigmoid_1Sigmoid%lstm_895/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_895/lstm_cell_769/mulMul$lstm_895/lstm_cell_769/Sigmoid_1:y:0lstm_895/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_895/lstm_cell_769/ReluRelu%lstm_895/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_895/lstm_cell_769/mul_1Mul"lstm_895/lstm_cell_769/Sigmoid:y:0)lstm_895/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_895/lstm_cell_769/add_1AddV2lstm_895/lstm_cell_769/mul:z:0 lstm_895/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_895/lstm_cell_769/Sigmoid_2Sigmoid%lstm_895/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_895/lstm_cell_769/Relu_1Relu lstm_895/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_895/lstm_cell_769/mul_2Mul$lstm_895/lstm_cell_769/Sigmoid_2:y:0+lstm_895/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_895/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_895/TensorArrayV2_1TensorListReserve/lstm_895/TensorArrayV2_1/element_shape:output:0!lstm_895/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_895/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_895/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_895/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_895/whileWhile$lstm_895/while/loop_counter:output:0*lstm_895/while/maximum_iterations:output:0lstm_895/time:output:0!lstm_895/TensorArrayV2_1:handle:0lstm_895/zeros:output:0lstm_895/zeros_1:output:0!lstm_895/strided_slice_1:output:0@lstm_895/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_895_lstm_cell_769_matmul_readvariableop_resource7lstm_895_lstm_cell_769_matmul_1_readvariableop_resource6lstm_895_lstm_cell_769_biasadd_readvariableop_resource*
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
lstm_895_while_body_4659510*'
condR
lstm_895_while_cond_4659509*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_895/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_895/TensorArrayV2Stack/TensorListStackTensorListStacklstm_895/while:output:3Blstm_895/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_895/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_895/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_895/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_895/strided_slice_3StridedSlice4lstm_895/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_895/strided_slice_3/stack:output:0)lstm_895/strided_slice_3/stack_1:output:0)lstm_895/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_895/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_895/transpose_1	Transpose4lstm_895/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_895/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_895/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_896/ShapeShapelstm_895/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_896/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_896/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_896/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_896/strided_sliceStridedSlicelstm_896/Shape:output:0%lstm_896/strided_slice/stack:output:0'lstm_896/strided_slice/stack_1:output:0'lstm_896/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_896/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_896/zeros/packedPacklstm_896/strided_slice:output:0 lstm_896/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_896/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_896/zerosFilllstm_896/zeros/packed:output:0lstm_896/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_896/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_896/zeros_1/packedPacklstm_896/strided_slice:output:0"lstm_896/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_896/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_896/zeros_1Fill lstm_896/zeros_1/packed:output:0lstm_896/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_896/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_896/transpose	Transposelstm_895/transpose_1:y:0 lstm_896/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_896/Shape_1Shapelstm_896/transpose:y:0*
T0*
_output_shapes
:h
lstm_896/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_896/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_896/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_896/strided_slice_1StridedSlicelstm_896/Shape_1:output:0'lstm_896/strided_slice_1/stack:output:0)lstm_896/strided_slice_1/stack_1:output:0)lstm_896/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_896/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_896/TensorArrayV2TensorListReserve-lstm_896/TensorArrayV2/element_shape:output:0!lstm_896/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_896/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_896/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_896/transpose:y:0Glstm_896/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_896/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_896/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_896/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_896/strided_slice_2StridedSlicelstm_896/transpose:y:0'lstm_896/strided_slice_2/stack:output:0)lstm_896/strided_slice_2/stack_1:output:0)lstm_896/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_896/lstm_cell_770/MatMul/ReadVariableOpReadVariableOp5lstm_896_lstm_cell_770_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_896/lstm_cell_770/MatMulMatMul!lstm_896/strided_slice_2:output:04lstm_896/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_896/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp7lstm_896_lstm_cell_770_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_896/lstm_cell_770/MatMul_1MatMullstm_896/zeros:output:06lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_896/lstm_cell_770/addAddV2'lstm_896/lstm_cell_770/MatMul:product:0)lstm_896/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_896/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp6lstm_896_lstm_cell_770_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_896/lstm_cell_770/BiasAddBiasAddlstm_896/lstm_cell_770/add:z:05lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_896/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_896/lstm_cell_770/splitSplit/lstm_896/lstm_cell_770/split/split_dim:output:0'lstm_896/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_896/lstm_cell_770/SigmoidSigmoid%lstm_896/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_896/lstm_cell_770/Sigmoid_1Sigmoid%lstm_896/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_896/lstm_cell_770/mulMul$lstm_896/lstm_cell_770/Sigmoid_1:y:0lstm_896/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_896/lstm_cell_770/ReluRelu%lstm_896/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_896/lstm_cell_770/mul_1Mul"lstm_896/lstm_cell_770/Sigmoid:y:0)lstm_896/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_896/lstm_cell_770/add_1AddV2lstm_896/lstm_cell_770/mul:z:0 lstm_896/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_896/lstm_cell_770/Sigmoid_2Sigmoid%lstm_896/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_896/lstm_cell_770/Relu_1Relu lstm_896/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_896/lstm_cell_770/mul_2Mul$lstm_896/lstm_cell_770/Sigmoid_2:y:0+lstm_896/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_896/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_896/TensorArrayV2_1TensorListReserve/lstm_896/TensorArrayV2_1/element_shape:output:0!lstm_896/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_896/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_896/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_896/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_896/whileWhile$lstm_896/while/loop_counter:output:0*lstm_896/while/maximum_iterations:output:0lstm_896/time:output:0!lstm_896/TensorArrayV2_1:handle:0lstm_896/zeros:output:0lstm_896/zeros_1:output:0!lstm_896/strided_slice_1:output:0@lstm_896/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_896_lstm_cell_770_matmul_readvariableop_resource7lstm_896_lstm_cell_770_matmul_1_readvariableop_resource6lstm_896_lstm_cell_770_biasadd_readvariableop_resource*
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
lstm_896_while_body_4659649*'
condR
lstm_896_while_cond_4659648*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_896/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_896/TensorArrayV2Stack/TensorListStackTensorListStacklstm_896/while:output:3Blstm_896/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_896/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_896/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_896/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_896/strided_slice_3StridedSlice4lstm_896/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_896/strided_slice_3/stack:output:0)lstm_896/strided_slice_3/stack_1:output:0)lstm_896/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_896/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_896/transpose_1	Transpose4lstm_896/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_896/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_896/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_298/MatMul/ReadVariableOpReadVariableOp(dense_298_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_298/MatMulMatMul!lstm_896/strided_slice_3:output:0'dense_298/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_298/BiasAdd/ReadVariableOpReadVariableOp)dense_298_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_298/BiasAddBiasAdddense_298/MatMul:product:0(dense_298/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_298/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_298/BiasAdd/ReadVariableOp ^dense_298/MatMul/ReadVariableOp.^lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp-^lstm_894/lstm_cell_768/MatMul/ReadVariableOp/^lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp^lstm_894/while.^lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp-^lstm_895/lstm_cell_769/MatMul/ReadVariableOp/^lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp^lstm_895/while.^lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp-^lstm_896/lstm_cell_770/MatMul/ReadVariableOp/^lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp^lstm_896/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_298/BiasAdd/ReadVariableOp dense_298/BiasAdd/ReadVariableOp2B
dense_298/MatMul/ReadVariableOpdense_298/MatMul/ReadVariableOp2^
-lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp-lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp2\
,lstm_894/lstm_cell_768/MatMul/ReadVariableOp,lstm_894/lstm_cell_768/MatMul/ReadVariableOp2`
.lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp.lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp2 
lstm_894/whilelstm_894/while2^
-lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp-lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp2\
,lstm_895/lstm_cell_769/MatMul/ReadVariableOp,lstm_895/lstm_cell_769/MatMul/ReadVariableOp2`
.lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp.lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp2 
lstm_895/whilelstm_895/while2^
-lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp-lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp2\
,lstm_896/lstm_cell_770/MatMul/ReadVariableOp,lstm_896/lstm_cell_770/MatMul/ReadVariableOp2`
.lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp.lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp2 
lstm_896/whilelstm_896/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4661802

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
while_body_4660128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_768_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_768_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_768_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_768_matmul_readvariableop_resource:	?G
4while_lstm_cell_768_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_768_biasadd_readvariableop_resource:	???*while/lstm_cell_768/BiasAdd/ReadVariableOp?)while/lstm_cell_768/MatMul/ReadVariableOp?+while/lstm_cell_768/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_768/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_768_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_768/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_768_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_768/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_768/addAddV2$while/lstm_cell_768/MatMul:product:0&while/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_768_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_768/BiasAddBiasAddwhile/lstm_cell_768/add:z:02while/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_768/splitSplit,while/lstm_cell_768/split/split_dim:output:0$while/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_768/SigmoidSigmoid"while/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_1Sigmoid"while/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mulMul!while/lstm_cell_768/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_768/ReluRelu"while/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_1Mulwhile/lstm_cell_768/Sigmoid:y:0&while/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/add_1AddV2while/lstm_cell_768/mul:z:0while/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_2Sigmoid"while/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_768/Relu_1Reluwhile/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_2Mul!while/lstm_cell_768/Sigmoid_2:y:0(while/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_768/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_768/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_768/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_768/BiasAdd/ReadVariableOp*^while/lstm_cell_768/MatMul/ReadVariableOp,^while/lstm_cell_768/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_768_biasadd_readvariableop_resource5while_lstm_cell_768_biasadd_readvariableop_resource_0"n
4while_lstm_cell_768_matmul_1_readvariableop_resource6while_lstm_cell_768_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_768_matmul_readvariableop_resource4while_lstm_cell_768_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_768/BiasAdd/ReadVariableOp*while/lstm_cell_768/BiasAdd/ReadVariableOp2V
)while/lstm_cell_768/MatMul/ReadVariableOp)while/lstm_cell_768/MatMul/ReadVariableOp2Z
+while/lstm_cell_768/MatMul_1/ReadVariableOp+while/lstm_cell_768/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4661073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4661073___redundant_placeholder05
1while_while_cond_4661073___redundant_placeholder15
1while_while_cond_4661073___redundant_placeholder25
1while_while_cond_4661073___redundant_placeholder3
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
*__inference_lstm_896_layer_call_fn_4660993
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4657612o
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
while_cond_4661502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4661502___redundant_placeholder05
1while_while_cond_4661502___redundant_placeholder15
1while_while_cond_4661502___redundant_placeholder25
1while_while_cond_4661502___redundant_placeholder3
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
while_body_4657002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_769_4657026_0:	d?0
while_lstm_cell_769_4657028_0:	2?,
while_lstm_cell_769_4657030_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_769_4657026:	d?.
while_lstm_cell_769_4657028:	2?*
while_lstm_cell_769_4657030:	???+while/lstm_cell_769/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_769/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_769_4657026_0while_lstm_cell_769_4657028_0while_lstm_cell_769_4657030_0*
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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4656988?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_769/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_769/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_769/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_769/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_769_4657026while_lstm_cell_769_4657026_0"<
while_lstm_cell_769_4657028while_lstm_cell_769_4657028_0"<
while_lstm_cell_769_4657030while_lstm_cell_769_4657030_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_769/StatefulPartitionedCall+while/lstm_cell_769/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4657262

inputs(
lstm_cell_769_4657180:	d?(
lstm_cell_769_4657182:	2?$
lstm_cell_769_4657184:	?
identity??%lstm_cell_769/StatefulPartitionedCall?while;
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
%lstm_cell_769/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_769_4657180lstm_cell_769_4657182lstm_cell_769_4657184*
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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4657134n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_769_4657180lstm_cell_769_4657182lstm_cell_769_4657184*
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
while_body_4657193*
condR
while_cond_4657192*K
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
NoOpNoOp&^lstm_cell_769/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_769/StatefulPartitionedCall%lstm_cell_769/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_896_while_cond_4659221.
*lstm_896_while_lstm_896_while_loop_counter4
0lstm_896_while_lstm_896_while_maximum_iterations
lstm_896_while_placeholder 
lstm_896_while_placeholder_1 
lstm_896_while_placeholder_2 
lstm_896_while_placeholder_30
,lstm_896_while_less_lstm_896_strided_slice_1G
Clstm_896_while_lstm_896_while_cond_4659221___redundant_placeholder0G
Clstm_896_while_lstm_896_while_cond_4659221___redundant_placeholder1G
Clstm_896_while_lstm_896_while_cond_4659221___redundant_placeholder2G
Clstm_896_while_lstm_896_while_cond_4659221___redundant_placeholder3
lstm_896_while_identity
?
lstm_896/while/LessLesslstm_896_while_placeholder,lstm_896_while_less_lstm_896_strided_slice_1*
T0*
_output_shapes
: ]
lstm_896/while/IdentityIdentitylstm_896/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_896_while_identity lstm_896/while/Identity:output:0*(
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

lstm_894_while_body_4659371.
*lstm_894_while_lstm_894_while_loop_counter4
0lstm_894_while_lstm_894_while_maximum_iterations
lstm_894_while_placeholder 
lstm_894_while_placeholder_1 
lstm_894_while_placeholder_2 
lstm_894_while_placeholder_3-
)lstm_894_while_lstm_894_strided_slice_1_0i
elstm_894_while_tensorarrayv2read_tensorlistgetitem_lstm_894_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_894_while_lstm_cell_768_matmul_readvariableop_resource_0:	?R
?lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource_0:	d?M
>lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource_0:	?
lstm_894_while_identity
lstm_894_while_identity_1
lstm_894_while_identity_2
lstm_894_while_identity_3
lstm_894_while_identity_4
lstm_894_while_identity_5+
'lstm_894_while_lstm_894_strided_slice_1g
clstm_894_while_tensorarrayv2read_tensorlistgetitem_lstm_894_tensorarrayunstack_tensorlistfromtensorN
;lstm_894_while_lstm_cell_768_matmul_readvariableop_resource:	?P
=lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource:	d?K
<lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource:	???3lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp?2lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp?4lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp?
@lstm_894/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_894/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_894_while_tensorarrayv2read_tensorlistgetitem_lstm_894_tensorarrayunstack_tensorlistfromtensor_0lstm_894_while_placeholderIlstm_894/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_894/while/lstm_cell_768/MatMul/ReadVariableOpReadVariableOp=lstm_894_while_lstm_cell_768_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_894/while/lstm_cell_768/MatMulMatMul9lstm_894/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp?lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_894/while/lstm_cell_768/MatMul_1MatMullstm_894_while_placeholder_2<lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_894/while/lstm_cell_768/addAddV2-lstm_894/while/lstm_cell_768/MatMul:product:0/lstm_894/while/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp>lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_894/while/lstm_cell_768/BiasAddBiasAdd$lstm_894/while/lstm_cell_768/add:z:0;lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_894/while/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_894/while/lstm_cell_768/splitSplit5lstm_894/while/lstm_cell_768/split/split_dim:output:0-lstm_894/while/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_894/while/lstm_cell_768/SigmoidSigmoid+lstm_894/while/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_894/while/lstm_cell_768/Sigmoid_1Sigmoid+lstm_894/while/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_894/while/lstm_cell_768/mulMul*lstm_894/while/lstm_cell_768/Sigmoid_1:y:0lstm_894_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_894/while/lstm_cell_768/ReluRelu+lstm_894/while/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_894/while/lstm_cell_768/mul_1Mul(lstm_894/while/lstm_cell_768/Sigmoid:y:0/lstm_894/while/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_894/while/lstm_cell_768/add_1AddV2$lstm_894/while/lstm_cell_768/mul:z:0&lstm_894/while/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_894/while/lstm_cell_768/Sigmoid_2Sigmoid+lstm_894/while/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_894/while/lstm_cell_768/Relu_1Relu&lstm_894/while/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_894/while/lstm_cell_768/mul_2Mul*lstm_894/while/lstm_cell_768/Sigmoid_2:y:01lstm_894/while/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_894/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_894_while_placeholder_1lstm_894_while_placeholder&lstm_894/while/lstm_cell_768/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_894/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_894/while/addAddV2lstm_894_while_placeholderlstm_894/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_894/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_894/while/add_1AddV2*lstm_894_while_lstm_894_while_loop_counterlstm_894/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_894/while/IdentityIdentitylstm_894/while/add_1:z:0^lstm_894/while/NoOp*
T0*
_output_shapes
: ?
lstm_894/while/Identity_1Identity0lstm_894_while_lstm_894_while_maximum_iterations^lstm_894/while/NoOp*
T0*
_output_shapes
: t
lstm_894/while/Identity_2Identitylstm_894/while/add:z:0^lstm_894/while/NoOp*
T0*
_output_shapes
: ?
lstm_894/while/Identity_3IdentityClstm_894/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_894/while/NoOp*
T0*
_output_shapes
: ?
lstm_894/while/Identity_4Identity&lstm_894/while/lstm_cell_768/mul_2:z:0^lstm_894/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_894/while/Identity_5Identity&lstm_894/while/lstm_cell_768/add_1:z:0^lstm_894/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_894/while/NoOpNoOp4^lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp3^lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp5^lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_894_while_identity lstm_894/while/Identity:output:0"?
lstm_894_while_identity_1"lstm_894/while/Identity_1:output:0"?
lstm_894_while_identity_2"lstm_894/while/Identity_2:output:0"?
lstm_894_while_identity_3"lstm_894/while/Identity_3:output:0"?
lstm_894_while_identity_4"lstm_894/while/Identity_4:output:0"?
lstm_894_while_identity_5"lstm_894/while/Identity_5:output:0"T
'lstm_894_while_lstm_894_strided_slice_1)lstm_894_while_lstm_894_strided_slice_1_0"~
<lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource>lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource_0"?
=lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource?lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource_0"|
;lstm_894_while_lstm_cell_768_matmul_readvariableop_resource=lstm_894_while_lstm_cell_768_matmul_readvariableop_resource_0"?
clstm_894_while_tensorarrayv2read_tensorlistgetitem_lstm_894_tensorarrayunstack_tensorlistfromtensorelstm_894_while_tensorarrayv2read_tensorlistgetitem_lstm_894_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp3lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp2h
2lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp2lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp2l
4lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp4lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4661704

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
?
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658095

inputs#
lstm_894_4657771:	?#
lstm_894_4657773:	d?
lstm_894_4657775:	?#
lstm_895_4657921:	d?#
lstm_895_4657923:	2?
lstm_895_4657925:	?"
lstm_896_4658071:2("
lstm_896_4658073:
(
lstm_896_4658075:(#
dense_298_4658089:

dense_298_4658091:
identity??!dense_298/StatefulPartitionedCall? lstm_894/StatefulPartitionedCall? lstm_895/StatefulPartitionedCall? lstm_896/StatefulPartitionedCall?
 lstm_894/StatefulPartitionedCallStatefulPartitionedCallinputslstm_894_4657771lstm_894_4657773lstm_894_4657775*
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4657770?
 lstm_895/StatefulPartitionedCallStatefulPartitionedCall)lstm_894/StatefulPartitionedCall:output:0lstm_895_4657921lstm_895_4657923lstm_895_4657925*
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4657920?
 lstm_896/StatefulPartitionedCallStatefulPartitionedCall)lstm_895/StatefulPartitionedCall:output:0lstm_896_4658071lstm_896_4658073lstm_896_4658075*
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4658070?
!dense_298/StatefulPartitionedCallStatefulPartitionedCall)lstm_896/StatefulPartitionedCall:output:0dense_298_4658089dense_298_4658091*
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
F__inference_dense_298_layer_call_and_return_conditional_losses_4658088y
IdentityIdentity*dense_298/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_298/StatefulPartitionedCall!^lstm_894/StatefulPartitionedCall!^lstm_895/StatefulPartitionedCall!^lstm_896/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_298/StatefulPartitionedCall!dense_298/StatefulPartitionedCall2D
 lstm_894/StatefulPartitionedCall lstm_894/StatefulPartitionedCall2D
 lstm_895/StatefulPartitionedCall lstm_895/StatefulPartitionedCall2D
 lstm_896/StatefulPartitionedCall lstm_896/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4660744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_769_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_769_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_769_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_769_matmul_readvariableop_resource:	d?G
4while_lstm_cell_769_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_769_biasadd_readvariableop_resource:	???*while/lstm_cell_769/BiasAdd/ReadVariableOp?)while/lstm_cell_769/MatMul/ReadVariableOp?+while/lstm_cell_769/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_769/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_769_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_769/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_769_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_769/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_769/addAddV2$while/lstm_cell_769/MatMul:product:0&while/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_769_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_769/BiasAddBiasAddwhile/lstm_cell_769/add:z:02while/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_769/splitSplit,while/lstm_cell_769/split/split_dim:output:0$while/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_769/SigmoidSigmoid"while/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_1Sigmoid"while/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mulMul!while/lstm_cell_769/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_769/ReluRelu"while/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_1Mulwhile/lstm_cell_769/Sigmoid:y:0&while/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/add_1AddV2while/lstm_cell_769/mul:z:0while/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_2Sigmoid"while/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_769/Relu_1Reluwhile/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_2Mul!while/lstm_cell_769/Sigmoid_2:y:0(while/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_769/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_769/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_769/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_769/BiasAdd/ReadVariableOp*^while/lstm_cell_769/MatMul/ReadVariableOp,^while/lstm_cell_769/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_769_biasadd_readvariableop_resource5while_lstm_cell_769_biasadd_readvariableop_resource_0"n
4while_lstm_cell_769_matmul_1_readvariableop_resource6while_lstm_cell_769_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_769_matmul_readvariableop_resource4while_lstm_cell_769_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_769/BiasAdd/ReadVariableOp*while/lstm_cell_769/BiasAdd/ReadVariableOp2V
)while/lstm_cell_769/MatMul/ReadVariableOp)while/lstm_cell_769/MatMul/ReadVariableOp2Z
+while/lstm_cell_769/MatMul_1/ReadVariableOp+while/lstm_cell_769/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661587

inputs>
,lstm_cell_770_matmul_readvariableop_resource:2(@
.lstm_cell_770_matmul_1_readvariableop_resource:
(;
-lstm_cell_770_biasadd_readvariableop_resource:(
identity??$lstm_cell_770/BiasAdd/ReadVariableOp?#lstm_cell_770/MatMul/ReadVariableOp?%lstm_cell_770/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_770/MatMul/ReadVariableOpReadVariableOp,lstm_cell_770_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_770/MatMulMatMulstrided_slice_2:output:0+lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_770_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_770/MatMul_1MatMulzeros:output:0-lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_770/addAddV2lstm_cell_770/MatMul:product:0 lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_770_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_770/BiasAddBiasAddlstm_cell_770/add:z:0,lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_770/splitSplit&lstm_cell_770/split/split_dim:output:0lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_770/SigmoidSigmoidlstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_1Sigmoidlstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_770/mulMullstm_cell_770/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_770/ReluRelulstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_1Mullstm_cell_770/Sigmoid:y:0 lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_770/add_1AddV2lstm_cell_770/mul:z:0lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_2Sigmoidlstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_770/Relu_1Relulstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_2Mullstm_cell_770/Sigmoid_2:y:0"lstm_cell_770/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_770_matmul_readvariableop_resource.lstm_cell_770_matmul_1_readvariableop_resource-lstm_cell_770_biasadd_readvariableop_resource*
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
while_body_4661503*
condR
while_cond_4661502*K
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
NoOpNoOp%^lstm_cell_770/BiasAdd/ReadVariableOp$^lstm_cell_770/MatMul/ReadVariableOp&^lstm_cell_770/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_770/BiasAdd/ReadVariableOp$lstm_cell_770/BiasAdd/ReadVariableOp2J
#lstm_cell_770/MatMul/ReadVariableOp#lstm_cell_770/MatMul/ReadVariableOp2N
%lstm_cell_770/MatMul_1/ReadVariableOp%lstm_cell_770/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_298_layer_call_fn_4658736
lstm_894_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_894_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658684o
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
_user_specified_namelstm_894_input
?
?
/__inference_lstm_cell_769_layer_call_fn_4661721

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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4656988o
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
F__inference_dense_298_layer_call_and_return_conditional_losses_4658088

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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4661868

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
?C
?

lstm_896_while_body_4659222.
*lstm_896_while_lstm_896_while_loop_counter4
0lstm_896_while_lstm_896_while_maximum_iterations
lstm_896_while_placeholder 
lstm_896_while_placeholder_1 
lstm_896_while_placeholder_2 
lstm_896_while_placeholder_3-
)lstm_896_while_lstm_896_strided_slice_1_0i
elstm_896_while_tensorarrayv2read_tensorlistgetitem_lstm_896_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_896_while_lstm_cell_770_matmul_readvariableop_resource_0:2(Q
?lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource_0:
(L
>lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource_0:(
lstm_896_while_identity
lstm_896_while_identity_1
lstm_896_while_identity_2
lstm_896_while_identity_3
lstm_896_while_identity_4
lstm_896_while_identity_5+
'lstm_896_while_lstm_896_strided_slice_1g
clstm_896_while_tensorarrayv2read_tensorlistgetitem_lstm_896_tensorarrayunstack_tensorlistfromtensorM
;lstm_896_while_lstm_cell_770_matmul_readvariableop_resource:2(O
=lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource:
(J
<lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource:(??3lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp?2lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp?4lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp?
@lstm_896/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_896/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_896_while_tensorarrayv2read_tensorlistgetitem_lstm_896_tensorarrayunstack_tensorlistfromtensor_0lstm_896_while_placeholderIlstm_896/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_896/while/lstm_cell_770/MatMul/ReadVariableOpReadVariableOp=lstm_896_while_lstm_cell_770_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_896/while/lstm_cell_770/MatMulMatMul9lstm_896/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp?lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_896/while/lstm_cell_770/MatMul_1MatMullstm_896_while_placeholder_2<lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_896/while/lstm_cell_770/addAddV2-lstm_896/while/lstm_cell_770/MatMul:product:0/lstm_896/while/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp>lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_896/while/lstm_cell_770/BiasAddBiasAdd$lstm_896/while/lstm_cell_770/add:z:0;lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_896/while/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_896/while/lstm_cell_770/splitSplit5lstm_896/while/lstm_cell_770/split/split_dim:output:0-lstm_896/while/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_896/while/lstm_cell_770/SigmoidSigmoid+lstm_896/while/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_896/while/lstm_cell_770/Sigmoid_1Sigmoid+lstm_896/while/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_896/while/lstm_cell_770/mulMul*lstm_896/while/lstm_cell_770/Sigmoid_1:y:0lstm_896_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_896/while/lstm_cell_770/ReluRelu+lstm_896/while/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_896/while/lstm_cell_770/mul_1Mul(lstm_896/while/lstm_cell_770/Sigmoid:y:0/lstm_896/while/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_896/while/lstm_cell_770/add_1AddV2$lstm_896/while/lstm_cell_770/mul:z:0&lstm_896/while/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_896/while/lstm_cell_770/Sigmoid_2Sigmoid+lstm_896/while/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_896/while/lstm_cell_770/Relu_1Relu&lstm_896/while/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_896/while/lstm_cell_770/mul_2Mul*lstm_896/while/lstm_cell_770/Sigmoid_2:y:01lstm_896/while/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_896/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_896_while_placeholder_1lstm_896_while_placeholder&lstm_896/while/lstm_cell_770/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_896/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_896/while/addAddV2lstm_896_while_placeholderlstm_896/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_896/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_896/while/add_1AddV2*lstm_896_while_lstm_896_while_loop_counterlstm_896/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_896/while/IdentityIdentitylstm_896/while/add_1:z:0^lstm_896/while/NoOp*
T0*
_output_shapes
: ?
lstm_896/while/Identity_1Identity0lstm_896_while_lstm_896_while_maximum_iterations^lstm_896/while/NoOp*
T0*
_output_shapes
: t
lstm_896/while/Identity_2Identitylstm_896/while/add:z:0^lstm_896/while/NoOp*
T0*
_output_shapes
: ?
lstm_896/while/Identity_3IdentityClstm_896/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_896/while/NoOp*
T0*
_output_shapes
: ?
lstm_896/while/Identity_4Identity&lstm_896/while/lstm_cell_770/mul_2:z:0^lstm_896/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_896/while/Identity_5Identity&lstm_896/while/lstm_cell_770/add_1:z:0^lstm_896/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_896/while/NoOpNoOp4^lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp3^lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp5^lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_896_while_identity lstm_896/while/Identity:output:0"?
lstm_896_while_identity_1"lstm_896/while/Identity_1:output:0"?
lstm_896_while_identity_2"lstm_896/while/Identity_2:output:0"?
lstm_896_while_identity_3"lstm_896/while/Identity_3:output:0"?
lstm_896_while_identity_4"lstm_896/while/Identity_4:output:0"?
lstm_896_while_identity_5"lstm_896/while/Identity_5:output:0"T
'lstm_896_while_lstm_896_strided_slice_1)lstm_896_while_lstm_896_strided_slice_1_0"~
<lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource>lstm_896_while_lstm_cell_770_biasadd_readvariableop_resource_0"?
=lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource?lstm_896_while_lstm_cell_770_matmul_1_readvariableop_resource_0"|
;lstm_896_while_lstm_cell_770_matmul_readvariableop_resource=lstm_896_while_lstm_cell_770_matmul_readvariableop_resource_0"?
clstm_896_while_tensorarrayv2read_tensorlistgetitem_lstm_896_tensorarrayunstack_tensorlistfromtensorelstm_896_while_tensorarrayv2read_tensorlistgetitem_lstm_896_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp3lstm_896/while/lstm_cell_770/BiasAdd/ReadVariableOp2h
2lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp2lstm_896/while/lstm_cell_770/MatMul/ReadVariableOp2l
4lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp4lstm_896/while/lstm_cell_770/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4657134

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
?T
?
*sequential_298_lstm_894_while_body_4656203L
Hsequential_298_lstm_894_while_sequential_298_lstm_894_while_loop_counterR
Nsequential_298_lstm_894_while_sequential_298_lstm_894_while_maximum_iterations-
)sequential_298_lstm_894_while_placeholder/
+sequential_298_lstm_894_while_placeholder_1/
+sequential_298_lstm_894_while_placeholder_2/
+sequential_298_lstm_894_while_placeholder_3K
Gsequential_298_lstm_894_while_sequential_298_lstm_894_strided_slice_1_0?
?sequential_298_lstm_894_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_894_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_298_lstm_894_while_lstm_cell_768_matmul_readvariableop_resource_0:	?a
Nsequential_298_lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource_0:	d?\
Msequential_298_lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource_0:	?*
&sequential_298_lstm_894_while_identity,
(sequential_298_lstm_894_while_identity_1,
(sequential_298_lstm_894_while_identity_2,
(sequential_298_lstm_894_while_identity_3,
(sequential_298_lstm_894_while_identity_4,
(sequential_298_lstm_894_while_identity_5I
Esequential_298_lstm_894_while_sequential_298_lstm_894_strided_slice_1?
?sequential_298_lstm_894_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_894_tensorarrayunstack_tensorlistfromtensor]
Jsequential_298_lstm_894_while_lstm_cell_768_matmul_readvariableop_resource:	?_
Lsequential_298_lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource:	d?Z
Ksequential_298_lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource:	???Bsequential_298/lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp?Asequential_298/lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp?Csequential_298/lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp?
Osequential_298/lstm_894/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_298/lstm_894/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_298_lstm_894_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_894_tensorarrayunstack_tensorlistfromtensor_0)sequential_298_lstm_894_while_placeholderXsequential_298/lstm_894/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_298/lstm_894/while/lstm_cell_768/MatMul/ReadVariableOpReadVariableOpLsequential_298_lstm_894_while_lstm_cell_768_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_298/lstm_894/while/lstm_cell_768/MatMulMatMulHsequential_298/lstm_894/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_298/lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_298/lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOpNsequential_298_lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_298/lstm_894/while/lstm_cell_768/MatMul_1MatMul+sequential_298_lstm_894_while_placeholder_2Ksequential_298/lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_298/lstm_894/while/lstm_cell_768/addAddV2<sequential_298/lstm_894/while/lstm_cell_768/MatMul:product:0>sequential_298/lstm_894/while/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_298/lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOpMsequential_298_lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_298/lstm_894/while/lstm_cell_768/BiasAddBiasAdd3sequential_298/lstm_894/while/lstm_cell_768/add:z:0Jsequential_298/lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_298/lstm_894/while/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_298/lstm_894/while/lstm_cell_768/splitSplitDsequential_298/lstm_894/while/lstm_cell_768/split/split_dim:output:0<sequential_298/lstm_894/while/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_298/lstm_894/while/lstm_cell_768/SigmoidSigmoid:sequential_298/lstm_894/while/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_298/lstm_894/while/lstm_cell_768/Sigmoid_1Sigmoid:sequential_298/lstm_894/while/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_298/lstm_894/while/lstm_cell_768/mulMul9sequential_298/lstm_894/while/lstm_cell_768/Sigmoid_1:y:0+sequential_298_lstm_894_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_298/lstm_894/while/lstm_cell_768/ReluRelu:sequential_298/lstm_894/while/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_298/lstm_894/while/lstm_cell_768/mul_1Mul7sequential_298/lstm_894/while/lstm_cell_768/Sigmoid:y:0>sequential_298/lstm_894/while/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_298/lstm_894/while/lstm_cell_768/add_1AddV23sequential_298/lstm_894/while/lstm_cell_768/mul:z:05sequential_298/lstm_894/while/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_298/lstm_894/while/lstm_cell_768/Sigmoid_2Sigmoid:sequential_298/lstm_894/while/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_298/lstm_894/while/lstm_cell_768/Relu_1Relu5sequential_298/lstm_894/while/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_298/lstm_894/while/lstm_cell_768/mul_2Mul9sequential_298/lstm_894/while/lstm_cell_768/Sigmoid_2:y:0@sequential_298/lstm_894/while/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_298/lstm_894/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_298_lstm_894_while_placeholder_1)sequential_298_lstm_894_while_placeholder5sequential_298/lstm_894/while/lstm_cell_768/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_298/lstm_894/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_298/lstm_894/while/addAddV2)sequential_298_lstm_894_while_placeholder,sequential_298/lstm_894/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_298/lstm_894/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_298/lstm_894/while/add_1AddV2Hsequential_298_lstm_894_while_sequential_298_lstm_894_while_loop_counter.sequential_298/lstm_894/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_298/lstm_894/while/IdentityIdentity'sequential_298/lstm_894/while/add_1:z:0#^sequential_298/lstm_894/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_894/while/Identity_1IdentityNsequential_298_lstm_894_while_sequential_298_lstm_894_while_maximum_iterations#^sequential_298/lstm_894/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_894/while/Identity_2Identity%sequential_298/lstm_894/while/add:z:0#^sequential_298/lstm_894/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_894/while/Identity_3IdentityRsequential_298/lstm_894/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_298/lstm_894/while/NoOp*
T0*
_output_shapes
: ?
(sequential_298/lstm_894/while/Identity_4Identity5sequential_298/lstm_894/while/lstm_cell_768/mul_2:z:0#^sequential_298/lstm_894/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_298/lstm_894/while/Identity_5Identity5sequential_298/lstm_894/while/lstm_cell_768/add_1:z:0#^sequential_298/lstm_894/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_298/lstm_894/while/NoOpNoOpC^sequential_298/lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOpB^sequential_298/lstm_894/while/lstm_cell_768/MatMul/ReadVariableOpD^sequential_298/lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_298_lstm_894_while_identity/sequential_298/lstm_894/while/Identity:output:0"]
(sequential_298_lstm_894_while_identity_11sequential_298/lstm_894/while/Identity_1:output:0"]
(sequential_298_lstm_894_while_identity_21sequential_298/lstm_894/while/Identity_2:output:0"]
(sequential_298_lstm_894_while_identity_31sequential_298/lstm_894/while/Identity_3:output:0"]
(sequential_298_lstm_894_while_identity_41sequential_298/lstm_894/while/Identity_4:output:0"]
(sequential_298_lstm_894_while_identity_51sequential_298/lstm_894/while/Identity_5:output:0"?
Ksequential_298_lstm_894_while_lstm_cell_768_biasadd_readvariableop_resourceMsequential_298_lstm_894_while_lstm_cell_768_biasadd_readvariableop_resource_0"?
Lsequential_298_lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resourceNsequential_298_lstm_894_while_lstm_cell_768_matmul_1_readvariableop_resource_0"?
Jsequential_298_lstm_894_while_lstm_cell_768_matmul_readvariableop_resourceLsequential_298_lstm_894_while_lstm_cell_768_matmul_readvariableop_resource_0"?
Esequential_298_lstm_894_while_sequential_298_lstm_894_strided_slice_1Gsequential_298_lstm_894_while_sequential_298_lstm_894_strided_slice_1_0"?
?sequential_298_lstm_894_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_894_tensorarrayunstack_tensorlistfromtensor?sequential_298_lstm_894_while_tensorarrayv2read_tensorlistgetitem_sequential_298_lstm_894_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_298/lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOpBsequential_298/lstm_894/while/lstm_cell_768/BiasAdd/ReadVariableOp2?
Asequential_298/lstm_894/while/lstm_cell_768/MatMul/ReadVariableOpAsequential_298/lstm_894/while/lstm_cell_768/MatMul/ReadVariableOp2?
Csequential_298/lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOpCsequential_298/lstm_894/while/lstm_cell_768/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4660270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4660270___redundant_placeholder05
1while_while_cond_4660270___redundant_placeholder15
1while_while_cond_4660270___redundant_placeholder25
1while_while_cond_4660270___redundant_placeholder3
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
/__inference_lstm_cell_769_layer_call_fn_4661738

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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4657134o
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
*__inference_lstm_894_layer_call_fn_4659772

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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4657770s
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
?
*sequential_298_lstm_896_while_cond_4656480L
Hsequential_298_lstm_896_while_sequential_298_lstm_896_while_loop_counterR
Nsequential_298_lstm_896_while_sequential_298_lstm_896_while_maximum_iterations-
)sequential_298_lstm_896_while_placeholder/
+sequential_298_lstm_896_while_placeholder_1/
+sequential_298_lstm_896_while_placeholder_2/
+sequential_298_lstm_896_while_placeholder_3N
Jsequential_298_lstm_896_while_less_sequential_298_lstm_896_strided_slice_1e
asequential_298_lstm_896_while_sequential_298_lstm_896_while_cond_4656480___redundant_placeholder0e
asequential_298_lstm_896_while_sequential_298_lstm_896_while_cond_4656480___redundant_placeholder1e
asequential_298_lstm_896_while_sequential_298_lstm_896_while_cond_4656480___redundant_placeholder2e
asequential_298_lstm_896_while_sequential_298_lstm_896_while_cond_4656480___redundant_placeholder3*
&sequential_298_lstm_896_while_identity
?
"sequential_298/lstm_896/while/LessLess)sequential_298_lstm_896_while_placeholderJsequential_298_lstm_896_while_less_sequential_298_lstm_896_strided_slice_1*
T0*
_output_shapes
: {
&sequential_298/lstm_896/while/IdentityIdentity&sequential_298/lstm_896/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_298_lstm_896_while_identity/sequential_298/lstm_896/while/Identity:output:0*(
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4657770

inputs?
,lstm_cell_768_matmul_readvariableop_resource:	?A
.lstm_cell_768_matmul_1_readvariableop_resource:	d?<
-lstm_cell_768_biasadd_readvariableop_resource:	?
identity??$lstm_cell_768/BiasAdd/ReadVariableOp?#lstm_cell_768/MatMul/ReadVariableOp?%lstm_cell_768/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_768/MatMul/ReadVariableOpReadVariableOp,lstm_cell_768_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_768/MatMulMatMulstrided_slice_2:output:0+lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_768_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_768/MatMul_1MatMulzeros:output:0-lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_768/addAddV2lstm_cell_768/MatMul:product:0 lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_768_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_768/BiasAddBiasAddlstm_cell_768/add:z:0,lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_768/splitSplit&lstm_cell_768/split/split_dim:output:0lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_768/SigmoidSigmoidlstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_1Sigmoidlstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_768/mulMullstm_cell_768/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_768/ReluRelulstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_1Mullstm_cell_768/Sigmoid:y:0 lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_768/add_1AddV2lstm_cell_768/mul:z:0lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_2Sigmoidlstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_768/Relu_1Relulstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_2Mullstm_cell_768/Sigmoid_2:y:0"lstm_cell_768/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_768_matmul_readvariableop_resource.lstm_cell_768_matmul_1_readvariableop_resource-lstm_cell_768_biasadd_readvariableop_resource*
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
while_body_4657686*
condR
while_cond_4657685*K
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
NoOpNoOp%^lstm_cell_768/BiasAdd/ReadVariableOp$^lstm_cell_768/MatMul/ReadVariableOp&^lstm_cell_768/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_768/BiasAdd/ReadVariableOp$lstm_cell_768/BiasAdd/ReadVariableOp2J
#lstm_cell_768/MatMul/ReadVariableOp#lstm_cell_768/MatMul/ReadVariableOp2N
%lstm_cell_768/MatMul_1/ReadVariableOp%lstm_cell_768/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4656651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4656651___redundant_placeholder05
1while_while_cond_4656651___redundant_placeholder15
1while_while_cond_4656651___redundant_placeholder25
1while_while_cond_4656651___redundant_placeholder3
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
*__inference_lstm_894_layer_call_fn_4659750
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4656721|
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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4661900

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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660828

inputs?
,lstm_cell_769_matmul_readvariableop_resource:	d?A
.lstm_cell_769_matmul_1_readvariableop_resource:	2?<
-lstm_cell_769_biasadd_readvariableop_resource:	?
identity??$lstm_cell_769/BiasAdd/ReadVariableOp?#lstm_cell_769/MatMul/ReadVariableOp?%lstm_cell_769/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_769/MatMul/ReadVariableOpReadVariableOp,lstm_cell_769_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_769/MatMulMatMulstrided_slice_2:output:0+lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_769_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_769/MatMul_1MatMulzeros:output:0-lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_769/addAddV2lstm_cell_769/MatMul:product:0 lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_769_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_769/BiasAddBiasAddlstm_cell_769/add:z:0,lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_769/splitSplit&lstm_cell_769/split/split_dim:output:0lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_769/SigmoidSigmoidlstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_1Sigmoidlstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_769/mulMullstm_cell_769/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_769/ReluRelulstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_1Mullstm_cell_769/Sigmoid:y:0 lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_769/add_1AddV2lstm_cell_769/mul:z:0lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_2Sigmoidlstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_769/Relu_1Relulstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_2Mullstm_cell_769/Sigmoid_2:y:0"lstm_cell_769/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_769_matmul_readvariableop_resource.lstm_cell_769_matmul_1_readvariableop_resource-lstm_cell_769_biasadd_readvariableop_resource*
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
while_body_4660744*
condR
while_cond_4660743*K
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
NoOpNoOp%^lstm_cell_769/BiasAdd/ReadVariableOp$^lstm_cell_769/MatMul/ReadVariableOp&^lstm_cell_769/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_769/BiasAdd/ReadVariableOp$lstm_cell_769/BiasAdd/ReadVariableOp2J
#lstm_cell_769/MatMul/ReadVariableOp#lstm_cell_769/MatMul/ReadVariableOp2N
%lstm_cell_769/MatMul_1/ReadVariableOp%lstm_cell_769/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_4658831
lstm_894_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_894_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4656571o
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
_user_specified_namelstm_894_input
?
?
/__inference_lstm_cell_768_layer_call_fn_4661623

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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4656638o
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
while_body_4658202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_770_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_770_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_770_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_770_matmul_readvariableop_resource:2(F
4while_lstm_cell_770_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_770_biasadd_readvariableop_resource:(??*while/lstm_cell_770/BiasAdd/ReadVariableOp?)while/lstm_cell_770/MatMul/ReadVariableOp?+while/lstm_cell_770/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_770/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_770_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_770/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_770_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_770/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_770/addAddV2$while/lstm_cell_770/MatMul:product:0&while/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_770_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_770/BiasAddBiasAddwhile/lstm_cell_770/add:z:02while/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_770/splitSplit,while/lstm_cell_770/split/split_dim:output:0$while/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_770/SigmoidSigmoid"while/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_1Sigmoid"while/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mulMul!while/lstm_cell_770/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_770/ReluRelu"while/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_1Mulwhile/lstm_cell_770/Sigmoid:y:0&while/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/add_1AddV2while/lstm_cell_770/mul:z:0while/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_770/Sigmoid_2Sigmoid"while/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_770/Relu_1Reluwhile/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_770/mul_2Mul!while/lstm_cell_770/Sigmoid_2:y:0(while/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_770/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_770/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_770/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_770/BiasAdd/ReadVariableOp*^while/lstm_cell_770/MatMul/ReadVariableOp,^while/lstm_cell_770/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_770_biasadd_readvariableop_resource5while_lstm_cell_770_biasadd_readvariableop_resource_0"n
4while_lstm_cell_770_matmul_1_readvariableop_resource6while_lstm_cell_770_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_770_matmul_readvariableop_resource4while_lstm_cell_770_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_770/BiasAdd/ReadVariableOp*while/lstm_cell_770/BiasAdd/ReadVariableOp2V
)while/lstm_cell_770/MatMul/ReadVariableOp)while/lstm_cell_770/MatMul/ReadVariableOp2Z
+while/lstm_cell_770/MatMul_1/ReadVariableOp+while/lstm_cell_770/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_298_layer_call_and_return_conditional_losses_4659312

inputsH
5lstm_894_lstm_cell_768_matmul_readvariableop_resource:	?J
7lstm_894_lstm_cell_768_matmul_1_readvariableop_resource:	d?E
6lstm_894_lstm_cell_768_biasadd_readvariableop_resource:	?H
5lstm_895_lstm_cell_769_matmul_readvariableop_resource:	d?J
7lstm_895_lstm_cell_769_matmul_1_readvariableop_resource:	2?E
6lstm_895_lstm_cell_769_biasadd_readvariableop_resource:	?G
5lstm_896_lstm_cell_770_matmul_readvariableop_resource:2(I
7lstm_896_lstm_cell_770_matmul_1_readvariableop_resource:
(D
6lstm_896_lstm_cell_770_biasadd_readvariableop_resource:(:
(dense_298_matmul_readvariableop_resource:
7
)dense_298_biasadd_readvariableop_resource:
identity?? dense_298/BiasAdd/ReadVariableOp?dense_298/MatMul/ReadVariableOp?-lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp?,lstm_894/lstm_cell_768/MatMul/ReadVariableOp?.lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp?lstm_894/while?-lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp?,lstm_895/lstm_cell_769/MatMul/ReadVariableOp?.lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp?lstm_895/while?-lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp?,lstm_896/lstm_cell_770/MatMul/ReadVariableOp?.lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp?lstm_896/whileD
lstm_894/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_894/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_894/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_894/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_894/strided_sliceStridedSlicelstm_894/Shape:output:0%lstm_894/strided_slice/stack:output:0'lstm_894/strided_slice/stack_1:output:0'lstm_894/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_894/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_894/zeros/packedPacklstm_894/strided_slice:output:0 lstm_894/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_894/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_894/zerosFilllstm_894/zeros/packed:output:0lstm_894/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_894/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_894/zeros_1/packedPacklstm_894/strided_slice:output:0"lstm_894/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_894/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_894/zeros_1Fill lstm_894/zeros_1/packed:output:0lstm_894/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_894/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_894/transpose	Transposeinputs lstm_894/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_894/Shape_1Shapelstm_894/transpose:y:0*
T0*
_output_shapes
:h
lstm_894/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_894/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_894/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_894/strided_slice_1StridedSlicelstm_894/Shape_1:output:0'lstm_894/strided_slice_1/stack:output:0)lstm_894/strided_slice_1/stack_1:output:0)lstm_894/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_894/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_894/TensorArrayV2TensorListReserve-lstm_894/TensorArrayV2/element_shape:output:0!lstm_894/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_894/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_894/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_894/transpose:y:0Glstm_894/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_894/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_894/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_894/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_894/strided_slice_2StridedSlicelstm_894/transpose:y:0'lstm_894/strided_slice_2/stack:output:0)lstm_894/strided_slice_2/stack_1:output:0)lstm_894/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_894/lstm_cell_768/MatMul/ReadVariableOpReadVariableOp5lstm_894_lstm_cell_768_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_894/lstm_cell_768/MatMulMatMul!lstm_894/strided_slice_2:output:04lstm_894/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_894/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp7lstm_894_lstm_cell_768_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_894/lstm_cell_768/MatMul_1MatMullstm_894/zeros:output:06lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_894/lstm_cell_768/addAddV2'lstm_894/lstm_cell_768/MatMul:product:0)lstm_894/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_894/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp6lstm_894_lstm_cell_768_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_894/lstm_cell_768/BiasAddBiasAddlstm_894/lstm_cell_768/add:z:05lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_894/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_894/lstm_cell_768/splitSplit/lstm_894/lstm_cell_768/split/split_dim:output:0'lstm_894/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_894/lstm_cell_768/SigmoidSigmoid%lstm_894/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_894/lstm_cell_768/Sigmoid_1Sigmoid%lstm_894/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_894/lstm_cell_768/mulMul$lstm_894/lstm_cell_768/Sigmoid_1:y:0lstm_894/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_894/lstm_cell_768/ReluRelu%lstm_894/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_894/lstm_cell_768/mul_1Mul"lstm_894/lstm_cell_768/Sigmoid:y:0)lstm_894/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_894/lstm_cell_768/add_1AddV2lstm_894/lstm_cell_768/mul:z:0 lstm_894/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_894/lstm_cell_768/Sigmoid_2Sigmoid%lstm_894/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_894/lstm_cell_768/Relu_1Relu lstm_894/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_894/lstm_cell_768/mul_2Mul$lstm_894/lstm_cell_768/Sigmoid_2:y:0+lstm_894/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_894/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_894/TensorArrayV2_1TensorListReserve/lstm_894/TensorArrayV2_1/element_shape:output:0!lstm_894/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_894/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_894/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_894/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_894/whileWhile$lstm_894/while/loop_counter:output:0*lstm_894/while/maximum_iterations:output:0lstm_894/time:output:0!lstm_894/TensorArrayV2_1:handle:0lstm_894/zeros:output:0lstm_894/zeros_1:output:0!lstm_894/strided_slice_1:output:0@lstm_894/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_894_lstm_cell_768_matmul_readvariableop_resource7lstm_894_lstm_cell_768_matmul_1_readvariableop_resource6lstm_894_lstm_cell_768_biasadd_readvariableop_resource*
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
lstm_894_while_body_4658944*'
condR
lstm_894_while_cond_4658943*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_894/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_894/TensorArrayV2Stack/TensorListStackTensorListStacklstm_894/while:output:3Blstm_894/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_894/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_894/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_894/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_894/strided_slice_3StridedSlice4lstm_894/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_894/strided_slice_3/stack:output:0)lstm_894/strided_slice_3/stack_1:output:0)lstm_894/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_894/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_894/transpose_1	Transpose4lstm_894/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_894/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_894/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_895/ShapeShapelstm_894/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_895/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_895/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_895/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_895/strided_sliceStridedSlicelstm_895/Shape:output:0%lstm_895/strided_slice/stack:output:0'lstm_895/strided_slice/stack_1:output:0'lstm_895/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_895/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_895/zeros/packedPacklstm_895/strided_slice:output:0 lstm_895/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_895/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_895/zerosFilllstm_895/zeros/packed:output:0lstm_895/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_895/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_895/zeros_1/packedPacklstm_895/strided_slice:output:0"lstm_895/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_895/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_895/zeros_1Fill lstm_895/zeros_1/packed:output:0lstm_895/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_895/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_895/transpose	Transposelstm_894/transpose_1:y:0 lstm_895/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_895/Shape_1Shapelstm_895/transpose:y:0*
T0*
_output_shapes
:h
lstm_895/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_895/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_895/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_895/strided_slice_1StridedSlicelstm_895/Shape_1:output:0'lstm_895/strided_slice_1/stack:output:0)lstm_895/strided_slice_1/stack_1:output:0)lstm_895/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_895/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_895/TensorArrayV2TensorListReserve-lstm_895/TensorArrayV2/element_shape:output:0!lstm_895/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_895/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_895/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_895/transpose:y:0Glstm_895/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_895/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_895/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_895/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_895/strided_slice_2StridedSlicelstm_895/transpose:y:0'lstm_895/strided_slice_2/stack:output:0)lstm_895/strided_slice_2/stack_1:output:0)lstm_895/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_895/lstm_cell_769/MatMul/ReadVariableOpReadVariableOp5lstm_895_lstm_cell_769_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_895/lstm_cell_769/MatMulMatMul!lstm_895/strided_slice_2:output:04lstm_895/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_895/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp7lstm_895_lstm_cell_769_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_895/lstm_cell_769/MatMul_1MatMullstm_895/zeros:output:06lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_895/lstm_cell_769/addAddV2'lstm_895/lstm_cell_769/MatMul:product:0)lstm_895/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_895/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp6lstm_895_lstm_cell_769_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_895/lstm_cell_769/BiasAddBiasAddlstm_895/lstm_cell_769/add:z:05lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_895/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_895/lstm_cell_769/splitSplit/lstm_895/lstm_cell_769/split/split_dim:output:0'lstm_895/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_895/lstm_cell_769/SigmoidSigmoid%lstm_895/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_895/lstm_cell_769/Sigmoid_1Sigmoid%lstm_895/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_895/lstm_cell_769/mulMul$lstm_895/lstm_cell_769/Sigmoid_1:y:0lstm_895/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_895/lstm_cell_769/ReluRelu%lstm_895/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_895/lstm_cell_769/mul_1Mul"lstm_895/lstm_cell_769/Sigmoid:y:0)lstm_895/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_895/lstm_cell_769/add_1AddV2lstm_895/lstm_cell_769/mul:z:0 lstm_895/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_895/lstm_cell_769/Sigmoid_2Sigmoid%lstm_895/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_895/lstm_cell_769/Relu_1Relu lstm_895/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_895/lstm_cell_769/mul_2Mul$lstm_895/lstm_cell_769/Sigmoid_2:y:0+lstm_895/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_895/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_895/TensorArrayV2_1TensorListReserve/lstm_895/TensorArrayV2_1/element_shape:output:0!lstm_895/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_895/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_895/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_895/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_895/whileWhile$lstm_895/while/loop_counter:output:0*lstm_895/while/maximum_iterations:output:0lstm_895/time:output:0!lstm_895/TensorArrayV2_1:handle:0lstm_895/zeros:output:0lstm_895/zeros_1:output:0!lstm_895/strided_slice_1:output:0@lstm_895/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_895_lstm_cell_769_matmul_readvariableop_resource7lstm_895_lstm_cell_769_matmul_1_readvariableop_resource6lstm_895_lstm_cell_769_biasadd_readvariableop_resource*
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
lstm_895_while_body_4659083*'
condR
lstm_895_while_cond_4659082*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_895/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_895/TensorArrayV2Stack/TensorListStackTensorListStacklstm_895/while:output:3Blstm_895/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_895/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_895/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_895/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_895/strided_slice_3StridedSlice4lstm_895/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_895/strided_slice_3/stack:output:0)lstm_895/strided_slice_3/stack_1:output:0)lstm_895/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_895/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_895/transpose_1	Transpose4lstm_895/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_895/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_895/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_896/ShapeShapelstm_895/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_896/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_896/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_896/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_896/strided_sliceStridedSlicelstm_896/Shape:output:0%lstm_896/strided_slice/stack:output:0'lstm_896/strided_slice/stack_1:output:0'lstm_896/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_896/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_896/zeros/packedPacklstm_896/strided_slice:output:0 lstm_896/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_896/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_896/zerosFilllstm_896/zeros/packed:output:0lstm_896/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_896/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_896/zeros_1/packedPacklstm_896/strided_slice:output:0"lstm_896/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_896/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_896/zeros_1Fill lstm_896/zeros_1/packed:output:0lstm_896/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_896/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_896/transpose	Transposelstm_895/transpose_1:y:0 lstm_896/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_896/Shape_1Shapelstm_896/transpose:y:0*
T0*
_output_shapes
:h
lstm_896/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_896/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_896/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_896/strided_slice_1StridedSlicelstm_896/Shape_1:output:0'lstm_896/strided_slice_1/stack:output:0)lstm_896/strided_slice_1/stack_1:output:0)lstm_896/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_896/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_896/TensorArrayV2TensorListReserve-lstm_896/TensorArrayV2/element_shape:output:0!lstm_896/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_896/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_896/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_896/transpose:y:0Glstm_896/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_896/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_896/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_896/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_896/strided_slice_2StridedSlicelstm_896/transpose:y:0'lstm_896/strided_slice_2/stack:output:0)lstm_896/strided_slice_2/stack_1:output:0)lstm_896/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_896/lstm_cell_770/MatMul/ReadVariableOpReadVariableOp5lstm_896_lstm_cell_770_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_896/lstm_cell_770/MatMulMatMul!lstm_896/strided_slice_2:output:04lstm_896/lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_896/lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp7lstm_896_lstm_cell_770_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_896/lstm_cell_770/MatMul_1MatMullstm_896/zeros:output:06lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_896/lstm_cell_770/addAddV2'lstm_896/lstm_cell_770/MatMul:product:0)lstm_896/lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_896/lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp6lstm_896_lstm_cell_770_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_896/lstm_cell_770/BiasAddBiasAddlstm_896/lstm_cell_770/add:z:05lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_896/lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_896/lstm_cell_770/splitSplit/lstm_896/lstm_cell_770/split/split_dim:output:0'lstm_896/lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_896/lstm_cell_770/SigmoidSigmoid%lstm_896/lstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_896/lstm_cell_770/Sigmoid_1Sigmoid%lstm_896/lstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_896/lstm_cell_770/mulMul$lstm_896/lstm_cell_770/Sigmoid_1:y:0lstm_896/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_896/lstm_cell_770/ReluRelu%lstm_896/lstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_896/lstm_cell_770/mul_1Mul"lstm_896/lstm_cell_770/Sigmoid:y:0)lstm_896/lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_896/lstm_cell_770/add_1AddV2lstm_896/lstm_cell_770/mul:z:0 lstm_896/lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_896/lstm_cell_770/Sigmoid_2Sigmoid%lstm_896/lstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_896/lstm_cell_770/Relu_1Relu lstm_896/lstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_896/lstm_cell_770/mul_2Mul$lstm_896/lstm_cell_770/Sigmoid_2:y:0+lstm_896/lstm_cell_770/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_896/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_896/TensorArrayV2_1TensorListReserve/lstm_896/TensorArrayV2_1/element_shape:output:0!lstm_896/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_896/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_896/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_896/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_896/whileWhile$lstm_896/while/loop_counter:output:0*lstm_896/while/maximum_iterations:output:0lstm_896/time:output:0!lstm_896/TensorArrayV2_1:handle:0lstm_896/zeros:output:0lstm_896/zeros_1:output:0!lstm_896/strided_slice_1:output:0@lstm_896/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_896_lstm_cell_770_matmul_readvariableop_resource7lstm_896_lstm_cell_770_matmul_1_readvariableop_resource6lstm_896_lstm_cell_770_biasadd_readvariableop_resource*
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
lstm_896_while_body_4659222*'
condR
lstm_896_while_cond_4659221*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_896/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_896/TensorArrayV2Stack/TensorListStackTensorListStacklstm_896/while:output:3Blstm_896/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_896/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_896/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_896/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_896/strided_slice_3StridedSlice4lstm_896/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_896/strided_slice_3/stack:output:0)lstm_896/strided_slice_3/stack_1:output:0)lstm_896/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_896/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_896/transpose_1	Transpose4lstm_896/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_896/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_896/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_298/MatMul/ReadVariableOpReadVariableOp(dense_298_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_298/MatMulMatMul!lstm_896/strided_slice_3:output:0'dense_298/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_298/BiasAdd/ReadVariableOpReadVariableOp)dense_298_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_298/BiasAddBiasAdddense_298/MatMul:product:0(dense_298/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_298/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_298/BiasAdd/ReadVariableOp ^dense_298/MatMul/ReadVariableOp.^lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp-^lstm_894/lstm_cell_768/MatMul/ReadVariableOp/^lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp^lstm_894/while.^lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp-^lstm_895/lstm_cell_769/MatMul/ReadVariableOp/^lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp^lstm_895/while.^lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp-^lstm_896/lstm_cell_770/MatMul/ReadVariableOp/^lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp^lstm_896/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_298/BiasAdd/ReadVariableOp dense_298/BiasAdd/ReadVariableOp2B
dense_298/MatMul/ReadVariableOpdense_298/MatMul/ReadVariableOp2^
-lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp-lstm_894/lstm_cell_768/BiasAdd/ReadVariableOp2\
,lstm_894/lstm_cell_768/MatMul/ReadVariableOp,lstm_894/lstm_cell_768/MatMul/ReadVariableOp2`
.lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp.lstm_894/lstm_cell_768/MatMul_1/ReadVariableOp2 
lstm_894/whilelstm_894/while2^
-lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp-lstm_895/lstm_cell_769/BiasAdd/ReadVariableOp2\
,lstm_895/lstm_cell_769/MatMul/ReadVariableOp,lstm_895/lstm_cell_769/MatMul/ReadVariableOp2`
.lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp.lstm_895/lstm_cell_769/MatMul_1/ReadVariableOp2 
lstm_895/whilelstm_895/while2^
-lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp-lstm_896/lstm_cell_770/BiasAdd/ReadVariableOp2\
,lstm_896/lstm_cell_770/MatMul/ReadVariableOp,lstm_896/lstm_cell_770/MatMul/ReadVariableOp2`
.lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp.lstm_896/lstm_cell_770/MatMul_1/ReadVariableOp2 
lstm_896/whilelstm_896/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4656638

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
while_cond_4657351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4657351___redundant_placeholder05
1while_while_cond_4657351___redundant_placeholder15
1while_while_cond_4657351___redundant_placeholder25
1while_while_cond_4657351___redundant_placeholder3
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
while_cond_4657835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4657835___redundant_placeholder05
1while_while_cond_4657835___redundant_placeholder15
1while_while_cond_4657835___redundant_placeholder25
1while_while_cond_4657835___redundant_placeholder3
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
*__inference_lstm_894_layer_call_fn_4659783

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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4658616s
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
?K
?
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661301
inputs_0>
,lstm_cell_770_matmul_readvariableop_resource:2(@
.lstm_cell_770_matmul_1_readvariableop_resource:
(;
-lstm_cell_770_biasadd_readvariableop_resource:(
identity??$lstm_cell_770/BiasAdd/ReadVariableOp?#lstm_cell_770/MatMul/ReadVariableOp?%lstm_cell_770/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_770/MatMul/ReadVariableOpReadVariableOp,lstm_cell_770_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_770/MatMulMatMulstrided_slice_2:output:0+lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_770_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_770/MatMul_1MatMulzeros:output:0-lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_770/addAddV2lstm_cell_770/MatMul:product:0 lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_770_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_770/BiasAddBiasAddlstm_cell_770/add:z:0,lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_770/splitSplit&lstm_cell_770/split/split_dim:output:0lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_770/SigmoidSigmoidlstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_1Sigmoidlstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_770/mulMullstm_cell_770/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_770/ReluRelulstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_1Mullstm_cell_770/Sigmoid:y:0 lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_770/add_1AddV2lstm_cell_770/mul:z:0lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_2Sigmoidlstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_770/Relu_1Relulstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_2Mullstm_cell_770/Sigmoid_2:y:0"lstm_cell_770/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_770_matmul_readvariableop_resource.lstm_cell_770_matmul_1_readvariableop_resource-lstm_cell_770_biasadd_readvariableop_resource*
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
while_body_4661217*
condR
while_cond_4661216*K
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
NoOpNoOp%^lstm_cell_770/BiasAdd/ReadVariableOp$^lstm_cell_770/MatMul/ReadVariableOp&^lstm_cell_770/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_770/BiasAdd/ReadVariableOp$lstm_cell_770/BiasAdd/ReadVariableOp2J
#lstm_cell_770/MatMul/ReadVariableOp#lstm_cell_770/MatMul/ReadVariableOp2N
%lstm_cell_770/MatMul_1/ReadVariableOp%lstm_cell_770/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_4656843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_768_4656867_0:	?0
while_lstm_cell_768_4656869_0:	d?,
while_lstm_cell_768_4656871_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_768_4656867:	?.
while_lstm_cell_768_4656869:	d?*
while_lstm_cell_768_4656871:	???+while/lstm_cell_768/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_768/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_768_4656867_0while_lstm_cell_768_4656869_0while_lstm_cell_768_4656871_0*
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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4656784?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_768/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_768/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_768/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_768/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_768_4656867while_lstm_cell_768_4656867_0"<
while_lstm_cell_768_4656869while_lstm_cell_768_4656869_0"<
while_lstm_cell_768_4656871while_lstm_cell_768_4656871_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_768/StatefulPartitionedCall+while/lstm_cell_768/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4656652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_768_4656676_0:	?0
while_lstm_cell_768_4656678_0:	d?,
while_lstm_cell_768_4656680_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_768_4656676:	?.
while_lstm_cell_768_4656678:	d?*
while_lstm_cell_768_4656680:	???+while/lstm_cell_768/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_768/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_768_4656676_0while_lstm_cell_768_4656678_0while_lstm_cell_768_4656680_0*
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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4656638?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_768/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_768/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_768/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_768/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_768_4656676while_lstm_cell_768_4656676_0"<
while_lstm_cell_768_4656678while_lstm_cell_768_4656678_0"<
while_lstm_cell_768_4656680while_lstm_cell_768_4656680_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_768/StatefulPartitionedCall+while/lstm_cell_768/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4657685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4657685___redundant_placeholder05
1while_while_cond_4657685___redundant_placeholder15
1while_while_cond_4657685___redundant_placeholder25
1while_while_cond_4657685___redundant_placeholder3
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4660355

inputs?
,lstm_cell_768_matmul_readvariableop_resource:	?A
.lstm_cell_768_matmul_1_readvariableop_resource:	d?<
-lstm_cell_768_biasadd_readvariableop_resource:	?
identity??$lstm_cell_768/BiasAdd/ReadVariableOp?#lstm_cell_768/MatMul/ReadVariableOp?%lstm_cell_768/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_768/MatMul/ReadVariableOpReadVariableOp,lstm_cell_768_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_768/MatMulMatMulstrided_slice_2:output:0+lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_768_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_768/MatMul_1MatMulzeros:output:0-lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_768/addAddV2lstm_cell_768/MatMul:product:0 lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_768_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_768/BiasAddBiasAddlstm_cell_768/add:z:0,lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_768/splitSplit&lstm_cell_768/split/split_dim:output:0lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_768/SigmoidSigmoidlstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_1Sigmoidlstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_768/mulMullstm_cell_768/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_768/ReluRelulstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_1Mullstm_cell_768/Sigmoid:y:0 lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_768/add_1AddV2lstm_cell_768/mul:z:0lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_2Sigmoidlstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_768/Relu_1Relulstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_2Mullstm_cell_768/Sigmoid_2:y:0"lstm_cell_768/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_768_matmul_readvariableop_resource.lstm_cell_768_matmul_1_readvariableop_resource-lstm_cell_768_biasadd_readvariableop_resource*
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
while_body_4660271*
condR
while_cond_4660270*K
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
NoOpNoOp%^lstm_cell_768/BiasAdd/ReadVariableOp$^lstm_cell_768/MatMul/ReadVariableOp&^lstm_cell_768/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_768/BiasAdd/ReadVariableOp$lstm_cell_768/BiasAdd/ReadVariableOp2J
#lstm_cell_768/MatMul/ReadVariableOp#lstm_cell_768/MatMul/ReadVariableOp2N
%lstm_cell_768/MatMul_1/ReadVariableOp%lstm_cell_768/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658796
lstm_894_input#
lstm_894_4658769:	?#
lstm_894_4658771:	d?
lstm_894_4658773:	?#
lstm_895_4658776:	d?#
lstm_895_4658778:	2?
lstm_895_4658780:	?"
lstm_896_4658783:2("
lstm_896_4658785:
(
lstm_896_4658787:(#
dense_298_4658790:

dense_298_4658792:
identity??!dense_298/StatefulPartitionedCall? lstm_894/StatefulPartitionedCall? lstm_895/StatefulPartitionedCall? lstm_896/StatefulPartitionedCall?
 lstm_894/StatefulPartitionedCallStatefulPartitionedCalllstm_894_inputlstm_894_4658769lstm_894_4658771lstm_894_4658773*
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4658616?
 lstm_895/StatefulPartitionedCallStatefulPartitionedCall)lstm_894/StatefulPartitionedCall:output:0lstm_895_4658776lstm_895_4658778lstm_895_4658780*
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4658451?
 lstm_896/StatefulPartitionedCallStatefulPartitionedCall)lstm_895/StatefulPartitionedCall:output:0lstm_896_4658783lstm_896_4658785lstm_896_4658787*
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4658286?
!dense_298/StatefulPartitionedCallStatefulPartitionedCall)lstm_896/StatefulPartitionedCall:output:0dense_298_4658790dense_298_4658792*
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
F__inference_dense_298_layer_call_and_return_conditional_losses_4658088y
IdentityIdentity*dense_298/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_298/StatefulPartitionedCall!^lstm_894/StatefulPartitionedCall!^lstm_895/StatefulPartitionedCall!^lstm_896/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_298/StatefulPartitionedCall!dense_298/StatefulPartitionedCall2D
 lstm_894/StatefulPartitionedCall lstm_894/StatefulPartitionedCall2D
 lstm_895/StatefulPartitionedCall lstm_895/StatefulPartitionedCall2D
 lstm_896/StatefulPartitionedCall lstm_896/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_894_input
?8
?
while_body_4660458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_769_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_769_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_769_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_769_matmul_readvariableop_resource:	d?G
4while_lstm_cell_769_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_769_biasadd_readvariableop_resource:	???*while/lstm_cell_769/BiasAdd/ReadVariableOp?)while/lstm_cell_769/MatMul/ReadVariableOp?+while/lstm_cell_769/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_769/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_769_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_769/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_769_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_769/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_769/addAddV2$while/lstm_cell_769/MatMul:product:0&while/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_769_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_769/BiasAddBiasAddwhile/lstm_cell_769/add:z:02while/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_769/splitSplit,while/lstm_cell_769/split/split_dim:output:0$while/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_769/SigmoidSigmoid"while/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_1Sigmoid"while/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mulMul!while/lstm_cell_769/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_769/ReluRelu"while/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_1Mulwhile/lstm_cell_769/Sigmoid:y:0&while/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/add_1AddV2while/lstm_cell_769/mul:z:0while/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_769/Sigmoid_2Sigmoid"while/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_769/Relu_1Reluwhile/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_769/mul_2Mul!while/lstm_cell_769/Sigmoid_2:y:0(while/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_769/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_769/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_769/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_769/BiasAdd/ReadVariableOp*^while/lstm_cell_769/MatMul/ReadVariableOp,^while/lstm_cell_769/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_769_biasadd_readvariableop_resource5while_lstm_cell_769_biasadd_readvariableop_resource_0"n
4while_lstm_cell_769_matmul_1_readvariableop_resource6while_lstm_cell_769_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_769_matmul_readvariableop_resource4while_lstm_cell_769_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_769/BiasAdd/ReadVariableOp*while/lstm_cell_769/BiasAdd/ReadVariableOp2V
)while/lstm_cell_769/MatMul/ReadVariableOp)while/lstm_cell_769/MatMul/ReadVariableOp2Z
+while/lstm_cell_769/MatMul_1/ReadVariableOp+while/lstm_cell_769/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4659984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4659984___redundant_placeholder05
1while_while_cond_4659984___redundant_placeholder15
1while_while_cond_4659984___redundant_placeholder25
1while_while_cond_4659984___redundant_placeholder3
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661444

inputs>
,lstm_cell_770_matmul_readvariableop_resource:2(@
.lstm_cell_770_matmul_1_readvariableop_resource:
(;
-lstm_cell_770_biasadd_readvariableop_resource:(
identity??$lstm_cell_770/BiasAdd/ReadVariableOp?#lstm_cell_770/MatMul/ReadVariableOp?%lstm_cell_770/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_770/MatMul/ReadVariableOpReadVariableOp,lstm_cell_770_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_770/MatMulMatMulstrided_slice_2:output:0+lstm_cell_770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_770/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_770_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_770/MatMul_1MatMulzeros:output:0-lstm_cell_770/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_770/addAddV2lstm_cell_770/MatMul:product:0 lstm_cell_770/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_770/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_770_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_770/BiasAddBiasAddlstm_cell_770/add:z:0,lstm_cell_770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_770/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_770/splitSplit&lstm_cell_770/split/split_dim:output:0lstm_cell_770/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_770/SigmoidSigmoidlstm_cell_770/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_1Sigmoidlstm_cell_770/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_770/mulMullstm_cell_770/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_770/ReluRelulstm_cell_770/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_1Mullstm_cell_770/Sigmoid:y:0 lstm_cell_770/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_770/add_1AddV2lstm_cell_770/mul:z:0lstm_cell_770/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_770/Sigmoid_2Sigmoidlstm_cell_770/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_770/Relu_1Relulstm_cell_770/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_770/mul_2Mullstm_cell_770/Sigmoid_2:y:0"lstm_cell_770/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_770_matmul_readvariableop_resource.lstm_cell_770_matmul_1_readvariableop_resource-lstm_cell_770_biasadd_readvariableop_resource*
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
while_body_4661360*
condR
while_cond_4661359*K
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
NoOpNoOp%^lstm_cell_770/BiasAdd/ReadVariableOp$^lstm_cell_770/MatMul/ReadVariableOp&^lstm_cell_770/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_770/BiasAdd/ReadVariableOp$lstm_cell_770/BiasAdd/ReadVariableOp2J
#lstm_cell_770/MatMul/ReadVariableOp#lstm_cell_770/MatMul/ReadVariableOp2N
%lstm_cell_770/MatMul_1/ReadVariableOp%lstm_cell_770/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
+__inference_dense_298_layer_call_fn_4661596

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
F__inference_dense_298_layer_call_and_return_conditional_losses_4658088o
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
while_body_4657686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_768_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_768_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_768_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_768_matmul_readvariableop_resource:	?G
4while_lstm_cell_768_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_768_biasadd_readvariableop_resource:	???*while/lstm_cell_768/BiasAdd/ReadVariableOp?)while/lstm_cell_768/MatMul/ReadVariableOp?+while/lstm_cell_768/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_768/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_768_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_768/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_768_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_768/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_768/addAddV2$while/lstm_cell_768/MatMul:product:0&while/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_768_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_768/BiasAddBiasAddwhile/lstm_cell_768/add:z:02while/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_768/splitSplit,while/lstm_cell_768/split/split_dim:output:0$while/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_768/SigmoidSigmoid"while/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_1Sigmoid"while/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mulMul!while/lstm_cell_768/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_768/ReluRelu"while/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_1Mulwhile/lstm_cell_768/Sigmoid:y:0&while/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/add_1AddV2while/lstm_cell_768/mul:z:0while/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_2Sigmoid"while/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_768/Relu_1Reluwhile/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_2Mul!while/lstm_cell_768/Sigmoid_2:y:0(while/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_768/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_768/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_768/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_768/BiasAdd/ReadVariableOp*^while/lstm_cell_768/MatMul/ReadVariableOp,^while/lstm_cell_768/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_768_biasadd_readvariableop_resource5while_lstm_cell_768_biasadd_readvariableop_resource_0"n
4while_lstm_cell_768_matmul_1_readvariableop_resource6while_lstm_cell_768_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_768_matmul_readvariableop_resource4while_lstm_cell_768_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_768/BiasAdd/ReadVariableOp*while/lstm_cell_768/BiasAdd/ReadVariableOp2V
)while/lstm_cell_768/MatMul/ReadVariableOp)while/lstm_cell_768/MatMul/ReadVariableOp2Z
+while/lstm_cell_768/MatMul_1/ReadVariableOp+while/lstm_cell_768/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_894_layer_call_fn_4659761
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4656912|
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4660212

inputs?
,lstm_cell_768_matmul_readvariableop_resource:	?A
.lstm_cell_768_matmul_1_readvariableop_resource:	d?<
-lstm_cell_768_biasadd_readvariableop_resource:	?
identity??$lstm_cell_768/BiasAdd/ReadVariableOp?#lstm_cell_768/MatMul/ReadVariableOp?%lstm_cell_768/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_768/MatMul/ReadVariableOpReadVariableOp,lstm_cell_768_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_768/MatMulMatMulstrided_slice_2:output:0+lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_768_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_768/MatMul_1MatMulzeros:output:0-lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_768/addAddV2lstm_cell_768/MatMul:product:0 lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_768_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_768/BiasAddBiasAddlstm_cell_768/add:z:0,lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_768/splitSplit&lstm_cell_768/split/split_dim:output:0lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_768/SigmoidSigmoidlstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_1Sigmoidlstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_768/mulMullstm_cell_768/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_768/ReluRelulstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_1Mullstm_cell_768/Sigmoid:y:0 lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_768/add_1AddV2lstm_cell_768/mul:z:0lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_2Sigmoidlstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_768/Relu_1Relulstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_2Mullstm_cell_768/Sigmoid_2:y:0"lstm_cell_768/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_768_matmul_readvariableop_resource.lstm_cell_768_matmul_1_readvariableop_resource-lstm_cell_768_biasadd_readvariableop_resource*
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
while_body_4660128*
condR
while_cond_4660127*K
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
NoOpNoOp%^lstm_cell_768/BiasAdd/ReadVariableOp$^lstm_cell_768/MatMul/ReadVariableOp&^lstm_cell_768/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_768/BiasAdd/ReadVariableOp$lstm_cell_768/BiasAdd/ReadVariableOp2J
#lstm_cell_768/MatMul/ReadVariableOp#lstm_cell_768/MatMul/ReadVariableOp2N
%lstm_cell_768/MatMul_1/ReadVariableOp%lstm_cell_768/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658766
lstm_894_input#
lstm_894_4658739:	?#
lstm_894_4658741:	d?
lstm_894_4658743:	?#
lstm_895_4658746:	d?#
lstm_895_4658748:	2?
lstm_895_4658750:	?"
lstm_896_4658753:2("
lstm_896_4658755:
(
lstm_896_4658757:(#
dense_298_4658760:

dense_298_4658762:
identity??!dense_298/StatefulPartitionedCall? lstm_894/StatefulPartitionedCall? lstm_895/StatefulPartitionedCall? lstm_896/StatefulPartitionedCall?
 lstm_894/StatefulPartitionedCallStatefulPartitionedCalllstm_894_inputlstm_894_4658739lstm_894_4658741lstm_894_4658743*
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4657770?
 lstm_895/StatefulPartitionedCallStatefulPartitionedCall)lstm_894/StatefulPartitionedCall:output:0lstm_895_4658746lstm_895_4658748lstm_895_4658750*
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4657920?
 lstm_896/StatefulPartitionedCallStatefulPartitionedCall)lstm_895/StatefulPartitionedCall:output:0lstm_896_4658753lstm_896_4658755lstm_896_4658757*
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4658070?
!dense_298/StatefulPartitionedCallStatefulPartitionedCall)lstm_896/StatefulPartitionedCall:output:0dense_298_4658760dense_298_4658762*
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
F__inference_dense_298_layer_call_and_return_conditional_losses_4658088y
IdentityIdentity*dense_298/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_298/StatefulPartitionedCall!^lstm_894/StatefulPartitionedCall!^lstm_895/StatefulPartitionedCall!^lstm_896/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_298/StatefulPartitionedCall!dense_298/StatefulPartitionedCall2D
 lstm_894/StatefulPartitionedCall lstm_894/StatefulPartitionedCall2D
 lstm_895/StatefulPartitionedCall lstm_895/StatefulPartitionedCall2D
 lstm_896/StatefulPartitionedCall lstm_896/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_894_input
?
?
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4657484

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
?
?
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658684

inputs#
lstm_894_4658657:	?#
lstm_894_4658659:	d?
lstm_894_4658661:	?#
lstm_895_4658664:	d?#
lstm_895_4658666:	2?
lstm_895_4658668:	?"
lstm_896_4658671:2("
lstm_896_4658673:
(
lstm_896_4658675:(#
dense_298_4658678:

dense_298_4658680:
identity??!dense_298/StatefulPartitionedCall? lstm_894/StatefulPartitionedCall? lstm_895/StatefulPartitionedCall? lstm_896/StatefulPartitionedCall?
 lstm_894/StatefulPartitionedCallStatefulPartitionedCallinputslstm_894_4658657lstm_894_4658659lstm_894_4658661*
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4658616?
 lstm_895/StatefulPartitionedCallStatefulPartitionedCall)lstm_894/StatefulPartitionedCall:output:0lstm_895_4658664lstm_895_4658666lstm_895_4658668*
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4658451?
 lstm_896/StatefulPartitionedCallStatefulPartitionedCall)lstm_895/StatefulPartitionedCall:output:0lstm_896_4658671lstm_896_4658673lstm_896_4658675*
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4658286?
!dense_298/StatefulPartitionedCallStatefulPartitionedCall)lstm_896/StatefulPartitionedCall:output:0dense_298_4658678dense_298_4658680*
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
F__inference_dense_298_layer_call_and_return_conditional_losses_4658088y
IdentityIdentity*dense_298/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_298/StatefulPartitionedCall!^lstm_894/StatefulPartitionedCall!^lstm_895/StatefulPartitionedCall!^lstm_896/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_298/StatefulPartitionedCall!dense_298/StatefulPartitionedCall2D
 lstm_894/StatefulPartitionedCall lstm_894/StatefulPartitionedCall2D
 lstm_895/StatefulPartitionedCall lstm_895/StatefulPartitionedCall2D
 lstm_896/StatefulPartitionedCall lstm_896/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_895_while_cond_4659082.
*lstm_895_while_lstm_895_while_loop_counter4
0lstm_895_while_lstm_895_while_maximum_iterations
lstm_895_while_placeholder 
lstm_895_while_placeholder_1 
lstm_895_while_placeholder_2 
lstm_895_while_placeholder_30
,lstm_895_while_less_lstm_895_strided_slice_1G
Clstm_895_while_lstm_895_while_cond_4659082___redundant_placeholder0G
Clstm_895_while_lstm_895_while_cond_4659082___redundant_placeholder1G
Clstm_895_while_lstm_895_while_cond_4659082___redundant_placeholder2G
Clstm_895_while_lstm_895_while_cond_4659082___redundant_placeholder3
lstm_895_while_identity
?
lstm_895/while/LessLesslstm_895_while_placeholder,lstm_895_while_less_lstm_895_strided_slice_1*
T0*
_output_shapes
: ]
lstm_895/while/IdentityIdentitylstm_895/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_895_while_identity lstm_895/while/Identity:output:0*(
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
while_cond_4656842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4656842___redundant_placeholder05
1while_while_cond_4656842___redundant_placeholder15
1while_while_cond_4656842___redundant_placeholder25
1while_while_cond_4656842___redundant_placeholder3
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4659926
inputs_0?
,lstm_cell_768_matmul_readvariableop_resource:	?A
.lstm_cell_768_matmul_1_readvariableop_resource:	d?<
-lstm_cell_768_biasadd_readvariableop_resource:	?
identity??$lstm_cell_768/BiasAdd/ReadVariableOp?#lstm_cell_768/MatMul/ReadVariableOp?%lstm_cell_768/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_768/MatMul/ReadVariableOpReadVariableOp,lstm_cell_768_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_768/MatMulMatMulstrided_slice_2:output:0+lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_768_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_768/MatMul_1MatMulzeros:output:0-lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_768/addAddV2lstm_cell_768/MatMul:product:0 lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_768_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_768/BiasAddBiasAddlstm_cell_768/add:z:0,lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_768/splitSplit&lstm_cell_768/split/split_dim:output:0lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_768/SigmoidSigmoidlstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_1Sigmoidlstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_768/mulMullstm_cell_768/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_768/ReluRelulstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_1Mullstm_cell_768/Sigmoid:y:0 lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_768/add_1AddV2lstm_cell_768/mul:z:0lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_2Sigmoidlstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_768/Relu_1Relulstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_2Mullstm_cell_768/Sigmoid_2:y:0"lstm_cell_768/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_768_matmul_readvariableop_resource.lstm_cell_768_matmul_1_readvariableop_resource-lstm_cell_768_biasadd_readvariableop_resource*
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
while_body_4659842*
condR
while_cond_4659841*K
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
NoOpNoOp%^lstm_cell_768/BiasAdd/ReadVariableOp$^lstm_cell_768/MatMul/ReadVariableOp&^lstm_cell_768/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_768/BiasAdd/ReadVariableOp$lstm_cell_768/BiasAdd/ReadVariableOp2J
#lstm_cell_768/MatMul/ReadVariableOp#lstm_cell_768/MatMul/ReadVariableOp2N
%lstm_cell_768/MatMul_1/ReadVariableOp%lstm_cell_768/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_895_while_body_4659510.
*lstm_895_while_lstm_895_while_loop_counter4
0lstm_895_while_lstm_895_while_maximum_iterations
lstm_895_while_placeholder 
lstm_895_while_placeholder_1 
lstm_895_while_placeholder_2 
lstm_895_while_placeholder_3-
)lstm_895_while_lstm_895_strided_slice_1_0i
elstm_895_while_tensorarrayv2read_tensorlistgetitem_lstm_895_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_895_while_lstm_cell_769_matmul_readvariableop_resource_0:	d?R
?lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource_0:	2?M
>lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource_0:	?
lstm_895_while_identity
lstm_895_while_identity_1
lstm_895_while_identity_2
lstm_895_while_identity_3
lstm_895_while_identity_4
lstm_895_while_identity_5+
'lstm_895_while_lstm_895_strided_slice_1g
clstm_895_while_tensorarrayv2read_tensorlistgetitem_lstm_895_tensorarrayunstack_tensorlistfromtensorN
;lstm_895_while_lstm_cell_769_matmul_readvariableop_resource:	d?P
=lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource:	2?K
<lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource:	???3lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp?2lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp?4lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp?
@lstm_895/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_895/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_895_while_tensorarrayv2read_tensorlistgetitem_lstm_895_tensorarrayunstack_tensorlistfromtensor_0lstm_895_while_placeholderIlstm_895/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_895/while/lstm_cell_769/MatMul/ReadVariableOpReadVariableOp=lstm_895_while_lstm_cell_769_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_895/while/lstm_cell_769/MatMulMatMul9lstm_895/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp?lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_895/while/lstm_cell_769/MatMul_1MatMullstm_895_while_placeholder_2<lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_895/while/lstm_cell_769/addAddV2-lstm_895/while/lstm_cell_769/MatMul:product:0/lstm_895/while/lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp>lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_895/while/lstm_cell_769/BiasAddBiasAdd$lstm_895/while/lstm_cell_769/add:z:0;lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_895/while/lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_895/while/lstm_cell_769/splitSplit5lstm_895/while/lstm_cell_769/split/split_dim:output:0-lstm_895/while/lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_895/while/lstm_cell_769/SigmoidSigmoid+lstm_895/while/lstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_895/while/lstm_cell_769/Sigmoid_1Sigmoid+lstm_895/while/lstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_895/while/lstm_cell_769/mulMul*lstm_895/while/lstm_cell_769/Sigmoid_1:y:0lstm_895_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_895/while/lstm_cell_769/ReluRelu+lstm_895/while/lstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_895/while/lstm_cell_769/mul_1Mul(lstm_895/while/lstm_cell_769/Sigmoid:y:0/lstm_895/while/lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_895/while/lstm_cell_769/add_1AddV2$lstm_895/while/lstm_cell_769/mul:z:0&lstm_895/while/lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_895/while/lstm_cell_769/Sigmoid_2Sigmoid+lstm_895/while/lstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_895/while/lstm_cell_769/Relu_1Relu&lstm_895/while/lstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_895/while/lstm_cell_769/mul_2Mul*lstm_895/while/lstm_cell_769/Sigmoid_2:y:01lstm_895/while/lstm_cell_769/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_895/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_895_while_placeholder_1lstm_895_while_placeholder&lstm_895/while/lstm_cell_769/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_895/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_895/while/addAddV2lstm_895_while_placeholderlstm_895/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_895/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_895/while/add_1AddV2*lstm_895_while_lstm_895_while_loop_counterlstm_895/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_895/while/IdentityIdentitylstm_895/while/add_1:z:0^lstm_895/while/NoOp*
T0*
_output_shapes
: ?
lstm_895/while/Identity_1Identity0lstm_895_while_lstm_895_while_maximum_iterations^lstm_895/while/NoOp*
T0*
_output_shapes
: t
lstm_895/while/Identity_2Identitylstm_895/while/add:z:0^lstm_895/while/NoOp*
T0*
_output_shapes
: ?
lstm_895/while/Identity_3IdentityClstm_895/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_895/while/NoOp*
T0*
_output_shapes
: ?
lstm_895/while/Identity_4Identity&lstm_895/while/lstm_cell_769/mul_2:z:0^lstm_895/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_895/while/Identity_5Identity&lstm_895/while/lstm_cell_769/add_1:z:0^lstm_895/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_895/while/NoOpNoOp4^lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp3^lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp5^lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_895_while_identity lstm_895/while/Identity:output:0"?
lstm_895_while_identity_1"lstm_895/while/Identity_1:output:0"?
lstm_895_while_identity_2"lstm_895/while/Identity_2:output:0"?
lstm_895_while_identity_3"lstm_895/while/Identity_3:output:0"?
lstm_895_while_identity_4"lstm_895/while/Identity_4:output:0"?
lstm_895_while_identity_5"lstm_895/while/Identity_5:output:0"T
'lstm_895_while_lstm_895_strided_slice_1)lstm_895_while_lstm_895_strided_slice_1_0"~
<lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource>lstm_895_while_lstm_cell_769_biasadd_readvariableop_resource_0"?
=lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource?lstm_895_while_lstm_cell_769_matmul_1_readvariableop_resource_0"|
;lstm_895_while_lstm_cell_769_matmul_readvariableop_resource=lstm_895_while_lstm_cell_769_matmul_readvariableop_resource_0"?
clstm_895_while_tensorarrayv2read_tensorlistgetitem_lstm_895_tensorarrayunstack_tensorlistfromtensorelstm_895_while_tensorarrayv2read_tensorlistgetitem_lstm_895_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp3lstm_895/while/lstm_cell_769/BiasAdd/ReadVariableOp2h
2lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp2lstm_895/while/lstm_cell_769/MatMul/ReadVariableOp2l
4lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp4lstm_895/while/lstm_cell_769/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_4662043
file_prefix/
+savev2_dense_298_kernel_read_readvariableop-
)savev2_dense_298_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_894_lstm_cell_894_kernel_read_readvariableopF
Bsavev2_lstm_894_lstm_cell_894_recurrent_kernel_read_readvariableop:
6savev2_lstm_894_lstm_cell_894_bias_read_readvariableop<
8savev2_lstm_895_lstm_cell_895_kernel_read_readvariableopF
Bsavev2_lstm_895_lstm_cell_895_recurrent_kernel_read_readvariableop:
6savev2_lstm_895_lstm_cell_895_bias_read_readvariableop<
8savev2_lstm_896_lstm_cell_896_kernel_read_readvariableopF
Bsavev2_lstm_896_lstm_cell_896_recurrent_kernel_read_readvariableop:
6savev2_lstm_896_lstm_cell_896_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_298_kernel_m_read_readvariableop4
0savev2_adam_dense_298_bias_m_read_readvariableopC
?savev2_adam_lstm_894_lstm_cell_894_kernel_m_read_readvariableopM
Isavev2_adam_lstm_894_lstm_cell_894_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_894_lstm_cell_894_bias_m_read_readvariableopC
?savev2_adam_lstm_895_lstm_cell_895_kernel_m_read_readvariableopM
Isavev2_adam_lstm_895_lstm_cell_895_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_895_lstm_cell_895_bias_m_read_readvariableopC
?savev2_adam_lstm_896_lstm_cell_896_kernel_m_read_readvariableopM
Isavev2_adam_lstm_896_lstm_cell_896_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_896_lstm_cell_896_bias_m_read_readvariableop6
2savev2_adam_dense_298_kernel_v_read_readvariableop4
0savev2_adam_dense_298_bias_v_read_readvariableopC
?savev2_adam_lstm_894_lstm_cell_894_kernel_v_read_readvariableopM
Isavev2_adam_lstm_894_lstm_cell_894_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_894_lstm_cell_894_bias_v_read_readvariableopC
?savev2_adam_lstm_895_lstm_cell_895_kernel_v_read_readvariableopM
Isavev2_adam_lstm_895_lstm_cell_895_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_895_lstm_cell_895_bias_v_read_readvariableopC
?savev2_adam_lstm_896_lstm_cell_896_kernel_v_read_readvariableopM
Isavev2_adam_lstm_896_lstm_cell_896_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_896_lstm_cell_896_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_298_kernel_read_readvariableop)savev2_dense_298_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_894_lstm_cell_894_kernel_read_readvariableopBsavev2_lstm_894_lstm_cell_894_recurrent_kernel_read_readvariableop6savev2_lstm_894_lstm_cell_894_bias_read_readvariableop8savev2_lstm_895_lstm_cell_895_kernel_read_readvariableopBsavev2_lstm_895_lstm_cell_895_recurrent_kernel_read_readvariableop6savev2_lstm_895_lstm_cell_895_bias_read_readvariableop8savev2_lstm_896_lstm_cell_896_kernel_read_readvariableopBsavev2_lstm_896_lstm_cell_896_recurrent_kernel_read_readvariableop6savev2_lstm_896_lstm_cell_896_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_298_kernel_m_read_readvariableop0savev2_adam_dense_298_bias_m_read_readvariableop?savev2_adam_lstm_894_lstm_cell_894_kernel_m_read_readvariableopIsavev2_adam_lstm_894_lstm_cell_894_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_894_lstm_cell_894_bias_m_read_readvariableop?savev2_adam_lstm_895_lstm_cell_895_kernel_m_read_readvariableopIsavev2_adam_lstm_895_lstm_cell_895_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_895_lstm_cell_895_bias_m_read_readvariableop?savev2_adam_lstm_896_lstm_cell_896_kernel_m_read_readvariableopIsavev2_adam_lstm_896_lstm_cell_896_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_896_lstm_cell_896_bias_m_read_readvariableop2savev2_adam_dense_298_kernel_v_read_readvariableop0savev2_adam_dense_298_bias_v_read_readvariableop?savev2_adam_lstm_894_lstm_cell_894_kernel_v_read_readvariableopIsavev2_adam_lstm_894_lstm_cell_894_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_894_lstm_cell_894_bias_v_read_readvariableop?savev2_adam_lstm_895_lstm_cell_895_kernel_v_read_readvariableopIsavev2_adam_lstm_895_lstm_cell_895_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_895_lstm_cell_895_bias_v_read_readvariableop?savev2_adam_lstm_896_lstm_cell_896_kernel_v_read_readvariableopIsavev2_adam_lstm_896_lstm_cell_896_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_896_lstm_cell_896_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?8
?
E__inference_lstm_895_layer_call_and_return_conditional_losses_4657071

inputs(
lstm_cell_769_4656989:	d?(
lstm_cell_769_4656991:	2?$
lstm_cell_769_4656993:	?
identity??%lstm_cell_769/StatefulPartitionedCall?while;
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
%lstm_cell_769/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_769_4656989lstm_cell_769_4656991lstm_cell_769_4656993*
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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4656988n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_769_4656989lstm_cell_769_4656991lstm_cell_769_4656993*
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
while_body_4657002*
condR
while_cond_4657001*K
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
NoOpNoOp&^lstm_cell_769/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_769/StatefulPartitionedCall%lstm_cell_769/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4657542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4657542___redundant_placeholder05
1while_while_cond_4657542___redundant_placeholder15
1while_while_cond_4657542___redundant_placeholder25
1while_while_cond_4657542___redundant_placeholder3
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
lstm_896_while_cond_4659648.
*lstm_896_while_lstm_896_while_loop_counter4
0lstm_896_while_lstm_896_while_maximum_iterations
lstm_896_while_placeholder 
lstm_896_while_placeholder_1 
lstm_896_while_placeholder_2 
lstm_896_while_placeholder_30
,lstm_896_while_less_lstm_896_strided_slice_1G
Clstm_896_while_lstm_896_while_cond_4659648___redundant_placeholder0G
Clstm_896_while_lstm_896_while_cond_4659648___redundant_placeholder1G
Clstm_896_while_lstm_896_while_cond_4659648___redundant_placeholder2G
Clstm_896_while_lstm_896_while_cond_4659648___redundant_placeholder3
lstm_896_while_identity
?
lstm_896/while/LessLesslstm_896_while_placeholder,lstm_896_while_less_lstm_896_strided_slice_1*
T0*
_output_shapes
: ]
lstm_896/while/IdentityIdentitylstm_896/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_896_while_identity lstm_896/while/Identity:output:0*(
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
*sequential_298_lstm_895_while_cond_4656341L
Hsequential_298_lstm_895_while_sequential_298_lstm_895_while_loop_counterR
Nsequential_298_lstm_895_while_sequential_298_lstm_895_while_maximum_iterations-
)sequential_298_lstm_895_while_placeholder/
+sequential_298_lstm_895_while_placeholder_1/
+sequential_298_lstm_895_while_placeholder_2/
+sequential_298_lstm_895_while_placeholder_3N
Jsequential_298_lstm_895_while_less_sequential_298_lstm_895_strided_slice_1e
asequential_298_lstm_895_while_sequential_298_lstm_895_while_cond_4656341___redundant_placeholder0e
asequential_298_lstm_895_while_sequential_298_lstm_895_while_cond_4656341___redundant_placeholder1e
asequential_298_lstm_895_while_sequential_298_lstm_895_while_cond_4656341___redundant_placeholder2e
asequential_298_lstm_895_while_sequential_298_lstm_895_while_cond_4656341___redundant_placeholder3*
&sequential_298_lstm_895_while_identity
?
"sequential_298/lstm_895/while/LessLess)sequential_298_lstm_895_while_placeholderJsequential_298_lstm_895_while_less_sequential_298_lstm_895_strided_slice_1*
T0*
_output_shapes
: {
&sequential_298/lstm_895/while/IdentityIdentity&sequential_298/lstm_895/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_298_lstm_895_while_identity/sequential_298/lstm_895/while/Identity:output:0*(
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4657920

inputs?
,lstm_cell_769_matmul_readvariableop_resource:	d?A
.lstm_cell_769_matmul_1_readvariableop_resource:	2?<
-lstm_cell_769_biasadd_readvariableop_resource:	?
identity??$lstm_cell_769/BiasAdd/ReadVariableOp?#lstm_cell_769/MatMul/ReadVariableOp?%lstm_cell_769/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_769/MatMul/ReadVariableOpReadVariableOp,lstm_cell_769_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_769/MatMulMatMulstrided_slice_2:output:0+lstm_cell_769/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_769/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_769_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_769/MatMul_1MatMulzeros:output:0-lstm_cell_769/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_769/addAddV2lstm_cell_769/MatMul:product:0 lstm_cell_769/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_769/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_769_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_769/BiasAddBiasAddlstm_cell_769/add:z:0,lstm_cell_769/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_769/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_769/splitSplit&lstm_cell_769/split/split_dim:output:0lstm_cell_769/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_769/SigmoidSigmoidlstm_cell_769/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_1Sigmoidlstm_cell_769/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_769/mulMullstm_cell_769/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_769/ReluRelulstm_cell_769/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_1Mullstm_cell_769/Sigmoid:y:0 lstm_cell_769/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_769/add_1AddV2lstm_cell_769/mul:z:0lstm_cell_769/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_769/Sigmoid_2Sigmoidlstm_cell_769/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_769/Relu_1Relulstm_cell_769/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_769/mul_2Mullstm_cell_769/Sigmoid_2:y:0"lstm_cell_769/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_769_matmul_readvariableop_resource.lstm_cell_769_matmul_1_readvariableop_resource-lstm_cell_769_biasadd_readvariableop_resource*
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
while_body_4657836*
condR
while_cond_4657835*K
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
NoOpNoOp%^lstm_cell_769/BiasAdd/ReadVariableOp$^lstm_cell_769/MatMul/ReadVariableOp&^lstm_cell_769/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_769/BiasAdd/ReadVariableOp$lstm_cell_769/BiasAdd/ReadVariableOp2J
#lstm_cell_769/MatMul/ReadVariableOp#lstm_cell_769/MatMul/ReadVariableOp2N
%lstm_cell_769/MatMul_1/ReadVariableOp%lstm_cell_769/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_894_layer_call_and_return_conditional_losses_4658616

inputs?
,lstm_cell_768_matmul_readvariableop_resource:	?A
.lstm_cell_768_matmul_1_readvariableop_resource:	d?<
-lstm_cell_768_biasadd_readvariableop_resource:	?
identity??$lstm_cell_768/BiasAdd/ReadVariableOp?#lstm_cell_768/MatMul/ReadVariableOp?%lstm_cell_768/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_768/MatMul/ReadVariableOpReadVariableOp,lstm_cell_768_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_768/MatMulMatMulstrided_slice_2:output:0+lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_768_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_768/MatMul_1MatMulzeros:output:0-lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_768/addAddV2lstm_cell_768/MatMul:product:0 lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_768_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_768/BiasAddBiasAddlstm_cell_768/add:z:0,lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_768/splitSplit&lstm_cell_768/split/split_dim:output:0lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_768/SigmoidSigmoidlstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_1Sigmoidlstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_768/mulMullstm_cell_768/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_768/ReluRelulstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_1Mullstm_cell_768/Sigmoid:y:0 lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_768/add_1AddV2lstm_cell_768/mul:z:0lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_768/Sigmoid_2Sigmoidlstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_768/Relu_1Relulstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_768/mul_2Mullstm_cell_768/Sigmoid_2:y:0"lstm_cell_768/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_768_matmul_readvariableop_resource.lstm_cell_768_matmul_1_readvariableop_resource-lstm_cell_768_biasadd_readvariableop_resource*
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
while_body_4658532*
condR
while_cond_4658531*K
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
NoOpNoOp%^lstm_cell_768/BiasAdd/ReadVariableOp$^lstm_cell_768/MatMul/ReadVariableOp&^lstm_cell_768/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_768/BiasAdd/ReadVariableOp$lstm_cell_768/BiasAdd/ReadVariableOp2J
#lstm_cell_768/MatMul/ReadVariableOp#lstm_cell_768/MatMul/ReadVariableOp2N
%lstm_cell_768/MatMul_1/ReadVariableOp%lstm_cell_768/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4658532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_768_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_768_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_768_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_768_matmul_readvariableop_resource:	?G
4while_lstm_cell_768_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_768_biasadd_readvariableop_resource:	???*while/lstm_cell_768/BiasAdd/ReadVariableOp?)while/lstm_cell_768/MatMul/ReadVariableOp?+while/lstm_cell_768/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_768/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_768_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_768/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_768/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_768/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_768_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_768/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_768/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_768/addAddV2$while/lstm_cell_768/MatMul:product:0&while/lstm_cell_768/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_768/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_768_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_768/BiasAddBiasAddwhile/lstm_cell_768/add:z:02while/lstm_cell_768/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_768/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_768/splitSplit,while/lstm_cell_768/split/split_dim:output:0$while/lstm_cell_768/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_768/SigmoidSigmoid"while/lstm_cell_768/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_1Sigmoid"while/lstm_cell_768/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mulMul!while/lstm_cell_768/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_768/ReluRelu"while/lstm_cell_768/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_1Mulwhile/lstm_cell_768/Sigmoid:y:0&while/lstm_cell_768/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/add_1AddV2while/lstm_cell_768/mul:z:0while/lstm_cell_768/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_768/Sigmoid_2Sigmoid"while/lstm_cell_768/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_768/Relu_1Reluwhile/lstm_cell_768/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_768/mul_2Mul!while/lstm_cell_768/Sigmoid_2:y:0(while/lstm_cell_768/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_768/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_768/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_768/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_768/BiasAdd/ReadVariableOp*^while/lstm_cell_768/MatMul/ReadVariableOp,^while/lstm_cell_768/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_768_biasadd_readvariableop_resource5while_lstm_cell_768_biasadd_readvariableop_resource_0"n
4while_lstm_cell_768_matmul_1_readvariableop_resource6while_lstm_cell_768_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_768_matmul_readvariableop_resource4while_lstm_cell_768_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_768/BiasAdd/ReadVariableOp*while/lstm_cell_768/BiasAdd/ReadVariableOp2V
)while/lstm_cell_768/MatMul/ReadVariableOp)while/lstm_cell_768/MatMul/ReadVariableOp2Z
+while/lstm_cell_768/MatMul_1/ReadVariableOp+while/lstm_cell_768/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_894_input;
 serving_default_lstm_894_input:0?????????=
	dense_2980
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
2dense_298/kernel
:2dense_298/bias
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
0:.	?2lstm_894/lstm_cell_894/kernel
::8	d?2'lstm_894/lstm_cell_894/recurrent_kernel
*:(?2lstm_894/lstm_cell_894/bias
0:.	d?2lstm_895/lstm_cell_895/kernel
::8	2?2'lstm_895/lstm_cell_895/recurrent_kernel
*:(?2lstm_895/lstm_cell_895/bias
/:-2(2lstm_896/lstm_cell_896/kernel
9:7
(2'lstm_896/lstm_cell_896/recurrent_kernel
):'(2lstm_896/lstm_cell_896/bias
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
2Adam/dense_298/kernel/m
!:2Adam/dense_298/bias/m
5:3	?2$Adam/lstm_894/lstm_cell_894/kernel/m
?:=	d?2.Adam/lstm_894/lstm_cell_894/recurrent_kernel/m
/:-?2"Adam/lstm_894/lstm_cell_894/bias/m
5:3	d?2$Adam/lstm_895/lstm_cell_895/kernel/m
?:=	2?2.Adam/lstm_895/lstm_cell_895/recurrent_kernel/m
/:-?2"Adam/lstm_895/lstm_cell_895/bias/m
4:22(2$Adam/lstm_896/lstm_cell_896/kernel/m
>:<
(2.Adam/lstm_896/lstm_cell_896/recurrent_kernel/m
.:,(2"Adam/lstm_896/lstm_cell_896/bias/m
':%
2Adam/dense_298/kernel/v
!:2Adam/dense_298/bias/v
5:3	?2$Adam/lstm_894/lstm_cell_894/kernel/v
?:=	d?2.Adam/lstm_894/lstm_cell_894/recurrent_kernel/v
/:-?2"Adam/lstm_894/lstm_cell_894/bias/v
5:3	d?2$Adam/lstm_895/lstm_cell_895/kernel/v
?:=	2?2.Adam/lstm_895/lstm_cell_895/recurrent_kernel/v
/:-?2"Adam/lstm_895/lstm_cell_895/bias/v
4:22(2$Adam/lstm_896/lstm_cell_896/kernel/v
>:<
(2.Adam/lstm_896/lstm_cell_896/recurrent_kernel/v
.:,(2"Adam/lstm_896/lstm_cell_896/bias/v
?2?
0__inference_sequential_298_layer_call_fn_4658120
0__inference_sequential_298_layer_call_fn_4658858
0__inference_sequential_298_layer_call_fn_4658885
0__inference_sequential_298_layer_call_fn_4658736?
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
K__inference_sequential_298_layer_call_and_return_conditional_losses_4659312
K__inference_sequential_298_layer_call_and_return_conditional_losses_4659739
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658766
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658796?
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
"__inference__wrapped_model_4656571lstm_894_input"?
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
*__inference_lstm_894_layer_call_fn_4659750
*__inference_lstm_894_layer_call_fn_4659761
*__inference_lstm_894_layer_call_fn_4659772
*__inference_lstm_894_layer_call_fn_4659783?
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4659926
E__inference_lstm_894_layer_call_and_return_conditional_losses_4660069
E__inference_lstm_894_layer_call_and_return_conditional_losses_4660212
E__inference_lstm_894_layer_call_and_return_conditional_losses_4660355?
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
*__inference_lstm_895_layer_call_fn_4660366
*__inference_lstm_895_layer_call_fn_4660377
*__inference_lstm_895_layer_call_fn_4660388
*__inference_lstm_895_layer_call_fn_4660399?
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660542
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660685
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660828
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660971?
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
*__inference_lstm_896_layer_call_fn_4660982
*__inference_lstm_896_layer_call_fn_4660993
*__inference_lstm_896_layer_call_fn_4661004
*__inference_lstm_896_layer_call_fn_4661015?
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661158
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661301
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661444
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661587?
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
+__inference_dense_298_layer_call_fn_4661596?
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
F__inference_dense_298_layer_call_and_return_conditional_losses_4661606?
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
%__inference_signature_wrapper_4658831lstm_894_input"?
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
/__inference_lstm_cell_768_layer_call_fn_4661623
/__inference_lstm_cell_768_layer_call_fn_4661640?
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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4661672
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4661704?
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
/__inference_lstm_cell_769_layer_call_fn_4661721
/__inference_lstm_cell_769_layer_call_fn_4661738?
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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4661770
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4661802?
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
/__inference_lstm_cell_770_layer_call_fn_4661819
/__inference_lstm_cell_770_layer_call_fn_4661836?
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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4661868
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4661900?
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
"__inference__wrapped_model_4656571?-./012345!";?8
1?.
,?)
lstm_894_input?????????
? "5?2
0
	dense_298#? 
	dense_298??????????
F__inference_dense_298_layer_call_and_return_conditional_losses_4661606\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_298_layer_call_fn_4661596O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_894_layer_call_and_return_conditional_losses_4659926?-./O?L
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4660069?-./O?L
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4660212q-./??<
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
E__inference_lstm_894_layer_call_and_return_conditional_losses_4660355q-./??<
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
*__inference_lstm_894_layer_call_fn_4659750}-./O?L
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
*__inference_lstm_894_layer_call_fn_4659761}-./O?L
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
*__inference_lstm_894_layer_call_fn_4659772d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_894_layer_call_fn_4659783d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660542?012O?L
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660685?012O?L
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660828q012??<
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
E__inference_lstm_895_layer_call_and_return_conditional_losses_4660971q012??<
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
*__inference_lstm_895_layer_call_fn_4660366}012O?L
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
*__inference_lstm_895_layer_call_fn_4660377}012O?L
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
*__inference_lstm_895_layer_call_fn_4660388d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_895_layer_call_fn_4660399d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661158}345O?L
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661301}345O?L
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661444m345??<
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
E__inference_lstm_896_layer_call_and_return_conditional_losses_4661587m345??<
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
*__inference_lstm_896_layer_call_fn_4660982p345O?L
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
*__inference_lstm_896_layer_call_fn_4660993p345O?L
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
*__inference_lstm_896_layer_call_fn_4661004`345??<
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
*__inference_lstm_896_layer_call_fn_4661015`345??<
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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4661672?-./??}
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
J__inference_lstm_cell_768_layer_call_and_return_conditional_losses_4661704?-./??}
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
/__inference_lstm_cell_768_layer_call_fn_4661623?-./??}
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
/__inference_lstm_cell_768_layer_call_fn_4661640?-./??}
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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4661770?012??}
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
J__inference_lstm_cell_769_layer_call_and_return_conditional_losses_4661802?012??}
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
/__inference_lstm_cell_769_layer_call_fn_4661721?012??}
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
/__inference_lstm_cell_769_layer_call_fn_4661738?012??}
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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4661868?345??}
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
J__inference_lstm_cell_770_layer_call_and_return_conditional_losses_4661900?345??}
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
/__inference_lstm_cell_770_layer_call_fn_4661819?345??}
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
/__inference_lstm_cell_770_layer_call_fn_4661836?345??}
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
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658766y-./012345!"C?@
9?6
,?)
lstm_894_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_298_layer_call_and_return_conditional_losses_4658796y-./012345!"C?@
9?6
,?)
lstm_894_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_298_layer_call_and_return_conditional_losses_4659312q-./012345!";?8
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
K__inference_sequential_298_layer_call_and_return_conditional_losses_4659739q-./012345!";?8
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
0__inference_sequential_298_layer_call_fn_4658120l-./012345!"C?@
9?6
,?)
lstm_894_input?????????
p 

 
? "???????????
0__inference_sequential_298_layer_call_fn_4658736l-./012345!"C?@
9?6
,?)
lstm_894_input?????????
p

 
? "???????????
0__inference_sequential_298_layer_call_fn_4658858d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_298_layer_call_fn_4658885d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4658831?-./012345!"M?J
? 
C?@
>
lstm_894_input,?)
lstm_894_input?????????"5?2
0
	dense_298#? 
	dense_298?????????