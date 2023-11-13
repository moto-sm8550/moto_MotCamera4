.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;


# static fields
.field public static final enum zzbc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

.field public static final synthetic zzcj:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;


# instance fields
.field public final zzck:I


# direct methods
.method public static constructor <clinit>()V
    .locals 168

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v1, "UNKNOWN_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v2, "ON_DEVICE_FACE_DETECT"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v3, "ON_DEVICE_FACE_CREATE"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v4, "ON_DEVICE_FACE_CLOSE"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v5, "ON_DEVICE_FACE_LOAD"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v6, "ON_DEVICE_TEXT_DETECT"

    const/4 v7, 0x5

    const/16 v8, 0xb

    .line 6
    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v7, "ON_DEVICE_TEXT_CREATE"

    const/4 v9, 0x6

    const/16 v10, 0xc

    .line 7
    invoke-direct {v6, v7, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v9, "ON_DEVICE_TEXT_CLOSE"

    const/4 v11, 0x7

    const/16 v12, 0xd

    .line 8
    invoke-direct {v7, v9, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v11, "ON_DEVICE_BARCODE_DETECT"

    const/16 v13, 0x8

    const/16 v14, 0x15

    .line 9
    invoke-direct {v9, v11, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v13, "ON_DEVICE_BARCODE_CREATE"

    const/16 v15, 0x9

    const/16 v14, 0x16

    .line 10
    invoke-direct {v11, v13, v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_BARCODE_CLOSE"

    const/16 v14, 0xa

    const/16 v12, 0x17

    .line 11
    invoke-direct {v13, v15, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_BARCODE_LOAD"

    const/16 v12, 0x18

    .line 12
    invoke-direct {v14, v15, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_IMAGE_LABEL_DETECT"

    const/16 v12, 0x8d

    .line 13
    invoke-direct {v8, v15, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_IMAGE_LABEL_CREATE"

    const/16 v12, 0x8e

    move-object/from16 v16, v8

    const/16 v8, 0xd

    .line 14
    invoke-direct {v10, v15, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_IMAGE_LABEL_CLOSE"

    const/16 v12, 0xe

    move-object/from16 v17, v10

    const/16 v10, 0x8f

    .line 15
    invoke-direct {v8, v15, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_IMAGE_LABEL_LOAD"

    const/16 v10, 0xf

    move-object/from16 v18, v8

    const/16 v8, 0x90

    .line 16
    invoke-direct {v12, v15, v10, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_SMART_REPLY_DETECT"

    const/16 v8, 0x10

    move-object/from16 v19, v12

    const/16 v12, 0x97

    .line 17
    invoke-direct {v10, v15, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_SMART_REPLY_CREATE"

    const/16 v12, 0x11

    move-object/from16 v20, v10

    const/16 v10, 0x98

    .line 18
    invoke-direct {v8, v15, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_SMART_REPLY_CLOSE"

    const/16 v10, 0x12

    move-object/from16 v21, v8

    const/16 v8, 0x99

    .line 19
    invoke-direct {v12, v15, v10, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_SMART_REPLY_BLACKLIST_UPDATE"

    const/16 v8, 0x13

    move-object/from16 v22, v12

    const/16 v12, 0x9a

    .line 20
    invoke-direct {v10, v15, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_LANGUAGE_IDENTIFICATION_DETECT"

    const/16 v12, 0x14

    move-object/from16 v23, v10

    const/16 v10, 0xa1

    .line 21
    invoke-direct {v8, v15, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_LANGUAGE_IDENTIFICATION_CREATE"

    const/16 v10, 0xa2

    move-object/from16 v24, v8

    const/16 v8, 0x15

    .line 22
    invoke-direct {v12, v15, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_LANGUAGE_IDENTIFICATION_LOAD"

    const/16 v10, 0xa4

    move-object/from16 v25, v12

    const/16 v12, 0x16

    .line 23
    invoke-direct {v8, v15, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_LANGUAGE_IDENTIFICATION_CLOSE"

    const/16 v10, 0xa3

    move-object/from16 v26, v8

    const/16 v8, 0x17

    .line 24
    invoke-direct {v12, v15, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v15, "ON_DEVICE_TRANSLATOR_TRANSLATE"

    const/16 v10, 0xab

    move-object/from16 v27, v12

    const/16 v12, 0x18

    .line 25
    invoke-direct {v8, v15, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_TRANSLATOR_CREATE"

    const/16 v15, 0x19

    move-object/from16 v28, v8

    const/16 v8, 0xac

    .line 26
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_TRANSLATOR_LOAD"

    const/16 v15, 0x1a

    move-object/from16 v29, v10

    const/16 v10, 0xad

    .line 27
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_TRANSLATOR_CLOSE"

    const/16 v15, 0x1b

    move-object/from16 v30, v8

    const/16 v8, 0xae

    .line 28
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_TRANSLATOR_DOWNLOAD"

    const/16 v15, 0x1c

    move-object/from16 v31, v10

    const/16 v10, 0xaf

    .line 29
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_ANNOTATE"

    const/16 v15, 0x1d

    move-object/from16 v32, v8

    const/16 v8, 0xf1

    .line 30
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_CREATE"

    const/16 v15, 0x1e

    move-object/from16 v33, v10

    const/16 v10, 0xf2

    .line 31
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_LOAD"

    const/16 v15, 0x1f

    move-object/from16 v34, v8

    const/16 v8, 0xf3

    .line 32
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_CLOSE"

    const/16 v15, 0x20

    move-object/from16 v35, v10

    const/16 v10, 0xf4

    .line 33
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_ENTITY_EXTRACTION_DOWNLOAD"

    const/16 v15, 0x21

    move-object/from16 v36, v8

    const/16 v8, 0xf5

    .line 34
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_OBJECT_CREATE"

    const/16 v15, 0x22

    move-object/from16 v37, v10

    const/16 v10, 0xbf

    .line 35
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_OBJECT_LOAD"

    const/16 v15, 0x23

    move-object/from16 v38, v8

    const/16 v8, 0xc0

    .line 36
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_OBJECT_INFERENCE"

    const/16 v15, 0x24

    move-object/from16 v39, v10

    const/16 v10, 0xc1

    .line 37
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_OBJECT_CLOSE"

    const/16 v15, 0x25

    move-object/from16 v40, v8

    const/16 v8, 0xc2

    .line 38
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_DI_CREATE"

    const/16 v15, 0x26

    move-object/from16 v41, v10

    const/16 v10, 0x137

    .line 39
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_DI_LOAD"

    const/16 v15, 0x27

    move-object/from16 v42, v8

    const/16 v8, 0x138

    .line 40
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_DI_DOWNLOAD"

    const/16 v15, 0x28

    move-object/from16 v43, v10

    const/16 v10, 0x139

    .line 41
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_DI_RECOGNIZE"

    const/16 v15, 0x29

    move-object/from16 v44, v8

    const/16 v8, 0x13a

    .line 42
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_DI_CLOSE"

    const/16 v15, 0x2a

    move-object/from16 v45, v10

    const/16 v10, 0x13b

    .line 43
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_POSE_CREATE"

    const/16 v15, 0x2b

    move-object/from16 v46, v8

    const/16 v8, 0x141

    .line 44
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_POSE_LOAD"

    const/16 v15, 0x2c

    move-object/from16 v47, v10

    const/16 v10, 0x142

    .line 45
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_POSE_INFERENCE"

    const/16 v15, 0x2d

    move-object/from16 v48, v8

    const/16 v8, 0x143

    .line 46
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_POSE_CLOSE"

    const/16 v15, 0x2e

    move-object/from16 v49, v10

    const/16 v10, 0x144

    .line 47
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_POSE_PRELOAD"

    const/16 v15, 0x2f

    move-object/from16 v50, v8

    const/16 v8, 0x145

    .line 48
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_SEGMENTATION_CREATE"

    const/16 v15, 0x30

    move-object/from16 v51, v10

    const/16 v10, 0x14b

    .line 49
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_SEGMENTATION_LOAD"

    const/16 v15, 0x31

    move-object/from16 v52, v8

    const/16 v8, 0x14c

    .line 50
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_SEGMENTATION_INFERENCE"

    const/16 v15, 0x32

    move-object/from16 v53, v10

    const/16 v10, 0x14d

    .line 51
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ON_DEVICE_SEGMENTATION_CLOSE"

    const/16 v15, 0x33

    move-object/from16 v54, v8

    const/16 v8, 0x14e

    .line 52
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_OBJECT_CREATE"

    const/16 v15, 0x34

    move-object/from16 v55, v10

    const/16 v10, 0x155

    .line 53
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_OBJECT_LOAD"

    const/16 v15, 0x35

    move-object/from16 v56, v8

    const/16 v8, 0x156

    .line 54
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_OBJECT_INFERENCE"

    const/16 v15, 0x36

    move-object/from16 v57, v10

    const/16 v10, 0x157

    .line 55
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_OBJECT_CLOSE"

    const/16 v15, 0x37

    move-object/from16 v58, v8

    const/16 v8, 0x158

    .line 56
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_IMAGE_LABEL_CREATE"

    const/16 v15, 0x38

    move-object/from16 v59, v10

    const/16 v10, 0x15f

    .line 57
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_IMAGE_LABEL_LOAD"

    const/16 v15, 0x39

    move-object/from16 v60, v8

    const/16 v8, 0x160

    .line 58
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_IMAGE_LABEL_DETECT"

    const/16 v15, 0x3a

    move-object/from16 v61, v10

    const/16 v10, 0x161

    .line 59
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_IMAGE_LABEL_CLOSE"

    const/16 v15, 0x3b

    move-object/from16 v62, v8

    const/16 v8, 0x162

    .line 60
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_FACE_DETECT"

    const/16 v15, 0x3c

    move-object/from16 v63, v10

    const/16 v10, 0x1f

    .line 61
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_FACE_CREATE"

    const/16 v15, 0x3d

    move-object/from16 v64, v8

    const/16 v8, 0x20

    .line 62
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_FACE_CLOSE"

    const/16 v15, 0x3e

    move-object/from16 v65, v10

    const/16 v10, 0x21

    .line 63
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_CROP_HINTS_CREATE"

    const/16 v15, 0x3f

    move-object/from16 v66, v8

    const/16 v8, 0x29

    .line 64
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_CROP_HINTS_DETECT"

    const/16 v15, 0x40

    move-object/from16 v67, v10

    const/16 v10, 0x2a

    .line 65
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_CROP_HINTS_CLOSE"

    const/16 v15, 0x41

    move-object/from16 v68, v8

    const/16 v8, 0x2b

    .line 66
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_DOCUMENT_TEXT_CREATE"

    const/16 v15, 0x42

    move-object/from16 v69, v10

    const/16 v10, 0x33

    .line 67
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_DOCUMENT_TEXT_DETECT"

    const/16 v15, 0x43

    move-object/from16 v70, v8

    const/16 v8, 0x34

    .line 68
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_DOCUMENT_TEXT_CLOSE"

    const/16 v15, 0x44

    move-object/from16 v71, v10

    const/16 v10, 0x35

    .line 69
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_IMAGE_PROPERTIES_CREATE"

    const/16 v15, 0x45

    move-object/from16 v72, v8

    const/16 v8, 0x3d

    .line 70
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_IMAGE_PROPERTIES_DETECT"

    const/16 v15, 0x46

    move-object/from16 v73, v10

    const/16 v10, 0x3e

    .line 71
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_IMAGE_PROPERTIES_CLOSE"

    const/16 v15, 0x47

    move-object/from16 v74, v8

    const/16 v8, 0x3f

    .line 72
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_IMAGE_LABEL_CREATE"

    const/16 v15, 0x48

    move-object/from16 v75, v10

    const/16 v10, 0x47

    .line 73
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_IMAGE_LABEL_DETECT"

    const/16 v15, 0x49

    move-object/from16 v76, v8

    const/16 v8, 0x48

    .line 74
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_IMAGE_LABEL_CLOSE"

    const/16 v15, 0x4a

    move-object/from16 v77, v10

    const/16 v10, 0x49

    .line 75
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_LANDMARK_CREATE"

    const/16 v15, 0x4b

    move-object/from16 v78, v8

    const/16 v8, 0x51

    .line 76
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_LANDMARK_DETECT"

    const/16 v15, 0x4c

    move-object/from16 v79, v10

    const/16 v10, 0x52

    .line 77
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_LANDMARK_CLOSE"

    const/16 v15, 0x4d

    move-object/from16 v80, v8

    const/16 v8, 0x53

    .line 78
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_LOGO_CREATE"

    const/16 v15, 0x4e

    move-object/from16 v81, v10

    const/16 v10, 0x5b

    .line 79
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_LOGO_DETECT"

    const/16 v15, 0x4f

    move-object/from16 v82, v8

    const/16 v8, 0x5c

    .line 80
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_LOGO_CLOSE"

    const/16 v15, 0x50

    move-object/from16 v83, v10

    const/16 v10, 0x5d

    .line 81
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_SAFE_SEARCH_CREATE"

    const/16 v15, 0x51

    move-object/from16 v84, v8

    const/16 v8, 0x6f

    .line 82
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_SAFE_SEARCH_DETECT"

    const/16 v15, 0x52

    move-object/from16 v85, v10

    const/16 v10, 0x70

    .line 83
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_SAFE_SEARCH_CLOSE"

    const/16 v15, 0x53

    move-object/from16 v86, v8

    const/16 v8, 0x71

    .line 84
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_TEXT_CREATE"

    const/16 v15, 0x54

    move-object/from16 v87, v10

    const/16 v10, 0x79

    .line 85
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_TEXT_DETECT"

    const/16 v15, 0x55

    move-object/from16 v88, v8

    const/16 v8, 0x7a

    .line 86
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_TEXT_CLOSE"

    const/16 v15, 0x56

    move-object/from16 v89, v10

    const/16 v10, 0x7b

    .line 87
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_WEB_SEARCH_CREATE"

    const/16 v15, 0x57

    move-object/from16 v90, v8

    const/16 v8, 0x83

    .line 88
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_WEB_SEARCH_DETECT"

    const/16 v15, 0x58

    move-object/from16 v91, v10

    const/16 v10, 0x84

    .line 89
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CLOUD_WEB_SEARCH_CLOSE"

    const/16 v15, 0x59

    move-object/from16 v92, v8

    const/16 v8, 0x85

    .line 90
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_MODEL_RUN"

    const/16 v15, 0x5a

    move-object/from16 v93, v10

    const/16 v10, 0x66

    .line 91
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_MODEL_CREATE"

    const/16 v15, 0x5b

    move-object/from16 v94, v8

    const/16 v8, 0x67

    .line 92
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_MODEL_CLOSE"

    const/16 v15, 0x5c

    move-object/from16 v95, v10

    const/16 v10, 0x68

    .line 93
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CUSTOM_MODEL_LOAD"

    const/16 v15, 0x5d

    move-object/from16 v96, v8

    const/16 v8, 0x69

    .line 94
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AUTOML_IMAGE_LABELING_RUN"

    const/16 v15, 0x5e

    move-object/from16 v97, v10

    const/16 v10, 0xb5

    .line 95
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AUTOML_IMAGE_LABELING_CREATE"

    const/16 v15, 0x5f

    move-object/from16 v98, v8

    const/16 v8, 0xb6

    .line 96
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AUTOML_IMAGE_LABELING_CLOSE"

    const/16 v15, 0x60

    move-object/from16 v99, v10

    const/16 v10, 0xb7

    .line 97
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AUTOML_IMAGE_LABELING_LOAD"

    const/16 v15, 0x61

    move-object/from16 v100, v8

    const/16 v8, 0xb8

    .line 98
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "MODEL_DOWNLOAD"

    const/16 v15, 0x62

    move-object/from16 v101, v10

    const/16 v10, 0x64

    .line 99
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "MODEL_UPDATE"

    const/16 v15, 0x63

    move-object/from16 v102, v8

    const/16 v8, 0x65

    .line 100
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "REMOTE_MODEL_IS_DOWNLOADED"

    const/16 v15, 0x64

    move-object/from16 v103, v10

    const/16 v10, 0xfb

    .line 101
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "REMOTE_MODEL_DELETE_ON_DEVICE"

    const/16 v15, 0x65

    move-object/from16 v104, v8

    const/16 v8, 0xfc

    .line 102
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ACCELERATION_ANALYTICS"

    const/16 v15, 0x66

    move-object/from16 v105, v10

    const/16 v10, 0x104

    .line 103
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "PIPELINE_ACCELERATION_ANALYTICS"

    const/16 v15, 0x67

    move-object/from16 v106, v8

    const/16 v8, 0x105

    .line 104
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_AUTO_ML_IMAGE_LABELING_INFERENCE"

    const/16 v15, 0x68

    move-object/from16 v107, v10

    const/16 v10, 0xc8

    .line 105
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_CUSTOM_MODEL_INFERENCE"

    const/16 v15, 0x69

    move-object/from16 v108, v8

    const/16 v8, 0xc9

    .line 106
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_ON_DEVICE_BARCODE_DETECTION"

    const/16 v15, 0x6a

    move-object/from16 v109, v10

    const/16 v10, 0xca

    .line 107
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzbc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_ON_DEVICE_FACE_DETECTION"

    const/16 v15, 0x6b

    move-object/from16 v110, v8

    const/16 v8, 0xcb

    .line 108
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION"

    const/16 v15, 0x6c

    move-object/from16 v111, v10

    const/16 v10, 0xcc

    .line 109
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_ON_DEVICE_OBJECT_INFERENCE"

    const/16 v15, 0x6d

    move-object/from16 v112, v8

    const/16 v8, 0xcd

    .line 110
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_ON_DEVICE_TEXT_DETECTION"

    const/16 v15, 0x6e

    move-object/from16 v113, v10

    const/16 v10, 0xce

    .line 111
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_ON_DEVICE_POSE_DETECTION"

    const/16 v15, 0x6f

    move-object/from16 v114, v8

    const/16 v8, 0xcf

    .line 112
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_ON_DEVICE_SEGMENTATION"

    const/16 v15, 0x70

    move-object/from16 v115, v10

    const/16 v10, 0xd0

    .line 113
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_CUSTOM_OBJECT_INFERENCE"

    const/16 v15, 0x71

    move-object/from16 v116, v8

    const/16 v8, 0xd1

    .line 114
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "AGGREGATED_CUSTOM_IMAGE_LABEL_DETECTION"

    const/16 v15, 0x72

    move-object/from16 v117, v10

    const/16 v10, 0xd2

    .line 115
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "REMOTE_CONFIG_FETCH"

    const/16 v15, 0x73

    move-object/from16 v118, v8

    const/16 v8, 0x10f

    .line 116
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "REMOTE_CONFIG_ACTIVATE"

    const/16 v15, 0x74

    move-object/from16 v119, v10

    const/16 v10, 0x110

    .line 117
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "REMOTE_CONFIG_LOAD"

    const/16 v15, 0x75

    move-object/from16 v120, v8

    const/16 v8, 0x111

    .line 118
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "REMOTE_CONFIG_FRC_FETCH"

    const/16 v15, 0x76

    move-object/from16 v121, v10

    const/16 v10, 0x119

    .line 119
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "INSTALLATION_ID_INIT"

    const/16 v15, 0x77

    move-object/from16 v122, v8

    const/16 v8, 0x123

    .line 120
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "INSTALLATION_ID_REGISTER_NEW_ID"

    const/16 v15, 0x78

    move-object/from16 v123, v10

    const/16 v10, 0x124

    .line 121
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "INSTALLATION_ID_REFRESH_TEMPORARY_TOKEN"

    const/16 v15, 0x79

    move-object/from16 v124, v8

    const/16 v8, 0x125

    .line 122
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "INSTALLATION_ID_FIS_CREATE_INSTALLATION"

    const/16 v15, 0x7a

    move-object/from16 v125, v10

    const/16 v10, 0x12d

    .line 123
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN"

    const/16 v15, 0x7b

    move-object/from16 v126, v8

    const/16 v8, 0x12e

    .line 124
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "INPUT_IMAGE_CONSTRUCTION"

    const/16 v15, 0x7c

    move-object/from16 v127, v10

    const/16 v10, 0x169

    .line 125
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "HANDLE_LEAKED"

    const/16 v15, 0x7d

    move-object/from16 v128, v8

    const/16 v8, 0x173

    .line 126
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CAMERA_SOURCE"

    const/16 v15, 0x7e

    move-object/from16 v129, v10

    const/16 v10, 0x17d

    .line 127
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_IMAGE_LABELING"

    const/16 v15, 0x7f

    move-object/from16 v130, v8

    const/16 v8, 0x187

    .line 128
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_LANGUAGE_ID"

    const/16 v15, 0x80

    move-object/from16 v131, v10

    const/16 v10, 0x191

    .line 129
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_LANGUAGE_ID_CREATE"

    const/16 v15, 0x81

    move-object/from16 v132, v8

    const/16 v8, 0x192

    .line 130
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_LANGUAGE_ID_INIT"

    const/16 v15, 0x82

    move-object/from16 v133, v10

    const/16 v10, 0x193

    .line 131
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_LANGUAGE_ID_INFERENCE"

    const/16 v15, 0x83

    move-object/from16 v134, v8

    const/16 v8, 0x194

    .line 132
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_LANGUAGE_ID_RELEASE"

    const/16 v15, 0x84

    move-object/from16 v135, v10

    const/16 v10, 0x195

    .line 133
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_NLCLASSIFIER"

    const/16 v15, 0x85

    move-object/from16 v136, v8

    const/16 v8, 0x19b

    .line 134
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_NLCLASSIFIER_CREATE"

    const/16 v15, 0x86

    move-object/from16 v137, v10

    const/16 v10, 0x19c

    .line 135
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_NLCLASSIFIER_INIT"

    const/16 v15, 0x87

    move-object/from16 v138, v8

    const/16 v8, 0x19d

    .line 136
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_NLCLASSIFIER_INFERENCE"

    const/16 v15, 0x88

    move-object/from16 v139, v10

    const/16 v10, 0x19e

    .line 137
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_NLCLASSIFIER_RELEASE"

    const/16 v15, 0x89

    move-object/from16 v140, v8

    const/16 v8, 0x19f

    .line 138
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "NLCLASSIFIER_CLIENT_LIBRARY"

    const/16 v15, 0x8a

    move-object/from16 v141, v10

    const/16 v10, 0x1a5

    .line 139
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "NLCLASSIFIER_CLIENT_LIBRARY_CREATE"

    const/16 v15, 0x8b

    move-object/from16 v142, v8

    const/16 v8, 0x1a6

    .line 140
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "NLCLASSIFIER_CLIENT_LIBRARY_CLASSIFY"

    const/16 v15, 0x8c

    move-object/from16 v143, v10

    const/16 v10, 0x1a7

    .line 141
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "NLCLASSIFIER_CLIENT_LIBRARY_CLOSE"

    const/16 v15, 0x1a8

    move-object/from16 v144, v8

    const/16 v8, 0x8d

    .line 142
    invoke-direct {v10, v12, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_FACE_DETECTION"

    const/16 v15, 0x1b9

    move-object/from16 v145, v10

    const/16 v10, 0x8e

    .line 143
    invoke-direct {v8, v12, v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_FACE_DETECTION_CREATE"

    const/16 v15, 0x1cd

    move-object/from16 v146, v8

    const/16 v8, 0x8f

    .line 144
    invoke-direct {v10, v12, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_FACE_DETECTION_INIT"

    const/16 v15, 0x1ce

    move-object/from16 v147, v10

    const/16 v10, 0x90

    .line 145
    invoke-direct {v8, v12, v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_FACE_DETECTION_INFERENCE"

    const/16 v15, 0x91

    move-object/from16 v148, v8

    const/16 v8, 0x1cf

    .line 146
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_FACE_DETECTION_RELEASE"

    const/16 v15, 0x92

    move-object/from16 v149, v10

    const/16 v10, 0x1d0

    .line 147
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ACCELERATION_ALLOWLIST_GET"

    const/16 v15, 0x93

    move-object/from16 v150, v8

    const/16 v8, 0x1af

    .line 148
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ACCELERATION_ALLOWLIST_FETCH"

    const/16 v15, 0x94

    move-object/from16 v151, v10

    const/16 v10, 0x1b0

    .line 149
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "ODML_IMAGE"

    const/16 v15, 0x95

    move-object/from16 v152, v8

    const/16 v8, 0x1ba

    .line 150
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_BARCODE_DETECTION"

    const/16 v15, 0x96

    move-object/from16 v153, v10

    const/16 v10, 0x1bb

    .line 151
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_BARCODE_DETECTION_CREATE"

    const/16 v15, 0x1d7

    move-object/from16 v154, v8

    const/16 v8, 0x97

    .line 152
    invoke-direct {v10, v12, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_BARCODE_DETECTION_INIT"

    const/16 v15, 0x1d8

    move-object/from16 v155, v10

    const/16 v10, 0x98

    .line 153
    invoke-direct {v8, v12, v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_BARCODE_DETECTION_INFERENCE"

    const/16 v15, 0x1d9

    move-object/from16 v156, v8

    const/16 v8, 0x99

    .line 154
    invoke-direct {v10, v12, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_BARCODE_DETECTION_RELEASE"

    const/16 v15, 0x1da

    move-object/from16 v157, v10

    const/16 v10, 0x9a

    .line 155
    invoke-direct {v8, v12, v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "TOXICITY_DETECTION_CREATE_EVENT"

    const/16 v15, 0x9b

    move-object/from16 v158, v8

    const/16 v8, 0x1c3

    .line 156
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "TOXICITY_DETECTION_LOAD_EVENT"

    const/16 v15, 0x9c

    move-object/from16 v159, v10

    const/16 v10, 0x1c4

    .line 157
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "TOXICITY_DETECTION_INFERENCE_EVENT"

    const/16 v15, 0x9d

    move-object/from16 v160, v8

    const/16 v8, 0x1c5

    .line 158
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "TOXICITY_DETECTION_DOWNLOAD_EVENT"

    const/16 v15, 0x9e

    move-object/from16 v161, v10

    const/16 v10, 0x1c6

    .line 159
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_CUSTOM_IMAGE_LABELING_CREATE"

    const/16 v15, 0x9f

    move-object/from16 v162, v8

    const/16 v8, 0x1e1

    .line 160
    invoke-direct {v10, v12, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_CUSTOM_IMAGE_LABELING_INIT"

    const/16 v15, 0xa0

    move-object/from16 v163, v10

    const/16 v10, 0x1e2

    .line 161
    invoke-direct {v8, v12, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_CUSTOM_IMAGE_LABELING_INFERENCE"

    const/16 v15, 0x1e3

    move-object/from16 v164, v8

    const/16 v8, 0xa1

    .line 162
    invoke-direct {v10, v12, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "OPTIONAL_MODULE_CUSTOM_IMAGE_LABELING_RELEASE"

    const/16 v15, 0x1e4

    move-object/from16 v165, v10

    const/16 v10, 0xa2

    .line 163
    invoke-direct {v8, v12, v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CODE_SCANNER_SCAN_API"

    const/16 v15, 0x1eb

    move-object/from16 v166, v8

    const/16 v8, 0xa3

    .line 164
    invoke-direct {v10, v12, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const-string v12, "CODE_SCANNER_OPTIONAL_MODULE"

    const/16 v15, 0x1ec

    move-object/from16 v167, v10

    const/16 v10, 0xa4

    .line 165
    invoke-direct {v8, v12, v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xa5

    new-array v10, v10, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    const/4 v12, 0x0

    aput-object v0, v10, v12

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v9, v10, v0

    const/16 v0, 0x9

    aput-object v11, v10, v0

    const/16 v0, 0xa

    aput-object v13, v10, v0

    const/16 v0, 0xb

    aput-object v14, v10, v0

    const/16 v0, 0xc

    aput-object v16, v10, v0

    const/16 v0, 0xd

    aput-object v17, v10, v0

    const/16 v0, 0xe

    aput-object v18, v10, v0

    const/16 v0, 0xf

    aput-object v19, v10, v0

    const/16 v0, 0x10

    aput-object v20, v10, v0

    const/16 v0, 0x11

    aput-object v21, v10, v0

    const/16 v0, 0x12

    aput-object v22, v10, v0

    const/16 v0, 0x13

    aput-object v23, v10, v0

    const/16 v0, 0x14

    aput-object v24, v10, v0

    const/16 v0, 0x15

    aput-object v25, v10, v0

    const/16 v0, 0x16

    aput-object v26, v10, v0

    const/16 v0, 0x17

    aput-object v27, v10, v0

    const/16 v0, 0x18

    aput-object v28, v10, v0

    const/16 v0, 0x19

    aput-object v29, v10, v0

    const/16 v0, 0x1a

    aput-object v30, v10, v0

    const/16 v0, 0x1b

    aput-object v31, v10, v0

    const/16 v0, 0x1c

    aput-object v32, v10, v0

    const/16 v0, 0x1d

    aput-object v33, v10, v0

    const/16 v0, 0x1e

    aput-object v34, v10, v0

    const/16 v0, 0x1f

    aput-object v35, v10, v0

    const/16 v0, 0x20

    aput-object v36, v10, v0

    const/16 v0, 0x21

    aput-object v37, v10, v0

    const/16 v0, 0x22

    aput-object v38, v10, v0

    const/16 v0, 0x23

    aput-object v39, v10, v0

    const/16 v0, 0x24

    aput-object v40, v10, v0

    const/16 v0, 0x25

    aput-object v41, v10, v0

    const/16 v0, 0x26

    aput-object v42, v10, v0

    const/16 v0, 0x27

    aput-object v43, v10, v0

    const/16 v0, 0x28

    aput-object v44, v10, v0

    const/16 v0, 0x29

    aput-object v45, v10, v0

    const/16 v0, 0x2a

    aput-object v46, v10, v0

    const/16 v0, 0x2b

    aput-object v47, v10, v0

    const/16 v0, 0x2c

    aput-object v48, v10, v0

    const/16 v0, 0x2d

    aput-object v49, v10, v0

    const/16 v0, 0x2e

    aput-object v50, v10, v0

    const/16 v0, 0x2f

    aput-object v51, v10, v0

    const/16 v0, 0x30

    aput-object v52, v10, v0

    const/16 v0, 0x31

    aput-object v53, v10, v0

    const/16 v0, 0x32

    aput-object v54, v10, v0

    const/16 v0, 0x33

    aput-object v55, v10, v0

    const/16 v0, 0x34

    aput-object v56, v10, v0

    const/16 v0, 0x35

    aput-object v57, v10, v0

    const/16 v0, 0x36

    aput-object v58, v10, v0

    const/16 v0, 0x37

    aput-object v59, v10, v0

    const/16 v0, 0x38

    aput-object v60, v10, v0

    const/16 v0, 0x39

    aput-object v61, v10, v0

    const/16 v0, 0x3a

    aput-object v62, v10, v0

    const/16 v0, 0x3b

    aput-object v63, v10, v0

    const/16 v0, 0x3c

    aput-object v64, v10, v0

    const/16 v0, 0x3d

    aput-object v65, v10, v0

    const/16 v0, 0x3e

    aput-object v66, v10, v0

    const/16 v0, 0x3f

    aput-object v67, v10, v0

    const/16 v0, 0x40

    aput-object v68, v10, v0

    const/16 v0, 0x41

    aput-object v69, v10, v0

    const/16 v0, 0x42

    aput-object v70, v10, v0

    const/16 v0, 0x43

    aput-object v71, v10, v0

    const/16 v0, 0x44

    aput-object v72, v10, v0

    const/16 v0, 0x45

    aput-object v73, v10, v0

    const/16 v0, 0x46

    aput-object v74, v10, v0

    const/16 v0, 0x47

    aput-object v75, v10, v0

    const/16 v0, 0x48

    aput-object v76, v10, v0

    const/16 v0, 0x49

    aput-object v77, v10, v0

    const/16 v0, 0x4a

    aput-object v78, v10, v0

    const/16 v0, 0x4b

    aput-object v79, v10, v0

    const/16 v0, 0x4c

    aput-object v80, v10, v0

    const/16 v0, 0x4d

    aput-object v81, v10, v0

    const/16 v0, 0x4e

    aput-object v82, v10, v0

    const/16 v0, 0x4f

    aput-object v83, v10, v0

    const/16 v0, 0x50

    aput-object v84, v10, v0

    const/16 v0, 0x51

    aput-object v85, v10, v0

    const/16 v0, 0x52

    aput-object v86, v10, v0

    const/16 v0, 0x53

    aput-object v87, v10, v0

    const/16 v0, 0x54

    aput-object v88, v10, v0

    const/16 v0, 0x55

    aput-object v89, v10, v0

    const/16 v0, 0x56

    aput-object v90, v10, v0

    const/16 v0, 0x57

    aput-object v91, v10, v0

    const/16 v0, 0x58

    aput-object v92, v10, v0

    const/16 v0, 0x59

    aput-object v93, v10, v0

    const/16 v0, 0x5a

    aput-object v94, v10, v0

    const/16 v0, 0x5b

    aput-object v95, v10, v0

    const/16 v0, 0x5c

    aput-object v96, v10, v0

    const/16 v0, 0x5d

    aput-object v97, v10, v0

    const/16 v0, 0x5e

    aput-object v98, v10, v0

    const/16 v0, 0x5f

    aput-object v99, v10, v0

    const/16 v0, 0x60

    aput-object v100, v10, v0

    const/16 v0, 0x61

    aput-object v101, v10, v0

    const/16 v0, 0x62

    aput-object v102, v10, v0

    const/16 v0, 0x63

    aput-object v103, v10, v0

    const/16 v0, 0x64

    aput-object v104, v10, v0

    const/16 v0, 0x65

    aput-object v105, v10, v0

    const/16 v0, 0x66

    aput-object v106, v10, v0

    const/16 v0, 0x67

    aput-object v107, v10, v0

    const/16 v0, 0x68

    aput-object v108, v10, v0

    const/16 v0, 0x69

    aput-object v109, v10, v0

    const/16 v0, 0x6a

    aput-object v110, v10, v0

    const/16 v0, 0x6b

    aput-object v111, v10, v0

    const/16 v0, 0x6c

    aput-object v112, v10, v0

    const/16 v0, 0x6d

    aput-object v113, v10, v0

    const/16 v0, 0x6e

    aput-object v114, v10, v0

    const/16 v0, 0x6f

    aput-object v115, v10, v0

    const/16 v0, 0x70

    aput-object v116, v10, v0

    const/16 v0, 0x71

    aput-object v117, v10, v0

    const/16 v0, 0x72

    aput-object v118, v10, v0

    const/16 v0, 0x73

    aput-object v119, v10, v0

    const/16 v0, 0x74

    aput-object v120, v10, v0

    const/16 v0, 0x75

    aput-object v121, v10, v0

    const/16 v0, 0x76

    aput-object v122, v10, v0

    const/16 v0, 0x77

    aput-object v123, v10, v0

    const/16 v0, 0x78

    aput-object v124, v10, v0

    const/16 v0, 0x79

    aput-object v125, v10, v0

    const/16 v0, 0x7a

    aput-object v126, v10, v0

    const/16 v0, 0x7b

    aput-object v127, v10, v0

    const/16 v0, 0x7c

    aput-object v128, v10, v0

    const/16 v0, 0x7d

    aput-object v129, v10, v0

    const/16 v0, 0x7e

    aput-object v130, v10, v0

    const/16 v0, 0x7f

    aput-object v131, v10, v0

    const/16 v0, 0x80

    aput-object v132, v10, v0

    const/16 v0, 0x81

    aput-object v133, v10, v0

    const/16 v0, 0x82

    aput-object v134, v10, v0

    const/16 v0, 0x83

    aput-object v135, v10, v0

    const/16 v0, 0x84

    aput-object v136, v10, v0

    const/16 v0, 0x85

    aput-object v137, v10, v0

    const/16 v0, 0x86

    aput-object v138, v10, v0

    const/16 v0, 0x87

    aput-object v139, v10, v0

    const/16 v0, 0x88

    aput-object v140, v10, v0

    const/16 v0, 0x89

    aput-object v141, v10, v0

    const/16 v0, 0x8a

    aput-object v142, v10, v0

    const/16 v0, 0x8b

    aput-object v143, v10, v0

    const/16 v0, 0x8c

    aput-object v144, v10, v0

    const/16 v0, 0x8d

    aput-object v145, v10, v0

    const/16 v0, 0x8e

    aput-object v146, v10, v0

    const/16 v0, 0x8f

    aput-object v147, v10, v0

    const/16 v0, 0x90

    aput-object v148, v10, v0

    const/16 v0, 0x91

    aput-object v149, v10, v0

    const/16 v0, 0x92

    aput-object v150, v10, v0

    const/16 v0, 0x93

    aput-object v151, v10, v0

    const/16 v0, 0x94

    aput-object v152, v10, v0

    const/16 v0, 0x95

    aput-object v153, v10, v0

    const/16 v0, 0x96

    aput-object v154, v10, v0

    const/16 v0, 0x97

    aput-object v155, v10, v0

    const/16 v0, 0x98

    aput-object v156, v10, v0

    const/16 v0, 0x99

    aput-object v157, v10, v0

    const/16 v0, 0x9a

    aput-object v158, v10, v0

    const/16 v0, 0x9b

    aput-object v159, v10, v0

    const/16 v0, 0x9c

    aput-object v160, v10, v0

    const/16 v0, 0x9d

    aput-object v161, v10, v0

    const/16 v0, 0x9e

    aput-object v162, v10, v0

    const/16 v0, 0x9f

    aput-object v163, v10, v0

    const/16 v0, 0xa0

    aput-object v164, v10, v0

    const/16 v0, 0xa1

    aput-object v165, v10, v0

    const/16 v0, 0xa2

    aput-object v166, v10, v0

    const/16 v0, 0xa3

    aput-object v167, v10, v0

    const/16 v0, 0xa4

    aput-object v8, v10, v0

    sput-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzcj:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzck:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzcj:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzck:I

    return p0
.end method
