.class public final synthetic Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/motorola/camera/service/BgJobService;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/service/BgJobService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/service/BgJobService;

    iput-object p3, p0, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 37

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;->f$0:I

    iget-object v2, v0, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/service/BgJobService;

    iget-object v3, v0, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    sget v0, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-eq v1, v0, :cond_2

    const/16 v0, 0xc8

    if-eq v1, v0, :cond_1

    const/16 v0, 0x12c

    if-eq v1, v0, :cond_0

    goto/16 :goto_14

    .line 2
    :cond_0
    invoke-virtual {v2, v3}, Lcom/motorola/camera/service/BgJobService;->cancelSaveImage(Landroid/os/Bundle;)V

    goto/16 :goto_14

    .line 3
    :cond_1
    invoke-virtual {v2, v3}, Lcom/motorola/camera/service/BgJobService;->saveNormalProcessImage(Landroid/os/Bundle;)V

    goto/16 :goto_14

    :cond_2
    const-string v1, "data.taskID"

    const-string v4, "ERROR_CASE"

    const-string v5, "GLOBAL_UUID"

    const-string v6, "DATE_TYPE"

    const-string v7, "FILE_NAME"

    const-string v8, "URI"

    const-string v9, "Failed to save Image: "

    const-string/jumbo v10, "task_id"

    .line 4
    invoke-virtual {v2, v3}, Lcom/motorola/camera/service/BgJobService;->isValidData(Landroid/os/Bundle;)Z

    move-result v0

    const-string v11, "BgJobService"

    if-nez v0, :cond_3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate job. Job will be ignored. Data received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v2, v3}, Lcom/motorola/camera/service/BgJobService;->cancelSaveImage(Landroid/os/Bundle;)V

    goto/16 :goto_14

    :cond_3
    :try_start_0
    const-string v0, "JOB_CONTEXT"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11

    .line 7
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v14, Lcom/motorola/camera/background/provider/BgJobContext;->Companion:Lcom/motorola/camera/background/provider/BgJobContext$Companion;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/motorola/camera/background/provider/BgJobContext$Companion;->parseJobContext(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 9
    invoke-virtual {v2, v3}, Lcom/motorola/camera/service/BgJobService;->getTaskID(Landroid/os/Bundle;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11

    if-eqz v14, :cond_4

    .line 10
    :try_start_2
    iget-object v13, v2, Lcom/motorola/camera/service/BgJobService;->subTaskCount:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object v1, v9

    move-object/from16 v18, v10

    move-object v5, v3

    goto/16 :goto_12

    .line 11
    :cond_4
    :goto_0
    :try_start_3
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    .line 12
    new-instance v13, Lcom/motorola/camera/service/BgJobService$saveBgProcessImage$$inlined$sortedBy$1;

    invoke-direct {v13}, Lcom/motorola/camera/service/BgJobService$saveBgProcessImage$$inlined$sortedBy$1;-><init>()V

    invoke-static {v12, v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v12

    .line 13
    invoke-static {}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstGroupID()Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lkotlin/Pair;

    .line 15
    iget-object v15, v15, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 16
    check-cast v15, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    move-object/from16 v16, v12

    .line 17
    iget-object v12, v15, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11

    move-object/from16 v17, v1

    .line 18
    :try_start_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e

    move-object/from16 v18, v10

    const/4 v10, 0x5

    if-lt v1, v10, :cond_19

    .line 19
    :try_start_5
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v10, "applicationContext"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/motorola/camera/service/BgJobService;->retrieveCaptureData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v1

    .line 20
    iget-object v10, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-eqz v10, :cond_18

    .line 21
    check-cast v10, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 22
    :try_start_6
    iget-wide v4, v15, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    .line 23
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v15

    long-to-int v4, v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget-object v4, v15, v4

    .line 24
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v15
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    if-le v15, v5, :cond_6

    .line 25
    :try_start_7
    iput-object v4, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 26
    iget-object v4, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 27
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v15, "ALTERNATE_SHOT"

    invoke-virtual {v4, v15, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    iget-object v4, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 29
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v5, "UUID"

    invoke-virtual {v4, v5, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alternate_shot_index_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v5, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 32
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 33
    iget-object v5, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 34
    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v5, v4, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    iget-object v4, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 36
    sget-object v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v4, v5, :cond_5

    const/4 v4, 0x0

    .line 37
    invoke-virtual {v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setMotionVideoFile(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_5
    move v14, v15

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 38
    :cond_6
    :try_start_8
    sget-object v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_LLS:Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    if-ne v4, v5, :cond_7

    .line 39
    :try_start_9
    sget-object v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 40
    iput-object v4, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_3

    .line 41
    :cond_7
    :try_start_a
    sget-object v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_IST:Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    if-ne v4, v5, :cond_8

    .line 42
    :try_start_b
    sget-object v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 43
    iput-object v4, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_3

    .line 44
    :cond_8
    :try_start_c
    sget-object v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_CUD:Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    if-ne v4, v5, :cond_9

    .line 45
    :try_start_d
    sget-object v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 46
    iput-object v4, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_3

    :goto_2
    move-object v5, v3

    move-object v4, v7

    move-object v3, v8

    move-object v1, v9

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    goto/16 :goto_13

    .line 47
    :cond_9
    :goto_3
    :try_start_e
    sget-object v4, Lcom/motorola/camera/background/provider/BgJobContext;->Companion:Lcom/motorola/camera/background/provider/BgJobContext$Companion;

    invoke-virtual {v4, v12}, Lcom/motorola/camera/background/provider/BgJobContext$Companion;->parseAlgContext(Ljava/util/ArrayList;)Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;

    move-result-object v4

    .line 48
    iget-object v5, v4, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    move-object v15, v13

    .line 49
    iget-wide v12, v4, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    move/from16 v21, v14

    move-object/from16 v22, v15

    .line 50
    iget-wide v14, v4, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    .line 51
    :try_start_f
    iget-wide v6, v4, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 52
    :try_start_10
    iget-wide v8, v4, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    move-object/from16 v27, v3

    .line 53
    :try_start_11
    iget-wide v3, v4, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    .line 54
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    move-object/from16 v29, v0

    if-nez v28, :cond_17

    const-wide/16 v30, -0x1

    cmp-long v28, v12, v30

    if-eqz v28, :cond_17

    cmp-long v28, v14, v30

    if-eqz v28, :cond_17

    cmp-long v28, v6, v30

    if-eqz v28, :cond_17

    cmp-long v28, v8, v30

    if-eqz v28, :cond_17

    .line 55
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;

    move-wide/from16 v32, v3

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v14, v15}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v3

    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v6, v7}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v4

    .line 57
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6, v8, v9}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v0

    if-eqz v4, :cond_16

    if-eqz v0, :cond_16

    .line 58
    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 59
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 60
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v9

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v6

    .line 61
    invoke-direct {v7, v8, v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v6, 0x0

    .line 62
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    .line 63
    iget-wide v8, v8, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    .line 64
    iget-object v6, v10, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 65
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    .line 66
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    iget-object v15, v14, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    move-object/from16 v28, v6

    const-string v6, "RENDER"

    .line 68
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 69
    iget-wide v8, v14, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    :cond_a
    move-object/from16 v6, v28

    goto :goto_4

    .line 70
    :cond_b
    sget-object v6, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v6, v14, v8, v9}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v14

    if-eqz v14, :cond_15

    .line 71
    new-instance v15, Lcom/motorola/camera/photometadata/PhotoMetadata;

    move-object/from16 v34, v5

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v15, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 72
    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v5, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v15, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    if-eqz v3, :cond_c

    const-string v3, "Exif currently not supported by BgProcessing"

    .line 73
    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_c
    invoke-virtual {v15, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteByteArray([B)V

    .line 75
    invoke-virtual {v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setApp6ByteArray([B)V

    .line 76
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v0, v12, v13}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v0

    if-eqz v0, :cond_d

    .line 77
    invoke-virtual {v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)Z

    .line 78
    :cond_d
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v0, v8, v9}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->getImageDims(Landroid/content/Context;J)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 79
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    :goto_5
    if-lez v3, :cond_12

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    :goto_6
    if-lez v3, :cond_12

    if-eqz v0, :cond_10

    .line 80
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_11

    .line 81
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ImageWidth"

    .line 82
    invoke-virtual {v15, v4, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ImageLength"

    .line 83
    invoke-virtual {v15, v4, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "PixelXDimension"

    .line 84
    invoke-virtual {v15, v4, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PixelYDimension"

    .line 85
    invoke-virtual {v15, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_12
    invoke-virtual {v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    iput-object v0, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 88
    iget-object v0, v10, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v0

    if-eqz v0, :cond_13

    cmp-long v0, v32, v30

    if-eqz v0, :cond_13

    move-wide/from16 v3, v32

    move-object/from16 v0, v34

    .line 89
    invoke-virtual {v2, v3, v4, v0, v10}, Lcom/motorola/camera/service/BgJobService;->loadAuxiliaryData(JLjava/util/ArrayList;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    if-nez v0, :cond_13

    move-object/from16 v5, v27

    .line 90
    :try_start_12
    invoke-virtual {v2, v5}, Lcom/motorola/camera/service/BgJobService;->saveNormalProcessImage(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    goto :goto_9

    :cond_13
    move-object/from16 v5, v27

    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_14

    .line 91
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_14
    move-object v3, v5

    move-object/from16 v12, v16

    move-object/from16 v1, v17

    move-object/from16 v10, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v14, v21

    move-object/from16 v13, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v0, v29

    goto/16 :goto_1

    :cond_15
    move-object/from16 v5, v27

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BG Jpeg is null for shot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "no file to retrieve"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move-object/from16 v5, v27

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing meta data: [exif="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", makerNote="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", app6="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing meta data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v5, v27

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid Jpeg file Id(s): [thumbFid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", exifFid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", makerNoteFid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", app6Fid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid Jpeg file Id(s)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    move-object/from16 v5, v27

    goto/16 :goto_11

    :catch_3
    move-exception v0

    move-object/from16 v5, v27

    goto/16 :goto_10

    :catch_4
    move-exception v0

    :goto_a
    move-object v5, v3

    goto/16 :goto_11

    :catch_5
    move-exception v0

    :goto_b
    move-object v5, v3

    goto/16 :goto_10

    :catch_6
    move-exception v0

    move-object v5, v3

    :goto_c
    move-object/from16 v25, v8

    move-object/from16 v26, v9

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move-object v5, v3

    :goto_d
    move-object/from16 v25, v8

    move-object/from16 v26, v9

    goto/16 :goto_10

    :catch_8
    move-exception v0

    move-object v5, v3

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    goto :goto_c

    :catch_9
    move-exception v0

    move-object v5, v3

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    goto :goto_d

    :cond_18
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v3

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.record.ImageCaptureRecord"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_a
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    goto :goto_a

    :catch_b
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    goto :goto_b

    :cond_19
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object v5, v3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing Jpeg components: jpeg/thumb/exit/makenote/app6, component count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " which should be >= 5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing Jpeg components"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    :catch_c
    move-exception v0

    goto :goto_11

    :catch_d
    move-exception v0

    goto :goto_10

    :catch_e
    move-exception v0

    :goto_e
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v18, v10

    goto/16 :goto_a

    :catch_f
    move-exception v0

    :goto_f
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v18, v10

    goto/16 :goto_b

    :catch_10
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_f

    :goto_10
    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move-object/from16 v6, v23

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    move-object/from16 v1, v26

    goto/16 :goto_13

    :catch_11
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_e

    :goto_11
    move-object/from16 v1, v26

    .line 103
    :goto_12
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    new-instance v0, Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;-><init>()V

    move-object/from16 v3, v25

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v4, v24

    .line 106
    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v23

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0, v6, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v7, v20

    const-wide/16 v3, 0x0

    .line 108
    invoke-virtual {v0, v7, v3, v4}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 109
    invoke-virtual {v0, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putAll(Landroid/os/Bundle;)V

    move-object/from16 v8, v19

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 111
    iget-object v1, v2, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    move-object/from16 v9, v18

    .line 112
    invoke-virtual {v0, v9}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/common/TaskId;

    .line 113
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_1a

    .line 114
    invoke-virtual {v0, v9}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    move-object/from16 v10, v17

    .line 115
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v0, v3}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    goto :goto_14

    :catch_12
    move-exception v0

    move-object/from16 v35, v10

    move-object v10, v1

    move-object v1, v9

    move-object/from16 v9, v35

    move-object/from16 v36, v5

    move-object v5, v3

    move-object v3, v8

    move-object v8, v4

    move-object v4, v7

    move-object/from16 v7, v36

    .line 116
    :goto_13
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    new-instance v0, Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;-><init>()V

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v6, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 v3, 0x0

    .line 121
    invoke-virtual {v0, v7, v3, v4}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 122
    invoke-virtual {v0, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putAll(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 124
    iget-object v1, v2, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    .line 125
    invoke-virtual {v0, v9}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/common/TaskId;

    .line 126
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_1a

    .line 127
    invoke-virtual {v0, v9}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    .line 128
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v0, v3}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    :cond_1a
    :goto_14
    return-void
.end method
