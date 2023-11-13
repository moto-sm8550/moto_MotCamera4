.class public final enum Lbv;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final enum A:Lbv;

.field private static final enum B:Lbv;

.field private static final enum C:Lbv;

.field private static final enum D:Lbv;

.field private static final enum E:Lbv;

.field private static final enum F:Lbv;

.field private static final enum G:Lbv;

.field private static final enum H:Lbv;

.field private static final enum I:Lbv;

.field private static final enum J:Lbv;

.field private static final enum K:Lbv;

.field private static final enum L:Lbv;

.field private static final enum M:Lbv;

.field private static final enum N:Lbv;

.field private static final enum O:Lbv;

.field private static final enum P:Lbv;

.field private static final enum Q:Lbv;

.field private static final enum R:Lbv;

.field private static final enum S:Lbv;

.field private static final enum T:Lbv;

.field private static final enum U:Lbv;

.field private static final enum V:Lbv;

.field private static final enum W:Lbv;

.field private static final enum X:Lbv;

.field private static final enum Y:Lbv;

.field private static final enum Z:Lbv;

.field public static final enum a:Lbv;

.field private static final enum aa:Lbv;

.field private static final ab:[Lbv;

.field private static final synthetic ac:[Lbv;

.field public static final enum b:Lbv;

.field public static final enum c:Lbv;

.field public static final enum d:Lbv;

.field public static final enum e:Lbv;

.field public static final enum f:Lbv;

.field public static final enum g:Lbv;

.field private static final enum j:Lbv;

.field private static final enum k:Lbv;

.field private static final enum l:Lbv;

.field private static final enum m:Lbv;

.field private static final enum n:Lbv;

.field private static final enum o:Lbv;

.field private static final enum p:Lbv;

.field private static final enum q:Lbv;

.field private static final enum r:Lbv;

.field private static final enum s:Lbv;

.field private static final enum t:Lbv;

.field private static final enum u:Lbv;

.field private static final enum v:Lbv;

.field private static final enum w:Lbv;

.field private static final enum x:Lbv;

.field private static final enum y:Lbv;

.field private static final enum z:Lbv;


# instance fields
.field public final h:I

.field public final i:Lbu;


# direct methods
.method public static constructor <clinit>()V
    .locals 65

    .line 1
    new-instance v6, Lbv;

    sget-object v7, Lbu;->a:Lbu;

    sget-object v8, Lco;->e:Lco;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v6, Lbv;->j:Lbv;

    .line 2
    new-instance v9, Lbv;

    sget-object v10, Lco;->d:Lco;

    const-string v1, "FLOAT"

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v9, Lbv;->k:Lbv;

    .line 3
    new-instance v11, Lbv;

    sget-object v12, Lco;->c:Lco;

    const-string v1, "INT64"

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v0, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v11, Lbv;->l:Lbv;

    .line 4
    new-instance v13, Lbv;

    const-string v1, "UINT64"

    const/4 v2, 0x3

    const/4 v3, 0x3

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v13, Lbv;->m:Lbv;

    .line 5
    new-instance v14, Lbv;

    sget-object v15, Lco;->b:Lco;

    const-string v1, "INT32"

    const/4 v2, 0x4

    const/4 v3, 0x4

    move-object v0, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v14, Lbv;->n:Lbv;

    .line 6
    new-instance v16, Lbv;

    const-string v1, "FIXED64"

    const/4 v2, 0x5

    const/4 v3, 0x5

    move-object/from16 v0, v16

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v16, Lbv;->o:Lbv;

    .line 7
    new-instance v17, Lbv;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    const/4 v3, 0x6

    move-object/from16 v0, v17

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v17, Lbv;->p:Lbv;

    .line 8
    new-instance v18, Lbv;

    sget-object v19, Lco;->f:Lco;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v18, Lbv;->q:Lbv;

    .line 9
    new-instance v20, Lbv;

    sget-object v21, Lco;->g:Lco;

    const-string v1, "STRING"

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object/from16 v0, v20

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v20, Lbv;->r:Lbv;

    .line 10
    new-instance v22, Lbv;

    sget-object v23, Lco;->j:Lco;

    const-string v1, "MESSAGE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    move-object/from16 v0, v22

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v22, Lbv;->a:Lbv;

    .line 11
    new-instance v24, Lbv;

    sget-object v25, Lco;->h:Lco;

    const-string v1, "BYTES"

    const/16 v2, 0xa

    const/16 v3, 0xa

    move-object/from16 v0, v24

    move-object/from16 v5, v25

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v24, Lbv;->s:Lbv;

    .line 12
    new-instance v26, Lbv;

    const-string v1, "UINT32"

    const/16 v2, 0xb

    const/16 v3, 0xb

    move-object/from16 v0, v26

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v26, Lbv;->t:Lbv;

    .line 13
    new-instance v27, Lbv;

    sget-object v28, Lco;->i:Lco;

    const-string v1, "ENUM"

    const/16 v2, 0xc

    const/16 v3, 0xc

    move-object/from16 v0, v27

    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v27, Lbv;->u:Lbv;

    .line 14
    new-instance v29, Lbv;

    const-string v1, "SFIXED32"

    const/16 v2, 0xd

    const/16 v3, 0xd

    move-object/from16 v0, v29

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v29, Lbv;->v:Lbv;

    .line 15
    new-instance v30, Lbv;

    const-string v1, "SFIXED64"

    const/16 v2, 0xe

    const/16 v3, 0xe

    move-object/from16 v0, v30

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v30, Lbv;->w:Lbv;

    .line 16
    new-instance v31, Lbv;

    const-string v1, "SINT32"

    const/16 v2, 0xf

    const/16 v3, 0xf

    move-object/from16 v0, v31

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v31, Lbv;->x:Lbv;

    .line 17
    new-instance v32, Lbv;

    const-string v1, "SINT64"

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object/from16 v0, v32

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v32, Lbv;->y:Lbv;

    .line 18
    new-instance v33, Lbv;

    const-string v1, "GROUP"

    const/16 v2, 0x11

    const/16 v3, 0x11

    move-object/from16 v0, v33

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v33, Lbv;->b:Lbv;

    .line 19
    new-instance v7, Lbv;

    sget-object v34, Lbu;->b:Lbu;

    const-string v1, "DOUBLE_LIST"

    const/16 v2, 0x12

    const/16 v3, 0x12

    move-object v0, v7

    move-object/from16 v4, v34

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v7, Lbv;->z:Lbv;

    .line 20
    new-instance v35, Lbv;

    const-string v1, "FLOAT_LIST"

    const/16 v2, 0x13

    const/16 v3, 0x13

    move-object/from16 v0, v35

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v35, Lbv;->A:Lbv;

    .line 21
    new-instance v36, Lbv;

    const-string v1, "INT64_LIST"

    const/16 v2, 0x14

    const/16 v3, 0x14

    move-object/from16 v0, v36

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v36, Lbv;->B:Lbv;

    .line 22
    new-instance v37, Lbv;

    const-string v1, "UINT64_LIST"

    const/16 v2, 0x15

    const/16 v3, 0x15

    move-object/from16 v0, v37

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v37, Lbv;->C:Lbv;

    .line 23
    new-instance v38, Lbv;

    const-string v1, "INT32_LIST"

    const/16 v2, 0x16

    const/16 v3, 0x16

    move-object/from16 v0, v38

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v38, Lbv;->D:Lbv;

    .line 24
    new-instance v39, Lbv;

    const-string v1, "FIXED64_LIST"

    const/16 v2, 0x17

    const/16 v3, 0x17

    move-object/from16 v0, v39

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v39, Lbv;->E:Lbv;

    .line 25
    new-instance v40, Lbv;

    const-string v1, "FIXED32_LIST"

    const/16 v2, 0x18

    const/16 v3, 0x18

    move-object/from16 v0, v40

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v40, Lbv;->F:Lbv;

    .line 26
    new-instance v41, Lbv;

    const-string v1, "BOOL_LIST"

    const/16 v2, 0x19

    const/16 v3, 0x19

    move-object/from16 v0, v41

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v41, Lbv;->G:Lbv;

    .line 27
    new-instance v42, Lbv;

    const-string v1, "STRING_LIST"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    move-object/from16 v0, v42

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v42, Lbv;->H:Lbv;

    .line 28
    new-instance v21, Lbv;

    const-string v1, "MESSAGE_LIST"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    move-object/from16 v0, v21

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v21, Lbv;->c:Lbv;

    .line 29
    new-instance v43, Lbv;

    const-string v1, "BYTES_LIST"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    move-object/from16 v0, v43

    move-object/from16 v5, v25

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v43, Lbv;->I:Lbv;

    .line 30
    new-instance v25, Lbv;

    const-string v1, "UINT32_LIST"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    move-object/from16 v0, v25

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v25, Lbv;->J:Lbv;

    .line 31
    new-instance v44, Lbv;

    const-string v1, "ENUM_LIST"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    move-object/from16 v0, v44

    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v44, Lbv;->K:Lbv;

    .line 32
    new-instance v45, Lbv;

    const-string v1, "SFIXED32_LIST"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    move-object/from16 v0, v45

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v45, Lbv;->L:Lbv;

    .line 33
    new-instance v46, Lbv;

    const-string v1, "SFIXED64_LIST"

    const/16 v2, 0x20

    const/16 v3, 0x20

    move-object/from16 v0, v46

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v46, Lbv;->M:Lbv;

    .line 34
    new-instance v47, Lbv;

    const-string v1, "SINT32_LIST"

    const/16 v2, 0x21

    const/16 v3, 0x21

    move-object/from16 v0, v47

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v47, Lbv;->N:Lbv;

    .line 35
    new-instance v48, Lbv;

    const-string v1, "SINT64_LIST"

    const/16 v2, 0x22

    const/16 v3, 0x22

    move-object/from16 v0, v48

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v48, Lbv;->O:Lbv;

    .line 36
    new-instance v49, Lbv;

    sget-object v50, Lbu;->c:Lbu;

    const-string v1, "DOUBLE_LIST_PACKED"

    const/16 v2, 0x23

    const/16 v3, 0x23

    move-object/from16 v0, v49

    move-object/from16 v4, v50

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v49, Lbv;->d:Lbv;

    .line 37
    new-instance v8, Lbv;

    const-string v1, "FLOAT_LIST_PACKED"

    const/16 v2, 0x24

    const/16 v3, 0x24

    move-object v0, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v8, Lbv;->P:Lbv;

    .line 38
    new-instance v10, Lbv;

    const-string v1, "INT64_LIST_PACKED"

    const/16 v2, 0x25

    const/16 v3, 0x25

    move-object v0, v10

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v10, Lbv;->Q:Lbv;

    .line 39
    new-instance v51, Lbv;

    const-string v1, "UINT64_LIST_PACKED"

    const/16 v2, 0x26

    const/16 v3, 0x26

    move-object/from16 v0, v51

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v51, Lbv;->R:Lbv;

    .line 40
    new-instance v52, Lbv;

    const-string v1, "INT32_LIST_PACKED"

    const/16 v2, 0x27

    const/16 v3, 0x27

    move-object/from16 v0, v52

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v52, Lbv;->S:Lbv;

    .line 41
    new-instance v53, Lbv;

    const-string v1, "FIXED64_LIST_PACKED"

    const/16 v2, 0x28

    const/16 v3, 0x28

    move-object/from16 v0, v53

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v53, Lbv;->T:Lbv;

    .line 42
    new-instance v54, Lbv;

    const-string v1, "FIXED32_LIST_PACKED"

    const/16 v2, 0x29

    const/16 v3, 0x29

    move-object/from16 v0, v54

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v54, Lbv;->U:Lbv;

    .line 43
    new-instance v55, Lbv;

    const-string v1, "BOOL_LIST_PACKED"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    move-object/from16 v0, v55

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v55, Lbv;->V:Lbv;

    .line 44
    new-instance v19, Lbv;

    const-string v1, "UINT32_LIST_PACKED"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    move-object/from16 v0, v19

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v19, Lbv;->W:Lbv;

    .line 45
    new-instance v56, Lbv;

    const-string v1, "ENUM_LIST_PACKED"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    move-object/from16 v0, v56

    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v56, Lbv;->X:Lbv;

    .line 46
    new-instance v28, Lbv;

    const-string v1, "SFIXED32_LIST_PACKED"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    move-object/from16 v0, v28

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v28, Lbv;->Y:Lbv;

    .line 47
    new-instance v57, Lbv;

    const-string v1, "SFIXED64_LIST_PACKED"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    move-object/from16 v0, v57

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v57, Lbv;->Z:Lbv;

    .line 48
    new-instance v58, Lbv;

    const-string v1, "SINT32_LIST_PACKED"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    move-object/from16 v0, v58

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v58, Lbv;->aa:Lbv;

    .line 49
    new-instance v15, Lbv;

    const-string v1, "SINT64_LIST_PACKED"

    const/16 v2, 0x30

    const/16 v3, 0x30

    move-object v0, v15

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v15, Lbv;->e:Lbv;

    .line 50
    new-instance v12, Lbv;

    const-string v1, "GROUP_LIST"

    const/16 v2, 0x31

    const/16 v3, 0x31

    move-object v0, v12

    move-object/from16 v4, v34

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v12, Lbv;->f:Lbv;

    .line 51
    new-instance v0, Lbv;

    sget-object v63, Lbu;->d:Lbu;

    sget-object v64, Lco;->a:Lco;

    const-string v60, "MAP"

    const/16 v61, 0x32

    const/16 v62, 0x32

    move-object/from16 v59, v0

    invoke-direct/range {v59 .. v64}, Lbv;-><init>(Ljava/lang/String;IILbu;Lco;)V

    sput-object v0, Lbv;->g:Lbv;

    const/16 v1, 0x33

    new-array v1, v1, [Lbv;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v3, 0x1

    aput-object v9, v1, v3

    const/4 v3, 0x2

    aput-object v11, v1, v3

    const/4 v3, 0x3

    aput-object v13, v1, v3

    const/4 v3, 0x4

    aput-object v14, v1, v3

    const/4 v3, 0x5

    aput-object v16, v1, v3

    const/4 v3, 0x6

    aput-object v17, v1, v3

    const/4 v3, 0x7

    aput-object v18, v1, v3

    const/16 v3, 0x8

    aput-object v20, v1, v3

    const/16 v3, 0x9

    aput-object v22, v1, v3

    const/16 v3, 0xa

    aput-object v24, v1, v3

    const/16 v3, 0xb

    aput-object v26, v1, v3

    const/16 v3, 0xc

    aput-object v27, v1, v3

    const/16 v3, 0xd

    aput-object v29, v1, v3

    const/16 v3, 0xe

    aput-object v30, v1, v3

    const/16 v3, 0xf

    aput-object v31, v1, v3

    const/16 v3, 0x10

    aput-object v32, v1, v3

    const/16 v3, 0x11

    aput-object v33, v1, v3

    const/16 v3, 0x12

    aput-object v7, v1, v3

    const/16 v3, 0x13

    aput-object v35, v1, v3

    const/16 v3, 0x14

    aput-object v36, v1, v3

    const/16 v3, 0x15

    aput-object v37, v1, v3

    const/16 v3, 0x16

    aput-object v38, v1, v3

    const/16 v3, 0x17

    aput-object v39, v1, v3

    const/16 v3, 0x18

    aput-object v40, v1, v3

    const/16 v3, 0x19

    aput-object v41, v1, v3

    const/16 v3, 0x1a

    aput-object v42, v1, v3

    const/16 v3, 0x1b

    aput-object v21, v1, v3

    const/16 v3, 0x1c

    aput-object v43, v1, v3

    const/16 v3, 0x1d

    aput-object v25, v1, v3

    const/16 v3, 0x1e

    aput-object v44, v1, v3

    const/16 v3, 0x1f

    aput-object v45, v1, v3

    const/16 v3, 0x20

    aput-object v46, v1, v3

    const/16 v3, 0x21

    aput-object v47, v1, v3

    const/16 v3, 0x22

    aput-object v48, v1, v3

    const/16 v3, 0x23

    aput-object v49, v1, v3

    const/16 v3, 0x24

    aput-object v8, v1, v3

    const/16 v3, 0x25

    aput-object v10, v1, v3

    const/16 v3, 0x26

    aput-object v51, v1, v3

    const/16 v3, 0x27

    aput-object v52, v1, v3

    const/16 v3, 0x28

    aput-object v53, v1, v3

    const/16 v3, 0x29

    aput-object v54, v1, v3

    const/16 v3, 0x2a

    aput-object v55, v1, v3

    const/16 v3, 0x2b

    aput-object v19, v1, v3

    const/16 v3, 0x2c

    aput-object v56, v1, v3

    const/16 v3, 0x2d

    aput-object v28, v1, v3

    const/16 v3, 0x2e

    aput-object v57, v1, v3

    const/16 v3, 0x2f

    aput-object v58, v1, v3

    const/16 v3, 0x30

    aput-object v15, v1, v3

    const/16 v3, 0x31

    aput-object v12, v1, v3

    const/16 v3, 0x32

    aput-object v0, v1, v3

    .line 52
    sput-object v1, Lbv;->ac:[Lbv;

    .line 53
    invoke-static {}, Lbv;->values()[Lbv;

    move-result-object v0

    .line 54
    array-length v1, v0

    new-array v1, v1, [Lbv;

    sput-object v1, Lbv;->ab:[Lbv;

    .line 55
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 56
    sget-object v4, Lbv;->ab:[Lbv;

    iget v5, v3, Lbv;->h:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILbu;Lco;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "id",
            "collection",
            "javaType"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lbv;->h:I

    .line 3
    iput-object p4, p0, Lbv;->i:Lbu;

    .line 4
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p5, Lco;->k:Ljava/lang/Class;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p5, Lco;->k:Ljava/lang/Class;

    .line 7
    :goto_0
    sget-object p0, Lbu;->a:Lbu;

    if-ne p4, p0, :cond_2

    .line 8
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    :cond_2
    return-void
.end method

.method public static values()[Lbv;
    .locals 1

    sget-object v0, Lbv;->ac:[Lbv;

    invoke-virtual {v0}, [Lbv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbv;

    return-object v0
.end method
