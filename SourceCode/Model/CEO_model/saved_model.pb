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
dense_112/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_112/kernel
u
$dense_112/kernel/Read/ReadVariableOpReadVariableOpdense_112/kernel*
_output_shapes

:
*
dtype0
t
dense_112/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_112/bias
m
"dense_112/bias/Read/ReadVariableOpReadVariableOpdense_112/bias*
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
lstm_336/lstm_cell_336/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_336/lstm_cell_336/kernel
?
1lstm_336/lstm_cell_336/kernel/Read/ReadVariableOpReadVariableOplstm_336/lstm_cell_336/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_336/lstm_cell_336/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_336/lstm_cell_336/recurrent_kernel
?
;lstm_336/lstm_cell_336/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_336/lstm_cell_336/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_336/lstm_cell_336/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_336/lstm_cell_336/bias
?
/lstm_336/lstm_cell_336/bias/Read/ReadVariableOpReadVariableOplstm_336/lstm_cell_336/bias*
_output_shapes	
:?*
dtype0
?
lstm_337/lstm_cell_337/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_337/lstm_cell_337/kernel
?
1lstm_337/lstm_cell_337/kernel/Read/ReadVariableOpReadVariableOplstm_337/lstm_cell_337/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_337/lstm_cell_337/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_337/lstm_cell_337/recurrent_kernel
?
;lstm_337/lstm_cell_337/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_337/lstm_cell_337/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_337/lstm_cell_337/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_337/lstm_cell_337/bias
?
/lstm_337/lstm_cell_337/bias/Read/ReadVariableOpReadVariableOplstm_337/lstm_cell_337/bias*
_output_shapes	
:?*
dtype0
?
lstm_338/lstm_cell_338/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_338/lstm_cell_338/kernel
?
1lstm_338/lstm_cell_338/kernel/Read/ReadVariableOpReadVariableOplstm_338/lstm_cell_338/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_338/lstm_cell_338/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_338/lstm_cell_338/recurrent_kernel
?
;lstm_338/lstm_cell_338/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_338/lstm_cell_338/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_338/lstm_cell_338/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_338/lstm_cell_338/bias
?
/lstm_338/lstm_cell_338/bias/Read/ReadVariableOpReadVariableOplstm_338/lstm_cell_338/bias*
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
Adam/dense_112/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_112/kernel/m
?
+Adam/dense_112/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_112/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_112/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_112/bias/m
{
)Adam/dense_112/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_112/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_336/lstm_cell_336/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_336/lstm_cell_336/kernel/m
?
8Adam/lstm_336/lstm_cell_336/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_336/lstm_cell_336/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_336/lstm_cell_336/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_336/lstm_cell_336/recurrent_kernel/m
?
BAdam/lstm_336/lstm_cell_336/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_336/lstm_cell_336/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_336/lstm_cell_336/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_336/lstm_cell_336/bias/m
?
6Adam/lstm_336/lstm_cell_336/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_336/lstm_cell_336/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_337/lstm_cell_337/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_337/lstm_cell_337/kernel/m
?
8Adam/lstm_337/lstm_cell_337/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_337/lstm_cell_337/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_337/lstm_cell_337/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_337/lstm_cell_337/recurrent_kernel/m
?
BAdam/lstm_337/lstm_cell_337/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_337/lstm_cell_337/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_337/lstm_cell_337/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_337/lstm_cell_337/bias/m
?
6Adam/lstm_337/lstm_cell_337/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_337/lstm_cell_337/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_338/lstm_cell_338/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_338/lstm_cell_338/kernel/m
?
8Adam/lstm_338/lstm_cell_338/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_338/lstm_cell_338/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_338/lstm_cell_338/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_338/lstm_cell_338/recurrent_kernel/m
?
BAdam/lstm_338/lstm_cell_338/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_338/lstm_cell_338/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_338/lstm_cell_338/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_338/lstm_cell_338/bias/m
?
6Adam/lstm_338/lstm_cell_338/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_338/lstm_cell_338/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_112/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_112/kernel/v
?
+Adam/dense_112/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_112/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_112/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_112/bias/v
{
)Adam/dense_112/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_112/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_336/lstm_cell_336/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_336/lstm_cell_336/kernel/v
?
8Adam/lstm_336/lstm_cell_336/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_336/lstm_cell_336/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_336/lstm_cell_336/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_336/lstm_cell_336/recurrent_kernel/v
?
BAdam/lstm_336/lstm_cell_336/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_336/lstm_cell_336/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_336/lstm_cell_336/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_336/lstm_cell_336/bias/v
?
6Adam/lstm_336/lstm_cell_336/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_336/lstm_cell_336/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_337/lstm_cell_337/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_337/lstm_cell_337/kernel/v
?
8Adam/lstm_337/lstm_cell_337/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_337/lstm_cell_337/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_337/lstm_cell_337/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_337/lstm_cell_337/recurrent_kernel/v
?
BAdam/lstm_337/lstm_cell_337/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_337/lstm_cell_337/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_337/lstm_cell_337/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_337/lstm_cell_337/bias/v
?
6Adam/lstm_337/lstm_cell_337/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_337/lstm_cell_337/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_338/lstm_cell_338/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_338/lstm_cell_338/kernel/v
?
8Adam/lstm_338/lstm_cell_338/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_338/lstm_cell_338/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_338/lstm_cell_338/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_338/lstm_cell_338/recurrent_kernel/v
?
BAdam/lstm_338/lstm_cell_338/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_338/lstm_cell_338/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_338/lstm_cell_338/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_338/lstm_cell_338/bias/v
?
6Adam/lstm_338/lstm_cell_338/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_338/lstm_cell_338/bias/v*
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
VARIABLE_VALUEdense_112/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_112/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_336/lstm_cell_336/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_336/lstm_cell_336/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_336/lstm_cell_336/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_337/lstm_cell_337/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_337/lstm_cell_337/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_337/lstm_cell_337/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_338/lstm_cell_338/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_338/lstm_cell_338/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_338/lstm_cell_338/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_112/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_112/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_336/lstm_cell_336/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_336/lstm_cell_336/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_336/lstm_cell_336/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_337/lstm_cell_337/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_337/lstm_cell_337/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_337/lstm_cell_337/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_338/lstm_cell_338/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_338/lstm_cell_338/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_338/lstm_cell_338/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_112/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_112/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_336/lstm_cell_336/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_336/lstm_cell_336/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_336/lstm_cell_336/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_337/lstm_cell_337/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_337/lstm_cell_337/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_337/lstm_cell_337/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_338/lstm_cell_338/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_338/lstm_cell_338/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_338/lstm_cell_338/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_336_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_336_inputlstm_336/lstm_cell_336/kernel'lstm_336/lstm_cell_336/recurrent_kernellstm_336/lstm_cell_336/biaslstm_337/lstm_cell_337/kernel'lstm_337/lstm_cell_337/recurrent_kernellstm_337/lstm_cell_337/biaslstm_338/lstm_cell_338/kernel'lstm_338/lstm_cell_338/recurrent_kernellstm_338/lstm_cell_338/biasdense_112/kerneldense_112/bias*
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
%__inference_signature_wrapper_3244372
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_112/kernel/Read/ReadVariableOp"dense_112/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_336/lstm_cell_336/kernel/Read/ReadVariableOp;lstm_336/lstm_cell_336/recurrent_kernel/Read/ReadVariableOp/lstm_336/lstm_cell_336/bias/Read/ReadVariableOp1lstm_337/lstm_cell_337/kernel/Read/ReadVariableOp;lstm_337/lstm_cell_337/recurrent_kernel/Read/ReadVariableOp/lstm_337/lstm_cell_337/bias/Read/ReadVariableOp1lstm_338/lstm_cell_338/kernel/Read/ReadVariableOp;lstm_338/lstm_cell_338/recurrent_kernel/Read/ReadVariableOp/lstm_338/lstm_cell_338/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_112/kernel/m/Read/ReadVariableOp)Adam/dense_112/bias/m/Read/ReadVariableOp8Adam/lstm_336/lstm_cell_336/kernel/m/Read/ReadVariableOpBAdam/lstm_336/lstm_cell_336/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_336/lstm_cell_336/bias/m/Read/ReadVariableOp8Adam/lstm_337/lstm_cell_337/kernel/m/Read/ReadVariableOpBAdam/lstm_337/lstm_cell_337/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_337/lstm_cell_337/bias/m/Read/ReadVariableOp8Adam/lstm_338/lstm_cell_338/kernel/m/Read/ReadVariableOpBAdam/lstm_338/lstm_cell_338/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_338/lstm_cell_338/bias/m/Read/ReadVariableOp+Adam/dense_112/kernel/v/Read/ReadVariableOp)Adam/dense_112/bias/v/Read/ReadVariableOp8Adam/lstm_336/lstm_cell_336/kernel/v/Read/ReadVariableOpBAdam/lstm_336/lstm_cell_336/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_336/lstm_cell_336/bias/v/Read/ReadVariableOp8Adam/lstm_337/lstm_cell_337/kernel/v/Read/ReadVariableOpBAdam/lstm_337/lstm_cell_337/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_337/lstm_cell_337/bias/v/Read/ReadVariableOp8Adam/lstm_338/lstm_cell_338/kernel/v/Read/ReadVariableOpBAdam/lstm_338/lstm_cell_338/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_338/lstm_cell_338/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3247584
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_112/kerneldense_112/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_336/lstm_cell_336/kernel'lstm_336/lstm_cell_336/recurrent_kernellstm_336/lstm_cell_336/biaslstm_337/lstm_cell_337/kernel'lstm_337/lstm_cell_337/recurrent_kernellstm_337/lstm_cell_337/biaslstm_338/lstm_cell_338/kernel'lstm_338/lstm_cell_338/recurrent_kernellstm_338/lstm_cell_338/biastotalcountAdam/dense_112/kernel/mAdam/dense_112/bias/m$Adam/lstm_336/lstm_cell_336/kernel/m.Adam/lstm_336/lstm_cell_336/recurrent_kernel/m"Adam/lstm_336/lstm_cell_336/bias/m$Adam/lstm_337/lstm_cell_337/kernel/m.Adam/lstm_337/lstm_cell_337/recurrent_kernel/m"Adam/lstm_337/lstm_cell_337/bias/m$Adam/lstm_338/lstm_cell_338/kernel/m.Adam/lstm_338/lstm_cell_338/recurrent_kernel/m"Adam/lstm_338/lstm_cell_338/bias/mAdam/dense_112/kernel/vAdam/dense_112/bias/v$Adam/lstm_336/lstm_cell_336/kernel/v.Adam/lstm_336/lstm_cell_336/recurrent_kernel/v"Adam/lstm_336/lstm_cell_336/bias/v$Adam/lstm_337/lstm_cell_337/kernel/v.Adam/lstm_337/lstm_cell_337/recurrent_kernel/v"Adam/lstm_337/lstm_cell_337/bias/v$Adam/lstm_338/lstm_cell_338/kernel/v.Adam/lstm_338/lstm_cell_338/recurrent_kernel/v"Adam/lstm_338/lstm_cell_338/bias/v*4
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
#__inference__traced_restore_3247714??+
?J
?
E__inference_lstm_338_layer_call_and_return_conditional_losses_3247128

