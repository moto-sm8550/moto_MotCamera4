.class public final Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "GsonUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureRecordTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public final mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x8

    const-string v6, "expecting object: "

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto/16 :goto_10

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 4
    invoke-static {v6}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>()V

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_74

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x1d

    const/16 v10, 0x1c

    const/16 v11, 0x1b

    const/16 v12, 0x1a

    const/16 v13, 0x19

    const/16 v14, 0x18

    const/16 v15, 0x17

    const/16 v16, 0x16

    const/16 v17, 0x15

    const/16 v18, 0x14

    const/16 v19, 0x13

    const/16 v20, 0x12

    const/16 v21, 0x1f

    const/16 v22, 0x20

    const/16 v23, 0x11

    const/16 v24, -0x1

    const/16 v25, 0x5

    const/16 v26, 0x3

    const/16 v27, 0xc

    const/16 v28, 0xd

    const/16 v29, 0xe

    const/16 v30, 0xf

    const/16 v31, 0x10

    const/16 v32, 0xb

    const/16 v33, 0x0

    const/16 v34, 0xa

    const/16 v35, 0x9

    const/16 v36, 0x7

    const/16 v37, 0x6

    const/16 v38, 0x4

    const/16 v39, 0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "is_watermark_ts_enabled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_1

    :cond_2
    move/from16 v9, v22

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "media_file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_1

    :cond_3
    move/from16 v9, v21

    goto/16 :goto_2

    :sswitch_2
    const-string v8, "scn_mod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v9, 0x1e

    goto/16 :goto_2

    :sswitch_3
    const-string v8, "is_bg_proc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "rec_ext_info"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_1

    :cond_5
    move v9, v10

    goto/16 :goto_2

    :sswitch_5
    const-string v8, "imaging_model_aux_data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_1

    :cond_6
    move v9, v11

    goto/16 :goto_2

    :sswitch_6
    const-string v8, "cam_fac_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto/16 :goto_1

    :cond_7
    move v9, v12

    goto/16 :goto_2

    :sswitch_7
    const-string/jumbo v8, "ultra_wide_front"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_1

    :cond_8
    move v9, v13

    goto/16 :goto_2

    :sswitch_8
    const-string v8, "ext_bfr_done"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_1

    :cond_9
    move v9, v14

    goto/16 :goto_2

    :sswitch_9
    const-string v8, "inst_typ"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto/16 :goto_1

    :cond_a
    move v9, v15

    goto/16 :goto_2

    :sswitch_a
    const-string v8, "cap_mod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_1

    :cond_b
    move/from16 v9, v16

    goto/16 :goto_2

    :sswitch_b
    const-string v8, "cam_typ"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_1

    :cond_c
    move/from16 v9, v17

    goto/16 :goto_2

    :sswitch_c
    const-string v8, "gps_loc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_1

    :cond_d
    move/from16 v9, v18

    goto/16 :goto_2

    :sswitch_d
    const-string v8, "reproc_typ"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_1

    :cond_e
    move/from16 v9, v19

    goto/16 :goto_2

    :sswitch_e
    const-string v8, "orien"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_1

    :cond_f
    move/from16 v9, v20

    goto/16 :goto_2

    :sswitch_f
    const-string v8, "segm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_1

    :cond_10
    move/from16 v9, v23

    goto/16 :goto_2

    :sswitch_10
    const-string v8, "raw"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_1

    :cond_11
    move/from16 v9, v31

    goto/16 :goto_2

    :sswitch_11
    const-string v8, "cap_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto/16 :goto_1

    :cond_12
    move/from16 v9, v30

    goto/16 :goto_2

    :sswitch_12
    const-string/jumbo v8, "setting_map"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto/16 :goto_1

    :cond_13
    move/from16 v9, v29

    goto/16 :goto_2

    :sswitch_13
    const-string v8, "is_watermark_enabled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto/16 :goto_1

    :cond_14
    move/from16 v9, v28

    goto/16 :goto_2

    :sswitch_14
    const-string v8, "play_shutter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto/16 :goto_1

    :cond_15
    move/from16 v9, v27

    goto/16 :goto_2

    :sswitch_15
    const-string v8, "anly_log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto/16 :goto_1

    :cond_16
    move/from16 v9, v32

    goto/16 :goto_2

    :sswitch_16
    const-string/jumbo v8, "ses_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    goto/16 :goto_1

    :cond_17
    move/from16 v9, v34

    goto/16 :goto_2

    :sswitch_17
    const-string/jumbo v8, "seq_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    goto/16 :goto_1

    :cond_18
    move/from16 v9, v35

    goto/16 :goto_2

    :sswitch_18
    const-string v8, "meta_data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    goto/16 :goto_1

    :cond_19
    move v9, v5

    goto/16 :goto_2

    :sswitch_19
    const-string v8, "priority"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    goto/16 :goto_1

    :cond_1a
    move/from16 v9, v36

    goto/16 :goto_2

    :sswitch_1a
    const-string v8, "file_name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_1

    :cond_1b
    move/from16 v9, v37

    goto :goto_2

    :sswitch_1b
    const-string v8, "elaps_intr_str"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    goto :goto_1

    :cond_1c
    move/from16 v9, v25

    goto :goto_2

    :sswitch_1c
    const-string v8, "cam_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    goto :goto_1

    :cond_1d
    move/from16 v9, v38

    goto :goto_2

    :sswitch_1d
    const-string v8, "ms_count"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_1

    :cond_1e
    move/from16 v9, v26

    goto :goto_2

    :sswitch_1e
    const-string v8, "mcf_capture"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_1

    :cond_1f
    move v9, v4

    goto :goto_2

    :sswitch_1f
    const-string/jumbo v8, "shot_type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    goto :goto_1

    :cond_20
    move/from16 v9, v39

    goto :goto_2

    :sswitch_20
    const-string/jumbo v8, "shot_bndl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    goto :goto_1

    :cond_21
    move/from16 v9, v33

    goto :goto_2

    :goto_1
    move/from16 v9, v24

    :cond_22
    :goto_2
    const-string v7, "ImageCaptureRecordTypeAdapterFactory"

    const-string v8, "-"

    packed-switch v9, :pswitch_data_0

    .line 10
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unknown field name while parsing CaptureRecord "

    .line 11
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v1

    invoke-static {v1}, Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkTs:Z

    goto/16 :goto_0

    .line 14
    :pswitch_1
    iget-object v7, v0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    const-class v8, Lcom/motorola/camera/storage/MediaFile$Memento;

    .line 15
    invoke-virtual {v7, v1, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/storage/MediaFile$Memento;

    .line 16
    sget-object v8, Lcom/motorola/camera/storage/MediaFile$Companion;->$$INSTANCE:Lcom/motorola/camera/storage/MediaFile$Companion;

    invoke-virtual {v8, v7}, Lcom/motorola/camera/storage/MediaFile$Companion;->fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v7

    .line 17
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    goto/16 :goto_0

    .line 18
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v7

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    .line 19
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    goto/16 :goto_0

    .line 20
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    goto/16 :goto_0

    .line 21
    :pswitch_5
    iget-object v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v8, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    iget-object v9, v0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    const-class v10, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    .line 22
    invoke-virtual {v9, v1, v10}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    .line 23
    invoke-virtual {v7, v8, v9}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 24
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    goto/16 :goto_0

    .line 25
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mUltraWideFront:Z

    goto/16 :goto_0

    .line 26
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z

    goto/16 :goto_0

    .line 27
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v7

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 28
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    goto/16 :goto_0

    .line 29
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    goto/16 :goto_0

    .line 30
    :pswitch_c
    iget-object v7, v0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    const-class v8, Landroid/location/Location;

    invoke-virtual {v7, v1, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    goto/16 :goto_0

    .line 31
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v7

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    goto/16 :goto_0

    .line 32
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    goto/16 :goto_0

    .line 33
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    goto/16 :goto_0

    .line 34
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    goto/16 :goto_0

    .line 35
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    goto/16 :goto_0

    .line 36
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v7

    invoke-static {v7}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v7

    if-eq v7, v4, :cond_24

    if-ne v7, v5, :cond_23

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 38
    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto/16 :goto_5

    .line 39
    :cond_23
    new-instance v0, Ljava/io/IOException;

    .line 40
    invoke-static {v6}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_24
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 44
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_21
    const-string/jumbo v10, "sm_front_mirror"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    goto/16 :goto_4

    :cond_25
    const/16 v9, 0x21

    goto/16 :goto_4

    :sswitch_22
    const-string/jumbo v10, "sm_assistive_grid"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    goto/16 :goto_4

    :cond_26
    const/16 v9, 0x20

    goto/16 :goto_4

    :sswitch_23
    const-string/jumbo v10, "sm_focus_mode"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    goto/16 :goto_4

    :cond_27
    const/16 v9, 0x1f

    goto/16 :goto_4

    :sswitch_24
    const-string/jumbo v10, "sm_face_beauty"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_28

    goto/16 :goto_4

    :cond_28
    const/16 v9, 0x1e

    goto/16 :goto_4

    :sswitch_25
    const-string/jumbo v10, "sm_face_beauty_level"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    goto/16 :goto_4

    :cond_29
    const/16 v9, 0x1d

    goto/16 :goto_4

    :sswitch_26
    const-string/jumbo v10, "sm_watermark_timestamp"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    goto/16 :goto_4

    :cond_2a
    const/16 v9, 0x1c

    goto/16 :goto_4

    :sswitch_27
    const-string/jumbo v10, "sm_gesture_capture"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    goto/16 :goto_4

    :cond_2b
    const/16 v9, 0x1b

    goto/16 :goto_4

    :sswitch_28
    const-string/jumbo v10, "sm_microphone_enabled"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c

    goto/16 :goto_4

    :cond_2c
    const/16 v9, 0x1a

    goto/16 :goto_4

    :sswitch_29
    const-string/jumbo v10, "sm_smart_composition"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    goto/16 :goto_4

    :cond_2d
    const/16 v9, 0x19

    goto/16 :goto_4

    :sswitch_2a
    const-string/jumbo v10, "sm_dc_cam_combo"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    goto/16 :goto_4

    :cond_2e
    const/16 v9, 0x18

    goto/16 :goto_4

    :sswitch_2b
    const-string/jumbo v10, "sm_capture_action"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2f

    goto/16 :goto_4

    :cond_2f
    const/16 v9, 0x17

    goto/16 :goto_4

    :sswitch_2c
    const-string/jumbo v10, "sm_water_mark"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    goto/16 :goto_4

    :cond_30
    const/16 v9, 0x16

    goto/16 :goto_4

    :sswitch_2d
    const-string/jumbo v10, "sm_geo_loc_enable"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    goto/16 :goto_4

    :cond_31
    const/16 v9, 0x15

    goto/16 :goto_4

    :sswitch_2e
    const-string/jumbo v10, "sm_audio_zoom"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    goto/16 :goto_4

    :cond_32
    const/16 v9, 0x14

    goto/16 :goto_4

    :sswitch_2f
    const-string/jumbo v10, "sm_dual_screen_animation"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    goto/16 :goto_4

    :cond_33
    const/16 v9, 0x13

    goto/16 :goto_4

    :sswitch_30
    const-string/jumbo v10, "sm_storage"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34

    goto/16 :goto_4

    :cond_34
    const/16 v9, 0x12

    goto/16 :goto_4

    :sswitch_31
    const-string/jumbo v10, "sm_dc_layout"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    goto/16 :goto_4

    :cond_35
    const/16 v9, 0x11

    goto/16 :goto_4

    :sswitch_32
    const-string/jumbo v10, "sm_ae_compensation"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    goto/16 :goto_4

    :cond_36
    const/16 v9, 0x10

    goto/16 :goto_4

    :sswitch_33
    const-string/jumbo v10, "sm_picture_size"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    goto/16 :goto_4

    :cond_37
    const/16 v9, 0xf

    goto/16 :goto_4

    :sswitch_34
    const-string/jumbo v10, "sm_timer"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_38

    goto/16 :goto_4

    :cond_38
    const/16 v9, 0xe

    goto/16 :goto_4

    :sswitch_35
    const-string/jumbo v10, "sm_flash"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    goto/16 :goto_4

    :cond_39
    const/16 v9, 0xd

    goto/16 :goto_4

    :sswitch_36
    const-string/jumbo v10, "sm_ssm_enabled"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    goto/16 :goto_4

    :cond_3a
    const/16 v9, 0xc

    goto/16 :goto_4

    :sswitch_37
    const-string/jumbo v10, "sm_dual_screen_review"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    goto/16 :goto_4

    :cond_3b
    const/16 v9, 0xb

    goto/16 :goto_4

    :sswitch_38
    const-string/jumbo v10, "sm_hdr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    goto/16 :goto_4

    :cond_3c
    const/16 v9, 0xa

    goto/16 :goto_4

    :sswitch_39
    const-string/jumbo v10, "sm_sis_enabled"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    goto/16 :goto_4

    :cond_3d
    const/16 v9, 0x9

    goto/16 :goto_4

    :sswitch_3a
    const-string/jumbo v10, "sm_preview_size"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    goto/16 :goto_4

    :cond_3e
    const/16 v9, 0x8

    goto/16 :goto_4

    :sswitch_3b
    const-string/jumbo v10, "sm_auto_focus_tracking"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    goto :goto_4

    :cond_3f
    const/4 v9, 0x7

    goto :goto_4

    :sswitch_3c
    const-string/jumbo v10, "sm_auto_smile_capture"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    goto :goto_4

    :cond_40
    const/4 v9, 0x6

    goto :goto_4

    :sswitch_3d
    const-string/jumbo v10, "sm_pro_leveler"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    goto :goto_4

    :cond_41
    const/4 v9, 0x5

    goto :goto_4

    :sswitch_3e
    const-string/jumbo v10, "sm_shutter_tone"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    goto :goto_4

    :cond_42
    const/4 v9, 0x4

    goto :goto_4

    :sswitch_3f
    const-string/jumbo v10, "sm_lls_enabled"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43

    goto :goto_4

    :cond_43
    const/4 v9, 0x3

    goto :goto_4

    :sswitch_40
    const-string/jumbo v10, "sm_zoom"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    goto :goto_4

    :cond_44
    const/4 v9, 0x2

    goto :goto_4

    :sswitch_41
    const-string/jumbo v10, "sm_mode"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    goto :goto_4

    :cond_45
    const/4 v9, 0x1

    goto :goto_4

    :sswitch_42
    const-string/jumbo v10, "sm_dtfe"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    goto :goto_4

    :cond_46
    const/4 v9, 0x0

    :goto_4
    packed-switch v9, :pswitch_data_1

    .line 46
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unknown field name while parsing SettingsMap:"

    .line 47
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v1

    invoke-static {v1}, Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_13
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 51
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 52
    :pswitch_14
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 55
    :pswitch_15
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 56
    :pswitch_16
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 57
    :pswitch_17
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 60
    :pswitch_18
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 62
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 63
    :pswitch_19
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 66
    :pswitch_1a
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 67
    :pswitch_1b
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 70
    :pswitch_1c
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 72
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 73
    :pswitch_1d
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 75
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 76
    :pswitch_1e
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 77
    :pswitch_1f
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 79
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 80
    :pswitch_20
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 82
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 83
    :pswitch_21
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 85
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 86
    :pswitch_22
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 87
    :pswitch_23
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 89
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 90
    :pswitch_24
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 93
    :pswitch_25
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 94
    :pswitch_26
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 95
    :pswitch_27
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 96
    :pswitch_28
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 98
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 99
    :pswitch_29
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 101
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 102
    :pswitch_2a
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 103
    :pswitch_2b
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 105
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 106
    :pswitch_2c
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 107
    :pswitch_2d
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 109
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 110
    :pswitch_2e
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 112
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 113
    :pswitch_2f
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 115
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 116
    :pswitch_30
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 117
    :pswitch_31
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    .line 119
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 120
    :pswitch_32
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 121
    :pswitch_33
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 122
    :pswitch_34
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 123
    :cond_47
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 124
    :goto_5
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    goto/16 :goto_0

    .line 125
    :pswitch_35
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkSign:Z

    goto/16 :goto_0

    .line 126
    :pswitch_36
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    goto/16 :goto_0

    .line 127
    :pswitch_37
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    goto/16 :goto_0

    .line 128
    :pswitch_38
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    goto/16 :goto_0

    .line 129
    :pswitch_39
    iget-object v7, v0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    const-class v8, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v7, v1, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    goto/16 :goto_0

    .line 130
    :pswitch_3a
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v9

    invoke-static {v9}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v9

    if-eq v9, v4, :cond_49

    if-ne v9, v5, :cond_48

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 132
    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_a

    .line 133
    :cond_48
    new-instance v0, Ljava/io/IOException;

    .line 134
    invoke-static {v6}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_49
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    move/from16 v10, v38

    .line 138
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_2

    goto/16 :goto_7

    :sswitch_43
    const-string v12, "md_motion_photos_allowed"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4a

    goto/16 :goto_7

    :cond_4a
    move/from16 v11, v31

    goto/16 :goto_8

    :sswitch_44
    const-string v12, "md_touch_location"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4b

    goto/16 :goto_7

    :cond_4b
    move/from16 v11, v30

    goto/16 :goto_8

    :sswitch_45
    const-string v12, "md_analytics_seq_id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4c

    goto/16 :goto_7

    :cond_4c
    move/from16 v11, v29

    goto/16 :goto_8

    :sswitch_46
    const-string v12, "md_focus_success"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4d

    goto/16 :goto_7

    :cond_4d
    move/from16 v11, v28

    goto/16 :goto_8

    :sswitch_47
    const-string v12, "md_analytics_is_caf"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4e

    goto/16 :goto_7

    :cond_4e
    move/from16 v11, v27

    goto/16 :goto_8

    :sswitch_48
    const-string v12, "md_focus_areas_supported"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4f

    goto/16 :goto_7

    :cond_4f
    move/from16 v11, v32

    goto/16 :goto_8

    :sswitch_49
    const-string v12, "md_analytic_lens_foc_dist"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_50

    goto/16 :goto_7

    :cond_50
    move/from16 v11, v34

    goto/16 :goto_8

    :sswitch_4a
    const-string v12, "md_analytic_photo_solid_time"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_51

    goto/16 :goto_7

    :cond_51
    move/from16 v11, v35

    goto/16 :goto_8

    :sswitch_4b
    const-string v12, "md_caf_supported"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_52

    goto/16 :goto_7

    :cond_52
    move v11, v5

    goto/16 :goto_8

    :sswitch_4c
    const-string v12, "md_shutter_cb_time"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_53

    goto/16 :goto_7

    :cond_53
    move/from16 v11, v36

    goto/16 :goto_8

    :sswitch_4d
    const-string v12, "md_analytics_motion_viddur"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_54

    goto :goto_7

    :cond_54
    move/from16 v11, v37

    goto :goto_8

    :sswitch_4e
    const-string v12, "md_faces_detected"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_55

    goto :goto_7

    :cond_55
    move/from16 v11, v25

    goto :goto_8

    :sswitch_4f
    const-string v12, "md_roi_touch_rect"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_56

    goto :goto_7

    :cond_56
    move v11, v10

    goto :goto_8

    :sswitch_50
    const-string v12, "md_analytic_sw_fl_fir_auto"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_57

    goto :goto_7

    :cond_57
    move/from16 v11, v26

    goto :goto_8

    :sswitch_51
    const-string v12, "md_timer_checkin"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_58

    goto :goto_7

    :cond_58
    move v11, v4

    goto :goto_8

    :sswitch_52
    const-string v12, "md_analytics_motion_saved"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_59

    goto :goto_7

    :cond_59
    move/from16 v11, v39

    goto :goto_8

    :sswitch_53
    const-string v12, "md_focus_time"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5a

    goto :goto_7

    :cond_5a
    move/from16 v11, v33

    goto :goto_8

    :goto_7
    move/from16 v11, v24

    :goto_8
    packed-switch v11, :pswitch_data_2

    .line 140
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unknown field name while parsing MetaDataBundle: "

    .line 141
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v1

    invoke-static {v1}, Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_3b
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    const-string v12, "MOTION_PHOTOS_ALLOWED"

    .line 144
    invoke-virtual {v9, v12, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 145
    :pswitch_3c
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 146
    array-length v12, v11

    if-ge v12, v4, :cond_5b

    goto/16 :goto_6

    .line 147
    :cond_5b
    :try_start_0
    new-instance v12, Landroid/graphics/PointF;

    aget-object v13, v11, v33

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aget-object v14, v11, v39

    .line 148
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v13, "TOUCH_LOCATION"

    .line 149
    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    const-string v12, "Unable to parse CR_TOUCH_LOCATION with input: "

    .line 150
    invoke-static {v12}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 151
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-static {v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 153
    :pswitch_3d
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v11

    const-string v13, "ANALYTICS_SEQID"

    invoke-virtual {v9, v13, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 154
    :pswitch_3e
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    const-string v12, "FOCUS_SUCCESS"

    invoke-virtual {v9, v12, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 155
    :pswitch_3f
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    const-string v12, "ANALYTICS_IS_CAF"

    invoke-virtual {v9, v12, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 156
    :pswitch_40
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    const-string v12, "FOCUS_AREAS_SUPPORTED"

    .line 157
    invoke-virtual {v9, v12, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 158
    :pswitch_41
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v11

    const-string v13, "ANALYTICS_LENS_FOCUS_DISTANCE"

    .line 159
    invoke-virtual {v9, v13, v11, v12}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_6

    .line 160
    :pswitch_42
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v11

    const-string v13, "ANALYTICS_PHOTO_SOLID_TIME"

    .line 161
    invoke-virtual {v9, v13, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 162
    :pswitch_43
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    const-string v12, "CAF_SUPPORTED"

    invoke-virtual {v9, v12, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 163
    :pswitch_44
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v11

    const-string v13, "SHUTTER_CB_TIME"

    invoke-virtual {v9, v13, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 164
    :pswitch_45
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v11

    const-string v13, "ANALYTICS_MOTION_VIDDUR"

    invoke-virtual {v9, v13, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 165
    :pswitch_46
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    const-string v12, "FACES_DETECTED"

    invoke-virtual {v9, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 166
    :pswitch_47
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 167
    array-length v12, v11

    if-ge v12, v10, :cond_5c

    goto/16 :goto_6

    .line 168
    :cond_5c
    :try_start_1
    new-instance v10, Landroid/graphics/Rect;

    aget-object v12, v11, v33

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v13, v11, v39

    .line 169
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v14, v11, v4

    .line 170
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aget-object v15, v11, v26

    .line 171
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v10, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v12, "ROI_TOUCH_RECT"

    .line 172
    invoke-virtual {v9, v12, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    const-string v10, "Unable to parse CR_ROI_TOUCH_RECT with input: "

    .line 173
    invoke-static {v10}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 174
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 175
    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 176
    :pswitch_48
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v10

    const-string v11, "ANALYTICS_SWFLASHFIREDONAUTO"

    .line 177
    invoke-virtual {v9, v11, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9

    .line 178
    :pswitch_49
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v10

    const-string v11, "TIMER_CHECKIN"

    invoke-virtual {v9, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    .line 179
    :pswitch_4a
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v10

    const-string v11, "ANALYTICS_MOTION_SAVED"

    .line 180
    invoke-virtual {v9, v11, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9

    .line 181
    :pswitch_4b
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v10

    const-string v12, "FOCUS_TIME"

    invoke-virtual {v9, v12, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_9
    const/4 v10, 0x4

    goto/16 :goto_6

    .line 182
    :cond_5d
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    move-object v7, v9

    .line 183
    :goto_a
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 184
    :pswitch_4c
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    goto/16 :goto_0

    .line 185
    :pswitch_4d
    new-instance v7, Lcom/motorola/camera/saving/FileName;

    iget-object v8, v0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    const-class v9, Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v8, v1, v9}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v7, v8}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    goto/16 :goto_0

    .line 186
    :pswitch_4e
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    goto/16 :goto_0

    .line 187
    :pswitch_4f
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    goto/16 :goto_0

    .line 188
    :pswitch_50
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    goto/16 :goto_0

    .line 189
    :pswitch_51
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    goto/16 :goto_0

    .line 190
    :pswitch_52
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/ShotType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/ShotType;

    move-result-object v7

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    goto/16 :goto_0

    .line 191
    :pswitch_53
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v9

    invoke-static {v9}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v9

    if-eq v9, v4, :cond_5f

    if-ne v9, v5, :cond_5e

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 193
    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_f

    .line 194
    :cond_5e
    new-instance v0, Ljava/io/IOException;

    .line 195
    invoke-static {v6}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    const-string v9, "LOCATION"

    .line 197
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 199
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_73

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_3

    goto/16 :goto_c

    :sswitch_54
    const-string v13, "sb_uuid"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_60

    goto/16 :goto_c

    :cond_60
    const/16 v12, 0x11

    goto/16 :goto_c

    :sswitch_55
    const-string v13, "sb_document_width"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_61

    goto/16 :goto_c

    :cond_61
    const/16 v12, 0x10

    goto/16 :goto_c

    :sswitch_56
    const-string v13, "sb_alt_sht_idx"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_62

    goto/16 :goto_c

    :cond_62
    const/16 v12, 0xf

    goto/16 :goto_c

    :sswitch_57
    const-string v13, "sb_rev_req"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_63

    goto/16 :goto_c

    :cond_63
    const/16 v12, 0xe

    goto/16 :goto_c

    :sswitch_58
    const-string v13, "sb_cap_typ"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_64

    goto/16 :goto_c

    :cond_64
    const/16 v12, 0xd

    goto/16 :goto_c

    :sswitch_59
    const-string v13, "sb_cap_trg"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_65

    goto/16 :goto_c

    :cond_65
    const/16 v12, 0xc

    goto/16 :goto_c

    :sswitch_5a
    const-string v13, "sb_cap_timestmp"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_66

    goto/16 :goto_c

    :cond_66
    const/16 v12, 0xb

    goto/16 :goto_c

    :sswitch_5b
    const-string v13, "sb_multi_shot_ct"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_67

    goto/16 :goto_c

    :cond_67
    const/16 v12, 0xa

    goto/16 :goto_c

    :sswitch_5c
    const-string v13, "sb_alt_shot"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_68

    goto/16 :goto_c

    :cond_68
    const/16 v12, 0x9

    goto/16 :goto_c

    :sswitch_5d
    const-string v13, "sb_key_cod"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_69

    goto/16 :goto_c

    :cond_69
    const/16 v12, 0x8

    goto/16 :goto_c

    :sswitch_5e
    const-string v13, "sb_rev_accept"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6a

    goto :goto_c

    :cond_6a
    const/4 v12, 0x7

    goto :goto_c

    :sswitch_5f
    const-string v13, "sb_cap_auto_cap_typ"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6b

    goto :goto_c

    :cond_6b
    const/4 v12, 0x6

    goto :goto_c

    :sswitch_60
    const-string v13, "sb_loc"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6c

    goto :goto_c

    :cond_6c
    const/4 v12, 0x5

    goto :goto_c

    :sswitch_61
    const-string v13, "sb_on_down"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6d

    goto :goto_c

    :cond_6d
    const/4 v12, 0x4

    goto :goto_c

    :sswitch_62
    const-string v13, "sb_document_points"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6e

    goto :goto_c

    :cond_6e
    const/4 v12, 0x3

    goto :goto_c

    :sswitch_63
    const-string v13, "sb_document_height"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6f

    goto :goto_c

    :cond_6f
    const/4 v12, 0x2

    goto :goto_c

    :sswitch_64
    const-string v13, "sb_timer"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_70

    goto :goto_c

    :cond_70
    const/4 v12, 0x1

    goto :goto_c

    :sswitch_65
    const-string v13, "sb_on_up"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_71

    goto :goto_c

    :cond_71
    const/4 v12, 0x0

    :goto_c
    packed-switch v12, :pswitch_data_3

    .line 201
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unknown field name while parsing ShotBundle: "

    .line 202
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v1

    invoke-static {v1}, Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :pswitch_54
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UUID"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 205
    :pswitch_55
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    const-string v12, "DOCUMENT_WIDTH"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 206
    :pswitch_56
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    const-string v12, "alternate_shot_index_"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 207
    :pswitch_57
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    const-string v12, "REVIEW_REQUIRED"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 208
    :pswitch_58
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    move-result-object v11

    const-string v12, "CAPTURE_TYPE"

    .line 209
    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_b

    .line 210
    :pswitch_59
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-result-object v11

    const-string v12, "CAPTURE_TRIGGER"

    .line 211
    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_b

    .line 212
    :pswitch_5a
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v11

    const-string v13, "CAPTURE_TIMESTAMP"

    invoke-virtual {v10, v13, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    .line 213
    :pswitch_5b
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    const-string v12, "MULTI_SHOT_COUNT"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 214
    :pswitch_5c
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    const-string v12, "ALTERNATE_SHOT"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 215
    :pswitch_5d
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    const-string v12, "KEY_CODE"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 216
    :pswitch_5e
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    const-string v12, "REVIEW_ACCEPT"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 217
    :pswitch_5f
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    const-string v12, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 218
    :pswitch_60
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 219
    :try_start_2
    new-instance v12, Landroid/graphics/PointF;

    aget-object v13, v11, v33

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aget-object v14, v11, v39

    .line 220
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    invoke-virtual {v10, v9, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto :goto_d

    .line 222
    :catch_2
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to parse SB_LOCATION with input: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v11, v33

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v11, v39

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    invoke-virtual {v10, v9, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_b

    :goto_d
    invoke-virtual {v10, v9, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    throw v0

    .line 225
    :pswitch_61
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v11

    const-string v13, "ON_DOWN"

    invoke-virtual {v10, v13, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    .line 226
    :pswitch_62
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 228
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_72

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v12

    .line 230
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 231
    :cond_72
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    const-string v12, "DOCUMENT_POINTS"

    .line 232
    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_b

    .line 233
    :pswitch_63
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    const-string v12, "DOCUMENT_HEIGHT"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 234
    :pswitch_64
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v11

    const-string v12, "TIMER"

    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 235
    :pswitch_65
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v11

    const-string v13, "ON_UP"

    invoke-virtual {v10, v13, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    .line 236
    :cond_73
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    move-object v7, v10

    .line 237
    :goto_f
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 238
    :cond_74
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    move-object v3, v2

    :goto_10
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76992007 -> :sswitch_20
        -0x7690c6a1 -> :sswitch_1f
        -0x61757c69 -> :sswitch_1e
        -0x59ef92ca -> :sswitch_1d
        -0x51865475 -> :sswitch_1c
        -0x50c96bc9 -> :sswitch_1b
        -0x4e77b492 -> :sswitch_1a
        -0x4577865c -> :sswitch_19
        -0x3fc3725c -> :sswitch_18
        -0x35fe9b05 -> :sswitch_17
        -0x35fdb247 -> :sswitch_16
        -0x299f3801 -> :sswitch_15
        -0x25846a1e -> :sswitch_14
        -0x838496f -> :sswitch_13
        -0x743c513 -> :sswitch_12
        -0x41f60e6 -> :sswitch_11
        0x1b828 -> :sswitch_10
        0x35ceb8 -> :sswitch_f
        0x6519a0f -> :sswitch_e
        0xbc82555 -> :sswitch_d
        0xe41fe2b -> :sswitch_c
        0x20bbf21b -> :sswitch_b
        0x20e61d15 -> :sswitch_a
        0x2115c512 -> :sswitch_9
        0x2ad798d1 -> :sswitch_8
        0x3330c030 -> :sswitch_7
        0x36389022 -> :sswitch_6
        0x36c27462 -> :sswitch_5
        0x3c42dadb -> :sswitch_4
        0x4ec21cfb -> :sswitch_3
        0x72975361 -> :sswitch_2
        0x73998cf7 -> :sswitch_1
        0x799ca431 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d2937ec -> :sswitch_42
        -0x7d253398 -> :sswitch_41
        -0x7d1f4968 -> :sswitch_40
        -0x79d41870 -> :sswitch_3f
        -0x7540cbb7 -> :sswitch_3e
        -0x598116c6 -> :sswitch_3d
        -0x55ecff7c -> :sswitch_3c
        -0x4a5a8a97 -> :sswitch_3b
        -0x459a3023 -> :sswitch_3a
        -0x446f8886 -> :sswitch_39
        -0x3595ec6f -> :sswitch_38
        -0x338485f3 -> :sswitch_37
        -0x332bb756 -> :sswitch_36
        -0x27e54a35 -> :sswitch_35
        -0x272132e0 -> :sswitch_34
        -0x23385799 -> :sswitch_33
        -0xf1e7350 -> :sswitch_32
        -0x876f0bb -> :sswitch_31
        -0x59f026a -> :sswitch_30
        -0x5965f51 -> :sswitch_2f
        0x8b9e1a1 -> :sswitch_2e
        0x96ab195 -> :sswitch_2d
        0x21433bfa -> :sswitch_2c
        0x221ab9d4 -> :sswitch_2b
        0x29496f23 -> :sswitch_2a
        0x35fd6d8f -> :sswitch_29
        0x3cbfd731 -> :sswitch_28
        0x41d9e26b -> :sswitch_27
        0x43474996 -> :sswitch_26
        0x4abe29fe -> :sswitch_25
        0x63007a39 -> :sswitch_24
        0x6e458faf -> :sswitch_23
        0x7b961c3b -> :sswitch_22
        0x7ef3f85a -> :sswitch_21
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6e084e84 -> :sswitch_53
        -0x5aa2df81 -> :sswitch_52
        -0x4903cb75 -> :sswitch_51
        -0x3f5780d9 -> :sswitch_50
        -0x2928b921 -> :sswitch_4f
        -0x1b76016d -> :sswitch_4e
        0xbce0558 -> :sswitch_4d
        0x14fd79b3 -> :sswitch_4c
        0x164c004f -> :sswitch_4b
        0x17057ad8 -> :sswitch_4a
        0x1eff71a2 -> :sswitch_49
        0x267f4f26 -> :sswitch_48
        0x3ae1ebb4 -> :sswitch_47
        0x465eaef4 -> :sswitch_46
        0x4b35397c -> :sswitch_45
        0x5e36485d -> :sswitch_44
        0x707f9eeb -> :sswitch_43
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x6d4a20f5 -> :sswitch_65
        -0x6d05beab -> :sswitch_64
        -0x6c20c125 -> :sswitch_63
        -0x5decf569 -> :sswitch_62
        -0x434d66ee -> :sswitch_61
        -0x3630deb0 -> :sswitch_60
        -0x3321d6b5 -> :sswitch_5f
        -0x322de3ec -> :sswitch_5e
        -0x24d60258 -> :sswitch_5d
        -0x1aeb7840 -> :sswitch_5c
        -0x897a720 -> :sswitch_5b
        0x2534ddce -> :sswitch_5a
        0x2ca62dcc -> :sswitch_59
        0x2ca62eae -> :sswitch_58
        0x4d4b8d12 -> :sswitch_57
        0x505fe0b7 -> :sswitch_56
        0x6070f992 -> :sswitch_55
        0x701937ab -> :sswitch_54
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
    .end packed-switch
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    move-object/from16 v2, p2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-nez v2, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_1d

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v3, "play_shutter"

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "mcf_capture"

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    .line 6
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eqz v3, :cond_1

    const-string v3, "inst_typ"

    .line 7
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 8
    :cond_1
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eqz v3, :cond_2

    const-string v3, "reproc_typ"

    .line 9
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 10
    :cond_2
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eqz v3, :cond_3

    const-string v3, "scn_mod"

    .line 11
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_3
    const-string v3, "priority"

    .line 12
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "raw"

    .line 13
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v3, "ultra_wide_front"

    .line 14
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mUltraWideFront:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "segm"

    .line 15
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "is_bg_proc"

    .line 16
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "is_watermark_enabled"

    .line 17
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkSign:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "is_watermark_ts_enabled"

    .line 18
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkTs:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "ms_count"

    .line 19
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 20
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "seq_id"

    .line 21
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_4
    const-string/jumbo v3, "ses_id"

    .line 22
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "cap_time"

    .line 23
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-wide v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 24
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    if-eqz v3, :cond_5

    const-string v3, "file_name"

    .line 25
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 26
    :cond_5
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    if-eqz v3, :cond_6

    const-string v3, "media_file"

    .line 27
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 28
    invoke-interface {v5}, Lcom/motorola/camera/storage/MediaFile;->toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 30
    :cond_6
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    if-eqz v3, :cond_7

    const-string v3, "gps_loc"

    .line 31
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_7
    const-string v3, "orien"

    .line 32
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 33
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-eqz v3, :cond_8

    const-string/jumbo v3, "shot_type"

    .line 34
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_8
    const-string v3, "cap_mod"

    .line 35
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "rec_ext_info"

    .line 36
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "elaps_intr_str"

    .line 37
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-wide v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "cam_typ"

    .line 38
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "cam_id"

    .line 39
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "cam_fac_id"

    .line 40
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "anly_log"

    .line 41
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    const-string v3, "ext_bfr_done"

    .line 42
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    .line 43
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "-"

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    if-eqz v3, :cond_20

    const-string/jumbo v3, "shot_bndl"

    .line 44
    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 45
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    if-nez v3, :cond_9

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_d

    .line 47
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 48
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v5, v24

    check-cast v5, Ljava/lang/String;

    .line 49
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v24

    const-string v6, "REVIEW_ACCEPT"

    const-string v7, "CAPTURE_AUTO_CAPTURE_TYPE"

    const-string v8, "ALTERNATE_SHOT"

    const-string v9, "MULTI_SHOT_COUNT"

    const-string v10, "KEY_CODE"

    const-string v11, "alternate_shot_index_"

    const-string v12, "REVIEW_REQUIRED"

    const-string v13, "DOCUMENT_WIDTH"

    const-string v14, "CAPTURE_TRIGGER"

    const-string v15, "TIMER"

    const-string v0, "ON_UP"

    move-object/from16 v25, v2

    const-string v2, "UUID"

    move-object/from16 v26, v4

    const-string v4, "ON_DOWN"

    move-object/from16 v27, v3

    const-string v3, "CAPTURE_TYPE"

    const-string v1, "CAPTURE_TIMESTAMP"

    move-object/from16 v28, v1

    const-string v1, "LOCATION"

    move-object/from16 v29, v1

    const-string v1, "DOCUMENT_POINTS"

    move-object/from16 v30, v1

    const-string v1, "DOCUMENT_HEIGHT"

    sparse-switch v24, :sswitch_data_0

    :goto_1
    move-object/from16 v24, v3

    :goto_2
    move-object/from16 v3, v30

    goto/16 :goto_7

    :sswitch_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    const/16 v5, 0x11

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_1

    :cond_b
    const/16 v5, 0x10

    goto/16 :goto_3

    :sswitch_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_1

    :cond_c
    const/16 v5, 0xf

    goto/16 :goto_3

    :sswitch_3
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    const/16 v5, 0xe

    goto/16 :goto_3

    :sswitch_4
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_1

    :cond_e
    const/16 v5, 0xd

    goto :goto_3

    :sswitch_5
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_1

    :cond_f
    const/16 v5, 0xc

    goto :goto_3

    :sswitch_6
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_1

    :cond_10
    const/16 v5, 0xb

    goto :goto_3

    :sswitch_7
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_1

    :cond_11
    const/16 v5, 0xa

    goto :goto_3

    :sswitch_8
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_1

    :cond_12
    const/16 v5, 0x9

    goto :goto_3

    :sswitch_9
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_1

    :cond_13
    const/16 v5, 0x8

    goto :goto_3

    :sswitch_a
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_1

    :cond_14
    const/4 v5, 0x7

    goto :goto_3

    :sswitch_b
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_1

    :cond_15
    const/4 v5, 0x6

    goto :goto_3

    :sswitch_c
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto/16 :goto_1

    :cond_16
    move/from16 v5, v16

    :goto_3
    move-object/from16 v24, v3

    move-object/from16 v3, v28

    goto :goto_4

    :sswitch_d
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    move/from16 v5, v22

    goto :goto_3

    :cond_17
    move/from16 v5, v17

    goto :goto_3

    :sswitch_e
    move-object/from16 v24, v3

    move-object/from16 v3, v28

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    move-object/from16 v28, v3

    move-object/from16 v3, v29

    goto :goto_5

    :cond_18
    move/from16 v5, v18

    :goto_4
    move-object/from16 v28, v3

    move-object/from16 v3, v29

    goto :goto_6

    :sswitch_f
    move-object/from16 v24, v3

    move-object/from16 v3, v29

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    :goto_5
    move-object/from16 v29, v3

    goto/16 :goto_2

    :cond_19
    move/from16 v5, v19

    :goto_6
    move-object/from16 v29, v3

    move-object/from16 v3, v30

    goto :goto_8

    :sswitch_10
    move-object/from16 v24, v3

    move-object/from16 v3, v30

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_7

    :cond_1a
    move/from16 v5, v20

    goto :goto_8

    :sswitch_11
    move-object/from16 v24, v3

    move-object/from16 v3, v30

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_7

    :cond_1b
    move/from16 v5, v21

    goto :goto_8

    :goto_7
    move/from16 v5, v22

    :goto_8
    packed-switch v5, :pswitch_data_0

    move-object/from16 v5, p1

    move-object/from16 v4, v26

    move-object/from16 v0, v27

    goto/16 :goto_c

    :pswitch_0
    const-string v0, "sb_rev_accept"

    move-object/from16 v5, p1

    .line 50
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    move-object/from16 v1, v27

    .line 51
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_1
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v0, "sb_cap_auto_cap_typ"

    .line 52
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 53
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_2
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v0, "sb_alt_shot"

    .line 54
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 55
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_3
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v0, "sb_multi_shot_ct"

    .line 56
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 57
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_4
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v0, "sb_key_cod"

    .line 58
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_5
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v0, "sb_alt_sht_idx"

    .line 59
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 60
    invoke-virtual {v1, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_6
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v0, "sb_rev_req"

    .line 61
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 62
    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_7
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v0, "sb_document_width"

    .line 63
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v1, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_8
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    .line 64
    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-eqz v0, :cond_1c

    const-string v2, "sb_cap_trg"

    .line 65
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_9
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v0, "sb_timer"

    .line 66
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v1, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_a
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v2, "sb_on_up"

    .line 67
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_b
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v0, "sb_uuid"

    .line 68
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_9

    :pswitch_c
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    const-string v0, "sb_on_down"

    .line 69
    invoke-virtual {v5, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto :goto_9

    :pswitch_d
    move-object/from16 v5, p1

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    .line 70
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-eqz v0, :cond_1c

    const-string v2, "sb_cap_typ"

    .line 71
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    goto :goto_9

    :pswitch_e
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    move-object/from16 v0, v28

    const-string v2, "sb_cap_timestmp"

    .line 72
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    .line 73
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto :goto_9

    :pswitch_f
    move-object/from16 v5, p1

    move-object/from16 v1, v27

    move-object/from16 v0, v29

    .line 74
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_1c

    const-string v2, "sb_loc"

    .line 75
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v4, v26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    goto :goto_b

    :cond_1c
    :goto_9
    move-object/from16 v4, v26

    goto :goto_b

    :pswitch_10
    move-object/from16 v5, p1

    move-object/from16 v4, v26

    move-object/from16 v1, v27

    .line 77
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v2, "sb_document_points"

    .line 78
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 81
    invoke-virtual {v5, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto :goto_a

    .line 82
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    :cond_1e
    :goto_b
    move-object v0, v1

    goto :goto_c

    :pswitch_11
    move-object/from16 v5, p1

    move-object/from16 v4, v26

    move-object/from16 v0, v27

    const-string v2, "sb_document_height"

    .line 83
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    :goto_c
    move-object v3, v0

    move-object v1, v5

    move-object/from16 v2, v25

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_1f
    move-object v5, v1

    move-object/from16 v25, v2

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto :goto_e

    :cond_20
    :goto_d
    move-object v5, v1

    move-object/from16 v25, v2

    :goto_e
    move-object/from16 v0, v25

    .line 85
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    if-eqz v1, :cond_23

    const-string/jumbo v1, "setting_map"

    .line 86
    invoke-virtual {v5, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 87
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    if-eqz v1, :cond_22

    .line 88
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_f

    .line 89
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_geo_loc_enable"

    .line 90
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 91
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_storage"

    .line 93
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 94
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_shutter_tone"

    .line 96
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 97
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_preview_size"

    .line 99
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 100
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 101
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_mode"

    .line 102
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 103
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_ssm_enabled"

    .line 105
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 106
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_face_beauty"

    .line 108
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 109
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_face_beauty_level"

    .line 111
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 112
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_gesture_capture"

    .line 114
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 115
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_auto_smile_capture"

    .line 117
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 118
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_water_mark"

    .line 120
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 121
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_watermark_timestamp"

    .line 123
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 124
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_dual_screen_review"

    .line 126
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 127
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_dual_screen_animation"

    .line 129
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 130
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_timer"

    .line 132
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 133
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_flash"

    .line 135
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 136
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 137
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_focus_mode"

    .line 138
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 139
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 140
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_capture_action"

    .line 141
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 142
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_picture_size"

    .line 144
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 145
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_ae_compensation"

    .line 147
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 148
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_dtfe"

    .line 150
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 151
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_zoom"

    .line 153
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 154
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_smart_composition"

    .line 156
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 157
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_hdr"

    .line 159
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 160
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_sis_enabled"

    .line 162
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 163
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_dc_layout"

    .line 165
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 166
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_dc_cam_combo"

    .line 168
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 169
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_lls_enabled"

    .line 171
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 172
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_assistive_grid"

    .line 174
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 175
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 176
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_pro_leveler"

    .line 177
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 178
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_front_mirror"

    .line 180
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 181
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 182
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_microphone_enabled"

    .line 183
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 184
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 185
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_audio_zoom"

    .line 186
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 187
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 188
    invoke-virtual {v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string/jumbo v2, "sm_auto_focus_tracking"

    .line 189
    invoke-virtual {v5, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 190
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    invoke-virtual {v2, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto :goto_10

    .line 193
    :cond_22
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 194
    :cond_23
    :goto_10
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_39

    const-string v1, "meta_data"

    .line 195
    invoke-virtual {v5, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 196
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    if-nez v1, :cond_24

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_1b

    .line 198
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 199
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "TIMER_CHECKIN"

    const-string v8, "SHUTTER_CB_TIME"

    const-string v9, "ANALYTICS_LENS_FOCUS_DISTANCE"

    const-string v10, "CAF_SUPPORTED"

    const-string v11, "ANALYTICS_SWFLASHFIREDONAUTO"

    const-string v12, "ROI_TOUCH_RECT"

    const-string v13, "FACES_DETECTED"

    const-string v14, "ANALYTICS_MOTION_VIDDUR"

    const-string v15, "FOCUS_SUCCESS"

    move-object/from16 v23, v2

    const-string v2, "ANALYTICS_PHOTO_SOLID_TIME"

    move-object/from16 v25, v0

    const-string v0, "FOCUS_TIME"

    move-object/from16 v26, v4

    const-string v4, "FOCUS_AREAS_SUPPORTED"

    move-object/from16 v24, v1

    const-string v1, "ANALYTICS_MOTION_SAVED"

    const-string v5, "ANALYTICS_SEQID"

    move-object/from16 v27, v5

    const-string v5, "MOTION_PHOTOS_ALLOWED"

    move-object/from16 v28, v5

    const-string v5, "ANALYTICS_IS_CAF"

    move-object/from16 v29, v5

    const-string v5, "TOUCH_LOCATION"

    sparse-switch v6, :sswitch_data_1

    :goto_12
    move-object/from16 v6, v29

    goto/16 :goto_16

    :sswitch_12
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_12

    :cond_25
    move-object/from16 v6, v28

    const/16 v3, 0x10

    goto/16 :goto_15

    :sswitch_13
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_12

    :cond_26
    move-object/from16 v6, v28

    const/16 v3, 0xf

    goto/16 :goto_15

    :sswitch_14
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_12

    :cond_27
    move-object/from16 v6, v28

    const/16 v3, 0xe

    goto/16 :goto_15

    :sswitch_15
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_12

    :cond_28
    move-object/from16 v6, v28

    const/16 v3, 0xd

    goto/16 :goto_15

    :sswitch_16
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_12

    :cond_29
    move-object/from16 v6, v27

    const/16 v3, 0xc

    goto/16 :goto_14

    :sswitch_17
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_12

    :cond_2a
    move-object/from16 v6, v27

    const/16 v3, 0xb

    goto/16 :goto_14

    :sswitch_18
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_12

    :cond_2b
    move-object/from16 v6, v27

    const/16 v3, 0xa

    goto :goto_14

    :sswitch_19
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_12

    :cond_2c
    move-object/from16 v6, v27

    const/16 v3, 0x9

    goto :goto_14

    :sswitch_1a
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_12

    :cond_2d
    move-object/from16 v6, v27

    const/16 v3, 0x8

    goto :goto_14

    :sswitch_1b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_12

    :cond_2e
    move-object/from16 v6, v27

    const/4 v3, 0x7

    goto :goto_14

    :sswitch_1c
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto/16 :goto_12

    :cond_2f
    move-object/from16 v6, v27

    const/4 v3, 0x6

    goto :goto_14

    :sswitch_1d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto/16 :goto_12

    :cond_30
    move/from16 v3, v16

    goto :goto_13

    :sswitch_1e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto/16 :goto_12

    :cond_31
    move/from16 v3, v17

    :goto_13
    move-object/from16 v6, v28

    goto :goto_15

    :sswitch_1f
    move-object/from16 v6, v27

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    move/from16 v3, v22

    goto :goto_14

    :cond_32
    move/from16 v3, v18

    :goto_14
    move-object/from16 v27, v6

    goto :goto_13

    :sswitch_20
    move-object/from16 v6, v28

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    move-object/from16 v28, v6

    goto/16 :goto_12

    :cond_33
    move/from16 v3, v19

    :goto_15
    move-object/from16 v28, v6

    move-object/from16 v6, v29

    goto :goto_17

    :sswitch_21
    move-object/from16 v6, v29

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_16

    :cond_34
    move/from16 v3, v20

    goto :goto_17

    :sswitch_22
    move-object/from16 v6, v29

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_16

    :cond_35
    move/from16 v3, v21

    goto :goto_17

    :goto_16
    move/from16 v3, v22

    :goto_17
    packed-switch v3, :pswitch_data_1

    move-object/from16 v3, p1

    move-object/from16 v0, v24

    move-object/from16 v7, v26

    goto/16 :goto_1a

    :pswitch_12
    const-string v0, "md_timer_checkin"

    move-object/from16 v3, p1

    .line 201
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    move-object/from16 v5, v24

    .line 202
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_18

    :pswitch_13
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    const-string v0, "md_shutter_cb_time"

    .line 203
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 204
    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_18

    :pswitch_14
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    const-string v0, "md_analytic_lens_foc_dist"

    .line 205
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 206
    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(D)Lcom/google/gson/stream/JsonWriter;

    goto :goto_18

    :pswitch_15
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    const-string v0, "md_caf_supported"

    .line 207
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 208
    invoke-virtual {v5, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto :goto_18

    :pswitch_16
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    const-string v0, "md_analytic_sw_fl_fir_auto"

    .line 209
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 210
    invoke-virtual {v5, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto :goto_18

    :pswitch_17
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    .line 211
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_36

    const-string v1, "md_roi_touch_rect"

    .line 212
    invoke-virtual {v3, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v26

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_19

    :cond_36
    :goto_18
    move-object/from16 v7, v26

    goto/16 :goto_19

    :pswitch_18
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    const-string v0, "md_faces_detected"

    .line 214
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 215
    invoke-virtual {v5, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_19

    :pswitch_19
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    const-string v0, "md_analytics_motion_viddur"

    .line 216
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 217
    invoke-virtual {v5, v14}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_19

    :pswitch_1a
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    const-string v0, "md_focus_success"

    .line 218
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 219
    invoke-virtual {v5, v15}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_19

    :pswitch_1b
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    const-string v0, "md_analytic_photo_solid_time"

    .line 220
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 221
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_19

    :pswitch_1c
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    const-string v1, "md_focus_time"

    .line 222
    invoke-virtual {v3, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 223
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_19

    :pswitch_1d
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    const-string v0, "md_focus_areas_supported"

    .line 224
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 225
    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto :goto_19

    :pswitch_1e
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    const-string v0, "md_analytics_motion_saved"

    .line 226
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 227
    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto :goto_19

    :pswitch_1f
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    move-object/from16 v0, v27

    const-string v1, "md_analytics_seq_id"

    .line 228
    invoke-virtual {v3, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 229
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    goto :goto_19

    :pswitch_20
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    const-string v0, "md_motion_photos_allowed"

    .line 230
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    move-object/from16 v1, v28

    .line 231
    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto :goto_19

    :pswitch_21
    move-object/from16 v3, p1

    move-object/from16 v5, v24

    move-object/from16 v7, v26

    const-string v0, "md_analytics_is_caf"

    .line 232
    invoke-virtual {v3, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 233
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    :goto_19
    move-object v0, v5

    goto :goto_1a

    :pswitch_22
    move-object/from16 v3, p1

    move-object/from16 v0, v24

    move-object/from16 v7, v26

    .line 234
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    if-eqz v1, :cond_37

    const-string v2, "md_touch_location"

    .line 235
    invoke-virtual {v3, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v2, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_37
    :goto_1a
    move-object v1, v0

    move-object v5, v3

    move-object v4, v7

    move-object/from16 v2, v23

    move-object/from16 v0, v25

    goto/16 :goto_11

    :cond_38
    move-object/from16 v25, v0

    move-object v3, v5

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1c

    :cond_39
    :goto_1b
    move-object/from16 v25, v0

    move-object v3, v5

    move-object/from16 v0, v25

    .line 238
    :goto_1c
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 239
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    if-eqz v0, :cond_3a

    const-string v1, "imaging_model_aux_data"

    .line 240
    invoke-virtual {v3, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    const-class v4, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    .line 241
    invoke-virtual {v2, v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v1, v0}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 243
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    :goto_1d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7072a335 -> :sswitch_11
        -0x623ed779 -> :sswitch_10
        -0x600a704b -> :sswitch_f
        -0x517bb0e3 -> :sswitch_e
        -0x46650b4d -> :sswitch_d
        -0x227ee0fe -> :sswitch_c
        0x27ebbb -> :sswitch_b
        0x47e24fb -> :sswitch_a
        0x4c20f25 -> :sswitch_9
        0xb0f557f -> :sswitch_8
        0x267ed982 -> :sswitch_7
        0x3df1a4a6 -> :sswitch_6
        0x45b15e6d -> :sswitch_5
        0x4e3fcbed -> :sswitch_4
        0x691f6a50 -> :sswitch_3
        0x735c63bf -> :sswitch_2
        0x76547c6a -> :sswitch_1
        0x7ec1c7cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x68f1932b -> :sswitch_22
        -0x617d95f4 -> :sswitch_21
        -0x5f59488d -> :sswitch_20
        -0x5533607f -> :sswitch_1f
        -0x39b49f29 -> :sswitch_1e
        -0x25829c92 -> :sswitch_1d
        -0x1f68260c -> :sswitch_1c
        -0x16f52bf9 -> :sswitch_1b
        0x623975c -> :sswitch_1a
        0x8a7cfe0 -> :sswitch_19
        0x1d62230b -> :sswitch_18
        0x257ad377 -> :sswitch_17
        0x283f4c69 -> :sswitch_16
        0x631970b7 -> :sswitch_15
        0x6619a2a4 -> :sswitch_14
        0x6be44c3b -> :sswitch_13
        0x76c11cf3 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