inputs>
,lstm_cell_536_matmul_readvariableop_resource:2(@
.lstm_cell_536_matmul_1_readvariableop_resource:
(;
-lstm_cell_536_biasadd_readvariableop_resource:(
identity??$lstm_cell_536/BiasAdd/ReadVariableOp?#lstm_cell_536/MatMul/ReadVariableOp?%lstm_cell_536/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_536/MatMul/ReadVariableOpReadVariableOp,lstm_cell_536_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_536/MatMulMatMulstrided_slice_2:output:0+lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_536_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_536/MatMul_1MatMulzeros:output:0-lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_536/addAddV2lstm_cell_536/MatMul:product:0 lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_536_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_536/BiasAddBiasAddlstm_cell_536/add:z:0,lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_536/splitSplit&lstm_cell_536/split/split_dim:output:0lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_536/SigmoidSigmoidlstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_1Sigmoidlstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_536/mulMullstm_cell_536/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_536/ReluRelulstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_1Mullstm_cell_536/Sigmoid:y:0 lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_536/add_1AddV2lstm_cell_536/mul:z:0lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_2Sigmoidlstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_536/Relu_1Relulstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_2Mullstm_cell_536/Sigmoid_2:y:0"lstm_cell_536/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_536_matmul_readvariableop_resource.lstm_cell_536_matmul_1_readvariableop_resource-lstm_cell_536_biasadd_readvariableop_resource*
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
while_body_3247044*
condR
while_cond_3247043*K
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
NoOpNoOp%^lstm_cell_536/BiasAdd/ReadVariableOp$^lstm_cell_536/MatMul/ReadVariableOp&^lstm_cell_536/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_536/BiasAdd/ReadVariableOp$lstm_cell_536/BiasAdd/ReadVariableOp2J
#lstm_cell_536/MatMul/ReadVariableOp#lstm_cell_536/MatMul/ReadVariableOp2N
%lstm_cell_536/MatMul_1/ReadVariableOp%lstm_cell_536/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3247044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_536_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_536_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_536_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_536_matmul_readvariableop_resource:2(F
4while_lstm_cell_536_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_536_biasadd_readvariableop_resource:(??*while/lstm_cell_536/BiasAdd/ReadVariableOp?)while/lstm_cell_536/MatMul/ReadVariableOp?+while/lstm_cell_536/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_536/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_536_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_536/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_536_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_536/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_536/addAddV2$while/lstm_cell_536/MatMul:product:0&while/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_536_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_536/BiasAddBiasAddwhile/lstm_cell_536/add:z:02while/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_536/splitSplit,while/lstm_cell_536/split/split_dim:output:0$while/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_536/SigmoidSigmoid"while/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_1Sigmoid"while/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mulMul!while/lstm_cell_536/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_536/ReluRelu"while/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_1Mulwhile/lstm_cell_536/Sigmoid:y:0&while/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/add_1AddV2while/lstm_cell_536/mul:z:0while/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_2Sigmoid"while/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_536/Relu_1Reluwhile/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_2Mul!while/lstm_cell_536/Sigmoid_2:y:0(while/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_536/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_536/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_536/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_536/BiasAdd/ReadVariableOp*^while/lstm_cell_536/MatMul/ReadVariableOp,^while/lstm_cell_536/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_536_biasadd_readvariableop_resource5while_lstm_cell_536_biasadd_readvariableop_resource_0"n
4while_lstm_cell_536_matmul_1_readvariableop_resource6while_lstm_cell_536_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_536_matmul_readvariableop_resource4while_lstm_cell_536_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_536/BiasAdd/ReadVariableOp*while/lstm_cell_536/BiasAdd/ReadVariableOp2V
)while/lstm_cell_536/MatMul/ReadVariableOp)while/lstm_cell_536/MatMul/ReadVariableOp2Z
+while/lstm_cell_536/MatMul_1/ReadVariableOp+while/lstm_cell_536/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3242179

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
while_cond_3243083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3243083___redundant_placeholder05
1while_while_cond_3243083___redundant_placeholder15
1while_while_cond_3243083___redundant_placeholder25
1while_while_cond_3243083___redundant_placeholder3
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
*__inference_lstm_337_layer_call_fn_3245940

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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3243992s
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
while_cond_3246284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3246284___redundant_placeholder05
1while_while_cond_3246284___redundant_placeholder15
1while_while_cond_3246284___redundant_placeholder25
1while_while_cond_3246284___redundant_placeholder3
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
"__inference__wrapped_model_3242112
lstm_336_inputW
Dsequential_112_lstm_336_lstm_cell_534_matmul_readvariableop_resource:	?Y
Fsequential_112_lstm_336_lstm_cell_534_matmul_1_readvariableop_resource:	d?T
Esequential_112_lstm_336_lstm_cell_534_biasadd_readvariableop_resource:	?W
Dsequential_112_lstm_337_lstm_cell_535_matmul_readvariableop_resource:	d?Y
Fsequential_112_lstm_337_lstm_cell_535_matmul_1_readvariableop_resource:	2?T
Esequential_112_lstm_337_lstm_cell_535_biasadd_readvariableop_resource:	?V
Dsequential_112_lstm_338_lstm_cell_536_matmul_readvariableop_resource:2(X
Fsequential_112_lstm_338_lstm_cell_536_matmul_1_readvariableop_resource:
(S
Esequential_112_lstm_338_lstm_cell_536_biasadd_readvariableop_resource:(I
7sequential_112_dense_112_matmul_readvariableop_resource:
F
8sequential_112_dense_112_biasadd_readvariableop_resource:
identity??/sequential_112/dense_112/BiasAdd/ReadVariableOp?.sequential_112/dense_112/MatMul/ReadVariableOp?<sequential_112/lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp?;sequential_112/lstm_336/lstm_cell_534/MatMul/ReadVariableOp?=sequential_112/lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp?sequential_112/lstm_336/while?<sequential_112/lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp?;sequential_112/lstm_337/lstm_cell_535/MatMul/ReadVariableOp?=sequential_112/lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp?sequential_112/lstm_337/while?<sequential_112/lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp?;sequential_112/lstm_338/lstm_cell_536/MatMul/ReadVariableOp?=sequential_112/lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp?sequential_112/lstm_338/while[
sequential_112/lstm_336/ShapeShapelstm_336_input*
T0*
_output_shapes
:u
+sequential_112/lstm_336/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_112/lstm_336/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_112/lstm_336/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_112/lstm_336/strided_sliceStridedSlice&sequential_112/lstm_336/Shape:output:04sequential_112/lstm_336/strided_slice/stack:output:06sequential_112/lstm_336/strided_slice/stack_1:output:06sequential_112/lstm_336/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_112/lstm_336/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_112/lstm_336/zeros/packedPack.sequential_112/lstm_336/strided_slice:output:0/sequential_112/lstm_336/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_112/lstm_336/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_112/lstm_336/zerosFill-sequential_112/lstm_336/zeros/packed:output:0,sequential_112/lstm_336/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_112/lstm_336/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_112/lstm_336/zeros_1/packedPack.sequential_112/lstm_336/strided_slice:output:01sequential_112/lstm_336/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_112/lstm_336/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_112/lstm_336/zeros_1Fill/sequential_112/lstm_336/zeros_1/packed:output:0.sequential_112/lstm_336/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_112/lstm_336/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_112/lstm_336/transpose	Transposelstm_336_input/sequential_112/lstm_336/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_112/lstm_336/Shape_1Shape%sequential_112/lstm_336/transpose:y:0*
T0*
_output_shapes
:w
-sequential_112/lstm_336/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_112/lstm_336/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_112/lstm_336/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_112/lstm_336/strided_slice_1StridedSlice(sequential_112/lstm_336/Shape_1:output:06sequential_112/lstm_336/strided_slice_1/stack:output:08sequential_112/lstm_336/strided_slice_1/stack_1:output:08sequential_112/lstm_336/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_112/lstm_336/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_112/lstm_336/TensorArrayV2TensorListReserve<sequential_112/lstm_336/TensorArrayV2/element_shape:output:00sequential_112/lstm_336/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_112/lstm_336/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_112/lstm_336/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_112/lstm_336/transpose:y:0Vsequential_112/lstm_336/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_112/lstm_336/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_112/lstm_336/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_112/lstm_336/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_112/lstm_336/strided_slice_2StridedSlice%sequential_112/lstm_336/transpose:y:06sequential_112/lstm_336/strided_slice_2/stack:output:08sequential_112/lstm_336/strided_slice_2/stack_1:output:08sequential_112/lstm_336/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_112/lstm_336/lstm_cell_534/MatMul/ReadVariableOpReadVariableOpDsequential_112_lstm_336_lstm_cell_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_112/lstm_336/lstm_cell_534/MatMulMatMul0sequential_112/lstm_336/strided_slice_2:output:0Csequential_112/lstm_336/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_112/lstm_336/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOpFsequential_112_lstm_336_lstm_cell_534_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_112/lstm_336/lstm_cell_534/MatMul_1MatMul&sequential_112/lstm_336/zeros:output:0Esequential_112/lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_112/lstm_336/lstm_cell_534/addAddV26sequential_112/lstm_336/lstm_cell_534/MatMul:product:08sequential_112/lstm_336/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_112/lstm_336/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOpEsequential_112_lstm_336_lstm_cell_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_112/lstm_336/lstm_cell_534/BiasAddBiasAdd-sequential_112/lstm_336/lstm_cell_534/add:z:0Dsequential_112/lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_112/lstm_336/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_112/lstm_336/lstm_cell_534/splitSplit>sequential_112/lstm_336/lstm_cell_534/split/split_dim:output:06sequential_112/lstm_336/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_112/lstm_336/lstm_cell_534/SigmoidSigmoid4sequential_112/lstm_336/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_112/lstm_336/lstm_cell_534/Sigmoid_1Sigmoid4sequential_112/lstm_336/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_112/lstm_336/lstm_cell_534/mulMul3sequential_112/lstm_336/lstm_cell_534/Sigmoid_1:y:0(sequential_112/lstm_336/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_112/lstm_336/lstm_cell_534/ReluRelu4sequential_112/lstm_336/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_112/lstm_336/lstm_cell_534/mul_1Mul1sequential_112/lstm_336/lstm_cell_534/Sigmoid:y:08sequential_112/lstm_336/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_112/lstm_336/lstm_cell_534/add_1AddV2-sequential_112/lstm_336/lstm_cell_534/mul:z:0/sequential_112/lstm_336/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_112/lstm_336/lstm_cell_534/Sigmoid_2Sigmoid4sequential_112/lstm_336/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_112/lstm_336/lstm_cell_534/Relu_1Relu/sequential_112/lstm_336/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_112/lstm_336/lstm_cell_534/mul_2Mul3sequential_112/lstm_336/lstm_cell_534/Sigmoid_2:y:0:sequential_112/lstm_336/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_112/lstm_336/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_112/lstm_336/TensorArrayV2_1TensorListReserve>sequential_112/lstm_336/TensorArrayV2_1/element_shape:output:00sequential_112/lstm_336/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_112/lstm_336/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_112/lstm_336/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_112/lstm_336/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_112/lstm_336/whileWhile3sequential_112/lstm_336/while/loop_counter:output:09sequential_112/lstm_336/while/maximum_iterations:output:0%sequential_112/lstm_336/time:output:00sequential_112/lstm_336/TensorArrayV2_1:handle:0&sequential_112/lstm_336/zeros:output:0(sequential_112/lstm_336/zeros_1:output:00sequential_112/lstm_336/strided_slice_1:output:0Osequential_112/lstm_336/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_112_lstm_336_lstm_cell_534_matmul_readvariableop_resourceFsequential_112_lstm_336_lstm_cell_534_matmul_1_readvariableop_resourceEsequential_112_lstm_336_lstm_cell_534_biasadd_readvariableop_resource*
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
*sequential_112_lstm_336_while_body_3241744*6
cond.R,
*sequential_112_lstm_336_while_cond_3241743*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_112/lstm_336/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_112/lstm_336/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_112/lstm_336/while:output:3Qsequential_112/lstm_336/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_112/lstm_336/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_112/lstm_336/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_112/lstm_336/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_112/lstm_336/strided_slice_3StridedSliceCsequential_112/lstm_336/TensorArrayV2Stack/TensorListStack:tensor:06sequential_112/lstm_336/strided_slice_3/stack:output:08sequential_112/lstm_336/strided_slice_3/stack_1:output:08sequential_112/lstm_336/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_112/lstm_336/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_112/lstm_336/transpose_1	TransposeCsequential_112/lstm_336/TensorArrayV2Stack/TensorListStack:tensor:01sequential_112/lstm_336/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_112/lstm_336/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_112/lstm_337/ShapeShape'sequential_112/lstm_336/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_112/lstm_337/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_112/lstm_337/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_112/lstm_337/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_112/lstm_337/strided_sliceStridedSlice&sequential_112/lstm_337/Shape:output:04sequential_112/lstm_337/strided_slice/stack:output:06sequential_112/lstm_337/strided_slice/stack_1:output:06sequential_112/lstm_337/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_112/lstm_337/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_112/lstm_337/zeros/packedPack.sequential_112/lstm_337/strided_slice:output:0/sequential_112/lstm_337/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_112/lstm_337/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_112/lstm_337/zerosFill-sequential_112/lstm_337/zeros/packed:output:0,sequential_112/lstm_337/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_112/lstm_337/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_112/lstm_337/zeros_1/packedPack.sequential_112/lstm_337/strided_slice:output:01sequential_112/lstm_337/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_112/lstm_337/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_112/lstm_337/zeros_1Fill/sequential_112/lstm_337/zeros_1/packed:output:0.sequential_112/lstm_337/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_112/lstm_337/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_112/lstm_337/transpose	Transpose'sequential_112/lstm_336/transpose_1:y:0/sequential_112/lstm_337/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_112/lstm_337/Shape_1Shape%sequential_112/lstm_337/transpose:y:0*
T0*
_output_shapes
:w
-sequential_112/lstm_337/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_112/lstm_337/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_112/lstm_337/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_112/lstm_337/strided_slice_1StridedSlice(sequential_112/lstm_337/Shape_1:output:06sequential_112/lstm_337/strided_slice_1/stack:output:08sequential_112/lstm_337/strided_slice_1/stack_1:output:08sequential_112/lstm_337/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_112/lstm_337/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_112/lstm_337/TensorArrayV2TensorListReserve<sequential_112/lstm_337/TensorArrayV2/element_shape:output:00sequential_112/lstm_337/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_112/lstm_337/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_112/lstm_337/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_112/lstm_337/transpose:y:0Vsequential_112/lstm_337/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_112/lstm_337/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_112/lstm_337/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_112/lstm_337/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_112/lstm_337/strided_slice_2StridedSlice%sequential_112/lstm_337/transpose:y:06sequential_112/lstm_337/strided_slice_2/stack:output:08sequential_112/lstm_337/strided_slice_2/stack_1:output:08sequential_112/lstm_337/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_112/lstm_337/lstm_cell_535/MatMul/ReadVariableOpReadVariableOpDsequential_112_lstm_337_lstm_cell_535_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_112/lstm_337/lstm_cell_535/MatMulMatMul0sequential_112/lstm_337/strided_slice_2:output:0Csequential_112/lstm_337/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_112/lstm_337/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOpFsequential_112_lstm_337_lstm_cell_535_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_112/lstm_337/lstm_cell_535/MatMul_1MatMul&sequential_112/lstm_337/zeros:output:0Esequential_112/lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_112/lstm_337/lstm_cell_535/addAddV26sequential_112/lstm_337/lstm_cell_535/MatMul:product:08sequential_112/lstm_337/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_112/lstm_337/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOpEsequential_112_lstm_337_lstm_cell_535_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_112/lstm_337/lstm_cell_535/BiasAddBiasAdd-sequential_112/lstm_337/lstm_cell_535/add:z:0Dsequential_112/lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_112/lstm_337/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_112/lstm_337/lstm_cell_535/splitSplit>sequential_112/lstm_337/lstm_cell_535/split/split_dim:output:06sequential_112/lstm_337/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_112/lstm_337/lstm_cell_535/SigmoidSigmoid4sequential_112/lstm_337/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_112/lstm_337/lstm_cell_535/Sigmoid_1Sigmoid4sequential_112/lstm_337/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_112/lstm_337/lstm_cell_535/mulMul3sequential_112/lstm_337/lstm_cell_535/Sigmoid_1:y:0(sequential_112/lstm_337/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_112/lstm_337/lstm_cell_535/ReluRelu4sequential_112/lstm_337/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_112/lstm_337/lstm_cell_535/mul_1Mul1sequential_112/lstm_337/lstm_cell_535/Sigmoid:y:08sequential_112/lstm_337/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_112/lstm_337/lstm_cell_535/add_1AddV2-sequential_112/lstm_337/lstm_cell_535/mul:z:0/sequential_112/lstm_337/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_112/lstm_337/lstm_cell_535/Sigmoid_2Sigmoid4sequential_112/lstm_337/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_112/lstm_337/lstm_cell_535/Relu_1Relu/sequential_112/lstm_337/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_112/lstm_337/lstm_cell_535/mul_2Mul3sequential_112/lstm_337/lstm_cell_535/Sigmoid_2:y:0:sequential_112/lstm_337/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_112/lstm_337/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_112/lstm_337/TensorArrayV2_1TensorListReserve>sequential_112/lstm_337/TensorArrayV2_1/element_shape:output:00sequential_112/lstm_337/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_112/lstm_337/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_112/lstm_337/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_112/lstm_337/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_112/lstm_337/whileWhile3sequential_112/lstm_337/while/loop_counter:output:09sequential_112/lstm_337/while/maximum_iterations:output:0%sequential_112/lstm_337/time:output:00sequential_112/lstm_337/TensorArrayV2_1:handle:0&sequential_112/lstm_337/zeros:output:0(sequential_112/lstm_337/zeros_1:output:00sequential_112/lstm_337/strided_slice_1:output:0Osequential_112/lstm_337/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_112_lstm_337_lstm_cell_535_matmul_readvariableop_resourceFsequential_112_lstm_337_lstm_cell_535_matmul_1_readvariableop_resourceEsequential_112_lstm_337_lstm_cell_535_biasadd_readvariableop_resource*
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
*sequential_112_lstm_337_while_body_3241883*6
cond.R,
*sequential_112_lstm_337_while_cond_3241882*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_112/lstm_337/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_112/lstm_337/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_112/lstm_337/while:output:3Qsequential_112/lstm_337/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_112/lstm_337/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_112/lstm_337/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_112/lstm_337/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_112/lstm_337/strided_slice_3StridedSliceCsequential_112/lstm_337/TensorArrayV2Stack/TensorListStack:tensor:06sequential_112/lstm_337/strided_slice_3/stack:output:08sequential_112/lstm_337/strided_slice_3/stack_1:output:08sequential_112/lstm_337/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_112/lstm_337/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_112/lstm_337/transpose_1	TransposeCsequential_112/lstm_337/TensorArrayV2Stack/TensorListStack:tensor:01sequential_112/lstm_337/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_112/lstm_337/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_112/lstm_338/ShapeShape'sequential_112/lstm_337/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_112/lstm_338/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_112/lstm_338/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_112/lstm_338/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_112/lstm_338/strided_sliceStridedSlice&sequential_112/lstm_338/Shape:output:04sequential_112/lstm_338/strided_slice/stack:output:06sequential_112/lstm_338/strided_slice/stack_1:output:06sequential_112/lstm_338/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_112/lstm_338/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_112/lstm_338/zeros/packedPack.sequential_112/lstm_338/strided_slice:output:0/sequential_112/lstm_338/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_112/lstm_338/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_112/lstm_338/zerosFill-sequential_112/lstm_338/zeros/packed:output:0,sequential_112/lstm_338/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_112/lstm_338/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_112/lstm_338/zeros_1/packedPack.sequential_112/lstm_338/strided_slice:output:01sequential_112/lstm_338/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_112/lstm_338/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_112/lstm_338/zeros_1Fill/sequential_112/lstm_338/zeros_1/packed:output:0.sequential_112/lstm_338/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_112/lstm_338/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_112/lstm_338/transpose	Transpose'sequential_112/lstm_337/transpose_1:y:0/sequential_112/lstm_338/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_112/lstm_338/Shape_1Shape%sequential_112/lstm_338/transpose:y:0*
T0*
_output_shapes
:w
-sequential_112/lstm_338/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_112/lstm_338/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_112/lstm_338/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_112/lstm_338/strided_slice_1StridedSlice(sequential_112/lstm_338/Shape_1:output:06sequential_112/lstm_338/strided_slice_1/stack:output:08sequential_112/lstm_338/strided_slice_1/stack_1:output:08sequential_112/lstm_338/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_112/lstm_338/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_112/lstm_338/TensorArrayV2TensorListReserve<sequential_112/lstm_338/TensorArrayV2/element_shape:output:00sequential_112/lstm_338/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_112/lstm_338/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_112/lstm_338/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_112/lstm_338/transpose:y:0Vsequential_112/lstm_338/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_112/lstm_338/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_112/lstm_338/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_112/lstm_338/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_112/lstm_338/strided_slice_2StridedSlice%sequential_112/lstm_338/transpose:y:06sequential_112/lstm_338/strided_slice_2/stack:output:08sequential_112/lstm_338/strided_slice_2/stack_1:output:08sequential_112/lstm_338/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_112/lstm_338/lstm_cell_536/MatMul/ReadVariableOpReadVariableOpDsequential_112_lstm_338_lstm_cell_536_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_112/lstm_338/lstm_cell_536/MatMulMatMul0sequential_112/lstm_338/strided_slice_2:output:0Csequential_112/lstm_338/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_112/lstm_338/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOpFsequential_112_lstm_338_lstm_cell_536_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_112/lstm_338/lstm_cell_536/MatMul_1MatMul&sequential_112/lstm_338/zeros:output:0Esequential_112/lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_112/lstm_338/lstm_cell_536/addAddV26sequential_112/lstm_338/lstm_cell_536/MatMul:product:08sequential_112/lstm_338/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_112/lstm_338/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOpEsequential_112_lstm_338_lstm_cell_536_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_112/lstm_338/lstm_cell_536/BiasAddBiasAdd-sequential_112/lstm_338/lstm_cell_536/add:z:0Dsequential_112/lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_112/lstm_338/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_112/lstm_338/lstm_cell_536/splitSplit>sequential_112/lstm_338/lstm_cell_536/split/split_dim:output:06sequential_112/lstm_338/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_112/lstm_338/lstm_cell_536/SigmoidSigmoid4sequential_112/lstm_338/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_112/lstm_338/lstm_cell_536/Sigmoid_1Sigmoid4sequential_112/lstm_338/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_112/lstm_338/lstm_cell_536/mulMul3sequential_112/lstm_338/lstm_cell_536/Sigmoid_1:y:0(sequential_112/lstm_338/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_112/lstm_338/lstm_cell_536/ReluRelu4sequential_112/lstm_338/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_112/lstm_338/lstm_cell_536/mul_1Mul1sequential_112/lstm_338/lstm_cell_536/Sigmoid:y:08sequential_112/lstm_338/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_112/lstm_338/lstm_cell_536/add_1AddV2-sequential_112/lstm_338/lstm_cell_536/mul:z:0/sequential_112/lstm_338/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_112/lstm_338/lstm_cell_536/Sigmoid_2Sigmoid4sequential_112/lstm_338/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_112/lstm_338/lstm_cell_536/Relu_1Relu/sequential_112/lstm_338/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_112/lstm_338/lstm_cell_536/mul_2Mul3sequential_112/lstm_338/lstm_cell_536/Sigmoid_2:y:0:sequential_112/lstm_338/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_112/lstm_338/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_112/lstm_338/TensorArrayV2_1TensorListReserve>sequential_112/lstm_338/TensorArrayV2_1/element_shape:output:00sequential_112/lstm_338/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_112/lstm_338/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_112/lstm_338/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_112/lstm_338/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_112/lstm_338/whileWhile3sequential_112/lstm_338/while/loop_counter:output:09sequential_112/lstm_338/while/maximum_iterations:output:0%sequential_112/lstm_338/time:output:00sequential_112/lstm_338/TensorArrayV2_1:handle:0&sequential_112/lstm_338/zeros:output:0(sequential_112/lstm_338/zeros_1:output:00sequential_112/lstm_338/strided_slice_1:output:0Osequential_112/lstm_338/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_112_lstm_338_lstm_cell_536_matmul_readvariableop_resourceFsequential_112_lstm_338_lstm_cell_536_matmul_1_readvariableop_resourceEsequential_112_lstm_338_lstm_cell_536_biasadd_readvariableop_resource*
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
*sequential_112_lstm_338_while_body_3242022*6
cond.R,
*sequential_112_lstm_338_while_cond_3242021*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_112/lstm_338/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_112/lstm_338/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_112/lstm_338/while:output:3Qsequential_112/lstm_338/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_112/lstm_338/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_112/lstm_338/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_112/lstm_338/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_112/lstm_338/strided_slice_3StridedSliceCsequential_112/lstm_338/TensorArrayV2Stack/TensorListStack:tensor:06sequential_112/lstm_338/strided_slice_3/stack:output:08sequential_112/lstm_338/strided_slice_3/stack_1:output:08sequential_112/lstm_338/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_112/lstm_338/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_112/lstm_338/transpose_1	TransposeCsequential_112/lstm_338/TensorArrayV2Stack/TensorListStack:tensor:01sequential_112/lstm_338/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_112/lstm_338/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_112/dense_112/MatMul/ReadVariableOpReadVariableOp7sequential_112_dense_112_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_112/dense_112/MatMulMatMul0sequential_112/lstm_338/strided_slice_3:output:06sequential_112/dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_112/dense_112/BiasAdd/ReadVariableOpReadVariableOp8sequential_112_dense_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_112/dense_112/BiasAddBiasAdd)sequential_112/dense_112/MatMul:product:07sequential_112/dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_112/dense_112/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_112/dense_112/BiasAdd/ReadVariableOp/^sequential_112/dense_112/MatMul/ReadVariableOp=^sequential_112/lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp<^sequential_112/lstm_336/lstm_cell_534/MatMul/ReadVariableOp>^sequential_112/lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp^sequential_112/lstm_336/while=^sequential_112/lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp<^sequential_112/lstm_337/lstm_cell_535/MatMul/ReadVariableOp>^sequential_112/lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp^sequential_112/lstm_337/while=^sequential_112/lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp<^sequential_112/lstm_338/lstm_cell_536/MatMul/ReadVariableOp>^sequential_112/lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp^sequential_112/lstm_338/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_112/dense_112/BiasAdd/ReadVariableOp/sequential_112/dense_112/BiasAdd/ReadVariableOp2`
.sequential_112/dense_112/MatMul/ReadVariableOp.sequential_112/dense_112/MatMul/ReadVariableOp2|
<sequential_112/lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp<sequential_112/lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp2z
;sequential_112/lstm_336/lstm_cell_534/MatMul/ReadVariableOp;sequential_112/lstm_336/lstm_cell_534/MatMul/ReadVariableOp2~
=sequential_112/lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp=sequential_112/lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp2>
sequential_112/lstm_336/whilesequential_112/lstm_336/while2|
<sequential_112/lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp<sequential_112/lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp2z
;sequential_112/lstm_337/lstm_cell_535/MatMul/ReadVariableOp;sequential_112/lstm_337/lstm_cell_535/MatMul/ReadVariableOp2~
=sequential_112/lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp=sequential_112/lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp2>
sequential_112/lstm_337/whilesequential_112/lstm_337/while2|
<sequential_112/lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp<sequential_112/lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp2z
;sequential_112/lstm_338/lstm_cell_536/MatMul/ReadVariableOp;sequential_112/lstm_338/lstm_cell_536/MatMul/ReadVariableOp2~
=sequential_112/lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp=sequential_112/lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp2>
sequential_112/lstm_338/whilesequential_112/lstm_338/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_336_input
?
?
while_cond_3243376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3243376___redundant_placeholder05
1while_while_cond_3243376___redundant_placeholder15
1while_while_cond_3243376___redundant_placeholder25
1while_while_cond_3243376___redundant_placeholder3
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3242962

inputs'
lstm_cell_536_3242880:2('
lstm_cell_536_3242882:
(#
lstm_cell_536_3242884:(
identity??%lstm_cell_536/StatefulPartitionedCall?while;
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
%lstm_cell_536/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_536_3242880lstm_cell_536_3242882lstm_cell_536_3242884*
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
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3242879n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_536_3242880lstm_cell_536_3242882lstm_cell_536_3242884*
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
while_body_3242893*
condR
while_cond_3242892*K
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
NoOpNoOp&^lstm_cell_536/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_536/StatefulPartitionedCall%lstm_cell_536/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_338_layer_call_fn_3246523
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3242962o
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
while_cond_3246900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3246900___redundant_placeholder05
1while_while_cond_3246900___redundant_placeholder15
1while_while_cond_3246900___redundant_placeholder25
1while_while_cond_3246900___redundant_placeholder3
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
/__inference_lstm_cell_536_layer_call_fn_3247377

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
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3243025o
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
while_cond_3245525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3245525___redundant_placeholder05
1while_while_cond_3245525___redundant_placeholder15
1while_while_cond_3245525___redundant_placeholder25
1while_while_cond_3245525___redundant_placeholder3
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
*__inference_lstm_336_layer_call_fn_3245302
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3242453|
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
while_cond_3243226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3243226___redundant_placeholder05
1while_while_cond_3243226___redundant_placeholder15
1while_while_cond_3243226___redundant_placeholder25
1while_while_cond_3243226___redundant_placeholder3
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
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244337
lstm_336_input#
lstm_336_3244310:	?#
lstm_336_3244312:	d?
lstm_336_3244314:	?#
lstm_337_3244317:	d?#
lstm_337_3244319:	2?
lstm_337_3244321:	?"
lstm_338_3244324:2("
lstm_338_3244326:
(
lstm_338_3244328:(#
dense_112_3244331:

dense_112_3244333:
identity??!dense_112/StatefulPartitionedCall? lstm_336/StatefulPartitionedCall? lstm_337/StatefulPartitionedCall? lstm_338/StatefulPartitionedCall?
 lstm_336/StatefulPartitionedCallStatefulPartitionedCalllstm_336_inputlstm_336_3244310lstm_336_3244312lstm_336_3244314*
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3244157?
 lstm_337/StatefulPartitionedCallStatefulPartitionedCall)lstm_336/StatefulPartitionedCall:output:0lstm_337_3244317lstm_337_3244319lstm_337_3244321*
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3243992?
 lstm_338/StatefulPartitionedCallStatefulPartitionedCall)lstm_337/StatefulPartitionedCall:output:0lstm_338_3244324lstm_338_3244326lstm_338_3244328*
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3243827?
!dense_112/StatefulPartitionedCallStatefulPartitionedCall)lstm_338/StatefulPartitionedCall:output:0dense_112_3244331dense_112_3244333*
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
F__inference_dense_112_layer_call_and_return_conditional_losses_3243629y
IdentityIdentity*dense_112/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_112/StatefulPartitionedCall!^lstm_336/StatefulPartitionedCall!^lstm_337/StatefulPartitionedCall!^lstm_338/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2D
 lstm_336/StatefulPartitionedCall lstm_336/StatefulPartitionedCall2D
 lstm_337/StatefulPartitionedCall lstm_337/StatefulPartitionedCall2D
 lstm_338/StatefulPartitionedCall lstm_338/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_336_input
?
?
while_cond_3245382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3245382___redundant_placeholder05
1while_while_cond_3245382___redundant_placeholder15
1while_while_cond_3245382___redundant_placeholder25
1while_while_cond_3245382___redundant_placeholder3
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
lstm_338_while_cond_3244762.
*lstm_338_while_lstm_338_while_loop_counter4
0lstm_338_while_lstm_338_while_maximum_iterations
lstm_338_while_placeholder 
lstm_338_while_placeholder_1 
lstm_338_while_placeholder_2 
lstm_338_while_placeholder_30
,lstm_338_while_less_lstm_338_strided_slice_1G
Clstm_338_while_lstm_338_while_cond_3244762___redundant_placeholder0G
Clstm_338_while_lstm_338_while_cond_3244762___redundant_placeholder1G
Clstm_338_while_lstm_338_while_cond_3244762___redundant_placeholder2G
Clstm_338_while_lstm_338_while_cond_3244762___redundant_placeholder3
lstm_338_while_identity
?
lstm_338/while/LessLesslstm_338_while_placeholder,lstm_338_while_less_lstm_338_strided_slice_1*
T0*
_output_shapes
: ]
lstm_338/while/IdentityIdentitylstm_338/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_338_while_identity lstm_338/while/Identity:output:0*(
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

lstm_338_while_body_3244763.
*lstm_338_while_lstm_338_while_loop_counter4
0lstm_338_while_lstm_338_while_maximum_iterations
lstm_338_while_placeholder 
lstm_338_while_placeholder_1 
lstm_338_while_placeholder_2 
lstm_338_while_placeholder_3-
)lstm_338_while_lstm_338_strided_slice_1_0i
elstm_338_while_tensorarrayv2read_tensorlistgetitem_lstm_338_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_338_while_lstm_cell_536_matmul_readvariableop_resource_0:2(Q
?lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource_0:
(L
>lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource_0:(
lstm_338_while_identity
lstm_338_while_identity_1
lstm_338_while_identity_2
lstm_338_while_identity_3
lstm_338_while_identity_4
lstm_338_while_identity_5+
'lstm_338_while_lstm_338_strided_slice_1g
clstm_338_while_tensorarrayv2read_tensorlistgetitem_lstm_338_tensorarrayunstack_tensorlistfromtensorM
;lstm_338_while_lstm_cell_536_matmul_readvariableop_resource:2(O
=lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource:
(J
<lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource:(??3lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp?2lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp?4lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp?
@lstm_338/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_338/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_338_while_tensorarrayv2read_tensorlistgetitem_lstm_338_tensorarrayunstack_tensorlistfromtensor_0lstm_338_while_placeholderIlstm_338/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_338/while/lstm_cell_536/MatMul/ReadVariableOpReadVariableOp=lstm_338_while_lstm_cell_536_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_338/while/lstm_cell_536/MatMulMatMul9lstm_338/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp?lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_338/while/lstm_cell_536/MatMul_1MatMullstm_338_while_placeholder_2<lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_338/while/lstm_cell_536/addAddV2-lstm_338/while/lstm_cell_536/MatMul:product:0/lstm_338/while/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp>lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_338/while/lstm_cell_536/BiasAddBiasAdd$lstm_338/while/lstm_cell_536/add:z:0;lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_338/while/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_338/while/lstm_cell_536/splitSplit5lstm_338/while/lstm_cell_536/split/split_dim:output:0-lstm_338/while/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_338/while/lstm_cell_536/SigmoidSigmoid+lstm_338/while/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_338/while/lstm_cell_536/Sigmoid_1Sigmoid+lstm_338/while/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_338/while/lstm_cell_536/mulMul*lstm_338/while/lstm_cell_536/Sigmoid_1:y:0lstm_338_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_338/while/lstm_cell_536/ReluRelu+lstm_338/while/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_338/while/lstm_cell_536/mul_1Mul(lstm_338/while/lstm_cell_536/Sigmoid:y:0/lstm_338/while/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_338/while/lstm_cell_536/add_1AddV2$lstm_338/while/lstm_cell_536/mul:z:0&lstm_338/while/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_338/while/lstm_cell_536/Sigmoid_2Sigmoid+lstm_338/while/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_338/while/lstm_cell_536/Relu_1Relu&lstm_338/while/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_338/while/lstm_cell_536/mul_2Mul*lstm_338/while/lstm_cell_536/Sigmoid_2:y:01lstm_338/while/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_338/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_338_while_placeholder_1lstm_338_while_placeholder&lstm_338/while/lstm_cell_536/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_338/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_338/while/addAddV2lstm_338_while_placeholderlstm_338/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_338/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_338/while/add_1AddV2*lstm_338_while_lstm_338_while_loop_counterlstm_338/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_338/while/IdentityIdentitylstm_338/while/add_1:z:0^lstm_338/while/NoOp*
T0*
_output_shapes
: ?
lstm_338/while/Identity_1Identity0lstm_338_while_lstm_338_while_maximum_iterations^lstm_338/while/NoOp*
T0*
_output_shapes
: t
lstm_338/while/Identity_2Identitylstm_338/while/add:z:0^lstm_338/while/NoOp*
T0*
_output_shapes
: ?
lstm_338/while/Identity_3IdentityClstm_338/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_338/while/NoOp*
T0*
_output_shapes
: ?
lstm_338/while/Identity_4Identity&lstm_338/while/lstm_cell_536/mul_2:z:0^lstm_338/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_338/while/Identity_5Identity&lstm_338/while/lstm_cell_536/add_1:z:0^lstm_338/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_338/while/NoOpNoOp4^lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp3^lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp5^lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_338_while_identity lstm_338/while/Identity:output:0"?
lstm_338_while_identity_1"lstm_338/while/Identity_1:output:0"?
lstm_338_while_identity_2"lstm_338/while/Identity_2:output:0"?
lstm_338_while_identity_3"lstm_338/while/Identity_3:output:0"?
lstm_338_while_identity_4"lstm_338/while/Identity_4:output:0"?
lstm_338_while_identity_5"lstm_338/while/Identity_5:output:0"T
'lstm_338_while_lstm_338_strided_slice_1)lstm_338_while_lstm_338_strided_slice_1_0"~
<lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource>lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource_0"?
=lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource?lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource_0"|
;lstm_338_while_lstm_cell_536_matmul_readvariableop_resource=lstm_338_while_lstm_cell_536_matmul_readvariableop_resource_0"?
clstm_338_while_tensorarrayv2read_tensorlistgetitem_lstm_338_tensorarrayunstack_tensorlistfromtensorelstm_338_while_tensorarrayv2read_tensorlistgetitem_lstm_338_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp3lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp2h
2lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp2lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp2l
4lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp4lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3245998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3245998___redundant_placeholder05
1while_while_cond_3245998___redundant_placeholder15
1while_while_cond_3245998___redundant_placeholder25
1while_while_cond_3245998___redundant_placeholder3
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
0__inference_sequential_112_layer_call_fn_3244426

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
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244225o
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
while_body_3243908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_535_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_535_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_535_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_535_matmul_readvariableop_resource:	d?G
4while_lstm_cell_535_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_535_biasadd_readvariableop_resource:	???*while/lstm_cell_535/BiasAdd/ReadVariableOp?)while/lstm_cell_535/MatMul/ReadVariableOp?+while/lstm_cell_535/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_535/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_535_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_535/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_535_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_535/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_535/addAddV2$while/lstm_cell_535/MatMul:product:0&while/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_535_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_535/BiasAddBiasAddwhile/lstm_cell_535/add:z:02while/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_535/splitSplit,while/lstm_cell_535/split/split_dim:output:0$while/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_535/SigmoidSigmoid"while/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_1Sigmoid"while/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mulMul!while/lstm_cell_535/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_535/ReluRelu"while/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_1Mulwhile/lstm_cell_535/Sigmoid:y:0&while/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/add_1AddV2while/lstm_cell_535/mul:z:0while/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_2Sigmoid"while/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_535/Relu_1Reluwhile/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_2Mul!while/lstm_cell_535/Sigmoid_2:y:0(while/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_535/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_535/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_535/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_535/BiasAdd/ReadVariableOp*^while/lstm_cell_535/MatMul/ReadVariableOp,^while/lstm_cell_535/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_535_biasadd_readvariableop_resource5while_lstm_cell_535_biasadd_readvariableop_resource_0"n
4while_lstm_cell_535_matmul_1_readvariableop_resource6while_lstm_cell_535_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_535_matmul_readvariableop_resource4while_lstm_cell_535_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_535/BiasAdd/ReadVariableOp*while/lstm_cell_535/BiasAdd/ReadVariableOp2V
)while/lstm_cell_535/MatMul/ReadVariableOp)while/lstm_cell_535/MatMul/ReadVariableOp2Z
+while/lstm_cell_535/MatMul_1/ReadVariableOp+while/lstm_cell_535/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_112_layer_call_and_return_conditional_losses_3247147

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
?
E__inference_lstm_337_layer_call_and_return_conditional_losses_3242803

inputs(
lstm_cell_535_3242721:	d?(
lstm_cell_535_3242723:	2?$
lstm_cell_535_3242725:	?
identity??%lstm_cell_535/StatefulPartitionedCall?while;
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
%lstm_cell_535/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_535_3242721lstm_cell_535_3242723lstm_cell_535_3242725*
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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3242675n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_535_3242721lstm_cell_535_3242723lstm_cell_535_3242725*
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
while_body_3242734*
condR
while_cond_3242733*K
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
NoOpNoOp&^lstm_cell_535/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_535/StatefulPartitionedCall%lstm_cell_535/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_3244072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3244072___redundant_placeholder05
1while_while_cond_3244072___redundant_placeholder15
1while_while_cond_3244072___redundant_placeholder25
1while_while_cond_3244072___redundant_placeholder3
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
while_cond_3242383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3242383___redundant_placeholder05
1while_while_cond_3242383___redundant_placeholder15
1while_while_cond_3242383___redundant_placeholder25
1while_while_cond_3242383___redundant_placeholder3
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
lstm_337_while_cond_3245050.
*lstm_337_while_lstm_337_while_loop_counter4
0lstm_337_while_lstm_337_while_maximum_iterations
lstm_337_while_placeholder 
lstm_337_while_placeholder_1 
lstm_337_while_placeholder_2 
lstm_337_while_placeholder_30
,lstm_337_while_less_lstm_337_strided_slice_1G
Clstm_337_while_lstm_337_while_cond_3245050___redundant_placeholder0G
Clstm_337_while_lstm_337_while_cond_3245050___redundant_placeholder1G
Clstm_337_while_lstm_337_while_cond_3245050___redundant_placeholder2G
Clstm_337_while_lstm_337_while_cond_3245050___redundant_placeholder3
lstm_337_while_identity
?
lstm_337/while/LessLesslstm_337_while_placeholder,lstm_337_while_less_lstm_337_strided_slice_1*
T0*
_output_shapes
: ]
lstm_337/while/IdentityIdentitylstm_337/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_337_while_identity lstm_337/while/Identity:output:0*(
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
while_body_3246142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_535_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_535_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_535_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_535_matmul_readvariableop_resource:	d?G
4while_lstm_cell_535_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_535_biasadd_readvariableop_resource:	???*while/lstm_cell_535/BiasAdd/ReadVariableOp?)while/lstm_cell_535/MatMul/ReadVariableOp?+while/lstm_cell_535/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_535/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_535_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_535/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_535_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_535/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_535/addAddV2$while/lstm_cell_535/MatMul:product:0&while/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_535_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_535/BiasAddBiasAddwhile/lstm_cell_535/add:z:02while/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_535/splitSplit,while/lstm_cell_535/split/split_dim:output:0$while/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_535/SigmoidSigmoid"while/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_1Sigmoid"while/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mulMul!while/lstm_cell_535/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_535/ReluRelu"while/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_1Mulwhile/lstm_cell_535/Sigmoid:y:0&while/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/add_1AddV2while/lstm_cell_535/mul:z:0while/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_2Sigmoid"while/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_535/Relu_1Reluwhile/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_2Mul!while/lstm_cell_535/Sigmoid_2:y:0(while/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_535/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_535/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_535/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_535/BiasAdd/ReadVariableOp*^while/lstm_cell_535/MatMul/ReadVariableOp,^while/lstm_cell_535/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_535_biasadd_readvariableop_resource5while_lstm_cell_535_biasadd_readvariableop_resource_0"n
4while_lstm_cell_535_matmul_1_readvariableop_resource6while_lstm_cell_535_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_535_matmul_readvariableop_resource4while_lstm_cell_535_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_535/BiasAdd/ReadVariableOp*while/lstm_cell_535/BiasAdd/ReadVariableOp2V
)while/lstm_cell_535/MatMul/ReadVariableOp)while/lstm_cell_535/MatMul/ReadVariableOp2Z
+while/lstm_cell_535/MatMul_1/ReadVariableOp+while/lstm_cell_535/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3243153

inputs'
lstm_cell_536_3243071:2('
lstm_cell_536_3243073:
(#
lstm_cell_536_3243075:(
identity??%lstm_cell_536/StatefulPartitionedCall?while;
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
%lstm_cell_536/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_536_3243071lstm_cell_536_3243073lstm_cell_536_3243075*
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
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3243025n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_536_3243071lstm_cell_536_3243073lstm_cell_536_3243075*
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
while_body_3243084*
condR
while_cond_3243083*K
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
NoOpNoOp&^lstm_cell_536/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_536/StatefulPartitionedCall%lstm_cell_536/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_3242384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_534_3242408_0:	?0
while_lstm_cell_534_3242410_0:	d?,
while_lstm_cell_534_3242412_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_534_3242408:	?.
while_lstm_cell_534_3242410:	d?*
while_lstm_cell_534_3242412:	???+while/lstm_cell_534/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_534/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_534_3242408_0while_lstm_cell_534_3242410_0while_lstm_cell_534_3242412_0*
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
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3242325?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_534/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_534/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_534/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_534/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_534_3242408while_lstm_cell_534_3242408_0"<
while_lstm_cell_534_3242410while_lstm_cell_534_3242410_0"<
while_lstm_cell_534_3242412while_lstm_cell_534_3242412_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_534/StatefulPartitionedCall+while/lstm_cell_534/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3247311

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
*__inference_lstm_336_layer_call_fn_3245324

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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3244157s
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
while_body_3245383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_534_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_534_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_534_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_534_matmul_readvariableop_resource:	?G
4while_lstm_cell_534_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_534_biasadd_readvariableop_resource:	???*while/lstm_cell_534/BiasAdd/ReadVariableOp?)while/lstm_cell_534/MatMul/ReadVariableOp?+while/lstm_cell_534/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_534/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_534_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_534/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_534_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_534/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_534/addAddV2$while/lstm_cell_534/MatMul:product:0&while/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_534_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_534/BiasAddBiasAddwhile/lstm_cell_534/add:z:02while/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_534/splitSplit,while/lstm_cell_534/split/split_dim:output:0$while/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_534/SigmoidSigmoid"while/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_1Sigmoid"while/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mulMul!while/lstm_cell_534/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_534/ReluRelu"while/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_1Mulwhile/lstm_cell_534/Sigmoid:y:0&while/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/add_1AddV2while/lstm_cell_534/mul:z:0while/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_2Sigmoid"while/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_534/Relu_1Reluwhile/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_2Mul!while/lstm_cell_534/Sigmoid_2:y:0(while/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_534/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_534/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_534/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_534/BiasAdd/ReadVariableOp*^while/lstm_cell_534/MatMul/ReadVariableOp,^while/lstm_cell_534/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_534_biasadd_readvariableop_resource5while_lstm_cell_534_biasadd_readvariableop_resource_0"n
4while_lstm_cell_534_matmul_1_readvariableop_resource6while_lstm_cell_534_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_534_matmul_readvariableop_resource4while_lstm_cell_534_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_534/BiasAdd/ReadVariableOp*while/lstm_cell_534/BiasAdd/ReadVariableOp2V
)while/lstm_cell_534/MatMul/ReadVariableOp)while/lstm_cell_534/MatMul/ReadVariableOp2Z
+while/lstm_cell_534/MatMul_1/ReadVariableOp+while/lstm_cell_534/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3243611

inputs>
,lstm_cell_536_matmul_readvariableop_resource:2(@
.lstm_cell_536_matmul_1_readvariableop_resource:
(;
-lstm_cell_536_biasadd_readvariableop_resource:(
identity??$lstm_cell_536/BiasAdd/ReadVariableOp?#lstm_cell_536/MatMul/ReadVariableOp?%lstm_cell_536/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_536/MatMul/ReadVariableOpReadVariableOp,lstm_cell_536_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_536/MatMulMatMulstrided_slice_2:output:0+lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_536_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_536/MatMul_1MatMulzeros:output:0-lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_536/addAddV2lstm_cell_536/MatMul:product:0 lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_536_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_536/BiasAddBiasAddlstm_cell_536/add:z:0,lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_536/splitSplit&lstm_cell_536/split/split_dim:output:0lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_536/SigmoidSigmoidlstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_1Sigmoidlstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_536/mulMullstm_cell_536/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_536/ReluRelulstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_1Mullstm_cell_536/Sigmoid:y:0 lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_536/add_1AddV2lstm_cell_536/mul:z:0lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_2Sigmoidlstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_536/Relu_1Relulstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_2Mullstm_cell_536/Sigmoid_2:y:0"lstm_cell_536/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_536_matmul_readvariableop_resource.lstm_cell_536_matmul_1_readvariableop_resource-lstm_cell_536_biasadd_readvariableop_resource*
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
while_body_3243527*
condR
while_cond_3243526*K
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
NoOpNoOp%^lstm_cell_536/BiasAdd/ReadVariableOp$^lstm_cell_536/MatMul/ReadVariableOp&^lstm_cell_536/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_536/BiasAdd/ReadVariableOp$lstm_cell_536/BiasAdd/ReadVariableOp2J
#lstm_cell_536/MatMul/ReadVariableOp#lstm_cell_536/MatMul/ReadVariableOp2N
%lstm_cell_536/MatMul_1/ReadVariableOp%lstm_cell_536/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3247441

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
?
?
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244225

inputs#
lstm_336_3244198:	?#
lstm_336_3244200:	d?
lstm_336_3244202:	?#
lstm_337_3244205:	d?#
lstm_337_3244207:	2?
lstm_337_3244209:	?"
lstm_338_3244212:2("
lstm_338_3244214:
(
lstm_338_3244216:(#
dense_112_3244219:

dense_112_3244221:
identity??!dense_112/StatefulPartitionedCall? lstm_336/StatefulPartitionedCall? lstm_337/StatefulPartitionedCall? lstm_338/StatefulPartitionedCall?
 lstm_336/StatefulPartitionedCallStatefulPartitionedCallinputslstm_336_3244198lstm_336_3244200lstm_336_3244202*
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3244157?
 lstm_337/StatefulPartitionedCallStatefulPartitionedCall)lstm_336/StatefulPartitionedCall:output:0lstm_337_3244205lstm_337_3244207lstm_337_3244209*
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3243992?
 lstm_338/StatefulPartitionedCallStatefulPartitionedCall)lstm_337/StatefulPartitionedCall:output:0lstm_338_3244212lstm_338_3244214lstm_338_3244216*
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3243827?
!dense_112/StatefulPartitionedCallStatefulPartitionedCall)lstm_338/StatefulPartitionedCall:output:0dense_112_3244219dense_112_3244221*
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
F__inference_dense_112_layer_call_and_return_conditional_losses_3243629y
IdentityIdentity*dense_112/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_112/StatefulPartitionedCall!^lstm_336/StatefulPartitionedCall!^lstm_337/StatefulPartitionedCall!^lstm_338/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2D
 lstm_336/StatefulPartitionedCall lstm_336/StatefulPartitionedCall2D
 lstm_337/StatefulPartitionedCall lstm_337/StatefulPartitionedCall2D
 lstm_338/StatefulPartitionedCall lstm_338/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_338_layer_call_fn_3246556

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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3243827o
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
/__inference_lstm_cell_535_layer_call_fn_3247279

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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3242675o
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3246985

inputs>
,lstm_cell_536_matmul_readvariableop_resource:2(@
.lstm_cell_536_matmul_1_readvariableop_resource:
(;
-lstm_cell_536_biasadd_readvariableop_resource:(
identity??$lstm_cell_536/BiasAdd/ReadVariableOp?#lstm_cell_536/MatMul/ReadVariableOp?%lstm_cell_536/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_536/MatMul/ReadVariableOpReadVariableOp,lstm_cell_536_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_536/MatMulMatMulstrided_slice_2:output:0+lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_536_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_536/MatMul_1MatMulzeros:output:0-lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_536/addAddV2lstm_cell_536/MatMul:product:0 lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_536_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_536/BiasAddBiasAddlstm_cell_536/add:z:0,lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_536/splitSplit&lstm_cell_536/split/split_dim:output:0lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_536/SigmoidSigmoidlstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_1Sigmoidlstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_536/mulMullstm_cell_536/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_536/ReluRelulstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_1Mullstm_cell_536/Sigmoid:y:0 lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_536/add_1AddV2lstm_cell_536/mul:z:0lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_2Sigmoidlstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_536/Relu_1Relulstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_2Mullstm_cell_536/Sigmoid_2:y:0"lstm_cell_536/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_536_matmul_readvariableop_resource.lstm_cell_536_matmul_1_readvariableop_resource-lstm_cell_536_biasadd_readvariableop_resource*
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
while_body_3246901*
condR
while_cond_3246900*K
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
NoOpNoOp%^lstm_cell_536/BiasAdd/ReadVariableOp$^lstm_cell_536/MatMul/ReadVariableOp&^lstm_cell_536/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_536/BiasAdd/ReadVariableOp$lstm_cell_536/BiasAdd/ReadVariableOp2J
#lstm_cell_536/MatMul/ReadVariableOp#lstm_cell_536/MatMul/ReadVariableOp2N
%lstm_cell_536/MatMul_1/ReadVariableOp%lstm_cell_536/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_336_while_cond_3244911.
*lstm_336_while_lstm_336_while_loop_counter4
0lstm_336_while_lstm_336_while_maximum_iterations
lstm_336_while_placeholder 
lstm_336_while_placeholder_1 
lstm_336_while_placeholder_2 
lstm_336_while_placeholder_30
,lstm_336_while_less_lstm_336_strided_slice_1G
Clstm_336_while_lstm_336_while_cond_3244911___redundant_placeholder0G
Clstm_336_while_lstm_336_while_cond_3244911___redundant_placeholder1G
Clstm_336_while_lstm_336_while_cond_3244911___redundant_placeholder2G
Clstm_336_while_lstm_336_while_cond_3244911___redundant_placeholder3
lstm_336_while_identity
?
lstm_336/while/LessLesslstm_336_while_placeholder,lstm_336_while_less_lstm_336_strided_slice_1*
T0*
_output_shapes
: ]
lstm_336/while/IdentityIdentitylstm_336/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_336_while_identity lstm_336/while/Identity:output:0*(
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
while_cond_3246427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3246427___redundant_placeholder05
1while_while_cond_3246427___redundant_placeholder15
1while_while_cond_3246427___redundant_placeholder25
1while_while_cond_3246427___redundant_placeholder3
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
0__inference_sequential_112_layer_call_fn_3244399

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
K__inference_sequential_112_layer_call_and_return_conditional_losses_3243636o
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
while_body_3242734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_535_3242758_0:	d?0
while_lstm_cell_535_3242760_0:	2?,
while_lstm_cell_535_3242762_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_535_3242758:	d?.
while_lstm_cell_535_3242760:	2?*
while_lstm_cell_535_3242762:	???+while/lstm_cell_535/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_535/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_535_3242758_0while_lstm_cell_535_3242760_0while_lstm_cell_535_3242762_0*
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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3242675?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_535/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_535/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_535/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_535/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_535_3242758while_lstm_cell_535_3242758_0"<
while_lstm_cell_535_3242760while_lstm_cell_535_3242760_0"<
while_lstm_cell_535_3242762while_lstm_cell_535_3242762_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_535/StatefulPartitionedCall+while/lstm_cell_535/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246083
inputs_0?
,lstm_cell_535_matmul_readvariableop_resource:	d?A
.lstm_cell_535_matmul_1_readvariableop_resource:	2?<
-lstm_cell_535_biasadd_readvariableop_resource:	?
identity??$lstm_cell_535/BiasAdd/ReadVariableOp?#lstm_cell_535/MatMul/ReadVariableOp?%lstm_cell_535/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_535/MatMul/ReadVariableOpReadVariableOp,lstm_cell_535_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_535/MatMulMatMulstrided_slice_2:output:0+lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_535_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_535/MatMul_1MatMulzeros:output:0-lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_535/addAddV2lstm_cell_535/MatMul:product:0 lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_535_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_535/BiasAddBiasAddlstm_cell_535/add:z:0,lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_535/splitSplit&lstm_cell_535/split/split_dim:output:0lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_535/SigmoidSigmoidlstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_1Sigmoidlstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_535/mulMullstm_cell_535/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_535/ReluRelulstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_1Mullstm_cell_535/Sigmoid:y:0 lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_535/add_1AddV2lstm_cell_535/mul:z:0lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_2Sigmoidlstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_535/Relu_1Relulstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_2Mullstm_cell_535/Sigmoid_2:y:0"lstm_cell_535/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_535_matmul_readvariableop_resource.lstm_cell_535_matmul_1_readvariableop_resource-lstm_cell_535_biasadd_readvariableop_resource*
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
while_body_3245999*
condR
while_cond_3245998*K
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
NoOpNoOp%^lstm_cell_535/BiasAdd/ReadVariableOp$^lstm_cell_535/MatMul/ReadVariableOp&^lstm_cell_535/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_535/BiasAdd/ReadVariableOp$lstm_cell_535/BiasAdd/ReadVariableOp2J
#lstm_cell_535/MatMul/ReadVariableOp#lstm_cell_535/MatMul/ReadVariableOp2N
%lstm_cell_535/MatMul_1/ReadVariableOp%lstm_cell_535/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_338_layer_call_and_return_conditional_losses_3246699
inputs_0>
,lstm_cell_536_matmul_readvariableop_resource:2(@
.lstm_cell_536_matmul_1_readvariableop_resource:
(;
-lstm_cell_536_biasadd_readvariableop_resource:(
identity??$lstm_cell_536/BiasAdd/ReadVariableOp?#lstm_cell_536/MatMul/ReadVariableOp?%lstm_cell_536/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_536/MatMul/ReadVariableOpReadVariableOp,lstm_cell_536_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_536/MatMulMatMulstrided_slice_2:output:0+lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_536_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_536/MatMul_1MatMulzeros:output:0-lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_536/addAddV2lstm_cell_536/MatMul:product:0 lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_536_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_536/BiasAddBiasAddlstm_cell_536/add:z:0,lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_536/splitSplit&lstm_cell_536/split/split_dim:output:0lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_536/SigmoidSigmoidlstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_1Sigmoidlstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_536/mulMullstm_cell_536/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_536/ReluRelulstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_1Mullstm_cell_536/Sigmoid:y:0 lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_536/add_1AddV2lstm_cell_536/mul:z:0lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_2Sigmoidlstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_536/Relu_1Relulstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_2Mullstm_cell_536/Sigmoid_2:y:0"lstm_cell_536/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_536_matmul_readvariableop_resource.lstm_cell_536_matmul_1_readvariableop_resource-lstm_cell_536_biasadd_readvariableop_resource*
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
while_body_3246615*
condR
while_cond_3246614*K
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
NoOpNoOp%^lstm_cell_536/BiasAdd/ReadVariableOp$^lstm_cell_536/MatMul/ReadVariableOp&^lstm_cell_536/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_536/BiasAdd/ReadVariableOp$lstm_cell_536/BiasAdd/ReadVariableOp2J
#lstm_cell_536/MatMul/ReadVariableOp#lstm_cell_536/MatMul/ReadVariableOp2N
%lstm_cell_536/MatMul_1/ReadVariableOp%lstm_cell_536/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3247409

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
?#
?
while_body_3242193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_534_3242217_0:	?0
while_lstm_cell_534_3242219_0:	d?,
while_lstm_cell_534_3242221_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_534_3242217:	?.
while_lstm_cell_534_3242219:	d?*
while_lstm_cell_534_3242221:	???+while/lstm_cell_534/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_534/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_534_3242217_0while_lstm_cell_534_3242219_0while_lstm_cell_534_3242221_0*
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
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3242179?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_534/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_534/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_534/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_534/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_534_3242217while_lstm_cell_534_3242217_0"<
while_lstm_cell_534_3242219while_lstm_cell_534_3242219_0"<
while_lstm_cell_534_3242221while_lstm_cell_534_3242221_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_534/StatefulPartitionedCall+while/lstm_cell_534/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3242529

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
lstm_337_while_cond_3244623.
*lstm_337_while_lstm_337_while_loop_counter4
0lstm_337_while_lstm_337_while_maximum_iterations
lstm_337_while_placeholder 
lstm_337_while_placeholder_1 
lstm_337_while_placeholder_2 
lstm_337_while_placeholder_30
,lstm_337_while_less_lstm_337_strided_slice_1G
Clstm_337_while_lstm_337_while_cond_3244623___redundant_placeholder0G
Clstm_337_while_lstm_337_while_cond_3244623___redundant_placeholder1G
Clstm_337_while_lstm_337_while_cond_3244623___redundant_placeholder2G
Clstm_337_while_lstm_337_while_cond_3244623___redundant_placeholder3
lstm_337_while_identity
?
lstm_337/while/LessLesslstm_337_while_placeholder,lstm_337_while_less_lstm_337_strided_slice_1*
T0*
_output_shapes
: ]
lstm_337/while/IdentityIdentitylstm_337/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_337_while_identity lstm_337/while/Identity:output:0*(
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

lstm_337_while_body_3245051.
*lstm_337_while_lstm_337_while_loop_counter4
0lstm_337_while_lstm_337_while_maximum_iterations
lstm_337_while_placeholder 
lstm_337_while_placeholder_1 
lstm_337_while_placeholder_2 
lstm_337_while_placeholder_3-
)lstm_337_while_lstm_337_strided_slice_1_0i
elstm_337_while_tensorarrayv2read_tensorlistgetitem_lstm_337_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_337_while_lstm_cell_535_matmul_readvariableop_resource_0:	d?R
?lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource_0:	2?M
>lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource_0:	?
lstm_337_while_identity
lstm_337_while_identity_1
lstm_337_while_identity_2
lstm_337_while_identity_3
lstm_337_while_identity_4
lstm_337_while_identity_5+
'lstm_337_while_lstm_337_strided_slice_1g
clstm_337_while_tensorarrayv2read_tensorlistgetitem_lstm_337_tensorarrayunstack_tensorlistfromtensorN
;lstm_337_while_lstm_cell_535_matmul_readvariableop_resource:	d?P
=lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource:	2?K
<lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource:	???3lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp?2lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp?4lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp?
@lstm_337/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_337/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_337_while_tensorarrayv2read_tensorlistgetitem_lstm_337_tensorarrayunstack_tensorlistfromtensor_0lstm_337_while_placeholderIlstm_337/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_337/while/lstm_cell_535/MatMul/ReadVariableOpReadVariableOp=lstm_337_while_lstm_cell_535_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_337/while/lstm_cell_535/MatMulMatMul9lstm_337/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp?lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_337/while/lstm_cell_535/MatMul_1MatMullstm_337_while_placeholder_2<lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_337/while/lstm_cell_535/addAddV2-lstm_337/while/lstm_cell_535/MatMul:product:0/lstm_337/while/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp>lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_337/while/lstm_cell_535/BiasAddBiasAdd$lstm_337/while/lstm_cell_535/add:z:0;lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_337/while/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_337/while/lstm_cell_535/splitSplit5lstm_337/while/lstm_cell_535/split/split_dim:output:0-lstm_337/while/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_337/while/lstm_cell_535/SigmoidSigmoid+lstm_337/while/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_337/while/lstm_cell_535/Sigmoid_1Sigmoid+lstm_337/while/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_337/while/lstm_cell_535/mulMul*lstm_337/while/lstm_cell_535/Sigmoid_1:y:0lstm_337_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_337/while/lstm_cell_535/ReluRelu+lstm_337/while/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_337/while/lstm_cell_535/mul_1Mul(lstm_337/while/lstm_cell_535/Sigmoid:y:0/lstm_337/while/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_337/while/lstm_cell_535/add_1AddV2$lstm_337/while/lstm_cell_535/mul:z:0&lstm_337/while/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_337/while/lstm_cell_535/Sigmoid_2Sigmoid+lstm_337/while/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_337/while/lstm_cell_535/Relu_1Relu&lstm_337/while/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_337/while/lstm_cell_535/mul_2Mul*lstm_337/while/lstm_cell_535/Sigmoid_2:y:01lstm_337/while/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_337/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_337_while_placeholder_1lstm_337_while_placeholder&lstm_337/while/lstm_cell_535/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_337/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_337/while/addAddV2lstm_337_while_placeholderlstm_337/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_337/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_337/while/add_1AddV2*lstm_337_while_lstm_337_while_loop_counterlstm_337/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_337/while/IdentityIdentitylstm_337/while/add_1:z:0^lstm_337/while/NoOp*
T0*
_output_shapes
: ?
lstm_337/while/Identity_1Identity0lstm_337_while_lstm_337_while_maximum_iterations^lstm_337/while/NoOp*
T0*
_output_shapes
: t
lstm_337/while/Identity_2Identitylstm_337/while/add:z:0^lstm_337/while/NoOp*
T0*
_output_shapes
: ?
lstm_337/while/Identity_3IdentityClstm_337/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_337/while/NoOp*
T0*
_output_shapes
: ?
lstm_337/while/Identity_4Identity&lstm_337/while/lstm_cell_535/mul_2:z:0^lstm_337/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_337/while/Identity_5Identity&lstm_337/while/lstm_cell_535/add_1:z:0^lstm_337/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_337/while/NoOpNoOp4^lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp3^lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp5^lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_337_while_identity lstm_337/while/Identity:output:0"?
lstm_337_while_identity_1"lstm_337/while/Identity_1:output:0"?
lstm_337_while_identity_2"lstm_337/while/Identity_2:output:0"?
lstm_337_while_identity_3"lstm_337/while/Identity_3:output:0"?
lstm_337_while_identity_4"lstm_337/while/Identity_4:output:0"?
lstm_337_while_identity_5"lstm_337/while/Identity_5:output:0"T
'lstm_337_while_lstm_337_strided_slice_1)lstm_337_while_lstm_337_strided_slice_1_0"~
<lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource>lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource_0"?
=lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource?lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource_0"|
;lstm_337_while_lstm_cell_535_matmul_readvariableop_resource=lstm_337_while_lstm_cell_535_matmul_readvariableop_resource_0"?
clstm_337_while_tensorarrayv2read_tensorlistgetitem_lstm_337_tensorarrayunstack_tensorlistfromtensorelstm_337_while_tensorarrayv2read_tensorlistgetitem_lstm_337_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp3lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp2h
2lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp2lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp2l
4lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp4lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245610
inputs_0?
,lstm_cell_534_matmul_readvariableop_resource:	?A
.lstm_cell_534_matmul_1_readvariableop_resource:	d?<
-lstm_cell_534_biasadd_readvariableop_resource:	?
identity??$lstm_cell_534/BiasAdd/ReadVariableOp?#lstm_cell_534/MatMul/ReadVariableOp?%lstm_cell_534/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_534/MatMul/ReadVariableOpReadVariableOp,lstm_cell_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_534/MatMulMatMulstrided_slice_2:output:0+lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_534_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_534/MatMul_1MatMulzeros:output:0-lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_534/addAddV2lstm_cell_534/MatMul:product:0 lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_534/BiasAddBiasAddlstm_cell_534/add:z:0,lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_534/splitSplit&lstm_cell_534/split/split_dim:output:0lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_534/SigmoidSigmoidlstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_1Sigmoidlstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_534/mulMullstm_cell_534/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_534/ReluRelulstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_1Mullstm_cell_534/Sigmoid:y:0 lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_534/add_1AddV2lstm_cell_534/mul:z:0lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_2Sigmoidlstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_534/Relu_1Relulstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_2Mullstm_cell_534/Sigmoid_2:y:0"lstm_cell_534/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_534_matmul_readvariableop_resource.lstm_cell_534_matmul_1_readvariableop_resource-lstm_cell_534_biasadd_readvariableop_resource*
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
while_body_3245526*
condR
while_cond_3245525*K
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
NoOpNoOp%^lstm_cell_534/BiasAdd/ReadVariableOp$^lstm_cell_534/MatMul/ReadVariableOp&^lstm_cell_534/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_534/BiasAdd/ReadVariableOp$lstm_cell_534/BiasAdd/ReadVariableOp2J
#lstm_cell_534/MatMul/ReadVariableOp#lstm_cell_534/MatMul/ReadVariableOp2N
%lstm_cell_534/MatMul_1/ReadVariableOp%lstm_cell_534/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
+__inference_dense_112_layer_call_fn_3247137

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
F__inference_dense_112_layer_call_and_return_conditional_losses_3243629o
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
?
?
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3247213

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
?
*sequential_112_lstm_338_while_cond_3242021L
Hsequential_112_lstm_338_while_sequential_112_lstm_338_while_loop_counterR
Nsequential_112_lstm_338_while_sequential_112_lstm_338_while_maximum_iterations-
)sequential_112_lstm_338_while_placeholder/
+sequential_112_lstm_338_while_placeholder_1/
+sequential_112_lstm_338_while_placeholder_2/
+sequential_112_lstm_338_while_placeholder_3N
Jsequential_112_lstm_338_while_less_sequential_112_lstm_338_strided_slice_1e
asequential_112_lstm_338_while_sequential_112_lstm_338_while_cond_3242021___redundant_placeholder0e
asequential_112_lstm_338_while_sequential_112_lstm_338_while_cond_3242021___redundant_placeholder1e
asequential_112_lstm_338_while_sequential_112_lstm_338_while_cond_3242021___redundant_placeholder2e
asequential_112_lstm_338_while_sequential_112_lstm_338_while_cond_3242021___redundant_placeholder3*
&sequential_112_lstm_338_while_identity
?
"sequential_112/lstm_338/while/LessLess)sequential_112_lstm_338_while_placeholderJsequential_112_lstm_338_while_less_sequential_112_lstm_338_strided_slice_1*
T0*
_output_shapes
: {
&sequential_112/lstm_338/while/IdentityIdentity&sequential_112/lstm_338/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_112_lstm_338_while_identity/sequential_112/lstm_338/while/Identity:output:0*(
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
*__inference_lstm_338_layer_call_fn_3246545

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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3243611o
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
0__inference_sequential_112_layer_call_fn_3243661
lstm_336_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_336_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_112_layer_call_and_return_conditional_losses_3243636o
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
_user_specified_namelstm_336_input
?K
?
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245467
inputs_0?
,lstm_cell_534_matmul_readvariableop_resource:	?A
.lstm_cell_534_matmul_1_readvariableop_resource:	d?<
-lstm_cell_534_biasadd_readvariableop_resource:	?
identity??$lstm_cell_534/BiasAdd/ReadVariableOp?#lstm_cell_534/MatMul/ReadVariableOp?%lstm_cell_534/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_534/MatMul/ReadVariableOpReadVariableOp,lstm_cell_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_534/MatMulMatMulstrided_slice_2:output:0+lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_534_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_534/MatMul_1MatMulzeros:output:0-lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_534/addAddV2lstm_cell_534/MatMul:product:0 lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_534/BiasAddBiasAddlstm_cell_534/add:z:0,lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_534/splitSplit&lstm_cell_534/split/split_dim:output:0lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_534/SigmoidSigmoidlstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_1Sigmoidlstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_534/mulMullstm_cell_534/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_534/ReluRelulstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_1Mullstm_cell_534/Sigmoid:y:0 lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_534/add_1AddV2lstm_cell_534/mul:z:0lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_2Sigmoidlstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_534/Relu_1Relulstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_2Mullstm_cell_534/Sigmoid_2:y:0"lstm_cell_534/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_534_matmul_readvariableop_resource.lstm_cell_534_matmul_1_readvariableop_resource-lstm_cell_534_biasadd_readvariableop_resource*
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
while_body_3245383*
condR
while_cond_3245382*K
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
NoOpNoOp%^lstm_cell_534/BiasAdd/ReadVariableOp$^lstm_cell_534/MatMul/ReadVariableOp&^lstm_cell_534/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_534/BiasAdd/ReadVariableOp$lstm_cell_534/BiasAdd/ReadVariableOp2J
#lstm_cell_534/MatMul/ReadVariableOp#lstm_cell_534/MatMul/ReadVariableOp2N
%lstm_cell_534/MatMul_1/ReadVariableOp%lstm_cell_534/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3247245

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
while_cond_3246614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3246614___redundant_placeholder05
1while_while_cond_3246614___redundant_placeholder15
1while_while_cond_3246614___redundant_placeholder25
1while_while_cond_3246614___redundant_placeholder3
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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3242675

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
*__inference_lstm_337_layer_call_fn_3245918
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3242803|
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
while_body_3245669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_534_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_534_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_534_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_534_matmul_readvariableop_resource:	?G
4while_lstm_cell_534_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_534_biasadd_readvariableop_resource:	???*while/lstm_cell_534/BiasAdd/ReadVariableOp?)while/lstm_cell_534/MatMul/ReadVariableOp?+while/lstm_cell_534/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_534/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_534_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_534/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_534_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_534/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_534/addAddV2$while/lstm_cell_534/MatMul:product:0&while/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_534_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_534/BiasAddBiasAddwhile/lstm_cell_534/add:z:02while/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_534/splitSplit,while/lstm_cell_534/split/split_dim:output:0$while/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_534/SigmoidSigmoid"while/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_1Sigmoid"while/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mulMul!while/lstm_cell_534/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_534/ReluRelu"while/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_1Mulwhile/lstm_cell_534/Sigmoid:y:0&while/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/add_1AddV2while/lstm_cell_534/mul:z:0while/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_2Sigmoid"while/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_534/Relu_1Reluwhile/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_2Mul!while/lstm_cell_534/Sigmoid_2:y:0(while/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_534/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_534/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_534/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_534/BiasAdd/ReadVariableOp*^while/lstm_cell_534/MatMul/ReadVariableOp,^while/lstm_cell_534/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_534_biasadd_readvariableop_resource5while_lstm_cell_534_biasadd_readvariableop_resource_0"n
4while_lstm_cell_534_matmul_1_readvariableop_resource6while_lstm_cell_534_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_534_matmul_readvariableop_resource4while_lstm_cell_534_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_534/BiasAdd/ReadVariableOp*while/lstm_cell_534/BiasAdd/ReadVariableOp2V
)while/lstm_cell_534/MatMul/ReadVariableOp)while/lstm_cell_534/MatMul/ReadVariableOp2Z
+while/lstm_cell_534/MatMul_1/ReadVariableOp+while/lstm_cell_534/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_112_layer_call_and_return_conditional_losses_3243629

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
while_cond_3242192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3242192___redundant_placeholder05
1while_while_cond_3242192___redundant_placeholder15
1while_while_cond_3242192___redundant_placeholder25
1while_while_cond_3242192___redundant_placeholder3
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
*__inference_lstm_337_layer_call_fn_3245907
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3242612|
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
while_cond_3243742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3243742___redundant_placeholder05
1while_while_cond_3243742___redundant_placeholder15
1while_while_cond_3243742___redundant_placeholder25
1while_while_cond_3243742___redundant_placeholder3
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
while_cond_3242542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3242542___redundant_placeholder05
1while_while_cond_3242542___redundant_placeholder15
1while_while_cond_3242542___redundant_placeholder25
1while_while_cond_3242542___redundant_placeholder3
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3246842
inputs_0>
,lstm_cell_536_matmul_readvariableop_resource:2(@
.lstm_cell_536_matmul_1_readvariableop_resource:
(;
-lstm_cell_536_biasadd_readvariableop_resource:(
identity??$lstm_cell_536/BiasAdd/ReadVariableOp?#lstm_cell_536/MatMul/ReadVariableOp?%lstm_cell_536/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_536/MatMul/ReadVariableOpReadVariableOp,lstm_cell_536_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_536/MatMulMatMulstrided_slice_2:output:0+lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_536_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_536/MatMul_1MatMulzeros:output:0-lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_536/addAddV2lstm_cell_536/MatMul:product:0 lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_536_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_536/BiasAddBiasAddlstm_cell_536/add:z:0,lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_536/splitSplit&lstm_cell_536/split/split_dim:output:0lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_536/SigmoidSigmoidlstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_1Sigmoidlstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_536/mulMullstm_cell_536/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_536/ReluRelulstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_1Mullstm_cell_536/Sigmoid:y:0 lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_536/add_1AddV2lstm_cell_536/mul:z:0lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_2Sigmoidlstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_536/Relu_1Relulstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_2Mullstm_cell_536/Sigmoid_2:y:0"lstm_cell_536/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_536_matmul_readvariableop_resource.lstm_cell_536_matmul_1_readvariableop_resource-lstm_cell_536_biasadd_readvariableop_resource*
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
while_body_3246758*
condR
while_cond_3246757*K
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
NoOpNoOp%^lstm_cell_536/BiasAdd/ReadVariableOp$^lstm_cell_536/MatMul/ReadVariableOp&^lstm_cell_536/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_536/BiasAdd/ReadVariableOp$lstm_cell_536/BiasAdd/ReadVariableOp2J
#lstm_cell_536/MatMul/ReadVariableOp#lstm_cell_536/MatMul/ReadVariableOp2N
%lstm_cell_536/MatMul_1/ReadVariableOp%lstm_cell_536/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3247343

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
while_body_3245526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_534_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_534_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_534_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_534_matmul_readvariableop_resource:	?G
4while_lstm_cell_534_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_534_biasadd_readvariableop_resource:	???*while/lstm_cell_534/BiasAdd/ReadVariableOp?)while/lstm_cell_534/MatMul/ReadVariableOp?+while/lstm_cell_534/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_534/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_534_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_534/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_534_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_534/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_534/addAddV2$while/lstm_cell_534/MatMul:product:0&while/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_534_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_534/BiasAddBiasAddwhile/lstm_cell_534/add:z:02while/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_534/splitSplit,while/lstm_cell_534/split/split_dim:output:0$while/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_534/SigmoidSigmoid"while/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_1Sigmoid"while/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mulMul!while/lstm_cell_534/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_534/ReluRelu"while/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_1Mulwhile/lstm_cell_534/Sigmoid:y:0&while/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/add_1AddV2while/lstm_cell_534/mul:z:0while/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_2Sigmoid"while/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_534/Relu_1Reluwhile/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_2Mul!while/lstm_cell_534/Sigmoid_2:y:0(while/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_534/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_534/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_534/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_534/BiasAdd/ReadVariableOp*^while/lstm_cell_534/MatMul/ReadVariableOp,^while/lstm_cell_534/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_534_biasadd_readvariableop_resource5while_lstm_cell_534_biasadd_readvariableop_resource_0"n
4while_lstm_cell_534_matmul_1_readvariableop_resource6while_lstm_cell_534_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_534_matmul_readvariableop_resource4while_lstm_cell_534_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_534/BiasAdd/ReadVariableOp*while/lstm_cell_534/BiasAdd/ReadVariableOp2V
)while/lstm_cell_534/MatMul/ReadVariableOp)while/lstm_cell_534/MatMul/ReadVariableOp2Z
+while/lstm_cell_534/MatMul_1/ReadVariableOp+while/lstm_cell_534/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3242893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_536_3242917_0:2(/
while_lstm_cell_536_3242919_0:
(+
while_lstm_cell_536_3242921_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_536_3242917:2(-
while_lstm_cell_536_3242919:
()
while_lstm_cell_536_3242921:(??+while/lstm_cell_536/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_536/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_536_3242917_0while_lstm_cell_536_3242919_0while_lstm_cell_536_3242921_0*
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
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3242879?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_536/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_536/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_536/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_536/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_536_3242917while_lstm_cell_536_3242917_0"<
while_lstm_cell_536_3242919while_lstm_cell_536_3242919_0"<
while_lstm_cell_536_3242921while_lstm_cell_536_3242921_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_536/StatefulPartitionedCall+while/lstm_cell_536/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_112_layer_call_and_return_conditional_losses_3243636

inputs#
lstm_336_3243312:	?#
lstm_336_3243314:	d?
lstm_336_3243316:	?#
lstm_337_3243462:	d?#
lstm_337_3243464:	2?
lstm_337_3243466:	?"
lstm_338_3243612:2("
lstm_338_3243614:
(
lstm_338_3243616:(#
dense_112_3243630:

dense_112_3243632:
identity??!dense_112/StatefulPartitionedCall? lstm_336/StatefulPartitionedCall? lstm_337/StatefulPartitionedCall? lstm_338/StatefulPartitionedCall?
 lstm_336/StatefulPartitionedCallStatefulPartitionedCallinputslstm_336_3243312lstm_336_3243314lstm_336_3243316*
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3243311?
 lstm_337/StatefulPartitionedCallStatefulPartitionedCall)lstm_336/StatefulPartitionedCall:output:0lstm_337_3243462lstm_337_3243464lstm_337_3243466*
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3243461?
 lstm_338/StatefulPartitionedCallStatefulPartitionedCall)lstm_337/StatefulPartitionedCall:output:0lstm_338_3243612lstm_338_3243614lstm_338_3243616*
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3243611?
!dense_112/StatefulPartitionedCallStatefulPartitionedCall)lstm_338/StatefulPartitionedCall:output:0dense_112_3243630dense_112_3243632*
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
F__inference_dense_112_layer_call_and_return_conditional_losses_3243629y
IdentityIdentity*dense_112/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_112/StatefulPartitionedCall!^lstm_336/StatefulPartitionedCall!^lstm_337/StatefulPartitionedCall!^lstm_338/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2D
 lstm_336/StatefulPartitionedCall lstm_336/StatefulPartitionedCall2D
 lstm_337/StatefulPartitionedCall lstm_337/StatefulPartitionedCall2D
 lstm_338/StatefulPartitionedCall lstm_338/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244853

inputsH
5lstm_336_lstm_cell_534_matmul_readvariableop_resource:	?J
7lstm_336_lstm_cell_534_matmul_1_readvariableop_resource:	d?E
6lstm_336_lstm_cell_534_biasadd_readvariableop_resource:	?H
5lstm_337_lstm_cell_535_matmul_readvariableop_resource:	d?J
7lstm_337_lstm_cell_535_matmul_1_readvariableop_resource:	2?E
6lstm_337_lstm_cell_535_biasadd_readvariableop_resource:	?G
5lstm_338_lstm_cell_536_matmul_readvariableop_resource:2(I
7lstm_338_lstm_cell_536_matmul_1_readvariableop_resource:
(D
6lstm_338_lstm_cell_536_biasadd_readvariableop_resource:(:
(dense_112_matmul_readvariableop_resource:
7
)dense_112_biasadd_readvariableop_resource:
identity?? dense_112/BiasAdd/ReadVariableOp?dense_112/MatMul/ReadVariableOp?-lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp?,lstm_336/lstm_cell_534/MatMul/ReadVariableOp?.lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp?lstm_336/while?-lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp?,lstm_337/lstm_cell_535/MatMul/ReadVariableOp?.lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp?lstm_337/while?-lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp?,lstm_338/lstm_cell_536/MatMul/ReadVariableOp?.lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp?lstm_338/whileD
lstm_336/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_336/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_336/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_336/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_336/strided_sliceStridedSlicelstm_336/Shape:output:0%lstm_336/strided_slice/stack:output:0'lstm_336/strided_slice/stack_1:output:0'lstm_336/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_336/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_336/zeros/packedPacklstm_336/strided_slice:output:0 lstm_336/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_336/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_336/zerosFilllstm_336/zeros/packed:output:0lstm_336/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_336/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_336/zeros_1/packedPacklstm_336/strided_slice:output:0"lstm_336/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_336/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_336/zeros_1Fill lstm_336/zeros_1/packed:output:0lstm_336/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_336/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_336/transpose	Transposeinputs lstm_336/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_336/Shape_1Shapelstm_336/transpose:y:0*
T0*
_output_shapes
:h
lstm_336/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_336/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_336/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_336/strided_slice_1StridedSlicelstm_336/Shape_1:output:0'lstm_336/strided_slice_1/stack:output:0)lstm_336/strided_slice_1/stack_1:output:0)lstm_336/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_336/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_336/TensorArrayV2TensorListReserve-lstm_336/TensorArrayV2/element_shape:output:0!lstm_336/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_336/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_336/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_336/transpose:y:0Glstm_336/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_336/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_336/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_336/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_336/strided_slice_2StridedSlicelstm_336/transpose:y:0'lstm_336/strided_slice_2/stack:output:0)lstm_336/strided_slice_2/stack_1:output:0)lstm_336/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_336/lstm_cell_534/MatMul/ReadVariableOpReadVariableOp5lstm_336_lstm_cell_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_336/lstm_cell_534/MatMulMatMul!lstm_336/strided_slice_2:output:04lstm_336/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_336/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp7lstm_336_lstm_cell_534_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_336/lstm_cell_534/MatMul_1MatMullstm_336/zeros:output:06lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_336/lstm_cell_534/addAddV2'lstm_336/lstm_cell_534/MatMul:product:0)lstm_336/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_336/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp6lstm_336_lstm_cell_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_336/lstm_cell_534/BiasAddBiasAddlstm_336/lstm_cell_534/add:z:05lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_336/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_336/lstm_cell_534/splitSplit/lstm_336/lstm_cell_534/split/split_dim:output:0'lstm_336/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_336/lstm_cell_534/SigmoidSigmoid%lstm_336/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_336/lstm_cell_534/Sigmoid_1Sigmoid%lstm_336/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_336/lstm_cell_534/mulMul$lstm_336/lstm_cell_534/Sigmoid_1:y:0lstm_336/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_336/lstm_cell_534/ReluRelu%lstm_336/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_336/lstm_cell_534/mul_1Mul"lstm_336/lstm_cell_534/Sigmoid:y:0)lstm_336/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_336/lstm_cell_534/add_1AddV2lstm_336/lstm_cell_534/mul:z:0 lstm_336/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_336/lstm_cell_534/Sigmoid_2Sigmoid%lstm_336/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_336/lstm_cell_534/Relu_1Relu lstm_336/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_336/lstm_cell_534/mul_2Mul$lstm_336/lstm_cell_534/Sigmoid_2:y:0+lstm_336/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_336/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_336/TensorArrayV2_1TensorListReserve/lstm_336/TensorArrayV2_1/element_shape:output:0!lstm_336/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_336/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_336/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_336/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_336/whileWhile$lstm_336/while/loop_counter:output:0*lstm_336/while/maximum_iterations:output:0lstm_336/time:output:0!lstm_336/TensorArrayV2_1:handle:0lstm_336/zeros:output:0lstm_336/zeros_1:output:0!lstm_336/strided_slice_1:output:0@lstm_336/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_336_lstm_cell_534_matmul_readvariableop_resource7lstm_336_lstm_cell_534_matmul_1_readvariableop_resource6lstm_336_lstm_cell_534_biasadd_readvariableop_resource*
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
lstm_336_while_body_3244485*'
condR
lstm_336_while_cond_3244484*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_336/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_336/TensorArrayV2Stack/TensorListStackTensorListStacklstm_336/while:output:3Blstm_336/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_336/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_336/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_336/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_336/strided_slice_3StridedSlice4lstm_336/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_336/strided_slice_3/stack:output:0)lstm_336/strided_slice_3/stack_1:output:0)lstm_336/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_336/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_336/transpose_1	Transpose4lstm_336/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_336/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_336/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_337/ShapeShapelstm_336/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_337/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_337/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_337/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_337/strided_sliceStridedSlicelstm_337/Shape:output:0%lstm_337/strided_slice/stack:output:0'lstm_337/strided_slice/stack_1:output:0'lstm_337/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_337/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_337/zeros/packedPacklstm_337/strided_slice:output:0 lstm_337/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_337/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_337/zerosFilllstm_337/zeros/packed:output:0lstm_337/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_337/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_337/zeros_1/packedPacklstm_337/strided_slice:output:0"lstm_337/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_337/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_337/zeros_1Fill lstm_337/zeros_1/packed:output:0lstm_337/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_337/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_337/transpose	Transposelstm_336/transpose_1:y:0 lstm_337/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_337/Shape_1Shapelstm_337/transpose:y:0*
T0*
_output_shapes
:h
lstm_337/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_337/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_337/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_337/strided_slice_1StridedSlicelstm_337/Shape_1:output:0'lstm_337/strided_slice_1/stack:output:0)lstm_337/strided_slice_1/stack_1:output:0)lstm_337/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_337/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_337/TensorArrayV2TensorListReserve-lstm_337/TensorArrayV2/element_shape:output:0!lstm_337/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_337/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_337/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_337/transpose:y:0Glstm_337/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_337/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_337/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_337/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_337/strided_slice_2StridedSlicelstm_337/transpose:y:0'lstm_337/strided_slice_2/stack:output:0)lstm_337/strided_slice_2/stack_1:output:0)lstm_337/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_337/lstm_cell_535/MatMul/ReadVariableOpReadVariableOp5lstm_337_lstm_cell_535_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_337/lstm_cell_535/MatMulMatMul!lstm_337/strided_slice_2:output:04lstm_337/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_337/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp7lstm_337_lstm_cell_535_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_337/lstm_cell_535/MatMul_1MatMullstm_337/zeros:output:06lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_337/lstm_cell_535/addAddV2'lstm_337/lstm_cell_535/MatMul:product:0)lstm_337/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_337/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp6lstm_337_lstm_cell_535_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_337/lstm_cell_535/BiasAddBiasAddlstm_337/lstm_cell_535/add:z:05lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_337/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_337/lstm_cell_535/splitSplit/lstm_337/lstm_cell_535/split/split_dim:output:0'lstm_337/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_337/lstm_cell_535/SigmoidSigmoid%lstm_337/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_337/lstm_cell_535/Sigmoid_1Sigmoid%lstm_337/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_337/lstm_cell_535/mulMul$lstm_337/lstm_cell_535/Sigmoid_1:y:0lstm_337/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_337/lstm_cell_535/ReluRelu%lstm_337/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_337/lstm_cell_535/mul_1Mul"lstm_337/lstm_cell_535/Sigmoid:y:0)lstm_337/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_337/lstm_cell_535/add_1AddV2lstm_337/lstm_cell_535/mul:z:0 lstm_337/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_337/lstm_cell_535/Sigmoid_2Sigmoid%lstm_337/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_337/lstm_cell_535/Relu_1Relu lstm_337/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_337/lstm_cell_535/mul_2Mul$lstm_337/lstm_cell_535/Sigmoid_2:y:0+lstm_337/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_337/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_337/TensorArrayV2_1TensorListReserve/lstm_337/TensorArrayV2_1/element_shape:output:0!lstm_337/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_337/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_337/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_337/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_337/whileWhile$lstm_337/while/loop_counter:output:0*lstm_337/while/maximum_iterations:output:0lstm_337/time:output:0!lstm_337/TensorArrayV2_1:handle:0lstm_337/zeros:output:0lstm_337/zeros_1:output:0!lstm_337/strided_slice_1:output:0@lstm_337/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_337_lstm_cell_535_matmul_readvariableop_resource7lstm_337_lstm_cell_535_matmul_1_readvariableop_resource6lstm_337_lstm_cell_535_biasadd_readvariableop_resource*
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
lstm_337_while_body_3244624*'
condR
lstm_337_while_cond_3244623*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_337/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_337/TensorArrayV2Stack/TensorListStackTensorListStacklstm_337/while:output:3Blstm_337/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_337/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_337/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_337/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_337/strided_slice_3StridedSlice4lstm_337/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_337/strided_slice_3/stack:output:0)lstm_337/strided_slice_3/stack_1:output:0)lstm_337/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_337/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_337/transpose_1	Transpose4lstm_337/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_337/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_337/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_338/ShapeShapelstm_337/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_338/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_338/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_338/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_338/strided_sliceStridedSlicelstm_338/Shape:output:0%lstm_338/strided_slice/stack:output:0'lstm_338/strided_slice/stack_1:output:0'lstm_338/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_338/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_338/zeros/packedPacklstm_338/strided_slice:output:0 lstm_338/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_338/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_338/zerosFilllstm_338/zeros/packed:output:0lstm_338/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_338/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_338/zeros_1/packedPacklstm_338/strided_slice:output:0"lstm_338/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_338/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_338/zeros_1Fill lstm_338/zeros_1/packed:output:0lstm_338/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_338/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_338/transpose	Transposelstm_337/transpose_1:y:0 lstm_338/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_338/Shape_1Shapelstm_338/transpose:y:0*
T0*
_output_shapes
:h
lstm_338/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_338/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_338/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_338/strided_slice_1StridedSlicelstm_338/Shape_1:output:0'lstm_338/strided_slice_1/stack:output:0)lstm_338/strided_slice_1/stack_1:output:0)lstm_338/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_338/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_338/TensorArrayV2TensorListReserve-lstm_338/TensorArrayV2/element_shape:output:0!lstm_338/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_338/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_338/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_338/transpose:y:0Glstm_338/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_338/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_338/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_338/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_338/strided_slice_2StridedSlicelstm_338/transpose:y:0'lstm_338/strided_slice_2/stack:output:0)lstm_338/strided_slice_2/stack_1:output:0)lstm_338/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_338/lstm_cell_536/MatMul/ReadVariableOpReadVariableOp5lstm_338_lstm_cell_536_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_338/lstm_cell_536/MatMulMatMul!lstm_338/strided_slice_2:output:04lstm_338/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_338/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp7lstm_338_lstm_cell_536_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_338/lstm_cell_536/MatMul_1MatMullstm_338/zeros:output:06lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_338/lstm_cell_536/addAddV2'lstm_338/lstm_cell_536/MatMul:product:0)lstm_338/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_338/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp6lstm_338_lstm_cell_536_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_338/lstm_cell_536/BiasAddBiasAddlstm_338/lstm_cell_536/add:z:05lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_338/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_338/lstm_cell_536/splitSplit/lstm_338/lstm_cell_536/split/split_dim:output:0'lstm_338/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_338/lstm_cell_536/SigmoidSigmoid%lstm_338/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_338/lstm_cell_536/Sigmoid_1Sigmoid%lstm_338/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_338/lstm_cell_536/mulMul$lstm_338/lstm_cell_536/Sigmoid_1:y:0lstm_338/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_338/lstm_cell_536/ReluRelu%lstm_338/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_338/lstm_cell_536/mul_1Mul"lstm_338/lstm_cell_536/Sigmoid:y:0)lstm_338/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_338/lstm_cell_536/add_1AddV2lstm_338/lstm_cell_536/mul:z:0 lstm_338/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_338/lstm_cell_536/Sigmoid_2Sigmoid%lstm_338/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_338/lstm_cell_536/Relu_1Relu lstm_338/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_338/lstm_cell_536/mul_2Mul$lstm_338/lstm_cell_536/Sigmoid_2:y:0+lstm_338/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_338/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_338/TensorArrayV2_1TensorListReserve/lstm_338/TensorArrayV2_1/element_shape:output:0!lstm_338/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_338/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_338/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_338/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_338/whileWhile$lstm_338/while/loop_counter:output:0*lstm_338/while/maximum_iterations:output:0lstm_338/time:output:0!lstm_338/TensorArrayV2_1:handle:0lstm_338/zeros:output:0lstm_338/zeros_1:output:0!lstm_338/strided_slice_1:output:0@lstm_338/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_338_lstm_cell_536_matmul_readvariableop_resource7lstm_338_lstm_cell_536_matmul_1_readvariableop_resource6lstm_338_lstm_cell_536_biasadd_readvariableop_resource*
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
lstm_338_while_body_3244763*'
condR
lstm_338_while_cond_3244762*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_338/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_338/TensorArrayV2Stack/TensorListStackTensorListStacklstm_338/while:output:3Blstm_338/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_338/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_338/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_338/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_338/strided_slice_3StridedSlice4lstm_338/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_338/strided_slice_3/stack:output:0)lstm_338/strided_slice_3/stack_1:output:0)lstm_338/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_338/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_338/transpose_1	Transpose4lstm_338/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_338/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_338/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_112/MatMul/ReadVariableOpReadVariableOp(dense_112_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_112/MatMulMatMul!lstm_338/strided_slice_3:output:0'dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_112/BiasAdd/ReadVariableOpReadVariableOp)dense_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_112/BiasAddBiasAdddense_112/MatMul:product:0(dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_112/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_112/BiasAdd/ReadVariableOp ^dense_112/MatMul/ReadVariableOp.^lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp-^lstm_336/lstm_cell_534/MatMul/ReadVariableOp/^lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp^lstm_336/while.^lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp-^lstm_337/lstm_cell_535/MatMul/ReadVariableOp/^lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp^lstm_337/while.^lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp-^lstm_338/lstm_cell_536/MatMul/ReadVariableOp/^lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp^lstm_338/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_112/BiasAdd/ReadVariableOp dense_112/BiasAdd/ReadVariableOp2B
dense_112/MatMul/ReadVariableOpdense_112/MatMul/ReadVariableOp2^
-lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp-lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp2\
,lstm_336/lstm_cell_534/MatMul/ReadVariableOp,lstm_336/lstm_cell_534/MatMul/ReadVariableOp2`
.lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp.lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp2 
lstm_336/whilelstm_336/while2^
-lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp-lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp2\
,lstm_337/lstm_cell_535/MatMul/ReadVariableOp,lstm_337/lstm_cell_535/MatMul/ReadVariableOp2`
.lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp.lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp2 
lstm_337/whilelstm_337/while2^
-lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp-lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp2\
,lstm_338/lstm_cell_536/MatMul/ReadVariableOp,lstm_338/lstm_cell_536/MatMul/ReadVariableOp2`
.lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp.lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp2 
lstm_338/whilelstm_338/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_336_layer_call_and_return_conditional_losses_3242453

inputs(
lstm_cell_534_3242371:	?(
lstm_cell_534_3242373:	d?$
lstm_cell_534_3242375:	?
identity??%lstm_cell_534/StatefulPartitionedCall?while;
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
%lstm_cell_534/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_534_3242371lstm_cell_534_3242373lstm_cell_534_3242375*
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
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3242325n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_534_3242371lstm_cell_534_3242373lstm_cell_534_3242375*
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
while_body_3242384*
condR
while_cond_3242383*K
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
NoOpNoOp&^lstm_cell_534/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_534/StatefulPartitionedCall%lstm_cell_534/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_337_layer_call_and_return_conditional_losses_3243992

inputs?
,lstm_cell_535_matmul_readvariableop_resource:	d?A
.lstm_cell_535_matmul_1_readvariableop_resource:	2?<
-lstm_cell_535_biasadd_readvariableop_resource:	?
identity??$lstm_cell_535/BiasAdd/ReadVariableOp?#lstm_cell_535/MatMul/ReadVariableOp?%lstm_cell_535/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_535/MatMul/ReadVariableOpReadVariableOp,lstm_cell_535_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_535/MatMulMatMulstrided_slice_2:output:0+lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_535_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_535/MatMul_1MatMulzeros:output:0-lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_535/addAddV2lstm_cell_535/MatMul:product:0 lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_535_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_535/BiasAddBiasAddlstm_cell_535/add:z:0,lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_535/splitSplit&lstm_cell_535/split/split_dim:output:0lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_535/SigmoidSigmoidlstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_1Sigmoidlstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_535/mulMullstm_cell_535/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_535/ReluRelulstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_1Mullstm_cell_535/Sigmoid:y:0 lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_535/add_1AddV2lstm_cell_535/mul:z:0lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_2Sigmoidlstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_535/Relu_1Relulstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_2Mullstm_cell_535/Sigmoid_2:y:0"lstm_cell_535/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_535_matmul_readvariableop_resource.lstm_cell_535_matmul_1_readvariableop_resource-lstm_cell_535_biasadd_readvariableop_resource*
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
while_body_3243908*
condR
while_cond_3243907*K
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
NoOpNoOp%^lstm_cell_535/BiasAdd/ReadVariableOp$^lstm_cell_535/MatMul/ReadVariableOp&^lstm_cell_535/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_535/BiasAdd/ReadVariableOp$lstm_cell_535/BiasAdd/ReadVariableOp2J
#lstm_cell_535/MatMul/ReadVariableOp#lstm_cell_535/MatMul/ReadVariableOp2N
%lstm_cell_535/MatMul_1/ReadVariableOp%lstm_cell_535/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_3244372
lstm_336_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_336_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3242112o
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
_user_specified_namelstm_336_input
?J
?
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246369

inputs?
,lstm_cell_535_matmul_readvariableop_resource:	d?A
.lstm_cell_535_matmul_1_readvariableop_resource:	2?<
-lstm_cell_535_biasadd_readvariableop_resource:	?
identity??$lstm_cell_535/BiasAdd/ReadVariableOp?#lstm_cell_535/MatMul/ReadVariableOp?%lstm_cell_535/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_535/MatMul/ReadVariableOpReadVariableOp,lstm_cell_535_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_535/MatMulMatMulstrided_slice_2:output:0+lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_535_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_535/MatMul_1MatMulzeros:output:0-lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_535/addAddV2lstm_cell_535/MatMul:product:0 lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_535_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_535/BiasAddBiasAddlstm_cell_535/add:z:0,lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_535/splitSplit&lstm_cell_535/split/split_dim:output:0lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_535/SigmoidSigmoidlstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_1Sigmoidlstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_535/mulMullstm_cell_535/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_535/ReluRelulstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_1Mullstm_cell_535/Sigmoid:y:0 lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_535/add_1AddV2lstm_cell_535/mul:z:0lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_2Sigmoidlstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_535/Relu_1Relulstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_2Mullstm_cell_535/Sigmoid_2:y:0"lstm_cell_535/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_535_matmul_readvariableop_resource.lstm_cell_535_matmul_1_readvariableop_resource-lstm_cell_535_biasadd_readvariableop_resource*
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
while_body_3246285*
condR
while_cond_3246284*K
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
NoOpNoOp%^lstm_cell_535/BiasAdd/ReadVariableOp$^lstm_cell_535/MatMul/ReadVariableOp&^lstm_cell_535/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_535/BiasAdd/ReadVariableOp$lstm_cell_535/BiasAdd/ReadVariableOp2J
#lstm_cell_535/MatMul/ReadVariableOp#lstm_cell_535/MatMul/ReadVariableOp2N
%lstm_cell_535/MatMul_1/ReadVariableOp%lstm_cell_535/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3243743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_536_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_536_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_536_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_536_matmul_readvariableop_resource:2(F
4while_lstm_cell_536_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_536_biasadd_readvariableop_resource:(??*while/lstm_cell_536/BiasAdd/ReadVariableOp?)while/lstm_cell_536/MatMul/ReadVariableOp?+while/lstm_cell_536/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_536/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_536_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_536/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_536_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_536/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_536/addAddV2$while/lstm_cell_536/MatMul:product:0&while/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_536_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_536/BiasAddBiasAddwhile/lstm_cell_536/add:z:02while/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_536/splitSplit,while/lstm_cell_536/split/split_dim:output:0$while/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_536/SigmoidSigmoid"while/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_1Sigmoid"while/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mulMul!while/lstm_cell_536/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_536/ReluRelu"while/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_1Mulwhile/lstm_cell_536/Sigmoid:y:0&while/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/add_1AddV2while/lstm_cell_536/mul:z:0while/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_2Sigmoid"while/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_536/Relu_1Reluwhile/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_2Mul!while/lstm_cell_536/Sigmoid_2:y:0(while/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_536/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_536/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_536/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_536/BiasAdd/ReadVariableOp*^while/lstm_cell_536/MatMul/ReadVariableOp,^while/lstm_cell_536/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_536_biasadd_readvariableop_resource5while_lstm_cell_536_biasadd_readvariableop_resource_0"n
4while_lstm_cell_536_matmul_1_readvariableop_resource6while_lstm_cell_536_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_536_matmul_readvariableop_resource4while_lstm_cell_536_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_536/BiasAdd/ReadVariableOp*while/lstm_cell_536/BiasAdd/ReadVariableOp2V
)while/lstm_cell_536/MatMul/ReadVariableOp)while/lstm_cell_536/MatMul/ReadVariableOp2Z
+while/lstm_cell_536/MatMul_1/ReadVariableOp+while/lstm_cell_536/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_336_while_cond_3244484.
*lstm_336_while_lstm_336_while_loop_counter4
0lstm_336_while_lstm_336_while_maximum_iterations
lstm_336_while_placeholder 
lstm_336_while_placeholder_1 
lstm_336_while_placeholder_2 
lstm_336_while_placeholder_30
,lstm_336_while_less_lstm_336_strided_slice_1G
Clstm_336_while_lstm_336_while_cond_3244484___redundant_placeholder0G
Clstm_336_while_lstm_336_while_cond_3244484___redundant_placeholder1G
Clstm_336_while_lstm_336_while_cond_3244484___redundant_placeholder2G
Clstm_336_while_lstm_336_while_cond_3244484___redundant_placeholder3
lstm_336_while_identity
?
lstm_336/while/LessLesslstm_336_while_placeholder,lstm_336_while_less_lstm_336_strided_slice_1*
T0*
_output_shapes
: ]
lstm_336/while/IdentityIdentitylstm_336/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_336_while_identity lstm_336/while/Identity:output:0*(
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
*sequential_112_lstm_336_while_body_3241744L
Hsequential_112_lstm_336_while_sequential_112_lstm_336_while_loop_counterR
Nsequential_112_lstm_336_while_sequential_112_lstm_336_while_maximum_iterations-
)sequential_112_lstm_336_while_placeholder/
+sequential_112_lstm_336_while_placeholder_1/
+sequential_112_lstm_336_while_placeholder_2/
+sequential_112_lstm_336_while_placeholder_3K
Gsequential_112_lstm_336_while_sequential_112_lstm_336_strided_slice_1_0?
?sequential_112_lstm_336_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_336_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_112_lstm_336_while_lstm_cell_534_matmul_readvariableop_resource_0:	?a
Nsequential_112_lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource_0:	d?\
Msequential_112_lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource_0:	?*
&sequential_112_lstm_336_while_identity,
(sequential_112_lstm_336_while_identity_1,
(sequential_112_lstm_336_while_identity_2,
(sequential_112_lstm_336_while_identity_3,
(sequential_112_lstm_336_while_identity_4,
(sequential_112_lstm_336_while_identity_5I
Esequential_112_lstm_336_while_sequential_112_lstm_336_strided_slice_1?
?sequential_112_lstm_336_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_336_tensorarrayunstack_tensorlistfromtensor]
Jsequential_112_lstm_336_while_lstm_cell_534_matmul_readvariableop_resource:	?_
Lsequential_112_lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource:	d?Z
Ksequential_112_lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource:	???Bsequential_112/lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp?Asequential_112/lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp?Csequential_112/lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp?
Osequential_112/lstm_336/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_112/lstm_336/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_112_lstm_336_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_336_tensorarrayunstack_tensorlistfromtensor_0)sequential_112_lstm_336_while_placeholderXsequential_112/lstm_336/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_112/lstm_336/while/lstm_cell_534/MatMul/ReadVariableOpReadVariableOpLsequential_112_lstm_336_while_lstm_cell_534_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_112/lstm_336/while/lstm_cell_534/MatMulMatMulHsequential_112/lstm_336/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_112/lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_112/lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOpNsequential_112_lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_112/lstm_336/while/lstm_cell_534/MatMul_1MatMul+sequential_112_lstm_336_while_placeholder_2Ksequential_112/lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_112/lstm_336/while/lstm_cell_534/addAddV2<sequential_112/lstm_336/while/lstm_cell_534/MatMul:product:0>sequential_112/lstm_336/while/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_112/lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOpMsequential_112_lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_112/lstm_336/while/lstm_cell_534/BiasAddBiasAdd3sequential_112/lstm_336/while/lstm_cell_534/add:z:0Jsequential_112/lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_112/lstm_336/while/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_112/lstm_336/while/lstm_cell_534/splitSplitDsequential_112/lstm_336/while/lstm_cell_534/split/split_dim:output:0<sequential_112/lstm_336/while/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_112/lstm_336/while/lstm_cell_534/SigmoidSigmoid:sequential_112/lstm_336/while/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_112/lstm_336/while/lstm_cell_534/Sigmoid_1Sigmoid:sequential_112/lstm_336/while/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_112/lstm_336/while/lstm_cell_534/mulMul9sequential_112/lstm_336/while/lstm_cell_534/Sigmoid_1:y:0+sequential_112_lstm_336_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_112/lstm_336/while/lstm_cell_534/ReluRelu:sequential_112/lstm_336/while/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_112/lstm_336/while/lstm_cell_534/mul_1Mul7sequential_112/lstm_336/while/lstm_cell_534/Sigmoid:y:0>sequential_112/lstm_336/while/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_112/lstm_336/while/lstm_cell_534/add_1AddV23sequential_112/lstm_336/while/lstm_cell_534/mul:z:05sequential_112/lstm_336/while/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_112/lstm_336/while/lstm_cell_534/Sigmoid_2Sigmoid:sequential_112/lstm_336/while/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_112/lstm_336/while/lstm_cell_534/Relu_1Relu5sequential_112/lstm_336/while/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_112/lstm_336/while/lstm_cell_534/mul_2Mul9sequential_112/lstm_336/while/lstm_cell_534/Sigmoid_2:y:0@sequential_112/lstm_336/while/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_112/lstm_336/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_112_lstm_336_while_placeholder_1)sequential_112_lstm_336_while_placeholder5sequential_112/lstm_336/while/lstm_cell_534/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_112/lstm_336/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_112/lstm_336/while/addAddV2)sequential_112_lstm_336_while_placeholder,sequential_112/lstm_336/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_112/lstm_336/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_112/lstm_336/while/add_1AddV2Hsequential_112_lstm_336_while_sequential_112_lstm_336_while_loop_counter.sequential_112/lstm_336/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_112/lstm_336/while/IdentityIdentity'sequential_112/lstm_336/while/add_1:z:0#^sequential_112/lstm_336/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_336/while/Identity_1IdentityNsequential_112_lstm_336_while_sequential_112_lstm_336_while_maximum_iterations#^sequential_112/lstm_336/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_336/while/Identity_2Identity%sequential_112/lstm_336/while/add:z:0#^sequential_112/lstm_336/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_336/while/Identity_3IdentityRsequential_112/lstm_336/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_112/lstm_336/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_336/while/Identity_4Identity5sequential_112/lstm_336/while/lstm_cell_534/mul_2:z:0#^sequential_112/lstm_336/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_112/lstm_336/while/Identity_5Identity5sequential_112/lstm_336/while/lstm_cell_534/add_1:z:0#^sequential_112/lstm_336/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_112/lstm_336/while/NoOpNoOpC^sequential_112/lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOpB^sequential_112/lstm_336/while/lstm_cell_534/MatMul/ReadVariableOpD^sequential_112/lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_112_lstm_336_while_identity/sequential_112/lstm_336/while/Identity:output:0"]
(sequential_112_lstm_336_while_identity_11sequential_112/lstm_336/while/Identity_1:output:0"]
(sequential_112_lstm_336_while_identity_21sequential_112/lstm_336/while/Identity_2:output:0"]
(sequential_112_lstm_336_while_identity_31sequential_112/lstm_336/while/Identity_3:output:0"]
(sequential_112_lstm_336_while_identity_41sequential_112/lstm_336/while/Identity_4:output:0"]
(sequential_112_lstm_336_while_identity_51sequential_112/lstm_336/while/Identity_5:output:0"?
Ksequential_112_lstm_336_while_lstm_cell_534_biasadd_readvariableop_resourceMsequential_112_lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource_0"?
Lsequential_112_lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resourceNsequential_112_lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource_0"?
Jsequential_112_lstm_336_while_lstm_cell_534_matmul_readvariableop_resourceLsequential_112_lstm_336_while_lstm_cell_534_matmul_readvariableop_resource_0"?
Esequential_112_lstm_336_while_sequential_112_lstm_336_strided_slice_1Gsequential_112_lstm_336_while_sequential_112_lstm_336_strided_slice_1_0"?
?sequential_112_lstm_336_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_336_tensorarrayunstack_tensorlistfromtensor?sequential_112_lstm_336_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_336_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_112/lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOpBsequential_112/lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp2?
Asequential_112/lstm_336/while/lstm_cell_534/MatMul/ReadVariableOpAsequential_112/lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp2?
Csequential_112/lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOpCsequential_112/lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_112_lstm_336_while_cond_3241743L
Hsequential_112_lstm_336_while_sequential_112_lstm_336_while_loop_counterR
Nsequential_112_lstm_336_while_sequential_112_lstm_336_while_maximum_iterations-
)sequential_112_lstm_336_while_placeholder/
+sequential_112_lstm_336_while_placeholder_1/
+sequential_112_lstm_336_while_placeholder_2/
+sequential_112_lstm_336_while_placeholder_3N
Jsequential_112_lstm_336_while_less_sequential_112_lstm_336_strided_slice_1e
asequential_112_lstm_336_while_sequential_112_lstm_336_while_cond_3241743___redundant_placeholder0e
asequential_112_lstm_336_while_sequential_112_lstm_336_while_cond_3241743___redundant_placeholder1e
asequential_112_lstm_336_while_sequential_112_lstm_336_while_cond_3241743___redundant_placeholder2e
asequential_112_lstm_336_while_sequential_112_lstm_336_while_cond_3241743___redundant_placeholder3*
&sequential_112_lstm_336_while_identity
?
"sequential_112/lstm_336/while/LessLess)sequential_112_lstm_336_while_placeholderJsequential_112_lstm_336_while_less_sequential_112_lstm_336_strided_slice_1*
T0*
_output_shapes
: {
&sequential_112/lstm_336/while/IdentityIdentity&sequential_112/lstm_336/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_112_lstm_336_while_identity/sequential_112/lstm_336/while/Identity:output:0*(
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
while_body_3245999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_535_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_535_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_535_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_535_matmul_readvariableop_resource:	d?G
4while_lstm_cell_535_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_535_biasadd_readvariableop_resource:	???*while/lstm_cell_535/BiasAdd/ReadVariableOp?)while/lstm_cell_535/MatMul/ReadVariableOp?+while/lstm_cell_535/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_535/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_535_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_535/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_535_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_535/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_535/addAddV2$while/lstm_cell_535/MatMul:product:0&while/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_535_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_535/BiasAddBiasAddwhile/lstm_cell_535/add:z:02while/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_535/splitSplit,while/lstm_cell_535/split/split_dim:output:0$while/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_535/SigmoidSigmoid"while/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_1Sigmoid"while/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mulMul!while/lstm_cell_535/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_535/ReluRelu"while/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_1Mulwhile/lstm_cell_535/Sigmoid:y:0&while/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/add_1AddV2while/lstm_cell_535/mul:z:0while/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_2Sigmoid"while/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_535/Relu_1Reluwhile/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_2Mul!while/lstm_cell_535/Sigmoid_2:y:0(while/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_535/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_535/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_535/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_535/BiasAdd/ReadVariableOp*^while/lstm_cell_535/MatMul/ReadVariableOp,^while/lstm_cell_535/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_535_biasadd_readvariableop_resource5while_lstm_cell_535_biasadd_readvariableop_resource_0"n
4while_lstm_cell_535_matmul_1_readvariableop_resource6while_lstm_cell_535_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_535_matmul_readvariableop_resource4while_lstm_cell_535_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_535/BiasAdd/ReadVariableOp*while/lstm_cell_535/BiasAdd/ReadVariableOp2V
)while/lstm_cell_535/MatMul/ReadVariableOp)while/lstm_cell_535/MatMul/ReadVariableOp2Z
+while/lstm_cell_535/MatMul_1/ReadVariableOp+while/lstm_cell_535/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3244073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_534_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_534_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_534_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_534_matmul_readvariableop_resource:	?G
4while_lstm_cell_534_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_534_biasadd_readvariableop_resource:	???*while/lstm_cell_534/BiasAdd/ReadVariableOp?)while/lstm_cell_534/MatMul/ReadVariableOp?+while/lstm_cell_534/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_534/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_534_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_534/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_534_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_534/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_534/addAddV2$while/lstm_cell_534/MatMul:product:0&while/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_534_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_534/BiasAddBiasAddwhile/lstm_cell_534/add:z:02while/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_534/splitSplit,while/lstm_cell_534/split/split_dim:output:0$while/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_534/SigmoidSigmoid"while/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_1Sigmoid"while/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mulMul!while/lstm_cell_534/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_534/ReluRelu"while/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_1Mulwhile/lstm_cell_534/Sigmoid:y:0&while/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/add_1AddV2while/lstm_cell_534/mul:z:0while/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_2Sigmoid"while/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_534/Relu_1Reluwhile/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_2Mul!while/lstm_cell_534/Sigmoid_2:y:0(while/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_534/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_534/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_534/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_534/BiasAdd/ReadVariableOp*^while/lstm_cell_534/MatMul/ReadVariableOp,^while/lstm_cell_534/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_534_biasadd_readvariableop_resource5while_lstm_cell_534_biasadd_readvariableop_resource_0"n
4while_lstm_cell_534_matmul_1_readvariableop_resource6while_lstm_cell_534_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_534_matmul_readvariableop_resource4while_lstm_cell_534_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_534/BiasAdd/ReadVariableOp*while/lstm_cell_534/BiasAdd/ReadVariableOp2V
)while/lstm_cell_534/MatMul/ReadVariableOp)while/lstm_cell_534/MatMul/ReadVariableOp2Z
+while/lstm_cell_534/MatMul_1/ReadVariableOp+while/lstm_cell_534/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3245812
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_534_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_534_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_534_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_534_matmul_readvariableop_resource:	?G
4while_lstm_cell_534_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_534_biasadd_readvariableop_resource:	???*while/lstm_cell_534/BiasAdd/ReadVariableOp?)while/lstm_cell_534/MatMul/ReadVariableOp?+while/lstm_cell_534/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_534/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_534_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_534/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_534_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_534/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_534/addAddV2$while/lstm_cell_534/MatMul:product:0&while/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_534_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_534/BiasAddBiasAddwhile/lstm_cell_534/add:z:02while/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_534/splitSplit,while/lstm_cell_534/split/split_dim:output:0$while/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_534/SigmoidSigmoid"while/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_1Sigmoid"while/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mulMul!while/lstm_cell_534/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_534/ReluRelu"while/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_1Mulwhile/lstm_cell_534/Sigmoid:y:0&while/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/add_1AddV2while/lstm_cell_534/mul:z:0while/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_2Sigmoid"while/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_534/Relu_1Reluwhile/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_2Mul!while/lstm_cell_534/Sigmoid_2:y:0(while/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_534/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_534/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_534/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_534/BiasAdd/ReadVariableOp*^while/lstm_cell_534/MatMul/ReadVariableOp,^while/lstm_cell_534/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_534_biasadd_readvariableop_resource5while_lstm_cell_534_biasadd_readvariableop_resource_0"n
4while_lstm_cell_534_matmul_1_readvariableop_resource6while_lstm_cell_534_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_534_matmul_readvariableop_resource4while_lstm_cell_534_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_534/BiasAdd/ReadVariableOp*while/lstm_cell_534/BiasAdd/ReadVariableOp2V
)while/lstm_cell_534/MatMul/ReadVariableOp)while/lstm_cell_534/MatMul/ReadVariableOp2Z
+while/lstm_cell_534/MatMul_1/ReadVariableOp+while/lstm_cell_534/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_534_layer_call_fn_3247181

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
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3242325o
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
while_cond_3246757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3246757___redundant_placeholder05
1while_while_cond_3246757___redundant_placeholder15
1while_while_cond_3246757___redundant_placeholder25
1while_while_cond_3246757___redundant_placeholder3
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
/__inference_lstm_cell_536_layer_call_fn_3247360

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
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3242879o
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
while_cond_3243907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3243907___redundant_placeholder05
1while_while_cond_3243907___redundant_placeholder15
1while_while_cond_3243907___redundant_placeholder25
1while_while_cond_3243907___redundant_placeholder3
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
0__inference_sequential_112_layer_call_fn_3244277
lstm_336_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_336_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244225o
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
_user_specified_namelstm_336_input
?
?
while_cond_3242892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3242892___redundant_placeholder05
1while_while_cond_3242892___redundant_placeholder15
1while_while_cond_3242892___redundant_placeholder25
1while_while_cond_3242892___redundant_placeholder3
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

lstm_337_while_body_3244624.
*lstm_337_while_lstm_337_while_loop_counter4
0lstm_337_while_lstm_337_while_maximum_iterations
lstm_337_while_placeholder 
lstm_337_while_placeholder_1 
lstm_337_while_placeholder_2 
lstm_337_while_placeholder_3-
)lstm_337_while_lstm_337_strided_slice_1_0i
elstm_337_while_tensorarrayv2read_tensorlistgetitem_lstm_337_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_337_while_lstm_cell_535_matmul_readvariableop_resource_0:	d?R
?lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource_0:	2?M
>lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource_0:	?
lstm_337_while_identity
lstm_337_while_identity_1
lstm_337_while_identity_2
lstm_337_while_identity_3
lstm_337_while_identity_4
lstm_337_while_identity_5+
'lstm_337_while_lstm_337_strided_slice_1g
clstm_337_while_tensorarrayv2read_tensorlistgetitem_lstm_337_tensorarrayunstack_tensorlistfromtensorN
;lstm_337_while_lstm_cell_535_matmul_readvariableop_resource:	d?P
=lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource:	2?K
<lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource:	???3lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp?2lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp?4lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp?
@lstm_337/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_337/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_337_while_tensorarrayv2read_tensorlistgetitem_lstm_337_tensorarrayunstack_tensorlistfromtensor_0lstm_337_while_placeholderIlstm_337/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_337/while/lstm_cell_535/MatMul/ReadVariableOpReadVariableOp=lstm_337_while_lstm_cell_535_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_337/while/lstm_cell_535/MatMulMatMul9lstm_337/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp?lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_337/while/lstm_cell_535/MatMul_1MatMullstm_337_while_placeholder_2<lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_337/while/lstm_cell_535/addAddV2-lstm_337/while/lstm_cell_535/MatMul:product:0/lstm_337/while/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp>lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_337/while/lstm_cell_535/BiasAddBiasAdd$lstm_337/while/lstm_cell_535/add:z:0;lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_337/while/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_337/while/lstm_cell_535/splitSplit5lstm_337/while/lstm_cell_535/split/split_dim:output:0-lstm_337/while/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_337/while/lstm_cell_535/SigmoidSigmoid+lstm_337/while/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_337/while/lstm_cell_535/Sigmoid_1Sigmoid+lstm_337/while/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_337/while/lstm_cell_535/mulMul*lstm_337/while/lstm_cell_535/Sigmoid_1:y:0lstm_337_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_337/while/lstm_cell_535/ReluRelu+lstm_337/while/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_337/while/lstm_cell_535/mul_1Mul(lstm_337/while/lstm_cell_535/Sigmoid:y:0/lstm_337/while/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_337/while/lstm_cell_535/add_1AddV2$lstm_337/while/lstm_cell_535/mul:z:0&lstm_337/while/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_337/while/lstm_cell_535/Sigmoid_2Sigmoid+lstm_337/while/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_337/while/lstm_cell_535/Relu_1Relu&lstm_337/while/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_337/while/lstm_cell_535/mul_2Mul*lstm_337/while/lstm_cell_535/Sigmoid_2:y:01lstm_337/while/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_337/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_337_while_placeholder_1lstm_337_while_placeholder&lstm_337/while/lstm_cell_535/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_337/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_337/while/addAddV2lstm_337_while_placeholderlstm_337/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_337/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_337/while/add_1AddV2*lstm_337_while_lstm_337_while_loop_counterlstm_337/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_337/while/IdentityIdentitylstm_337/while/add_1:z:0^lstm_337/while/NoOp*
T0*
_output_shapes
: ?
lstm_337/while/Identity_1Identity0lstm_337_while_lstm_337_while_maximum_iterations^lstm_337/while/NoOp*
T0*
_output_shapes
: t
lstm_337/while/Identity_2Identitylstm_337/while/add:z:0^lstm_337/while/NoOp*
T0*
_output_shapes
: ?
lstm_337/while/Identity_3IdentityClstm_337/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_337/while/NoOp*
T0*
_output_shapes
: ?
lstm_337/while/Identity_4Identity&lstm_337/while/lstm_cell_535/mul_2:z:0^lstm_337/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_337/while/Identity_5Identity&lstm_337/while/lstm_cell_535/add_1:z:0^lstm_337/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_337/while/NoOpNoOp4^lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp3^lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp5^lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_337_while_identity lstm_337/while/Identity:output:0"?
lstm_337_while_identity_1"lstm_337/while/Identity_1:output:0"?
lstm_337_while_identity_2"lstm_337/while/Identity_2:output:0"?
lstm_337_while_identity_3"lstm_337/while/Identity_3:output:0"?
lstm_337_while_identity_4"lstm_337/while/Identity_4:output:0"?
lstm_337_while_identity_5"lstm_337/while/Identity_5:output:0"T
'lstm_337_while_lstm_337_strided_slice_1)lstm_337_while_lstm_337_strided_slice_1_0"~
<lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource>lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource_0"?
=lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource?lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource_0"|
;lstm_337_while_lstm_cell_535_matmul_readvariableop_resource=lstm_337_while_lstm_cell_535_matmul_readvariableop_resource_0"?
clstm_337_while_tensorarrayv2read_tensorlistgetitem_lstm_337_tensorarrayunstack_tensorlistfromtensorelstm_337_while_tensorarrayv2read_tensorlistgetitem_lstm_337_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp3lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp2h
2lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp2lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp2l
4lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp4lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3242543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_535_3242567_0:	d?0
while_lstm_cell_535_3242569_0:	2?,
while_lstm_cell_535_3242571_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_535_3242567:	d?.
while_lstm_cell_535_3242569:	2?*
while_lstm_cell_535_3242571:	???+while/lstm_cell_535/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_535/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_535_3242567_0while_lstm_cell_535_3242569_0while_lstm_cell_535_3242571_0*
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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3242529?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_535/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_535/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_535/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_535/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_535_3242567while_lstm_cell_535_3242567_0"<
while_lstm_cell_535_3242569while_lstm_cell_535_3242569_0"<
while_lstm_cell_535_3242571while_lstm_cell_535_3242571_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_535/StatefulPartitionedCall+while/lstm_cell_535/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_337_layer_call_fn_3245929

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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3243461s
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
while_body_3246285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_535_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_535_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_535_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_535_matmul_readvariableop_resource:	d?G
4while_lstm_cell_535_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_535_biasadd_readvariableop_resource:	???*while/lstm_cell_535/BiasAdd/ReadVariableOp?)while/lstm_cell_535/MatMul/ReadVariableOp?+while/lstm_cell_535/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_535/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_535_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_535/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_535_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_535/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_535/addAddV2$while/lstm_cell_535/MatMul:product:0&while/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_535_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_535/BiasAddBiasAddwhile/lstm_cell_535/add:z:02while/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_535/splitSplit,while/lstm_cell_535/split/split_dim:output:0$while/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_535/SigmoidSigmoid"while/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_1Sigmoid"while/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mulMul!while/lstm_cell_535/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_535/ReluRelu"while/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_1Mulwhile/lstm_cell_535/Sigmoid:y:0&while/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/add_1AddV2while/lstm_cell_535/mul:z:0while/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_2Sigmoid"while/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_535/Relu_1Reluwhile/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_2Mul!while/lstm_cell_535/Sigmoid_2:y:0(while/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_535/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_535/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_535/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_535/BiasAdd/ReadVariableOp*^while/lstm_cell_535/MatMul/ReadVariableOp,^while/lstm_cell_535/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_535_biasadd_readvariableop_resource5while_lstm_cell_535_biasadd_readvariableop_resource_0"n
4while_lstm_cell_535_matmul_1_readvariableop_resource6while_lstm_cell_535_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_535_matmul_readvariableop_resource4while_lstm_cell_535_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_535/BiasAdd/ReadVariableOp*while/lstm_cell_535/BiasAdd/ReadVariableOp2V
)while/lstm_cell_535/MatMul/ReadVariableOp)while/lstm_cell_535/MatMul/ReadVariableOp2Z
+while/lstm_cell_535/MatMul_1/ReadVariableOp+while/lstm_cell_535/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3244157

inputs?
,lstm_cell_534_matmul_readvariableop_resource:	?A
.lstm_cell_534_matmul_1_readvariableop_resource:	d?<
-lstm_cell_534_biasadd_readvariableop_resource:	?
identity??$lstm_cell_534/BiasAdd/ReadVariableOp?#lstm_cell_534/MatMul/ReadVariableOp?%lstm_cell_534/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_534/MatMul/ReadVariableOpReadVariableOp,lstm_cell_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_534/MatMulMatMulstrided_slice_2:output:0+lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_534_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_534/MatMul_1MatMulzeros:output:0-lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_534/addAddV2lstm_cell_534/MatMul:product:0 lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_534/BiasAddBiasAddlstm_cell_534/add:z:0,lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_534/splitSplit&lstm_cell_534/split/split_dim:output:0lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_534/SigmoidSigmoidlstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_1Sigmoidlstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_534/mulMullstm_cell_534/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_534/ReluRelulstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_1Mullstm_cell_534/Sigmoid:y:0 lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_534/add_1AddV2lstm_cell_534/mul:z:0lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_2Sigmoidlstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_534/Relu_1Relulstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_2Mullstm_cell_534/Sigmoid_2:y:0"lstm_cell_534/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_534_matmul_readvariableop_resource.lstm_cell_534_matmul_1_readvariableop_resource-lstm_cell_534_biasadd_readvariableop_resource*
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
while_body_3244073*
condR
while_cond_3244072*K
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
NoOpNoOp%^lstm_cell_534/BiasAdd/ReadVariableOp$^lstm_cell_534/MatMul/ReadVariableOp&^lstm_cell_534/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_534/BiasAdd/ReadVariableOp$lstm_cell_534/BiasAdd/ReadVariableOp2J
#lstm_cell_534/MatMul/ReadVariableOp#lstm_cell_534/MatMul/ReadVariableOp2N
%lstm_cell_534/MatMul_1/ReadVariableOp%lstm_cell_534/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_338_while_body_3245190.
*lstm_338_while_lstm_338_while_loop_counter4
0lstm_338_while_lstm_338_while_maximum_iterations
lstm_338_while_placeholder 
lstm_338_while_placeholder_1 
lstm_338_while_placeholder_2 
lstm_338_while_placeholder_3-
)lstm_338_while_lstm_338_strided_slice_1_0i
elstm_338_while_tensorarrayv2read_tensorlistgetitem_lstm_338_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_338_while_lstm_cell_536_matmul_readvariableop_resource_0:2(Q
?lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource_0:
(L
>lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource_0:(
lstm_338_while_identity
lstm_338_while_identity_1
lstm_338_while_identity_2
lstm_338_while_identity_3
lstm_338_while_identity_4
lstm_338_while_identity_5+
'lstm_338_while_lstm_338_strided_slice_1g
clstm_338_while_tensorarrayv2read_tensorlistgetitem_lstm_338_tensorarrayunstack_tensorlistfromtensorM
;lstm_338_while_lstm_cell_536_matmul_readvariableop_resource:2(O
=lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource:
(J
<lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource:(??3lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp?2lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp?4lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp?
@lstm_338/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_338/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_338_while_tensorarrayv2read_tensorlistgetitem_lstm_338_tensorarrayunstack_tensorlistfromtensor_0lstm_338_while_placeholderIlstm_338/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_338/while/lstm_cell_536/MatMul/ReadVariableOpReadVariableOp=lstm_338_while_lstm_cell_536_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_338/while/lstm_cell_536/MatMulMatMul9lstm_338/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp?lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_338/while/lstm_cell_536/MatMul_1MatMullstm_338_while_placeholder_2<lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_338/while/lstm_cell_536/addAddV2-lstm_338/while/lstm_cell_536/MatMul:product:0/lstm_338/while/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp>lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_338/while/lstm_cell_536/BiasAddBiasAdd$lstm_338/while/lstm_cell_536/add:z:0;lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_338/while/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_338/while/lstm_cell_536/splitSplit5lstm_338/while/lstm_cell_536/split/split_dim:output:0-lstm_338/while/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_338/while/lstm_cell_536/SigmoidSigmoid+lstm_338/while/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_338/while/lstm_cell_536/Sigmoid_1Sigmoid+lstm_338/while/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_338/while/lstm_cell_536/mulMul*lstm_338/while/lstm_cell_536/Sigmoid_1:y:0lstm_338_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_338/while/lstm_cell_536/ReluRelu+lstm_338/while/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_338/while/lstm_cell_536/mul_1Mul(lstm_338/while/lstm_cell_536/Sigmoid:y:0/lstm_338/while/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_338/while/lstm_cell_536/add_1AddV2$lstm_338/while/lstm_cell_536/mul:z:0&lstm_338/while/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_338/while/lstm_cell_536/Sigmoid_2Sigmoid+lstm_338/while/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_338/while/lstm_cell_536/Relu_1Relu&lstm_338/while/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_338/while/lstm_cell_536/mul_2Mul*lstm_338/while/lstm_cell_536/Sigmoid_2:y:01lstm_338/while/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_338/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_338_while_placeholder_1lstm_338_while_placeholder&lstm_338/while/lstm_cell_536/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_338/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_338/while/addAddV2lstm_338_while_placeholderlstm_338/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_338/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_338/while/add_1AddV2*lstm_338_while_lstm_338_while_loop_counterlstm_338/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_338/while/IdentityIdentitylstm_338/while/add_1:z:0^lstm_338/while/NoOp*
T0*
_output_shapes
: ?
lstm_338/while/Identity_1Identity0lstm_338_while_lstm_338_while_maximum_iterations^lstm_338/while/NoOp*
T0*
_output_shapes
: t
lstm_338/while/Identity_2Identitylstm_338/while/add:z:0^lstm_338/while/NoOp*
T0*
_output_shapes
: ?
lstm_338/while/Identity_3IdentityClstm_338/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_338/while/NoOp*
T0*
_output_shapes
: ?
lstm_338/while/Identity_4Identity&lstm_338/while/lstm_cell_536/mul_2:z:0^lstm_338/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_338/while/Identity_5Identity&lstm_338/while/lstm_cell_536/add_1:z:0^lstm_338/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_338/while/NoOpNoOp4^lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp3^lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp5^lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_338_while_identity lstm_338/while/Identity:output:0"?
lstm_338_while_identity_1"lstm_338/while/Identity_1:output:0"?
lstm_338_while_identity_2"lstm_338/while/Identity_2:output:0"?
lstm_338_while_identity_3"lstm_338/while/Identity_3:output:0"?
lstm_338_while_identity_4"lstm_338/while/Identity_4:output:0"?
lstm_338_while_identity_5"lstm_338/while/Identity_5:output:0"T
'lstm_338_while_lstm_338_strided_slice_1)lstm_338_while_lstm_338_strided_slice_1_0"~
<lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource>lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource_0"?
=lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource?lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource_0"|
;lstm_338_while_lstm_cell_536_matmul_readvariableop_resource=lstm_338_while_lstm_cell_536_matmul_readvariableop_resource_0"?
clstm_338_while_tensorarrayv2read_tensorlistgetitem_lstm_338_tensorarrayunstack_tensorlistfromtensorelstm_338_while_tensorarrayv2read_tensorlistgetitem_lstm_338_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp3lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp2h
2lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp2lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp2l
4lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp4lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3245811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3245811___redundant_placeholder05
1while_while_cond_3245811___redundant_placeholder15
1while_while_cond_3245811___redundant_placeholder25
1while_while_cond_3245811___redundant_placeholder3
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
/__inference_lstm_cell_535_layer_call_fn_3247262

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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3242529o
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
?
while_cond_3245668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3245668___redundant_placeholder05
1while_while_cond_3245668___redundant_placeholder15
1while_while_cond_3245668___redundant_placeholder25
1while_while_cond_3245668___redundant_placeholder3
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
/__inference_lstm_cell_534_layer_call_fn_3247164

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
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3242179o
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
while_body_3243527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_536_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_536_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_536_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_536_matmul_readvariableop_resource:2(F
4while_lstm_cell_536_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_536_biasadd_readvariableop_resource:(??*while/lstm_cell_536/BiasAdd/ReadVariableOp?)while/lstm_cell_536/MatMul/ReadVariableOp?+while/lstm_cell_536/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_536/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_536_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_536/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_536_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_536/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_536/addAddV2$while/lstm_cell_536/MatMul:product:0&while/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_536_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_536/BiasAddBiasAddwhile/lstm_cell_536/add:z:02while/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_536/splitSplit,while/lstm_cell_536/split/split_dim:output:0$while/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_536/SigmoidSigmoid"while/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_1Sigmoid"while/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mulMul!while/lstm_cell_536/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_536/ReluRelu"while/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_1Mulwhile/lstm_cell_536/Sigmoid:y:0&while/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/add_1AddV2while/lstm_cell_536/mul:z:0while/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_2Sigmoid"while/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_536/Relu_1Reluwhile/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_2Mul!while/lstm_cell_536/Sigmoid_2:y:0(while/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_536/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_536/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_536/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_536/BiasAdd/ReadVariableOp*^while/lstm_cell_536/MatMul/ReadVariableOp,^while/lstm_cell_536/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_536_biasadd_readvariableop_resource5while_lstm_cell_536_biasadd_readvariableop_resource_0"n
4while_lstm_cell_536_matmul_1_readvariableop_resource6while_lstm_cell_536_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_536_matmul_readvariableop_resource4while_lstm_cell_536_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_536/BiasAdd/ReadVariableOp*while/lstm_cell_536/BiasAdd/ReadVariableOp2V
)while/lstm_cell_536/MatMul/ReadVariableOp)while/lstm_cell_536/MatMul/ReadVariableOp2Z
+while/lstm_cell_536/MatMul_1/ReadVariableOp+while/lstm_cell_536/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3243227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_534_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_534_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_534_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_534_matmul_readvariableop_resource:	?G
4while_lstm_cell_534_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_534_biasadd_readvariableop_resource:	???*while/lstm_cell_534/BiasAdd/ReadVariableOp?)while/lstm_cell_534/MatMul/ReadVariableOp?+while/lstm_cell_534/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_534/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_534_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_534/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_534_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_534/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_534/addAddV2$while/lstm_cell_534/MatMul:product:0&while/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_534_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_534/BiasAddBiasAddwhile/lstm_cell_534/add:z:02while/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_534/splitSplit,while/lstm_cell_534/split/split_dim:output:0$while/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_534/SigmoidSigmoid"while/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_1Sigmoid"while/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mulMul!while/lstm_cell_534/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_534/ReluRelu"while/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_1Mulwhile/lstm_cell_534/Sigmoid:y:0&while/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/add_1AddV2while/lstm_cell_534/mul:z:0while/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_534/Sigmoid_2Sigmoid"while/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_534/Relu_1Reluwhile/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_534/mul_2Mul!while/lstm_cell_534/Sigmoid_2:y:0(while/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_534/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_534/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_534/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_534/BiasAdd/ReadVariableOp*^while/lstm_cell_534/MatMul/ReadVariableOp,^while/lstm_cell_534/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_534_biasadd_readvariableop_resource5while_lstm_cell_534_biasadd_readvariableop_resource_0"n
4while_lstm_cell_534_matmul_1_readvariableop_resource6while_lstm_cell_534_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_534_matmul_readvariableop_resource4while_lstm_cell_534_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_534/BiasAdd/ReadVariableOp*while/lstm_cell_534/BiasAdd/ReadVariableOp2V
)while/lstm_cell_534/MatMul/ReadVariableOp)while/lstm_cell_534/MatMul/ReadVariableOp2Z
+while/lstm_cell_534/MatMul_1/ReadVariableOp+while/lstm_cell_534/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_336_layer_call_fn_3245291
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3242262|
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245896

inputs?
,lstm_cell_534_matmul_readvariableop_resource:	?A
.lstm_cell_534_matmul_1_readvariableop_resource:	d?<
-lstm_cell_534_biasadd_readvariableop_resource:	?
identity??$lstm_cell_534/BiasAdd/ReadVariableOp?#lstm_cell_534/MatMul/ReadVariableOp?%lstm_cell_534/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_534/MatMul/ReadVariableOpReadVariableOp,lstm_cell_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_534/MatMulMatMulstrided_slice_2:output:0+lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_534_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_534/MatMul_1MatMulzeros:output:0-lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_534/addAddV2lstm_cell_534/MatMul:product:0 lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_534/BiasAddBiasAddlstm_cell_534/add:z:0,lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_534/splitSplit&lstm_cell_534/split/split_dim:output:0lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_534/SigmoidSigmoidlstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_1Sigmoidlstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_534/mulMullstm_cell_534/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_534/ReluRelulstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_1Mullstm_cell_534/Sigmoid:y:0 lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_534/add_1AddV2lstm_cell_534/mul:z:0lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_2Sigmoidlstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_534/Relu_1Relulstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_2Mullstm_cell_534/Sigmoid_2:y:0"lstm_cell_534/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_534_matmul_readvariableop_resource.lstm_cell_534_matmul_1_readvariableop_resource-lstm_cell_534_biasadd_readvariableop_resource*
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
while_body_3245812*
condR
while_cond_3245811*K
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
NoOpNoOp%^lstm_cell_534/BiasAdd/ReadVariableOp$^lstm_cell_534/MatMul/ReadVariableOp&^lstm_cell_534/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_534/BiasAdd/ReadVariableOp$lstm_cell_534/BiasAdd/ReadVariableOp2J
#lstm_cell_534/MatMul/ReadVariableOp#lstm_cell_534/MatMul/ReadVariableOp2N
%lstm_cell_534/MatMul_1/ReadVariableOp%lstm_cell_534/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_336_layer_call_and_return_conditional_losses_3242262

inputs(
lstm_cell_534_3242180:	?(
lstm_cell_534_3242182:	d?$
lstm_cell_534_3242184:	?
identity??%lstm_cell_534/StatefulPartitionedCall?while;
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
%lstm_cell_534/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_534_3242180lstm_cell_534_3242182lstm_cell_534_3242184*
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
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3242179n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_534_3242180lstm_cell_534_3242182lstm_cell_534_3242184*
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
while_body_3242193*
condR
while_cond_3242192*K
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
NoOpNoOp&^lstm_cell_534/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_534/StatefulPartitionedCall%lstm_cell_534/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3243025

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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3243827

inputs>
,lstm_cell_536_matmul_readvariableop_resource:2(@
.lstm_cell_536_matmul_1_readvariableop_resource:
(;
-lstm_cell_536_biasadd_readvariableop_resource:(
identity??$lstm_cell_536/BiasAdd/ReadVariableOp?#lstm_cell_536/MatMul/ReadVariableOp?%lstm_cell_536/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_536/MatMul/ReadVariableOpReadVariableOp,lstm_cell_536_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_536/MatMulMatMulstrided_slice_2:output:0+lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_536_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_536/MatMul_1MatMulzeros:output:0-lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_536/addAddV2lstm_cell_536/MatMul:product:0 lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_536_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_536/BiasAddBiasAddlstm_cell_536/add:z:0,lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_536/splitSplit&lstm_cell_536/split/split_dim:output:0lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_536/SigmoidSigmoidlstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_1Sigmoidlstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_536/mulMullstm_cell_536/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_536/ReluRelulstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_1Mullstm_cell_536/Sigmoid:y:0 lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_536/add_1AddV2lstm_cell_536/mul:z:0lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_536/Sigmoid_2Sigmoidlstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_536/Relu_1Relulstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_536/mul_2Mullstm_cell_536/Sigmoid_2:y:0"lstm_cell_536/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_536_matmul_readvariableop_resource.lstm_cell_536_matmul_1_readvariableop_resource-lstm_cell_536_biasadd_readvariableop_resource*
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
while_body_3243743*
condR
while_cond_3243742*K
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
NoOpNoOp%^lstm_cell_536/BiasAdd/ReadVariableOp$^lstm_cell_536/MatMul/ReadVariableOp&^lstm_cell_536/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_536/BiasAdd/ReadVariableOp$lstm_cell_536/BiasAdd/ReadVariableOp2J
#lstm_cell_536/MatMul/ReadVariableOp#lstm_cell_536/MatMul/ReadVariableOp2N
%lstm_cell_536/MatMul_1/ReadVariableOp%lstm_cell_536/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3242733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3242733___redundant_placeholder05
1while_while_cond_3242733___redundant_placeholder15
1while_while_cond_3242733___redundant_placeholder25
1while_while_cond_3242733___redundant_placeholder3
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

lstm_336_while_body_3244912.
*lstm_336_while_lstm_336_while_loop_counter4
0lstm_336_while_lstm_336_while_maximum_iterations
lstm_336_while_placeholder 
lstm_336_while_placeholder_1 
lstm_336_while_placeholder_2 
lstm_336_while_placeholder_3-
)lstm_336_while_lstm_336_strided_slice_1_0i
elstm_336_while_tensorarrayv2read_tensorlistgetitem_lstm_336_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_336_while_lstm_cell_534_matmul_readvariableop_resource_0:	?R
?lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource_0:	d?M
>lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource_0:	?
lstm_336_while_identity
lstm_336_while_identity_1
lstm_336_while_identity_2
lstm_336_while_identity_3
lstm_336_while_identity_4
lstm_336_while_identity_5+
'lstm_336_while_lstm_336_strided_slice_1g
clstm_336_while_tensorarrayv2read_tensorlistgetitem_lstm_336_tensorarrayunstack_tensorlistfromtensorN
;lstm_336_while_lstm_cell_534_matmul_readvariableop_resource:	?P
=lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource:	d?K
<lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource:	???3lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp?2lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp?4lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp?
@lstm_336/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_336/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_336_while_tensorarrayv2read_tensorlistgetitem_lstm_336_tensorarrayunstack_tensorlistfromtensor_0lstm_336_while_placeholderIlstm_336/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_336/while/lstm_cell_534/MatMul/ReadVariableOpReadVariableOp=lstm_336_while_lstm_cell_534_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_336/while/lstm_cell_534/MatMulMatMul9lstm_336/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp?lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_336/while/lstm_cell_534/MatMul_1MatMullstm_336_while_placeholder_2<lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_336/while/lstm_cell_534/addAddV2-lstm_336/while/lstm_cell_534/MatMul:product:0/lstm_336/while/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp>lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_336/while/lstm_cell_534/BiasAddBiasAdd$lstm_336/while/lstm_cell_534/add:z:0;lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_336/while/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_336/while/lstm_cell_534/splitSplit5lstm_336/while/lstm_cell_534/split/split_dim:output:0-lstm_336/while/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_336/while/lstm_cell_534/SigmoidSigmoid+lstm_336/while/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_336/while/lstm_cell_534/Sigmoid_1Sigmoid+lstm_336/while/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_336/while/lstm_cell_534/mulMul*lstm_336/while/lstm_cell_534/Sigmoid_1:y:0lstm_336_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_336/while/lstm_cell_534/ReluRelu+lstm_336/while/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_336/while/lstm_cell_534/mul_1Mul(lstm_336/while/lstm_cell_534/Sigmoid:y:0/lstm_336/while/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_336/while/lstm_cell_534/add_1AddV2$lstm_336/while/lstm_cell_534/mul:z:0&lstm_336/while/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_336/while/lstm_cell_534/Sigmoid_2Sigmoid+lstm_336/while/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_336/while/lstm_cell_534/Relu_1Relu&lstm_336/while/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_336/while/lstm_cell_534/mul_2Mul*lstm_336/while/lstm_cell_534/Sigmoid_2:y:01lstm_336/while/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_336/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_336_while_placeholder_1lstm_336_while_placeholder&lstm_336/while/lstm_cell_534/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_336/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_336/while/addAddV2lstm_336_while_placeholderlstm_336/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_336/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_336/while/add_1AddV2*lstm_336_while_lstm_336_while_loop_counterlstm_336/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_336/while/IdentityIdentitylstm_336/while/add_1:z:0^lstm_336/while/NoOp*
T0*
_output_shapes
: ?
lstm_336/while/Identity_1Identity0lstm_336_while_lstm_336_while_maximum_iterations^lstm_336/while/NoOp*
T0*
_output_shapes
: t
lstm_336/while/Identity_2Identitylstm_336/while/add:z:0^lstm_336/while/NoOp*
T0*
_output_shapes
: ?
lstm_336/while/Identity_3IdentityClstm_336/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_336/while/NoOp*
T0*
_output_shapes
: ?
lstm_336/while/Identity_4Identity&lstm_336/while/lstm_cell_534/mul_2:z:0^lstm_336/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_336/while/Identity_5Identity&lstm_336/while/lstm_cell_534/add_1:z:0^lstm_336/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_336/while/NoOpNoOp4^lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp3^lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp5^lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_336_while_identity lstm_336/while/Identity:output:0"?
lstm_336_while_identity_1"lstm_336/while/Identity_1:output:0"?
lstm_336_while_identity_2"lstm_336/while/Identity_2:output:0"?
lstm_336_while_identity_3"lstm_336/while/Identity_3:output:0"?
lstm_336_while_identity_4"lstm_336/while/Identity_4:output:0"?
lstm_336_while_identity_5"lstm_336/while/Identity_5:output:0"T
'lstm_336_while_lstm_336_strided_slice_1)lstm_336_while_lstm_336_strided_slice_1_0"~
<lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource>lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource_0"?
=lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource?lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource_0"|
;lstm_336_while_lstm_cell_534_matmul_readvariableop_resource=lstm_336_while_lstm_cell_534_matmul_readvariableop_resource_0"?
clstm_336_while_tensorarrayv2read_tensorlistgetitem_lstm_336_tensorarrayunstack_tensorlistfromtensorelstm_336_while_tensorarrayv2read_tensorlistgetitem_lstm_336_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp3lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp2h
2lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp2lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp2l
4lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp4lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3246758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_536_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_536_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_536_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_536_matmul_readvariableop_resource:2(F
4while_lstm_cell_536_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_536_biasadd_readvariableop_resource:(??*while/lstm_cell_536/BiasAdd/ReadVariableOp?)while/lstm_cell_536/MatMul/ReadVariableOp?+while/lstm_cell_536/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_536/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_536_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_536/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_536_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_536/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_536/addAddV2$while/lstm_cell_536/MatMul:product:0&while/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_536_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_536/BiasAddBiasAddwhile/lstm_cell_536/add:z:02while/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_536/splitSplit,while/lstm_cell_536/split/split_dim:output:0$while/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_536/SigmoidSigmoid"while/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_1Sigmoid"while/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mulMul!while/lstm_cell_536/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_536/ReluRelu"while/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_1Mulwhile/lstm_cell_536/Sigmoid:y:0&while/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/add_1AddV2while/lstm_cell_536/mul:z:0while/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_2Sigmoid"while/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_536/Relu_1Reluwhile/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_2Mul!while/lstm_cell_536/Sigmoid_2:y:0(while/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_536/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_536/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_536/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_536/BiasAdd/ReadVariableOp*^while/lstm_cell_536/MatMul/ReadVariableOp,^while/lstm_cell_536/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_536_biasadd_readvariableop_resource5while_lstm_cell_536_biasadd_readvariableop_resource_0"n
4while_lstm_cell_536_matmul_1_readvariableop_resource6while_lstm_cell_536_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_536_matmul_readvariableop_resource4while_lstm_cell_536_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_536/BiasAdd/ReadVariableOp*while/lstm_cell_536/BiasAdd/ReadVariableOp2V
)while/lstm_cell_536/MatMul/ReadVariableOp)while/lstm_cell_536/MatMul/ReadVariableOp2Z
+while/lstm_cell_536/MatMul_1/ReadVariableOp+while/lstm_cell_536/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3247043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3247043___redundant_placeholder05
1while_while_cond_3247043___redundant_placeholder15
1while_while_cond_3247043___redundant_placeholder25
1while_while_cond_3247043___redundant_placeholder3
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
?T
?
*sequential_112_lstm_338_while_body_3242022L
Hsequential_112_lstm_338_while_sequential_112_lstm_338_while_loop_counterR
Nsequential_112_lstm_338_while_sequential_112_lstm_338_while_maximum_iterations-
)sequential_112_lstm_338_while_placeholder/
+sequential_112_lstm_338_while_placeholder_1/
+sequential_112_lstm_338_while_placeholder_2/
+sequential_112_lstm_338_while_placeholder_3K
Gsequential_112_lstm_338_while_sequential_112_lstm_338_strided_slice_1_0?
?sequential_112_lstm_338_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_338_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_112_lstm_338_while_lstm_cell_536_matmul_readvariableop_resource_0:2(`
Nsequential_112_lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource_0:
([
Msequential_112_lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource_0:(*
&sequential_112_lstm_338_while_identity,
(sequential_112_lstm_338_while_identity_1,
(sequential_112_lstm_338_while_identity_2,
(sequential_112_lstm_338_while_identity_3,
(sequential_112_lstm_338_while_identity_4,
(sequential_112_lstm_338_while_identity_5I
Esequential_112_lstm_338_while_sequential_112_lstm_338_strided_slice_1?
?sequential_112_lstm_338_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_338_tensorarrayunstack_tensorlistfromtensor\
Jsequential_112_lstm_338_while_lstm_cell_536_matmul_readvariableop_resource:2(^
Lsequential_112_lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource:
(Y
Ksequential_112_lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource:(??Bsequential_112/lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp?Asequential_112/lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp?Csequential_112/lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp?
Osequential_112/lstm_338/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_112/lstm_338/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_112_lstm_338_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_338_tensorarrayunstack_tensorlistfromtensor_0)sequential_112_lstm_338_while_placeholderXsequential_112/lstm_338/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_112/lstm_338/while/lstm_cell_536/MatMul/ReadVariableOpReadVariableOpLsequential_112_lstm_338_while_lstm_cell_536_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_112/lstm_338/while/lstm_cell_536/MatMulMatMulHsequential_112/lstm_338/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_112/lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_112/lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOpNsequential_112_lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_112/lstm_338/while/lstm_cell_536/MatMul_1MatMul+sequential_112_lstm_338_while_placeholder_2Ksequential_112/lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_112/lstm_338/while/lstm_cell_536/addAddV2<sequential_112/lstm_338/while/lstm_cell_536/MatMul:product:0>sequential_112/lstm_338/while/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_112/lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOpMsequential_112_lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_112/lstm_338/while/lstm_cell_536/BiasAddBiasAdd3sequential_112/lstm_338/while/lstm_cell_536/add:z:0Jsequential_112/lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_112/lstm_338/while/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_112/lstm_338/while/lstm_cell_536/splitSplitDsequential_112/lstm_338/while/lstm_cell_536/split/split_dim:output:0<sequential_112/lstm_338/while/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_112/lstm_338/while/lstm_cell_536/SigmoidSigmoid:sequential_112/lstm_338/while/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_112/lstm_338/while/lstm_cell_536/Sigmoid_1Sigmoid:sequential_112/lstm_338/while/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_112/lstm_338/while/lstm_cell_536/mulMul9sequential_112/lstm_338/while/lstm_cell_536/Sigmoid_1:y:0+sequential_112_lstm_338_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_112/lstm_338/while/lstm_cell_536/ReluRelu:sequential_112/lstm_338/while/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_112/lstm_338/while/lstm_cell_536/mul_1Mul7sequential_112/lstm_338/while/lstm_cell_536/Sigmoid:y:0>sequential_112/lstm_338/while/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_112/lstm_338/while/lstm_cell_536/add_1AddV23sequential_112/lstm_338/while/lstm_cell_536/mul:z:05sequential_112/lstm_338/while/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_112/lstm_338/while/lstm_cell_536/Sigmoid_2Sigmoid:sequential_112/lstm_338/while/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_112/lstm_338/while/lstm_cell_536/Relu_1Relu5sequential_112/lstm_338/while/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_112/lstm_338/while/lstm_cell_536/mul_2Mul9sequential_112/lstm_338/while/lstm_cell_536/Sigmoid_2:y:0@sequential_112/lstm_338/while/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_112/lstm_338/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_112_lstm_338_while_placeholder_1)sequential_112_lstm_338_while_placeholder5sequential_112/lstm_338/while/lstm_cell_536/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_112/lstm_338/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_112/lstm_338/while/addAddV2)sequential_112_lstm_338_while_placeholder,sequential_112/lstm_338/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_112/lstm_338/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_112/lstm_338/while/add_1AddV2Hsequential_112_lstm_338_while_sequential_112_lstm_338_while_loop_counter.sequential_112/lstm_338/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_112/lstm_338/while/IdentityIdentity'sequential_112/lstm_338/while/add_1:z:0#^sequential_112/lstm_338/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_338/while/Identity_1IdentityNsequential_112_lstm_338_while_sequential_112_lstm_338_while_maximum_iterations#^sequential_112/lstm_338/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_338/while/Identity_2Identity%sequential_112/lstm_338/while/add:z:0#^sequential_112/lstm_338/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_338/while/Identity_3IdentityRsequential_112/lstm_338/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_112/lstm_338/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_338/while/Identity_4Identity5sequential_112/lstm_338/while/lstm_cell_536/mul_2:z:0#^sequential_112/lstm_338/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_112/lstm_338/while/Identity_5Identity5sequential_112/lstm_338/while/lstm_cell_536/add_1:z:0#^sequential_112/lstm_338/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_112/lstm_338/while/NoOpNoOpC^sequential_112/lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOpB^sequential_112/lstm_338/while/lstm_cell_536/MatMul/ReadVariableOpD^sequential_112/lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_112_lstm_338_while_identity/sequential_112/lstm_338/while/Identity:output:0"]
(sequential_112_lstm_338_while_identity_11sequential_112/lstm_338/while/Identity_1:output:0"]
(sequential_112_lstm_338_while_identity_21sequential_112/lstm_338/while/Identity_2:output:0"]
(sequential_112_lstm_338_while_identity_31sequential_112/lstm_338/while/Identity_3:output:0"]
(sequential_112_lstm_338_while_identity_41sequential_112/lstm_338/while/Identity_4:output:0"]
(sequential_112_lstm_338_while_identity_51sequential_112/lstm_338/while/Identity_5:output:0"?
Ksequential_112_lstm_338_while_lstm_cell_536_biasadd_readvariableop_resourceMsequential_112_lstm_338_while_lstm_cell_536_biasadd_readvariableop_resource_0"?
Lsequential_112_lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resourceNsequential_112_lstm_338_while_lstm_cell_536_matmul_1_readvariableop_resource_0"?
Jsequential_112_lstm_338_while_lstm_cell_536_matmul_readvariableop_resourceLsequential_112_lstm_338_while_lstm_cell_536_matmul_readvariableop_resource_0"?
Esequential_112_lstm_338_while_sequential_112_lstm_338_strided_slice_1Gsequential_112_lstm_338_while_sequential_112_lstm_338_strided_slice_1_0"?
?sequential_112_lstm_338_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_338_tensorarrayunstack_tensorlistfromtensor?sequential_112_lstm_338_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_338_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_112/lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOpBsequential_112/lstm_338/while/lstm_cell_536/BiasAdd/ReadVariableOp2?
Asequential_112/lstm_338/while/lstm_cell_536/MatMul/ReadVariableOpAsequential_112/lstm_338/while/lstm_cell_536/MatMul/ReadVariableOp2?
Csequential_112/lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOpCsequential_112/lstm_338/while/lstm_cell_536/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246512

inputs?
,lstm_cell_535_matmul_readvariableop_resource:	d?A
.lstm_cell_535_matmul_1_readvariableop_resource:	2?<
-lstm_cell_535_biasadd_readvariableop_resource:	?
identity??$lstm_cell_535/BiasAdd/ReadVariableOp?#lstm_cell_535/MatMul/ReadVariableOp?%lstm_cell_535/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_535/MatMul/ReadVariableOpReadVariableOp,lstm_cell_535_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_535/MatMulMatMulstrided_slice_2:output:0+lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_535_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_535/MatMul_1MatMulzeros:output:0-lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_535/addAddV2lstm_cell_535/MatMul:product:0 lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_535_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_535/BiasAddBiasAddlstm_cell_535/add:z:0,lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_535/splitSplit&lstm_cell_535/split/split_dim:output:0lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_535/SigmoidSigmoidlstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_1Sigmoidlstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_535/mulMullstm_cell_535/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_535/ReluRelulstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_1Mullstm_cell_535/Sigmoid:y:0 lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_535/add_1AddV2lstm_cell_535/mul:z:0lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_2Sigmoidlstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_535/Relu_1Relulstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_2Mullstm_cell_535/Sigmoid_2:y:0"lstm_cell_535/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_535_matmul_readvariableop_resource.lstm_cell_535_matmul_1_readvariableop_resource-lstm_cell_535_biasadd_readvariableop_resource*
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
while_body_3246428*
condR
while_cond_3246427*K
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
NoOpNoOp%^lstm_cell_535/BiasAdd/ReadVariableOp$^lstm_cell_535/MatMul/ReadVariableOp&^lstm_cell_535/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_535/BiasAdd/ReadVariableOp$lstm_cell_535/BiasAdd/ReadVariableOp2J
#lstm_cell_535/MatMul/ReadVariableOp#lstm_cell_535/MatMul/ReadVariableOp2N
%lstm_cell_535/MatMul_1/ReadVariableOp%lstm_cell_535/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3246615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_536_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_536_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_536_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_536_matmul_readvariableop_resource:2(F
4while_lstm_cell_536_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_536_biasadd_readvariableop_resource:(??*while/lstm_cell_536/BiasAdd/ReadVariableOp?)while/lstm_cell_536/MatMul/ReadVariableOp?+while/lstm_cell_536/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_536/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_536_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_536/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_536_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_536/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_536/addAddV2$while/lstm_cell_536/MatMul:product:0&while/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_536_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_536/BiasAddBiasAddwhile/lstm_cell_536/add:z:02while/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_536/splitSplit,while/lstm_cell_536/split/split_dim:output:0$while/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_536/SigmoidSigmoid"while/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_1Sigmoid"while/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mulMul!while/lstm_cell_536/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_536/ReluRelu"while/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_1Mulwhile/lstm_cell_536/Sigmoid:y:0&while/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/add_1AddV2while/lstm_cell_536/mul:z:0while/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_2Sigmoid"while/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_536/Relu_1Reluwhile/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_2Mul!while/lstm_cell_536/Sigmoid_2:y:0(while/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_536/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_536/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_536/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_536/BiasAdd/ReadVariableOp*^while/lstm_cell_536/MatMul/ReadVariableOp,^while/lstm_cell_536/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_536_biasadd_readvariableop_resource5while_lstm_cell_536_biasadd_readvariableop_resource_0"n
4while_lstm_cell_536_matmul_1_readvariableop_resource6while_lstm_cell_536_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_536_matmul_readvariableop_resource4while_lstm_cell_536_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_536/BiasAdd/ReadVariableOp*while/lstm_cell_536/BiasAdd/ReadVariableOp2V
)while/lstm_cell_536/MatMul/ReadVariableOp)while/lstm_cell_536/MatMul/ReadVariableOp2Z
+while/lstm_cell_536/MatMul_1/ReadVariableOp+while/lstm_cell_536/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_3247714
file_prefix3
!assignvariableop_dense_112_kernel:
/
!assignvariableop_1_dense_112_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_336_lstm_cell_336_kernel:	?M
:assignvariableop_8_lstm_336_lstm_cell_336_recurrent_kernel:	d?=
.assignvariableop_9_lstm_336_lstm_cell_336_bias:	?D
1assignvariableop_10_lstm_337_lstm_cell_337_kernel:	d?N
;assignvariableop_11_lstm_337_lstm_cell_337_recurrent_kernel:	2?>
/assignvariableop_12_lstm_337_lstm_cell_337_bias:	?C
1assignvariableop_13_lstm_338_lstm_cell_338_kernel:2(M
;assignvariableop_14_lstm_338_lstm_cell_338_recurrent_kernel:
(=
/assignvariableop_15_lstm_338_lstm_cell_338_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_112_kernel_m:
7
)assignvariableop_19_adam_dense_112_bias_m:K
8assignvariableop_20_adam_lstm_336_lstm_cell_336_kernel_m:	?U
Bassignvariableop_21_adam_lstm_336_lstm_cell_336_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_336_lstm_cell_336_bias_m:	?K
8assignvariableop_23_adam_lstm_337_lstm_cell_337_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_337_lstm_cell_337_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_337_lstm_cell_337_bias_m:	?J
8assignvariableop_26_adam_lstm_338_lstm_cell_338_kernel_m:2(T
Bassignvariableop_27_adam_lstm_338_lstm_cell_338_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_338_lstm_cell_338_bias_m:(=
+assignvariableop_29_adam_dense_112_kernel_v:
7
)assignvariableop_30_adam_dense_112_bias_v:K
8assignvariableop_31_adam_lstm_336_lstm_cell_336_kernel_v:	?U
Bassignvariableop_32_adam_lstm_336_lstm_cell_336_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_336_lstm_cell_336_bias_v:	?K
8assignvariableop_34_adam_lstm_337_lstm_cell_337_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_337_lstm_cell_337_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_337_lstm_cell_337_bias_v:	?J
8assignvariableop_37_adam_lstm_338_lstm_cell_338_kernel_v:2(T
Bassignvariableop_38_adam_lstm_338_lstm_cell_338_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_338_lstm_cell_338_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_112_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_112_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_336_lstm_cell_336_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_336_lstm_cell_336_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_336_lstm_cell_336_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_337_lstm_cell_337_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_337_lstm_cell_337_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_337_lstm_cell_337_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_338_lstm_cell_338_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_338_lstm_cell_338_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_338_lstm_cell_338_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_112_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_112_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_336_lstm_cell_336_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_336_lstm_cell_336_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_336_lstm_cell_336_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_337_lstm_cell_337_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_337_lstm_cell_337_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_337_lstm_cell_337_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_338_lstm_cell_338_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_338_lstm_cell_338_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_338_lstm_cell_338_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_112_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_112_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_336_lstm_cell_336_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_336_lstm_cell_336_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_336_lstm_cell_336_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_337_lstm_cell_337_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_337_lstm_cell_337_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_337_lstm_cell_337_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_338_lstm_cell_338_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_338_lstm_cell_338_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_338_lstm_cell_338_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_3243084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_536_3243108_0:2(/
while_lstm_cell_536_3243110_0:
(+
while_lstm_cell_536_3243112_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_536_3243108:2(-
while_lstm_cell_536_3243110:
()
while_lstm_cell_536_3243112:(??+while/lstm_cell_536/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_536/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_536_3243108_0while_lstm_cell_536_3243110_0while_lstm_cell_536_3243112_0*
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
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3243025?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_536/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_536/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_536/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_536/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_536_3243108while_lstm_cell_536_3243108_0"<
while_lstm_cell_536_3243110while_lstm_cell_536_3243110_0"<
while_lstm_cell_536_3243112while_lstm_cell_536_3243112_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_536/StatefulPartitionedCall+while/lstm_cell_536/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_336_layer_call_fn_3245313

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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3243311s
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245753

inputs?
,lstm_cell_534_matmul_readvariableop_resource:	?A
.lstm_cell_534_matmul_1_readvariableop_resource:	d?<
-lstm_cell_534_biasadd_readvariableop_resource:	?
identity??$lstm_cell_534/BiasAdd/ReadVariableOp?#lstm_cell_534/MatMul/ReadVariableOp?%lstm_cell_534/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_534/MatMul/ReadVariableOpReadVariableOp,lstm_cell_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_534/MatMulMatMulstrided_slice_2:output:0+lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_534_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_534/MatMul_1MatMulzeros:output:0-lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_534/addAddV2lstm_cell_534/MatMul:product:0 lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_534/BiasAddBiasAddlstm_cell_534/add:z:0,lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_534/splitSplit&lstm_cell_534/split/split_dim:output:0lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_534/SigmoidSigmoidlstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_1Sigmoidlstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_534/mulMullstm_cell_534/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_534/ReluRelulstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_1Mullstm_cell_534/Sigmoid:y:0 lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_534/add_1AddV2lstm_cell_534/mul:z:0lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_2Sigmoidlstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_534/Relu_1Relulstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_2Mullstm_cell_534/Sigmoid_2:y:0"lstm_cell_534/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_534_matmul_readvariableop_resource.lstm_cell_534_matmul_1_readvariableop_resource-lstm_cell_534_biasadd_readvariableop_resource*
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
while_body_3245669*
condR
while_cond_3245668*K
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
NoOpNoOp%^lstm_cell_534/BiasAdd/ReadVariableOp$^lstm_cell_534/MatMul/ReadVariableOp&^lstm_cell_534/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_534/BiasAdd/ReadVariableOp$lstm_cell_534/BiasAdd/ReadVariableOp2J
#lstm_cell_534/MatMul/ReadVariableOp#lstm_cell_534/MatMul/ReadVariableOp2N
%lstm_cell_534/MatMul_1/ReadVariableOp%lstm_cell_534/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3243377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_535_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_535_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_535_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_535_matmul_readvariableop_resource:	d?G
4while_lstm_cell_535_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_535_biasadd_readvariableop_resource:	???*while/lstm_cell_535/BiasAdd/ReadVariableOp?)while/lstm_cell_535/MatMul/ReadVariableOp?+while/lstm_cell_535/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_535/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_535_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_535/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_535_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_535/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_535/addAddV2$while/lstm_cell_535/MatMul:product:0&while/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_535_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_535/BiasAddBiasAddwhile/lstm_cell_535/add:z:02while/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_535/splitSplit,while/lstm_cell_535/split/split_dim:output:0$while/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_535/SigmoidSigmoid"while/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_1Sigmoid"while/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mulMul!while/lstm_cell_535/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_535/ReluRelu"while/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_1Mulwhile/lstm_cell_535/Sigmoid:y:0&while/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/add_1AddV2while/lstm_cell_535/mul:z:0while/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_2Sigmoid"while/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_535/Relu_1Reluwhile/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_2Mul!while/lstm_cell_535/Sigmoid_2:y:0(while/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_535/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_535/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_535/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_535/BiasAdd/ReadVariableOp*^while/lstm_cell_535/MatMul/ReadVariableOp,^while/lstm_cell_535/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_535_biasadd_readvariableop_resource5while_lstm_cell_535_biasadd_readvariableop_resource_0"n
4while_lstm_cell_535_matmul_1_readvariableop_resource6while_lstm_cell_535_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_535_matmul_readvariableop_resource4while_lstm_cell_535_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_535/BiasAdd/ReadVariableOp*while/lstm_cell_535/BiasAdd/ReadVariableOp2V
)while/lstm_cell_535/MatMul/ReadVariableOp)while/lstm_cell_535/MatMul/ReadVariableOp2Z
+while/lstm_cell_535/MatMul_1/ReadVariableOp+while/lstm_cell_535/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_336_while_body_3244485.
*lstm_336_while_lstm_336_while_loop_counter4
0lstm_336_while_lstm_336_while_maximum_iterations
lstm_336_while_placeholder 
lstm_336_while_placeholder_1 
lstm_336_while_placeholder_2 
lstm_336_while_placeholder_3-
)lstm_336_while_lstm_336_strided_slice_1_0i
elstm_336_while_tensorarrayv2read_tensorlistgetitem_lstm_336_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_336_while_lstm_cell_534_matmul_readvariableop_resource_0:	?R
?lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource_0:	d?M
>lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource_0:	?
lstm_336_while_identity
lstm_336_while_identity_1
lstm_336_while_identity_2
lstm_336_while_identity_3
lstm_336_while_identity_4
lstm_336_while_identity_5+
'lstm_336_while_lstm_336_strided_slice_1g
clstm_336_while_tensorarrayv2read_tensorlistgetitem_lstm_336_tensorarrayunstack_tensorlistfromtensorN
;lstm_336_while_lstm_cell_534_matmul_readvariableop_resource:	?P
=lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource:	d?K
<lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource:	???3lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp?2lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp?4lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp?
@lstm_336/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_336/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_336_while_tensorarrayv2read_tensorlistgetitem_lstm_336_tensorarrayunstack_tensorlistfromtensor_0lstm_336_while_placeholderIlstm_336/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_336/while/lstm_cell_534/MatMul/ReadVariableOpReadVariableOp=lstm_336_while_lstm_cell_534_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_336/while/lstm_cell_534/MatMulMatMul9lstm_336/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp?lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_336/while/lstm_cell_534/MatMul_1MatMullstm_336_while_placeholder_2<lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_336/while/lstm_cell_534/addAddV2-lstm_336/while/lstm_cell_534/MatMul:product:0/lstm_336/while/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp>lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_336/while/lstm_cell_534/BiasAddBiasAdd$lstm_336/while/lstm_cell_534/add:z:0;lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_336/while/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_336/while/lstm_cell_534/splitSplit5lstm_336/while/lstm_cell_534/split/split_dim:output:0-lstm_336/while/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_336/while/lstm_cell_534/SigmoidSigmoid+lstm_336/while/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_336/while/lstm_cell_534/Sigmoid_1Sigmoid+lstm_336/while/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_336/while/lstm_cell_534/mulMul*lstm_336/while/lstm_cell_534/Sigmoid_1:y:0lstm_336_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_336/while/lstm_cell_534/ReluRelu+lstm_336/while/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_336/while/lstm_cell_534/mul_1Mul(lstm_336/while/lstm_cell_534/Sigmoid:y:0/lstm_336/while/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_336/while/lstm_cell_534/add_1AddV2$lstm_336/while/lstm_cell_534/mul:z:0&lstm_336/while/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_336/while/lstm_cell_534/Sigmoid_2Sigmoid+lstm_336/while/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_336/while/lstm_cell_534/Relu_1Relu&lstm_336/while/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_336/while/lstm_cell_534/mul_2Mul*lstm_336/while/lstm_cell_534/Sigmoid_2:y:01lstm_336/while/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_336/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_336_while_placeholder_1lstm_336_while_placeholder&lstm_336/while/lstm_cell_534/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_336/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_336/while/addAddV2lstm_336_while_placeholderlstm_336/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_336/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_336/while/add_1AddV2*lstm_336_while_lstm_336_while_loop_counterlstm_336/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_336/while/IdentityIdentitylstm_336/while/add_1:z:0^lstm_336/while/NoOp*
T0*
_output_shapes
: ?
lstm_336/while/Identity_1Identity0lstm_336_while_lstm_336_while_maximum_iterations^lstm_336/while/NoOp*
T0*
_output_shapes
: t
lstm_336/while/Identity_2Identitylstm_336/while/add:z:0^lstm_336/while/NoOp*
T0*
_output_shapes
: ?
lstm_336/while/Identity_3IdentityClstm_336/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_336/while/NoOp*
T0*
_output_shapes
: ?
lstm_336/while/Identity_4Identity&lstm_336/while/lstm_cell_534/mul_2:z:0^lstm_336/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_336/while/Identity_5Identity&lstm_336/while/lstm_cell_534/add_1:z:0^lstm_336/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_336/while/NoOpNoOp4^lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp3^lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp5^lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_336_while_identity lstm_336/while/Identity:output:0"?
lstm_336_while_identity_1"lstm_336/while/Identity_1:output:0"?
lstm_336_while_identity_2"lstm_336/while/Identity_2:output:0"?
lstm_336_while_identity_3"lstm_336/while/Identity_3:output:0"?
lstm_336_while_identity_4"lstm_336/while/Identity_4:output:0"?
lstm_336_while_identity_5"lstm_336/while/Identity_5:output:0"T
'lstm_336_while_lstm_336_strided_slice_1)lstm_336_while_lstm_336_strided_slice_1_0"~
<lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource>lstm_336_while_lstm_cell_534_biasadd_readvariableop_resource_0"?
=lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource?lstm_336_while_lstm_cell_534_matmul_1_readvariableop_resource_0"|
;lstm_336_while_lstm_cell_534_matmul_readvariableop_resource=lstm_336_while_lstm_cell_534_matmul_readvariableop_resource_0"?
clstm_336_while_tensorarrayv2read_tensorlistgetitem_lstm_336_tensorarrayunstack_tensorlistfromtensorelstm_336_while_tensorarrayv2read_tensorlistgetitem_lstm_336_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp3lstm_336/while/lstm_cell_534/BiasAdd/ReadVariableOp2h
2lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp2lstm_336/while/lstm_cell_534/MatMul/ReadVariableOp2l
4lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp4lstm_336/while/lstm_cell_534/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_112_layer_call_and_return_conditional_losses_3245280

inputsH
5lstm_336_lstm_cell_534_matmul_readvariableop_resource:	?J
7lstm_336_lstm_cell_534_matmul_1_readvariableop_resource:	d?E
6lstm_336_lstm_cell_534_biasadd_readvariableop_resource:	?H
5lstm_337_lstm_cell_535_matmul_readvariableop_resource:	d?J
7lstm_337_lstm_cell_535_matmul_1_readvariableop_resource:	2?E
6lstm_337_lstm_cell_535_biasadd_readvariableop_resource:	?G
5lstm_338_lstm_cell_536_matmul_readvariableop_resource:2(I
7lstm_338_lstm_cell_536_matmul_1_readvariableop_resource:
(D
6lstm_338_lstm_cell_536_biasadd_readvariableop_resource:(:
(dense_112_matmul_readvariableop_resource:
7
)dense_112_biasadd_readvariableop_resource:
identity?? dense_112/BiasAdd/ReadVariableOp?dense_112/MatMul/ReadVariableOp?-lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp?,lstm_336/lstm_cell_534/MatMul/ReadVariableOp?.lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp?lstm_336/while?-lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp?,lstm_337/lstm_cell_535/MatMul/ReadVariableOp?.lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp?lstm_337/while?-lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp?,lstm_338/lstm_cell_536/MatMul/ReadVariableOp?.lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp?lstm_338/whileD
lstm_336/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_336/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_336/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_336/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_336/strided_sliceStridedSlicelstm_336/Shape:output:0%lstm_336/strided_slice/stack:output:0'lstm_336/strided_slice/stack_1:output:0'lstm_336/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_336/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_336/zeros/packedPacklstm_336/strided_slice:output:0 lstm_336/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_336/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_336/zerosFilllstm_336/zeros/packed:output:0lstm_336/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_336/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_336/zeros_1/packedPacklstm_336/strided_slice:output:0"lstm_336/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_336/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_336/zeros_1Fill lstm_336/zeros_1/packed:output:0lstm_336/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_336/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_336/transpose	Transposeinputs lstm_336/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_336/Shape_1Shapelstm_336/transpose:y:0*
T0*
_output_shapes
:h
lstm_336/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_336/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_336/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_336/strided_slice_1StridedSlicelstm_336/Shape_1:output:0'lstm_336/strided_slice_1/stack:output:0)lstm_336/strided_slice_1/stack_1:output:0)lstm_336/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_336/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_336/TensorArrayV2TensorListReserve-lstm_336/TensorArrayV2/element_shape:output:0!lstm_336/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_336/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_336/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_336/transpose:y:0Glstm_336/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_336/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_336/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_336/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_336/strided_slice_2StridedSlicelstm_336/transpose:y:0'lstm_336/strided_slice_2/stack:output:0)lstm_336/strided_slice_2/stack_1:output:0)lstm_336/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_336/lstm_cell_534/MatMul/ReadVariableOpReadVariableOp5lstm_336_lstm_cell_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_336/lstm_cell_534/MatMulMatMul!lstm_336/strided_slice_2:output:04lstm_336/lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_336/lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp7lstm_336_lstm_cell_534_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_336/lstm_cell_534/MatMul_1MatMullstm_336/zeros:output:06lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_336/lstm_cell_534/addAddV2'lstm_336/lstm_cell_534/MatMul:product:0)lstm_336/lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_336/lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp6lstm_336_lstm_cell_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_336/lstm_cell_534/BiasAddBiasAddlstm_336/lstm_cell_534/add:z:05lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_336/lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_336/lstm_cell_534/splitSplit/lstm_336/lstm_cell_534/split/split_dim:output:0'lstm_336/lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_336/lstm_cell_534/SigmoidSigmoid%lstm_336/lstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_336/lstm_cell_534/Sigmoid_1Sigmoid%lstm_336/lstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_336/lstm_cell_534/mulMul$lstm_336/lstm_cell_534/Sigmoid_1:y:0lstm_336/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_336/lstm_cell_534/ReluRelu%lstm_336/lstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_336/lstm_cell_534/mul_1Mul"lstm_336/lstm_cell_534/Sigmoid:y:0)lstm_336/lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_336/lstm_cell_534/add_1AddV2lstm_336/lstm_cell_534/mul:z:0 lstm_336/lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_336/lstm_cell_534/Sigmoid_2Sigmoid%lstm_336/lstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_336/lstm_cell_534/Relu_1Relu lstm_336/lstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_336/lstm_cell_534/mul_2Mul$lstm_336/lstm_cell_534/Sigmoid_2:y:0+lstm_336/lstm_cell_534/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_336/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_336/TensorArrayV2_1TensorListReserve/lstm_336/TensorArrayV2_1/element_shape:output:0!lstm_336/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_336/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_336/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_336/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_336/whileWhile$lstm_336/while/loop_counter:output:0*lstm_336/while/maximum_iterations:output:0lstm_336/time:output:0!lstm_336/TensorArrayV2_1:handle:0lstm_336/zeros:output:0lstm_336/zeros_1:output:0!lstm_336/strided_slice_1:output:0@lstm_336/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_336_lstm_cell_534_matmul_readvariableop_resource7lstm_336_lstm_cell_534_matmul_1_readvariableop_resource6lstm_336_lstm_cell_534_biasadd_readvariableop_resource*
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
lstm_336_while_body_3244912*'
condR
lstm_336_while_cond_3244911*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_336/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_336/TensorArrayV2Stack/TensorListStackTensorListStacklstm_336/while:output:3Blstm_336/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_336/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_336/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_336/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_336/strided_slice_3StridedSlice4lstm_336/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_336/strided_slice_3/stack:output:0)lstm_336/strided_slice_3/stack_1:output:0)lstm_336/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_336/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_336/transpose_1	Transpose4lstm_336/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_336/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_336/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_337/ShapeShapelstm_336/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_337/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_337/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_337/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_337/strided_sliceStridedSlicelstm_337/Shape:output:0%lstm_337/strided_slice/stack:output:0'lstm_337/strided_slice/stack_1:output:0'lstm_337/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_337/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_337/zeros/packedPacklstm_337/strided_slice:output:0 lstm_337/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_337/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_337/zerosFilllstm_337/zeros/packed:output:0lstm_337/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_337/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_337/zeros_1/packedPacklstm_337/strided_slice:output:0"lstm_337/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_337/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_337/zeros_1Fill lstm_337/zeros_1/packed:output:0lstm_337/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_337/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_337/transpose	Transposelstm_336/transpose_1:y:0 lstm_337/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_337/Shape_1Shapelstm_337/transpose:y:0*
T0*
_output_shapes
:h
lstm_337/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_337/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_337/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_337/strided_slice_1StridedSlicelstm_337/Shape_1:output:0'lstm_337/strided_slice_1/stack:output:0)lstm_337/strided_slice_1/stack_1:output:0)lstm_337/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_337/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_337/TensorArrayV2TensorListReserve-lstm_337/TensorArrayV2/element_shape:output:0!lstm_337/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_337/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_337/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_337/transpose:y:0Glstm_337/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_337/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_337/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_337/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_337/strided_slice_2StridedSlicelstm_337/transpose:y:0'lstm_337/strided_slice_2/stack:output:0)lstm_337/strided_slice_2/stack_1:output:0)lstm_337/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_337/lstm_cell_535/MatMul/ReadVariableOpReadVariableOp5lstm_337_lstm_cell_535_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_337/lstm_cell_535/MatMulMatMul!lstm_337/strided_slice_2:output:04lstm_337/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_337/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp7lstm_337_lstm_cell_535_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_337/lstm_cell_535/MatMul_1MatMullstm_337/zeros:output:06lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_337/lstm_cell_535/addAddV2'lstm_337/lstm_cell_535/MatMul:product:0)lstm_337/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_337/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp6lstm_337_lstm_cell_535_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_337/lstm_cell_535/BiasAddBiasAddlstm_337/lstm_cell_535/add:z:05lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_337/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_337/lstm_cell_535/splitSplit/lstm_337/lstm_cell_535/split/split_dim:output:0'lstm_337/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_337/lstm_cell_535/SigmoidSigmoid%lstm_337/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_337/lstm_cell_535/Sigmoid_1Sigmoid%lstm_337/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_337/lstm_cell_535/mulMul$lstm_337/lstm_cell_535/Sigmoid_1:y:0lstm_337/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_337/lstm_cell_535/ReluRelu%lstm_337/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_337/lstm_cell_535/mul_1Mul"lstm_337/lstm_cell_535/Sigmoid:y:0)lstm_337/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_337/lstm_cell_535/add_1AddV2lstm_337/lstm_cell_535/mul:z:0 lstm_337/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_337/lstm_cell_535/Sigmoid_2Sigmoid%lstm_337/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_337/lstm_cell_535/Relu_1Relu lstm_337/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_337/lstm_cell_535/mul_2Mul$lstm_337/lstm_cell_535/Sigmoid_2:y:0+lstm_337/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_337/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_337/TensorArrayV2_1TensorListReserve/lstm_337/TensorArrayV2_1/element_shape:output:0!lstm_337/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_337/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_337/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_337/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_337/whileWhile$lstm_337/while/loop_counter:output:0*lstm_337/while/maximum_iterations:output:0lstm_337/time:output:0!lstm_337/TensorArrayV2_1:handle:0lstm_337/zeros:output:0lstm_337/zeros_1:output:0!lstm_337/strided_slice_1:output:0@lstm_337/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_337_lstm_cell_535_matmul_readvariableop_resource7lstm_337_lstm_cell_535_matmul_1_readvariableop_resource6lstm_337_lstm_cell_535_biasadd_readvariableop_resource*
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
lstm_337_while_body_3245051*'
condR
lstm_337_while_cond_3245050*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_337/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_337/TensorArrayV2Stack/TensorListStackTensorListStacklstm_337/while:output:3Blstm_337/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_337/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_337/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_337/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_337/strided_slice_3StridedSlice4lstm_337/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_337/strided_slice_3/stack:output:0)lstm_337/strided_slice_3/stack_1:output:0)lstm_337/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_337/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_337/transpose_1	Transpose4lstm_337/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_337/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_337/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_338/ShapeShapelstm_337/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_338/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_338/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_338/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_338/strided_sliceStridedSlicelstm_338/Shape:output:0%lstm_338/strided_slice/stack:output:0'lstm_338/strided_slice/stack_1:output:0'lstm_338/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_338/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_338/zeros/packedPacklstm_338/strided_slice:output:0 lstm_338/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_338/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_338/zerosFilllstm_338/zeros/packed:output:0lstm_338/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_338/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_338/zeros_1/packedPacklstm_338/strided_slice:output:0"lstm_338/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_338/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_338/zeros_1Fill lstm_338/zeros_1/packed:output:0lstm_338/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_338/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_338/transpose	Transposelstm_337/transpose_1:y:0 lstm_338/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_338/Shape_1Shapelstm_338/transpose:y:0*
T0*
_output_shapes
:h
lstm_338/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_338/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_338/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_338/strided_slice_1StridedSlicelstm_338/Shape_1:output:0'lstm_338/strided_slice_1/stack:output:0)lstm_338/strided_slice_1/stack_1:output:0)lstm_338/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_338/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_338/TensorArrayV2TensorListReserve-lstm_338/TensorArrayV2/element_shape:output:0!lstm_338/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_338/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_338/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_338/transpose:y:0Glstm_338/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_338/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_338/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_338/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_338/strided_slice_2StridedSlicelstm_338/transpose:y:0'lstm_338/strided_slice_2/stack:output:0)lstm_338/strided_slice_2/stack_1:output:0)lstm_338/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_338/lstm_cell_536/MatMul/ReadVariableOpReadVariableOp5lstm_338_lstm_cell_536_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_338/lstm_cell_536/MatMulMatMul!lstm_338/strided_slice_2:output:04lstm_338/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_338/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp7lstm_338_lstm_cell_536_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_338/lstm_cell_536/MatMul_1MatMullstm_338/zeros:output:06lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_338/lstm_cell_536/addAddV2'lstm_338/lstm_cell_536/MatMul:product:0)lstm_338/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_338/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp6lstm_338_lstm_cell_536_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_338/lstm_cell_536/BiasAddBiasAddlstm_338/lstm_cell_536/add:z:05lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_338/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_338/lstm_cell_536/splitSplit/lstm_338/lstm_cell_536/split/split_dim:output:0'lstm_338/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_338/lstm_cell_536/SigmoidSigmoid%lstm_338/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_338/lstm_cell_536/Sigmoid_1Sigmoid%lstm_338/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_338/lstm_cell_536/mulMul$lstm_338/lstm_cell_536/Sigmoid_1:y:0lstm_338/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_338/lstm_cell_536/ReluRelu%lstm_338/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_338/lstm_cell_536/mul_1Mul"lstm_338/lstm_cell_536/Sigmoid:y:0)lstm_338/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_338/lstm_cell_536/add_1AddV2lstm_338/lstm_cell_536/mul:z:0 lstm_338/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_338/lstm_cell_536/Sigmoid_2Sigmoid%lstm_338/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_338/lstm_cell_536/Relu_1Relu lstm_338/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_338/lstm_cell_536/mul_2Mul$lstm_338/lstm_cell_536/Sigmoid_2:y:0+lstm_338/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_338/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_338/TensorArrayV2_1TensorListReserve/lstm_338/TensorArrayV2_1/element_shape:output:0!lstm_338/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_338/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_338/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_338/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_338/whileWhile$lstm_338/while/loop_counter:output:0*lstm_338/while/maximum_iterations:output:0lstm_338/time:output:0!lstm_338/TensorArrayV2_1:handle:0lstm_338/zeros:output:0lstm_338/zeros_1:output:0!lstm_338/strided_slice_1:output:0@lstm_338/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_338_lstm_cell_536_matmul_readvariableop_resource7lstm_338_lstm_cell_536_matmul_1_readvariableop_resource6lstm_338_lstm_cell_536_biasadd_readvariableop_resource*
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
lstm_338_while_body_3245190*'
condR
lstm_338_while_cond_3245189*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_338/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_338/TensorArrayV2Stack/TensorListStackTensorListStacklstm_338/while:output:3Blstm_338/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_338/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_338/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_338/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_338/strided_slice_3StridedSlice4lstm_338/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_338/strided_slice_3/stack:output:0)lstm_338/strided_slice_3/stack_1:output:0)lstm_338/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_338/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_338/transpose_1	Transpose4lstm_338/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_338/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_338/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_112/MatMul/ReadVariableOpReadVariableOp(dense_112_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_112/MatMulMatMul!lstm_338/strided_slice_3:output:0'dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_112/BiasAdd/ReadVariableOpReadVariableOp)dense_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_112/BiasAddBiasAdddense_112/MatMul:product:0(dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_112/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_112/BiasAdd/ReadVariableOp ^dense_112/MatMul/ReadVariableOp.^lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp-^lstm_336/lstm_cell_534/MatMul/ReadVariableOp/^lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp^lstm_336/while.^lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp-^lstm_337/lstm_cell_535/MatMul/ReadVariableOp/^lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp^lstm_337/while.^lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp-^lstm_338/lstm_cell_536/MatMul/ReadVariableOp/^lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp^lstm_338/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_112/BiasAdd/ReadVariableOp dense_112/BiasAdd/ReadVariableOp2B
dense_112/MatMul/ReadVariableOpdense_112/MatMul/ReadVariableOp2^
-lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp-lstm_336/lstm_cell_534/BiasAdd/ReadVariableOp2\
,lstm_336/lstm_cell_534/MatMul/ReadVariableOp,lstm_336/lstm_cell_534/MatMul/ReadVariableOp2`
.lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp.lstm_336/lstm_cell_534/MatMul_1/ReadVariableOp2 
lstm_336/whilelstm_336/while2^
-lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp-lstm_337/lstm_cell_535/BiasAdd/ReadVariableOp2\
,lstm_337/lstm_cell_535/MatMul/ReadVariableOp,lstm_337/lstm_cell_535/MatMul/ReadVariableOp2`
.lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp.lstm_337/lstm_cell_535/MatMul_1/ReadVariableOp2 
lstm_337/whilelstm_337/while2^
-lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp-lstm_338/lstm_cell_536/BiasAdd/ReadVariableOp2\
,lstm_338/lstm_cell_536/MatMul/ReadVariableOp,lstm_338/lstm_cell_536/MatMul/ReadVariableOp2`
.lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp.lstm_338/lstm_cell_536/MatMul_1/ReadVariableOp2 
lstm_338/whilelstm_338/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244307
lstm_336_input#
lstm_336_3244280:	?#
lstm_336_3244282:	d?
lstm_336_3244284:	?#
lstm_337_3244287:	d?#
lstm_337_3244289:	2?
lstm_337_3244291:	?"
lstm_338_3244294:2("
lstm_338_3244296:
(
lstm_338_3244298:(#
dense_112_3244301:

dense_112_3244303:
identity??!dense_112/StatefulPartitionedCall? lstm_336/StatefulPartitionedCall? lstm_337/StatefulPartitionedCall? lstm_338/StatefulPartitionedCall?
 lstm_336/StatefulPartitionedCallStatefulPartitionedCalllstm_336_inputlstm_336_3244280lstm_336_3244282lstm_336_3244284*
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3243311?
 lstm_337/StatefulPartitionedCallStatefulPartitionedCall)lstm_336/StatefulPartitionedCall:output:0lstm_337_3244287lstm_337_3244289lstm_337_3244291*
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3243461?
 lstm_338/StatefulPartitionedCallStatefulPartitionedCall)lstm_337/StatefulPartitionedCall:output:0lstm_338_3244294lstm_338_3244296lstm_338_3244298*
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3243611?
!dense_112/StatefulPartitionedCallStatefulPartitionedCall)lstm_338/StatefulPartitionedCall:output:0dense_112_3244301dense_112_3244303*
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
F__inference_dense_112_layer_call_and_return_conditional_losses_3243629y
IdentityIdentity*dense_112/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_112/StatefulPartitionedCall!^lstm_336/StatefulPartitionedCall!^lstm_337/StatefulPartitionedCall!^lstm_338/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2D
 lstm_336/StatefulPartitionedCall lstm_336/StatefulPartitionedCall2D
 lstm_337/StatefulPartitionedCall lstm_337/StatefulPartitionedCall2D
 lstm_338/StatefulPartitionedCall lstm_338/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_336_input
?W
?
 __inference__traced_save_3247584
file_prefix/
+savev2_dense_112_kernel_read_readvariableop-
)savev2_dense_112_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_336_lstm_cell_336_kernel_read_readvariableopF
Bsavev2_lstm_336_lstm_cell_336_recurrent_kernel_read_readvariableop:
6savev2_lstm_336_lstm_cell_336_bias_read_readvariableop<
8savev2_lstm_337_lstm_cell_337_kernel_read_readvariableopF
Bsavev2_lstm_337_lstm_cell_337_recurrent_kernel_read_readvariableop:
6savev2_lstm_337_lstm_cell_337_bias_read_readvariableop<
8savev2_lstm_338_lstm_cell_338_kernel_read_readvariableopF
Bsavev2_lstm_338_lstm_cell_338_recurrent_kernel_read_readvariableop:
6savev2_lstm_338_lstm_cell_338_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_112_kernel_m_read_readvariableop4
0savev2_adam_dense_112_bias_m_read_readvariableopC
?savev2_adam_lstm_336_lstm_cell_336_kernel_m_read_readvariableopM
Isavev2_adam_lstm_336_lstm_cell_336_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_336_lstm_cell_336_bias_m_read_readvariableopC
?savev2_adam_lstm_337_lstm_cell_337_kernel_m_read_readvariableopM
Isavev2_adam_lstm_337_lstm_cell_337_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_337_lstm_cell_337_bias_m_read_readvariableopC
?savev2_adam_lstm_338_lstm_cell_338_kernel_m_read_readvariableopM
Isavev2_adam_lstm_338_lstm_cell_338_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_338_lstm_cell_338_bias_m_read_readvariableop6
2savev2_adam_dense_112_kernel_v_read_readvariableop4
0savev2_adam_dense_112_bias_v_read_readvariableopC
?savev2_adam_lstm_336_lstm_cell_336_kernel_v_read_readvariableopM
Isavev2_adam_lstm_336_lstm_cell_336_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_336_lstm_cell_336_bias_v_read_readvariableopC
?savev2_adam_lstm_337_lstm_cell_337_kernel_v_read_readvariableopM
Isavev2_adam_lstm_337_lstm_cell_337_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_337_lstm_cell_337_bias_v_read_readvariableopC
?savev2_adam_lstm_338_lstm_cell_338_kernel_v_read_readvariableopM
Isavev2_adam_lstm_338_lstm_cell_338_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_338_lstm_cell_338_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_112_kernel_read_readvariableop)savev2_dense_112_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_336_lstm_cell_336_kernel_read_readvariableopBsavev2_lstm_336_lstm_cell_336_recurrent_kernel_read_readvariableop6savev2_lstm_336_lstm_cell_336_bias_read_readvariableop8savev2_lstm_337_lstm_cell_337_kernel_read_readvariableopBsavev2_lstm_337_lstm_cell_337_recurrent_kernel_read_readvariableop6savev2_lstm_337_lstm_cell_337_bias_read_readvariableop8savev2_lstm_338_lstm_cell_338_kernel_read_readvariableopBsavev2_lstm_338_lstm_cell_338_recurrent_kernel_read_readvariableop6savev2_lstm_338_lstm_cell_338_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_112_kernel_m_read_readvariableop0savev2_adam_dense_112_bias_m_read_readvariableop?savev2_adam_lstm_336_lstm_cell_336_kernel_m_read_readvariableopIsavev2_adam_lstm_336_lstm_cell_336_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_336_lstm_cell_336_bias_m_read_readvariableop?savev2_adam_lstm_337_lstm_cell_337_kernel_m_read_readvariableopIsavev2_adam_lstm_337_lstm_cell_337_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_337_lstm_cell_337_bias_m_read_readvariableop?savev2_adam_lstm_338_lstm_cell_338_kernel_m_read_readvariableopIsavev2_adam_lstm_338_lstm_cell_338_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_338_lstm_cell_338_bias_m_read_readvariableop2savev2_adam_dense_112_kernel_v_read_readvariableop0savev2_adam_dense_112_bias_v_read_readvariableop?savev2_adam_lstm_336_lstm_cell_336_kernel_v_read_readvariableopIsavev2_adam_lstm_336_lstm_cell_336_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_336_lstm_cell_336_bias_v_read_readvariableop?savev2_adam_lstm_337_lstm_cell_337_kernel_v_read_readvariableopIsavev2_adam_lstm_337_lstm_cell_337_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_337_lstm_cell_337_bias_v_read_readvariableop?savev2_adam_lstm_338_lstm_cell_338_kernel_v_read_readvariableopIsavev2_adam_lstm_338_lstm_cell_338_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_338_lstm_cell_338_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3243311

inputs?
,lstm_cell_534_matmul_readvariableop_resource:	?A
.lstm_cell_534_matmul_1_readvariableop_resource:	d?<
-lstm_cell_534_biasadd_readvariableop_resource:	?
identity??$lstm_cell_534/BiasAdd/ReadVariableOp?#lstm_cell_534/MatMul/ReadVariableOp?%lstm_cell_534/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_534/MatMul/ReadVariableOpReadVariableOp,lstm_cell_534_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_534/MatMulMatMulstrided_slice_2:output:0+lstm_cell_534/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_534/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_534_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_534/MatMul_1MatMulzeros:output:0-lstm_cell_534/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_534/addAddV2lstm_cell_534/MatMul:product:0 lstm_cell_534/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_534/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_534_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_534/BiasAddBiasAddlstm_cell_534/add:z:0,lstm_cell_534/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_534/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_534/splitSplit&lstm_cell_534/split/split_dim:output:0lstm_cell_534/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_534/SigmoidSigmoidlstm_cell_534/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_1Sigmoidlstm_cell_534/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_534/mulMullstm_cell_534/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_534/ReluRelulstm_cell_534/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_1Mullstm_cell_534/Sigmoid:y:0 lstm_cell_534/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_534/add_1AddV2lstm_cell_534/mul:z:0lstm_cell_534/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_534/Sigmoid_2Sigmoidlstm_cell_534/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_534/Relu_1Relulstm_cell_534/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_534/mul_2Mullstm_cell_534/Sigmoid_2:y:0"lstm_cell_534/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_534_matmul_readvariableop_resource.lstm_cell_534_matmul_1_readvariableop_resource-lstm_cell_534_biasadd_readvariableop_resource*
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
while_body_3243227*
condR
while_cond_3243226*K
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
NoOpNoOp%^lstm_cell_534/BiasAdd/ReadVariableOp$^lstm_cell_534/MatMul/ReadVariableOp&^lstm_cell_534/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_534/BiasAdd/ReadVariableOp$lstm_cell_534/BiasAdd/ReadVariableOp2J
#lstm_cell_534/MatMul/ReadVariableOp#lstm_cell_534/MatMul/ReadVariableOp2N
%lstm_cell_534/MatMul_1/ReadVariableOp%lstm_cell_534/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3242325

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
while_body_3246428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_535_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_535_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_535_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_535_matmul_readvariableop_resource:	d?G
4while_lstm_cell_535_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_535_biasadd_readvariableop_resource:	???*while/lstm_cell_535/BiasAdd/ReadVariableOp?)while/lstm_cell_535/MatMul/ReadVariableOp?+while/lstm_cell_535/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_535/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_535_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_535/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_535_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_535/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_535/addAddV2$while/lstm_cell_535/MatMul:product:0&while/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_535_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_535/BiasAddBiasAddwhile/lstm_cell_535/add:z:02while/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_535/splitSplit,while/lstm_cell_535/split/split_dim:output:0$while/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_535/SigmoidSigmoid"while/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_1Sigmoid"while/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mulMul!while/lstm_cell_535/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_535/ReluRelu"while/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_1Mulwhile/lstm_cell_535/Sigmoid:y:0&while/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/add_1AddV2while/lstm_cell_535/mul:z:0while/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_535/Sigmoid_2Sigmoid"while/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_535/Relu_1Reluwhile/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_535/mul_2Mul!while/lstm_cell_535/Sigmoid_2:y:0(while/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_535/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_535/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_535/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_535/BiasAdd/ReadVariableOp*^while/lstm_cell_535/MatMul/ReadVariableOp,^while/lstm_cell_535/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_535_biasadd_readvariableop_resource5while_lstm_cell_535_biasadd_readvariableop_resource_0"n
4while_lstm_cell_535_matmul_1_readvariableop_resource6while_lstm_cell_535_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_535_matmul_readvariableop_resource4while_lstm_cell_535_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_535/BiasAdd/ReadVariableOp*while/lstm_cell_535/BiasAdd/ReadVariableOp2V
)while/lstm_cell_535/MatMul/ReadVariableOp)while/lstm_cell_535/MatMul/ReadVariableOp2Z
+while/lstm_cell_535/MatMul_1/ReadVariableOp+while/lstm_cell_535/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3246901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_536_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_536_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_536_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_536_matmul_readvariableop_resource:2(F
4while_lstm_cell_536_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_536_biasadd_readvariableop_resource:(??*while/lstm_cell_536/BiasAdd/ReadVariableOp?)while/lstm_cell_536/MatMul/ReadVariableOp?+while/lstm_cell_536/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_536/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_536_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_536/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_536/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_536/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_536_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_536/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_536/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_536/addAddV2$while/lstm_cell_536/MatMul:product:0&while/lstm_cell_536/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_536/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_536_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_536/BiasAddBiasAddwhile/lstm_cell_536/add:z:02while/lstm_cell_536/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_536/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_536/splitSplit,while/lstm_cell_536/split/split_dim:output:0$while/lstm_cell_536/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_536/SigmoidSigmoid"while/lstm_cell_536/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_1Sigmoid"while/lstm_cell_536/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mulMul!while/lstm_cell_536/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_536/ReluRelu"while/lstm_cell_536/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_1Mulwhile/lstm_cell_536/Sigmoid:y:0&while/lstm_cell_536/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/add_1AddV2while/lstm_cell_536/mul:z:0while/lstm_cell_536/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_536/Sigmoid_2Sigmoid"while/lstm_cell_536/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_536/Relu_1Reluwhile/lstm_cell_536/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_536/mul_2Mul!while/lstm_cell_536/Sigmoid_2:y:0(while/lstm_cell_536/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_536/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_536/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_536/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_536/BiasAdd/ReadVariableOp*^while/lstm_cell_536/MatMul/ReadVariableOp,^while/lstm_cell_536/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_536_biasadd_readvariableop_resource5while_lstm_cell_536_biasadd_readvariableop_resource_0"n
4while_lstm_cell_536_matmul_1_readvariableop_resource6while_lstm_cell_536_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_536_matmul_readvariableop_resource4while_lstm_cell_536_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_536/BiasAdd/ReadVariableOp*while/lstm_cell_536/BiasAdd/ReadVariableOp2V
)while/lstm_cell_536/MatMul/ReadVariableOp)while/lstm_cell_536/MatMul/ReadVariableOp2Z
+while/lstm_cell_536/MatMul_1/ReadVariableOp+while/lstm_cell_536/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_112_lstm_337_while_body_3241883L
Hsequential_112_lstm_337_while_sequential_112_lstm_337_while_loop_counterR
Nsequential_112_lstm_337_while_sequential_112_lstm_337_while_maximum_iterations-
)sequential_112_lstm_337_while_placeholder/
+sequential_112_lstm_337_while_placeholder_1/
+sequential_112_lstm_337_while_placeholder_2/
+sequential_112_lstm_337_while_placeholder_3K
Gsequential_112_lstm_337_while_sequential_112_lstm_337_strided_slice_1_0?
?sequential_112_lstm_337_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_337_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_112_lstm_337_while_lstm_cell_535_matmul_readvariableop_resource_0:	d?a
Nsequential_112_lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource_0:	2?\
Msequential_112_lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource_0:	?*
&sequential_112_lstm_337_while_identity,
(sequential_112_lstm_337_while_identity_1,
(sequential_112_lstm_337_while_identity_2,
(sequential_112_lstm_337_while_identity_3,
(sequential_112_lstm_337_while_identity_4,
(sequential_112_lstm_337_while_identity_5I
Esequential_112_lstm_337_while_sequential_112_lstm_337_strided_slice_1?
?sequential_112_lstm_337_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_337_tensorarrayunstack_tensorlistfromtensor]
Jsequential_112_lstm_337_while_lstm_cell_535_matmul_readvariableop_resource:	d?_
Lsequential_112_lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource:	2?Z
Ksequential_112_lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource:	???Bsequential_112/lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp?Asequential_112/lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp?Csequential_112/lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp?
Osequential_112/lstm_337/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_112/lstm_337/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_112_lstm_337_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_337_tensorarrayunstack_tensorlistfromtensor_0)sequential_112_lstm_337_while_placeholderXsequential_112/lstm_337/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_112/lstm_337/while/lstm_cell_535/MatMul/ReadVariableOpReadVariableOpLsequential_112_lstm_337_while_lstm_cell_535_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_112/lstm_337/while/lstm_cell_535/MatMulMatMulHsequential_112/lstm_337/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_112/lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_112/lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOpNsequential_112_lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_112/lstm_337/while/lstm_cell_535/MatMul_1MatMul+sequential_112_lstm_337_while_placeholder_2Ksequential_112/lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_112/lstm_337/while/lstm_cell_535/addAddV2<sequential_112/lstm_337/while/lstm_cell_535/MatMul:product:0>sequential_112/lstm_337/while/lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_112/lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOpMsequential_112_lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_112/lstm_337/while/lstm_cell_535/BiasAddBiasAdd3sequential_112/lstm_337/while/lstm_cell_535/add:z:0Jsequential_112/lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_112/lstm_337/while/lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_112/lstm_337/while/lstm_cell_535/splitSplitDsequential_112/lstm_337/while/lstm_cell_535/split/split_dim:output:0<sequential_112/lstm_337/while/lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_112/lstm_337/while/lstm_cell_535/SigmoidSigmoid:sequential_112/lstm_337/while/lstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_112/lstm_337/while/lstm_cell_535/Sigmoid_1Sigmoid:sequential_112/lstm_337/while/lstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_112/lstm_337/while/lstm_cell_535/mulMul9sequential_112/lstm_337/while/lstm_cell_535/Sigmoid_1:y:0+sequential_112_lstm_337_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_112/lstm_337/while/lstm_cell_535/ReluRelu:sequential_112/lstm_337/while/lstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_112/lstm_337/while/lstm_cell_535/mul_1Mul7sequential_112/lstm_337/while/lstm_cell_535/Sigmoid:y:0>sequential_112/lstm_337/while/lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_112/lstm_337/while/lstm_cell_535/add_1AddV23sequential_112/lstm_337/while/lstm_cell_535/mul:z:05sequential_112/lstm_337/while/lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_112/lstm_337/while/lstm_cell_535/Sigmoid_2Sigmoid:sequential_112/lstm_337/while/lstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_112/lstm_337/while/lstm_cell_535/Relu_1Relu5sequential_112/lstm_337/while/lstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_112/lstm_337/while/lstm_cell_535/mul_2Mul9sequential_112/lstm_337/while/lstm_cell_535/Sigmoid_2:y:0@sequential_112/lstm_337/while/lstm_cell_535/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_112/lstm_337/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_112_lstm_337_while_placeholder_1)sequential_112_lstm_337_while_placeholder5sequential_112/lstm_337/while/lstm_cell_535/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_112/lstm_337/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_112/lstm_337/while/addAddV2)sequential_112_lstm_337_while_placeholder,sequential_112/lstm_337/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_112/lstm_337/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_112/lstm_337/while/add_1AddV2Hsequential_112_lstm_337_while_sequential_112_lstm_337_while_loop_counter.sequential_112/lstm_337/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_112/lstm_337/while/IdentityIdentity'sequential_112/lstm_337/while/add_1:z:0#^sequential_112/lstm_337/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_337/while/Identity_1IdentityNsequential_112_lstm_337_while_sequential_112_lstm_337_while_maximum_iterations#^sequential_112/lstm_337/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_337/while/Identity_2Identity%sequential_112/lstm_337/while/add:z:0#^sequential_112/lstm_337/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_337/while/Identity_3IdentityRsequential_112/lstm_337/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_112/lstm_337/while/NoOp*
T0*
_output_shapes
: ?
(sequential_112/lstm_337/while/Identity_4Identity5sequential_112/lstm_337/while/lstm_cell_535/mul_2:z:0#^sequential_112/lstm_337/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_112/lstm_337/while/Identity_5Identity5sequential_112/lstm_337/while/lstm_cell_535/add_1:z:0#^sequential_112/lstm_337/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_112/lstm_337/while/NoOpNoOpC^sequential_112/lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOpB^sequential_112/lstm_337/while/lstm_cell_535/MatMul/ReadVariableOpD^sequential_112/lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_112_lstm_337_while_identity/sequential_112/lstm_337/while/Identity:output:0"]
(sequential_112_lstm_337_while_identity_11sequential_112/lstm_337/while/Identity_1:output:0"]
(sequential_112_lstm_337_while_identity_21sequential_112/lstm_337/while/Identity_2:output:0"]
(sequential_112_lstm_337_while_identity_31sequential_112/lstm_337/while/Identity_3:output:0"]
(sequential_112_lstm_337_while_identity_41sequential_112/lstm_337/while/Identity_4:output:0"]
(sequential_112_lstm_337_while_identity_51sequential_112/lstm_337/while/Identity_5:output:0"?
Ksequential_112_lstm_337_while_lstm_cell_535_biasadd_readvariableop_resourceMsequential_112_lstm_337_while_lstm_cell_535_biasadd_readvariableop_resource_0"?
Lsequential_112_lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resourceNsequential_112_lstm_337_while_lstm_cell_535_matmul_1_readvariableop_resource_0"?
Jsequential_112_lstm_337_while_lstm_cell_535_matmul_readvariableop_resourceLsequential_112_lstm_337_while_lstm_cell_535_matmul_readvariableop_resource_0"?
Esequential_112_lstm_337_while_sequential_112_lstm_337_strided_slice_1Gsequential_112_lstm_337_while_sequential_112_lstm_337_strided_slice_1_0"?
?sequential_112_lstm_337_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_337_tensorarrayunstack_tensorlistfromtensor?sequential_112_lstm_337_while_tensorarrayv2read_tensorlistgetitem_sequential_112_lstm_337_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_112/lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOpBsequential_112/lstm_337/while/lstm_cell_535/BiasAdd/ReadVariableOp2?
Asequential_112/lstm_337/while/lstm_cell_535/MatMul/ReadVariableOpAsequential_112/lstm_337/while/lstm_cell_535/MatMul/ReadVariableOp2?
Csequential_112/lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOpCsequential_112/lstm_337/while/lstm_cell_535/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3243526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3243526___redundant_placeholder05
1while_while_cond_3243526___redundant_placeholder15
1while_while_cond_3243526___redundant_placeholder25
1while_while_cond_3243526___redundant_placeholder3
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
?K
?
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246226
inputs_0?
,lstm_cell_535_matmul_readvariableop_resource:	d?A
.lstm_cell_535_matmul_1_readvariableop_resource:	2?<
-lstm_cell_535_biasadd_readvariableop_resource:	?
identity??$lstm_cell_535/BiasAdd/ReadVariableOp?#lstm_cell_535/MatMul/ReadVariableOp?%lstm_cell_535/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_535/MatMul/ReadVariableOpReadVariableOp,lstm_cell_535_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_535/MatMulMatMulstrided_slice_2:output:0+lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_535_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_535/MatMul_1MatMulzeros:output:0-lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_535/addAddV2lstm_cell_535/MatMul:product:0 lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_535_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_535/BiasAddBiasAddlstm_cell_535/add:z:0,lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_535/splitSplit&lstm_cell_535/split/split_dim:output:0lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_535/SigmoidSigmoidlstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_1Sigmoidlstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_535/mulMullstm_cell_535/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_535/ReluRelulstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_1Mullstm_cell_535/Sigmoid:y:0 lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_535/add_1AddV2lstm_cell_535/mul:z:0lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_2Sigmoidlstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_535/Relu_1Relulstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_2Mullstm_cell_535/Sigmoid_2:y:0"lstm_cell_535/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_535_matmul_readvariableop_resource.lstm_cell_535_matmul_1_readvariableop_resource-lstm_cell_535_biasadd_readvariableop_resource*
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
while_body_3246142*
condR
while_cond_3246141*K
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
NoOpNoOp%^lstm_cell_535/BiasAdd/ReadVariableOp$^lstm_cell_535/MatMul/ReadVariableOp&^lstm_cell_535/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_535/BiasAdd/ReadVariableOp$lstm_cell_535/BiasAdd/ReadVariableOp2J
#lstm_cell_535/MatMul/ReadVariableOp#lstm_cell_535/MatMul/ReadVariableOp2N
%lstm_cell_535/MatMul_1/ReadVariableOp%lstm_cell_535/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*sequential_112_lstm_337_while_cond_3241882L
Hsequential_112_lstm_337_while_sequential_112_lstm_337_while_loop_counterR
Nsequential_112_lstm_337_while_sequential_112_lstm_337_while_maximum_iterations-
)sequential_112_lstm_337_while_placeholder/
+sequential_112_lstm_337_while_placeholder_1/
+sequential_112_lstm_337_while_placeholder_2/
+sequential_112_lstm_337_while_placeholder_3N
Jsequential_112_lstm_337_while_less_sequential_112_lstm_337_strided_slice_1e
asequential_112_lstm_337_while_sequential_112_lstm_337_while_cond_3241882___redundant_placeholder0e
asequential_112_lstm_337_while_sequential_112_lstm_337_while_cond_3241882___redundant_placeholder1e
asequential_112_lstm_337_while_sequential_112_lstm_337_while_cond_3241882___redundant_placeholder2e
asequential_112_lstm_337_while_sequential_112_lstm_337_while_cond_3241882___redundant_placeholder3*
&sequential_112_lstm_337_while_identity
?
"sequential_112/lstm_337/while/LessLess)sequential_112_lstm_337_while_placeholderJsequential_112_lstm_337_while_less_sequential_112_lstm_337_strided_slice_1*
T0*
_output_shapes
: {
&sequential_112/lstm_337/while/IdentityIdentity&sequential_112/lstm_337/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_112_lstm_337_while_identity/sequential_112/lstm_337/while/Identity:output:0*(
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
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3242879

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
?
*__inference_lstm_338_layer_call_fn_3246534
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3243153o
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3243461

inputs?
,lstm_cell_535_matmul_readvariableop_resource:	d?A
.lstm_cell_535_matmul_1_readvariableop_resource:	2?<
-lstm_cell_535_biasadd_readvariableop_resource:	?
identity??$lstm_cell_535/BiasAdd/ReadVariableOp?#lstm_cell_535/MatMul/ReadVariableOp?%lstm_cell_535/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_535/MatMul/ReadVariableOpReadVariableOp,lstm_cell_535_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_535/MatMulMatMulstrided_slice_2:output:0+lstm_cell_535/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_535/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_535_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_535/MatMul_1MatMulzeros:output:0-lstm_cell_535/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_535/addAddV2lstm_cell_535/MatMul:product:0 lstm_cell_535/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_535/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_535_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_535/BiasAddBiasAddlstm_cell_535/add:z:0,lstm_cell_535/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_535/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_535/splitSplit&lstm_cell_535/split/split_dim:output:0lstm_cell_535/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_535/SigmoidSigmoidlstm_cell_535/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_1Sigmoidlstm_cell_535/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_535/mulMullstm_cell_535/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_535/ReluRelulstm_cell_535/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_1Mullstm_cell_535/Sigmoid:y:0 lstm_cell_535/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_535/add_1AddV2lstm_cell_535/mul:z:0lstm_cell_535/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_535/Sigmoid_2Sigmoidlstm_cell_535/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_535/Relu_1Relulstm_cell_535/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_535/mul_2Mullstm_cell_535/Sigmoid_2:y:0"lstm_cell_535/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_535_matmul_readvariableop_resource.lstm_cell_535_matmul_1_readvariableop_resource-lstm_cell_535_biasadd_readvariableop_resource*
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
while_body_3243377*
condR
while_cond_3243376*K
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
NoOpNoOp%^lstm_cell_535/BiasAdd/ReadVariableOp$^lstm_cell_535/MatMul/ReadVariableOp&^lstm_cell_535/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_535/BiasAdd/ReadVariableOp$lstm_cell_535/BiasAdd/ReadVariableOp2J
#lstm_cell_535/MatMul/ReadVariableOp#lstm_cell_535/MatMul/ReadVariableOp2N
%lstm_cell_535/MatMul_1/ReadVariableOp%lstm_cell_535/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_338_while_cond_3245189.
*lstm_338_while_lstm_338_while_loop_counter4
0lstm_338_while_lstm_338_while_maximum_iterations
lstm_338_while_placeholder 
lstm_338_while_placeholder_1 
lstm_338_while_placeholder_2 
lstm_338_while_placeholder_30
,lstm_338_while_less_lstm_338_strided_slice_1G
Clstm_338_while_lstm_338_while_cond_3245189___redundant_placeholder0G
Clstm_338_while_lstm_338_while_cond_3245189___redundant_placeholder1G
Clstm_338_while_lstm_338_while_cond_3245189___redundant_placeholder2G
Clstm_338_while_lstm_338_while_cond_3245189___redundant_placeholder3
lstm_338_while_identity
?
lstm_338/while/LessLesslstm_338_while_placeholder,lstm_338_while_less_lstm_338_strided_slice_1*
T0*
_output_shapes
: ]
lstm_338/while/IdentityIdentitylstm_338/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_338_while_identity lstm_338/while/Identity:output:0*(
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
while_cond_3246141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3246141___redundant_placeholder05
1while_while_cond_3246141___redundant_placeholder15
1while_while_cond_3246141___redundant_placeholder25
1while_while_cond_3246141___redundant_placeholder3
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3242612

inputs(
lstm_cell_535_3242530:	d?(
lstm_cell_535_3242532:	2?$
lstm_cell_535_3242534:	?
identity??%lstm_cell_535/StatefulPartitionedCall?while;
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
%lstm_cell_535/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_535_3242530lstm_cell_535_3242532lstm_cell_535_3242534*
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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3242529n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_535_3242530lstm_cell_535_3242532lstm_cell_535_3242534*
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
while_body_3242543*
condR
while_cond_3242542*K
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
NoOpNoOp&^lstm_cell_535/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_535/StatefulPartitionedCall%lstm_cell_535/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
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
lstm_336_input;
 serving_default_lstm_336_input:0?????????=
	dense_1120
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
2dense_112/kernel
:2dense_112/bias
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
0:.	?2lstm_336/lstm_cell_336/kernel
::8	d?2'lstm_336/lstm_cell_336/recurrent_kernel
*:(?2lstm_336/lstm_cell_336/bias
0:.	d?2lstm_337/lstm_cell_337/kernel
::8	2?2'lstm_337/lstm_cell_337/recurrent_kernel
*:(?2lstm_337/lstm_cell_337/bias
/:-2(2lstm_338/lstm_cell_338/kernel
9:7
(2'lstm_338/lstm_cell_338/recurrent_kernel
):'(2lstm_338/lstm_cell_338/bias
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
2Adam/dense_112/kernel/m
!:2Adam/dense_112/bias/m
5:3	?2$Adam/lstm_336/lstm_cell_336/kernel/m
?:=	d?2.Adam/lstm_336/lstm_cell_336/recurrent_kernel/m
/:-?2"Adam/lstm_336/lstm_cell_336/bias/m
5:3	d?2$Adam/lstm_337/lstm_cell_337/kernel/m
?:=	2?2.Adam/lstm_337/lstm_cell_337/recurrent_kernel/m
/:-?2"Adam/lstm_337/lstm_cell_337/bias/m
4:22(2$Adam/lstm_338/lstm_cell_338/kernel/m
>:<
(2.Adam/lstm_338/lstm_cell_338/recurrent_kernel/m
.:,(2"Adam/lstm_338/lstm_cell_338/bias/m
':%
2Adam/dense_112/kernel/v
!:2Adam/dense_112/bias/v
5:3	?2$Adam/lstm_336/lstm_cell_336/kernel/v
?:=	d?2.Adam/lstm_336/lstm_cell_336/recurrent_kernel/v
/:-?2"Adam/lstm_336/lstm_cell_336/bias/v
5:3	d?2$Adam/lstm_337/lstm_cell_337/kernel/v
?:=	2?2.Adam/lstm_337/lstm_cell_337/recurrent_kernel/v
/:-?2"Adam/lstm_337/lstm_cell_337/bias/v
4:22(2$Adam/lstm_338/lstm_cell_338/kernel/v
>:<
(2.Adam/lstm_338/lstm_cell_338/recurrent_kernel/v
.:,(2"Adam/lstm_338/lstm_cell_338/bias/v
?2?
0__inference_sequential_112_layer_call_fn_3243661
0__inference_sequential_112_layer_call_fn_3244399
0__inference_sequential_112_layer_call_fn_3244426
0__inference_sequential_112_layer_call_fn_3244277?
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
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244853
K__inference_sequential_112_layer_call_and_return_conditional_losses_3245280
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244307
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244337?
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
"__inference__wrapped_model_3242112lstm_336_input"?
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
*__inference_lstm_336_layer_call_fn_3245291
*__inference_lstm_336_layer_call_fn_3245302
*__inference_lstm_336_layer_call_fn_3245313
*__inference_lstm_336_layer_call_fn_3245324?
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245467
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245610
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245753
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245896?
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
*__inference_lstm_337_layer_call_fn_3245907
*__inference_lstm_337_layer_call_fn_3245918
*__inference_lstm_337_layer_call_fn_3245929
*__inference_lstm_337_layer_call_fn_3245940?
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246083
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246226
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246369
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246512?
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
*__inference_lstm_338_layer_call_fn_3246523
*__inference_lstm_338_layer_call_fn_3246534
*__inference_lstm_338_layer_call_fn_3246545
*__inference_lstm_338_layer_call_fn_3246556?
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3246699
E__inference_lstm_338_layer_call_and_return_conditional_losses_3246842
E__inference_lstm_338_layer_call_and_return_conditional_losses_3246985
E__inference_lstm_338_layer_call_and_return_conditional_losses_3247128?
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
+__inference_dense_112_layer_call_fn_3247137?
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
F__inference_dense_112_layer_call_and_return_conditional_losses_3247147?
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
%__inference_signature_wrapper_3244372lstm_336_input"?
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
/__inference_lstm_cell_534_layer_call_fn_3247164
/__inference_lstm_cell_534_layer_call_fn_3247181?
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
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3247213
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3247245?
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
/__inference_lstm_cell_535_layer_call_fn_3247262
/__inference_lstm_cell_535_layer_call_fn_3247279?
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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3247311
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3247343?
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
/__inference_lstm_cell_536_layer_call_fn_3247360
/__inference_lstm_cell_536_layer_call_fn_3247377?
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
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3247409
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3247441?
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
"__inference__wrapped_model_3242112?-./012345!";?8
1?.
,?)
lstm_336_input?????????
? "5?2
0
	dense_112#? 
	dense_112??????????
F__inference_dense_112_layer_call_and_return_conditional_losses_3247147\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_112_layer_call_fn_3247137O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245467?-./O?L
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245610?-./O?L
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245753q-./??<
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
E__inference_lstm_336_layer_call_and_return_conditional_losses_3245896q-./??<
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
*__inference_lstm_336_layer_call_fn_3245291}-./O?L
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
*__inference_lstm_336_layer_call_fn_3245302}-./O?L
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
*__inference_lstm_336_layer_call_fn_3245313d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_336_layer_call_fn_3245324d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246083?012O?L
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246226?012O?L
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246369q012??<
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
E__inference_lstm_337_layer_call_and_return_conditional_losses_3246512q012??<
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
*__inference_lstm_337_layer_call_fn_3245907}012O?L
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
*__inference_lstm_337_layer_call_fn_3245918}012O?L
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
*__inference_lstm_337_layer_call_fn_3245929d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_337_layer_call_fn_3245940d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_338_layer_call_and_return_conditional_losses_3246699}345O?L
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3246842}345O?L
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3246985m345??<
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
E__inference_lstm_338_layer_call_and_return_conditional_losses_3247128m345??<
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
*__inference_lstm_338_layer_call_fn_3246523p345O?L
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
*__inference_lstm_338_layer_call_fn_3246534p345O?L
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
*__inference_lstm_338_layer_call_fn_3246545`345??<
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
*__inference_lstm_338_layer_call_fn_3246556`345??<
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
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3247213?-./??}
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
J__inference_lstm_cell_534_layer_call_and_return_conditional_losses_3247245?-./??}
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
/__inference_lstm_cell_534_layer_call_fn_3247164?-./??}
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
/__inference_lstm_cell_534_layer_call_fn_3247181?-./??}
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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3247311?012??}
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
J__inference_lstm_cell_535_layer_call_and_return_conditional_losses_3247343?012??}
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
/__inference_lstm_cell_535_layer_call_fn_3247262?012??}
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
/__inference_lstm_cell_535_layer_call_fn_3247279?012??}
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
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3247409?345??}
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
J__inference_lstm_cell_536_layer_call_and_return_conditional_losses_3247441?345??}
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
/__inference_lstm_cell_536_layer_call_fn_3247360?345??}
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
/__inference_lstm_cell_536_layer_call_fn_3247377?345??}
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
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244307y-./012345!"C?@
9?6
,?)
lstm_336_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244337y-./012345!"C?@
9?6
,?)
lstm_336_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_112_layer_call_and_return_conditional_losses_3244853q-./012345!";?8
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
K__inference_sequential_112_layer_call_and_return_conditional_losses_3245280q-./012345!";?8
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
0__inference_sequential_112_layer_call_fn_3243661l-./012345!"C?@
9?6
,?)
lstm_336_input?????????
p 

 
? "???????????
0__inference_sequential_112_layer_call_fn_3244277l-./012345!"C?@
9?6
,?)
lstm_336_input?????????
p

 
? "???????????
0__inference_sequential_112_layer_call_fn_3244399d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_112_layer_call_fn_3244426d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3244372?-./012345!"M?J
? 
C?@
>
lstm_336_input,?)
lstm_336_input?????????"5?2
0
	dense_112#? 
	dense_112?????????